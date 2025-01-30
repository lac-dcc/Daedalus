; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/treecc/treecc.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeCCNonVirtual = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.78 = type { ptr, ptr, i32 }
%struct._tagTreeCCContext = type { [512 x ptr], [512 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct._tagTreeCCStream = type { ptr, ptr, ptr, i64, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct._tagTreeCCNode = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct._tagTreeCCOperation = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct.TreeCCInput = type { i32, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCOperationCase = type { ptr, ptr, ptr, i32, ptr, i64, ptr, i64, ptr, ptr }
%struct._tagTreeCCParam = type { ptr, ptr, i32, i32, ptr }
%struct._tagTreeCCTrigger = type { ptr, ptr }
%struct._tagTreeCCVirtual = type { ptr, ptr, ptr, ptr, ptr }
%struct._tagTreeCCField = type { ptr, ptr, ptr, i32, ptr, i64, ptr }
%struct._tagTreeCCStreamDefn = type { ptr, ptr, i64, i32, i32, ptr }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], ptr }

@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1
@TreeCCErrorFile = internal global ptr null, align 8
@TreeCCErrorStripPath = internal global i32 0, align 4
@.str.2 = private unnamed_addr constant [11 x i8] c"line %ld: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2.6 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1
@.str.7 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.1.8 = private unnamed_addr constant [39 x i8] c"this operation case duplicates another\00", align 1
@.str.11 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.1.12 = private unnamed_addr constant [12 x i8] c"c_gc_skel.h\00", align 1
@.str.2.13 = private unnamed_addr constant [9 x i8] c"c_skel.h\00", align 1
@.str.3.15 = private unnamed_addr constant [18 x i8] c"%s %s_split_%d__(\00", align 1
@.str.4 = private unnamed_addr constant [7 x i8] c"%s %s(\00", align 1
@.str.5 = private unnamed_addr constant [11 x i8] c"%s %s::%s(\00", align 1
@.str.6 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.7.16 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.8 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.9 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.11.14 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.12 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.13 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.14 = private unnamed_addr constant [12 x i8] c"switch(%s)\0A\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"switch(%s__->vtable__->kind__)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"switch(%s__->kind__)\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"switch(%s__->getKind())\0A\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"\09\09\09\09\00", align 1
@.str.19 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.20 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.21 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"case %s:\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"case %s_kind:\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"static %s %s_%d__(\00", align 1
@.str.25 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.26 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s %sP%d__\00", align 1
@.str.29 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.30 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.31 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.32 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(%s *)\00", align 1
@.str.34 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"%s *%s = (%s *)%s__;\0A\00", align 1
@.str.36 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.37 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.38 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.39 = private unnamed_addr constant [15 x i8] c"\09return (%s);\0A\00", align 1
@.str.40 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@.str.41 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"#define %s_kind %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"typedef enum {\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%s\09%s\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"\0A} %s;\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"typedef struct %s__ %s;\0A\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"struct %s__ {\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *vtable__;\0A\00", align 1
@.str.53 = private unnamed_addr constant [14 x i8] c"\09int kind__;\0A\00", align 1
@.str.54 = private unnamed_addr constant [20 x i8] c"\09char *filename__;\0A\00", align 1
@.str.55 = private unnamed_addr constant [18 x i8] c"\09long linenum__;\0A\00", align 1
@.str.56 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"struct %s_vtable__ {\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *parent__;\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"\09const void *parent__;\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"\09const char *name__;\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"extern struct %s_vtable__ const %s_vt__;\0A\0A\00", align 1
@.str.62 = private unnamed_addr constant [9 x i8] c"\09%s %s;\0A\00", align 1
@.str.63 = private unnamed_addr constant [25 x i8] c"\09%s (*%s_v__)(%s *this__\00", align 1
@.str.64 = private unnamed_addr constant [8 x i8] c", %s %s\00", align 1
@.str.65 = private unnamed_addr constant [11 x i8] c", %s P%d__\00", align 1
@.str.66 = private unnamed_addr constant [18 x i8] c"#define %s(this__\00", align 1
@.str.67 = private unnamed_addr constant [4 x i8] c",%s\00", align 1
@.str.68 = private unnamed_addr constant [7 x i8] c",P%d__\00", align 1
@.str.69 = private unnamed_addr constant [5 x i8] c") \\\0A\00", align 1
@.str.70 = private unnamed_addr constant [63 x i8] c"\09((*(((struct %s_vtable__ *)((this__)->vtable__))->%s_v__)) \\\0A\00", align 1
@.str.71 = private unnamed_addr constant [18 x i8] c"\09\09((%s *)(this__)\00", align 1
@.str.72 = private unnamed_addr constant [7 x i8] c", (%s)\00", align 1
@.str.73 = private unnamed_addr constant [10 x i8] c", (P%d__)\00", align 1
@.str.74 = private unnamed_addr constant [5 x i8] c"))\0A\0A\00", align 1
@.str.75 = private unnamed_addr constant [19 x i8] c"extern %s %s_%s__(\00", align 1
@.str.76 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.77 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.78 = private unnamed_addr constant [7 x i8] c"%s *%s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"%s *P%d__\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"extern %s *%s_create(\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"%s *state__\00", align 1
@.str.82 = private unnamed_addr constant [14 x i8] c"extern %s %s(\00", align 1
@.str.83 = private unnamed_addr constant [16 x i8] c"#ifndef %skind\0A\00", align 1
@.str.84 = private unnamed_addr constant [53 x i8] c"#define %skind(node__) ((node__)->vtable__->kind__)\0A\00", align 1
@.str.85 = private unnamed_addr constant [43 x i8] c"#define %skind(node__) ((node__)->kind__)\0A\00", align 1
@.str.86 = private unnamed_addr constant [9 x i8] c"#endif\0A\0A\00", align 1
@.str.87 = private unnamed_addr constant [20 x i8] c"#ifndef %skindname\0A\00", align 1
@.str.88 = private unnamed_addr constant [57 x i8] c"#define %skindname(node__) ((node__)->vtable__->name__)\0A\00", align 1
@.str.89 = private unnamed_addr constant [18 x i8] c"#ifndef %skindof\0A\00", align 1
@.str.90 = private unnamed_addr constant [42 x i8] c"#define %skindof(type__) (type__##_kind)\0A\00", align 1
@.str.91 = private unnamed_addr constant [15 x i8] c"#ifndef %sisa\0A\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"extern int %sisa__(const void *vtable__, int kind__);\0A\00", align 1
@.str.93 = private unnamed_addr constant [32 x i8] c"#define %sisa(node__,type__) \\\0A\00", align 1
@.str.94 = private unnamed_addr constant [49 x i8] c"\09(%sisa__((node__)->vtable__, (type__##_kind)))\0A\00", align 1
@.str.95 = private unnamed_addr constant [23 x i8] c"#ifndef %sgetfilename\0A\00", align 1
@.str.96 = private unnamed_addr constant [54 x i8] c"#define %sgetfilename(node__) ((node__)->filename__)\0A\00", align 1
@.str.97 = private unnamed_addr constant [22 x i8] c"#ifndef %sgetlinenum\0A\00", align 1
@.str.98 = private unnamed_addr constant [52 x i8] c"#define %sgetlinenum(node__) ((node__)->linenum__)\0A\00", align 1
@.str.99 = private unnamed_addr constant [23 x i8] c"#ifndef %ssetfilename\0A\00", align 1
@.str.100 = private unnamed_addr constant [42 x i8] c"#define %ssetfilename(node__, value__) \\\0A\00", align 1
@.str.101 = private unnamed_addr constant [37 x i8] c"\09((node__)->filename__ = (value__))\0A\00", align 1
@.str.102 = private unnamed_addr constant [22 x i8] c"#ifndef %ssetlinenum\0A\00", align 1
@.str.103 = private unnamed_addr constant [41 x i8] c"#define %ssetlinenum(node__, value__) \\\0A\00", align 1
@.str.104 = private unnamed_addr constant [36 x i8] c"\09((node__)->linenum__ = (value__))\0A\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"#ifndef %stracklines_declared\0A\00", align 1
@.str.106 = private unnamed_addr constant [29 x i8] c"extern char *%scurrfilename(\00", align 1
@.str.107 = private unnamed_addr constant [27 x i8] c"extern long %scurrlinenum(\00", align 1
@.str.108 = private unnamed_addr constant [33 x i8] c"#define %stracklines_declared 1\0A\00", align 1
@.str.109 = private unnamed_addr constant [28 x i8] c"#ifndef %snodeops_declared\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"extern void %snodeinit(\00", align 1
@.str.111 = private unnamed_addr constant [26 x i8] c"extern void *%snodealloc(\00", align 1
@.str.112 = private unnamed_addr constant [14 x i8] c"%s *state__, \00", align 1
@.str.113 = private unnamed_addr constant [20 x i8] c"unsigned int size__\00", align 1
@.str.114 = private unnamed_addr constant [23 x i8] c"extern int %snodepush(\00", align 1
@.str.115 = private unnamed_addr constant [23 x i8] c"extern void %snodepop(\00", align 1
@.str.116 = private unnamed_addr constant [25 x i8] c"extern void %snodeclear(\00", align 1
@.str.117 = private unnamed_addr constant [26 x i8] c"extern void %snodefailed(\00", align 1
@.str.118 = private unnamed_addr constant [30 x i8] c"#define %snodeops_declared 1\0A\00", align 1
@.str.119 = private unnamed_addr constant [22 x i8] c"#define %s_BLKSIZ %d\0A\00", align 1
@.str.120 = private unnamed_addr constant [24 x i8] c"#define %s_REENTRANT 1\0A\00", align 1
@.str.121 = private unnamed_addr constant [26 x i8] c"#define %s_TRACK_LINES 1\0A\00", align 1
@.str.122 = private unnamed_addr constant [12 x i8] c"c_gc_skel.c\00", align 1
@.str.123 = private unnamed_addr constant [9 x i8] c"c_skel.c\00", align 1
@.str.124 = private unnamed_addr constant [38 x i8] c"struct %s_vtable__ const %s_vt__ = {\0A\00", align 1
@.str.125 = private unnamed_addr constant [12 x i8] c"\09&%s_vt__,\0A\00", align 1
@.str.126 = private unnamed_addr constant [5 x i8] c"\090,\0A\00", align 1
@.str.127 = private unnamed_addr constant [11 x i8] c"\09%s_kind,\0A\00", align 1
@.str.128 = private unnamed_addr constant [8 x i8] c"\09\22%s\22,\0A\00", align 1
@.str.129 = private unnamed_addr constant [12 x i8] c"%s %s_%s__(\00", align 1
@.str.130 = private unnamed_addr constant [20 x i8] c"\09(%s (*)(%s *this__\00", align 1
@.str.131 = private unnamed_addr constant [12 x i8] c"))%s_%s__,\0A\00", align 1
@.str.132 = private unnamed_addr constant [6 x i8] c"))0,\0A\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"%s *%s_create(\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"\09static struct %s__ instance__ = {\0A\00", align 1
@.str.135 = private unnamed_addr constant [13 x i8] c"\09\09&%s_vt__,\0A\00", align 1
@.str.136 = private unnamed_addr constant [11 x i8] c"\09\09%s_kind\0A\00", align 1
@.str.137 = private unnamed_addr constant [5 x i8] c"\09};\0A\00", align 1
@.str.138 = private unnamed_addr constant [28 x i8] c"\09return (%s *)&instance__;\0A\00", align 1
@.str.139 = private unnamed_addr constant [64 x i8] c"\09%s *node__ = (%s *)%snodealloc(state__, sizeof(struct %s__));\0A\00", align 1
@.str.140 = private unnamed_addr constant [55 x i8] c"\09%s *node__ = (%s *)%snodealloc(sizeof(struct %s__));\0A\00", align 1
@.str.141 = private unnamed_addr constant [28 x i8] c"\09if(node__ == 0) return 0;\0A\00", align 1
@.str.142 = private unnamed_addr constant [31 x i8] c"\09node__->vtable__ = &%s_vt__;\0A\00", align 1
@.str.143 = private unnamed_addr constant [28 x i8] c"\09node__->kind__ = %s_kind;\0A\00", align 1
@.str.144 = private unnamed_addr constant [48 x i8] c"\09node__->filename__ = %scurrfilename(state__);\0A\00", align 1
@.str.145 = private unnamed_addr constant [46 x i8] c"\09node__->linenum__ = %scurrlinenum(state__);\0A\00", align 1
@.str.146 = private unnamed_addr constant [41 x i8] c"\09node__->filename__ = %scurrfilename();\0A\00", align 1
@.str.147 = private unnamed_addr constant [39 x i8] c"\09node__->linenum__ = %scurrlinenum();\0A\00", align 1
@.str.148 = private unnamed_addr constant [23 x i8] c"\09return (%s *)node__;\0A\00", align 1
@.str.149 = private unnamed_addr constant [19 x i8] c"\09node__->%s = %s;\0A\00", align 1
@.str.150 = private unnamed_addr constant [47 x i8] c"int %sisa__(const void *vtable__, int kind__)\0A\00", align 1
@.str.151 = private unnamed_addr constant [32 x i8] c"\09const struct %s_vtable__ *vt;\0A\00", align 1
@.str.152 = private unnamed_addr constant [45 x i8] c"\09vt = (const struct %s_vtable__ *)vtable__;\0A\00", align 1
@.str.153 = private unnamed_addr constant [19 x i8] c"\09while(vt != 0) {\0A\00", align 1
@.str.154 = private unnamed_addr constant [28 x i8] c"\09\09if(vt->kind__ == kind__)\0A\00", align 1
@.str.155 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.156 = private unnamed_addr constant [22 x i8] c"\09\09vt = vt->parent__;\0A\00", align 1
@.str.157 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@switch.table.Indent = private unnamed_addr constant [3 x ptr] [ptr @.str.19, ptr @.str.20, ptr @.str.21], align 8
@.str.159 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@TreeCCNonVirtualFuncsC = internal constant %struct.TreeCCNonVirtual { ptr @C_GenStart, ptr @C_GenEntry, ptr @C_GenSplitEntry, ptr @C_GenSwitchHead, ptr @C_GenSelector, ptr @C_GenEndSelectors, ptr @C_GenCaseFunc, ptr @C_GenCaseCall, ptr @C_GenCaseInline, ptr @C_GenCaseSplit, ptr @C_GenEndCase, ptr @C_GenEndSwitch, ptr @C_GenExit, ptr @C_GenEnd }, align 8
@.str.1.160 = private unnamed_addr constant [16 x i8] c"#include <new>\0A\00", align 1
@.str.2.161 = private unnamed_addr constant [17 x i8] c"namespace %s\0A{\0A\0A\00", align 1
@.str.3.275 = private unnamed_addr constant [25 x i8] c"const int %s_kind = %d;\0A\00", align 1
@.str.4.271 = private unnamed_addr constant [16 x i8] c"typedef enum {\0A\00", align 1
@.str.5.272 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@.str.6.273 = private unnamed_addr constant [8 x i8] c"} %s;\0A\0A\00", align 1
@.str.7.274 = private unnamed_addr constant [11 x i8] c"class %s;\0A\00", align 1
@.str.8.223 = private unnamed_addr constant [12 x i8] c"class %s\0A{\0A\00", align 1
@.str.9.217 = private unnamed_addr constant [10 x i8] c"public:\0A\0A\00", align 1
@.str.10.248 = private unnamed_addr constant [8 x i8] c"\09%s();\0A\00", align 1
@.str.11.245 = private unnamed_addr constant [18 x i8] c"\09virtual ~%s();\0A\0A\00", align 1
@.str.12.250 = private unnamed_addr constant [14 x i8] c"cpp_gc_skel.h\00", align 1
@.str.13.249 = private unnamed_addr constant [11 x i8] c"cpp_skel.h\00", align 1
@.str.14.251 = private unnamed_addr constant [11 x i8] c"private:\0A\0A\00", align 1
@.str.15.252 = private unnamed_addr constant [23 x i8] c"\09static %s *state__;\0A\0A\00", align 1
@.str.16.253 = private unnamed_addr constant [24 x i8] c"\09static %s *getState()\0A\00", align 1
@.str.17.254 = private unnamed_addr constant [5 x i8] c"\09\09{\0A\00", align 1
@.str.18.255 = private unnamed_addr constant [32 x i8] c"\09\09\09if(state__) return state__;\0A\00", align 1
@.str.19.256 = private unnamed_addr constant [24 x i8] c"\09\09\09state__ = new %s();\0A\00", align 1
@.str.20.257 = private unnamed_addr constant [20 x i8] c"\09\09\09return state__;\0A\00", align 1
@.str.21.258 = private unnamed_addr constant [6 x i8] c"\09\09}\0A\0A\00", align 1
@.str.22.260 = private unnamed_addr constant [23 x i8] c"\09void *alloc(size_t);\0A\00", align 1
@.str.23.261 = private unnamed_addr constant [32 x i8] c"\09void dealloc(void *, size_t);\0A\00", align 1
@.str.24.262 = private unnamed_addr constant [14 x i8] c"\09int push();\0A\00", align 1
@.str.25.263 = private unnamed_addr constant [14 x i8] c"\09void pop();\0A\00", align 1
@.str.26.264 = private unnamed_addr constant [16 x i8] c"\09void clear();\0A\00", align 1
@.str.27.265 = private unnamed_addr constant [25 x i8] c"\09virtual void failed();\0A\00", align 1
@.str.28.266 = private unnamed_addr constant [32 x i8] c"\09virtual char *currFilename();\0A\00", align 1
@.str.29.267 = private unnamed_addr constant [30 x i8] c"\09virtual long currLinenum();\0A\00", align 1
@.str.30.268 = private unnamed_addr constant [6 x i8] c"\0A};\0A\0A\00", align 1
@.str.31.270 = private unnamed_addr constant [23 x i8] c"\09virtual %s *%sCreate(\00", align 1
@.str.32.269 = private unnamed_addr constant [15 x i8] c"\09%s *%sCreate(\00", align 1
@.str.33.247 = private unnamed_addr constant [8 x i8] c") = 0;\0A\00", align 1
@.str.34.215 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.35.196 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.36.197 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.37.222 = private unnamed_addr constant [24 x i8] c"class %s : public %s\0A{\0A\00", align 1
@.str.38.224 = private unnamed_addr constant [13 x i8] c"protected:\0A\0A\00", align 1
@.str.39.225 = private unnamed_addr constant [14 x i8] c"\09int kind__;\0A\00", align 1
@.str.40.226 = private unnamed_addr constant [20 x i8] c"\09char *filename__;\0A\00", align 1
@.str.41.227 = private unnamed_addr constant [18 x i8] c"\09long linenum__;\0A\00", align 1
@.str.42.228 = private unnamed_addr constant [11 x i8] c"\0Apublic:\0A\0A\00", align 1
@.str.43.229 = private unnamed_addr constant [41 x i8] c"\09int getKind() const { return kind__; }\0A\00", align 1
@.str.44.230 = private unnamed_addr constant [57 x i8] c"\09const char *getFilename() const { return filename__; }\0A\00", align 1
@.str.45.231 = private unnamed_addr constant [48 x i8] c"\09long getLinenum() const { return linenum__; }\0A\00", align 1
@.str.46.232 = private unnamed_addr constant [62 x i8] c"\09void setFilename(char *filename) { filename__ = filename; }\0A\00", align 1
@.str.47.233 = private unnamed_addr constant [57 x i8] c"\09void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.48.234 = private unnamed_addr constant [30 x i8] c"\09void *operator new(size_t);\0A\00", align 1
@.str.49.235 = private unnamed_addr constant [41 x i8] c"\09void operator delete(void *, size_t);\0A\0A\00", align 1
@.str.50.236 = private unnamed_addr constant [33 x i8] c"public: // for virtual factory\0A\0A\00", align 1
@.str.51.237 = private unnamed_addr constant [20 x i8] c"\09friend class %s;\0A\0A\00", align 1
@.str.52.238 = private unnamed_addr constant [5 x i8] c"\09%s(\00", align 1
@.str.53.174 = private unnamed_addr constant [12 x i8] c"%s *state__\00", align 1
@.str.54.240 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@.str.55.243 = private unnamed_addr constant [35 x i8] c"\09virtual int isA(int kind) const;\0A\00", align 1
@.str.56.244 = private unnamed_addr constant [44 x i8] c"\09virtual const char *getKindName() const;\0A\0A\00", align 1
@.str.57.221 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.58.241 = private unnamed_addr constant [9 x i8] c"\09%s %s;\0A\00", align 1
@.str.59.246 = private unnamed_addr constant [16 x i8] c"\09virtual %s %s(\00", align 1
@.str.60.198 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.61.216 = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@.str.62.168 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.63.218 = private unnamed_addr constant [9 x i8] c"\09static \00", align 1
@.str.64.219 = private unnamed_addr constant [7 x i8] c"%s %s(\00", align 1
@.str.65.220 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.66.204 = private unnamed_addr constant [22 x i8] c"#define %s_BLKSIZ %d\0A\00", align 1
@.str.67.205 = private unnamed_addr constant [24 x i8] c"#define %s_REENTRANT 1\0A\00", align 1
@.str.68.206 = private unnamed_addr constant [26 x i8] c"#define %s_TRACK_LINES 1\0A\00", align 1
@.str.69.207 = private unnamed_addr constant [28 x i8] c"#define %s_USE_ALLOCATOR 1\0A\00", align 1
@.str.70.209 = private unnamed_addr constant [15 x i8] c"cpp_gc_skel.cc\00", align 1
@.str.71.208 = private unnamed_addr constant [12 x i8] c"cpp_skel.cc\00", align 1
@.str.72.211 = private unnamed_addr constant [18 x i8] c"%s *%s::%sCreate(\00", align 1
@.str.73.176 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.74.212 = private unnamed_addr constant [41 x i8] c"\09void *buf__ = this->alloc(sizeof(%s));\0A\00", align 1
@.str.75.213 = private unnamed_addr constant [27 x i8] c"\09if(buf__ == 0) return 0;\0A\00", align 1
@.str.76.214 = private unnamed_addr constant [28 x i8] c"\09return new (buf__) %s(this\00", align 1
@.str.77.170 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.78.203 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.79.167 = private unnamed_addr constant [39 x i8] c"void *%s::operator new(size_t size__)\0A\00", align 1
@.str.80.169 = private unnamed_addr constant [40 x i8] c"\09return %s::getState()->alloc(size__);\0A\00", align 1
@.str.81.171 = private unnamed_addr constant [54 x i8] c"void %s::operator delete(void *ptr__, size_t size__)\0A\00", align 1
@.str.82.172 = private unnamed_addr constant [42 x i8] c"\09%s::getState()->dealloc(ptr__, size__);\0A\00", align 1
@.str.83.185 = private unnamed_addr constant [11 x i8] c"%s::~%s()\0A\00", align 1
@.str.84.186 = private unnamed_addr constant [14 x i8] c"\09// not used\0A\00", align 1
@.str.85.187 = private unnamed_addr constant [29 x i8] c"int %s::isA(int kind) const\0A\00", align 1
@.str.86.188 = private unnamed_addr constant [22 x i8] c"\09if(kind == %s_kind)\0A\00", align 1
@.str.87.189 = private unnamed_addr constant [13 x i8] c"\09\09return 1;\0A\00", align 1
@.str.88.190 = private unnamed_addr constant [7 x i8] c"\09else\0A\00", align 1
@.str.89.191 = private unnamed_addr constant [25 x i8] c"\09\09return %s::isA(kind);\0A\00", align 1
@.str.90.192 = private unnamed_addr constant [13 x i8] c"\09\09return 0;\0A\00", align 1
@.str.91.193 = private unnamed_addr constant [37 x i8] c"const char *%s::getKindName() const\0A\00", align 1
@.str.92.194 = private unnamed_addr constant [15 x i8] c"\09return \22%s\22;\0A\00", align 1
@.str.93.173 = private unnamed_addr constant [8 x i8] c"%s::%s(\00", align 1
@.str.94.177 = private unnamed_addr constant [7 x i8] c"\09: %s(\00", align 1
@.str.95.178 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.96.179 = private unnamed_addr constant [26 x i8] c"\09this->kind__ = %s_kind;\0A\00", align 1
@.str.97.180 = private unnamed_addr constant [46 x i8] c"\09this->filename__ = state__->currFilename();\0A\00", align 1
@.str.98.181 = private unnamed_addr constant [44 x i8] c"\09this->linenum__ = state__->currLinenum();\0A\00", align 1
@.str.99.182 = private unnamed_addr constant [53 x i8] c"\09this->filename__ = %s::getState()->currFilename();\0A\00", align 1
@.str.100.183 = private unnamed_addr constant [51 x i8] c"\09this->linenum__ = %s::getState()->currLinenum();\0A\00", align 1
@.str.101.184 = private unnamed_addr constant [17 x i8] c"\09this->%s = %s;\0A\00", align 1
@.str.102.195 = private unnamed_addr constant [11 x i8] c"%s %s::%s(\00", align 1
@.str.103.199 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.104.200 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.105.166 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.106.201 = private unnamed_addr constant [19 x i8] c"{\0A\09%s *%s = this;\0A\00", align 1
@.str.107.202 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.278 = private unnamed_addr constant [47 x i8] c"/* %s.  Generated automatically by treecc */\0A\0A\00", align 1
@.str.1.279 = private unnamed_addr constant [17 x i8] c"namespace %s\0A{\0A\0A\00", align 1
@.str.2.280 = private unnamed_addr constant [16 x i8] c"using System;\0A\0A\00", align 1
@.str.3.366 = private unnamed_addr constant [18 x i8] c"internal enum %s\0A\00", align 1
@.str.4.365 = private unnamed_addr constant [16 x i8] c"public enum %s\0A\00", align 1
@.str.5.367 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.6.368 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@.str.7.332 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.8.345 = private unnamed_addr constant [31 x i8] c"internal abstract class %s\0A{\0A\0A\00", align 1
@.str.9.344 = private unnamed_addr constant [29 x i8] c"public abstract class %s\0A{\0A\0A\00", align 1
@.str.10.347 = private unnamed_addr constant [22 x i8] c"internal class %s\0A{\0A\0A\00", align 1
@.str.11.346 = private unnamed_addr constant [20 x i8] c"public class %s\0A{\0A\0A\00", align 1
@.str.12.348 = private unnamed_addr constant [30 x i8] c"\09private static %s state__;\0A\0A\00", align 1
@.str.13.349 = private unnamed_addr constant [30 x i8] c"\09public static %s getState()\0A\00", align 1
@.str.14.312 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.15.350 = private unnamed_addr constant [39 x i8] c"\09\09if(state__ != null) return state__;\0A\00", align 1
@.str.16.351 = private unnamed_addr constant [23 x i8] c"\09\09state__ = new %s();\0A\00", align 1
@.str.17.352 = private unnamed_addr constant [19 x i8] c"\09\09return state__;\0A\00", align 1
@.str.18.319 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@.str.19.354 = private unnamed_addr constant [18 x i8] c"\09public %s() {}\0A\0A\00", align 1
@.str.20.353 = private unnamed_addr constant [35 x i8] c"\09public %s() { state__ = this; }\0A\0A\00", align 1
@.str.21.356 = private unnamed_addr constant [56 x i8] c"\09public virtual String currFilename() { return null; }\0A\00", align 1
@.str.22.357 = private unnamed_addr constant [51 x i8] c"\09public virtual long currLinenum() { return 0; }\0A\0A\00", align 1
@.str.23.358 = private unnamed_addr constant [38 x i8] c"\09public virtual abstract %s %sCreate(\00", align 1
@.str.24.359 = private unnamed_addr constant [29 x i8] c"\09public virtual %s %sCreate(\00", align 1
@.str.25.360 = private unnamed_addr constant [21 x i8] c"\09public %s %sCreate(\00", align 1
@.str.26.364 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.27.308 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.28.362 = private unnamed_addr constant [21 x i8] c"\09\09return new %s(this\00", align 1
@.str.29.337 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.30.338 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.31.343 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.32.286 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.33.285 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.34.287 = private unnamed_addr constant [29 x i8] c"%s abstract class %s : %s\0A{\0A\00", align 1
@.str.35.288 = private unnamed_addr constant [20 x i8] c"%s class %s : %s\0A{\0A\00", align 1
@.str.36.289 = private unnamed_addr constant [24 x i8] c"%s abstract class %s\0A{\0A\00", align 1
@.str.37.290 = private unnamed_addr constant [15 x i8] c"%s class %s\0A{\0A\00", align 1
@.str.38.291 = private unnamed_addr constant [24 x i8] c"\09protected int kind__;\0A\00", align 1
@.str.39.292 = private unnamed_addr constant [31 x i8] c"\09protected String filename__;\0A\00", align 1
@.str.40.293 = private unnamed_addr constant [28 x i8] c"\09protected long linenum__;\0A\00", align 1
@.str.41.294 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.42.295 = private unnamed_addr constant [42 x i8] c"\09public int getKind() { return kind__; }\0A\00", align 1
@.str.43.296 = private unnamed_addr constant [53 x i8] c"\09public String getFilename() { return filename__; }\0A\00", align 1
@.str.44.297 = private unnamed_addr constant [49 x i8] c"\09public long getLinenum() { return linenum__; }\0A\00", align 1
@.str.45.298 = private unnamed_addr constant [70 x i8] c"\09public void setFilename(String filename) { filename__ = filename; }\0A\00", align 1
@.str.46.299 = private unnamed_addr constant [64 x i8] c"\09public void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.47.301 = private unnamed_addr constant [35 x i8] c"\09public new const int KIND = %d;\0A\0A\00", align 1
@.str.48.300 = private unnamed_addr constant [31 x i8] c"\09public const int KIND = %d;\0A\0A\00", align 1
@.str.49.303 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.50.304 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.51.305 = private unnamed_addr constant [7 x i8] c"\09%s%s(\00", align 1
@.str.52.306 = private unnamed_addr constant [11 x i8] c"%s state__\00", align 1
@.str.53.309 = private unnamed_addr constant [10 x i8] c"\09\09: base(\00", align 1
@.str.54.310 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.55.313 = private unnamed_addr constant [23 x i8] c"\09\09this.kind__ = KIND;\0A\00", align 1
@.str.56.314 = private unnamed_addr constant [45 x i8] c"\09\09this.filename__ = state__.currFilename();\0A\00", align 1
@.str.57.315 = private unnamed_addr constant [43 x i8] c"\09\09this.linenum__ = state__.currLinenum();\0A\00", align 1
@.str.58.316 = private unnamed_addr constant [51 x i8] c"\09\09this.filename__ = %s.getState().currFilename();\0A\00", align 1
@.str.59.317 = private unnamed_addr constant [49 x i8] c"\09\09this.linenum__ = %s.getState().currLinenum();\0A\00", align 1
@.str.60.318 = private unnamed_addr constant [17 x i8] c"\09\09this.%s = %s;\0A\00", align 1
@.str.61.322 = private unnamed_addr constant [36 x i8] c"\09public override int isA(int kind)\0A\00", align 1
@.str.62.321 = private unnamed_addr constant [35 x i8] c"\09public virtual int isA(int kind)\0A\00", align 1
@.str.63.323 = private unnamed_addr constant [20 x i8] c"\09\09if(kind == KIND)\0A\00", align 1
@.str.64.324 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.65.325 = private unnamed_addr constant [8 x i8] c"\09\09else\0A\00", align 1
@.str.66.327 = private unnamed_addr constant [27 x i8] c"\09\09\09return base.isA(kind);\0A\00", align 1
@.str.67.326 = private unnamed_addr constant [14 x i8] c"\09\09\09return 0;\0A\00", align 1
@.str.68.329 = private unnamed_addr constant [39 x i8] c"\09public override String getKindName()\0A\00", align 1
@.str.69.328 = private unnamed_addr constant [38 x i8] c"\09public virtual String getKindName()\0A\00", align 1
@.str.70.330 = private unnamed_addr constant [16 x i8] c"\09\09return \22%s\22;\0A\00", align 1
@.str.71.331 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.72.302 = private unnamed_addr constant [16 x i8] c"\09public %s %s;\0A\00", align 1
@.str.73.333 = private unnamed_addr constant [24 x i8] c"\09public abstract %s %s(\00", align 1
@.str.74.335 = private unnamed_addr constant [23 x i8] c"\09public virtual %s %s(\00", align 1
@.str.75.336 = private unnamed_addr constant [24 x i8] c"\09public override %s %s(\00", align 1
@.str.76.339 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.77.340 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.78.341 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.79.342 = private unnamed_addr constant [19 x i8] c"\0A\09\09%s %s = this;\0A\09\00", align 1
@.str.80.284 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.81.334 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@TreeCCNonVirtualFuncsJava = internal constant %struct.TreeCCNonVirtual { ptr @Java_GenStart, ptr @Java_GenEntry, ptr @Java_GenSplitEntry, ptr @Java_GenSwitchHead, ptr @Java_GenSelector, ptr @Java_GenEndSelectors, ptr @Java_GenCaseFunc, ptr @Java_GenCaseCall, ptr @Java_GenCaseInline, ptr @Java_GenCaseSplit, ptr @Java_GenEndCase, ptr @Java_GenEndSwitch, ptr @Java_GenExit, ptr @Java_GenEnd }, align 8
@.str.431 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.1.430 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2.432 = private unnamed_addr constant [15 x i8] c"%s class %s\0A{\0A\00", align 1
@.str.3.427 = private unnamed_addr constant [34 x i8] c"\09private static %s %s_split_%d__(\00", align 1
@.str.4.428 = private unnamed_addr constant [22 x i8] c"\09public static %s %s(\00", align 1
@.str.5.407 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.6.429 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.7.409 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.8.410 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.9.411 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.10.420 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.11.379 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.12.416 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.13.426 = private unnamed_addr constant [12 x i8] c"switch(%s)\0A\00", align 1
@.str.14.425 = private unnamed_addr constant [24 x i8] c"switch(%s__.getKind())\0A\00", align 1
@.str.15.422 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.16.399 = private unnamed_addr constant [5 x i8] c"\09\09\09\09\00", align 1
@.str.17.401 = private unnamed_addr constant [2 x i8] c"\09\00", align 1
@.str.18.402 = private unnamed_addr constant [3 x i8] c"\09\09\00", align 1
@.str.19.403 = private unnamed_addr constant [4 x i8] c"\09\09\09\00", align 1
@.str.20.423 = private unnamed_addr constant [13 x i8] c"case %s.%s:\0A\00", align 1
@.str.21.424 = private unnamed_addr constant [15 x i8] c"case %s.KIND:\0A\00", align 1
@.str.22.417 = private unnamed_addr constant [28 x i8] c"\09private static %s %s_%d__(\00", align 1
@.str.23.418 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24.419 = private unnamed_addr constant [9 x i8] c"%s P%d__\00", align 1
@.str.25.421 = private unnamed_addr constant [3 x i8] c"\09{\00", align 1
@.str.26.389 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.27.371 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.28.393 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.29.405 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.30.415 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.31.408 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.32.412 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.33.413 = private unnamed_addr constant [19 x i8] c"%s %s = (%s)%s__;\0A\00", align 1
@.str.34.414 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.35.406 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.36.404 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.37.398 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.38.394 = private unnamed_addr constant [15 x i8] c"\09return (%s);\0A\00", align 1
@.str.39.395 = private unnamed_addr constant [12 x i8] c"\09return 0;\0A\00", align 1
@.str.40.396 = private unnamed_addr constant [4 x i8] c"\09}\0A\00", align 1
@.str.41.372 = private unnamed_addr constant [14 x i8] c"package %s;\0A\0A\00", align 1
@.str.42.373 = private unnamed_addr constant [22 x i8] c"import java.lang.*;\0A\0A\00", align 1
@.str.43.482 = private unnamed_addr constant [17 x i8] c"public class %s\0A\00", align 1
@.str.44.483 = private unnamed_addr constant [35 x i8] c"\09public static final int %s = %d;\0A\00", align 1
@.str.45.375 = private unnamed_addr constant [29 x i8] c"public abstract class %s\0A{\0A\0A\00", align 1
@.str.46.376 = private unnamed_addr constant [20 x i8] c"public class %s\0A{\0A\0A\00", align 1
@.str.47.377 = private unnamed_addr constant [30 x i8] c"\09private static %s state__;\0A\0A\00", align 1
@.str.48.378 = private unnamed_addr constant [30 x i8] c"\09public static %s getState()\0A\00", align 1
@.str.49.380 = private unnamed_addr constant [39 x i8] c"\09\09if(state__ != null) return state__;\0A\00", align 1
@.str.50.381 = private unnamed_addr constant [23 x i8] c"\09\09state__ = new %s();\0A\00", align 1
@.str.51.382 = private unnamed_addr constant [19 x i8] c"\09\09return state__;\0A\00", align 1
@.str.52.383 = private unnamed_addr constant [5 x i8] c"\09}\0A\0A\00", align 1
@.str.53.385 = private unnamed_addr constant [18 x i8] c"\09public %s() {}\0A\0A\00", align 1
@.str.54.384 = private unnamed_addr constant [35 x i8] c"\09public %s() { state__ = this; }\0A\0A\00", align 1
@.str.55.387 = private unnamed_addr constant [48 x i8] c"\09public String currFilename() { return null; }\0A\00", align 1
@.str.56.388 = private unnamed_addr constant [43 x i8] c"\09public long currLinenum() { return 0; }\0A\0A\00", align 1
@.str.57.478 = private unnamed_addr constant [30 x i8] c"\09public abstract %s %sCreate(\00", align 1
@.str.58.477 = private unnamed_addr constant [21 x i8] c"\09public %s %sCreate(\00", align 1
@.str.59.480 = private unnamed_addr constant [21 x i8] c"\09\09return new %s(this\00", align 1
@.str.60.433 = private unnamed_addr constant [39 x i8] c"public abstract class %s extends %s\0A{\0A\00", align 1
@.str.61.434 = private unnamed_addr constant [30 x i8] c"public class %s extends %s\0A{\0A\00", align 1
@.str.62.435 = private unnamed_addr constant [28 x i8] c"public abstract class %s\0A{\0A\00", align 1
@.str.63.436 = private unnamed_addr constant [19 x i8] c"public class %s\0A{\0A\00", align 1
@.str.64.437 = private unnamed_addr constant [24 x i8] c"\09protected int kind__;\0A\00", align 1
@.str.65.438 = private unnamed_addr constant [31 x i8] c"\09protected String filename__;\0A\00", align 1
@.str.66.439 = private unnamed_addr constant [28 x i8] c"\09protected long linenum__;\0A\00", align 1
@.str.67.440 = private unnamed_addr constant [42 x i8] c"\09public int getKind() { return kind__; }\0A\00", align 1
@.str.68.441 = private unnamed_addr constant [53 x i8] c"\09public String getFilename() { return filename__; }\0A\00", align 1
@.str.69.442 = private unnamed_addr constant [49 x i8] c"\09public long getLinenum() { return linenum__; }\0A\00", align 1
@.str.70.443 = private unnamed_addr constant [70 x i8] c"\09public void setFilename(String filename) { filename__ = filename; }\0A\00", align 1
@.str.71.444 = private unnamed_addr constant [64 x i8] c"\09public void setLinenum(long linenum) { linenum__ = linenum; }\0A\00", align 1
@.str.72.445 = private unnamed_addr constant [38 x i8] c"\09public static final int KIND = %d;\0A\0A\00", align 1
@.str.73.448 = private unnamed_addr constant [8 x i8] c"public \00", align 1
@.str.74.447 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.75.449 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.76.450 = private unnamed_addr constant [7 x i8] c"\09%s%s(\00", align 1
@.str.77.451 = private unnamed_addr constant [11 x i8] c"%s state__\00", align 1
@.str.78.453 = private unnamed_addr constant [9 x i8] c"\09\09super(\00", align 1
@.str.79.454 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.80.456 = private unnamed_addr constant [23 x i8] c"\09\09this.kind__ = KIND;\0A\00", align 1
@.str.81.457 = private unnamed_addr constant [45 x i8] c"\09\09this.filename__ = state__.currFilename();\0A\00", align 1
@.str.82.458 = private unnamed_addr constant [43 x i8] c"\09\09this.linenum__ = state__.currLinenum();\0A\00", align 1
@.str.83.459 = private unnamed_addr constant [51 x i8] c"\09\09this.filename__ = %s.getState().currFilename();\0A\00", align 1
@.str.84.460 = private unnamed_addr constant [49 x i8] c"\09\09this.linenum__ = %s.getState().currLinenum();\0A\00", align 1
@.str.85.461 = private unnamed_addr constant [17 x i8] c"\09\09this.%s = %s;\0A\00", align 1
@.str.86.463 = private unnamed_addr constant [27 x i8] c"\09public int isA(int kind)\0A\00", align 1
@.str.87.464 = private unnamed_addr constant [20 x i8] c"\09\09if(kind == KIND)\0A\00", align 1
@.str.88.465 = private unnamed_addr constant [14 x i8] c"\09\09\09return 1;\0A\00", align 1
@.str.89.466 = private unnamed_addr constant [8 x i8] c"\09\09else\0A\00", align 1
@.str.90.468 = private unnamed_addr constant [28 x i8] c"\09\09\09return super.isA(kind);\0A\00", align 1
@.str.91.467 = private unnamed_addr constant [14 x i8] c"\09\09\09return 0;\0A\00", align 1
@.str.92.469 = private unnamed_addr constant [30 x i8] c"\09public String getKindName()\0A\00", align 1
@.str.93.470 = private unnamed_addr constant [16 x i8] c"\09\09return \22%s\22;\0A\00", align 1
@.str.94.446 = private unnamed_addr constant [16 x i8] c"\09public %s %s;\0A\00", align 1
@.str.95.471 = private unnamed_addr constant [24 x i8] c"\09public abstract %s %s(\00", align 1
@.str.96.472 = private unnamed_addr constant [15 x i8] c"\09public %s %s(\00", align 1
@.str.97.473 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.98.474 = private unnamed_addr constant [17 x i8] c"\09\09%s %s = this;\0A\00", align 1
@.str.99.475 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.100.476 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@switch.table.Indent.400 = private unnamed_addr constant [3 x ptr] [ptr @.str.17.401, ptr @.str.18.402, ptr @.str.19.403], align 8
@TreeCCNonVirtualFuncsPHP = internal constant %struct.TreeCCNonVirtual { ptr @PHP_GenStart, ptr @PHP_GenEntry, ptr @PHP_GenSplitEntry, ptr @PHP_GenSwitchHead, ptr @PHP_GenSelector, ptr @PHP_GenEndSelectors, ptr @PHP_GenCaseFunc, ptr @PHP_GenCaseCall, ptr @PHP_GenCaseInline, ptr @PHP_GenCaseSplit, ptr @PHP_GenEndCase, ptr @PHP_GenEndSwitch, ptr @PHP_GenExit, ptr @PHP_GenEnd }, align 8
@.str.527 = private unnamed_addr constant [12 x i8] c"class %s\0A{\0A\00", align 1
@.str.1.524 = private unnamed_addr constant [29 x i8] c"    function %s_split_%d__(&\00", align 1
@.str.2.525 = private unnamed_addr constant [18 x i8] c"    function %s(&\00", align 1
@.str.3.507 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4.508 = private unnamed_addr constant [4 x i8] c"$%s\00", align 1
@.str.5.515 = private unnamed_addr constant [7 x i8] c"$P%d__\00", align 1
@.str.6.510 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.7.517 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8.526 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.9.523 = private unnamed_addr constant [13 x i8] c"switch($%s)\0A\00", align 1
@.str.10.522 = private unnamed_addr constant [26 x i8] c"switch($%s__->getKind())\0A\00", align 1
@.str.11.519 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12.499 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.13.501 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14.502 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.15.503 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.16.520 = private unnamed_addr constant [13 x i8] c"case %s_%s:\0A\00", align 1
@.str.17.521 = private unnamed_addr constant [15 x i8] c"case %s_KIND:\0A\00", align 1
@.str.18.516 = private unnamed_addr constant [23 x i8] c"    function %s_%d__(&\00", align 1
@.str.19.518 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.20.491 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.21.492 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.22.493 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.23.505 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.24.514 = private unnamed_addr constant [45 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_%d__(\00", align 1
@.str.25.511 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.26.512 = private unnamed_addr constant [13 x i8] c"$%s = %s__;\0A\00", align 1
@.str.27.513 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.28.506 = private unnamed_addr constant [51 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_split_%d__(\00", align 1
@.str.29.509 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.30.504 = private unnamed_addr constant [9 x i8] c"break;\0A\0A\00", align 1
@.str.31.498 = private unnamed_addr constant [17 x i8] c"default: break;\0A\00", align 1
@.str.32.494 = private unnamed_addr constant [18 x i8] c"    return (%s);\0A\00", align 1
@.str.33.495 = private unnamed_addr constant [15 x i8] c"    return 0;\0A\00", align 1
@.str.34.496 = private unnamed_addr constant [7 x i8] c"    }\0A\00", align 1
@.str.35.486 = private unnamed_addr constant [54 x i8] c"<?php\0A\0A/* %s.  Generated automatically by treecc */\0A\0A\00", align 1
@.str.36.583 = private unnamed_addr constant [21 x i8] c"define('%s_%s',%d);\0A\00", align 1
@.str.37.584 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.38.570 = private unnamed_addr constant [13 x i8] c"class %s\0A{\0A\0A\00", align 1
@.str.39.571 = private unnamed_addr constant [26 x i8] c"    function &getState()\0A\00", align 1
@.str.40.572 = private unnamed_addr constant [31 x i8] c"        static $state = null;\0A\00", align 1
@.str.41.573 = private unnamed_addr constant [43 x i8] c"        if($state != null) return $state;\0A\00", align 1
@.str.42.574 = private unnamed_addr constant [28 x i8] c"        $state = new %s();\0A\00", align 1
@.str.43.575 = private unnamed_addr constant [24 x i8] c"        return $state;\0A\00", align 1
@.str.44.552 = private unnamed_addr constant [8 x i8] c"    }\0A\0A\00", align 1
@.str.45.577 = private unnamed_addr constant [46 x i8] c"    function currFilename() { return null; }\0A\00", align 1
@.str.46.578 = private unnamed_addr constant [43 x i8] c"    function currLinenum() { return 0; }\0A\0A\00", align 1
@.str.47.562 = private unnamed_addr constant [4 x i8] c"}\0A\0A\00", align 1
@.str.48.579 = private unnamed_addr constant [23 x i8] c"    function %sCreate(\00", align 1
@.str.49.581 = private unnamed_addr constant [28 x i8] c"        return new %s($this\00", align 1
@.str.50.529 = private unnamed_addr constant [23 x i8] c"define('%s_KIND',%d);\0A\00", align 1
@.str.51.528 = private unnamed_addr constant [24 x i8] c"define('%s_KIND', %d);\0A\00", align 1
@.str.52.530 = private unnamed_addr constant [23 x i8] c"class %s extends %s\0A{\0A\00", align 1
@.str.53.531 = private unnamed_addr constant [18 x i8] c"    var $kind__;\0A\00", align 1
@.str.54.532 = private unnamed_addr constant [22 x i8] c"    var $filename__;\0A\00", align 1
@.str.55.533 = private unnamed_addr constant [21 x i8] c"    var $linenum__;\0A\00", align 1
@.str.56.534 = private unnamed_addr constant [50 x i8] c"    function getKind() { return $this->kind__; }\0A\00", align 1
@.str.57.535 = private unnamed_addr constant [58 x i8] c"    function getFilename() { return $this->filename__; }\0A\00", align 1
@.str.58.536 = private unnamed_addr constant [56 x i8] c"    function getLinenum() { return $this->linenum__; }\0A\00", align 1
@.str.59.537 = private unnamed_addr constant [72 x i8] c"    function setFilename($filename) { $this->filename__ = $filename; }\0A\00", align 1
@.str.60.538 = private unnamed_addr constant [68 x i8] c"    function setLinenum($linenum) { $this->linenum__ = $linenum; }\0A\00", align 1
@.str.61.541 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.62.540 = private unnamed_addr constant [19 x i8] c"    function %s%s(\00", align 1
@.str.63.542 = private unnamed_addr constant [10 x i8] c"&$state__\00", align 1
@.str.64.544 = private unnamed_addr constant [21 x i8] c"        parent::%s (\00", align 1
@.str.65.546 = private unnamed_addr constant [34 x i8] c"        $this->kind__ = %s_KIND;\0A\00", align 1
@.str.66.547 = private unnamed_addr constant [55 x i8] c"        $this->filename__ = $state__->currFilename();\0A\00", align 1
@.str.67.548 = private unnamed_addr constant [53 x i8] c"        $this->linenum__ = $state__->currLinenum();\0A\00", align 1
@.str.68.549 = private unnamed_addr constant [77 x i8] c"        $_tmp = &%s::getState(); $this->filename__ = $_tmp->currFilename();\0A\00", align 1
@.str.69.550 = private unnamed_addr constant [75 x i8] c"        $_tmp = &%s::getState(); $this->linenum__ = $_tmp->currLinenum();\0A\00", align 1
@.str.70.551 = private unnamed_addr constant [26 x i8] c"        $this->%s = $%s;\0A\00", align 1
@.str.71.554 = private unnamed_addr constant [25 x i8] c"    function isA($kind)\0A\00", align 1
@.str.72.555 = private unnamed_addr constant [30 x i8] c"        if($kind == %s_KIND)\0A\00", align 1
@.str.73.556 = private unnamed_addr constant [23 x i8] c"            return 1;\0A\00", align 1
@.str.74.557 = private unnamed_addr constant [14 x i8] c"        else\0A\00", align 1
@.str.75.559 = private unnamed_addr constant [40 x i8] c"            return parent::isA($kind);\0A\00", align 1
@.str.76.558 = private unnamed_addr constant [23 x i8] c"            return 0;\0A\00", align 1
@.str.77.560 = private unnamed_addr constant [28 x i8] c"    function getKindName()\0A\00", align 1
@.str.78.561 = private unnamed_addr constant [22 x i8] c"        return \22%s\22;\0A\00", align 1
@.str.79.539 = private unnamed_addr constant [14 x i8] c"    var $%s;\0A\00", align 1
@.str.80.569 = private unnamed_addr constant [5 x i8] c" $%s\00", align 1
@.str.81.564 = private unnamed_addr constant [18 x i8] c"    function  %s(\00", align 1
@.str.82.565 = private unnamed_addr constant [17 x i8] c"    function %s(\00", align 1
@.str.83.566 = private unnamed_addr constant [5 x i8] c"$%s \00", align 1
@.str.84.567 = private unnamed_addr constant [5 x i8] c"this\00", align 1
@.str.85.568 = private unnamed_addr constant [28 x i8] c"\0A        $%s = &$this;\0A    \00", align 1
@.str.86.563 = private unnamed_addr constant [7 x i8] c") {}\0A\0A\00", align 1
@.str.87.490 = private unnamed_addr constant [4 x i8] c"\0A?>\00", align 1
@switch.table.Indent.500 = private unnamed_addr constant [3 x ptr] [ptr @.str.13.501, ptr @.str.14.502, ptr @.str.15.503], align 8
@TreeCCNonVirtualFuncsRuby = internal constant %struct.TreeCCNonVirtual { ptr @Ruby_GenStart, ptr @Ruby_GenEntry, ptr @Ruby_GenSplitEntry, ptr @Ruby_GenSwitchHead, ptr @Ruby_GenSelector, ptr @Ruby_GenEndSelectors, ptr @Ruby_GenCaseFunc, ptr @Ruby_GenCaseCall, ptr @Ruby_GenCaseInline, ptr @Ruby_GenCaseSplit, ptr @Ruby_GenEndCase, ptr @Ruby_GenEndSwitch, ptr @Ruby_GenExit, ptr @Ruby_GenEnd }, align 8
@.str.620 = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@.str.1.618 = private unnamed_addr constant [35 x i8] c"  private \0A  def %s.%s_split_%d__(\00", align 1
@.str.2.619 = private unnamed_addr constant [23 x i8] c"  public \0A  def %s.%s(\00", align 1
@.str.3.605 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.4.606 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5.607 = private unnamed_addr constant [6 x i8] c"p%d__\00", align 1
@.str.6.608 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.7.609 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8.617 = private unnamed_addr constant [9 x i8] c"case %s\0A\00", align 1
@.str.9.616 = private unnamed_addr constant [22 x i8] c"case %s__.type::KIND\0A\00", align 1
@.str.10.611 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@.str.11.599 = private unnamed_addr constant [9 x i8] c"        \00", align 1
@.str.12.601 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.13.602 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.14.603 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.15.614 = private unnamed_addr constant [12 x i8] c"when %s.%s\0A\00", align 1
@.str.16.615 = private unnamed_addr constant [15 x i8] c"when %s::KIND\0A\00", align 1
@.str.17.613 = private unnamed_addr constant [29 x i8] c"  private \0A  def %s.%s_%d__(\00", align 1
@.str.18.592 = private unnamed_addr constant [5 x i8] c"end\0A\00", align 1
@.str.19.612 = private unnamed_addr constant [9 x i8] c"%s_%d__(\00", align 1
@.str.20.610 = private unnamed_addr constant [12 x i8] c"%s = %s__;\0A\00", align 1
@.str.21.604 = private unnamed_addr constant [15 x i8] c"%s_split_%d__(\00", align 1
@.str.22.598 = private unnamed_addr constant [6 x i8] c"else\0A\00", align 1
@.str.23.593 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.24.594 = private unnamed_addr constant [13 x i8] c"  return %s\0A\00", align 1
@.str.25.595 = private unnamed_addr constant [12 x i8] c"  return 0\0A\00", align 1
@.str.26.596 = private unnamed_addr constant [7 x i8] c"  end\0A\00", align 1
@.str.27.587 = private unnamed_addr constant [44 x i8] c"# %s.  Generated automatically by treecc \0A\0A\00", align 1
@.str.28.588 = private unnamed_addr constant [18 x i8] c"module %s\0Abegin\0A\0A\00", align 1
@.str.29.668 = private unnamed_addr constant [11 x i8] c"class %s \0A\00", align 1
@.str.30.669 = private unnamed_addr constant [11 x i8] c"  %s = %i\0A\00", align 1
@.str.31.648 = private unnamed_addr constant [6 x i8] c"end\0A\0A\00", align 1
@.str.32.654 = private unnamed_addr constant [17 x i8] c"  @@state = nil\0A\00", align 1
@.str.33.655 = private unnamed_addr constant [16 x i8] c"  def %s.state\0A\00", align 1
@.str.34.656 = private unnamed_addr constant [40 x i8] c"    return @@state unless @@state.nil?\0A\00", align 1
@.str.35.657 = private unnamed_addr constant [24 x i8] c"    @@state = %s.new()\0A\00", align 1
@.str.36.658 = private unnamed_addr constant [20 x i8] c"    return @@state\0A\00", align 1
@.str.37.638 = private unnamed_addr constant [8 x i8] c"  end\0A\0A\00", align 1
@.str.38.659 = private unnamed_addr constant [47 x i8] c"  def intialize \0A     @@state = self \0A   end\0A\0A\00", align 1
@.str.39.661 = private unnamed_addr constant [45 x i8] c"  def currFilename \0A     return nil \0A  end\0A\0A\00", align 1
@.str.40.662 = private unnamed_addr constant [42 x i8] c"  def currLinenum \0A     return 0 \0A  end\0A\0A\00", align 1
@.str.41.663 = private unnamed_addr constant [19 x i8] c"  def %s %sCreate(\00", align 1
@.str.42.665 = private unnamed_addr constant [38 x i8] c"raise \22Abstract method called: %s\\n\22\0A\00", align 1
@.str.43.666 = private unnamed_addr constant [23 x i8] c"    return %s.new(this\00", align 1
@.str.44.621 = private unnamed_addr constant [15 x i8] c"class %s < %s\0A\00", align 1
@.str.45.622 = private unnamed_addr constant [43 x i8] c"  protected\0A  attr_reader :kind\0A  public\0A\0A\00", align 1
@.str.46.623 = private unnamed_addr constant [37 x i8] c"  attr_accessor :Linenum, :Filename\0A\00", align 1
@.str.47.624 = private unnamed_addr constant [21 x i8] c"  attr_accessor :%s\0A\00", align 1
@.str.48.625 = private unnamed_addr constant [14 x i8] c"  KIND = %d\0A\0A\00", align 1
@.str.49.626 = private unnamed_addr constant [18 x i8] c"  def initialize(\00", align 1
@.str.50.627 = private unnamed_addr constant [8 x i8] c"state__\00", align 1
@.str.51.629 = private unnamed_addr constant [11 x i8] c"    super(\00", align 1
@.str.52.630 = private unnamed_addr constant [7 x i8] c"@state\00", align 1
@.str.53.632 = private unnamed_addr constant [18 x i8] c"    @kind = KIND\0A\00", align 1
@.str.54.633 = private unnamed_addr constant [37 x i8] c"    @Filename = @state.currFilename\0A\00", align 1
@.str.55.634 = private unnamed_addr constant [35 x i8] c"    @Finenum = @state.currLinenum\0A\00", align 1
@.str.56.635 = private unnamed_addr constant [41 x i8] c"    @Filename = %s.state.currFilename()\0A\00", align 1
@.str.57.636 = private unnamed_addr constant [39 x i8] c"    @Linenum = %s.state.currLinenum()\0A\00", align 1
@.str.58.637 = private unnamed_addr constant [18 x i8] c"    self.%s = %s\0A\00", align 1
@.str.59.640 = private unnamed_addr constant [17 x i8] c"  def isA(kind)\0A\00", align 1
@.str.60.641 = private unnamed_addr constant [28 x i8] c"    if(@kind == KIND) then\0A\00", align 1
@.str.61.642 = private unnamed_addr constant [19 x i8] c"      return true\0A\00", align 1
@.str.62.643 = private unnamed_addr constant [10 x i8] c"    else\0A\00", align 1
@.str.63.645 = private unnamed_addr constant [34 x i8] c"      return super(kind)\0A    end\0A\00", align 1
@.str.64.644 = private unnamed_addr constant [24 x i8] c"      return 0\0A    end\0A\00", align 1
@.str.65.646 = private unnamed_addr constant [16 x i8] c"  def KindName\0A\00", align 1
@.str.66.647 = private unnamed_addr constant [17 x i8] c"    return \22%s\22\0A\00", align 1
@.str.67.650 = private unnamed_addr constant [10 x i8] c"  def %s(\00", align 1
@.str.68.651 = private unnamed_addr constant [6 x i8] c"P%d__\00", align 1
@.str.69.652 = private unnamed_addr constant [5 x i8] c"self\00", align 1
@.str.70.653 = private unnamed_addr constant [21 x i8] c"\0A    %s %s = self\0A  \00", align 1
@.str.71.649 = private unnamed_addr constant [9 x i8] c")\0A  end\0A\00", align 1
@switch.table.Indent.600 = private unnamed_addr constant [3 x ptr] [ptr @.str.12.601, ptr @.str.13.602, ptr @.str.14.603], align 8
@.str.670 = private unnamed_addr constant [8 x i8] c"keyword\00", align 1
@KeywordTable = internal unnamed_addr constant [19 x %struct.anon] [%struct.anon { ptr @.str.8.680, i32 20 }, %struct.anon { ptr @.str.9.681, i32 31 }, %struct.anon { ptr @.str.10.682, i32 35 }, %struct.anon { ptr @.str.11.683, i32 32 }, %struct.anon { ptr @.str.12.684, i32 33 }, %struct.anon { ptr @.str.13.685, i32 34 }, %struct.anon { ptr @.str.14.686, i32 28 }, %struct.anon { ptr @.str.15.687, i32 36 }, %struct.anon { ptr @.str.16.688, i32 25 }, %struct.anon { ptr @.str.17.689, i32 23 }, %struct.anon { ptr @.str.18.690, i32 19 }, %struct.anon { ptr @.str.19.691, i32 22 }, %struct.anon { ptr @.str.20.692, i32 27 }, %struct.anon { ptr @.str.21.693, i32 30 }, %struct.anon { ptr @.str.22.694, i32 29 }, %struct.anon { ptr @.str.23.695, i32 37 }, %struct.anon { ptr @.str.24.696, i32 26 }, %struct.anon { ptr @.str.25.697, i32 21 }, %struct.anon { ptr @.str.26.698, i32 24 }], align 16
@.str.1.671 = private unnamed_addr constant [23 x i8] c"unknown keyword `%%%s'\00", align 1
@.str.2.672 = private unnamed_addr constant [49 x i8] c"`%%' must be followed by a keyword, `{', or `%%'\00", align 1
@.str.3.673 = private unnamed_addr constant [11 x i8] c"identifier\00", align 1
@.str.4.675 = private unnamed_addr constant [27 x i8] c"end of file inside comment\00", align 1
@.str.5.700 = private unnamed_addr constant [26 x i8] c"no text for token type %d\00", align 1
@.str.6.678 = private unnamed_addr constant [38 x i8] c"end of file inside literal code block\00", align 1
@.str.7.699 = private unnamed_addr constant [15 x i8] c"%s is too long\00", align 1
@.str.8.680 = private unnamed_addr constant [9 x i8] c"abstract\00", align 1
@.str.9.681 = private unnamed_addr constant [5 x i8] c"both\00", align 1
@.str.10.682 = private unnamed_addr constant [7 x i8] c"common\00", align 1
@.str.11.683 = private unnamed_addr constant [6 x i8] c"decls\00", align 1
@.str.12.684 = private unnamed_addr constant [4 x i8] c"end\00", align 1
@.str.13.685 = private unnamed_addr constant [5 x i8] c"enum\00", align 1
@.str.14.686 = private unnamed_addr constant [7 x i8] c"header\00", align 1
@.str.15.687 = private unnamed_addr constant [8 x i8] c"include\00", align 1
@.str.16.688 = private unnamed_addr constant [7 x i8] c"inline\00", align 1
@.str.17.689 = private unnamed_addr constant [9 x i8] c"nocreate\00", align 1
@.str.18.690 = private unnamed_addr constant [5 x i8] c"node\00", align 1
@.str.19.691 = private unnamed_addr constant [10 x i8] c"operation\00", align 1
@.str.20.692 = private unnamed_addr constant [7 x i8] c"option\00", align 1
@.str.21.693 = private unnamed_addr constant [7 x i8] c"outdir\00", align 1
@.str.22.694 = private unnamed_addr constant [7 x i8] c"output\00", align 1
@.str.23.695 = private unnamed_addr constant [9 x i8] c"readonly\00", align 1
@.str.24.696 = private unnamed_addr constant [6 x i8] c"split\00", align 1
@.str.25.697 = private unnamed_addr constant [8 x i8] c"typedef\00", align 1
@.str.26.698 = private unnamed_addr constant [8 x i8] c"virtual\00", align 1
@.str.27.674 = private unnamed_addr constant [32 x i8] c"invalid `%c' character in input\00", align 1
@.str.28.676 = private unnamed_addr constant [36 x i8] c"invalid `\\x%02X' character in input\00", align 1
@.str.29.679 = private unnamed_addr constant [26 x i8] c"end of file inside string\00", align 1
@.str.30.677 = private unnamed_addr constant [26 x i8] c"end of line inside string\00", align 1
@.str.701 = private unnamed_addr constant [16 x i8] c"%%literal %d %s\00", align 1
@.str.702 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.1.703 = private unnamed_addr constant [9 x i8] c"--output\00", align 1
@.str.2.704 = private unnamed_addr constant [9 x i8] c"--header\00", align 1
@.str.3.705 = private unnamed_addr constant [13 x i8] c"--output-dir\00", align 1
@.str.4.706 = private unnamed_addr constant [15 x i8] c"--skeleton-dir\00", align 1
@.str.5.707 = private unnamed_addr constant [12 x i8] c"--extension\00", align 1
@.str.6.708 = private unnamed_addr constant [9 x i8] c"--option\00", align 1
@.str.7.709 = private unnamed_addr constant [15 x i8] c"--force-create\00", align 1
@.str.8.710 = private unnamed_addr constant [12 x i8] c"--no-output\00", align 1
@.str.9.711 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.10.712 = private unnamed_addr constant [10 x i8] c"--version\00", align 1
@.str.11.713 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.12.714 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.13.716 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.14.717 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
@.str.15.718 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.16.720 = private unnamed_addr constant [39 x i8] c"TREECC 0.2.8 - Tree Compiler-Compiler\0A\00", align 1
@.str.17.721 = private unnamed_addr constant [60 x i8] c"Copyright (c) 2001, 2002 Southern Storm Software, Pty Ltd.\0A\00", align 1
@.str.19.722 = private unnamed_addr constant [31 x i8] c"Usage: %s [options] input ...\0A\00", align 1
@.str.20.723 = private unnamed_addr constant [28 x i8] c"    -o file, --output file\0A\00", align 1
@.str.21.724 = private unnamed_addr constant [42 x i8] c"        Set the name of the output file.\0A\00", align 1
@.str.22.725 = private unnamed_addr constant [28 x i8] c"    -h file, --header file\0A\00", align 1
@.str.23.726 = private unnamed_addr constant [49 x i8] c"        Set the name of the header output file.\0A\00", align 1
@.str.24.727 = private unnamed_addr constant [32 x i8] c"    -d dir,  --output-dir file\0A\00", align 1
@.str.25.728 = private unnamed_addr constant [52 x i8] c"        Set the name of the Java output directory.\0A\00", align 1
@.str.26.729 = private unnamed_addr constant [30 x i8] c"    -e ext,  --extension ext\0A\00", align 1
@.str.27.730 = private unnamed_addr constant [58 x i8] c"        Set the output file extension (default is \22.c\22).\0A\00", align 1
@.str.28.731 = private unnamed_addr constant [29 x i8] c"    -f,      --force-create\0A\00", align 1
@.str.29.732 = private unnamed_addr constant [55 x i8] c"        Force the creation of unchanged output files.\0A\00", align 1
@.str.30.733 = private unnamed_addr constant [27 x i8] c"    -O opt,  --option opt\0A\00", align 1
@.str.31.734 = private unnamed_addr constant [43 x i8] c"        Set a treecc source option value.\0A\00", align 1
@.str.32.735 = private unnamed_addr constant [12 x i8] c"    --help\0A\00", align 1
@.str.33.736 = private unnamed_addr constant [34 x i8] c"        Print this help message.\0A\00", align 1
@.str.34.737 = private unnamed_addr constant [24 x i8] c"    -v,      --version\0A\00", align 1
@.str.35.738 = private unnamed_addr constant [36 x i8] c"        Print the program version.\0A\00", align 1
@.str.40.715 = private unnamed_addr constant [37 x i8] c"%s: unknown option or invalid value\0A\00", align 1
@.str.41.719 = private unnamed_addr constant [11 x i8] c"yy_tree.tc\00", align 1
@str = private unnamed_addr constant [38 x i8] c"TREECC 0.2.8 - Tree Compiler-Compiler\00", align 1
@str.42 = private unnamed_addr constant [59 x i8] c"Copyright (c) 2001, 2002 Southern Storm Software, Pty Ltd.\00", align 1
@str.43 = private unnamed_addr constant [66 x i8] c"TREECC comes with ABSOLUTELY NO WARRANTY.  This is free software,\00", align 1
@str.44 = private unnamed_addr constant [62 x i8] c"and you are welcome to redistribute it under the terms of the\00", align 1
@str.45 = private unnamed_addr constant [71 x i8] c"GNU General Public License.  See the file COPYING for further details.\00", align 1
@str.46 = private unnamed_addr constant [65 x i8] c"Use the `--help' option to get help on the command-line options.\00", align 1
@.str.742 = private unnamed_addr constant [16 x i8] c"%%node %s %s %d\00", align 1
@.str.1.741 = private unnamed_addr constant [10 x i8] c"no_parent\00", align 1
@.str.2.745 = private unnamed_addr constant [35 x i8] c"node type `%s' is already declared\00", align 1
@.str.3.746 = private unnamed_addr constant [26 x i8] c"previous declaration here\00", align 1
@.str.4.751 = private unnamed_addr constant [31 x i8] c"node type `%s' is not declared\00", align 1
@.str.5.752 = private unnamed_addr constant [52 x i8] c"base node type `%s' must be declared with %%typedef\00", align 1
@.str.6.753 = private unnamed_addr constant [31 x i8] c"field type does not end in `*'\00", align 1
@.str.7.760 = private unnamed_addr constant [16 x i8] c"%%virtual %s %s\00", align 1
@.str.8.767 = private unnamed_addr constant [20 x i8] c"%%field %s %s %s %d\00", align 1
@.str.9.765 = private unnamed_addr constant [8 x i8] c"no_type\00", align 1
@.str.10.766 = private unnamed_addr constant [9 x i8] c"no_value\00", align 1
@.str.11.768 = private unnamed_addr constant [31 x i8] c"field `%s' is already declared\00", align 1
@.str.773 = private unnamed_addr constant [25 x i8] c"%%operation %s %s%s%s %d\00", align 1
@.str.1.771 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.2.772 = private unnamed_addr constant [3 x i8] c"::\00", align 1
@.str.3.775 = private unnamed_addr constant [17 x i8] c"%%param %s %s %d\00", align 1
@.str.4.774 = private unnamed_addr constant [8 x i8] c"no_name\00", align 1
@.str.5.776 = private unnamed_addr constant [10 x i8] c"%%case %s\00", align 1
@.str.6.777 = private unnamed_addr constant [13 x i8] c"%%case %s %s\00", align 1
@.str.7.780 = private unnamed_addr constant [28 x i8] c"operation `%s' has no cases\00", align 1
@.str.8.781 = private unnamed_addr constant [60 x i8] c"node type `%s' is handled multiple times for operation `%s'\00", align 1
@.str.9.782 = private unnamed_addr constant [40 x i8] c"multiple definitions for operation `%s'\00", align 1
@.str.10.783 = private unnamed_addr constant [22 x i8] c"first definition here\00", align 1
@.str.11.788 = private unnamed_addr constant [48 x i8] c"node type `%s' is not handled in operation `%s'\00", align 1
@.str.12.784 = private unnamed_addr constant [30 x i8] c"overlap between trigger types\00", align 1
@.str.13.786 = private unnamed_addr constant [2 x i8] c"?\00", align 1
@.str.14.787 = private unnamed_addr constant [41 x i8] c"case `%s' is missing from operation `%s'\00", align 1
@.str.15.785 = private unnamed_addr constant [3 x i8] c", \00", align 1
@OptionHandlers = internal unnamed_addr constant [33 x %struct.anon.78] [%struct.anon.78 { ptr @.str.795, ptr @TrackLinesOption, i32 1 }, %struct.anon.78 { ptr @.str.1.796, ptr @TrackLinesOption, i32 0 }, %struct.anon.78 { ptr @.str.2.797, ptr @NoSingletonsOption, i32 1 }, %struct.anon.78 { ptr @.str.3.798, ptr @NoSingletonsOption, i32 0 }, %struct.anon.78 { ptr @.str.4.799, ptr @ReentrantOption, i32 1 }, %struct.anon.78 { ptr @.str.5.800, ptr @ReentrantOption, i32 0 }, %struct.anon.78 { ptr @.str.6.801, ptr @ForceOption, i32 1 }, %struct.anon.78 { ptr @.str.7.802, ptr @ForceOption, i32 0 }, %struct.anon.78 { ptr @.str.8.803, ptr @VirtualFactoryOption, i32 1 }, %struct.anon.78 { ptr @.str.9.804, ptr @VirtualFactoryOption, i32 0 }, %struct.anon.78 { ptr @.str.10.805, ptr @AbstractFactoryOption, i32 1 }, %struct.anon.78 { ptr @.str.11.806, ptr @AbstractFactoryOption, i32 0 }, %struct.anon.78 { ptr @.str.12.807, ptr @KindInVtableOption, i32 1 }, %struct.anon.78 { ptr @.str.13.808, ptr @KindInVtableOption, i32 0 }, %struct.anon.78 { ptr @.str.14.809, ptr @PrefixOption, i32 0 }, %struct.anon.78 { ptr @.str.15.810, ptr @StateTypeOption, i32 0 }, %struct.anon.78 { ptr @.str.16.811, ptr @NamespaceOption, i32 0 }, %struct.anon.78 { ptr @.str.17.812, ptr @NamespaceOption, i32 0 }, %struct.anon.78 { ptr @.str.18.813, ptr @BaseOption, i32 0 }, %struct.anon.78 { ptr @.str.19.814, ptr @LangOption, i32 0 }, %struct.anon.78 { ptr @.str.20.815, ptr @BlockSizeOption, i32 0 }, %struct.anon.78 { ptr @.str.21.816, ptr @StripFilenamesOption, i32 1 }, %struct.anon.78 { ptr @.str.22.817, ptr @PrintLineNumberOption, i32 1 }, %struct.anon.78 { ptr @.str.23.818, ptr @PrintLineNumberOption, i32 0 }, %struct.anon.78 { ptr @.str.24.819, ptr @StripFilenamesOption, i32 0 }, %struct.anon.78 { ptr @.str.25.820, ptr @InternalAccessOption, i32 1 }, %struct.anon.78 { ptr @.str.26.821, ptr @InternalAccessOption, i32 0 }, %struct.anon.78 { ptr @.str.27.822, ptr @AllocatorOption, i32 1 }, %struct.anon.78 { ptr @.str.28.823, ptr @AllocatorOption, i32 0 }, %struct.anon.78 { ptr @.str.29.824, ptr @GCAllocatorOption, i32 1 }, %struct.anon.78 { ptr @.str.30.825, ptr @GCAllocatorOption, i32 0 }, %struct.anon.78 { ptr @.str.31.826, ptr @BaseTypeOption, i32 0 }, %struct.anon.78 zeroinitializer], align 16
@.str.795 = private unnamed_addr constant [12 x i8] c"track_lines\00", align 1
@.str.1.796 = private unnamed_addr constant [15 x i8] c"no_track_lines\00", align 1
@.str.2.797 = private unnamed_addr constant [14 x i8] c"no_singletons\00", align 1
@.str.3.798 = private unnamed_addr constant [11 x i8] c"singletons\00", align 1
@.str.4.799 = private unnamed_addr constant [10 x i8] c"reentrant\00", align 1
@.str.5.800 = private unnamed_addr constant [13 x i8] c"no_reentrant\00", align 1
@.str.6.801 = private unnamed_addr constant [6 x i8] c"force\00", align 1
@.str.7.802 = private unnamed_addr constant [9 x i8] c"no_force\00", align 1
@.str.8.803 = private unnamed_addr constant [16 x i8] c"virtual_factory\00", align 1
@.str.9.804 = private unnamed_addr constant [19 x i8] c"no_virtual_factory\00", align 1
@.str.10.805 = private unnamed_addr constant [17 x i8] c"abstract_factory\00", align 1
@.str.11.806 = private unnamed_addr constant [20 x i8] c"no_abstract_factory\00", align 1
@.str.12.807 = private unnamed_addr constant [15 x i8] c"kind_in_vtable\00", align 1
@.str.13.808 = private unnamed_addr constant [13 x i8] c"kind_in_node\00", align 1
@.str.14.809 = private unnamed_addr constant [7 x i8] c"prefix\00", align 1
@.str.15.810 = private unnamed_addr constant [11 x i8] c"state_type\00", align 1
@.str.16.811 = private unnamed_addr constant [10 x i8] c"namespace\00", align 1
@.str.17.812 = private unnamed_addr constant [8 x i8] c"package\00", align 1
@.str.18.813 = private unnamed_addr constant [5 x i8] c"base\00", align 1
@.str.19.814 = private unnamed_addr constant [5 x i8] c"lang\00", align 1
@.str.20.815 = private unnamed_addr constant [11 x i8] c"block_size\00", align 1
@.str.21.816 = private unnamed_addr constant [16 x i8] c"strip_filenames\00", align 1
@.str.22.817 = private unnamed_addr constant [12 x i8] c"print_lines\00", align 1
@.str.23.818 = private unnamed_addr constant [15 x i8] c"no_print_lines\00", align 1
@.str.24.819 = private unnamed_addr constant [19 x i8] c"no_strip_filenames\00", align 1
@.str.25.820 = private unnamed_addr constant [16 x i8] c"internal_access\00", align 1
@.str.26.821 = private unnamed_addr constant [14 x i8] c"public_access\00", align 1
@.str.27.822 = private unnamed_addr constant [10 x i8] c"allocator\00", align 1
@.str.28.823 = private unnamed_addr constant [13 x i8] c"no_allocator\00", align 1
@.str.29.824 = private unnamed_addr constant [13 x i8] c"gc_allocator\00", align 1
@.str.30.825 = private unnamed_addr constant [16 x i8] c"no_gc_allocator\00", align 1
@.str.31.826 = private unnamed_addr constant [10 x i8] c"base_type\00", align 1
@.str.32.827 = private unnamed_addr constant [2 x i8] c"c\00", align 1
@.str.33.828 = private unnamed_addr constant [2 x i8] c"C\00", align 1
@.str.34.829 = private unnamed_addr constant [4 x i8] c"c++\00", align 1
@.str.35.830 = private unnamed_addr constant [4 x i8] c"C++\00", align 1
@.str.36.831 = private unnamed_addr constant [5 x i8] c"java\00", align 1
@.str.37.832 = private unnamed_addr constant [5 x i8] c"Java\00", align 1
@.str.38.833 = private unnamed_addr constant [3 x i8] c"c#\00", align 1
@.str.39.834 = private unnamed_addr constant [3 x i8] c"C#\00", align 1
@.str.40.835 = private unnamed_addr constant [7 x i8] c"csharp\00", align 1
@.str.41.836 = private unnamed_addr constant [5 x i8] c"ruby\00", align 1
@.str.42.837 = private unnamed_addr constant [5 x i8] c"Ruby\00", align 1
@.str.43.838 = private unnamed_addr constant [4 x i8] c"php\00", align 1
@.str.44.839 = private unnamed_addr constant [4 x i8] c"PHP\00", align 1
@.str.853 = private unnamed_addr constant [34 x i8] c"literal definition block expected\00", align 1
@.str.1.880 = private unnamed_addr constant [25 x i8] c"header filename expected\00", align 1
@.str.2.881 = private unnamed_addr constant [25 x i8] c"output filename expected\00", align 1
@.str.3.887 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.4.888 = private unnamed_addr constant [17 x i8] c"cannot open \22%s\22\00", align 1
@.str.5.889 = private unnamed_addr constant [26 x i8] c"include filename expected\00", align 1
@.str.6.890 = private unnamed_addr constant [21 x i8] c"declaration expected\00", align 1
@.str.7.845 = private unnamed_addr constant [13 x i8] c"`,' expected\00", align 1
@.str.8.851 = private unnamed_addr constant [20 x i8] c"identifier expected\00", align 1
@.str.9.852 = private unnamed_addr constant [20 x i8] c"code block expected\00", align 1
@.str.10.842 = private unnamed_addr constant [31 x i8] c"operation `%s' is not declared\00", align 1
@.str.11.843 = private unnamed_addr constant [31 x i8] c"node type `%s' is not declared\00", align 1
@.str.12.844 = private unnamed_addr constant [19 x i8] c"type name expected\00", align 1
@.str.13.846 = private unnamed_addr constant [13 x i8] c"`)' expected\00", align 1
@.str.14.847 = private unnamed_addr constant [13 x i8] c"`(' expected\00", align 1
@.str.15.848 = private unnamed_addr constant [43 x i8] c"incorrect number of triggers for operation\00", align 1
@.str.16.849 = private unnamed_addr constant [24 x i8] c"operation declared here\00", align 1
@.str.17.850 = private unnamed_addr constant [42 x i8] c"node type `%s' does not inherit from `%s'\00", align 1
@.str.18.854 = private unnamed_addr constant [31 x i8] c"literal code constant expected\00", align 1
@.str.19.855 = private unnamed_addr constant [61 x i8] c"default values can only be specified for `%%nocreate' fields\00", align 1
@.str.20.857 = private unnamed_addr constant [20 x i8] c"field name expected\00", align 1
@.str.21.856 = private unnamed_addr constant [27 x i8] c"field declaration expected\00", align 1
@.str.22.858 = private unnamed_addr constant [13 x i8] c"`;' expected\00", align 1
@.str.23.859 = private unnamed_addr constant [32 x i8] c"field definition block expected\00", align 1
@.str.24.898 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.25.897 = private unnamed_addr constant [2 x i8] c"&\00", align 1
@.str.26.896 = private unnamed_addr constant [3 x i8] c"[]\00", align 1
@.str.27.865 = private unnamed_addr constant [13 x i8] c"`]' expected\00", align 1
@.str.28.860 = private unnamed_addr constant [47 x i8] c"`virtual' and `inline' cannot be used together\00", align 1
@.str.29.862 = private unnamed_addr constant [24 x i8] c"operation name expected\00", align 1
@.str.30.861 = private unnamed_addr constant [31 x i8] c"operation return type expected\00", align 1
@.str.31.863 = private unnamed_addr constant [43 x i8] c"C# requires that a class name be specified\00", align 1
@.str.32.864 = private unnamed_addr constant [48 x i8] c"C# requires different class and operation names\00", align 1
@.str.33.866 = private unnamed_addr constant [31 x i8] c"parameter declaration expected\00", align 1
@.str.34.867 = private unnamed_addr constant [5 x i8] c"void\00", align 1
@.str.35.868 = private unnamed_addr constant [33 x i8] c"`%s' is not a valid trigger type\00", align 1
@.str.36.869 = private unnamed_addr constant [23 x i8] c"default value expected\00", align 1
@.str.37.870 = private unnamed_addr constant [23 x i8] c"default value required\00", align 1
@.str.38.872 = private unnamed_addr constant [52 x i8] c"virtual operations must have at least one parameter\00", align 1
@.str.39.871 = private unnamed_addr constant [53 x i8] c"the first parameter of a virtual must be the trigger\00", align 1
@.str.40.873 = private unnamed_addr constant [63 x i8] c"cannot use enumerated types as triggers for virtual operations\00", align 1
@.str.41.874 = private unnamed_addr constant [35 x i8] c"operation `%s' is already declared\00", align 1
@.str.42.875 = private unnamed_addr constant [26 x i8] c"previous declaration here\00", align 1
@.str.43.895 = private unnamed_addr constant [30 x i8] c"trigger types must end in `*'\00", align 1
@.str.44.876 = private unnamed_addr constant [21 x i8] c"option name expected\00", align 1
@.str.45.877 = private unnamed_addr constant [30 x i8] c"identifier or string expected\00", align 1
@.str.46.878 = private unnamed_addr constant [15 x i8] c"%%option %s %s\00", align 1
@.str.47.879 = private unnamed_addr constant [12 x i8] c"%%option %s\00", align 1
@.str.48.891 = private unnamed_addr constant [20 x i8] c"unknown option `%s'\00", align 1
@.str.49.892 = private unnamed_addr constant [30 x i8] c"invalid value for option `%s'\00", align 1
@.str.50.893 = private unnamed_addr constant [29 x i8] c"option `%s' requires a value\00", align 1
@.str.51.894 = private unnamed_addr constant [34 x i8] c"option `%s' does not take a value\00", align 1
@.str.52.882 = private unnamed_addr constant [30 x i8] c"enumerated type name expected\00", align 1
@.str.53.883 = private unnamed_addr constant [13 x i8] c"`=' expected\00", align 1
@.str.54.884 = private unnamed_addr constant [13 x i8] c"`{' expected\00", align 1
@.str.55.885 = private unnamed_addr constant [45 x i8] c"no values were specified for the enumeration\00", align 1
@.str.56.886 = private unnamed_addr constant [13 x i8] c"`}' expected\00", align 1
@switch.table.TreeCCParse = private unnamed_addr constant [3 x i32] [i32 1, i32 2, i32 4], align 4
@switch.table.TreeCCParse.57 = private unnamed_addr constant [4 x ptr] [ptr @.str.48.891, ptr @.str.49.892, ptr @.str.50.893, ptr @.str.51.894], align 8
@.str.901 = private unnamed_addr constant [55 x i8] c"treecc: internal error - could not find skeleton \22%s\22\0A\00", align 1
@.str.1.902 = private unnamed_addr constant [12 x i8] c"YYNODESTATE\00", align 1
@.str.905 = private unnamed_addr constant [9 x i8] c"c_skel.c\00", align 1
@TreeCCSkel_c_skel_c = internal constant [6587 x i8] c"/*\0A * treecc node allocation routines for C.\0A *\0A * Copyright (C) 2001  Southern Storm Software, Pty Ltd.\0A *\0A * This program is free software; you can redistribute it and/or modify\0A * it under the terms of the GNU General Public License as published by\0A * the Free Software Foundation; either version 2 of the License, or\0A * (at your option) any later version.\0A *\0A * This program is distributed in the hope that it will be useful,\0A * but WITHOUT ANY WARRANTY; without even the implied warranty of\0A * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A * GNU General Public License for more details.\0A *\0A * You should have received a copy of the GNU General Public License\0A * along with this program; if not, write to the Free Software\0A * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\0A *\0A * As a special exception, when this file is copied by treecc into\0A * a treecc output file, you may use that output file without restriction.\0A */\0A\0A#include <stdlib.h>\0A\0A#ifndef YYNODESTATE_BLKSIZ\0A#define\09YYNODESTATE_BLKSIZ\092048\0A#endif\0A\0A/*\0A * Types used by the allocation routines.\0A */\0Astruct YYNODESTATE_block\0A{\0A\09char data__[YYNODESTATE_BLKSIZ];\0A\09struct YYNODESTATE_block *next__;\0A\0A};\0Astruct YYNODESTATE_push\0A{\0A\09struct YYNODESTATE_push *next__;\0A\09struct YYNODESTATE_block *saved_block__;\0A\09int saved_used__;\0A};\0A\0A/*\0A * The fixed global state to use for non-reentrant allocation.\0A */\0A#ifndef YYNODESTATE_REENTRANT\0Astatic YYNODESTATE fixed_state__;\0A#endif\0A\0A/*\0A * Some macro magic to determine the default alignment\0A * on this machine.  This will compile down to a constant.\0A */\0A#define\09YYNODESTATE_ALIGN_CHECK_TYPE(type,name)\09\\\0A\09struct _YYNODESTATE_align_##name { \\\0A\09\09char pad; \\\0A\09\09type field; \\\0A\09}\0A#define\09YYNODESTATE_ALIGN_FOR_TYPE(type)\09\\\0A\09((unsigned)(&(((struct _YYNODESTATE_align_##type *)0)->field)))\0A#define\09YYNODESTATE_ALIGN_MAX(a,b)\09\\\0A\09((a) > (b) ? (a) : (b))\0A#define\09YYNODESTATE_ALIGN_MAX3(a,b,c) \\\0A\09(YYNODESTATE_ALIGN_MAX((a), YYNODESTATE_ALIGN_MAX((b), (c))))\0AYYNODESTATE_ALIGN_CHECK_TYPE(int, int);\0AYYNODESTATE_ALIGN_CHECK_TYPE(long, long);\0A#if defined(WIN32) && !defined(__CYGWIN__)\0AYYNODESTATE_ALIGN_CHECK_TYPE(__int64, long_long);\0A#else\0AYYNODESTATE_ALIGN_CHECK_TYPE(long long, long_long);\0A#endif\0AYYNODESTATE_ALIGN_CHECK_TYPE(void *, void_p);\0AYYNODESTATE_ALIGN_CHECK_TYPE(float, float);\0AYYNODESTATE_ALIGN_CHECK_TYPE(double, double);\0A#define\09YYNODESTATE_ALIGNMENT\09\\\0A\09YYNODESTATE_ALIGN_MAX( \\\0A\09\09\09YYNODESTATE_ALIGN_MAX3\09\\\0A\09\09\09(YYNODESTATE_ALIGN_FOR_TYPE(int), \\\0A\09\09     YYNODESTATE_ALIGN_FOR_TYPE(long), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(long_long)), \\\0A  \09     YYNODESTATE_ALIGN_MAX3 \\\0A\09\09 \09(YYNODESTATE_ALIGN_FOR_TYPE(void_p), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(float), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(double)))\0A\0A/*\0A * Initialize the node allocation pool.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodeinit(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodeinit()\0A{\0A\09YYNODESTATE *state__ = &fixed_state__;\0A#endif\0A\09state__->blocks__ = 0;\0A\09state__->push_stack__ = 0;\0A\09state__->used__ = 0;\0A}\0A\0A/*\0A * Allocate a block of memory.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid *yynodealloc(state__, size__)\0AYYNODESTATE *state__;\0Aunsigned int size__;\0A{\0A#else\0Avoid *yynodealloc(size__)\0Aunsigned int size__;\0A{\0A\09YYNODESTATE *state__ = &fixed_state__;\0A#endif\0A\09struct YYNODESTATE_block *block__;\0A\09void *result__;\0A\0A\09/* Round the size to the next alignment boundary */\0A\09size__ = (size__ + YYNODESTATE_ALIGNMENT - 1) &\0A\09\09\09\09~(YYNODESTATE_ALIGNMENT - 1);\0A\0A\09/* Do we need to allocate a new block? */\0A\09block__ = state__->blocks__;\0A\09if(!block__ || (state__->used__ + size__) > YYNODESTATE_BLKSIZ)\0A\09{\0A\09\09if(size__ > YYNODESTATE_BLKSIZ)\0A\09\09{\0A\09\09\09/* The allocation is too big for the node pool */\0A\09\09\09return (void *)0;\0A\09\09}\0A\09\09block__ = (struct YYNODESTATE_block *)\0A\09\09\09\09\09\09malloc(sizeof(struct YYNODESTATE_block));\0A\09\09if(!block__)\0A\09\09{\0A\09\09\09/* The system is out of memory.  The programmer can\0A\09\09\09   supply the \22yynodefailed\22 function to report the\0A\09\09\09   out of memory state and/or abort the program */\0A#ifdef YYNODESTATE_REENTRANT\0A\09\09\09yynodefailed(state__);\0A#else\0A\09\09\09yynodefailed();\0A#endif\0A\09\09\09return (void *)0;\0A\09\09}\0A\09\09block__->next__ = state__->blocks__;\0A\09\09state__->blocks__ = block__;\0A\09\09state__->used__ = 0;\0A\09}\0A\0A\09/* Allocate the memory and return it */\0A\09result__ = (void *)(block__->data__ + state__->used__);\0A\09state__->used__ += size__;\0A\09return result__;\0A}\0A\0A/*\0A * Push the node allocation state.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Aint yynodepush(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Aint yynodepush()\0A{\0A\09YYNODESTATE *state__ = &fixed_state__;\0A#endif\0A\09struct YYNODESTATE_block *saved_block__;\0A\09int saved_used__;\0A\09struct YYNODESTATE_push *push_item__;\0A\0A\09/* Save the current state of the node allocation pool */\0A\09saved_block__ = state__->blocks__;\0A\09saved_used__ = state__->used__;\0A\0A\09/* Allocate space for a push item */\0A#ifdef YYNODESTATE_REENTRANT\0A\09push_item__ = (struct YYNODESTATE_push *)\0A\09\09\09yynodealloc(state__, sizeof(struct YYNODESTATE_push));\0A#else\0A\09push_item__ = (struct YYNODESTATE_push *)\0A\09\09\09yynodealloc(sizeof(struct YYNODESTATE_push));\0A#endif\0A\09if(!push_item__)\0A\09{\0A\09\09return 0;\0A\09}\0A\0A\09/* Copy the saved information to the push item */\0A\09push_item__->saved_block__ = saved_block__;\0A\09push_item__->saved_used__ = saved_used__;\0A\0A\09/* Add the push item to the push stack */\0A\09push_item__->next__ = state__->push_stack__;\0A\09state__->push_stack__ = push_item__;\0A\09return 1;\0A}\0A\0A/*\0A * Pop the node allocation state.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodepop(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodepop()\0A{\0A\09YYNODESTATE *state__ = &fixed_state__;\0A#endif\0A\09struct YYNODESTATE_push *push_item__;\0A\09struct YYNODESTATE_block *saved_block__;\0A\09struct YYNODESTATE_block *temp_block__;\0A\0A\09/* Pop the top of the push stack */\0A\09push_item__ = state__->push_stack__;\0A\09if(push_item__ == 0)\0A\09{\0A\09\09saved_block__ = 0;\0A\09\09state__->used__ = 0;\0A\09}\0A\09else\0A\09{\0A\09\09saved_block__ = push_item__->saved_block__;\0A\09\09state__->used__ = push_item__->saved_used__;\0A\09\09state__->push_stack__ = push_item__->next__;\0A\09}\0A\0A\09/* Free unnecessary blocks */\0A\09while(state__->blocks__ != saved_block__)\0A\09{\0A\09\09temp_block__ = state__->blocks__;\0A\09\09state__->blocks__ = temp_block__->next__;\0A\09\09free(temp_block__);\0A\09}\0A}\0A\0A/*\0A * Clear the node allocation pool completely.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodeclear(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodeclear()\0A{\0A\09YYNODESTATE *state__ = &fixed_state__;\0A#endif\0A\09struct YYNODESTATE_block *temp_block__;\0A\09while(state__->blocks__ != 0)\0A\09{\0A\09\09temp_block__ = state__->blocks__;\0A\09\09state__->blocks__ = temp_block__->next__;\0A\09\09free(temp_block__);\0A\09}\0A\09state__->push_stack__ = 0;\0A\09state__->used__ = 0;\0A}\0A\00", align 16
@.str.1.906 = private unnamed_addr constant [9 x i8] c"c_skel.h\00", align 1
@TreeCCSkel_c_skel_h = internal constant [124 x i8] c"typedef struct\0A{\0A\09struct YYNODESTATE_block *blocks__;\0A\09struct YYNODESTATE_push *push_stack__;\0A\09int used__;\0A\0A} YYNODESTATE;\0A\00", align 16
@.str.2.907 = private unnamed_addr constant [12 x i8] c"cpp_skel.cc\00", align 1
@TreeCCSkel_cpp_skel_cc = internal constant [6242 x i8] c"/*\0A * treecc node allocation routines for C++.\0A *\0A * Copyright (C) 2001  Southern Storm Software, Pty Ltd.\0A *\0A * This program is free software; you can redistribute it and/or modify\0A * it under the terms of the GNU General Public License as published by\0A * the Free Software Foundation; either version 2 of the License, or\0A * (at your option) any later version.\0A *\0A * This program is distributed in the hope that it will be useful,\0A * but WITHOUT ANY WARRANTY; without even the implied warranty of\0A * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A * GNU General Public License for more details.\0A *\0A * You should have received a copy of the GNU General Public License\0A * along with this program; if not, write to the Free Software\0A * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\0A *\0A * As a special exception, when this file is copied by treecc into\0A * a treecc output file, you may use that output file without restriction.\0A */\0A\0A#ifndef YYNODESTATE_BLKSIZ\0A#define\09YYNODESTATE_BLKSIZ\092048\0A#endif\0A\0A/*\0A * Types used by the allocation routines.\0A */\0Astruct YYNODESTATE_block\0A{\0A\09char data__[YYNODESTATE_BLKSIZ];\0A\09struct YYNODESTATE_block *next__;\0A\0A};\0Astruct YYNODESTATE_push\0A{\0A\09struct YYNODESTATE_push *next__;\0A\09struct YYNODESTATE_block *saved_block__;\0A\09int saved_used__;\0A};\0A\0A/*\0A * Initialize the singleton instance.\0A */\0A#ifndef YYNODESTATE_REENTRANT\0AYYNODESTATE *YYNODESTATE::state__ = 0;\0A#endif\0A\0A/*\0A * Some macro magic to determine the default alignment\0A * on this machine.  This will compile down to a constant.\0A */\0A#define\09YYNODESTATE_ALIGN_CHECK_TYPE(type,name)\09\\\0A\09struct _YYNODESTATE_align_##name { \\\0A\09\09char pad; \\\0A\09\09type field; \\\0A\09}\0A#define\09YYNODESTATE_ALIGN_FOR_TYPE(type)\09\\\0A\09((unsigned)(&(((struct _YYNODESTATE_align_##type *)0)->field)))\0A#define\09YYNODESTATE_ALIGN_MAX(a,b)\09\\\0A\09((a) > (b) ? (a) : (b))\0A#define\09YYNODESTATE_ALIGN_MAX3(a,b,c) \\\0A\09(YYNODESTATE_ALIGN_MAX((a), YYNODESTATE_ALIGN_MAX((b), (c))))\0AYYNODESTATE_ALIGN_CHECK_TYPE(int, int);\0AYYNODESTATE_ALIGN_CHECK_TYPE(long, long);\0A#if defined(WIN32) && !defined(__CYGWIN__)\0AYYNODESTATE_ALIGN_CHECK_TYPE(__int64, long_long);\0A#else\0AYYNODESTATE_ALIGN_CHECK_TYPE(long long, long_long);\0A#endif\0AYYNODESTATE_ALIGN_CHECK_TYPE(void *, void_p);\0AYYNODESTATE_ALIGN_CHECK_TYPE(float, float);\0AYYNODESTATE_ALIGN_CHECK_TYPE(double, double);\0A#define\09YYNODESTATE_ALIGNMENT\09\\\0A\09YYNODESTATE_ALIGN_MAX( \\\0A\09\09\09YYNODESTATE_ALIGN_MAX3\09\\\0A\09\09\09(YYNODESTATE_ALIGN_FOR_TYPE(int), \\\0A\09\09     YYNODESTATE_ALIGN_FOR_TYPE(long), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(long_long)), \\\0A  \09     YYNODESTATE_ALIGN_MAX3 \\\0A\09\09 \09(YYNODESTATE_ALIGN_FOR_TYPE(void_p), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(float), \\\0A\09\09\09 YYNODESTATE_ALIGN_FOR_TYPE(double)))\0A\0A/*\0A * Constructor for YYNODESTATE.\0A */\0AYYNODESTATE::YYNODESTATE()\0A{\0A\09/* Initialize the allocation state */\0A\09blocks__ = 0;\0A\09push_stack__ = 0;\0A\09used__ = 0;\0A\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* Register this object as the singleton instance */\0A\09if(!state__)\0A\09{\0A\09\09state__ = this;\0A\09}\0A#endif\0A}\0A\0A/*\0A * Destructor for YYNODESTATE.\0A */\0AYYNODESTATE::~YYNODESTATE()\0A{\0A\09/* Free all node memory */\0A\09clear();\0A\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* We are no longer the singleton instance */\0A\09if(state__ == this)\0A\09{\0A\09\09state__ = 0;\0A\09}\0A#endif\0A}\0A\0A#ifdef YYNODESTATE_USE_ALLOCATOR\0A\0A/*\0A * Allocate a block of memory.\0A */\0Avoid *YYNODESTATE::alloc(size_t size__)\0A{\0A\09struct YYNODESTATE_block *block__;\0A\09void *result__;\0A\0A\09/* Round the size to the next alignment boundary */\0A\09size__ = (size__ + YYNODESTATE_ALIGNMENT - 1) &\0A\09\09\09\09~(YYNODESTATE_ALIGNMENT - 1);\0A\0A\09/* Do we need to allocate a new block? */\0A\09block__ = blocks__;\0A\09if(!block__ || (used__ + size__) > YYNODESTATE_BLKSIZ)\0A\09{\0A\09\09if(size__ > YYNODESTATE_BLKSIZ)\0A\09\09{\0A\09\09\09/* The allocation is too big for the node pool */\0A\09\09\09return (void *)0;\0A\09\09}\0A\09\09block__ = new YYNODESTATE_block;\0A\09\09if(!block__)\0A\09\09{\0A\09\09\09/* The system is out of memory.  The programmer can\0A\09\09\09   inherit the \22failed\22 method to report the\0A\09\09\09   out of memory state and/or abort the program */\0A\09\09\09failed();\0A\09\09\09return (void *)0;\0A\09\09}\0A\09\09block__->next__ = blocks__;\0A\09\09blocks__ = block__;\0A\09\09used__ = 0;\0A\09}\0A\0A\09/* Allocate the memory and return it */\0A\09result__ = (void *)(block__->data__ + used__);\0A\09used__ += size__;\0A\09return result__;\0A}\0A\0A/*\0A * Deallocate a block of memory.\0A */\0Avoid YYNODESTATE::dealloc(void *ptr__, size_t size__)\0A{\0A\09/* Nothing to do for this type of node allocator */\0A}\0A\0A/*\0A * Push the node allocation state.\0A */\0Aint YYNODESTATE::push()\0A{\0A\09struct YYNODESTATE_block *saved_block__;\0A\09int saved_used__;\0A\09struct YYNODESTATE_push *push_item__;\0A\0A\09/* Save the current state of the node allocation pool */\0A\09saved_block__ = blocks__;\0A\09saved_used__ = used__;\0A\0A\09/* Allocate space for a push item */\0A\09push_item__ = (struct YYNODESTATE_push *)\0A\09\09\09alloc(sizeof(struct YYNODESTATE_push));\0A\09if(!push_item__)\0A\09{\0A\09\09return 0;\0A\09}\0A\0A\09/* Copy the saved information to the push item */\0A\09push_item__->saved_block__ = saved_block__;\0A\09push_item__->saved_used__ = saved_used__;\0A\0A\09/* Add the push item to the push stack */\0A\09push_item__->next__ = push_stack__;\0A\09push_stack__ = push_item__;\0A\09return 1;\0A}\0A\0A/*\0A * Pop the node allocation state.\0A */\0Avoid YYNODESTATE::pop()\0A{\0A\09struct YYNODESTATE_push *push_item__;\0A\09struct YYNODESTATE_block *saved_block__;\0A\09struct YYNODESTATE_block *temp_block__;\0A\0A\09/* Pop the top of the push stack */\0A\09push_item__ = push_stack__;\0A\09if(push_item__ == 0)\0A\09{\0A\09\09saved_block__ = 0;\0A\09\09used__ = 0;\0A\09}\0A\09else\0A\09{\0A\09\09saved_block__ = push_item__->saved_block__;\0A\09\09used__ = push_item__->saved_used__;\0A\09\09push_stack__ = push_item__->next__;\0A\09}\0A\0A\09/* Free unnecessary blocks */\0A\09while(blocks__ != saved_block__)\0A\09{\0A\09\09temp_block__ = blocks__;\0A\09\09blocks__ = temp_block__->next__;\0A\09\09delete temp_block__;\0A\09}\0A}\0A\0A/*\0A * Clear the node allocation pool completely.\0A */\0Avoid YYNODESTATE::clear()\0A{\0A\09struct YYNODESTATE_block *temp_block__;\0A\09while(blocks__ != 0)\0A\09{\0A\09\09temp_block__ = blocks__;\0A\09\09blocks__ = temp_block__->next__;\0A\09\09delete temp_block__;\0A\09}\0A\09push_stack__ = 0;\0A\09used__ = 0;\0A}\0A\0A#endif /* YYNODESTATE_USE_ALLOCATOR */\0A\0A/*\0A * Default implementation of functions which may be overridden.\0A */\0Avoid YYNODESTATE::failed()\0A{\0A}\0A\0A#ifdef YYNODESTATE_TRACK_LINES\0A\0Achar *YYNODESTATE::currFilename()\0A{\0A\09return (char *)0;\0A}\0A\0Along YYNODESTATE::currLinenum()\0A{\0A\09return 0;\0A}\0A\0A#endif\0A\00", align 16
@.str.3.908 = private unnamed_addr constant [11 x i8] c"cpp_skel.h\00", align 1
@TreeCCSkel_cpp_skel_h = internal constant [101 x i8] c"private:\0A\0A\09struct YYNODESTATE_block *blocks__;\0A\09struct YYNODESTATE_push *push_stack__;\0A\09int used__;\0A\00", align 16
@.str.4.909 = private unnamed_addr constant [12 x i8] c"c_gc_skel.h\00", align 1
@TreeCCSkel_c_gc_skel_h = internal constant [48 x i8] c"typedef struct\0A{\0A\09int dummy__;\0A\0A} YYNODESTATE;\0A\00", align 16
@.str.5.910 = private unnamed_addr constant [12 x i8] c"c_gc_skel.c\00", align 1
@TreeCCSkel_c_gc_skel_c = internal constant [2022 x i8] c"/*\0A * treecc node allocation routines for C.\0A *\0A * Copyright (C) 2003  Southern Storm Software, Pty Ltd.\0A *\0A * This program is free software; you can redistribute it and/or modify\0A * it under the terms of the GNU General Public License as published by\0A * the Free Software Foundation; either version 2 of the License, or\0A * (at your option) any later version.\0A *\0A * This program is distributed in the hope that it will be useful,\0A * but WITHOUT ANY WARRANTY; without even the implied warranty of\0A * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A * GNU General Public License for more details.\0A *\0A * You should have received a copy of the GNU General Public License\0A * along with this program; if not, write to the Free Software\0A * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\0A *\0A * As a special exception, when this file is copied by treecc into\0A * a treecc output file, you may use that output file without restriction.\0A */\0A\0A#include <stdlib.h>\0A#include <gc.h>\0A\0A/*\0A * Initialize the node allocation pool.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodeinit(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodeinit()\0A{\0A#endif\0A\09GC_INIT();\0A\09GC_init();\0A}\0A\0A/*\0A * Allocate a block of memory.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid *yynodealloc(state__, size__)\0AYYNODESTATE *state__;\0Aunsigned int size__;\0A{\0A#else\0Avoid *yynodealloc(size__)\0Aunsigned int size__;\0A{\0A#endif\0A\09return (void *)GC_MALLOC((size_t)size__);\0A}\0A\0A/*\0A * Push the node allocation state.  Not used in the GC version.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Aint yynodepush(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Aint yynodepush()\0A{\0A#endif\0A\09return 1;\0A}\0A\0A/*\0A * Pop the node allocation state.  Not used in the GC version.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodepop(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodepop()\0A{\0A#endif\0A}\0A\0A/*\0A * Clear the node allocation pool completely.  Not used in the GC version.\0A */\0A#ifdef YYNODESTATE_REENTRANT\0Avoid yynodeclear(state__)\0AYYNODESTATE *state__;\0A{\0A#else\0Avoid yynodeclear()\0A{\0A#endif\0A}\0A\00", align 16
@.str.6.911 = private unnamed_addr constant [14 x i8] c"cpp_gc_skel.h\00", align 1
@TreeCCSkel_cpp_gc_skel_h = internal constant [2 x i8] c"\0A\00", align 1
@.str.7.912 = private unnamed_addr constant [15 x i8] c"cpp_gc_skel.cc\00", align 1
@TreeCCSkel_cpp_gc_skel_cc = internal constant [2540 x i8] c"/*\0A * treecc node allocation routines for C++.\0A *\0A * Copyright (C) 2003  Southern Storm Software, Pty Ltd.\0A *\0A * This program is free software; you can redistribute it and/or modify\0A * it under the terms of the GNU General Public License as published by\0A * the Free Software Foundation; either version 2 of the License, or\0A * (at your option) any later version.\0A *\0A * This program is distributed in the hope that it will be useful,\0A * but WITHOUT ANY WARRANTY; without even the implied warranty of\0A * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A * GNU General Public License for more details.\0A *\0A * You should have received a copy of the GNU General Public License\0A * along with this program; if not, write to the Free Software\0A * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\0A *\0A * As a special exception, when this file is copied by treecc into\0A * a treecc output file, you may use that output file without restriction.\0A */\0A\0A#include <gc.h>\0A\0A/*\0A * Initialize the singleton instance.\0A */\0A#ifndef YYNODESTATE_REENTRANT\0AYYNODESTATE *YYNODESTATE::state__ = 0;\0A#endif\0A\0A/*\0A * Constructor for YYNODESTATE.\0A */\0AYYNODESTATE::YYNODESTATE()\0A{\0A\09/* Initialize the garbage collector */\0A\09GC_INIT();\0A\09GC_init();\0A\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* Register this object as the singleton instance */\0A\09if(!state__)\0A\09{\0A\09\09state__ = this;\0A\09}\0A#endif\0A}\0A\0A/*\0A * Destructor for YYNODESTATE.\0A */\0AYYNODESTATE::~YYNODESTATE()\0A{\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* We are no longer the singleton instance */\0A\09if(state__ == this)\0A\09{\0A\09\09state__ = 0;\0A\09}\0A#endif\0A}\0A\0A#ifdef YYNODESTATE_USE_ALLOCATOR\0A\0A/*\0A * Allocate a block of memory.\0A */\0Avoid *YYNODESTATE::alloc(size_t size__)\0A{\0A\09return (void *)GC_MALLOC((size_t)size__);\0A}\0A\0A/*\0A * Deallocate a block of memory.\0A */\0Avoid YYNODESTATE::dealloc(void *ptr__, size_t size__)\0A{\0A\09/* Nothing to do for this type of node allocator */\0A}\0A\0A/*\0A * Push the node allocation state.\0A */\0Aint YYNODESTATE::push()\0A{\0A\09/* Not used with the garbage collector */\0A\09return 1;\0A}\0A\0A/*\0A * Pop the node allocation state.\0A */\0Avoid YYNODESTATE::pop()\0A{\0A\09/* Not used with the garbage collector */\0A}\0A\0A/*\0A * Clear the node allocation pool completely.\0A */\0Avoid YYNODESTATE::clear()\0A{\0A\09/* Not used with the garbage collector */\0A}\0A\0A#endif /* YYNODESTATE_USE_ALLOCATOR */\0A\0A/*\0A * Default implementation of functions which may be overridden.\0A */\0Avoid YYNODESTATE::failed()\0A{\0A}\0A\0A#ifdef YYNODESTATE_TRACK_LINES\0A\0Achar *YYNODESTATE::currFilename()\0A{\0A\09return (char *)0;\0A}\0A\0Along YYNODESTATE::currLinenum()\0A{\0A\09return 0;\0A}\0A\0A#endif\0A\00", align 16
@TreeCCSkelFiles = internal constant [17 x ptr] [ptr @.str.905, ptr @TreeCCSkel_c_skel_c, ptr @.str.1.906, ptr @TreeCCSkel_c_skel_h, ptr @.str.2.907, ptr @TreeCCSkel_cpp_skel_cc, ptr @.str.3.908, ptr @TreeCCSkel_cpp_skel_h, ptr @.str.4.909, ptr @TreeCCSkel_c_gc_skel_h, ptr @.str.5.910, ptr @TreeCCSkel_c_gc_skel_c, ptr @.str.6.911, ptr @TreeCCSkel_cpp_gc_skel_h, ptr @.str.7.912, ptr @TreeCCSkel_cpp_gc_skel_cc, ptr null], align 16
@.str.921 = private unnamed_addr constant [6 x i8] c".java\00", align 1
@.str.1.928 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.2.929 = private unnamed_addr constant [43 x i8] c"%s: read-only file has different contents\0A\00", align 1
@.str.3.930 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.948 = private unnamed_addr constant [46 x i8] c"/* %s.  Generated automatically by treecc */\0A\00", align 1
@.str.5.949 = private unnamed_addr constant [14 x i8] c"#ifndef __%s_\00", align 1
@.str.6.950 = private unnamed_addr constant [14 x i8] c"#define __%s_\00", align 1
@.str.7.953 = private unnamed_addr constant [8 x i8] c"#endif\0A\00", align 1
@.str.8.943 = private unnamed_addr constant [16 x i8] c"#line %ld \22%s\22\0A\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @TreeCCContextCreate(ptr noundef %0) #0 {
  %2 = tail call noalias dereferenceable_or_null(8304) ptr @calloc(i64 noundef 1, i64 noundef 8304) #28
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %5

4:                                                ; preds = %1
  tail call void @TreeCCOutOfMemory(ptr noundef %0) #29
  br label %5

5:                                                ; preds = %4, %1
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %2, i64 0, i32 2
  store ptr %0, ptr %6, align 8, !tbaa !7
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %2, i64 0, i32 8
  store i16 2562, ptr %7, align 8
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %2, i64 0, i32 9
  store ptr @.str, ptr %8, align 8, !tbaa !13
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %2, i64 0, i32 10
  store ptr @.str.1, ptr %9, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %2, i64 0, i32 12
  store i32 1, ptr %10, align 8, !tbaa !15
  ret ptr %2
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCContextDestroy(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !16
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !17
  tail call void @TreeCCStreamDestroy(ptr noundef nonnull %6) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !20

10:                                               ; preds = %5, %1
  br label %11

11:                                               ; preds = %21, %10
  %12 = phi i64 [ %22, %21 ], [ 0, %10 ]
  %13 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %16, %11
  %17 = phi ptr [ %19, %16 ], [ %14, %11 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %17, i64 0, i32 12
  %19 = load ptr, ptr %18, align 8, !tbaa !23
  tail call void @TreeCCNodeFree(ptr noundef nonnull %17) #29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %16, !llvm.loop !25

21:                                               ; preds = %16, %11
  %22 = add nuw nsw i64 %12, 1
  %23 = icmp eq i64 %22, 512
  br i1 %23, label %24, label %11, !llvm.loop !26

24:                                               ; preds = %34, %21
  %25 = phi i64 [ %35, %34 ], [ 0, %21 ]
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %29, %24
  %30 = phi ptr [ %32, %29 ], [ %27, %24 ]
  %31 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %30, i64 0, i32 9
  %32 = load ptr, ptr %31, align 8, !tbaa !27
  tail call void @TreeCCOperationFree(ptr noundef nonnull %30) #29
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %29, !llvm.loop !29

34:                                               ; preds = %29, %24
  %35 = add nuw nsw i64 %25, 1
  %36 = icmp eq i64 %35, 512
  br i1 %36, label %37, label %24, !llvm.loop !30

37:                                               ; preds = %34
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCError(ptr noundef %0, ptr nocapture noundef readonly %1, ...) #3 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !33
  call fastcc void @ReportError(ptr noundef %7, i64 noundef %9, ptr noundef %1, ptr noundef nonnull %3) #31
  call void @llvm.va_end(ptr nonnull %3)
  %10 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 7
  store i32 1, ptr %10, align 8, !tbaa !34
  br label %12

11:                                               ; preds = %2
  call fastcc void @ReportError(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %3) #31
  call void @llvm.va_end(ptr nonnull %3)
  br label %12

12:                                               ; preds = %11, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #5

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @ReportError(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #3 {
  %5 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !22
  store ptr %8, ptr @TreeCCErrorFile, align 8, !tbaa !22
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  %11 = icmp eq ptr %0, null
  br i1 %11, label %38, label %12

12:                                               ; preds = %9
  %13 = load i32, ptr @TreeCCErrorStripPath, align 4, !tbaa !35
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  %16 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %17 = trunc i64 %16 to i32
  %18 = and i64 %16, 4294967295
  %19 = tail call i32 @llvm.smin.i32(i32 %17, i32 0)
  br label %20

20:                                               ; preds = %24, %15
  %21 = phi i64 [ %25, %24 ], [ %18, %15 ]
  %22 = trunc i64 %21 to i32
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %20
  %25 = add nsw i64 %21, -1
  %26 = getelementptr inbounds i8, ptr %0, i64 %25
  %27 = load i8, ptr %26, align 1, !tbaa !36
  switch i8 %27, label %20 [
    i8 47, label %28
    i8 92, label %28
  ], !llvm.loop !37

28:                                               ; preds = %24, %24, %20
  %29 = phi i32 [ %22, %24 ], [ %22, %24 ], [ %19, %20 ]
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i8, ptr %0, i64 %30
  br label %32

32:                                               ; preds = %28, %12
  %33 = phi ptr [ %31, %28 ], [ %0, %12 ]
  %34 = tail call i32 @fputs(ptr noundef %33, ptr noundef %10) #31
  %35 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  %36 = tail call i32 @putc(i32 noundef 58, ptr noundef %35) #31
  %37 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  br label %38

38:                                               ; preds = %32, %9
  %39 = phi ptr [ %37, %32 ], [ %10, %9 ]
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %39, ptr noundef nonnull @.str.3, i64 noundef %1) #31
  %41 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  %42 = tail call i32 @vfprintf(ptr noundef %41, ptr noundef %2, ptr noundef %3) #31
  %43 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  %44 = tail call i32 @putc(i32 noundef 10, ptr noundef %43) #31
  %45 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !22
  %46 = tail call i32 @fflush(ptr noundef %45) #31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCErrorOnLine(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ...) #3 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #30
  call void @llvm.va_start(ptr nonnull %5)
  call fastcc void @ReportError(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %5) #31
  call void @llvm.va_end(ptr nonnull %5)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 7
  store i32 1, ptr %8, align 8, !tbaa !34
  br label %9

9:                                                ; preds = %7, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #30
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @TreeCCAbort(ptr noundef readonly %0, ptr nocapture noundef readonly %1, ...) #9 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !33
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %7, %5 ], [ null, %2 ]
  %12 = phi i64 [ %9, %5 ], [ 0, %2 ]
  call fastcc void @ReportError(ptr noundef %11, i64 noundef %12, ptr noundef %1, ptr noundef nonnull %3) #31
  call void @llvm.va_end(ptr nonnull %3)
  call void @exit(i32 noundef 1) #33
  unreachable
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCDebug(i64 noundef %0, ptr nocapture noundef readonly %1, ...) #3 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #30
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %0) #31
  %5 = load ptr, ptr @stdout, align 8, !tbaa !22
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3) #31
  %7 = load ptr, ptr @stdout, align 8, !tbaa !22
  %8 = call i32 @putc(i32 noundef 10, ptr noundef %7) #31
  call void @llvm.va_end(ptr nonnull %3)
  %9 = load ptr, ptr @stdout, align 8, !tbaa !22
  %10 = call i32 @fflush(ptr noundef %9) #31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @TreeCCOutOfMemory(ptr noundef readonly %0) #9 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !22
  %9 = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %8) #34
  %10 = load ptr, ptr @stderr, align 8, !tbaa !22
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.1.5, ptr noundef %10) #34
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = load ptr, ptr @stderr, align 8, !tbaa !22
  %14 = tail call i32 @fputs(ptr noundef nonnull @.str.2.6, ptr noundef %13) #34
  tail call void @exit(i32 noundef 1) #33
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !39
  switch i32 %3, label %10 [
    i32 0, label %4
    i32 1, label %5
    i32 2, label %6
    i32 3, label %7
    i32 4, label %8
    i32 5, label %9
  ]

4:                                                ; preds = %1
  tail call void @TreeCCGenerateC(ptr noundef nonnull %0) #29
  br label %10

5:                                                ; preds = %1
  tail call void @TreeCCGenerateCPP(ptr noundef nonnull %0) #29
  br label %10

6:                                                ; preds = %1
  tail call void @TreeCCGenerateJava(ptr noundef nonnull %0) #29
  br label %10

7:                                                ; preds = %1
  tail call void @TreeCCGenerateCSharp(ptr noundef nonnull %0) #29
  br label %10

8:                                                ; preds = %1
  tail call void @TreeCCGenerateRuby(ptr noundef nonnull %0) #29
  br label %10

9:                                                ; preds = %1
  tail call void @TreeCCGeneratePHP(ptr noundef nonnull %0) #29
  br label %10

10:                                               ; preds = %9, %8, %7, %6, %5, %4, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateNonVirtuals(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %4 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 12
  %7 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 13
  br label %8

8:                                                ; preds = %87, %2
  %9 = phi i64 [ 0, %2 ], [ %88, %87 ]
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %83, %8
  %14 = phi ptr [ %85, %83 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4, !tbaa !39
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !41
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call ptr @TreeCCStreamGetJava(ptr noundef nonnull %0, ptr noundef nonnull %24) #29
  br label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %14, align 8, !tbaa !42
  %30 = tail call ptr @TreeCCStreamGetJava(ptr noundef nonnull %0, ptr noundef %29) #29
  br label %34

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !43
  br label %34

34:                                               ; preds = %31, %28, %26
  %35 = phi ptr [ %27, %26 ], [ %30, %28 ], [ %33, %31 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !44
  tail call void %36(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %14) #29
  %37 = load i32, ptr %15, align 8, !tbaa !40
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %51, %44 ], [ %42, %40 ]
  %46 = phi i32 [ %48, %44 ], [ 1, %40 ]
  %47 = load ptr, ptr %4, align 8, !tbaa !46
  tail call void %47(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %45, i32 noundef %46) #29
  %48 = add nuw nsw i32 %46, 1
  %49 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 3
  store i32 %46, ptr %49, align 8, !tbaa !47
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !22
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !49

53:                                               ; preds = %44, %40, %34
  %54 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !50
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, ptr %15, align 8, !tbaa !40
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  tail call fastcc void @AssignTriggerPosns(ptr noundef %0, ptr noundef nonnull %14) #31
  %62 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !51
  %64 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !52
  tail call fastcc void @GenerateSplitMultiSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %63, i32 noundef 0, i32 noundef 1, ptr noundef %65, i32 noundef 0) #31
  br label %81

66:                                               ; preds = %57, %53
  %67 = load ptr, ptr %5, align 8, !tbaa !53
  tail call void %67(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #29
  %68 = load i32, ptr %54, align 4, !tbaa !50
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !54
  %73 = tail call fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %72, i32 noundef 0) #31
  br label %79

74:                                               ; preds = %66
  tail call fastcc void @AssignTriggerPosns(ptr noundef %0, ptr noundef nonnull %14) #31
  %75 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !51
  %77 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !52
  tail call fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %76, i32 noundef 0, i32 noundef 1, ptr noundef %78, i32 noundef 0) #31
  br label %79

79:                                               ; preds = %74, %70
  %80 = load ptr, ptr %6, align 8, !tbaa !55
  tail call void %80(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #29
  br label %81

81:                                               ; preds = %79, %61
  %82 = load ptr, ptr %7, align 8, !tbaa !56
  tail call void %82(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #29
  br label %83

83:                                               ; preds = %81, %13
  %84 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !22
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %13, !llvm.loop !57

87:                                               ; preds = %83, %8
  %88 = add nuw nsw i64 %9, 1
  %89 = icmp eq i64 %88, 512
  br i1 %89, label %90, label %8, !llvm.loop !58

90:                                               ; preds = %87
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @AssignTriggerPosns(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %19, %2
  %7 = phi ptr [ %21, %19 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !59
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !61
  %15 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %14) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @TreeCCNodeAssignPositions(ptr noundef nonnull %15) #29
  br label %19

19:                                               ; preds = %17, %12, %6
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !62

23:                                               ; preds = %19, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateSplitMultiSwitch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [64 x i8], align 16
  %11 = icmp eq ptr %7, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %18, %9
  %13 = phi ptr [ %20, %18 ], [ %7, %9 ]
  %14 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !64

22:                                               ; preds = %18, %12, %9
  %23 = phi ptr [ null, %9 ], [ null, %18 ], [ %13, %12 ]
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  %26 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %25) #29
  %27 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !50
  %29 = add nsw i32 %28, -1
  %30 = icmp eq i32 %29, %8
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  tail call fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %23, i32 noundef %8, ptr noundef %26) #31
  br label %32

32:                                               ; preds = %31, %22
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !65
  tail call void %36(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %5) #29
  br label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !53
  tail call void %39(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #29
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = lshr i32 %42, 3
  %44 = and i32 %43, 1
  %45 = load ptr, ptr %23, align 8, !tbaa !67
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !68
  tail call void %49(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %45, i32 noundef 0, i32 noundef %44) #29
  br label %73

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #30
  %51 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  %53 = icmp ne ptr %52, null
  %54 = icmp ne ptr %52, %23
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %56, %50
  %57 = phi ptr [ %64, %56 ], [ %52, %50 ]
  %58 = phi i32 [ %62, %56 ], [ 0, %50 ]
  %59 = load ptr, ptr %57, align 8, !tbaa !67
  %60 = icmp eq ptr %59, null
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %58, %61
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %57, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp ne ptr %64, null
  %66 = icmp ne ptr %64, %23
  %67 = and i1 %65, %66
  br i1 %67, label %56, label %68, !llvm.loop !69

68:                                               ; preds = %56, %50
  %69 = phi i32 [ 0, %50 ], [ %62, %56 ]
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %69) #29
  %71 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !68
  call void %72(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %44) #29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #30
  br label %73

73:                                               ; preds = %68, %47
  call fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %8, ptr noundef %26) #31
  %74 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !70
  call void %75(ptr noundef %0, ptr noundef %1, i32 noundef 0) #29
  %76 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !55
  call void %77(ptr noundef %0, ptr noundef %1, ptr noundef %3) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %23, %6
  %12 = phi ptr [ %30, %23 ], [ %9, %6 ]
  %13 = phi i32 [ %28, %23 ], [ 1, %6 ]
  %14 = phi i32 [ %24, %23 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !59
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %23, label %19

19:                                               ; preds = %11
  %20 = icmp eq i32 %14, %5
  br i1 %20, label %50, label %21

21:                                               ; preds = %19
  %22 = add nsw i32 %14, 1
  br label %23

23:                                               ; preds = %21, %11
  %24 = phi i32 [ %22, %21 ], [ %14, %11 ]
  %25 = load ptr, ptr %12, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %13, %27
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %12, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !71

32:                                               ; preds = %23, %6
  %33 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !40
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !72
  %40 = add nsw i32 %5, -1
  tail call void %39(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %40) #29
  br label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !73
  %44 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %4, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !47
  %46 = add nsw i32 %5, -1
  tail call void %43(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %45, i32 noundef %46) #29
  br label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %4, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !74
  br label %126

50:                                               ; preds = %19
  %.lcssa3 = phi ptr [ %12, %19 ]
  %.lcssa2 = phi i32 [ %13, %19 ]
  %51 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa3, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !61
  %53 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %52) #29
  %54 = getelementptr inbounds %struct._tagTreeCCNode, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !66
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 1
  %58 = load ptr, ptr %.lcssa3, align 8, !tbaa !67
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !68
  tail call void %62(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %58, i32 noundef %5, i32 noundef %57) #29
  br label %67

63:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #30
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %.lcssa2) #29
  %65 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !68
  call void %66(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %5, i32 noundef %57) #29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #30
  br label %67

67:                                               ; preds = %63, %60
  %68 = shl i32 256, %5
  call void @TreeCCNodeClearMarking(ptr noundef %0, i32 noundef %68) #29
  %69 = icmp sgt i32 %5, 0
  %70 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %71 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %72 = add nsw i32 %5, 1
  %73 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  br label %74

74:                                               ; preds = %106, %67
  %75 = phi ptr [ %4, %67 ], [ %103, %106 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !22
  %77 = icmp ne ptr %76, null
  %78 = and i1 %77, %69
  br i1 %78, label %79, label %88

79:                                               ; preds = %79, %74
  %80 = phi ptr [ %84, %79 ], [ %76, %74 ]
  %81 = phi i32 [ %82, %79 ], [ 0, %74 ]
  %82 = add nuw nsw i32 %81, 1
  %83 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %80, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = icmp ne ptr %84, null
  %86 = icmp slt i32 %82, %5
  %87 = select i1 %85, i1 %86, i1 false
  br i1 %87, label %79, label %88, !llvm.loop !75

88:                                               ; preds = %79, %74
  %89 = phi ptr [ %76, %74 ], [ %84, %79 ]
  %90 = phi i1 [ %77, %74 ], [ %85, %79 ]
  br i1 %90, label %91, label %101

91:                                               ; preds = %88
  %92 = load ptr, ptr %89, align 8, !tbaa !76
  %93 = call fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %92, i32 noundef %68, i32 noundef %5) #31, !range !78
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %101

95:                                               ; preds = %91
  %96 = load ptr, ptr %70, align 8, !tbaa !7
  %97 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %75, i64 0, i32 4
  %98 = load ptr, ptr %97, align 8, !tbaa !79
  %99 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %75, i64 0, i32 5
  %100 = load i64, ptr %99, align 8, !tbaa !80
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %96, ptr noundef %98, i64 noundef %100, ptr noundef nonnull @.str.1.8) #29
  br label %101

101:                                              ; preds = %95, %91, %88
  %102 = load ptr, ptr %71, align 8, !tbaa !81
  call void %102(ptr noundef %0, ptr noundef %1, i32 noundef %5) #29
  %103 = call fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %75, i32 noundef %72) #31
  %104 = load ptr, ptr %73, align 8, !tbaa !82
  call void %104(ptr noundef %0, ptr noundef %1, i32 noundef %5) #29
  %105 = icmp eq ptr %103, null
  br i1 %105, label %123, label %106

106:                                              ; preds = %101
  br i1 %69, label %107, label %74, !llvm.loop !83

107:                                              ; preds = %106
  %.lcssa1 = phi ptr [ %103, %106 ]
  %108 = load ptr, ptr %.lcssa1, align 8, !tbaa !22
  %109 = load ptr, ptr %4, align 8, !tbaa !22
  %110 = load ptr, ptr %109, align 8, !tbaa !76
  %111 = load ptr, ptr %108, align 8, !tbaa !76
  %112 = icmp eq ptr %110, %111
  br i1 %112, label %113, label %123

113:                                              ; preds = %113, %107
  %114 = phi ptr [ %119, %113 ], [ %109, %107 ]
  %115 = phi ptr [ %118, %113 ], [ %108, %107 ]
  %116 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %114, i64 0, i32 1
  %117 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %115, i64 0, i32 1
  %118 = load ptr, ptr %117, align 8, !tbaa !22
  %119 = load ptr, ptr %116, align 8, !tbaa !22
  %120 = load ptr, ptr %119, align 8, !tbaa !76
  %121 = load ptr, ptr %118, align 8, !tbaa !76
  %122 = icmp eq ptr %120, %121
  br i1 %122, label %113, label %123

123:                                              ; preds = %113, %107, %101
  %.lcssa = phi ptr [ %.lcssa1, %113 ], [ %.lcssa1, %107 ], [ %103, %101 ]
  %124 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %125 = load ptr, ptr %124, align 8, !tbaa !70
  call void %125(ptr noundef %0, ptr noundef %1, i32 noundef %5) #29
  br label %126

126:                                              ; preds = %123, %47
  %127 = phi ptr [ %.lcssa, %123 ], [ %49, %47 ]
  ret ptr %127
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [64 x i8], align 16
  %11 = icmp eq ptr %7, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %18, %9
  %13 = phi ptr [ %20, %18 ], [ %7, %9 ]
  %14 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !59
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !63
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !84

22:                                               ; preds = %18, %9
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !40
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = sext i32 %5 to i64
  %28 = getelementptr inbounds ptr, ptr %4, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  br i1 %26, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !72
  %33 = add nsw i32 %8, -1
  tail call void %32(ptr noundef %0, ptr noundef %1, ptr noundef %29, i32 noundef %33) #29
  br label %79

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !73
  %37 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %29, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !47
  %39 = add nsw i32 %8, -1
  tail call void %36(ptr noundef %0, ptr noundef %1, ptr noundef %29, i32 noundef %38, i32 noundef %39) #29
  br label %79

40:                                               ; preds = %12
  %.lcssa = phi ptr [ %13, %12 ]
  %41 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !61
  %43 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %42) #29
  %44 = getelementptr inbounds %struct._tagTreeCCNode, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !66
  %46 = lshr i32 %45, 3
  %47 = and i32 %46, 1
  %48 = load ptr, ptr %.lcssa, align 8, !tbaa !67
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !68
  tail call void %52(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %48, i32 noundef %8, i32 noundef %47) #29
  br label %76

53:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #30
  %54 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %55, %.lcssa
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %59, %53
  %60 = phi ptr [ %67, %59 ], [ %55, %53 ]
  %61 = phi i32 [ %65, %59 ], [ 0, %53 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !67
  %63 = icmp eq ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %61, %64
  %66 = getelementptr inbounds %struct._tagTreeCCParam, ptr %60, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %67, %.lcssa
  %70 = and i1 %68, %69
  br i1 %70, label %59, label %71, !llvm.loop !85

71:                                               ; preds = %59, %53
  %72 = phi i32 [ 0, %53 ], [ %65, %59 ]
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %72) #29
  %74 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !68
  call void %75(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %8, i32 noundef %47) #29
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #30
  br label %76

76:                                               ; preds = %71, %50
  call fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %.lcssa, i32 noundef %8, ptr noundef %43) #31
  %77 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !70
  call void %78(ptr noundef %0, ptr noundef %1, i32 noundef %8) #29
  br label %79

79:                                               ; preds = %76, %34, %30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !86
  tail call void %17(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %8) #29
  %18 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !81
  tail call void %19(ptr noundef %0, ptr noundef %1, i32 noundef %8) #29
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !87
  %22 = mul nsw i32 %21, %6
  %23 = add nsw i32 %22, %5
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !88
  %26 = mul nsw i32 %25, %6
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = add nsw i32 %8, 1
  tail call fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %23, i32 noundef %26, ptr noundef %28, i32 noundef %29) #31
  %30 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !82
  tail call void %31(ptr noundef %0, ptr noundef %1, i32 noundef %8) #29
  br label %32

32:                                               ; preds = %15, %10
  %33 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %37) #31
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !89

41:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !66
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = or i32 %8, %4
  store i32 %12, ptr %7, align 8, !tbaa !66
  %13 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !86
  tail call void %14(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %5) #29
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  %20 = tail call fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %19, i32 noundef %4, i32 noundef %5) #31, !range !78
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !22
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !90

24:                                               ; preds = %18, %11, %6
  %25 = phi i32 [ 0, %6 ], [ 1, %11 ], [ 1, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !87
  %18 = mul nsw i32 %17, %6
  %19 = add nsw i32 %18, %5
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !88
  %22 = mul nsw i32 %21, %6
  %23 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !63
  %25 = add nsw i32 %8, 1
  tail call fastcc void @GenerateSplitMultiSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %19, i32 noundef %22, ptr noundef %24, i32 noundef %25) #31
  br label %26

26:                                               ; preds = %15, %10
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %33, %30 ], [ %28, %26 ]
  tail call fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %31) #31
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %30, !llvm.loop !91

35:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !66
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !86
  tail call void %16(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 0) #29
  %17 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !81
  tail call void %18(ptr noundef %0, ptr noundef %1, i32 noundef 0) #29
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !87
  %21 = mul nsw i32 %20, %6
  %22 = add nsw i32 %21, %5
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !50
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %27, label %43

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !40
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds ptr, ptr %4, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  br i1 %31, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !72
  tail call void %37(ptr noundef %0, ptr noundef %1, ptr noundef %34, i32 noundef 0) #29
  br label %49

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !73
  %41 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %34, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !47
  tail call void %40(ptr noundef %0, ptr noundef %1, ptr noundef %34, i32 noundef %42, i32 noundef 0) #29
  br label %49

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !92
  %46 = sext i32 %22 to i64
  %47 = getelementptr inbounds ptr, ptr %4, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  tail call void %45(ptr noundef %0, ptr noundef %1, ptr noundef %48, i32 noundef %22, i32 noundef 0) #29
  br label %49

49:                                               ; preds = %43, %38, %35
  %50 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !82
  tail call void %51(ptr noundef %0, ptr noundef %1, i32 noundef 0) #29
  br label %52

52:                                               ; preds = %49, %9
  %53 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %56, %52
  %57 = phi ptr [ %59, %56 ], [ %54, %52 ]
  tail call fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %57) #31
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !93

61:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateC(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %23, label %5

5:                                                ; preds = %19, %1
  %6 = phi ptr [ %21, %19 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %5
  tail call void @TreeCCStreamHeaderTop(ptr noundef nonnull %6) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.42) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.43) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.44) #29
  br label %13

12:                                               ; preds = %5
  tail call void @TreeCCStreamSourceTop(ptr noundef nonnull %6) #29
  br label %13

13:                                               ; preds = %12, %11
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.11) #29
  %14 = load i8, ptr %7, align 4
  %15 = and i8 %14, 8
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %19, label %17

17:                                               ; preds = %13
  %18 = and i8 %14, -17
  store i8 %18, ptr %7, align 4
  br label %19

19:                                               ; preds = %17, %13
  %20 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %5, !llvm.loop !94

23:                                               ; preds = %19, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DefineNodeNumbers) #29
  %24 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %25, ptr noundef nonnull @.str.11) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DeclareTypeDefs) #29
  %26 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %26, ptr noundef nonnull @.str.11) #29
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 4096
  %30 = icmp eq i16 %29, 0
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %32 = load ptr, ptr %31, align 8, !tbaa !96
  %33 = icmp eq ptr %32, null
  br i1 %30, label %38, label %34

34:                                               ; preds = %23
  br i1 %33, label %36, label %35

35:                                               ; preds = %34
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef nonnull %32, ptr noundef nonnull @.str.1.12) #29
  br label %42

36:                                               ; preds = %34
  %37 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %37, ptr noundef nonnull @.str.1.12) #29
  br label %42

38:                                               ; preds = %23
  br i1 %33, label %40, label %39

39:                                               ; preds = %38
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef nonnull %32, ptr noundef nonnull @.str.2.13) #29
  br label %42

40:                                               ; preds = %38
  %41 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %41, ptr noundef nonnull @.str.2.13) #29
  br label %42

42:                                               ; preds = %40, %39, %36, %35
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareCreateFuncs) #29
  %43 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %43, ptr noundef nonnull @.str.11) #29
  tail call void @TreeCCOperationVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareNonVirtuals) #29
  %44 = load ptr, ptr %24, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %44, ptr noundef nonnull @.str.11) #29
  %45 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %46 = load ptr, ptr %45, align 8, !tbaa !96
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load ptr, ptr %24, align 8, !tbaa !95
  br label %50

50:                                               ; preds = %48, %42
  %51 = phi ptr [ %49, %48 ], [ %46, %42 ]
  %52 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %53 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.83, ptr noundef %53) #29
  %54 = load i16, ptr %27, align 8
  %55 = and i16 %54, 128
  %56 = icmp eq i16 %55, 0
  %57 = load ptr, ptr %52, align 8, !tbaa !13
  %58 = select i1 %56, ptr @.str.85, ptr @.str.84
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull %58, ptr noundef %57) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %59 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.87, ptr noundef %59) #29
  %60 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.88, ptr noundef %60) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %61 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.89, ptr noundef %61) #29
  %62 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.90, ptr noundef %62) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %63 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.91, ptr noundef %63) #29
  %64 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.92, ptr noundef %64) #29
  %65 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.93, ptr noundef %65) #29
  %66 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.94, ptr noundef %66) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %67 = load i16, ptr %27, align 8
  %68 = and i16 %67, 2
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %99, label %70

70:                                               ; preds = %50
  %71 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.95, ptr noundef %71) #29
  %72 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.96, ptr noundef %72) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %73 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.97, ptr noundef %73) #29
  %74 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.98, ptr noundef %74) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %75 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.99, ptr noundef %75) #29
  %76 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.100, ptr noundef %76) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.101) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %77 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.102, ptr noundef %77) #29
  %78 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.103, ptr noundef %78) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.104) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %79 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.105, ptr noundef %79) #29
  %80 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.106, ptr noundef %80) #29
  %81 = load i16, ptr %27, align 8
  %82 = and i16 %81, 8
  %83 = icmp eq i16 %82, 0
  br i1 %83, label %87, label %84

84:                                               ; preds = %70
  %85 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %86) #29
  br label %88

87:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %88

88:                                               ; preds = %87, %84
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %89 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.107, ptr noundef %89) #29
  %90 = load i16, ptr %27, align 8
  %91 = and i16 %90, 8
  %92 = icmp eq i16 %91, 0
  br i1 %92, label %96, label %93

93:                                               ; preds = %88
  %94 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %95 = load ptr, ptr %94, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %95) #29
  br label %97

96:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %97

97:                                               ; preds = %96, %93
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %98 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.108, ptr noundef %98) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  br label %99

99:                                               ; preds = %97, %50
  %100 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.109, ptr noundef %100) #29
  %101 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.110, ptr noundef %101) #29
  %102 = load i16, ptr %27, align 8
  %103 = and i16 %102, 8
  %104 = icmp eq i16 %103, 0
  br i1 %104, label %108, label %105

105:                                              ; preds = %99
  %106 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %107 = load ptr, ptr %106, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %107) #29
  br label %109

108:                                              ; preds = %99
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %109

109:                                              ; preds = %108, %105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %110 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.111, ptr noundef %110) #29
  %111 = load i16, ptr %27, align 8
  %112 = and i16 %111, 8
  %113 = icmp eq i16 %112, 0
  br i1 %113, label %117, label %114

114:                                              ; preds = %109
  %115 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %116 = load ptr, ptr %115, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.112, ptr noundef %116) #29
  br label %117

117:                                              ; preds = %114, %109
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.113) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %118 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.114, ptr noundef %118) #29
  %119 = load i16, ptr %27, align 8
  %120 = and i16 %119, 8
  %121 = icmp eq i16 %120, 0
  br i1 %121, label %125, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %124 = load ptr, ptr %123, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %124) #29
  br label %126

125:                                              ; preds = %117
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %126

126:                                              ; preds = %125, %122
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %127 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.115, ptr noundef %127) #29
  %128 = load i16, ptr %27, align 8
  %129 = and i16 %128, 8
  %130 = icmp eq i16 %129, 0
  br i1 %130, label %134, label %131

131:                                              ; preds = %126
  %132 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %133 = load ptr, ptr %132, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %133) #29
  br label %135

134:                                              ; preds = %126
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %135

135:                                              ; preds = %134, %131
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %136 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.116, ptr noundef %136) #29
  %137 = load i16, ptr %27, align 8
  %138 = and i16 %137, 8
  %139 = icmp eq i16 %138, 0
  br i1 %139, label %143, label %140

140:                                              ; preds = %135
  %141 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %142 = load ptr, ptr %141, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %142) #29
  br label %144

143:                                              ; preds = %135
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %144

144:                                              ; preds = %143, %140
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %145 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.117, ptr noundef %145) #29
  %146 = load i16, ptr %27, align 8
  %147 = and i16 %146, 8
  %148 = icmp eq i16 %147, 0
  br i1 %148, label %152, label %149

149:                                              ; preds = %144
  %150 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %151 = load ptr, ptr %150, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.81, ptr noundef %151) #29
  br label %153

152:                                              ; preds = %144
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.11.14) #29
  br label %153

153:                                              ; preds = %152, %149
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.34) #29
  %154 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.118, ptr noundef %154) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %51, ptr noundef nonnull @.str.86) #29
  %155 = load i16, ptr %27, align 8
  %156 = and i16 %155, 2048
  %157 = icmp eq i16 %156, 0
  br i1 %157, label %166, label %158

158:                                              ; preds = %153
  %159 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %160 = load ptr, ptr %159, align 8, !tbaa !97
  %161 = icmp eq ptr %160, null
  br i1 %161, label %163, label %162

162:                                              ; preds = %158
  tail call fastcc void @WriteSourceSkeleton(ptr noundef nonnull %0, ptr noundef nonnull %160) #31
  br label %166

163:                                              ; preds = %158
  %164 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %165 = load ptr, ptr %164, align 8, !tbaa !98
  tail call fastcc void @WriteSourceSkeleton(ptr noundef nonnull %0, ptr noundef %165) #31
  br label %166

166:                                              ; preds = %163, %162, %153
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DefineVtables) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsC) #29
  %167 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %168 = load ptr, ptr %167, align 8, !tbaa !97
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %173

170:                                              ; preds = %166
  %171 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %172 = load ptr, ptr %171, align 8, !tbaa !98
  br label %173

173:                                              ; preds = %170, %166
  %174 = phi ptr [ %172, %170 ], [ %168, %166 ]
  %175 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.57, ptr noundef %175) #29
  %176 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.58, ptr noundef %176) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.53) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.56) #29
  %177 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.150, ptr noundef %177) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.13) #29
  %178 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.151, ptr noundef %178) #29
  %179 = load ptr, ptr %52, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.152, ptr noundef %179) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.153) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.154) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.155) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.156) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.157) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.40) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %174, ptr noundef nonnull @.str.41) #29
  %180 = load ptr, ptr %2, align 8, !tbaa !22
  %181 = icmp eq ptr %180, null
  br i1 %181, label %198, label %182

182:                                              ; preds = %194, %173
  %183 = phi ptr [ %196, %194 ], [ %180, %173 ]
  %184 = getelementptr inbounds %struct._tagTreeCCStream, ptr %183, i64 0, i32 7
  %185 = load i8, ptr %184, align 4
  %186 = and i8 %185, 24
  %187 = icmp eq i8 %186, 8
  br i1 %187, label %188, label %189

188:                                              ; preds = %182
  tail call void @TreeCCStreamClear(ptr noundef nonnull %183) #29
  br label %194

189:                                              ; preds = %182
  %190 = and i8 %185, 4
  %191 = icmp eq i8 %190, 0
  br i1 %191, label %193, label %192

192:                                              ; preds = %189
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %183, ptr noundef nonnull @.str.42) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %183, ptr noundef nonnull @.str.158) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %183, ptr noundef nonnull @.str.44) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %183, ptr noundef nonnull @.str.11) #29
  tail call void @TreeCCStreamHeaderBottom(ptr noundef nonnull %183) #29
  br label %194

193:                                              ; preds = %189
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %183) #29
  br label %194

194:                                              ; preds = %193, %192, %188
  %195 = getelementptr inbounds %struct._tagTreeCCStream, ptr %183, i64 0, i32 10
  %196 = load ptr, ptr %195, align 8, !tbaa !22
  %197 = icmp eq ptr %196, null
  br i1 %197, label %198, label %182, !llvm.loop !99

198:                                              ; preds = %194, %173
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineNodeNumbers(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !102
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef %11, i32 noundef %13) #29
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.46) #29
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %23, %9
  %14 = phi ptr [ %26, %23 ], [ %11, %9 ]
  %15 = phi ptr [ %24, %23 ], [ @.str.11, %9 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !66
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47, ptr noundef %15, ptr noundef %22) #29
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ @.str.48, %20 ], [ %15, %13 ]
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !103

28:                                               ; preds = %23, %9
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef %30) #29
  br label %37

31:                                               ; preds = %2
  %32 = and i32 %6, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef %36, ptr noundef %36) #29
  br label %37

37:                                               ; preds = %34, %31, %28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %83

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.51, ptr noundef %11) #29
  %12 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef %12) #29
  %13 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53) #29
  %18 = load i16, ptr %13, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i16 [ %18, %17 ], [ %14, %9 ]
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.54) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.55) #29
  br label %24

24:                                               ; preds = %23, %19
  tail call fastcc void @DeclareFields(ptr noundef %4, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.56) #29
  %25 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57, ptr noundef %25) #29
  %26 = load ptr, ptr %1, align 8, !tbaa !104
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.58, ptr noundef %30) #29
  br label %32

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.59) #29
  br label %32

32:                                               ; preds = %31, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.60) #29
  tail call fastcc void @DeclareVirtuals(ptr noundef %4, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.56) #29
  %33 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.61, ptr noundef %33, ptr noundef %33) #29
  %34 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %79, label %37

37:                                               ; preds = %75, %32
  %38 = phi ptr [ %77, %75 ], [ %35, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.66, ptr noundef %39) #29
  %40 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %51, %37
  %44 = phi ptr [ %54, %51 ], [ %41, %37 ]
  %45 = phi i32 [ %52, %51 ], [ 1, %37 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.67, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.68, i32 noundef %45) #29
  %50 = add nsw i32 %45, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %45, %48 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !107

56:                                               ; preds = %51, %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.69) #29
  %57 = load ptr, ptr %10, align 8, !tbaa !101
  %58 = load ptr, ptr %38, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.70, ptr noundef %57, ptr noundef %58) #29
  %59 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.71, ptr noundef %59) #29
  %60 = load ptr, ptr %40, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %70, %56
  %63 = phi ptr [ %73, %70 ], [ %60, %56 ]
  %64 = phi i32 [ %71, %70 ], [ 1, %56 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !67
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.72, ptr noundef nonnull %65) #29
  br label %70

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.73, i32 noundef %64) #29
  %69 = add nsw i32 %64, 1
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %64, %67 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct._tagTreeCCParam, ptr %63, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !22
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %62, !llvm.loop !108

75:                                               ; preds = %70, %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.74) #29
  %76 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %38, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !22
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %37, !llvm.loop !109

79:                                               ; preds = %75, %32
  %80 = tail call fastcc i32 @DeclareVirtualImpls(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #31, !range !78
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11) #29
  br label %83

83:                                               ; preds = %82, %79, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareCreateFuncs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %1, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !110

18:                                               ; preds = %13, %9
  %.lcssa = phi ptr [ %10, %13 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.80, ptr noundef %20, ptr noundef %22) #29
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.81, ptr noundef %29) #29
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ 1, %27 ], [ 0, %18 ]
  %32 = tail call fastcc i32 @CreateParams(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %31) #31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.14) #29
  br label %35

35:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.34) #29
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareNonVirtuals(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.82, ptr noundef %11, ptr noundef %12) #29
  %13 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %34, label %16

16:                                               ; preds = %29, %9
  %17 = phi ptr [ %32, %29 ], [ %14, %9 ]
  %18 = phi i1 [ false, %29 ], [ true, %9 ]
  %19 = phi i32 [ %30, %29 ], [ 1, %9 ]
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.6) #29
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %17, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !61
  br i1 %23, label %27, label %26

26:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.76, ptr noundef %25, ptr noundef nonnull %22) #29
  br label %29

27:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77, ptr noundef %25, i32 noundef %19) #29
  %28 = add nsw i32 %19, 1
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %19, %26 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %16, !llvm.loop !113

34:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.14) #29
  br label %35

35:                                               ; preds = %34, %29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.34) #29
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @WriteSourceSkeleton(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.119, ptr noundef %8, i32 noundef %4) #29
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.120, ptr noundef %16) #29
  %17 = load i16, ptr %10, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i16 [ %17, %14 ], [ %11, %9 ]
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.121, ptr noundef %24) #29
  %25 = load i16, ptr %10, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i16 [ %25, %22 ], [ %19, %18 ]
  %28 = and i16 %27, 4096
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, ptr @.str.123, ptr @.str.122
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %30) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineVtables(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  tail call fastcc void @OutputVtableImpls(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.124, ptr noundef %11, ptr noundef %11) #29
  %12 = load ptr, ptr %1, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.125, ptr noundef %16) #29
  br label %18

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.126) #29
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.127, ptr noundef %19) #29
  %20 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.128, ptr noundef %20) #29
  tail call fastcc void @OutputVtableFuncs(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.56) #29
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %83

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %1, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !66
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !110

18:                                               ; preds = %13, %9
  %.lcssa = phi ptr [ %10, %13 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !101
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.133, ptr noundef %20, ptr noundef %22) #29
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.81, ptr noundef %29) #29
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ 1, %27 ], [ 0, %18 ]
  %32 = tail call fastcc i32 @CreateParamsSource(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %31) #31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.14) #29
  br label %35

35:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.12) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.13) #29
  %36 = load i16, ptr %23, align 8
  %37 = and i16 %36, 6
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %53

39:                                               ; preds = %35
  %40 = tail call i32 @TreeCCNodeIsSingleton(ptr noundef nonnull %1) #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %39
  %43 = load i16, ptr %23, align 8
  br label %53

44:                                               ; preds = %39
  %45 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.134, ptr noundef %45) #29
  %46 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.135, ptr noundef %46) #29
  %47 = load i16, ptr %23, align 8
  %48 = and i16 %47, 128
  %49 = icmp eq i16 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.136, ptr noundef %51) #29
  br label %52

52:                                               ; preds = %50, %44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.137) #29
  br label %81

53:                                               ; preds = %42, %35
  %54 = phi i16 [ %43, %42 ], [ %36, %35 ]
  %55 = and i16 %54, 8
  %56 = icmp eq i16 %55, 0
  %57 = load ptr, ptr %21, align 8, !tbaa !101
  %58 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %59 = load ptr, ptr %58, align 8, !tbaa !13
  %60 = select i1 %56, ptr @.str.140, ptr @.str.139
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %60, ptr noundef %57, ptr noundef %57, ptr noundef %59, ptr noundef %57) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.141) #29
  %61 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.142, ptr noundef %61) #29
  %62 = load i16, ptr %23, align 8
  %63 = and i16 %62, 128
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %53
  %66 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.143, ptr noundef %66) #29
  %67 = load i16, ptr %23, align 8
  br label %68

68:                                               ; preds = %65, %53
  %69 = phi i16 [ %67, %65 ], [ %62, %53 ]
  %70 = and i16 %69, 2
  %71 = icmp eq i16 %70, 0
  br i1 %71, label %80, label %72

72:                                               ; preds = %68
  %73 = and i16 %69, 8
  %74 = icmp eq i16 %73, 0
  %75 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %76 = load ptr, ptr %75, align 8, !tbaa !13
  %77 = select i1 %74, ptr @.str.146, ptr @.str.144
  %78 = select i1 %74, ptr @.str.147, ptr @.str.145
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %77, ptr noundef %76) #29
  %79 = load ptr, ptr %75, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %78, ptr noundef %79) #29
  br label %80

80:                                               ; preds = %72, %68
  tail call fastcc void @InitFields(ptr noundef %4, ptr noundef nonnull %1) #31
  br label %81

81:                                               ; preds = %80, %52
  %82 = phi ptr [ @.str.148, %80 ], [ @.str.138, %52 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %82, ptr noundef %20) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.41) #29
  br label %83

83:                                               ; preds = %81, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @C_GenStart(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @CGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSplitEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @CGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSwitchHead(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = or i32 %6, 1
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #31
  %8 = icmp eq i32 %4, 0
  br i1 %8, label %9, label %19

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %19

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %15 = load i16, ptr %14, align 8
  %16 = and i16 %15, 128
  %17 = icmp eq i16 %16, 0
  %18 = select i1 %17, ptr @.str.16, ptr @.str.15
  br label %19

19:                                               ; preds = %13, %9, %5
  %20 = phi ptr [ @.str.14, %5 ], [ %18, %13 ], [ @.str.17, %9 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %20, ptr noundef %2) #29
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.13) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSelector(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %10 = and i32 %6, 8
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %9, %4
  %13 = phi ptr [ @.str.22, %4 ], [ @.str.23, %9 ]
  %14 = shl nsw i32 %3, 1
  %15 = add nsw i32 %14, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %15) #31
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndSelectors(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.13) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseFunc(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = load ptr, ptr %6, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %8, ptr noundef %9, i32 noundef %3) #29
  %10 = load ptr, ptr %5, align 8, !tbaa !116
  %11 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %56, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !117
  br label %16

16:                                               ; preds = %51, %14
  %17 = phi ptr [ %54, %51 ], [ %12, %14 ]
  %18 = phi i1 [ false, %51 ], [ true, %14 ]
  %19 = phi i32 [ %52, %51 ], [ 1, %14 ]
  %20 = phi ptr [ %42, %51 ], [ %15, %14 ]
  br i1 %18, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !59
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = and i32 %30, 24
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 4
  %34 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 1
  %35 = select i1 %32, ptr %33, ptr %34
  %36 = select i1 %32, ptr @.str.25, ptr @.str.26
  %37 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %20, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !118
  br label %41

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 1
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi ptr [ %38, %27 ], [ %20, %39 ]
  %43 = phi ptr [ %35, %27 ], [ %40, %39 ]
  %44 = phi ptr [ %36, %27 ], [ @.str.26, %39 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !22
  %46 = load ptr, ptr %17, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %45, ptr noundef nonnull %44, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %45, ptr noundef nonnull %44, i32 noundef %19) #29
  %50 = add nsw i32 %19, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %19, %48 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %16, !llvm.loop !119

56:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.14) #29
  br label %57

57:                                               ; preds = %56, %51
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12) #29
  %58 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %59, ptr noundef %61) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29) #29
  %62 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !122
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  tail call void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %63) #29
  br label %66

66:                                               ; preds = %65, %57
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseCall(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 3
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.11.14) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %44) #29
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %28) #29
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !59
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10) #29
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !123

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseInline(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = shl nsw i32 %3, 1
  %12 = add nsw i32 %11, 3
  br label %46

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !117
  %15 = shl nsw i32 %3, 1
  %16 = add nsw i32 %15, 3
  br label %17

17:                                               ; preds = %41, %13
  %18 = phi ptr [ %8, %13 ], [ %44, %41 ]
  %19 = phi ptr [ %14, %13 ], [ %42, %41 ]
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = and i32 %30, 24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %16) #31
  %34 = load ptr, ptr %19, align 8, !tbaa !76
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  %37 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef %36, ptr noundef %37, ptr noundef %36, ptr noundef %37) #29
  br label %38

38:                                               ; preds = %33, %27, %24
  %39 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %19, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !118
  br label %41

41:                                               ; preds = %38, %17
  %42 = phi ptr [ %40, %38 ], [ %19, %17 ]
  %43 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !22
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %17, !llvm.loop !124

46:                                               ; preds = %41, %10
  %47 = phi i32 [ %12, %10 ], [ %16, %41 ]
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !120
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %49, ptr noundef %51) #29
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %47) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29) #29
  %52 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %53, i32 noundef %47) #29
  br label %56

56:                                               ; preds = %55, %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseSplit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 3
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.11.14) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %44) #29
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %28) #29
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !59
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10) #29
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !125

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndCase(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30) #29
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.37) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndSwitch(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38) #29
  %6 = or i32 %4, 1
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %6) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenExit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.11.14) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39, ptr noundef nonnull %10) #29
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40) #29
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.41) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @C_GenEnd(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #11 {
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.18) #29
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !127

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #29
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CGenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.15, ptr noundef %8, ptr noundef %9, i32 noundef %3) #29
  br label %26

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !112
  %21 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4, ptr noundef %20, ptr noundef %21) #29
  br label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !112
  %25 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5, ptr noundef %24, ptr noundef nonnull %16, ptr noundef %25) #29
  br label %26

26:                                               ; preds = %22, %18, %6
  %27 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %59, %26
  %31 = phi ptr [ %61, %59 ], [ %28, %26 ]
  %32 = phi i1 [ false, %59 ], [ true, %26 ]
  %33 = phi i32 [ %44, %59 ], [ 1, %26 ]
  br i1 %32, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !61
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.16, ptr noundef %37) #29
  %38 = load ptr, ptr %31, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8, ptr noundef nonnull %38) #29
  br label %43

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9, i32 noundef %33) #29
  %42 = add nsw i32 %33, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %33, %40 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %36, align 8, !tbaa !61
  %51 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %50) #29
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._tagTreeCCNode, ptr %51, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !66
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10) #29
  br label %59

59:                                               ; preds = %58, %53, %43
  %60 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %30, !llvm.loop !128

63:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.14) #29
  br label %64

64:                                               ; preds = %63, %59
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.13) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParamsSource(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParamsSource(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.6) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %25, ptr noundef %26) #29
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !133

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @InitFields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @InitFields(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %24, %6
  %11 = phi ptr [ %26, %24 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %17, ptr noundef %17) #29
  br label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !134
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %23, ptr noundef nonnull %20) #29
  br label %24

24:                                               ; preds = %22, %18, %16
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !135

28:                                               ; preds = %24, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputVtableImpls(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @OutputVtableImpls(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %64, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %10, %12 ], [ %21, %19 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %57, %14
  %20 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %64, label %14, !llvm.loop !136

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  %26 = load ptr, ptr %13, align 8, !tbaa !101
  %27 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.129, ptr noundef %25, ptr noundef %26, ptr noundef %27) #29
  %28 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %57, label %33

33:                                               ; preds = %52, %23
  %34 = phi ptr [ %55, %52 ], [ %31, %23 ]
  %35 = phi i1 [ false, %52 ], [ true, %23 ]
  %36 = phi i32 [ %53, %52 ], [ 1, %23 ]
  br i1 %35, label %42, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  %38 = load ptr, ptr %34, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %34, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  br i1 %39, label %50, label %49

42:                                               ; preds = %33
  %43 = load ptr, ptr %34, align 8, !tbaa !67
  %44 = icmp eq ptr %43, null
  %45 = load ptr, ptr %13, align 8, !tbaa !101
  br i1 %44, label %47, label %46

46:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %45, ptr noundef nonnull %43) #29
  br label %52

47:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef %45, i32 noundef %36) #29
  %48 = add nsw i32 %36, 1
  br label %52

49:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef %41, ptr noundef nonnull %38) #29
  br label %52

50:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef %41, i32 noundef %36) #29
  %51 = add nsw i32 %36, 1
  br label %52

52:                                               ; preds = %50, %49, %47, %46
  %53 = phi i32 [ %36, %49 ], [ %51, %50 ], [ %36, %46 ], [ %48, %47 ]
  %54 = getelementptr inbounds %struct._tagTreeCCParam, ptr %34, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %33, !llvm.loop !138

57:                                               ; preds = %52, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12) #29
  %58 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !120
  %60 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %59, ptr noundef %61) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29) #29
  %62 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !122
  tail call void @TreeCCStreamCode(ptr noundef %1, ptr noundef %63) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11) #29
  br label %19

64:                                               ; preds = %19, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputVtableFuncs(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @OutputVtableFuncs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %59, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  br label %14

14:                                               ; preds = %55, %12
  %15 = phi ptr [ %10, %12 ], [ %57, %55 ]
  %16 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !137
  %18 = load ptr, ptr %13, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef %17, ptr noundef %18) #29
  %19 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %32, %14
  %23 = phi ptr [ %35, %32 ], [ %20, %14 ]
  %24 = phi i32 [ %33, %32 ], [ 1, %14 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !61
  br i1 %26, label %30, label %29

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef %28, ptr noundef nonnull %25) #29
  br label %32

30:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef %28, i32 noundef %24) #29
  %31 = add nsw i32 %24, 1
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ %24, %29 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !22
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %22, !llvm.loop !139

37:                                               ; preds = %32, %14
  %38 = load ptr, ptr %15, align 8, !tbaa !105
  %39 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %38) #29
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %45, %37
  %42 = phi ptr [ %43, %45 ], [ %3, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = icmp eq ptr %43, null
  br i1 %44, label %54, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %15, align 8, !tbaa !105
  %47 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %46) #29
  %48 = icmp eq ptr %47, null
  br i1 %48, label %41, label %49, !llvm.loop !140

49:                                               ; preds = %45, %37
  %50 = phi ptr [ %3, %37 ], [ %43, %45 ]
  %51 = getelementptr inbounds %struct._tagTreeCCNode, ptr %50, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !101
  %53 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.131, ptr noundef %52, ptr noundef %53) #29
  br label %55

54:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.132) #29
  br label %55

55:                                               ; preds = %54, %49
  %56 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !22
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %14, !llvm.loop !141

59:                                               ; preds = %55, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.6) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.76, ptr noundef %25, ptr noundef %26) #29
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !142

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareFields(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @DeclareFields(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %16, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !131
  %14 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.62, ptr noundef %13, ptr noundef %14) #29
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !143

18:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareVirtuals(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @DeclareVirtuals(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  br label %12

12:                                               ; preds = %36, %10
  %13 = phi ptr [ %8, %10 ], [ %38, %36 ]
  %14 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !137
  %16 = load ptr, ptr %13, align 8, !tbaa !105
  %17 = load ptr, ptr %11, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %15, ptr noundef %16, ptr noundef %17) #29
  %18 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %31, %12
  %22 = phi ptr [ %34, %31 ], [ %19, %12 ]
  %23 = phi i32 [ %32, %31 ], [ 1, %12 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !61
  br i1 %25, label %29, label %28

28:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef %27, ptr noundef nonnull %24) #29
  br label %31

29:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %27, i32 noundef %23) #29
  %30 = add nsw i32 %23, 1
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %23, %28 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !144

36:                                               ; preds = %31, %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.34) #29
  %37 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !llvm.loop !145

40:                                               ; preds = %36, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @DeclareVirtualImpls(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @DeclareVirtualImpls(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31, !range !78
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %66, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %16

16:                                               ; preds = %62, %14
  %17 = phi ptr [ %12, %14 ], [ %64, %62 ]
  %18 = phi i32 [ %10, %14 ], [ 1, %62 ]
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %17, %16 ], [ %26, %24 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !105
  %22 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %21) #29
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %20, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %66, label %19, !llvm.loop !146

28:                                               ; preds = %19
  %.lcssa1 = phi ptr [ %20, %19 ]
  %.lcssa = phi ptr [ %22, %19 ]
  %29 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa1, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !137
  %31 = load ptr, ptr %15, align 8, !tbaa !101
  %32 = load ptr, ptr %.lcssa1, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef %30, ptr noundef %31, ptr noundef %32) #29
  %33 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %.lcssa, i64 0, i32 2
  %34 = load ptr, ptr %33, align 8, !tbaa !116
  %35 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !22
  %37 = icmp eq ptr %36, null
  br i1 %37, label %62, label %38

38:                                               ; preds = %57, %28
  %39 = phi ptr [ %60, %57 ], [ %36, %28 ]
  %40 = phi i1 [ false, %57 ], [ true, %28 ]
  %41 = phi i32 [ %58, %57 ], [ 1, %28 ]
  br i1 %40, label %50, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6) #29
  %43 = load ptr, ptr %39, align 8, !tbaa !67
  %44 = icmp eq ptr %43, null
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %39, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !61
  br i1 %44, label %48, label %47

47:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.76, ptr noundef %46, ptr noundef nonnull %43) #29
  br label %57

48:                                               ; preds = %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.77, ptr noundef %46, i32 noundef %41) #29
  %49 = add nsw i32 %41, 1
  br label %57

50:                                               ; preds = %38
  %51 = load ptr, ptr %39, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  %53 = load ptr, ptr %15, align 8, !tbaa !101
  br i1 %52, label %55, label %54

54:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %53, ptr noundef nonnull %51) #29
  br label %57

55:                                               ; preds = %50
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef %53, i32 noundef %41) #29
  %56 = add nsw i32 %41, 1
  br label %57

57:                                               ; preds = %55, %54, %48, %47
  %58 = phi i32 [ %41, %47 ], [ %49, %48 ], [ %41, %54 ], [ %56, %55 ]
  %59 = getelementptr inbounds %struct._tagTreeCCParam, ptr %39, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %38, !llvm.loop !147

62:                                               ; preds = %57, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34) #29
  %63 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa1, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %16, !llvm.loop !146

66:                                               ; preds = %62, %24, %9
  %67 = phi i32 [ %10, %9 ], [ %18, %24 ], [ 1, %62 ]
  ret i32 %67
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateCPP(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %7

7:                                                ; preds = %25, %5
  %8 = phi ptr [ %3, %5 ], [ %27, %25 ]
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %14, label %13

13:                                               ; preds = %7
  tail call void @TreeCCStreamHeaderTop(ptr noundef nonnull %8) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.159) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.1.160) #29
  br label %15

14:                                               ; preds = %7
  tail call void @TreeCCStreamSourceTop(ptr noundef nonnull %8) #29
  br label %15

15:                                               ; preds = %14, %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.159) #29
  %16 = load ptr, ptr %6, align 8, !tbaa !148
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.2.161, ptr noundef nonnull %16) #29
  br label %19

19:                                               ; preds = %18, %15
  %20 = load i8, ptr %9, align 4
  %21 = and i8 %20, 8
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %19
  %24 = and i8 %20, -17
  store i8 %24, ptr %9, align 4
  br label %25

25:                                               ; preds = %23, %19
  %26 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %7, !llvm.loop !149

29:                                               ; preds = %25, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DefineNodeNumbers.162) #29
  %30 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %31, ptr noundef nonnull @.str.159) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareTypeDefs.163) #29
  %32 = load ptr, ptr %30, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %32, ptr noundef nonnull @.str.159) #29
  %33 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %34 = load ptr, ptr %33, align 8, !tbaa !96
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  tail call fastcc void @DeclareStateType(ptr noundef nonnull %0, ptr noundef nonnull %34) #31
  br label %39

37:                                               ; preds = %29
  %38 = load ptr, ptr %30, align 8, !tbaa !95
  tail call fastcc void @DeclareStateType(ptr noundef nonnull %0, ptr noundef %38) #31
  br label %39

39:                                               ; preds = %37, %36
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls.164) #29
  %40 = load ptr, ptr %30, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %40, ptr noundef nonnull @.str.159) #29
  tail call void @TreeCCOperationVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareNonVirtuals.165) #29
  %41 = load ptr, ptr %30, align 8, !tbaa !95
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %41, ptr noundef nonnull @.str.159) #29
  %42 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !97
  %44 = icmp eq ptr %43, null
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call fastcc void @ImplementStateType(ptr noundef nonnull %0, ptr noundef nonnull %43) #31
  br label %49

46:                                               ; preds = %39
  %47 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %48 = load ptr, ptr %47, align 8, !tbaa !98
  tail call fastcc void @ImplementStateType(ptr noundef nonnull %0, ptr noundef %48) #31
  br label %49

49:                                               ; preds = %46, %45
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementNodeTypes) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsC) #29
  %50 = load ptr, ptr %2, align 8, !tbaa !22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %76, label %52

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %54

54:                                               ; preds = %72, %52
  %55 = phi ptr [ %50, %52 ], [ %74, %72 ]
  %56 = getelementptr inbounds %struct._tagTreeCCStream, ptr %55, i64 0, i32 7
  %57 = load i8, ptr %56, align 4
  %58 = and i8 %57, 24
  %59 = icmp eq i8 %58, 8
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call void @TreeCCStreamClear(ptr noundef nonnull %55) #29
  br label %72

61:                                               ; preds = %54
  %62 = load ptr, ptr %53, align 8, !tbaa !148
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %55, ptr noundef nonnull @.str.105.166) #29
  %65 = load i8, ptr %56, align 4
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi i8 [ %65, %64 ], [ %57, %61 ]
  %68 = and i8 %67, 4
  %69 = icmp eq i8 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %66
  tail call void @TreeCCStreamHeaderBottom(ptr noundef nonnull %55) #29
  br label %72

71:                                               ; preds = %66
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %55) #29
  br label %72

72:                                               ; preds = %71, %70, %60
  %73 = getelementptr inbounds %struct._tagTreeCCStream, ptr %55, i64 0, i32 10
  %74 = load ptr, ptr %73, align 8, !tbaa !22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %54, !llvm.loop !150

76:                                               ; preds = %72, %49
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineNodeNumbers.162(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !100
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !102
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.3.275, ptr noundef %11, i32 noundef %13) #29
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.163(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.4.271) #29
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %22, %9
  %14 = phi ptr [ %24, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !66
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.5.272, ptr noundef %21) #29
  br label %22

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !22
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %13, !llvm.loop !151

26:                                               ; preds = %2
  %27 = and i32 %6, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %22, %9
  %30 = phi ptr [ @.str.6.273, %9 ], [ @.str.7.274, %26 ], [ @.str.6.273, %22 ]
  %31 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %30, ptr noundef %32) #29
  br label %33

33:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareStateType(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.223, ptr noundef %4) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #29
  %5 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.248, ptr noundef %5) #29
  %6 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.245, ptr noundef %6) #29
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 4096
  %10 = icmp eq i16 %9, 0
  %11 = select i1 %10, ptr @.str.13.249, ptr @.str.12.250
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %11) #29
  %12 = load i16, ptr %7, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.14.251) #29
  %16 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.252, ptr noundef %16) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #29
  %17 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.253, ptr noundef %17) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.254) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.255) #29
  %18 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.256, ptr noundef %18) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.257) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.258) #29
  %19 = load i16, ptr %7, align 8
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareCreateFuncs.259) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.159) #29
  br label %23

23:                                               ; preds = %22, %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.260) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.261) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.262) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.263) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.264) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.265) #29
  %24 = load i16, ptr %7, align 8
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28.266) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.267) #29
  br label %28

28:                                               ; preds = %27, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.268) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.164(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !100
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %85

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.37.222, ptr noundef %14, ptr noundef %16) #29
  br label %41

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !152
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  br i1 %20, label %24, label %23

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.37.222, ptr noundef %22, ptr noundef nonnull %19) #29
  br label %25

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.8.223, ptr noundef %22) #29
  br label %25

25:                                               ; preds = %24, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.39.225) #29
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.40.226) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.41.227) #29
  br label %31

31:                                               ; preds = %30, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.42.228) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.43.229) #29
  %32 = load i16, ptr %26, align 8
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.44.230) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.45.231) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.46.232) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.233) #29
  br label %36

36:                                               ; preds = %35, %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.159) #29
  %37 = load i16, ptr %26, align 8
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.48.234) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.49.235) #29
  br label %41

41:                                               ; preds = %40, %36, %12
  %42 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %43 = load i16, ptr %42, align 8
  %44 = and i16 %43, 8
  %45 = icmp eq i16 %44, 0
  br i1 %45, label %53, label %46

46:                                               ; preds = %41
  %47 = and i16 %43, 96
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.50.236) #29
  br label %59

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #29
  %51 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.51.237, ptr noundef %52) #29
  br label %59

53:                                               ; preds = %41
  %54 = load i32, ptr %5, align 8, !tbaa !66
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #29
  br label %59

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.9.217) #29
  br label %59

59:                                               ; preds = %58, %57, %50, %49
  %60 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.52.238, ptr noundef %61) #29
  %62 = load i16, ptr %42, align 8
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %67) #29
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i32 [ 1, %65 ], [ 0, %59 ]
  %70 = tail call fastcc i32 @CreateParams.239(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %69) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.54.240) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.9.217) #29
  %71 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !22
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %74, %68
  %75 = phi ptr [ %80, %74 ], [ %72, %68 ]
  %76 = getelementptr inbounds %struct._tagTreeCCField, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !131
  %78 = load ptr, ptr %75, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.58.241, ptr noundef %77, ptr noundef %78) #29
  %79 = getelementptr inbounds %struct._tagTreeCCField, ptr %75, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74, !llvm.loop !153

82:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.159) #29
  br label %83

83:                                               ; preds = %82, %68
  tail call fastcc void @DeclareVirtuals.242(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.159) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.55.243) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.56.244) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #29
  %84 = load ptr, ptr %60, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.245, ptr noundef %84) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #29
  br label %85

85:                                               ; preds = %83, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareNonVirtuals.165(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !111
  %5 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 1
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !41
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.61.216, ptr noundef nonnull %11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.9.217) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.63.218) #29
  br label %14

14:                                               ; preds = %13, %9
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !112
  %17 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.64.219, ptr noundef %16, ptr noundef %17) #29
  %18 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %39, label %21

21:                                               ; preds = %34, %14
  %22 = phi ptr [ %37, %34 ], [ %19, %14 ]
  %23 = phi i1 [ false, %34 ], [ true, %14 ]
  %24 = phi i32 [ %35, %34 ], [ 1, %14 ]
  br i1 %23, label %26, label %25

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.35.196) #29
  br label %26

26:                                               ; preds = %25, %21
  %27 = load ptr, ptr %22, align 8, !tbaa !67
  %28 = icmp eq ptr %27, null
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !61
  br i1 %28, label %32, label %31

31:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.36.197, ptr noundef %30, ptr noundef nonnull %27) #29
  br label %34

32:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.60.198, ptr noundef %30, i32 noundef %24) #29
  %33 = add nsw i32 %24, 1
  br label %34

34:                                               ; preds = %32, %31
  %35 = phi i32 [ %24, %31 ], [ %33, %32 ]
  %36 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %40, label %21, !llvm.loop !154

39:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.65.220) #29
  br label %40

40:                                               ; preds = %39, %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.34.215) #29
  %41 = load ptr, ptr %10, align 8, !tbaa !41
  %42 = icmp eq ptr %41, null
  br i1 %42, label %44, label %43

43:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #29
  br label %44

44:                                               ; preds = %43, %40, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !114
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.66.204, ptr noundef %8, i32 noundef %4) #29
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.67.205, ptr noundef %16) #29
  %17 = load i16, ptr %10, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i16 [ %17, %14 ], [ %11, %9 ]
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.206, ptr noundef %24) #29
  %25 = load i16, ptr %10, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i16 [ %25, %22 ], [ %19, %18 ]
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.69.207, ptr noundef %32) #29
  %33 = load i16, ptr %10, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i16 [ %33, %30 ], [ %27, %26 ]
  %36 = and i16 %35, 4096
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, ptr @.str.71.208, ptr @.str.70.209
  tail call void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %38) #29
  %39 = load i16, ptr %10, align 8
  %40 = and i16 %39, 72
  %41 = icmp eq i16 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.210) #29
  br label %43

43:                                               ; preds = %42, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementNodeTypes(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !115
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %101

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.79.167, ptr noundef %19) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  %20 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.80.169, ptr noundef %21) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  %22 = load ptr, ptr %18, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.81.171, ptr noundef %22) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  %23 = load ptr, ptr %20, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.82.172, ptr noundef %23) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  br label %24

24:                                               ; preds = %17, %12, %9
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.93.173, ptr noundef %26, ptr noundef %26) #29
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %33) #29
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ 1, %31 ], [ 0, %24 ]
  %36 = tail call fastcc i32 @CreateParamsSource.175(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %35) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.73.176) #29
  %37 = load ptr, ptr %1, align 8, !tbaa !104
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.94.177, ptr noundef %41) #29
  %42 = load i16, ptr %27, align 8
  %43 = and i16 %42, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.95.178) #29
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ 1, %45 ], [ 0, %39 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !104
  %49 = tail call fastcc i32 @InheritParamsSource(ptr noundef %4, ptr noundef %48, i32 noundef %47) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.73.176) #29
  br label %50

50:                                               ; preds = %46, %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  %51 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.96.179, ptr noundef %51) #29
  %52 = load i16, ptr %27, align 8
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %1, align 8, !tbaa !104
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = and i16 %52, 8
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.97.180) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.98.181) #29
  br label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.99.182, ptr noundef %64) #29
  %65 = load ptr, ptr %63, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.100.183, ptr noundef %65) #29
  br label %66

66:                                               ; preds = %62, %61, %55, %50
  %67 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !22
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70

70:                                               ; preds = %84, %66
  %71 = phi ptr [ %86, %84 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !129
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.101.184, ptr noundef %77, ptr noundef %77) #29
  br label %84

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !134
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %71, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.101.184, ptr noundef %83, ptr noundef nonnull %80) #29
  br label %84

84:                                               ; preds = %82, %78, %76
  %85 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !22
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %70, !llvm.loop !155

88:                                               ; preds = %84, %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  %89 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.83.185, ptr noundef %89, ptr noundef %89) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.84.186) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  tail call fastcc void @ImplementVirtuals(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  %90 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.85.187, ptr noundef %90) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  %91 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.86.188, ptr noundef %91) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.87.189) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.88.190) #29
  %92 = load ptr, ptr %1, align 8, !tbaa !104
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct._tagTreeCCNode, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.89.191, ptr noundef %96) #29
  br label %98

97:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.90.192) #29
  br label %98

98:                                               ; preds = %97, %94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  %99 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.91.193, ptr noundef %99) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.62.168) #29
  %100 = load ptr, ptr %25, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.92.194, ptr noundef %100) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.77.170) #29
  br label %101

101:                                              ; preds = %98, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParamsSource.175(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParamsSource.175(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.35.196) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.36.197, ptr noundef %25, ptr noundef %26) #29
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !156

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.35.196) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.78.203, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !157

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %81, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %14

14:                                               ; preds = %19, %12
  %15 = phi ptr [ %10, %12 ], [ %21, %19 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %80, %14
  %20 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %81, label %14, !llvm.loop !158

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !137
  %26 = load ptr, ptr %13, align 8, !tbaa !101
  %27 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.102.195, ptr noundef %25, ptr noundef %26, ptr noundef %27) #29
  %28 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 2
  %29 = load ptr, ptr %28, align 8, !tbaa !116
  %30 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %58, label %33

33:                                               ; preds = %52, %23
  %34 = phi ptr [ %56, %52 ], [ %31, %23 ]
  %35 = phi i32 [ %54, %52 ], [ 0, %23 ]
  %36 = phi i1 [ true, %52 ], [ false, %23 ]
  %37 = phi i32 [ %53, %52 ], [ 1, %23 ]
  %38 = icmp eq i32 %35, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35.196) #29
  br label %40

40:                                               ; preds = %39, %33
  %41 = load ptr, ptr %34, align 8, !tbaa !67
  %42 = icmp eq ptr %41, null
  br i1 %36, label %46, label %43

43:                                               ; preds = %40
  %44 = zext i1 %42 to i32
  %45 = add nsw i32 %37, %44
  br label %52

46:                                               ; preds = %40
  %47 = getelementptr inbounds %struct._tagTreeCCParam, ptr %34, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !61
  br i1 %42, label %50, label %49

49:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36.197, ptr noundef %48, ptr noundef nonnull %41) #29
  br label %52

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.60.198, ptr noundef %48, i32 noundef %37) #29
  %51 = add nsw i32 %37, 1
  br label %52

52:                                               ; preds = %50, %49, %43
  %53 = phi i32 [ %45, %43 ], [ %37, %49 ], [ %51, %50 ]
  %54 = phi i32 [ %35, %43 ], [ 1, %49 ], [ 1, %50 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %34, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %33, !llvm.loop !159

58:                                               ; preds = %52, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.73.176) #29
  %59 = load ptr, ptr %30, align 8, !tbaa !52
  %60 = load ptr, ptr %59, align 8, !tbaa !67
  %61 = icmp eq ptr %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %58
  %63 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(5) @.str.103.199) #32
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %62, %58
  %66 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 7
  %67 = load i64, ptr %66, align 8, !tbaa !120
  %68 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 6
  %69 = load ptr, ptr %68, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %67, ptr noundef %69) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.104.200) #29
  %70 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 1
  %71 = load ptr, ptr %70, align 8, !tbaa !122
  tail call void @TreeCCStreamCode(ptr noundef %1, ptr noundef %71) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.105.166) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %80

72:                                               ; preds = %62
  %73 = load ptr, ptr %13, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.106.201, ptr noundef %73, ptr noundef nonnull %60) #29
  %74 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 7
  %75 = load i64, ptr %74, align 8, !tbaa !120
  %76 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 6
  %77 = load ptr, ptr %76, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %75, ptr noundef %77) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.107.202) #29
  %78 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %17, i64 0, i32 1
  %79 = load ptr, ptr %78, align 8, !tbaa !122
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %79, i32 noundef 1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.105.166) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.105.166) #29
  br label %80

80:                                               ; preds = %72, %65
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.159) #29
  br label %19

81:                                               ; preds = %19, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.210(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.72.211, ptr noundef %17, ptr noundef %19, ptr noundef %17) #29
  %20 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %15, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.73.176) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.62.168) #29
  %21 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.74.212, ptr noundef %21) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.75.213) #29
  %22 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.76.214, ptr noundef %22) #29
  tail call fastcc void @FactoryInvokeParams(ptr noundef %15, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.34.215) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.77.170) #29
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %26, %7
  %13 = phi ptr [ %29, %26 ], [ %10, %7 ]
  %14 = phi i32 [ %27, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.35.196) #29
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = load ptr, ptr %13, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.36.197, ptr noundef %24, ptr noundef %25) #29
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %28 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !160

31:                                               ; preds = %26, %7
  %32 = phi i32 [ %8, %7 ], [ %27, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.35.196) #29
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.78.203, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !161

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.239(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.239(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.35.196) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.36.197, ptr noundef %25, ptr noundef %26) #29
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !162

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareVirtuals.242(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @DeclareVirtuals.242(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %56, label %12

12:                                               ; preds = %52, %8
  %13 = phi ptr [ %54, %52 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !105
  %15 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %14) #29
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %25

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %19, %21 ], [ %3, %12 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !104
  %20 = icmp eq ptr %19, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %17
  %22 = load ptr, ptr %13, align 8, !tbaa !105
  %23 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %22) #29
  %24 = icmp eq ptr %23, null
  br i1 %24, label %17, label %52, !llvm.loop !163

25:                                               ; preds = %17, %12
  %26 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !137
  %28 = load ptr, ptr %13, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.59.246, ptr noundef %27, ptr noundef %28) #29
  %29 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %50, label %32

32:                                               ; preds = %45, %25
  %33 = phi ptr [ %48, %45 ], [ %30, %25 ]
  %34 = phi i1 [ false, %45 ], [ true, %25 ]
  %35 = phi i32 [ %46, %45 ], [ 1, %25 ]
  br i1 %34, label %37, label %36

36:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35.196) #29
  br label %37

37:                                               ; preds = %36, %32
  %38 = load ptr, ptr %33, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %33, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !61
  br i1 %39, label %43, label %42

42:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36.197, ptr noundef %41, ptr noundef nonnull %38) #29
  br label %45

43:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.60.198, ptr noundef %41, i32 noundef %35) #29
  %44 = add nsw i32 %35, 1
  br label %45

45:                                               ; preds = %43, %42
  %46 = phi i32 [ %35, %42 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct._tagTreeCCParam, ptr %33, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %32, !llvm.loop !164

50:                                               ; preds = %45, %25
  %51 = select i1 %16, ptr @.str.33.247, ptr @.str.34.215
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %51) #29
  br label %52

52:                                               ; preds = %50, %21
  %53 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !22
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %12, !llvm.loop !165

56:                                               ; preds = %52, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareCreateFuncs.259(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !96
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !95
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 96
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = select i1 %19, ptr @.str.32.269, ptr @.str.31.270
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %22, ptr noundef %21, ptr noundef %21) #29
  %23 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %15, ptr noundef nonnull %1) #31
  %24 = load i16, ptr %16, align 8
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr @.str.34.215, ptr @.str.33.247
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %27) #29
  br label %28

28:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateCSharp(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi ptr [ %3, %5 ], [ %29, %27 ]
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.278, ptr noundef %15) #29
  %16 = load ptr, ptr %6, align 8, !tbaa !148
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.1.279, ptr noundef nonnull %16) #29
  br label %19

19:                                               ; preds = %18, %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.2.280) #29
  tail call void @TreeCCStreamSourceTopCS(ptr noundef nonnull %8) #29
  %20 = load i8, ptr %9, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i8 [ %20, %19 ], [ %10, %7 ]
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = and i8 %22, -17
  store i8 %26, ptr %9, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !167

31:                                               ; preds = %27, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DeclareTypeDefs.281) #29
  %32 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @ImplementStateType.282(ptr noundef nonnull %0, ptr noundef nonnull %33) #31
  br label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !98
  tail call fastcc void @ImplementStateType.282(ptr noundef nonnull %0, ptr noundef %38) #31
  br label %39

39:                                               ; preds = %36, %35
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls.283) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsJava) #29
  %40 = load ptr, ptr %2, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %44

44:                                               ; preds = %58, %42
  %45 = phi ptr [ %40, %42 ], [ %60, %58 ]
  %46 = getelementptr inbounds %struct._tagTreeCCStream, ptr %45, i64 0, i32 7
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 8
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @TreeCCStreamClear(ptr noundef nonnull %45) #29
  br label %58

51:                                               ; preds = %44
  %52 = and i8 %47, 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %45) #29
  %55 = load ptr, ptr %43, align 8, !tbaa !148
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %45, ptr noundef nonnull @.str.80.284) #29
  br label %58

58:                                               ; preds = %57, %54, %51, %50
  %59 = getelementptr inbounds %struct._tagTreeCCStream, ptr %45, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %44, !llvm.loop !168

62:                                               ; preds = %58, %39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.281(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1024
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !101
  %16 = select i1 %13, ptr @.str.4.365, ptr @.str.3.366
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull %16, ptr noundef %15) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.5.367) #29
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %29, %7
  %21 = phi ptr [ %31, %29 ], [ %18, %7 ]
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !66
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.6.368, ptr noundef %28) #29
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !169

33:                                               ; preds = %29, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.7.332) #29
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.282(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 72
  %6 = icmp eq i16 %5, 72
  %7 = and i16 %4, 1024
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !14
  %11 = select i1 %8, ptr @.str.9.344, ptr @.str.8.345
  %12 = select i1 %8, ptr @.str.11.346, ptr @.str.10.347
  %13 = select i1 %6, ptr %11, ptr %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %10) #29
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12.348, ptr noundef %19) #29
  %20 = load ptr, ptr %18, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.13.349, ptr noundef %20) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.14.312) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.350) #29
  %21 = load ptr, ptr %18, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.351, ptr noundef %21) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.352) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.319) #29
  %22 = load i16, ptr %3, align 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i16 [ %22, %17 ], [ %14, %2 ]
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = select i1 %26, ptr @.str.20.353, ptr @.str.19.354
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %29, ptr noundef %28) #29
  %30 = load i16, ptr %3, align 8
  %31 = and i16 %30, 8
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %23
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.355) #29
  %34 = load i16, ptr %3, align 8
  br label %35

35:                                               ; preds = %33, %23
  %36 = phi i16 [ %34, %33 ], [ %30, %23 ]
  %37 = and i16 %36, 2
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.356) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.357) #29
  br label %40

40:                                               ; preds = %39, %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.332) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.283(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %147

7:                                                ; preds = %2
  %8 = tail call i32 @TreeCCNodeHasAbstracts(ptr noundef %0, ptr noundef nonnull %1) #29
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.33.285, ptr @.str.32.286
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !115
  %16 = load ptr, ptr %1, align 8, !tbaa !104
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %8, 0
  br i1 %17, label %26, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !101
  br i1 %18, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.34.287, ptr noundef nonnull %13, ptr noundef %21, ptr noundef %23) #29
  br label %49

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.35.288, ptr noundef nonnull %13, ptr noundef %21, ptr noundef %23) #29
  br label %49

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !152
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !101
  br i1 %18, label %35, label %32

32:                                               ; preds = %26
  br i1 %29, label %34, label %33

33:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.34.287, ptr noundef nonnull %13, ptr noundef %31, ptr noundef nonnull %28) #29
  br label %38

34:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.36.289, ptr noundef nonnull %13, ptr noundef %31) #29
  br label %38

35:                                               ; preds = %26
  br i1 %29, label %37, label %36

36:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.35.288, ptr noundef nonnull %13, ptr noundef %31, ptr noundef nonnull %28) #29
  br label %38

37:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.37.290, ptr noundef nonnull %13, ptr noundef %31) #29
  br label %38

38:                                               ; preds = %37, %36, %34, %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.38.291) #29
  %39 = load i16, ptr %9, align 8
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.39.292) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.40.293) #29
  br label %43

43:                                               ; preds = %42, %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.41.294) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.42.295) #29
  %44 = load i16, ptr %9, align 8
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.43.296) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.44.297) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.45.298) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.46.299) #29
  br label %48

48:                                               ; preds = %47, %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.41.294) #29
  br label %49

49:                                               ; preds = %48, %25, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !104
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !102
  %54 = select i1 %51, ptr @.str.48.300, ptr @.str.47.301
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %54, i32 noundef %53) #29
  %55 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %49
  %59 = phi ptr [ %64, %58 ], [ %56, %49 ]
  %60 = getelementptr inbounds %struct._tagTreeCCField, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !131
  %62 = load ptr, ptr %59, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.72.302, ptr noundef %61, ptr noundef %62) #29
  %63 = getelementptr inbounds %struct._tagTreeCCField, ptr %59, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58, !llvm.loop !170

66:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.41.294) #29
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i16, ptr %9, align 8
  %69 = and i16 %68, 8
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, ptr %3, align 8, !tbaa !66
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.49.303, ptr @.str.50.304
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi ptr [ @.str.49.303, %67 ], [ %75, %71 ]
  %78 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.51.305, ptr noundef nonnull %77, ptr noundef %79) #29
  %80 = load i16, ptr %9, align 8
  %81 = and i16 %80, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.52.306, ptr noundef %85) #29
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i32 [ 1, %83 ], [ 0, %76 ]
  %88 = tail call fastcc i32 @CreateParams.307(ptr noundef %15, ptr noundef nonnull %1, i32 noundef %87) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.27.308) #29
  %89 = load ptr, ptr %1, align 8, !tbaa !104
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.53.309) #29
  %92 = load i16, ptr %9, align 8
  %93 = and i16 %92, 8
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.54.310) #29
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ 1, %95 ], [ 0, %91 ]
  %98 = load ptr, ptr %1, align 8, !tbaa !104
  %99 = tail call fastcc i32 @InheritParamsSource.311(ptr noundef %15, ptr noundef %98, i32 noundef %97) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.27.308) #29
  br label %100

100:                                              ; preds = %96, %86
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.14.312) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.55.313) #29
  %101 = load i16, ptr %9, align 8
  %102 = and i16 %101, 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %1, align 8, !tbaa !104
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = and i16 %101, 8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.56.314) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.57.315) #29
  br label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.58.316, ptr noundef %113) #29
  %114 = load ptr, ptr %112, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.59.317, ptr noundef %114) #29
  br label %115

115:                                              ; preds = %111, %110, %104, %100
  %116 = load ptr, ptr %55, align 8, !tbaa !22
  %117 = icmp eq ptr %116, null
  br i1 %117, label %136, label %118

118:                                              ; preds = %132, %115
  %119 = phi ptr [ %134, %132 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !129
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load ptr, ptr %119, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.60.318, ptr noundef %125, ptr noundef %125) #29
  br label %132

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !134
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %119, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.60.318, ptr noundef %131, ptr noundef nonnull %128) #29
  br label %132

132:                                              ; preds = %130, %126, %124
  %133 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !22
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %118, !llvm.loop !171

136:                                              ; preds = %132, %115
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.18.319) #29
  tail call fastcc void @ImplementVirtuals.320(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  %137 = load ptr, ptr %1, align 8, !tbaa !104
  %138 = icmp eq ptr %137, null
  %139 = select i1 %138, ptr @.str.62.321, ptr @.str.61.322
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %139) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.14.312) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.63.323) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.64.324) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.65.325) #29
  %140 = load ptr, ptr %1, align 8, !tbaa !104
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, ptr @.str.67.326, ptr @.str.66.327
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %142) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.18.319) #29
  %143 = load ptr, ptr %1, align 8, !tbaa !104
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr @.str.69.328, ptr @.str.68.329
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %145) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.14.312) #29
  %146 = load ptr, ptr %78, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.70.330, ptr noundef %146) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.71.331) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.332) #29
  br label %147

147:                                              ; preds = %136, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.307(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.307(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.29.337) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.30.338, ptr noundef %25, ptr noundef %26) #29
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !172

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.311(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.311(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.29.337) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.31.343, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !173

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.320(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.320(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %96, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %15

15:                                               ; preds = %35, %12
  %16 = phi ptr [ %10, %12 ], [ %37, %35 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %39

20:                                               ; preds = %24, %15
  %21 = phi ptr [ %22, %24 ], [ %3, %15 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %16, align 8, !tbaa !105
  %26 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %25) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %20, label %35, !llvm.loop !174

28:                                               ; preds = %20
  br i1 %13, label %29, label %35

29:                                               ; preds = %28
  %30 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 1
  %31 = load ptr, ptr %30, align 8, !tbaa !137
  %32 = load ptr, ptr %16, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.73.333, ptr noundef %31, ptr noundef %32) #29
  br label %45

33:                                               ; preds = %93, %77
  %34 = phi ptr [ @.str.41.294, %93 ], [ @.str.81.334, %77 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %34) #29
  br label %35

35:                                               ; preds = %33, %28, %24
  %36 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !22
  %38 = icmp eq ptr %37, null
  br i1 %38, label %96, label %15, !llvm.loop !175

39:                                               ; preds = %15
  %40 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !137
  %42 = load ptr, ptr %16, align 8, !tbaa !105
  br i1 %13, label %43, label %44

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.74.335, ptr noundef %41, ptr noundef %42) #29
  br label %45

44:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.75.336, ptr noundef %41, ptr noundef %42) #29
  br label %45

45:                                               ; preds = %44, %43, %29
  %46 = phi ptr [ %18, %43 ], [ %18, %44 ], [ null, %29 ]
  %47 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 3
  %48 = load ptr, ptr %47, align 8, !tbaa !176
  %49 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %48, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %77, label %52

52:                                               ; preds = %71, %45
  %53 = phi ptr [ %75, %71 ], [ %50, %45 ]
  %54 = phi i32 [ %73, %71 ], [ 0, %45 ]
  %55 = phi i1 [ true, %71 ], [ false, %45 ]
  %56 = phi i32 [ %72, %71 ], [ 1, %45 ]
  %57 = icmp eq i32 %54, 0
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.337) #29
  br label %59

59:                                               ; preds = %58, %52
  %60 = load ptr, ptr %53, align 8, !tbaa !67
  %61 = icmp eq ptr %60, null
  br i1 %55, label %65, label %62

62:                                               ; preds = %59
  %63 = zext i1 %61 to i32
  %64 = add nsw i32 %56, %63
  br label %71

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._tagTreeCCParam, ptr %53, i64 0, i32 1
  %67 = load ptr, ptr %66, align 8, !tbaa !61
  br i1 %61, label %69, label %68

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.338, ptr noundef %67, ptr noundef nonnull %60) #29
  br label %71

69:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.76.339, ptr noundef %67, i32 noundef %56) #29
  %70 = add nsw i32 %56, 1
  br label %71

71:                                               ; preds = %69, %68, %62
  %72 = phi i32 [ %64, %62 ], [ %56, %68 ], [ %70, %69 ]
  %73 = phi i32 [ %54, %62 ], [ 1, %68 ], [ 1, %69 ]
  %74 = getelementptr inbounds %struct._tagTreeCCParam, ptr %53, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !22
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %52, !llvm.loop !177

77:                                               ; preds = %71, %45
  br i1 %19, label %33, label %78

78:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.308) #29
  %79 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %46, i64 0, i32 7
  %80 = load i64, ptr %79, align 8, !tbaa !120
  %81 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %46, i64 0, i32 6
  %82 = load ptr, ptr %81, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %80, ptr noundef %82) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.77.340) #29
  %83 = load ptr, ptr %47, align 8, !tbaa !176
  %84 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !52
  %86 = load ptr, ptr %85, align 8, !tbaa !67
  %87 = icmp eq ptr %86, null
  br i1 %87, label %93, label %88

88:                                               ; preds = %78
  %89 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %86, ptr noundef nonnull dereferenceable(5) @.str.78.341) #32
  %90 = icmp eq i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %88
  %92 = load ptr, ptr %14, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79.342, ptr noundef %92, ptr noundef nonnull %86) #29
  br label %93

93:                                               ; preds = %91, %88, %78
  %94 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %46, i64 0, i32 1
  %95 = load ptr, ptr %94, align 8, !tbaa !122
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %95, i32 noundef 1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.80.284) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %33

96:                                               ; preds = %35, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.355(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 64
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.23.358, ptr noundef %22, ptr noundef %22) #29
  br label %30

23:                                               ; preds = %14
  %24 = and i16 %17, 32
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !101
  br i1 %25, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.24.359, ptr noundef %27, ptr noundef %27) #29
  br label %30

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.25.360, ptr noundef %27, ptr noundef %27) #29
  br label %30

30:                                               ; preds = %29, %28, %20
  %31 = tail call fastcc i32 @FactoryCreateParams.361(ptr noundef %15, ptr noundef nonnull %1) #31
  %32 = load i16, ptr %16, align 8
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.27.308) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.14.312) #29
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.28.362, ptr noundef %37) #29
  tail call fastcc void @FactoryInvokeParams.363(ptr noundef %15, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.26.364) #29
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ @.str.18.319, %35 ], [ @.str.26.364, %30 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %39) #29
  br label %40

40:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.361(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.361(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %26, %7
  %13 = phi ptr [ %29, %26 ], [ %10, %7 ]
  %14 = phi i32 [ %27, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.29.337) #29
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !131
  %25 = load ptr, ptr %13, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.30.338, ptr noundef %24, ptr noundef %25) #29
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %28 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !178

31:                                               ; preds = %26, %7
  %32 = phi i32 [ %8, %7 ], [ %27, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.363(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.363(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.29.337) #29
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.31.343, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !179

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateJava(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !14
  %4 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %3) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @CreateNodeStreams) #29
  tail call void @TreeCCOperationVisitAll(ptr noundef %0, ptr noundef nonnull @CreateNonVirtualStreams) #29
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %32, label %8

8:                                                ; preds = %1
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %10

10:                                               ; preds = %28, %8
  %11 = phi ptr [ %6, %8 ], [ %30, %28 ]
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %11, i64 0, i32 7
  %13 = load i8, ptr %12, align 4
  %14 = and i8 %13, 4
  %15 = icmp eq i8 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %10
  tail call void @TreeCCStreamSourceTop(ptr noundef nonnull %11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %11, ptr noundef nonnull @.str.27.371) #29
  %17 = load ptr, ptr %9, align 8, !tbaa !148
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %11, ptr noundef nonnull @.str.41.372, ptr noundef nonnull %17) #29
  br label %20

20:                                               ; preds = %19, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %11, ptr noundef nonnull @.str.42.373) #29
  %21 = load i8, ptr %12, align 4
  br label %22

22:                                               ; preds = %20, %10
  %23 = phi i8 [ %21, %20 ], [ %13, %10 ]
  %24 = and i8 %23, 8
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = and i8 %23, -17
  store i8 %27, ptr %12, align 4
  br label %28

28:                                               ; preds = %26, %22
  %29 = getelementptr inbounds %struct._tagTreeCCStream, ptr %11, i64 0, i32 10
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %10, !llvm.loop !180

32:                                               ; preds = %28, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DeclareTypeDefs.374) #29
  %33 = load ptr, ptr %2, align 8, !tbaa !14
  %34 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %33) #29
  %35 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %36 = load i16, ptr %35, align 8
  %37 = and i16 %36, 72
  %38 = icmp eq i16 %37, 72
  %39 = load ptr, ptr %2, align 8, !tbaa !14
  %40 = select i1 %38, ptr @.str.45.375, ptr @.str.46.376
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull %40, ptr noundef %39) #29
  %41 = load i16, ptr %35, align 8
  %42 = and i16 %41, 8
  %43 = icmp eq i16 %42, 0
  br i1 %43, label %44, label %50

44:                                               ; preds = %32
  %45 = load ptr, ptr %2, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.47.377, ptr noundef %45) #29
  %46 = load ptr, ptr %2, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.48.378, ptr noundef %46) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.11.379) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.49.380) #29
  %47 = load ptr, ptr %2, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.50.381, ptr noundef %47) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.51.382) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.52.383) #29
  %48 = load i16, ptr %35, align 8
  %49 = and i16 %48, 8
  br label %50

50:                                               ; preds = %44, %32
  %51 = phi i16 [ %49, %44 ], [ %42, %32 ]
  %52 = icmp eq i16 %51, 0
  %53 = load ptr, ptr %2, align 8, !tbaa !14
  %54 = select i1 %52, ptr @.str.54.384, ptr @.str.53.385
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull %54, ptr noundef %53) #29
  %55 = load i16, ptr %35, align 8
  %56 = and i16 %55, 8
  %57 = icmp eq i16 %56, 0
  br i1 %57, label %60, label %58

58:                                               ; preds = %50
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.386) #29
  %59 = load i16, ptr %35, align 8
  br label %60

60:                                               ; preds = %58, %50
  %61 = phi i16 [ %59, %58 ], [ %55, %50 ]
  %62 = and i16 %61, 2
  %63 = icmp eq i16 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.55.387) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.56.388) #29
  br label %65

65:                                               ; preds = %64, %60
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %34, ptr noundef nonnull @.str.26.389) #29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls.390) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsJava) #29
  %66 = load ptr, ptr %5, align 8, !tbaa !22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %83, label %68

68:                                               ; preds = %79, %65
  %69 = phi ptr [ %81, %79 ], [ %66, %65 ]
  %70 = getelementptr inbounds %struct._tagTreeCCStream, ptr %69, i64 0, i32 7
  %71 = load i8, ptr %70, align 4
  %72 = and i8 %71, 24
  %73 = icmp eq i8 %72, 8
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call void @TreeCCStreamClear(ptr noundef nonnull %69) #29
  br label %79

75:                                               ; preds = %68
  %76 = and i8 %71, 4
  %77 = icmp eq i8 %76, 0
  br i1 %77, label %78, label %79

78:                                               ; preds = %75
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %69) #29
  br label %79

79:                                               ; preds = %78, %75, %74
  %80 = getelementptr inbounds %struct._tagTreeCCStream, ptr %69, i64 0, i32 10
  %81 = load ptr, ptr %80, align 8, !tbaa !22
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %68, !llvm.loop !181

83:                                               ; preds = %79, %65
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @CreateNodeStreams(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #29
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @CreateNonVirtualStreams(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 1
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !41
  %10 = icmp eq ptr %9, null
  br i1 %10, label %13, label %11

11:                                               ; preds = %7
  %12 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef nonnull %9) #29
  br label %16

13:                                               ; preds = %7
  %14 = load ptr, ptr %1, align 8, !tbaa !42
  %15 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %14) #29
  br label %16

16:                                               ; preds = %13, %11, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.374(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !101
  %10 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #29
  %11 = load ptr, ptr %8, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.43.482, ptr noundef %11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.15.422) #29
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %26, %7
  %16 = phi ptr [ %29, %26 ], [ %13, %7 ]
  %17 = phi i32 [ %27, %26 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.483, ptr noundef %24, i32 noundef %17) #29
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ %25, %22 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !182

31:                                               ; preds = %26, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.26.389) #29
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.386(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !14
  %10 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #29
  %11 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  %17 = select i1 %14, ptr @.str.58.477, ptr @.str.57.478
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %17, ptr noundef %16, ptr noundef %16) #29
  %18 = tail call fastcc i32 @FactoryCreateParams.479(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %1) #31
  %19 = load i16, ptr %11, align 8
  %20 = and i16 %19, 64
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.420) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.11.379) #29
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.480, ptr noundef %24) #29
  tail call fastcc void @FactoryInvokeParams.481(ptr noundef %10, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.32.412) #29
  br label %25

25:                                               ; preds = %22, %7
  %26 = phi ptr [ @.str.52.383, %22 ], [ @.str.32.412, %7 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %26) #29
  br label %27

27:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.390(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %147

7:                                                ; preds = %2
  %8 = tail call i32 @TreeCCNodeHasAbstracts(ptr noundef %0, ptr noundef nonnull %1) #29
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !101
  %11 = tail call ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %10) #29
  %12 = load ptr, ptr %1, align 8, !tbaa !104
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i32 %8, 0
  br i1 %13, label %21, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %9, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  br i1 %14, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.60.433, ptr noundef %16, ptr noundef %18) #29
  br label %44

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.61.434, ptr noundef %16, ptr noundef %18) #29
  br label %44

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !152
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %9, align 8, !tbaa !101
  br i1 %14, label %29, label %26

26:                                               ; preds = %21
  br i1 %24, label %28, label %27

27:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.60.433, ptr noundef %25, ptr noundef nonnull %23) #29
  br label %32

28:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.62.435, ptr noundef %25) #29
  br label %32

29:                                               ; preds = %21
  br i1 %24, label %31, label %30

30:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.61.434, ptr noundef %25, ptr noundef nonnull %23) #29
  br label %32

31:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.63.436, ptr noundef %25) #29
  br label %32

32:                                               ; preds = %31, %30, %28, %27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.64.437) #29
  %33 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.65.438) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.66.439) #29
  br label %38

38:                                               ; preds = %37, %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.27.371) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.67.440) #29
  %39 = load i16, ptr %33, align 8
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.68.441) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.69.442) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.70.443) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.71.444) #29
  br label %43

43:                                               ; preds = %42, %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.27.371) #29
  br label %44

44:                                               ; preds = %43, %20, %19
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !102
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.72.445, i32 noundef %46) #29
  %47 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %62, %44
  %51 = phi ptr [ %66, %62 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct._tagTreeCCField, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !131
  %54 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %53) #29
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct._tagTreeCCNode, ptr %54, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !66
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi ptr [ %53, %61 ], [ @.str.12.416, %56 ]
  %64 = load ptr, ptr %51, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.94.446, ptr noundef %63, ptr noundef %64) #29
  %65 = getelementptr inbounds %struct._tagTreeCCField, ptr %51, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !183

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.27.371) #29
  br label %69

69:                                               ; preds = %68, %44
  %70 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %71 = load i16, ptr %70, align 8
  %72 = and i16 %71, 8
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %78, label %74

74:                                               ; preds = %69
  %75 = and i16 %71, 96
  %76 = icmp eq i16 %75, 0
  %77 = select i1 %76, ptr @.str.74.447, ptr @.str.73.448
  br label %83

78:                                               ; preds = %69
  %79 = load i32, ptr %3, align 8, !tbaa !66
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, ptr @.str.73.448, ptr @.str.75.449
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi ptr [ %82, %78 ], [ %77, %74 ]
  %85 = load ptr, ptr %9, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.76.450, ptr noundef nonnull %84, ptr noundef %85) #29
  %86 = load i16, ptr %70, align 8
  %87 = and i16 %86, 8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %91 = load ptr, ptr %90, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.77.451, ptr noundef %91) #29
  br label %92

92:                                               ; preds = %89, %83
  %93 = phi i32 [ 1, %89 ], [ 0, %83 ]
  %94 = tail call fastcc i32 @CreateParams.452(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull %1, i32 noundef %93) #31, !range !78
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.10.420) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #29
  %95 = load ptr, ptr %1, align 8, !tbaa !104
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.78.453) #29
  %98 = load i16, ptr %70, align 8
  %99 = and i16 %98, 8
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.79.454) #29
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ 1, %101 ], [ 0, %97 ]
  %104 = load ptr, ptr %1, align 8, !tbaa !104
  %105 = tail call fastcc i32 @InheritParamsSource.455(ptr noundef %11, ptr noundef %104, i32 noundef %103) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.32.412) #29
  br label %106

106:                                              ; preds = %102, %92
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.80.456) #29
  %107 = load i16, ptr %70, align 8
  %108 = and i16 %107, 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %1, align 8, !tbaa !104
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = and i16 %107, 8
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.81.457) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.82.458) #29
  br label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.83.459, ptr noundef %119) #29
  %120 = load ptr, ptr %118, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.84.460, ptr noundef %120) #29
  br label %121

121:                                              ; preds = %117, %116, %110, %106
  %122 = load ptr, ptr %47, align 8, !tbaa !22
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %138, %121
  %125 = phi ptr [ %140, %138 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !129
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load ptr, ptr %125, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.85.461, ptr noundef %131, ptr noundef %131) #29
  br label %138

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !134
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %125, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.85.461, ptr noundef %137, ptr noundef nonnull %134) #29
  br label %138

138:                                              ; preds = %136, %132, %130
  %139 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !22
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %124, !llvm.loop !184

142:                                              ; preds = %138, %121
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.52.383) #29
  tail call fastcc void @ImplementVirtuals.462(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.86.463) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.87.464) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.88.465) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.89.466) #29
  %143 = load ptr, ptr %1, align 8, !tbaa !104
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr @.str.91.467, ptr @.str.90.468
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull %145) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.52.383) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.92.469) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #29
  %146 = load ptr, ptr %9, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.93.470, ptr noundef %146) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.40.396) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.26.389) #29
  br label %147

147:                                              ; preds = %142, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenStart(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1024
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %12, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %10 = load i32, ptr %9, align 4, !tbaa !39
  %11 = icmp eq i32 %10, 3
  br i1 %11, label %13, label %12

12:                                               ; preds = %8, %3
  br label %13

13:                                               ; preds = %12, %8
  %14 = phi ptr [ @.str.1.430, %12 ], [ @.str.431, %8 ]
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !41
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.432, ptr noundef nonnull %14, ptr noundef nonnull %16) #29
  br label %21

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.432, ptr noundef nonnull %14, ptr noundef %20) #29
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @JavaGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSplitEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @JavaGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSwitchHead(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #31
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.14.425, ptr @.str.13.426
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #29
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.422) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSelector(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %11) #31
  %12 = load ptr, ptr %2, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.423, ptr noundef %14, ptr noundef %16) #29
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %22) #31
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.424, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndSelectors(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.422) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseFunc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !112
  %9 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %8) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %4
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi ptr [ %8, %16 ], [ @.str.12.416, %11 ]
  %19 = load ptr, ptr %5, align 8, !tbaa !116
  %20 = load ptr, ptr %19, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.417, ptr noundef %18, ptr noundef %20, i32 noundef %3) #29
  %21 = load ptr, ptr %5, align 8, !tbaa !116
  %22 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %21, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %92, label %25

25:                                               ; preds = %17
  %26 = load ptr, ptr %2, align 8, !tbaa !117
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  br label %28

28:                                               ; preds = %87, %25
  %29 = phi ptr [ %23, %25 ], [ %90, %87 ]
  %30 = phi i1 [ true, %25 ], [ false, %87 ]
  %31 = phi i32 [ 1, %25 ], [ %88, %87 ]
  %32 = phi ptr [ %26, %25 ], [ %53, %87 ]
  br i1 %30, label %34, label %33

33:                                               ; preds = %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %34

34:                                               ; preds = %33, %28
  %35 = getelementptr inbounds %struct._tagTreeCCParam, ptr %29, i64 0, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !59
  %37 = and i32 %36, 1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = load ptr, ptr %32, align 8, !tbaa !76
  %41 = getelementptr inbounds %struct._tagTreeCCNode, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = and i32 %42, 24
  %44 = icmp eq i32 %43, 0
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %40, i64 0, i32 4
  %46 = getelementptr inbounds %struct._tagTreeCCParam, ptr %29, i64 0, i32 1
  %47 = select i1 %44, ptr %45, ptr %46
  %48 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %32, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !118
  br label %52

50:                                               ; preds = %34
  %51 = getelementptr inbounds %struct._tagTreeCCParam, ptr %29, i64 0, i32 1
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi ptr [ %49, %39 ], [ %32, %50 ]
  %54 = phi ptr [ %47, %39 ], [ %51, %50 ]
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = load ptr, ptr %29, align 8, !tbaa !67
  %57 = icmp eq ptr %56, null
  %58 = load i32, ptr %27, align 4, !tbaa !39
  %59 = icmp eq i32 %58, 3
  br i1 %57, label %74, label %60

60:                                               ; preds = %52
  br i1 %59, label %61, label %62

61:                                               ; preds = %60
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %55, ptr noundef nonnull %56) #29
  br label %87

62:                                               ; preds = %60
  %63 = tail call ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %55) #29
  %64 = icmp eq ptr %63, null
  br i1 %64, label %70, label %65

65:                                               ; preds = %62
  %66 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 5
  %67 = load i32, ptr %66, align 8, !tbaa !66
  %68 = and i32 %67, 8
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %65, %62
  br label %71

71:                                               ; preds = %70, %65
  %72 = phi ptr [ %55, %70 ], [ @.str.12.416, %65 ]
  %73 = load ptr, ptr %29, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %72, ptr noundef %73) #29
  br label %87

74:                                               ; preds = %52
  br i1 %59, label %84, label %75

75:                                               ; preds = %74
  %76 = tail call ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %55) #29
  %77 = icmp eq ptr %76, null
  br i1 %77, label %83, label %78

78:                                               ; preds = %75
  %79 = getelementptr inbounds %struct._tagTreeCCNode, ptr %76, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !66
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %75
  br label %84

84:                                               ; preds = %83, %78, %74
  %85 = phi ptr [ %55, %74 ], [ %55, %83 ], [ @.str.12.416, %78 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %85, i32 noundef %31) #29
  %86 = add nsw i32 %31, 1
  br label %87

87:                                               ; preds = %84, %71, %61
  %88 = phi i32 [ %31, %61 ], [ %31, %71 ], [ %86, %84 ]
  %89 = getelementptr inbounds %struct._tagTreeCCParam, ptr %29, i64 0, i32 4
  %90 = load ptr, ptr %89, align 8, !tbaa !22
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %28, !llvm.loop !185

92:                                               ; preds = %87, %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.420) #29
  %93 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %94 = load i32, ptr %93, align 4, !tbaa !39
  %95 = icmp eq i32 %94, 3
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %98 = load i64, ptr %97, align 8, !tbaa !120
  %99 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %100 = load ptr, ptr %99, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %98, ptr noundef %100) #29
  br label %101

101:                                              ; preds = %96, %92
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.421) #29
  %102 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %103 = load ptr, ptr %102, align 8, !tbaa !122
  %104 = icmp eq ptr %103, null
  br i1 %104, label %106, label %105

105:                                              ; preds = %101
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %103, i32 noundef 1) #29
  br label %106

106:                                              ; preds = %105, %101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.389) #29
  %107 = load i32, ptr %93, align 4, !tbaa !39
  %108 = icmp eq i32 %107, 3
  br i1 %108, label %109, label %110

109:                                              ; preds = %106
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %110

110:                                              ; preds = %109, %106
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.371) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseCall(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.28.393) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.405) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.415, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.408, ptr noundef %44) #29
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.409, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.410, i32 noundef %28) #29
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !59
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.411) #29
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !186

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.412) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseInline(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !117
  %12 = shl nsw i32 %3, 1
  %13 = add nsw i32 %12, 4
  br label %14

14:                                               ; preds = %38, %10
  %15 = phi ptr [ %8, %10 ], [ %41, %38 ]
  %16 = phi ptr [ %11, %10 ], [ %39, %38 ]
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !66
  %28 = and i32 %27, 24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %13) #31
  %31 = load ptr, ptr %16, align 8, !tbaa !76
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !101
  %34 = load ptr, ptr %15, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.413, ptr noundef %33, ptr noundef %34, ptr noundef %33, ptr noundef %34) #29
  br label %35

35:                                               ; preds = %30, %24, %21
  %36 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %16, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi ptr [ %37, %35 ], [ %16, %14 ]
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !187

43:                                               ; preds = %38, %4
  %44 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !120
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %49, ptr noundef %51) #29
  br label %52

52:                                               ; preds = %47, %43
  %53 = shl nsw i32 %3, 1
  %54 = add nsw i32 %53, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %54) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.414) #29
  %55 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !122
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %56, i32 noundef %54) #29
  br label %59

59:                                               ; preds = %58, %52
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.389) #29
  %60 = load i32, ptr %44, align 4, !tbaa !39
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %63

62:                                               ; preds = %59
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %63

63:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseSplit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.28.393) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.405) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35.406, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !59
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !76
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !66
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.408, ptr noundef %44) #29
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !67
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.409, ptr noundef nonnull %46) #29
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.410, i32 noundef %28) #29
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !59
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !76
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !66
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.411) #29
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !118
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !22
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !188

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.412) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndCase(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.389) #29
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36.404) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndSwitch(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.37.398) #29
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %6) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.389) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenExit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.28.393) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.394, ptr noundef nonnull %10) #29
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.395) #29
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.396) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEnd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.389) #29
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.371) #29
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.397(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.16.399) #29
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !189

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.400, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #29
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @JavaGenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  %6 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !112
  %8 = load ptr, ptr %2, align 8, !tbaa !42
  br i1 %5, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.427, ptr noundef %7, ptr noundef %8, i32 noundef %3) #29
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.428, ptr noundef %7, ptr noundef %8) #29
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %64, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  br label %17

17:                                               ; preds = %60, %15
  %18 = phi ptr [ %13, %15 ], [ %62, %60 ]
  %19 = phi i1 [ true, %15 ], [ false, %60 ]
  %20 = phi i32 [ 1, %15 ], [ %44, %60 ]
  br i1 %19, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %16, align 4, !tbaa !39
  %24 = icmp eq i32 %23, 3
  %25 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !61
  br i1 %24, label %36, label %27

27:                                               ; preds = %22
  %28 = tail call ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %26) #29
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !66
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %30, %22
  %37 = phi ptr [ %26, %22 ], [ %26, %35 ], [ @.str.12.416, %30 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.429, ptr noundef %37) #29
  %38 = load ptr, ptr %18, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.409, ptr noundef nonnull %38) #29
  br label %43

41:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.410, i32 noundef %20) #29
  %42 = add nsw i32 %20, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %20, %40 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !59
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %60, label %49

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 1
  %51 = load ptr, ptr %50, align 8, !tbaa !61
  %52 = tail call ptr @TreeCCNodeFindByType(ptr noundef nonnull %0, ptr noundef %51) #29
  %53 = icmp eq ptr %52, null
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct._tagTreeCCNode, ptr %52, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %59, label %60

59:                                               ; preds = %54, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.411) #29
  br label %60

60:                                               ; preds = %59, %54, %43
  %61 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %17, !llvm.loop !190

64:                                               ; preds = %60, %11
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.420) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.379) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.452(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @CreateParams.452(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3) #31, !range !78
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %3, %4 ]
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !22
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %38, %9
  %15 = phi ptr [ %41, %38 ], [ %12, %9 ]
  %16 = phi i32 [ %39, %38 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !129
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %24

24:                                               ; preds = %23, %21
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !131
  %27 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %26) #29
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %27, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi ptr [ %26, %34 ], [ @.str.12.416, %29 ]
  %37 = load ptr, ptr %15, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %36, ptr noundef %37) #29
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi i32 [ 1, %35 ], [ %16, %14 ]
  %40 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !191

43:                                               ; preds = %38, %9
  %44 = phi i32 [ %10, %9 ], [ %39, %38 ]
  ret i32 %44
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.455(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.455(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.5.407) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.7.409, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !192

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.462(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.462(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %127, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %14

14:                                               ; preds = %123, %12
  %15 = phi ptr [ %10, %12 ], [ %125, %123 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %41

19:                                               ; preds = %23, %14
  %20 = phi ptr [ %21, %23 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 8, !tbaa !105
  %25 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %24) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %123, !llvm.loop !193

27:                                               ; preds = %19
  %28 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %29 = load ptr, ptr %28, align 8, !tbaa !137
  %30 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %29) #29
  %31 = icmp eq ptr %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct._tagTreeCCNode, ptr %30, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !66
  %35 = and i32 %34, 8
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32, %27
  br label %38

38:                                               ; preds = %37, %32
  %39 = phi ptr [ %29, %37 ], [ @.str.12.416, %32 ]
  %40 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.95.471, ptr noundef %39, ptr noundef %40) #29
  br label %55

41:                                               ; preds = %14
  %42 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %43 = load ptr, ptr %42, align 8, !tbaa !137
  %44 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %43) #29
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %41
  %47 = getelementptr inbounds %struct._tagTreeCCNode, ptr %44, i64 0, i32 5
  %48 = load i32, ptr %47, align 8, !tbaa !66
  %49 = and i32 %48, 8
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %46, %41
  br label %52

52:                                               ; preds = %51, %46
  %53 = phi ptr [ %43, %51 ], [ @.str.12.416, %46 ]
  %54 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.96.472, ptr noundef %53, ptr noundef %54) #29
  br label %55

55:                                               ; preds = %52, %38
  %56 = phi ptr [ %17, %52 ], [ null, %38 ]
  %57 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 3
  %58 = load ptr, ptr %57, align 8, !tbaa !176
  %59 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %58, i64 0, i32 4
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %106, label %62

62:                                               ; preds = %100, %55
  %63 = phi ptr [ %104, %100 ], [ %60, %55 ]
  %64 = phi i32 [ %102, %100 ], [ 0, %55 ]
  %65 = phi i1 [ true, %100 ], [ false, %55 ]
  %66 = phi i32 [ %101, %100 ], [ 1, %55 ]
  %67 = icmp eq i32 %64, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %69

69:                                               ; preds = %68, %62
  %70 = load ptr, ptr %63, align 8, !tbaa !67
  %71 = icmp eq ptr %70, null
  br i1 %65, label %75, label %72

72:                                               ; preds = %69
  %73 = zext i1 %71 to i32
  %74 = add nsw i32 %66, %73
  br label %100

75:                                               ; preds = %69
  %76 = getelementptr inbounds %struct._tagTreeCCParam, ptr %63, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !61
  %78 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %77) #29
  %79 = icmp eq ptr %78, null
  br i1 %71, label %90, label %80

80:                                               ; preds = %75
  br i1 %79, label %86, label %81

81:                                               ; preds = %80
  %82 = getelementptr inbounds %struct._tagTreeCCNode, ptr %78, i64 0, i32 5
  %83 = load i32, ptr %82, align 8, !tbaa !66
  %84 = and i32 %83, 8
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %81, %80
  br label %87

87:                                               ; preds = %86, %81
  %88 = phi ptr [ %77, %86 ], [ @.str.12.416, %81 ]
  %89 = load ptr, ptr %63, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %88, ptr noundef %89) #29
  br label %100

90:                                               ; preds = %75
  br i1 %79, label %96, label %91

91:                                               ; preds = %90
  %92 = getelementptr inbounds %struct._tagTreeCCNode, ptr %78, i64 0, i32 5
  %93 = load i32, ptr %92, align 8, !tbaa !66
  %94 = and i32 %93, 8
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %97

96:                                               ; preds = %91, %90
  br label %97

97:                                               ; preds = %96, %91
  %98 = phi ptr [ %77, %96 ], [ @.str.12.416, %91 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %98, i32 noundef %66) #29
  %99 = add nsw i32 %66, 1
  br label %100

100:                                              ; preds = %97, %87, %72
  %101 = phi i32 [ %74, %72 ], [ %66, %87 ], [ %99, %97 ]
  %102 = phi i32 [ %64, %72 ], [ 1, %87 ], [ 1, %97 ]
  %103 = getelementptr inbounds %struct._tagTreeCCParam, ptr %63, i64 0, i32 4
  %104 = load ptr, ptr %103, align 8, !tbaa !22
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %62, !llvm.loop !194

106:                                              ; preds = %100, %55
  br i1 %18, label %121, label %107

107:                                              ; preds = %106
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.420) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.379) #29
  %108 = load ptr, ptr %57, align 8, !tbaa !176
  %109 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %108, i64 0, i32 4
  %110 = load ptr, ptr %109, align 8, !tbaa !52
  %111 = load ptr, ptr %110, align 8, !tbaa !67
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %107
  %114 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(5) @.str.97.473) #32
  %115 = icmp eq i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %113
  %117 = load ptr, ptr %13, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.98.474, ptr noundef %117, ptr noundef nonnull %111) #29
  br label %118

118:                                              ; preds = %116, %113, %107
  %119 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %56, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !122
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %120, i32 noundef 1) #29
  br label %121

121:                                              ; preds = %118, %106
  %122 = phi ptr [ @.str.99.475, %118 ], [ @.str.100.476, %106 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %122) #29
  br label %123

123:                                              ; preds = %121, %23
  %124 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %125 = load ptr, ptr %124, align 8, !tbaa !22
  %126 = icmp eq ptr %125, null
  br i1 %126, label %127, label %14, !llvm.loop !195

127:                                              ; preds = %123, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.479(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @FactoryCreateParams.479(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %37, %8
  %14 = phi ptr [ %40, %37 ], [ %11, %8 ]
  %15 = phi i32 [ %38, %37 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.407) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !131
  %26 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %25) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi ptr [ %25, %33 ], [ @.str.12.416, %28 ]
  %36 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %35, ptr noundef %36) #29
  br label %37

37:                                               ; preds = %34, %13
  %38 = phi i32 [ 1, %34 ], [ %15, %13 ]
  %39 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !196

42:                                               ; preds = %37, %8
  %43 = phi i32 [ %9, %8 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.481(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.481(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.5.407) #29
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.7.409, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !197

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGeneratePHP(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %21, %1
  %6 = phi ptr [ %23, %21 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 7
  %8 = load i8, ptr %7, align 4
  %9 = and i8 %8, 4
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !166
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %6, ptr noundef nonnull @.str.35.486, ptr noundef %13) #29
  tail call void @TreeCCStreamSourceTopCS(ptr noundef nonnull %6) #29
  %14 = load i8, ptr %7, align 4
  br label %15

15:                                               ; preds = %11, %5
  %16 = phi i8 [ %14, %11 ], [ %8, %5 ]
  %17 = and i8 %16, 8
  %18 = icmp eq i8 %17, 0
  br i1 %18, label %21, label %19

19:                                               ; preds = %15
  %20 = and i8 %16, -17
  store i8 %20, ptr %7, align 4
  br label %21

21:                                               ; preds = %19, %15
  %22 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 10
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %5, !llvm.loop !198

25:                                               ; preds = %21, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DeclareTypeDefs.487) #29
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %27 = load ptr, ptr %26, align 8, !tbaa !97
  %28 = icmp eq ptr %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %25
  tail call fastcc void @ImplementStateType.488(ptr noundef nonnull %0, ptr noundef nonnull %27) #31
  br label %33

30:                                               ; preds = %25
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %32 = load ptr, ptr %31, align 8, !tbaa !98
  tail call fastcc void @ImplementStateType.488(ptr noundef nonnull %0, ptr noundef %32) #31
  br label %33

33:                                               ; preds = %30, %29
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls.489) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsPHP) #29
  %34 = load ptr, ptr %2, align 8, !tbaa !22
  %35 = icmp eq ptr %34, null
  br i1 %35, label %51, label %36

36:                                               ; preds = %47, %33
  %37 = phi ptr [ %49, %47 ], [ %34, %33 ]
  %38 = getelementptr inbounds %struct._tagTreeCCStream, ptr %37, i64 0, i32 7
  %39 = load i8, ptr %38, align 4
  %40 = and i8 %39, 24
  %41 = icmp eq i8 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %36
  tail call void @TreeCCStreamClear(ptr noundef nonnull %37) #29
  br label %47

43:                                               ; preds = %36
  %44 = and i8 %39, 4
  %45 = icmp eq i8 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %43
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %37) #29
  br label %47

47:                                               ; preds = %46, %43, %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %37, ptr noundef nonnull @.str.87.490) #29
  %48 = getelementptr inbounds %struct._tagTreeCCStream, ptr %37, i64 0, i32 10
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %36, !llvm.loop !199

51:                                               ; preds = %47, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.487(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  br label %15

15:                                               ; preds = %27, %13
  %16 = phi ptr [ %11, %13 ], [ %30, %27 ]
  %17 = phi i32 [ 1, %13 ], [ %28, %27 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %14, align 8, !tbaa !101
  %24 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.36.583, ptr noundef %23, ptr noundef %25, i32 noundef %17) #29
  %26 = add nsw i32 %17, 1
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i32 [ %26, %22 ], [ %17, %15 ]
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !200

32:                                               ; preds = %27, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.37.584) #29
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.488(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.570, ptr noundef %5) #29
  %6 = load i16, ptr %3, align 8
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %15

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.571) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.526) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.572) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.41.573) #29
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.42.574, ptr noundef %11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.43.575) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.44.552) #29
  %12 = load i16, ptr %3, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %17, label %15

15:                                               ; preds = %9, %2
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.576) #29
  %16 = load i16, ptr %3, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = phi i16 [ %16, %15 ], [ %12, %9 ]
  %19 = and i16 %18, 2
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.45.577) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.46.578) #29
  br label %22

22:                                               ; preds = %21, %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.47.562) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.489(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %115

7:                                                ; preds = %2
  %8 = tail call i32 @TreeCCNodeHasAbstracts(ptr noundef %0, ptr noundef nonnull %1) #29
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = load ptr, ptr %1, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !102
  %17 = select i1 %12, ptr @.str.51.528, ptr @.str.50.529
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %17, ptr noundef %14, i32 noundef %16) #29
  %18 = load ptr, ptr %1, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !101
  br i1 %19, label %25, label %22

22:                                               ; preds = %7
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %18, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.52.530, ptr noundef %21, ptr noundef %24) #29
  br label %37

25:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.527, ptr noundef %21) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.53.531) #29
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.54.532) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.55.533) #29
  br label %31

31:                                               ; preds = %30, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.21.492) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.56.534) #29
  %32 = load i16, ptr %26, align 8
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.57.535) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.536) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.537) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.60.538) #29
  br label %36

36:                                               ; preds = %35, %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.21.492) #29
  br label %37

37:                                               ; preds = %36, %22
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %39 = load ptr, ptr %38, align 8, !tbaa !22
  %40 = icmp eq ptr %39, null
  br i1 %40, label %48, label %41

41:                                               ; preds = %41, %37
  %42 = phi ptr [ %45, %41 ], [ %39, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.79.539, ptr noundef %43) #29
  %44 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !22
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %41, !llvm.loop !201

47:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.21.492) #29
  br label %48

48:                                               ; preds = %47, %37
  %49 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %50 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.62.540, ptr noundef nonnull @.str.61.541, ptr noundef %51) #29
  %52 = load i16, ptr %49, align 8
  %53 = and i16 %52, 8
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %56, label %55

55:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.63.542) #29
  br label %56

56:                                               ; preds = %55, %48
  %57 = phi i32 [ 1, %55 ], [ 0, %48 ]
  %58 = tail call fastcc i32 @CreateParams.543(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %57) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.517) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #29
  %59 = load ptr, ptr %1, align 8, !tbaa !104
  %60 = icmp eq ptr %59, null
  br i1 %60, label %72, label %61

61:                                               ; preds = %56
  %62 = getelementptr inbounds %struct._tagTreeCCNode, ptr %59, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.64.544, ptr noundef %63) #29
  %64 = load i16, ptr %49, align 8
  %65 = and i16 %64, 8
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %68, label %67

67:                                               ; preds = %61
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.63.542) #29
  br label %68

68:                                               ; preds = %67, %61
  %69 = phi i32 [ 1, %67 ], [ 0, %61 ]
  %70 = load ptr, ptr %1, align 8, !tbaa !104
  %71 = tail call fastcc i32 @InheritParamsSource.545(ptr noundef %10, ptr noundef %70, i32 noundef %69) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.25.511) #29
  br label %72

72:                                               ; preds = %68, %56
  %73 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.65.546, ptr noundef %73) #29
  %74 = load i16, ptr %49, align 8
  %75 = and i16 %74, 2
  %76 = icmp eq i16 %75, 0
  br i1 %76, label %88, label %77

77:                                               ; preds = %72
  %78 = load ptr, ptr %1, align 8, !tbaa !104
  %79 = icmp eq ptr %78, null
  br i1 %79, label %80, label %88

80:                                               ; preds = %77
  %81 = and i16 %74, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %84, label %83

83:                                               ; preds = %80
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.66.547) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.67.548) #29
  br label %88

84:                                               ; preds = %80
  %85 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.68.549, ptr noundef %86) #29
  %87 = load ptr, ptr %85, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.69.550, ptr noundef %87) #29
  br label %88

88:                                               ; preds = %84, %83, %77, %72
  %89 = load ptr, ptr %38, align 8, !tbaa !22
  %90 = icmp eq ptr %89, null
  br i1 %90, label %109, label %91

91:                                               ; preds = %105, %88
  %92 = phi ptr [ %107, %105 ], [ %89, %88 ]
  %93 = getelementptr inbounds %struct._tagTreeCCField, ptr %92, i64 0, i32 3
  %94 = load i32, ptr %93, align 8, !tbaa !129
  %95 = and i32 %94, 1
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %99

97:                                               ; preds = %91
  %98 = load ptr, ptr %92, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.70.551, ptr noundef %98, ptr noundef %98) #29
  br label %105

99:                                               ; preds = %91
  %100 = getelementptr inbounds %struct._tagTreeCCField, ptr %92, i64 0, i32 2
  %101 = load ptr, ptr %100, align 8, !tbaa !134
  %102 = icmp eq ptr %101, null
  br i1 %102, label %105, label %103

103:                                              ; preds = %99
  %104 = load ptr, ptr %92, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.70.551, ptr noundef %104, ptr noundef nonnull %101) #29
  br label %105

105:                                              ; preds = %103, %99, %97
  %106 = getelementptr inbounds %struct._tagTreeCCField, ptr %92, i64 0, i32 6
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %91, !llvm.loop !202

109:                                              ; preds = %105, %88
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.552) #29
  tail call fastcc void @ImplementVirtuals.553(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.71.554) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #29
  %110 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.72.555, ptr noundef %110) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.73.556) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.74.557) #29
  %111 = load ptr, ptr %1, align 8, !tbaa !104
  %112 = icmp eq ptr %111, null
  %113 = select i1 %112, ptr @.str.76.558, ptr @.str.75.559
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %113) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.552) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.77.560) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #29
  %114 = load ptr, ptr %50, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.78.561, ptr noundef %114) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.34.496) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.47.562) #29
  br label %115

115:                                              ; preds = %109, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenStart(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.527, ptr noundef nonnull %5) #29
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.527, ptr noundef %9) #29
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @PHPGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSplitEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @PHPGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSwitchHead(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #31
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.10.522, ptr @.str.9.523
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #29
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSelector(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %11) #31
  %12 = load ptr, ptr %2, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.520, ptr noundef %14, ptr noundef %16) #29
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %22) #31
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.521, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndSelectors(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseFunc(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = load ptr, ptr %6, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.516, ptr noundef %7, i32 noundef %3) #29
  %8 = load ptr, ptr %5, align 8, !tbaa !116
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %23, %4
  %13 = phi ptr [ %26, %23 ], [ %10, %4 ]
  %14 = phi i1 [ false, %23 ], [ true, %4 ]
  %15 = phi i32 [ %24, %23 ], [ 1, %4 ]
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.507) #29
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %13, align 8, !tbaa !67
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %18) #29
  br label %23

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %15) #29
  %22 = add nsw i32 %15, 1
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ %15, %20 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !203

28:                                               ; preds = %23, %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.517) #29
  %29 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !39
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !120
  %35 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %34, ptr noundef %36) #29
  br label %37

37:                                               ; preds = %32, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.518) #29
  %38 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !122
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %39, i32 noundef 1) #29
  br label %42

42:                                               ; preds = %41, %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  %43 = load i32, ptr %29, align 4, !tbaa !39
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %46

45:                                               ; preds = %42
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %46

46:                                               ; preds = %45, %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.492) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseCall(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.22.493) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.514, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %53, %23
  %26 = phi ptr [ %56, %53 ], [ %21, %23 ]
  %27 = phi i1 [ false, %53 ], [ true, %23 ]
  %28 = phi i32 [ %38, %53 ], [ 1, %23 ]
  %29 = phi ptr [ %54, %53 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.507) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %26, align 8, !tbaa !67
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %32) #29
  br label %37

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %28) #29
  %36 = add nsw i32 %28, 1
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %28, %34 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !59
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %29, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = and i32 %46, 24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.510) #29
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !118
  br label %53

53:                                               ; preds = %50, %37
  %54 = phi ptr [ %52, %50 ], [ %29, %37 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %25, !llvm.loop !204

58:                                               ; preds = %53, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseInline(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !117
  %12 = shl nsw i32 %3, 1
  %13 = add nsw i32 %12, 4
  br label %14

14:                                               ; preds = %35, %10
  %15 = phi ptr [ %8, %10 ], [ %38, %35 ]
  %16 = phi ptr [ %11, %10 ], [ %36, %35 ]
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !59
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !76
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !66
  %28 = and i32 %27, 24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %13) #31
  %31 = load ptr, ptr %15, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.512, ptr noundef %31, ptr noundef %31) #29
  br label %32

32:                                               ; preds = %30, %24, %21
  %33 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %16, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !118
  br label %35

35:                                               ; preds = %32, %14
  %36 = phi ptr [ %34, %32 ], [ %16, %14 ]
  %37 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14, !llvm.loop !205

40:                                               ; preds = %35, %4
  %41 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !120
  %47 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %46, ptr noundef %48) #29
  br label %49

49:                                               ; preds = %44, %40
  %50 = shl nsw i32 %3, 1
  %51 = add nsw i32 %50, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %51) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #29
  %52 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !122
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %53, i32 noundef %51) #29
  br label %56

56:                                               ; preds = %55, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  %57 = load i32, ptr %41, align 4, !tbaa !39
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %56
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %60

60:                                               ; preds = %59, %56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseSplit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !112
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.22.493) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #29
  %15 = load ptr, ptr %8, align 8, !tbaa !116
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28.506, ptr noundef %18, i32 noundef %3) #29
  %19 = load ptr, ptr %8, align 8, !tbaa !116
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !117
  br label %25

25:                                               ; preds = %53, %23
  %26 = phi ptr [ %56, %53 ], [ %21, %23 ]
  %27 = phi i1 [ false, %53 ], [ true, %23 ]
  %28 = phi i32 [ %38, %53 ], [ 1, %23 ]
  %29 = phi ptr [ %54, %53 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.507) #29
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %26, align 8, !tbaa !67
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %32) #29
  br label %37

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.509, i32 noundef %28) #29
  %36 = add nsw i32 %28, 1
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %28, %34 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !59
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %29, align 8, !tbaa !76
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !66
  %47 = and i32 %46, 24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.510) #29
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !118
  br label %53

53:                                               ; preds = %50, %37
  %54 = phi ptr [ %52, %50 ], [ %29, %37 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %25, !llvm.loop !206

58:                                               ; preds = %53, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndCase(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.504) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndSwitch(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.498) #29
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %6) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenExit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.22.493) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.494, ptr noundef nonnull %10) #29
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.495) #29
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.496) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEnd(ptr nocapture noundef readonly %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.492) #29
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.497(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.12.499) #29
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !207

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.500, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #29
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PHPGenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  %6 = load ptr, ptr %2, align 8, !tbaa !42
  br i1 %5, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.1.524, ptr noundef %6, i32 noundef %3) #29
  br label %9

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.525, ptr noundef %6) #29
  br label %9

9:                                                ; preds = %8, %7
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %41, %9
  %14 = phi ptr [ %43, %41 ], [ %11, %9 ]
  %15 = phi i1 [ false, %41 ], [ true, %9 ]
  %16 = phi i32 [ %25, %41 ], [ 1, %9 ]
  br i1 %15, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.507) #29
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %14, align 8, !tbaa !67
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %19) #29
  br label %24

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %16) #29
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ %16, %21 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !59
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !61
  %33 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %32) #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !66
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.510) #29
  br label %41

41:                                               ; preds = %40, %35, %24
  %42 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !llvm.loop !208

45:                                               ; preds = %41, %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.517) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.526) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.543(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.543(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.507) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.80.569, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !209

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.545(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.545(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.507) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !210

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.553(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.553(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %84, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  br label %14

14:                                               ; preds = %30, %12
  %15 = phi ptr [ %10, %12 ], [ %32, %30 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !105
  %17 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %16) #29
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %23, %14
  %20 = phi ptr [ %21, %23 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !104
  %22 = icmp eq ptr %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %19
  %24 = load ptr, ptr %15, align 8, !tbaa !105
  %25 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %24) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %19, label %30, !llvm.loop !211

27:                                               ; preds = %19
  br i1 %13, label %34, label %30

28:                                               ; preds = %81, %66
  %29 = phi ptr [ @.str.21.492, %81 ], [ @.str.86.563, %66 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %29) #29
  br label %30

30:                                               ; preds = %28, %27, %23
  %31 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %84, label %14, !llvm.loop !212

34:                                               ; preds = %27, %14
  %35 = phi ptr [ @.str.81.564, %27 ], [ @.str.82.565, %14 ]
  %36 = phi ptr [ null, %27 ], [ %17, %14 ]
  %37 = load ptr, ptr %15, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %35, ptr noundef %37) #29
  %38 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %66, label %43

43:                                               ; preds = %60, %34
  %44 = phi ptr [ %64, %60 ], [ %41, %34 ]
  %45 = phi i32 [ %62, %60 ], [ 0, %34 ]
  %46 = phi i1 [ true, %60 ], [ false, %34 ]
  %47 = phi i32 [ %61, %60 ], [ 1, %34 ]
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.507) #29
  br label %50

50:                                               ; preds = %49, %43
  %51 = load ptr, ptr %44, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  br i1 %46, label %56, label %53

53:                                               ; preds = %50
  %54 = zext i1 %52 to i32
  %55 = add nsw i32 %47, %54
  br label %60

56:                                               ; preds = %50
  br i1 %52, label %58, label %57

57:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.83.566, ptr noundef nonnull %51) #29
  br label %60

58:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %47) #29
  %59 = add nsw i32 %47, 1
  br label %60

60:                                               ; preds = %58, %57, %53
  %61 = phi i32 [ %55, %53 ], [ %47, %57 ], [ %59, %58 ]
  %62 = phi i32 [ %45, %53 ], [ 1, %57 ], [ 1, %58 ]
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !213

66:                                               ; preds = %60, %34
  br i1 %18, label %28, label %67

67:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.517) #29
  %68 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %69, ptr noundef %71) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.518) #29
  %72 = load ptr, ptr %38, align 8, !tbaa !176
  %73 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = load ptr, ptr %74, align 8, !tbaa !67
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.84.567) #32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.85.568, ptr noundef nonnull %75) #29
  br label %81

81:                                               ; preds = %80, %77, %67
  %82 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !122
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %83, i32 noundef 1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %28

84:                                               ; preds = %30, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.576(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.48.579, ptr noundef %18) #29
  %19 = tail call fastcc i32 @FactoryCreateParams.580(ptr noundef %15, ptr noundef nonnull %1) #31
  %20 = load i16, ptr %16, align 8
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.517) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.8.526) #29
  %24 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.49.581, ptr noundef %25) #29
  tail call fastcc void @FactoryInvokeParams.582(ptr noundef %15, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.25.511) #29
  br label %26

26:                                               ; preds = %23, %14
  %27 = phi ptr [ @.str.44.552, %23 ], [ @.str.25.511, %14 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %27) #29
  br label %28

28:                                               ; preds = %26, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.580(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.580(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %24, %7
  %13 = phi ptr [ %27, %24 ], [ %10, %7 ]
  %14 = phi i32 [ %25, %24 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.507) #29
  br label %22

22:                                               ; preds = %21, %19
  %23 = load ptr, ptr %13, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %23) #29
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %26 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !214

29:                                               ; preds = %24, %7
  %30 = phi i32 [ %8, %7 ], [ %25, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.582(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.582(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.507) #29
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !215

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCGenerateRuby(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !22
  %4 = icmp eq ptr %3, null
  br i1 %4, label %31, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %7

7:                                                ; preds = %27, %5
  %8 = phi ptr [ %3, %5 ], [ %29, %27 ]
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 7
  %10 = load i8, ptr %9, align 4
  %11 = and i8 %10, 4
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !166
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.27.587, ptr noundef %15) #29
  %16 = load ptr, ptr %6, align 8, !tbaa !148
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %8, ptr noundef nonnull @.str.28.588, ptr noundef nonnull %16) #29
  br label %19

19:                                               ; preds = %18, %13
  tail call void @TreeCCStreamSourceTopCS(ptr noundef nonnull %8) #29
  %20 = load i8, ptr %9, align 4
  br label %21

21:                                               ; preds = %19, %7
  %22 = phi i8 [ %20, %19 ], [ %10, %7 ]
  %23 = and i8 %22, 8
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %21
  %26 = and i8 %22, -17
  store i8 %26, ptr %9, align 4
  br label %27

27:                                               ; preds = %25, %21
  %28 = getelementptr inbounds %struct._tagTreeCCStream, ptr %8, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %7, !llvm.loop !216

31:                                               ; preds = %27, %1
  tail call void @TreeCCNodeVisitAll(ptr noundef %0, ptr noundef nonnull @DeclareTypeDefs.589) #29
  %32 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %33 = load ptr, ptr %32, align 8, !tbaa !97
  %34 = icmp eq ptr %33, null
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call fastcc void @ImplementStateType.590(ptr noundef nonnull %0, ptr noundef nonnull %33) #31
  br label %39

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !98
  tail call fastcc void @ImplementStateType.590(ptr noundef nonnull %0, ptr noundef %38) #31
  br label %39

39:                                               ; preds = %36, %35
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @BuildTypeDecls.591) #29
  tail call void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %0, ptr noundef nonnull @TreeCCNonVirtualFuncsRuby) #29
  %40 = load ptr, ptr %2, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %62, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  br label %44

44:                                               ; preds = %58, %42
  %45 = phi ptr [ %40, %42 ], [ %60, %58 ]
  %46 = getelementptr inbounds %struct._tagTreeCCStream, ptr %45, i64 0, i32 7
  %47 = load i8, ptr %46, align 4
  %48 = and i8 %47, 24
  %49 = icmp eq i8 %48, 8
  br i1 %49, label %50, label %51

50:                                               ; preds = %44
  tail call void @TreeCCStreamClear(ptr noundef nonnull %45) #29
  br label %58

51:                                               ; preds = %44
  %52 = and i8 %47, 4
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %51
  tail call void @TreeCCStreamSourceBottom(ptr noundef nonnull %45) #29
  %55 = load ptr, ptr %43, align 8, !tbaa !148
  %56 = icmp eq ptr %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %54
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %45, ptr noundef nonnull @.str.18.592) #29
  br label %58

58:                                               ; preds = %57, %54, %51, %50
  %59 = getelementptr inbounds %struct._tagTreeCCStream, ptr %45, i64 0, i32 10
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %44, !llvm.loop !217

62:                                               ; preds = %58, %39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.589(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !115
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.29.668, ptr noundef %11) #29
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %26, %7
  %16 = phi ptr [ %29, %26 ], [ %13, %7 ]
  %17 = phi i32 [ %27, %26 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !66
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  %25 = add nsw i32 %17, 1
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.30.669, ptr noundef %24, i32 noundef %17) #29
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ %25, %22 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !22
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !218

31:                                               ; preds = %26, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.31.648) #29
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.590(ptr noundef %0, ptr noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef %4) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.654) #29
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.655, ptr noundef %10) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.656) #29
  %11 = load ptr, ptr %3, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35.657, ptr noundef %11) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36.658) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.37.638) #29
  %12 = load i16, ptr %5, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i16 [ %12, %9 ], [ %6, %2 ]
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.659) #29
  %18 = load i16, ptr %5, align 8
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  tail call void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.660) #29
  %22 = load i16, ptr %5, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i16 [ %22, %21 ], [ %18, %17 ]
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.661) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.662) #29
  br label %28

28:                                               ; preds = %27, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.648) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.591(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %100

7:                                                ; preds = %2
  %8 = tail call i32 @TreeCCNodeHasAbstracts(ptr noundef %0, ptr noundef nonnull %1) #29
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !115
  %11 = load ptr, ptr %1, align 8, !tbaa !104
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  br i1 %12, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.621, ptr noundef %14, ptr noundef %17) #29
  br label %25

18:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.620, ptr noundef %14) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.45.622) #29
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.46.623) #29
  br label %24

24:                                               ; preds = %23, %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #29
  br label %25

25:                                               ; preds = %24, %15
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.47.624, ptr noundef %31) #29
  %32 = getelementptr inbounds %struct._tagTreeCCField, ptr %30, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !llvm.loop !219

35:                                               ; preds = %29, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #29
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !102
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.48.625, i32 noundef %37) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.49.626) #29
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 8
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.50.627) #29
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ 1, %42 ], [ 0, %35 ]
  %45 = tail call fastcc i32 @CreateParams.628(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %44) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #29
  %46 = load ptr, ptr %1, align 8, !tbaa !104
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.51.629) #29
  %49 = load i16, ptr %38, align 8
  %50 = and i16 %49, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.52.630) #29
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ 1, %52 ], [ 0, %48 ]
  %55 = tail call fastcc i32 @CreateParams.628(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %54) #31
  %56 = load ptr, ptr %1, align 8, !tbaa !104
  %57 = tail call fastcc i32 @InheritParamsSource.631(ptr noundef %10, ptr noundef %56, i32 noundef %54) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #29
  br label %58

58:                                               ; preds = %53, %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.53.632) #29
  %59 = load i16, ptr %38, align 8
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 8, !tbaa !104
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = and i16 %59, 8
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.54.633) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.55.634) #29
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.56.635, ptr noundef %71) #29
  %72 = load ptr, ptr %70, align 8, !tbaa !14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.57.636, ptr noundef %72) #29
  br label %73

73:                                               ; preds = %69, %68, %62, %58
  %74 = load ptr, ptr %26, align 8, !tbaa !22
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %90, %73
  %77 = phi ptr [ %92, %90 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !129
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load ptr, ptr %77, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.637, ptr noundef %83, ptr noundef %83) #29
  br label %90

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !134
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %77, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.637, ptr noundef %89, ptr noundef nonnull %86) #29
  br label %90

90:                                               ; preds = %88, %84, %82
  %91 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !22
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %76, !llvm.loop !220

94:                                               ; preds = %90, %73
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.37.638) #29
  tail call fastcc void @ImplementVirtuals.639(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.640) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.60.641) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.61.642) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.62.643) #29
  %95 = load ptr, ptr %1, align 8, !tbaa !104
  %96 = icmp eq ptr %95, null
  %97 = select i1 %96, ptr @.str.64.644, ptr @.str.63.645
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %97) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.37.638) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.65.646) #29
  %98 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %99 = load ptr, ptr %98, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.66.647, ptr noundef %99) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.26.596) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.31.648) #29
  br label %100

100:                                              ; preds = %94, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenStart(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !41
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef nonnull %5) #29
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef %9) #29
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @RubyGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSplitEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @RubyGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSwitchHead(ptr nocapture readnone %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #31
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.9.616, ptr @.str.8.617
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #29
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSelector(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !66
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %11) #31
  %12 = load ptr, ptr %2, align 8, !tbaa !104
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !101
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.614, ptr noundef %14, ptr noundef %16) #29
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %22) #31
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.615, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @Ruby_GenEndSelectors(ptr nocapture %0, ptr nocapture %1, i32 %2) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseFunc(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !41
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %6, align 8, !tbaa !42
  %11 = select i1 %9, ptr %10, ptr %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.613, ptr noundef %11, ptr noundef %10, i32 noundef %3) #29
  %12 = load ptr, ptr %5, align 8, !tbaa !116
  %13 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %27, %4
  %17 = phi ptr [ %30, %27 ], [ %14, %4 ]
  %18 = phi i1 [ false, %27 ], [ true, %4 ]
  %19 = phi i32 [ %28, %27 ], [ 1, %4 ]
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.605) #29
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %17, align 8, !tbaa !67
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %22) #29
  br label %27

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %19) #29
  %26 = add nsw i32 %19, 1
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %19, %24 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !22
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %16, !llvm.loop !221

32:                                               ; preds = %27, %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #29
  %33 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !122
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %34, i32 noundef 1) #29
  br label %37

37:                                               ; preds = %36, %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseCall(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = or i32 %6, 1
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.612, ptr noundef %10, i32 noundef %3) #29
  %11 = load ptr, ptr %8, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !117
  br label %17

17:                                               ; preds = %45, %15
  %18 = phi ptr [ %48, %45 ], [ %13, %15 ]
  %19 = phi i1 [ false, %45 ], [ true, %15 ]
  %20 = phi i32 [ %30, %45 ], [ 1, %15 ]
  %21 = phi ptr [ %46, %45 ], [ %16, %15 ]
  br i1 %19, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.605) #29
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %18, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %24) #29
  br label %29

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %20) #29
  %28 = add nsw i32 %20, 1
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %20, %26 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !59
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %21, align 8, !tbaa !76
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !66
  %39 = and i32 %38, 24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #29
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %21, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !118
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi ptr [ %44, %42 ], [ %21, %29 ]
  %47 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !22
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %17, !llvm.loop !222

50:                                               ; preds = %45, %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseInline(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !116
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = shl nsw i32 %3, 1
  %12 = add nsw i32 %11, 4
  br label %43

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !117
  %15 = shl nsw i32 %3, 1
  %16 = add nsw i32 %15, 4
  br label %17

17:                                               ; preds = %38, %13
  %18 = phi ptr [ %8, %13 ], [ %41, %38 ]
  %19 = phi ptr [ %14, %13 ], [ %39, %38 ]
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !59
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %38, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !67
  %26 = icmp eq ptr %25, null
  br i1 %26, label %35, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !76
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !66
  %31 = and i32 %30, 24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %27
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %16) #31
  %34 = load ptr, ptr %18, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.610, ptr noundef %34, ptr noundef %34) #29
  br label %35

35:                                               ; preds = %33, %27, %24
  %36 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %19, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !118
  br label %38

38:                                               ; preds = %35, %17
  %39 = phi ptr [ %37, %35 ], [ %19, %17 ]
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %17, !llvm.loop !223

43:                                               ; preds = %38, %10
  %44 = phi i32 [ %12, %10 ], [ %16, %38 ]
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %44) #31
  %45 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !122
  %47 = icmp eq ptr %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %43
  %49 = shl i32 %3, 2
  %50 = add i32 %49, 6
  tail call void @TreeCCStreamCodeIndentCustom(ptr noundef %1, ptr noundef nonnull %46, i8 noundef signext 32, i32 noundef %50) #29
  br label %51

51:                                               ; preds = %48, %43
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %44) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseSplit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #31
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !116
  %10 = load ptr, ptr %9, align 8, !tbaa !42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.604, ptr noundef %10, i32 noundef %3) #29
  %11 = load ptr, ptr %8, align 8, !tbaa !116
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !117
  br label %17

17:                                               ; preds = %58, %15
  %18 = phi ptr [ %61, %58 ], [ %13, %15 ]
  %19 = phi i1 [ false, %58 ], [ true, %15 ]
  %20 = phi i32 [ %44, %58 ], [ 1, %15 ]
  %21 = phi ptr [ %59, %58 ], [ %16, %15 ]
  br i1 %19, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.605) #29
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !59
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %21, align 8, !tbaa !76
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !66
  %32 = and i32 %31, 24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %29, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef %36) #29
  br label %37

37:                                               ; preds = %34, %28, %23
  %38 = load ptr, ptr %18, align 8, !tbaa !67
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %38) #29
  br label %43

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %20) #29
  %42 = add nsw i32 %20, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %20, %40 ], [ %42, %41 ]
  %45 = load i32, ptr %24, align 8, !tbaa !59
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %21, align 8, !tbaa !76
  %50 = getelementptr inbounds %struct._tagTreeCCNode, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !66
  %52 = and i32 %51, 24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #29
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !118
  br label %58

58:                                               ; preds = %55, %43
  %59 = phi ptr [ %57, %55 ], [ %21, %43 ]
  %60 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !22
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %17, !llvm.loop !224

63:                                               ; preds = %58, %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #29
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @Ruby_GenEndCase(ptr nocapture %0, ptr nocapture %1, i32 %2) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEndSwitch(ptr nocapture readnone %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %5) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.598) #29
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %6) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenExit(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !112
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.23.593) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !126
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.594, ptr noundef nonnull %10) #29
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.595) #29
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.596) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEnd(ptr nocapture readnone %0, ptr noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.597(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.11.599) #29
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !225

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = sext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.600, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #29
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @RubyGenEntry(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !41
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %10

8:                                                ; preds = %4
  %9 = load ptr, ptr %2, align 8, !tbaa !42
  br label %10

10:                                               ; preds = %8, %4
  %11 = phi ptr [ %9, %8 ], [ %6, %4 ]
  %12 = icmp eq i32 %3, -1
  %13 = load ptr, ptr %2, align 8, !tbaa !42
  br i1 %12, label %15, label %14

14:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.1.618, ptr noundef %11, ptr noundef %13, i32 noundef %3) #29
  br label %16

15:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.619, ptr noundef %11, ptr noundef %13) #29
  br label %16

16:                                               ; preds = %15, %14
  %17 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %52, label %20

20:                                               ; preds = %48, %16
  %21 = phi ptr [ %50, %48 ], [ %18, %16 ]
  %22 = phi i1 [ false, %48 ], [ true, %16 ]
  %23 = phi i32 [ %32, %48 ], [ 1, %16 ]
  br i1 %22, label %25, label %24

24:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.605) #29
  br label %25

25:                                               ; preds = %24, %20
  %26 = load ptr, ptr %21, align 8, !tbaa !67
  %27 = icmp eq ptr %26, null
  br i1 %27, label %29, label %28

28:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %26) #29
  br label %31

29:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %23) #29
  %30 = add nsw i32 %23, 1
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %23, %28 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 2
  %34 = load i32, ptr %33, align 8, !tbaa !59
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %48, label %37

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !61
  %40 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %39) #29
  %41 = icmp eq ptr %40, null
  br i1 %41, label %47, label %42

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %40, i64 0, i32 5
  %44 = load i32, ptr %43, align 8, !tbaa !66
  %45 = and i32 %44, 8
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %42, %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #29
  br label %48

48:                                               ; preds = %47, %42, %31
  %49 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 4
  %50 = load ptr, ptr %49, align 8, !tbaa !22
  %51 = icmp eq ptr %50, null
  br i1 %51, label %52, label %20, !llvm.loop !226

52:                                               ; preds = %48, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.628(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.628(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.605) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !227

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.631(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.631(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #31
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !129
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.605) #29
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !228

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.639(ptr noundef %0, ptr noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !104
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.639(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #31
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %85, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %15

15:                                               ; preds = %31, %12
  %16 = phi ptr [ %10, %12 ], [ %33, %31 ]
  %17 = load ptr, ptr %16, align 8, !tbaa !105
  %18 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %17) #29
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %35

20:                                               ; preds = %24, %15
  %21 = phi ptr [ %22, %24 ], [ %3, %15 ]
  %22 = load ptr, ptr %21, align 8, !tbaa !104
  %23 = icmp eq ptr %22, null
  br i1 %23, label %28, label %24

24:                                               ; preds = %20
  %25 = load ptr, ptr %16, align 8, !tbaa !105
  %26 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %22, ptr noundef %25) #29
  %27 = icmp eq ptr %26, null
  br i1 %27, label %20, label %31, !llvm.loop !229

28:                                               ; preds = %20
  br i1 %13, label %35, label %31

29:                                               ; preds = %82, %66
  %30 = phi ptr [ @.str.10.611, %82 ], [ @.str.71.649, %66 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %30) #29
  br label %31

31:                                               ; preds = %29, %28, %24
  %32 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !22
  %34 = icmp eq ptr %33, null
  br i1 %34, label %85, label %15, !llvm.loop !230

35:                                               ; preds = %28, %15
  %36 = phi ptr [ null, %28 ], [ %18, %15 ]
  %37 = load ptr, ptr %16, align 8, !tbaa !105
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.67.650, ptr noundef %37) #29
  %38 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %16, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !176
  %40 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !22
  %42 = icmp eq ptr %41, null
  br i1 %42, label %66, label %43

43:                                               ; preds = %60, %35
  %44 = phi ptr [ %64, %60 ], [ %41, %35 ]
  %45 = phi i32 [ %62, %60 ], [ 0, %35 ]
  %46 = phi i1 [ true, %60 ], [ false, %35 ]
  %47 = phi i32 [ %61, %60 ], [ 1, %35 ]
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.605) #29
  br label %50

50:                                               ; preds = %49, %43
  %51 = load ptr, ptr %44, align 8, !tbaa !67
  %52 = icmp eq ptr %51, null
  br i1 %46, label %56, label %53

53:                                               ; preds = %50
  %54 = zext i1 %52 to i32
  %55 = add nsw i32 %47, %54
  br label %60

56:                                               ; preds = %50
  br i1 %52, label %58, label %57

57:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %51) #29
  br label %60

58:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %47) #29
  %59 = add nsw i32 %47, 1
  br label %60

60:                                               ; preds = %58, %57, %53
  %61 = phi i32 [ %55, %53 ], [ %47, %57 ], [ %59, %58 ]
  %62 = phi i32 [ %45, %53 ], [ 1, %57 ], [ 1, %58 ]
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !231

66:                                               ; preds = %60, %35
  br i1 %19, label %29, label %67

67:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #29
  %68 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !120
  %70 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !121
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef %69, ptr noundef %71) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12.601) #29
  %72 = load ptr, ptr %38, align 8, !tbaa !176
  %73 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !52
  %75 = load ptr, ptr %74, align 8, !tbaa !67
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.69.652) #32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %14, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.70.653, ptr noundef %81, ptr noundef nonnull %75) #29
  br label %82

82:                                               ; preds = %80, %77, %67
  %83 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !122
  tail call void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %84, i32 noundef 1) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.596) #29
  tail call void @TreeCCStreamFixLine(ptr noundef %1) #29
  br label %29

85:                                               ; preds = %31, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.660(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !66
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !97
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !98
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.41.663, ptr noundef %17, ptr noundef %17) #29
  %18 = tail call fastcc i32 @FactoryCreateParams.664(ptr noundef %15, ptr noundef nonnull %1) #31
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #29
  %23 = load ptr, ptr %16, align 8, !tbaa !101
  br i1 %22, label %25, label %24

24:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.42.665, ptr noundef %23) #29
  br label %26

25:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.43.666, ptr noundef %23) #29
  tail call fastcc void @FactoryInvokeParams.667(ptr noundef %15, ptr noundef nonnull %1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.37.638) #29
  br label %26

26:                                               ; preds = %25, %24, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.664(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.664(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !22
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %24, %7
  %13 = phi ptr [ %27, %24 ], [ %10, %7 ]
  %14 = phi i32 [ %25, %24 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !129
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.605) #29
  br label %22

22:                                               ; preds = %21, %19
  %23 = load ptr, ptr %13, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %23) #29
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %26 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !22
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !232

29:                                               ; preds = %24, %7
  %30 = phi i32 [ %8, %7 ], [ %25, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.667(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !104
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.667(ptr noundef %0, ptr noundef nonnull %3) #31
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !129
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.3.605) #29
  %17 = load ptr, ptr %11, align 8, !tbaa !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %17) #29
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !233

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @TreeCCOpen(ptr nocapture noundef writeonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #12 {
  store i32 1, ptr %0, align 8, !tbaa !234
  %5 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !235
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 2
  store ptr %1, ptr %6, align 8, !tbaa !38
  %7 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  store ptr %2, ptr %7, align 8, !tbaa !236
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 4
  store ptr %3, ptr %8, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  store i64 1, ptr %9, align 8, !tbaa !33
  %10 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  store i64 1, ptr %10, align 8, !tbaa !237
  %11 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 7
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %11, align 8, !tbaa !35
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCClose(ptr noundef readonly %0, i32 noundef %1) #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !235
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #29
  br label %10

10:                                               ; preds = %9, %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !236
  %15 = tail call i32 @fclose(ptr noundef %14) #31
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal i32 @TreeCCNextToken(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !238
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !237
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  store i64 %7, ptr %8, align 8, !tbaa !33
  store i32 0, ptr %0, align 8, !tbaa !234
  br label %168

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !235
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %11) #29
  br label %17

17:                                               ; preds = %16, %9
  store ptr null, ptr %10, align 8, !tbaa !235
  %18 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %21

21:                                               ; preds = %76, %17
  %22 = load i64, ptr %18, align 8, !tbaa !237
  store i64 %22, ptr %19, align 8, !tbaa !33
  %23 = load ptr, ptr %20, align 8, !tbaa !236
  %24 = tail call i32 @getc(ptr noundef %23) #31
  switch i32 %24, label %66 [
    i32 -1, label %166
    i32 37, label %25
  ]

25:                                               ; preds = %21
  %26 = load ptr, ptr %20, align 8, !tbaa !236
  %27 = tail call i32 @getc(ptr noundef %26) #31
  switch i32 %27, label %30 [
    i32 123, label %28
    i32 37, label %29
  ]

28:                                               ; preds = %25
  tail call fastcc void @LiteralCodeDefn(ptr noundef nonnull %0, i32 noundef 0) #31
  store i32 2, ptr %0, align 8, !tbaa !234
  br label %168

29:                                               ; preds = %25
  tail call fastcc void @LiteralCodeDefn(ptr noundef nonnull %0, i32 noundef 1) #31
  store i32 4, ptr %0, align 8, !tbaa !234
  br label %168

30:                                               ; preds = %25
  %31 = add i32 %27, -65
  %32 = icmp ult i32 %31, 26
  br i1 %32, label %38, label %33

33:                                               ; preds = %30
  %34 = add i32 %27, -97
  %35 = icmp ult i32 %34, 26
  %36 = icmp eq i32 %27, 95
  %37 = or i1 %36, %35
  br i1 %37, label %38, label %61

38:                                               ; preds = %33, %30
  %.lcssa5 = phi i32 [ %27, %33 ], [ %27, %30 ]
  tail call fastcc void @RecogIdentifier(ptr noundef nonnull %0, i32 noundef %.lcssa5, ptr noundef nonnull @.str.670) #31
  %39 = load ptr, ptr %10, align 8, !tbaa !235
  br label %40

40:                                               ; preds = %53, %38
  %41 = phi i32 [ 18, %38 ], [ %58, %53 ]
  %42 = phi i32 [ 0, %38 ], [ %57, %53 ]
  %43 = add nsw i32 %41, %42
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x %struct.anon], ptr @KeywordTable, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 16, !tbaa !239
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %47) #32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %.lcssa = phi i64 [ %45, %40 ]
  %51 = getelementptr inbounds [19 x %struct.anon], ptr @KeywordTable, i64 0, i64 %.lcssa, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !241
  store i32 %52, ptr %0, align 8, !tbaa !234
  br label %168

53:                                               ; preds = %40
  %54 = icmp slt i32 %48, 0
  %55 = add nsw i32 %44, -1
  %56 = add nsw i32 %44, 1
  %57 = select i1 %54, i32 %42, i32 %56
  %58 = select i1 %54, i32 %55, i32 %41
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %40, !llvm.loop !242

60:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1.671, ptr noundef %39) #29
  store i32 18, ptr %0, align 8, !tbaa !234
  br label %168

61:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2.672) #29
  %62 = icmp eq i32 %27, -1
  br i1 %62, label %166, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %20, align 8, !tbaa !236
  %65 = tail call i32 @ungetc(i32 noundef %27, ptr noundef %64) #31
  br label %76

66:                                               ; preds = %21
  %67 = add i32 %24, -65
  %68 = icmp ult i32 %67, 26
  br i1 %68, label %74, label %69

69:                                               ; preds = %66
  %70 = add i32 %24, -97
  %71 = icmp ult i32 %70, 26
  %72 = icmp eq i32 %24, 95
  %73 = or i1 %72, %71
  br i1 %73, label %74, label %75

74:                                               ; preds = %69, %66
  %.lcssa10 = phi i32 [ %24, %69 ], [ %24, %66 ]
  tail call fastcc void @RecogIdentifier(ptr noundef nonnull %0, i32 noundef %.lcssa10, ptr noundef nonnull @.str.3.673) #31
  store i32 1, ptr %0, align 8, !tbaa !234
  br label %168

75:                                               ; preds = %69
  switch i32 %24, label %162 [
    i32 40, label %77
    i32 41, label %78
    i32 125, label %79
    i32 91, label %80
    i32 93, label %81
    i32 44, label %82
    i32 61, label %83
    i32 42, label %84
    i32 38, label %85
    i32 59, label %86
    i32 58, label %87
    i32 39, label %96
    i32 34, label %96
    i32 10, label %97
    i32 13, label %100
    i32 123, label %110
    i32 32, label %76
    i32 12, label %76
    i32 11, label %76
    i32 9, label %76
    i32 47, label %116
  ]

76:                                               ; preds = %162, %159, %154, %124, %107, %97, %93, %75, %75, %75, %75, %63
  br label %21

77:                                               ; preds = %75
  store i32 5, ptr %0, align 8, !tbaa !234
  br label %168

78:                                               ; preds = %75
  store i32 6, ptr %0, align 8, !tbaa !234
  br label %168

79:                                               ; preds = %75
  store i32 8, ptr %0, align 8, !tbaa !234
  br label %168

80:                                               ; preds = %75
  store i32 9, ptr %0, align 8, !tbaa !234
  br label %168

81:                                               ; preds = %75
  store i32 10, ptr %0, align 8, !tbaa !234
  br label %168

82:                                               ; preds = %75
  store i32 11, ptr %0, align 8, !tbaa !234
  br label %168

83:                                               ; preds = %75
  store i32 12, ptr %0, align 8, !tbaa !234
  br label %168

84:                                               ; preds = %75
  store i32 13, ptr %0, align 8, !tbaa !234
  br label %168

85:                                               ; preds = %75
  store i32 14, ptr %0, align 8, !tbaa !234
  br label %168

86:                                               ; preds = %75
  store i32 15, ptr %0, align 8, !tbaa !234
  br label %168

87:                                               ; preds = %75
  %88 = load ptr, ptr %20, align 8, !tbaa !236
  %89 = tail call i32 @getc(ptr noundef %88) #31
  switch i32 %89, label %93 [
    i32 58, label %90
    i32 -1, label %91
  ]

90:                                               ; preds = %87
  store i32 16, ptr %0, align 8, !tbaa !234
  br label %168

91:                                               ; preds = %87
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 58) #29
  store i32 1, ptr %2, align 4, !tbaa !238
  %92 = load i64, ptr %18, align 8, !tbaa !237
  store i64 %92, ptr %19, align 8, !tbaa !33
  store i32 0, ptr %0, align 8, !tbaa !234
  br label %168

93:                                               ; preds = %87
  %94 = load ptr, ptr %20, align 8, !tbaa !236
  %95 = tail call i32 @ungetc(i32 noundef %89, ptr noundef %94) #31
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 58) #29
  br label %76

96:                                               ; preds = %75, %75
  %.lcssa21 = phi i32 [ %24, %75 ], [ %24, %75 ]
  tail call fastcc void @RecogString(ptr noundef %0, i32 noundef %.lcssa21) #31
  store i32 17, ptr %0, align 8, !tbaa !234
  br label %168

97:                                               ; preds = %75
  %98 = load i64, ptr %18, align 8, !tbaa !237
  %99 = add nsw i64 %98, 1
  store i64 %99, ptr %18, align 8, !tbaa !237
  br label %76

100:                                              ; preds = %75
  %101 = load ptr, ptr %20, align 8, !tbaa !236
  %102 = tail call i32 @getc(ptr noundef %101) #31
  switch i32 %102, label %104 [
    i32 -1, label %103
    i32 10, label %107
  ]

103:                                              ; preds = %100
  store i32 1, ptr %2, align 4, !tbaa !238
  br label %107

104:                                              ; preds = %100
  %105 = load ptr, ptr %20, align 8, !tbaa !236
  %106 = tail call i32 @ungetc(i32 noundef %102, ptr noundef %105) #31
  br label %107

107:                                              ; preds = %104, %103, %100
  %108 = load i64, ptr %18, align 8, !tbaa !237
  %109 = add nsw i64 %108, 1
  store i64 %109, ptr %18, align 8, !tbaa !237
  br label %76

110:                                              ; preds = %75
  %111 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 9
  %112 = load i32, ptr %111, align 8, !tbaa !243
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %115, label %114

114:                                              ; preds = %110
  tail call fastcc void @LiteralCode(ptr noundef nonnull %0) #31
  store i32 3, ptr %0, align 8, !tbaa !234
  br label %168

115:                                              ; preds = %110
  store i32 7, ptr %0, align 8, !tbaa !234
  br label %168

116:                                              ; preds = %75
  %117 = load ptr, ptr %20, align 8, !tbaa !236
  %118 = tail call i32 @getc(ptr noundef %117) #31
  switch i32 %118, label %157 [
    i32 42, label %119
    i32 47, label %142
  ]

119:                                              ; preds = %138, %116
  %120 = load ptr, ptr %20, align 8, !tbaa !236
  %121 = tail call i32 @getc(ptr noundef %120) #31
  switch i32 %121, label %138 [
    i32 -1, label %122
    i32 42, label %124
    i32 10, label %130
    i32 13, label %133
  ]

122:                                              ; preds = %133, %124, %119
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4.675) #29
  store i32 1, ptr %2, align 4, !tbaa !238
  %123 = load i64, ptr %18, align 8, !tbaa !237
  store i64 %123, ptr %19, align 8, !tbaa !33
  store i32 0, ptr %0, align 8, !tbaa !234
  br label %168

124:                                              ; preds = %124, %119
  %125 = load ptr, ptr %20, align 8, !tbaa !236
  %126 = tail call i32 @getc(ptr noundef %125) #31
  switch i32 %126, label %127 [
    i32 -1, label %122
    i32 47, label %76
    i32 42, label %124
  ]

127:                                              ; preds = %124
  %.lcssa2 = phi i32 [ %126, %124 ]
  %128 = load ptr, ptr %20, align 8, !tbaa !236
  %129 = tail call i32 @ungetc(i32 noundef %.lcssa2, ptr noundef %128) #31
  br label %138

130:                                              ; preds = %119
  %131 = load i64, ptr %18, align 8, !tbaa !237
  %132 = add nsw i64 %131, 1
  store i64 %132, ptr %18, align 8, !tbaa !237
  br label %138

133:                                              ; preds = %119
  %134 = load i64, ptr %18, align 8, !tbaa !237
  %135 = add nsw i64 %134, 1
  store i64 %135, ptr %18, align 8, !tbaa !237
  %136 = load ptr, ptr %20, align 8, !tbaa !236
  %137 = tail call i32 @getc(ptr noundef %136) #31
  switch i32 %137, label %139 [
    i32 -1, label %122
    i32 10, label %138
  ]

138:                                              ; preds = %139, %133, %130, %127, %119
  br label %119

139:                                              ; preds = %133
  %140 = load ptr, ptr %20, align 8, !tbaa !236
  %141 = tail call i32 @ungetc(i32 noundef %137, ptr noundef %140) #31
  br label %138

142:                                              ; preds = %142, %116
  %143 = load ptr, ptr %20, align 8, !tbaa !236
  %144 = tail call i32 @getc(ptr noundef %143) #31
  switch i32 %144, label %142 [
    i32 -1, label %145
    i32 10, label %154
    i32 13, label %147
  ]

145:                                              ; preds = %142
  store i32 1, ptr %2, align 4, !tbaa !238
  %146 = load i64, ptr %18, align 8, !tbaa !237
  store i64 %146, ptr %19, align 8, !tbaa !33
  store i32 0, ptr %0, align 8, !tbaa !234
  br label %168

147:                                              ; preds = %142
  %148 = load ptr, ptr %20, align 8, !tbaa !236
  %149 = tail call i32 @getc(ptr noundef %148) #31
  switch i32 %149, label %151 [
    i32 -1, label %150
    i32 10, label %154
  ]

150:                                              ; preds = %147
  store i32 1, ptr %2, align 4, !tbaa !238
  br label %154

151:                                              ; preds = %147
  %152 = load ptr, ptr %20, align 8, !tbaa !236
  %153 = tail call i32 @ungetc(i32 noundef %149, ptr noundef %152) #31
  br label %154

154:                                              ; preds = %151, %150, %147, %142
  %155 = load i64, ptr %18, align 8, !tbaa !237
  %156 = add nsw i64 %155, 1
  store i64 %156, ptr %18, align 8, !tbaa !237
  br label %76

157:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 47) #29
  %158 = icmp eq i32 %118, -1
  br i1 %158, label %166, label %159

159:                                              ; preds = %157
  %160 = load ptr, ptr %20, align 8, !tbaa !236
  %161 = tail call i32 @ungetc(i32 noundef %118, ptr noundef %160) #31
  br label %76

162:                                              ; preds = %75
  %163 = add i32 %24, -32
  %164 = icmp ult i32 %163, 95
  %165 = select i1 %164, ptr @.str.27.674, ptr @.str.28.676
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %0, ptr noundef nonnull %165, i32 noundef %24) #29
  br label %76

166:                                              ; preds = %157, %61, %21
  %167 = load i64, ptr %18, align 8, !tbaa !237
  store i64 %167, ptr %19, align 8, !tbaa !33
  store i32 0, ptr %0, align 8, !tbaa !234
  store i32 1, ptr %2, align 4, !tbaa !238
  br label %168

168:                                              ; preds = %166, %145, %122, %115, %114, %96, %91, %90, %86, %85, %84, %83, %82, %81, %80, %79, %78, %77, %74, %60, %50, %29, %28, %5
  %169 = phi i32 [ 0, %5 ], [ 0, %166 ], [ 1, %28 ], [ 1, %29 ], [ 1, %50 ], [ 1, %60 ], [ 1, %74 ], [ 1, %77 ], [ 1, %78 ], [ 1, %79 ], [ 1, %80 ], [ 1, %81 ], [ 1, %82 ], [ 1, %83 ], [ 1, %84 ], [ 1, %85 ], [ 1, %86 ], [ 1, %90 ], [ 0, %91 ], [ 1, %96 ], [ 1, %114 ], [ 1, %115 ], [ 0, %122 ], [ 0, %145 ]
  ret i32 %169
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @LiteralCodeDefn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %4 = icmp ne i32 %1, 0
  %5 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  br label %6

6:                                                ; preds = %65, %2
  %7 = phi i32 [ %67, %65 ], [ 0, %2 ]
  br label %8

8:                                                ; preds = %34, %6
  %9 = phi i32 [ 0, %6 ], [ %35, %34 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !236
  %11 = tail call i32 @getc(ptr noundef %10) #31
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %.lcssa6 = phi i32 [ %7, %8 ]
  %.lcssa1 = phi i32 [ %9, %8 ]
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %14, align 4, !tbaa !238
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %68, label %72

16:                                               ; preds = %8
  %17 = icmp ne i32 %11, 37
  %18 = or i1 %4, %17
  br i1 %18, label %36, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !236
  %21 = tail call i32 @getc(ptr noundef %20) #31
  switch i32 %21, label %27 [
    i32 125, label %72
    i32 -1, label %22
  ]

22:                                               ; preds = %19
  %.lcssa8 = phi i32 [ %7, %19 ]
  %.lcssa3 = phi i32 [ %9, %19 ]
  %23 = add nsw i32 %.lcssa3, 1
  %24 = sext i32 %.lcssa3 to i64
  %25 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %24
  store i8 37, ptr %25, align 1, !tbaa !36
  %26 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !238
  br label %68

27:                                               ; preds = %19
  %28 = load ptr, ptr %3, align 8, !tbaa !236
  %29 = tail call i32 @ungetc(i32 noundef %21, ptr noundef %28) #31
  %30 = add nsw i32 %9, 1
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %31
  store i8 37, ptr %32, align 1, !tbaa !36
  %33 = icmp sgt i32 %9, 1021
  br i1 %33, label %65, label %34

34:                                               ; preds = %62, %27
  %35 = phi i32 [ %63, %62 ], [ %30, %27 ]
  br label %8

36:                                               ; preds = %16
  switch i32 %11, label %57 [
    i32 10, label %37
    i32 13, label %43
    i32 0, label %56
  ]

37:                                               ; preds = %36
  %38 = load i64, ptr %5, align 8, !tbaa !237
  %39 = add nsw i64 %38, 1
  store i64 %39, ptr %5, align 8, !tbaa !237
  %40 = add nsw i32 %9, 1
  %41 = sext i32 %9 to i64
  %42 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %41
  store i8 10, ptr %42, align 1, !tbaa !36
  br label %62

43:                                               ; preds = %36
  %44 = load i64, ptr %5, align 8, !tbaa !237
  %45 = add nsw i64 %44, 1
  store i64 %45, ptr %5, align 8, !tbaa !237
  %46 = add nsw i32 %9, 1
  %47 = sext i32 %9 to i64
  %48 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %47
  store i8 10, ptr %48, align 1, !tbaa !36
  %49 = load ptr, ptr %3, align 8, !tbaa !236
  %50 = tail call i32 @getc(ptr noundef %49) #31
  switch i32 %50, label %53 [
    i32 -1, label %51
    i32 10, label %62
  ]

51:                                               ; preds = %43
  %.lcssa9 = phi i32 [ %7, %43 ]
  %.lcssa5 = phi i32 [ %9, %43 ]
  %.lcssa = phi i32 [ %46, %43 ]
  %52 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %52, align 4, !tbaa !238
  br i1 %4, label %72, label %68

53:                                               ; preds = %43
  %54 = load ptr, ptr %3, align 8, !tbaa !236
  %55 = tail call i32 @ungetc(i32 noundef %50, ptr noundef %54) #31
  br label %62

56:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #29
  br label %62

57:                                               ; preds = %36
  %58 = trunc i32 %11 to i8
  %59 = add nsw i32 %9, 1
  %60 = sext i32 %9 to i64
  %61 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %60
  store i8 %58, ptr %61, align 1, !tbaa !36
  br label %62

62:                                               ; preds = %57, %56, %53, %43, %37
  %63 = phi i32 [ %40, %37 ], [ %46, %53 ], [ %9, %56 ], [ %59, %57 ], [ %46, %43 ]
  %64 = icmp sgt i32 %63, 1022
  br i1 %64, label %65, label %34

65:                                               ; preds = %62, %27
  %66 = phi i32 [ %30, %27 ], [ %63, %62 ]
  %67 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %66, i32 noundef %7) #31
  br label %6

68:                                               ; preds = %51, %22, %13
  %69 = phi i32 [ %.lcssa8, %22 ], [ %.lcssa6, %13 ], [ %.lcssa9, %51 ]
  %70 = phi i32 [ %.lcssa3, %22 ], [ %.lcssa1, %13 ], [ %.lcssa5, %51 ]
  %71 = phi i32 [ %23, %22 ], [ %.lcssa1, %13 ], [ %.lcssa, %51 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.6.678) #29
  br label %72

72:                                               ; preds = %68, %51, %19, %13
  %.lcssa7 = phi i32 [ %69, %68 ], [ %.lcssa9, %51 ], [ %7, %19 ], [ %.lcssa6, %13 ]
  %73 = phi i32 [ %.lcssa1, %13 ], [ %.lcssa, %51 ], [ %71, %68 ], [ %9, %19 ]
  %74 = icmp eq i32 %.lcssa7, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %73, i32 noundef %.lcssa7) #31
  br label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %79
  store i8 0, ptr %80, align 1, !tbaa !36
  %81 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %78, ptr %81, align 8, !tbaa !235
  br label %82

82:                                               ; preds = %77, %75
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @RecogIdentifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %27, %3
  %6 = phi i32 [ %1, %3 ], [ %19, %27 ]
  %7 = phi i32 [ 0, %3 ], [ %16, %27 ]
  %8 = phi i32 [ 0, %3 ], [ %17, %27 ]
  %9 = icmp slt i32 %7, 1023
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = trunc i32 %6 to i8
  %12 = add nsw i32 %7, 1
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %13
  store i8 %11, ptr %14, align 1, !tbaa !36
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i32 [ %12, %10 ], [ %7, %5 ]
  %17 = phi i32 [ %8, %10 ], [ 1, %5 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !236
  %19 = tail call i32 @getc(ptr noundef %18) #31
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %.lcssa4 = phi i32 [ %16, %15 ]
  %.lcssa2 = phi i32 [ %17, %15 ]
  %22 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %22, align 4, !tbaa !238
  br label %36

23:                                               ; preds = %15
  %24 = and i32 %19, -33
  %25 = add i32 %24, -65
  %26 = icmp ult i32 %25, 26
  br i1 %26, label %27, label %28

27:                                               ; preds = %28, %23
  br label %5

28:                                               ; preds = %23
  %29 = add i32 %19, -48
  %30 = icmp ult i32 %29, 10
  %31 = icmp eq i32 %19, 95
  %32 = or i1 %31, %30
  br i1 %32, label %27, label %33

33:                                               ; preds = %28
  %.lcssa5 = phi i32 [ %16, %28 ]
  %.lcssa3 = phi i32 [ %17, %28 ]
  %.lcssa1 = phi i32 [ %19, %28 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !236
  %35 = tail call i32 @ungetc(i32 noundef %.lcssa1, ptr noundef %34) #31
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi i32 [ %.lcssa5, %33 ], [ %.lcssa4, %21 ]
  %38 = phi i32 [ %.lcssa3, %33 ], [ %.lcssa2, %21 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.7.699, ptr noundef %2) #29
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %43 = sext i32 %37 to i64
  %44 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !36
  %45 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %42, ptr %45, align 8, !tbaa !235
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @RecogString(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %25, %2
  %5 = phi i32 [ %26, %25 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %19, %4
  %7 = phi i32 [ 0, %4 ], [ %21, %19 ]
  br label %8

8:                                                ; preds = %18, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !236
  %10 = tail call i32 @getc(ptr noundef %9) #31
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %32, label %12

12:                                               ; preds = %8
  switch i32 %10, label %19 [
    i32 -1, label %13
    i32 13, label %15
    i32 10, label %15
    i32 0, label %18
  ]

13:                                               ; preds = %12
  %.lcssa9 = phi i32 [ %5, %12 ]
  %.lcssa4 = phi i32 [ %7, %12 ]
  %.lcssa2 = phi i32 [ %10, %12 ]
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %14, align 4, !tbaa !238
  br label %27

15:                                               ; preds = %12, %12
  %.lcssa10 = phi i32 [ %5, %12 ], [ %5, %12 ]
  %.lcssa5 = phi i32 [ %7, %12 ], [ %7, %12 ]
  %.lcssa3 = phi i32 [ %10, %12 ], [ %10, %12 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !236
  %17 = tail call i32 @ungetc(i32 noundef %.lcssa3, ptr noundef %16) #31
  br label %27

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #29
  br label %8

19:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %10, %12 ]
  %20 = trunc i32 %.lcssa1 to i8
  %21 = add nuw nsw i32 %7, 1
  %22 = zext i32 %7 to i64
  %23 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %22
  store i8 %20, ptr %23, align 1, !tbaa !36
  %24 = icmp ugt i32 %7, 1021
  br i1 %24, label %25, label %6

25:                                               ; preds = %19
  %.lcssa7 = phi i32 [ %21, %19 ]
  %26 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %.lcssa7, i32 noundef %5) #31
  br label %4

27:                                               ; preds = %15, %13
  %28 = phi i32 [ %.lcssa10, %15 ], [ %.lcssa9, %13 ]
  %29 = phi i32 [ %.lcssa5, %15 ], [ %.lcssa4, %13 ]
  %30 = phi i32 [ %.lcssa3, %15 ], [ %.lcssa2, %13 ]
  %31 = phi ptr [ @.str.30.677, %15 ], [ @.str.29.679, %13 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull %31) #29
  br label %32

32:                                               ; preds = %27, %8
  %.lcssa8 = phi i32 [ %28, %27 ], [ %5, %8 ]
  %.lcssa = phi i32 [ %29, %27 ], [ %7, %8 ]
  %33 = icmp eq i32 %.lcssa8, 0
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %.lcssa, i32 noundef %.lcssa8) #31
  br label %41

36:                                               ; preds = %32
  %37 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %38 = zext i32 %.lcssa to i64
  %39 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !36
  %40 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !235
  br label %41

41:                                               ; preds = %36, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @LiteralCode(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  br label %4

4:                                                ; preds = %222, %1
  %5 = phi i32 [ 0, %1 ], [ %223, %222 ]
  %6 = phi i32 [ 0, %1 ], [ %224, %222 ]
  %7 = phi i64 [ 0, %1 ], [ %220, %222 ]
  br label %8

8:                                                ; preds = %191, %4
  %9 = phi i32 [ %94, %191 ], [ %5, %4 ]
  %10 = phi i32 [ %95, %191 ], [ %6, %4 ]
  br label %11

11:                                               ; preds = %211, %8
  %12 = load ptr, ptr %2, align 8, !tbaa !236
  %13 = tail call i32 @getc(ptr noundef %12) #31
  switch i32 %13, label %212 [
    i32 -1, label %227
    i32 125, label %14
    i32 123, label %21
    i32 39, label %26
    i32 34, label %26
    i32 47, label %86
    i32 10, label %194
    i32 13, label %200
    i32 0, label %211
  ]

14:                                               ; preds = %11
  %.lcssa20 = phi i32 [ %9, %11 ]
  %.lcssa11 = phi i32 [ %10, %11 ]
  %15 = icmp eq i64 %7, 0
  br i1 %15, label %232, label %16

16:                                               ; preds = %14
  %17 = add i64 %7, -1
  %18 = add nsw i32 %.lcssa20, 1
  %19 = sext i32 %.lcssa20 to i64
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %19
  store i8 125, ptr %20, align 1, !tbaa !36
  br label %217

21:                                               ; preds = %11
  %.lcssa21 = phi i32 [ %9, %11 ]
  %.lcssa12 = phi i32 [ %10, %11 ]
  %22 = add i64 %7, 1
  %23 = add nsw i32 %.lcssa21, 1
  %24 = sext i32 %.lcssa21 to i64
  %25 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %24
  store i8 123, ptr %25, align 1, !tbaa !36
  br label %217

26:                                               ; preds = %11, %11
  %.lcssa22 = phi i32 [ %9, %11 ], [ %9, %11 ]
  %.lcssa13 = phi i32 [ %10, %11 ], [ %10, %11 ]
  %.lcssa4 = phi i32 [ %13, %11 ], [ %13, %11 ]
  %27 = trunc i32 %.lcssa4 to i8
  %28 = add nsw i32 %.lcssa22, 1
  %29 = sext i32 %.lcssa22 to i64
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %29
  store i8 %27, ptr %30, align 1, !tbaa !36
  %31 = icmp sgt i32 %.lcssa22, 1021
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %.lcssa13) #31
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ %28, %26 ], [ 0, %32 ]
  %36 = phi i32 [ %.lcssa13, %26 ], [ %33, %32 ]
  br label %37

37:                                               ; preds = %75, %34
  %38 = phi i32 [ %35, %34 ], [ %76, %75 ]
  %39 = phi i32 [ %36, %34 ], [ %77, %75 ]
  %40 = load ptr, ptr %2, align 8, !tbaa !236
  %41 = tail call i32 @getc(ptr noundef %40) #31
  %42 = icmp ne i32 %41, -1
  %43 = icmp ne i32 %41, %.lcssa4
  %44 = and i1 %42, %43
  br i1 %44, label %45, label %78

45:                                               ; preds = %37
  %46 = icmp eq i32 %41, 92
  br i1 %46, label %47, label %60

47:                                               ; preds = %45
  %48 = add nsw i32 %38, 1
  %49 = sext i32 %38 to i64
  %50 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %49
  store i8 92, ptr %50, align 1, !tbaa !36
  %51 = icmp sgt i32 %38, 1021
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %48, i32 noundef %39) #31
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ 0, %52 ], [ %48, %47 ]
  %56 = phi i32 [ %53, %52 ], [ %39, %47 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !236
  %58 = tail call i32 @getc(ptr noundef %57) #31
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %227, label %60

60:                                               ; preds = %54, %45
  %61 = phi i32 [ %55, %54 ], [ %38, %45 ]
  %62 = phi i32 [ %56, %54 ], [ %39, %45 ]
  %63 = phi i32 [ %58, %54 ], [ %41, %45 ]
  switch i32 %63, label %67 [
    i32 13, label %64
    i32 10, label %64
  ]

64:                                               ; preds = %60, %60
  %.lcssa53 = phi i32 [ %61, %60 ], [ %61, %60 ]
  %.lcssa52 = phi i32 [ %62, %60 ], [ %62, %60 ]
  %.lcssa51 = phi i32 [ %63, %60 ], [ %63, %60 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30.677) #29
  %65 = load ptr, ptr %2, align 8, !tbaa !236
  %66 = tail call i32 @ungetc(i32 noundef %.lcssa51, ptr noundef %65) #31
  br label %80

67:                                               ; preds = %60
  %68 = trunc i32 %63 to i8
  %69 = add nsw i32 %61, 1
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %70
  store i8 %68, ptr %71, align 1, !tbaa !36
  %72 = icmp sgt i32 %61, 1021
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %69, i32 noundef %62) #31
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ 0, %73 ], [ %69, %67 ]
  %77 = phi i32 [ %74, %73 ], [ %62, %67 ]
  br label %37, !llvm.loop !244

78:                                               ; preds = %37
  %.lcssa49 = phi i32 [ %38, %37 ]
  %.lcssa47 = phi i32 [ %39, %37 ]
  %.lcssa45 = phi i32 [ %41, %37 ]
  %79 = icmp eq i32 %.lcssa45, -1
  br i1 %79, label %227, label %80

80:                                               ; preds = %78, %64
  %81 = phi i32 [ %.lcssa52, %64 ], [ %.lcssa47, %78 ]
  %82 = phi i32 [ %.lcssa53, %64 ], [ %.lcssa49, %78 ]
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %84
  store i8 %27, ptr %85, align 1, !tbaa !36
  br label %217

86:                                               ; preds = %11
  %.lcssa5 = phi i32 [ %13, %11 ]
  %87 = add nsw i32 %9, 1
  %88 = sext i32 %9 to i64
  %89 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %88
  store i8 47, ptr %89, align 1, !tbaa !36
  %90 = icmp sgt i32 %9, 1021
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %10) #31
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi i32 [ 0, %91 ], [ %87, %86 ]
  %95 = phi i32 [ %92, %91 ], [ %10, %86 ]
  %96 = load ptr, ptr %2, align 8, !tbaa !236
  %97 = tail call i32 @getc(ptr noundef %96) #31
  switch i32 %97, label %191 [
    i32 -1, label %227
    i32 47, label %98
    i32 42, label %128
  ]

98:                                               ; preds = %93
  %.lcssa29 = phi i32 [ %94, %93 ]
  %.lcssa27 = phi i32 [ %95, %93 ]
  %.lcssa25 = phi i32 [ %9, %93 ]
  %.lcssa16 = phi i32 [ %10, %93 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %93 ]
  %99 = add nsw i32 %.lcssa29, 1
  %100 = sext i32 %.lcssa29 to i64
  %101 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %100
  store i8 47, ptr %101, align 1, !tbaa !36
  %102 = icmp sgt i32 %.lcssa29, 1021
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %99, i32 noundef %.lcssa27) #31
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi i32 [ %99, %98 ], [ 0, %103 ]
  %107 = phi i32 [ %.lcssa27, %98 ], [ %104, %103 ]
  br label %108

108:                                              ; preds = %122, %105
  %109 = phi i32 [ 0, %122 ], [ %106, %105 ]
  %110 = phi i32 [ %123, %122 ], [ %107, %105 ]
  br label %111

111:                                              ; preds = %116, %108
  %112 = phi i32 [ %118, %116 ], [ %109, %108 ]
  br label %113

113:                                              ; preds = %124, %111
  %114 = load ptr, ptr %2, align 8, !tbaa !236
  %115 = tail call i32 @getc(ptr noundef %114) #31
  switch i32 %115, label %116 [
    i32 0, label %124
    i32 -1, label %227
    i32 10, label %125
    i32 13, label %125
  ]

116:                                              ; preds = %113
  %.lcssa39 = phi i32 [ %115, %113 ]
  %117 = trunc i32 %.lcssa39 to i8
  %118 = add nsw i32 %112, 1
  %119 = sext i32 %112 to i64
  %120 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %119
  store i8 %117, ptr %120, align 1, !tbaa !36
  %121 = icmp sgt i32 %112, 1021
  br i1 %121, label %122, label %111, !llvm.loop !245

122:                                              ; preds = %116
  %.lcssa43 = phi i32 [ %118, %116 ]
  %123 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %.lcssa43, i32 noundef %110) #31
  br label %108, !llvm.loop !245

124:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #29
  br label %113, !llvm.loop !245

125:                                              ; preds = %113, %113
  %.lcssa44 = phi i32 [ %110, %113 ], [ %110, %113 ]
  %.lcssa41 = phi i32 [ %112, %113 ], [ %112, %113 ]
  %.lcssa40 = phi i32 [ %115, %113 ], [ %115, %113 ]
  %126 = load ptr, ptr %2, align 8, !tbaa !236
  %127 = tail call i32 @ungetc(i32 noundef %.lcssa40, ptr noundef %126) #31
  br label %217

128:                                              ; preds = %93
  %.lcssa30 = phi i32 [ %94, %93 ]
  %.lcssa28 = phi i32 [ %95, %93 ]
  %.lcssa26 = phi i32 [ %9, %93 ]
  %.lcssa17 = phi i32 [ %10, %93 ]
  %.lcssa5.lcssa8 = phi i32 [ %.lcssa5, %93 ]
  %129 = add nsw i32 %.lcssa30, 1
  %130 = sext i32 %.lcssa30 to i64
  %131 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %130
  store i8 42, ptr %131, align 1, !tbaa !36
  %132 = icmp sgt i32 %.lcssa30, 1021
  br i1 %132, label %133, label %135

133:                                              ; preds = %128
  %134 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %129, i32 noundef %.lcssa28) #31
  br label %135

135:                                              ; preds = %133, %128
  %136 = phi i32 [ %129, %128 ], [ 0, %133 ]
  %137 = phi i32 [ %.lcssa28, %128 ], [ %134, %133 ]
  br label %138

138:                                              ; preds = %164, %135
  %139 = phi i32 [ %136, %135 ], [ %165, %164 ]
  %140 = phi i32 [ %137, %135 ], [ %166, %164 ]
  br label %141

141:                                              ; preds = %182, %138
  %142 = phi i32 [ %185, %182 ], [ %139, %138 ]
  %143 = load ptr, ptr %2, align 8, !tbaa !236
  %144 = tail call i32 @getc(ptr noundef %143) #31
  switch i32 %144, label %182 [
    i32 -1, label %227
    i32 42, label %145
    i32 10, label %167
    i32 13, label %170
  ]

145:                                              ; preds = %141
  %.lcssa31 = phi i32 [ %142, %141 ]
  %146 = add nsw i32 %.lcssa31, 1
  %147 = sext i32 %.lcssa31 to i64
  %148 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %147
  store i8 42, ptr %148, align 1, !tbaa !36
  %149 = icmp sgt i32 %.lcssa31, 1021
  br i1 %149, label %150, label %152

150:                                              ; preds = %145
  %151 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %146, i32 noundef %140) #31
  br label %152

152:                                              ; preds = %150, %145
  %153 = phi i32 [ 0, %150 ], [ %146, %145 ]
  %154 = phi i32 [ %151, %150 ], [ %140, %145 ]
  %155 = load ptr, ptr %2, align 8, !tbaa !236
  %156 = tail call i32 @getc(ptr noundef %155) #31
  switch i32 %156, label %161 [
    i32 47, label %157
    i32 -1, label %227
  ]

157:                                              ; preds = %152
  %.lcssa38 = phi i32 [ %153, %152 ]
  %.lcssa37 = phi i32 [ %154, %152 ]
  %158 = add nsw i32 %.lcssa38, 1
  %159 = sext i32 %.lcssa38 to i64
  %160 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %159
  store i8 47, ptr %160, align 1, !tbaa !36
  br label %217

161:                                              ; preds = %152
  %162 = load ptr, ptr %2, align 8, !tbaa !236
  %163 = tail call i32 @ungetc(i32 noundef %156, ptr noundef %162) #31
  br label %164

164:                                              ; preds = %189, %161
  %165 = phi i32 [ 0, %189 ], [ %153, %161 ]
  %166 = phi i32 [ %190, %189 ], [ %154, %161 ]
  br label %138

167:                                              ; preds = %141
  %168 = load i64, ptr %3, align 8, !tbaa !237
  %169 = add nsw i64 %168, 1
  store i64 %169, ptr %3, align 8, !tbaa !237
  br label %182

170:                                              ; preds = %141
  %171 = load i64, ptr %3, align 8, !tbaa !237
  %172 = add nsw i64 %171, 1
  store i64 %172, ptr %3, align 8, !tbaa !237
  %173 = load ptr, ptr %2, align 8, !tbaa !236
  %174 = tail call i32 @getc(ptr noundef %173) #31
  switch i32 %174, label %179 [
    i32 -1, label %175
    i32 10, label %182
  ]

175:                                              ; preds = %170
  %.lcssa35 = phi i32 [ %140, %170 ]
  %.lcssa32 = phi i32 [ %142, %170 ]
  %.lcssa26.lcssa = phi i32 [ %.lcssa26, %170 ]
  %.lcssa17.lcssa = phi i32 [ %.lcssa17, %170 ]
  %.lcssa5.lcssa8.lcssa = phi i32 [ %.lcssa5.lcssa8, %170 ]
  %176 = add nsw i32 %.lcssa32, 1
  %177 = sext i32 %.lcssa32 to i64
  %178 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %177
  store i8 10, ptr %178, align 1, !tbaa !36
  br label %227

179:                                              ; preds = %170
  %180 = load ptr, ptr %2, align 8, !tbaa !236
  %181 = tail call i32 @ungetc(i32 noundef %174, ptr noundef %180) #31
  br label %182

182:                                              ; preds = %179, %170, %167, %141
  %183 = phi i32 [ 10, %167 ], [ %144, %141 ], [ %174, %170 ], [ 10, %179 ]
  %184 = trunc i32 %183 to i8
  %185 = add nsw i32 %142, 1
  %186 = sext i32 %142 to i64
  %187 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %186
  store i8 %184, ptr %187, align 1, !tbaa !36
  %188 = icmp sgt i32 %142, 1021
  br i1 %188, label %189, label %141

189:                                              ; preds = %182
  %.lcssa34 = phi i32 [ %185, %182 ]
  %190 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %.lcssa34, i32 noundef %140) #31
  br label %164

191:                                              ; preds = %93
  %192 = load ptr, ptr %2, align 8, !tbaa !236
  %193 = tail call i32 @ungetc(i32 noundef %97, ptr noundef %192) #31
  br label %8

194:                                              ; preds = %11
  %.lcssa23 = phi i32 [ %9, %11 ]
  %.lcssa14 = phi i32 [ %10, %11 ]
  %195 = load i64, ptr %3, align 8, !tbaa !237
  %196 = add nsw i64 %195, 1
  store i64 %196, ptr %3, align 8, !tbaa !237
  %197 = add nsw i32 %.lcssa23, 1
  %198 = sext i32 %.lcssa23 to i64
  %199 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %198
  store i8 10, ptr %199, align 1, !tbaa !36
  br label %217

200:                                              ; preds = %11
  %.lcssa24 = phi i32 [ %9, %11 ]
  %.lcssa15 = phi i32 [ %10, %11 ]
  %.lcssa7 = phi i32 [ %13, %11 ]
  %201 = load i64, ptr %3, align 8, !tbaa !237
  %202 = add nsw i64 %201, 1
  store i64 %202, ptr %3, align 8, !tbaa !237
  %203 = add nsw i32 %.lcssa24, 1
  %204 = sext i32 %.lcssa24 to i64
  %205 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %204
  store i8 10, ptr %205, align 1, !tbaa !36
  %206 = load ptr, ptr %2, align 8, !tbaa !236
  %207 = tail call i32 @getc(ptr noundef %206) #31
  switch i32 %207, label %208 [
    i32 -1, label %227
    i32 10, label %217
  ]

208:                                              ; preds = %200
  %209 = load ptr, ptr %2, align 8, !tbaa !236
  %210 = tail call i32 @ungetc(i32 noundef %207, ptr noundef %209) #31
  br label %217

211:                                              ; preds = %11
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #29
  br label %11

212:                                              ; preds = %11
  %.lcssa18 = phi i32 [ %9, %11 ]
  %.lcssa9 = phi i32 [ %10, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
  %213 = trunc i32 %.lcssa to i8
  %214 = add nsw i32 %.lcssa18, 1
  %215 = sext i32 %.lcssa18 to i64
  %216 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %215
  store i8 %213, ptr %216, align 1, !tbaa !36
  br label %217

217:                                              ; preds = %212, %208, %200, %194, %157, %125, %80, %21, %16
  %218 = phi i32 [ %18, %16 ], [ %23, %21 ], [ %83, %80 ], [ %.lcssa41, %125 ], [ %158, %157 ], [ %197, %194 ], [ %203, %208 ], [ %214, %212 ], [ %203, %200 ]
  %219 = phi i32 [ %.lcssa11, %16 ], [ %.lcssa12, %21 ], [ %81, %80 ], [ %.lcssa44, %125 ], [ %.lcssa37, %157 ], [ %.lcssa14, %194 ], [ %.lcssa15, %208 ], [ %.lcssa9, %212 ], [ %.lcssa15, %200 ]
  %220 = phi i64 [ %17, %16 ], [ %22, %21 ], [ %7, %80 ], [ %7, %125 ], [ %7, %157 ], [ %7, %194 ], [ %7, %208 ], [ %7, %212 ], [ %7, %200 ]
  %221 = icmp sgt i32 %218, 1022
  br i1 %221, label %225, label %222

222:                                              ; preds = %225, %217
  %223 = phi i32 [ 0, %225 ], [ %218, %217 ]
  %224 = phi i32 [ %226, %225 ], [ %219, %217 ]
  br label %4

225:                                              ; preds = %217
  %226 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %218, i32 noundef %219) #31
  br label %222

227:                                              ; preds = %200, %175, %152, %141, %113, %93, %78, %54, %11
  %228 = phi ptr [ @.str.6.678, %175 ], [ @.str.29.679, %54 ], [ @.str.6.678, %113 ], [ @.str.6.678, %152 ], [ @.str.6.678, %141 ], [ @.str.6.678, %11 ], [ @.str.6.678, %93 ], [ @.str.29.679, %78 ], [ @.str.6.678, %200 ]
  %229 = phi i32 [ %176, %175 ], [ %55, %54 ], [ %112, %113 ], [ %142, %141 ], [ %153, %152 ], [ %9, %11 ], [ %94, %93 ], [ %.lcssa49, %78 ], [ %203, %200 ]
  %230 = phi i32 [ %.lcssa35, %175 ], [ %56, %54 ], [ %110, %113 ], [ %140, %141 ], [ %154, %152 ], [ %10, %11 ], [ %95, %93 ], [ %.lcssa47, %78 ], [ %.lcssa15, %200 ]
  %231 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %231, align 4, !tbaa !238
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull %228) #29
  br label %232

232:                                              ; preds = %227, %14
  %233 = phi i32 [ %229, %227 ], [ %.lcssa20, %14 ]
  %234 = phi i32 [ %230, %227 ], [ %.lcssa11, %14 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %238, label %236

236:                                              ; preds = %232
  %237 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %233, i32 noundef %234) #31
  br label %243

238:                                              ; preds = %232
  %239 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %240 = sext i32 %233 to i64
  %241 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %240
  store i8 0, ptr %241, align 1, !tbaa !36
  %242 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %239, ptr %242, align 8, !tbaa !235
  br label %243

243:                                              ; preds = %238, %236
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FlushBuffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !235
  %8 = add nsw i32 %2, %1
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call ptr @realloc(ptr noundef %7, i64 noundef %10) #35
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call void @TreeCCOutOfMemory(ptr noundef nonnull %0) #29
  br label %14

14:                                               ; preds = %13, %5
  store ptr %11, ptr %6, align 8, !tbaa !235
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %18 = sext i32 %1 to i64
  %19 = tail call ptr @strncpy(ptr noundef %16, ptr noundef nonnull %17, i64 noundef %18) #29
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !36
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i32 [ %8, %14 ], [ %2, %3 ]
  ret i32 %23
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #13

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCValue(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !234
  tail call void (ptr, ptr, ...) @TreeCCAbort(ptr noundef nonnull %0, ptr noundef nonnull @.str.5.700, i32 noundef %6) #29
  br label %19

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %11, label %10

10:                                               ; preds = %7
  store ptr null, ptr %2, align 8, !tbaa !235
  br label %19

11:                                               ; preds = %7
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #32
  %13 = add i64 %12, 1
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #36
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %11
  tail call void @TreeCCOutOfMemory(ptr noundef nonnull %0) #29
  br label %17

17:                                               ; preds = %16, %11
  %18 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %3) #29
  store ptr null, ptr %2, align 8, !tbaa !235
  br label %19

19:                                               ; preds = %17, %10, %5
  %20 = phi ptr [ %3, %10 ], [ %14, %17 ], [ null, %5 ]
  ret ptr %20
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCAddLiteralDefn(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = getelementptr inbounds %struct.TreeCCInput, ptr %10, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !33
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %12, ptr noundef nonnull @.str.701, i32 noundef %2, ptr noundef %1) #29
  br label %13

13:                                               ; preds = %8, %3
  %14 = and i32 %2, 3
  %15 = icmp eq i32 %14, 3
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.TreeCCInput, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !31
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %17, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !33
  %22 = lshr i32 %2, 2
  %23 = and i32 %22, 1
  br i1 %15, label %24, label %34

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !95
  tail call void @TreeCCStreamAddLiteral(ptr noundef %26, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #29
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !98
  %29 = load ptr, ptr %16, align 8, !tbaa !7
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !31
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %29, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !33
  tail call void @TreeCCStreamAddLiteral(ptr noundef %28, ptr noundef %1, ptr noundef %31, i64 noundef %33, i32 noundef %23, i32 noundef 1) #29
  br label %43

34:                                               ; preds = %13
  %35 = and i32 %2, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !98
  tail call void @TreeCCStreamAddLiteral(ptr noundef %39, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #29
  br label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !95
  tail call void @TreeCCStreamAddLiteral(ptr noundef %42, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #29
  br label %43

43:                                               ; preds = %40, %37, %24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca %struct.TreeCCInput, align 8
  %4 = load ptr, ptr %1, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 1096, ptr nonnull %3) #30
  %5 = sext i32 %0 to i64
  %6 = shl nsw i64 %5, 3
  %7 = tail call noalias ptr @malloc(i64 noundef %6) #36
  %8 = icmp eq ptr %7, null
  br i1 %8, label %9, label %10

9:                                                ; preds = %2
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %10

10:                                               ; preds = %9, %2
  %11 = icmp sgt i32 %0, 1
  br i1 %11, label %12, label %225

12:                                               ; preds = %209, %10
  %13 = phi i32 [ %218, %209 ], [ 0, %10 ]
  %14 = phi i32 [ %217, %209 ], [ 1, %10 ]
  %15 = phi i32 [ %219, %209 ], [ %0, %10 ]
  %16 = phi i16 [ %215, %209 ], [ 0, %10 ]
  %17 = phi ptr [ %214, %209 ], [ null, %10 ]
  %18 = phi ptr [ %213, %209 ], [ @.str.702, %10 ]
  %19 = phi ptr [ %212, %209 ], [ null, %10 ]
  %20 = phi ptr [ %211, %209 ], [ null, %10 ]
  %21 = phi ptr [ %220, %209 ], [ %1, %10 ]
  %22 = getelementptr inbounds ptr, ptr %21, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = load i8, ptr %23, align 1, !tbaa !36
  %25 = icmp eq i8 %24, 45
  br i1 %25, label %26, label %226

26:                                               ; preds = %12
  %27 = getelementptr inbounds i8, ptr %23, i64 1
  %28 = load i8, ptr %27, align 1, !tbaa !36
  switch i8 %28, label %108 [
    i8 0, label %226
    i8 45, label %29
  ]

29:                                               ; preds = %26
  %30 = getelementptr inbounds i8, ptr %23, i64 2
  %31 = load i8, ptr %30, align 1, !tbaa !36
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %222, label %33

33:                                               ; preds = %29
  %34 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(9) @.str.1.703) #32
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %43

36:                                               ; preds = %33
  %37 = icmp ult i32 %15, 3
  br i1 %37, label %38, label %39

38:                                               ; preds = %36
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

39:                                               ; preds = %36
  %40 = add nsw i32 %15, -1
  %41 = getelementptr inbounds ptr, ptr %21, i64 2
  %42 = load ptr, ptr %41, align 8, !tbaa !22
  br label %209

43:                                               ; preds = %33
  %44 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(9) @.str.2.704) #32
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = icmp ult i32 %15, 3
  br i1 %47, label %48, label %49

48:                                               ; preds = %46
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

49:                                               ; preds = %46
  %50 = add nsw i32 %15, -1
  %51 = getelementptr inbounds ptr, ptr %21, i64 2
  %52 = load ptr, ptr %51, align 8, !tbaa !22
  br label %209

53:                                               ; preds = %43
  %54 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(13) @.str.3.705) #32
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %63

56:                                               ; preds = %53
  %57 = icmp ult i32 %15, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %56
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

59:                                               ; preds = %56
  %60 = add nsw i32 %15, -1
  %61 = getelementptr inbounds ptr, ptr %21, i64 2
  %62 = load ptr, ptr %61, align 8, !tbaa !22
  br label %209

63:                                               ; preds = %53
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(15) @.str.4.706) #32
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %63
  %67 = add nsw i32 %15, -1
  %68 = icmp ult i32 %15, 3
  br i1 %68, label %69, label %209

69:                                               ; preds = %66
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

70:                                               ; preds = %63
  %71 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(12) @.str.5.707) #32
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %80

73:                                               ; preds = %70
  %74 = icmp ult i32 %15, 3
  br i1 %74, label %75, label %76

75:                                               ; preds = %73
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

76:                                               ; preds = %73
  %77 = add nsw i32 %15, -1
  %78 = getelementptr inbounds ptr, ptr %21, i64 2
  %79 = load ptr, ptr %78, align 8, !tbaa !22
  br label %209

80:                                               ; preds = %70
  %81 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(9) @.str.6.708) #32
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %93

83:                                               ; preds = %80
  %84 = icmp ult i32 %15, 3
  br i1 %84, label %85, label %86

85:                                               ; preds = %83
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

86:                                               ; preds = %83
  %87 = add nsw i32 %15, -1
  %88 = getelementptr inbounds ptr, ptr %21, i64 2
  %89 = load ptr, ptr %88, align 8, !tbaa !22
  %90 = add nsw i32 %13, 1
  %91 = sext i32 %13 to i64
  %92 = getelementptr inbounds ptr, ptr %7, i64 %91
  store ptr %89, ptr %92, align 8, !tbaa !22
  br label %209

93:                                               ; preds = %80
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(15) @.str.7.709) #32
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %209, label %96

96:                                               ; preds = %93
  %97 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(12) @.str.8.710) #32
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %209, label %99

99:                                               ; preds = %96
  %.lcssa5 = phi ptr [ %23, %96 ]
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa5, ptr noundef nonnull dereferenceable(7) @.str.9.711) #32
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %99
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

103:                                              ; preds = %99
  %104 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa5, ptr noundef nonnull dereferenceable(10) @.str.10.712) #32
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %106, label %107

106:                                              ; preds = %103
  tail call fastcc void @Version() #31
  br label %371

107:                                              ; preds = %103
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

108:                                              ; preds = %196, %26
  %109 = phi i8 [ %207, %196 ], [ %28, %26 ]
  %110 = phi i32 [ %206, %196 ], [ %13, %26 ]
  %111 = phi i32 [ %205, %196 ], [ %14, %26 ]
  %112 = phi i32 [ %204, %196 ], [ %15, %26 ]
  %113 = phi i16 [ %203, %196 ], [ %16, %26 ]
  %114 = phi ptr [ %202, %196 ], [ %17, %26 ]
  %115 = phi ptr [ %201, %196 ], [ %18, %26 ]
  %116 = phi ptr [ %200, %196 ], [ %19, %26 ]
  %117 = phi ptr [ %199, %196 ], [ %20, %26 ]
  %118 = phi ptr [ %198, %196 ], [ %27, %26 ]
  %119 = phi ptr [ %197, %196 ], [ %21, %26 ]
  %120 = sext i8 %109 to i32
  %121 = getelementptr inbounds i8, ptr %118, i64 1
  switch i32 %120, label %195 [
    i32 111, label %122
    i32 104, label %133
    i32 100, label %144
    i32 115, label %155
    i32 101, label %164
    i32 79, label %175
    i32 102, label %196
    i32 110, label %193
    i32 118, label %194
  ]

122:                                              ; preds = %108
  %123 = load i8, ptr %121, align 1, !tbaa !36
  %124 = icmp eq i8 %123, 0
  br i1 %124, label %125, label %196

125:                                              ; preds = %122
  %126 = icmp slt i32 %112, 3
  br i1 %126, label %127, label %128

127:                                              ; preds = %125
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

128:                                              ; preds = %125
  %129 = add nsw i32 %112, -1
  %130 = getelementptr inbounds ptr, ptr %119, i64 1
  %131 = getelementptr inbounds ptr, ptr %119, i64 2
  %132 = load ptr, ptr %131, align 8, !tbaa !22
  br label %196

133:                                              ; preds = %108
  %134 = load i8, ptr %121, align 1, !tbaa !36
  %135 = icmp eq i8 %134, 0
  br i1 %135, label %136, label %196

136:                                              ; preds = %133
  %137 = icmp slt i32 %112, 3
  br i1 %137, label %138, label %139

138:                                              ; preds = %136
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

139:                                              ; preds = %136
  %140 = add nsw i32 %112, -1
  %141 = getelementptr inbounds ptr, ptr %119, i64 1
  %142 = getelementptr inbounds ptr, ptr %119, i64 2
  %143 = load ptr, ptr %142, align 8, !tbaa !22
  br label %196

144:                                              ; preds = %108
  %145 = load i8, ptr %121, align 1, !tbaa !36
  %146 = icmp eq i8 %145, 0
  br i1 %146, label %147, label %196

147:                                              ; preds = %144
  %148 = icmp slt i32 %112, 3
  br i1 %148, label %149, label %150

149:                                              ; preds = %147
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

150:                                              ; preds = %147
  %151 = add nsw i32 %112, -1
  %152 = getelementptr inbounds ptr, ptr %119, i64 1
  %153 = getelementptr inbounds ptr, ptr %119, i64 2
  %154 = load ptr, ptr %153, align 8, !tbaa !22
  br label %196

155:                                              ; preds = %108
  %156 = load i8, ptr %121, align 1, !tbaa !36
  %157 = icmp eq i8 %156, 0
  br i1 %157, label %158, label %196

158:                                              ; preds = %155
  %159 = icmp slt i32 %112, 3
  br i1 %159, label %160, label %161

160:                                              ; preds = %158
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

161:                                              ; preds = %158
  %162 = add nsw i32 %112, -1
  %163 = getelementptr inbounds ptr, ptr %119, i64 1
  br label %196

164:                                              ; preds = %108
  %165 = load i8, ptr %121, align 1, !tbaa !36
  %166 = icmp eq i8 %165, 0
  br i1 %166, label %167, label %196

167:                                              ; preds = %164
  %168 = icmp slt i32 %112, 3
  br i1 %168, label %169, label %170

169:                                              ; preds = %167
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

170:                                              ; preds = %167
  %171 = add nsw i32 %112, -1
  %172 = getelementptr inbounds ptr, ptr %119, i64 1
  %173 = getelementptr inbounds ptr, ptr %119, i64 2
  %174 = load ptr, ptr %173, align 8, !tbaa !22
  br label %196

175:                                              ; preds = %108
  %176 = load i8, ptr %121, align 1, !tbaa !36
  %177 = icmp eq i8 %176, 0
  br i1 %177, label %182, label %178

178:                                              ; preds = %175
  %179 = add nsw i32 %110, 1
  %180 = sext i32 %110 to i64
  %181 = getelementptr inbounds ptr, ptr %7, i64 %180
  store ptr %121, ptr %181, align 8, !tbaa !22
  br label %196

182:                                              ; preds = %175
  %183 = icmp slt i32 %112, 3
  br i1 %183, label %184, label %185

184:                                              ; preds = %182
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

185:                                              ; preds = %182
  %186 = add nsw i32 %112, -1
  %187 = getelementptr inbounds ptr, ptr %119, i64 1
  %188 = getelementptr inbounds ptr, ptr %119, i64 2
  %189 = load ptr, ptr %188, align 8, !tbaa !22
  %190 = add nsw i32 %110, 1
  %191 = sext i32 %110 to i64
  %192 = getelementptr inbounds ptr, ptr %7, i64 %191
  store ptr %189, ptr %192, align 8, !tbaa !22
  br label %196

193:                                              ; preds = %108
  br label %196

194:                                              ; preds = %108
  tail call fastcc void @Version() #31
  br label %371

195:                                              ; preds = %108
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

196:                                              ; preds = %193, %185, %178, %170, %164, %161, %155, %150, %144, %139, %133, %128, %122, %108
  %197 = phi ptr [ %119, %193 ], [ %119, %178 ], [ %187, %185 ], [ %172, %170 ], [ %163, %161 ], [ %152, %150 ], [ %141, %139 ], [ %130, %128 ], [ %119, %122 ], [ %119, %133 ], [ %119, %144 ], [ %119, %155 ], [ %119, %164 ], [ %119, %108 ]
  %198 = phi ptr [ %121, %193 ], [ @.str.11.713, %178 ], [ %121, %185 ], [ %121, %170 ], [ %121, %161 ], [ %121, %150 ], [ %121, %139 ], [ %121, %128 ], [ @.str.11.713, %122 ], [ @.str.11.713, %133 ], [ @.str.11.713, %144 ], [ @.str.11.713, %155 ], [ @.str.11.713, %164 ], [ %121, %108 ]
  %199 = phi ptr [ %117, %193 ], [ %117, %178 ], [ %117, %185 ], [ %117, %170 ], [ %117, %161 ], [ %117, %150 ], [ %117, %139 ], [ %132, %128 ], [ %121, %122 ], [ %117, %133 ], [ %117, %144 ], [ %117, %155 ], [ %117, %164 ], [ %117, %108 ]
  %200 = phi ptr [ %116, %193 ], [ %116, %178 ], [ %116, %185 ], [ %116, %170 ], [ %116, %161 ], [ %116, %150 ], [ %143, %139 ], [ %116, %128 ], [ %116, %122 ], [ %121, %133 ], [ %116, %144 ], [ %116, %155 ], [ %116, %164 ], [ %116, %108 ]
  %201 = phi ptr [ %115, %193 ], [ %115, %178 ], [ %115, %185 ], [ %174, %170 ], [ %115, %161 ], [ %115, %150 ], [ %115, %139 ], [ %115, %128 ], [ %115, %122 ], [ %115, %133 ], [ %115, %144 ], [ %115, %155 ], [ %121, %164 ], [ %115, %108 ]
  %202 = phi ptr [ %114, %193 ], [ %114, %178 ], [ %114, %185 ], [ %114, %170 ], [ %114, %161 ], [ %154, %150 ], [ %114, %139 ], [ %114, %128 ], [ %114, %122 ], [ %114, %133 ], [ %121, %144 ], [ %114, %155 ], [ %114, %164 ], [ %114, %108 ]
  %203 = phi i16 [ %113, %193 ], [ %113, %178 ], [ %113, %185 ], [ %113, %170 ], [ %113, %161 ], [ %113, %150 ], [ %113, %139 ], [ %113, %128 ], [ %113, %122 ], [ %113, %133 ], [ %113, %144 ], [ %113, %155 ], [ %113, %164 ], [ 1, %108 ]
  %204 = phi i32 [ %112, %193 ], [ %112, %178 ], [ %186, %185 ], [ %171, %170 ], [ %162, %161 ], [ %151, %150 ], [ %140, %139 ], [ %129, %128 ], [ %112, %122 ], [ %112, %133 ], [ %112, %144 ], [ %112, %155 ], [ %112, %164 ], [ %112, %108 ]
  %205 = phi i32 [ 0, %193 ], [ %111, %178 ], [ %111, %185 ], [ %111, %170 ], [ %111, %161 ], [ %111, %150 ], [ %111, %139 ], [ %111, %128 ], [ %111, %122 ], [ %111, %133 ], [ %111, %144 ], [ %111, %155 ], [ %111, %164 ], [ %111, %108 ]
  %206 = phi i32 [ %110, %193 ], [ %179, %178 ], [ %190, %185 ], [ %110, %170 ], [ %110, %161 ], [ %110, %150 ], [ %110, %139 ], [ %110, %128 ], [ %110, %122 ], [ %110, %133 ], [ %110, %144 ], [ %110, %155 ], [ %110, %164 ], [ %110, %108 ]
  %207 = load i8, ptr %198, align 1, !tbaa !36
  %208 = icmp eq i8 %207, 0
  br i1 %208, label %209, label %108, !llvm.loop !246

209:                                              ; preds = %196, %96, %93, %86, %76, %66, %59, %49, %39
  %210 = phi ptr [ %22, %86 ], [ %22, %76 ], [ %22, %66 ], [ %22, %59 ], [ %22, %49 ], [ %22, %39 ], [ %21, %93 ], [ %21, %96 ], [ %197, %196 ]
  %211 = phi ptr [ %20, %86 ], [ %20, %76 ], [ %20, %66 ], [ %20, %59 ], [ %20, %49 ], [ %42, %39 ], [ %20, %93 ], [ %20, %96 ], [ %199, %196 ]
  %212 = phi ptr [ %19, %86 ], [ %19, %76 ], [ %19, %66 ], [ %19, %59 ], [ %52, %49 ], [ %19, %39 ], [ %19, %93 ], [ %19, %96 ], [ %200, %196 ]
  %213 = phi ptr [ %18, %86 ], [ %79, %76 ], [ %18, %66 ], [ %18, %59 ], [ %18, %49 ], [ %18, %39 ], [ %18, %93 ], [ %18, %96 ], [ %201, %196 ]
  %214 = phi ptr [ %17, %86 ], [ %17, %76 ], [ %17, %66 ], [ %62, %59 ], [ %17, %49 ], [ %17, %39 ], [ %17, %93 ], [ %17, %96 ], [ %202, %196 ]
  %215 = phi i16 [ %16, %86 ], [ %16, %76 ], [ %16, %66 ], [ %16, %59 ], [ %16, %49 ], [ %16, %39 ], [ 1, %93 ], [ %16, %96 ], [ %203, %196 ]
  %216 = phi i32 [ %87, %86 ], [ %77, %76 ], [ %67, %66 ], [ %60, %59 ], [ %50, %49 ], [ %40, %39 ], [ %15, %93 ], [ %15, %96 ], [ %204, %196 ]
  %217 = phi i32 [ %14, %86 ], [ %14, %76 ], [ %14, %66 ], [ %14, %59 ], [ %14, %49 ], [ %14, %39 ], [ %14, %93 ], [ 0, %96 ], [ %205, %196 ]
  %218 = phi i32 [ %90, %86 ], [ %13, %76 ], [ %13, %66 ], [ %13, %59 ], [ %13, %49 ], [ %13, %39 ], [ %13, %93 ], [ %13, %96 ], [ %206, %196 ]
  %219 = add nsw i32 %216, -1
  %220 = getelementptr inbounds ptr, ptr %210, i64 1
  %221 = icmp sgt i32 %216, 2
  br i1 %221, label %12, label %225, !llvm.loop !247

222:                                              ; preds = %29
  %.lcssa157 = phi i32 [ %13, %29 ]
  %.lcssa140 = phi i32 [ %14, %29 ]
  %.lcssa123 = phi i32 [ %15, %29 ]
  %.lcssa106 = phi i16 [ %16, %29 ]
  %.lcssa89 = phi ptr [ %17, %29 ]
  %.lcssa72 = phi ptr [ %18, %29 ]
  %.lcssa55 = phi ptr [ %19, %29 ]
  %.lcssa38 = phi ptr [ %20, %29 ]
  %.lcssa21 = phi ptr [ %22, %29 ]
  %.lcssa4 = phi ptr [ %23, %29 ]
  %223 = add nsw i32 %.lcssa123, -1
  %224 = icmp ult i32 %.lcssa123, 3
  br i1 %224, label %225, label %226

225:                                              ; preds = %222, %209, %10
  tail call fastcc void @Usage(ptr noundef %4) #31
  br label %371

226:                                              ; preds = %222, %26, %12
  %.lcssa156 = phi i32 [ %.lcssa157, %222 ], [ %13, %26 ], [ %13, %12 ]
  %.lcssa139 = phi i32 [ %.lcssa140, %222 ], [ %14, %26 ], [ %14, %12 ]
  %.lcssa105 = phi i16 [ %.lcssa106, %222 ], [ %16, %26 ], [ %16, %12 ]
  %.lcssa88 = phi ptr [ %.lcssa89, %222 ], [ %17, %26 ], [ %17, %12 ]
  %.lcssa71 = phi ptr [ %.lcssa72, %222 ], [ %18, %26 ], [ %18, %12 ]
  %.lcssa54 = phi ptr [ %.lcssa55, %222 ], [ %19, %26 ], [ %19, %12 ]
  %.lcssa37 = phi ptr [ %.lcssa38, %222 ], [ %20, %26 ], [ %20, %12 ]
  %227 = phi i32 [ %223, %222 ], [ %15, %26 ], [ %15, %12 ]
  %228 = phi ptr [ %.lcssa21, %222 ], [ %21, %26 ], [ %21, %12 ]
  %229 = icmp eq ptr %.lcssa37, null
  br i1 %229, label %230, label %238

230:                                              ; preds = %226
  %231 = load i8, ptr %.lcssa71, align 1, !tbaa !36
  %232 = icmp eq i8 %231, 46
  %233 = zext i1 %232 to i64
  %234 = getelementptr inbounds i8, ptr %.lcssa71, i64 %233
  %235 = getelementptr inbounds ptr, ptr %228, i64 1
  %236 = load ptr, ptr %235, align 8, !tbaa !22
  %237 = tail call fastcc ptr @GetDefault(ptr noundef %236, ptr noundef nonnull %234) #31
  br label %238

238:                                              ; preds = %230, %226
  %239 = phi ptr [ %.lcssa37, %226 ], [ %237, %230 ]
  %240 = icmp eq ptr %.lcssa54, null
  br i1 %240, label %241, label %243

241:                                              ; preds = %238
  %242 = tail call fastcc ptr @GetDefault(ptr noundef %239, ptr noundef nonnull @.str.12.714) #31
  br label %243

243:                                              ; preds = %241, %238
  %244 = phi ptr [ %.lcssa54, %238 ], [ %242, %241 ]
  call void @TreeCCOpen(ptr noundef nonnull %3, ptr noundef %4, ptr noundef null, ptr noundef null) #29
  %245 = icmp eq ptr %.lcssa88, null
  br i1 %245, label %246, label %278

246:                                              ; preds = %243
  %247 = getelementptr inbounds ptr, ptr %228, i64 1
  %248 = load ptr, ptr %247, align 8, !tbaa !22
  %249 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %248) #32
  %250 = trunc i64 %249 to i32
  %251 = and i64 %249, 4294967295
  %252 = call i32 @llvm.smin.i32(i32 %250, i32 0)
  br label %253

253:                                              ; preds = %257, %246
  %254 = phi i64 [ %258, %257 ], [ %251, %246 ]
  %255 = trunc i64 %254 to i32
  %256 = icmp sgt i32 %255, 0
  br i1 %256, label %257, label %261

257:                                              ; preds = %253
  %258 = add nsw i64 %254, -1
  %259 = getelementptr inbounds i8, ptr %248, i64 %258
  %260 = load i8, ptr %259, align 1, !tbaa !36
  switch i8 %260, label %253 [
    i8 47, label %261
    i8 92, label %261
  ], !llvm.loop !248

261:                                              ; preds = %257, %257, %253
  %.lcssa2 = phi i1 [ %256, %257 ], [ %256, %257 ], [ %256, %253 ]
  %262 = phi i32 [ %255, %257 ], [ %255, %257 ], [ %252, %253 ]
  %263 = sext i1 %.lcssa2 to i32
  %264 = add nsw i32 %262, %263
  %265 = icmp sgt i32 %264, 0
  br i1 %265, label %266, label %278

266:                                              ; preds = %261
  %267 = add nuw nsw i32 %264, 1
  %268 = zext i32 %267 to i64
  %269 = call noalias ptr @malloc(i64 noundef %268) #36
  %270 = icmp eq ptr %269, null
  br i1 %270, label %271, label %273

271:                                              ; preds = %266
  call void @TreeCCOutOfMemory(ptr noundef nonnull %3) #29
  %272 = load ptr, ptr %247, align 8, !tbaa !22
  br label %273

273:                                              ; preds = %271, %266
  %274 = phi ptr [ %272, %271 ], [ %248, %266 ]
  %275 = zext i32 %264 to i64
  %276 = call ptr @strncpy(ptr noundef %269, ptr noundef %274, i64 noundef %275) #29
  %277 = getelementptr inbounds i8, ptr %269, i64 %275
  store i8 0, ptr %277, align 1, !tbaa !36
  br label %278

278:                                              ; preds = %273, %261, %243
  %279 = phi ptr [ %.lcssa88, %243 ], [ %269, %273 ], [ null, %261 ]
  %280 = call ptr @TreeCCContextCreate(ptr noundef nonnull %3) #29
  %281 = icmp eq ptr %280, null
  br i1 %281, label %282, label %283

282:                                              ; preds = %278
  call void @TreeCCOutOfMemory(ptr noundef nonnull %3) #29
  br label %283

283:                                              ; preds = %282, %278
  %284 = getelementptr inbounds %struct._tagTreeCCContext, ptr %280, i64 0, i32 8
  %285 = load i16, ptr %284, align 8
  %286 = shl nuw nsw i16 %.lcssa105, 4
  %287 = and i16 %286, 16
  %288 = and i16 %285, -17
  %289 = or i16 %288, %287
  store i16 %289, ptr %284, align 8
  %290 = getelementptr inbounds %struct._tagTreeCCContext, ptr %280, i64 0, i32 15
  store ptr %279, ptr %290, align 8, !tbaa !249
  br label %291

291:                                              ; preds = %306, %283
  %292 = phi ptr [ %7, %283 ], [ %297, %306 ]
  %293 = phi i32 [ %.lcssa156, %283 ], [ %294, %306 ]
  %294 = add nsw i32 %293, -1
  %295 = icmp sgt i32 %293, 0
  br i1 %295, label %296, label %313

296:                                              ; preds = %291
  %297 = getelementptr inbounds ptr, ptr %292, i64 1
  %298 = load ptr, ptr %292, align 8, !tbaa !22
  br label %299

299:                                              ; preds = %302, %296
  %300 = phi ptr [ %298, %296 ], [ %303, %302 ]
  %301 = load i8, ptr %300, align 1, !tbaa !36
  switch i8 %301, label %302 [
    i8 0, label %306
    i8 61, label %304
  ]

302:                                              ; preds = %299
  %303 = getelementptr inbounds i8, ptr %300, i64 1
  br label %299, !llvm.loop !250

304:                                              ; preds = %299
  %.lcssa1 = phi ptr [ %300, %299 ]
  %305 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  store i8 0, ptr %.lcssa1, align 1, !tbaa !36
  br label %306

306:                                              ; preds = %304, %299
  %307 = phi ptr [ %305, %304 ], [ null, %299 ]
  %308 = call i32 @TreeCCOptionProcess(ptr noundef %280, ptr noundef %298, ptr noundef %307) #29
  %309 = icmp eq i32 %308, 0
  br i1 %309, label %291, label %310, !llvm.loop !251

310:                                              ; preds = %306
  %.lcssa = phi ptr [ %298, %306 ]
  %311 = load ptr, ptr @stderr, align 8, !tbaa !22
  %312 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %311, ptr noundef nonnull @.str.40.715, ptr noundef %.lcssa) #34
  br label %371

313:                                              ; preds = %291
  call void @free(ptr noundef %7) #29
  %314 = call ptr @TreeCCStreamCreate(ptr noundef %280, ptr noundef %239, ptr noundef null, i32 noundef 0) #29
  %315 = getelementptr inbounds %struct._tagTreeCCContext, ptr %280, i64 0, i32 5
  store ptr %314, ptr %315, align 8, !tbaa !98
  %316 = getelementptr inbounds %struct._tagTreeCCStream, ptr %314, i64 0, i32 7
  %317 = load i8, ptr %316, align 4
  %318 = or i8 %317, 8
  store i8 %318, ptr %316, align 4
  %319 = call ptr @TreeCCStreamCreate(ptr noundef %280, ptr noundef %244, ptr noundef null, i32 noundef 1) #29
  %320 = getelementptr inbounds %struct._tagTreeCCContext, ptr %280, i64 0, i32 4
  store ptr %319, ptr %320, align 8, !tbaa !95
  %321 = getelementptr inbounds %struct._tagTreeCCStream, ptr %319, i64 0, i32 7
  %322 = load i8, ptr %321, align 4
  %323 = or i8 %322, 8
  store i8 %323, ptr %321, align 4
  %324 = icmp sgt i32 %227, 1
  br i1 %324, label %325, label %349

325:                                              ; preds = %313
  %326 = getelementptr inbounds %struct.TreeCCInput, ptr %3, i64 0, i32 7
  br label %327

327:                                              ; preds = %345, %325
  %328 = phi i32 [ 0, %325 ], [ %346, %345 ]
  %329 = phi i32 [ %227, %325 ], [ %347, %345 ]
  %330 = phi ptr [ %228, %325 ], [ %331, %345 ]
  %331 = getelementptr inbounds ptr, ptr %330, i64 1
  %332 = load ptr, ptr %331, align 8, !tbaa !22
  %333 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %332, ptr noundef nonnull dereferenceable(2) @.str.13.716) #32
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %335, label %339

335:                                              ; preds = %327
  %336 = icmp eq i32 %328, 0
  br i1 %336, label %337, label %345

337:                                              ; preds = %335
  %338 = load ptr, ptr @stdin, align 8, !tbaa !22
  call void @TreeCCOpen(ptr noundef nonnull %3, ptr noundef %4, ptr noundef %338, ptr noundef nonnull @.str.14.717) #29
  call void @TreeCCParse(ptr noundef %280) #29
  call void @TreeCCClose(ptr noundef nonnull %3, i32 noundef 0) #29
  br label %345

339:                                              ; preds = %327
  %340 = call noalias ptr @fopen(ptr noundef %332, ptr noundef nonnull @.str.15.718) #31
  %341 = icmp eq ptr %340, null
  %342 = load ptr, ptr %331, align 8, !tbaa !22
  br i1 %341, label %343, label %344

343:                                              ; preds = %339
  call void @perror(ptr noundef %342) #34
  store i32 1, ptr %326, align 8, !tbaa !34
  br label %345

344:                                              ; preds = %339
  call void @TreeCCOpen(ptr noundef nonnull %3, ptr noundef %4, ptr noundef nonnull %340, ptr noundef %342) #29
  call void @TreeCCParse(ptr noundef %280) #29
  call void @TreeCCClose(ptr noundef nonnull %3, i32 noundef 1) #29
  br label %345

345:                                              ; preds = %344, %343, %337, %335
  %346 = phi i32 [ %328, %343 ], [ %328, %344 ], [ 1, %335 ], [ 1, %337 ]
  %347 = add nsw i32 %329, -1
  %348 = icmp sgt i32 %329, 2
  br i1 %348, label %327, label %349, !llvm.loop !252

349:                                              ; preds = %345, %313
  call void @TreeCCNodeValidate(ptr noundef %280) #29
  call void @TreeCCOperationValidate(ptr noundef %280) #29
  %350 = getelementptr inbounds %struct.TreeCCInput, ptr %3, i64 0, i32 7
  %351 = load i32, ptr %350, align 8, !tbaa !34
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %354, label %353

353:                                              ; preds = %349
  call void @TreeCCContextDestroy(ptr noundef %280) #29
  br label %371

354:                                              ; preds = %349
  %355 = icmp eq i32 %.lcssa139, 0
  br i1 %355, label %369, label %356

356:                                              ; preds = %354
  call void @TreeCCGenerate(ptr noundef %280) #29
  %357 = getelementptr inbounds %struct._tagTreeCCContext, ptr %280, i64 0, i32 3
  %358 = load ptr, ptr %357, align 8, !tbaa !22
  %359 = icmp eq ptr %358, null
  br i1 %359, label %369, label %360

360:                                              ; preds = %360, %356
  %361 = phi ptr [ %367, %360 ], [ %358, %356 ]
  %362 = phi i32 [ %365, %360 ], [ 0, %356 ]
  %363 = call i32 @TreeCCStreamFlush(ptr noundef nonnull %361) #29
  %364 = icmp eq i32 %363, 0
  %365 = select i1 %364, i32 1, i32 %362
  %366 = getelementptr inbounds %struct._tagTreeCCStream, ptr %361, i64 0, i32 10
  %367 = load ptr, ptr %366, align 8, !tbaa !22
  %368 = icmp eq ptr %367, null
  br i1 %368, label %369, label %360, !llvm.loop !253

369:                                              ; preds = %360, %356, %354
  %370 = phi i32 [ 0, %354 ], [ 0, %356 ], [ %365, %360 ]
  call void @TreeCCContextDestroy(ptr noundef %280) #29
  br label %371

371:                                              ; preds = %369, %353, %310, %225, %195, %194, %184, %169, %160, %149, %138, %127, %107, %106, %102, %85, %75, %69, %58, %48, %38
  %372 = phi i32 [ 1, %225 ], [ 1, %353 ], [ %370, %369 ], [ 1, %107 ], [ 0, %106 ], [ 1, %102 ], [ 1, %85 ], [ 1, %75 ], [ 1, %69 ], [ 1, %58 ], [ 1, %48 ], [ 1, %38 ], [ 1, %195 ], [ 0, %194 ], [ 1, %184 ], [ 1, %169 ], [ 1, %160 ], [ 1, %149 ], [ 1, %138 ], [ 1, %127 ], [ 1, %310 ]
  call void @llvm.lifetime.end.p0(i64 1096, ptr nonnull %3) #30
  ret i32 %372
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @Usage(ptr noundef %0) unnamed_addr #3 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !22
  %3 = tail call i64 @fwrite(ptr nonnull @.str.16.720, i64 38, i64 1, ptr %2) #37
  %4 = load ptr, ptr @stderr, align 8, !tbaa !22
  %5 = tail call i64 @fwrite(ptr nonnull @.str.17.721, i64 59, i64 1, ptr %4) #37
  %6 = load ptr, ptr @stderr, align 8, !tbaa !22
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !22
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.19.722, ptr noundef %0) #34
  %10 = load ptr, ptr @stderr, align 8, !tbaa !22
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !22
  %13 = tail call i64 @fwrite(ptr nonnull @.str.20.723, i64 27, i64 1, ptr %12) #37
  %14 = load ptr, ptr @stderr, align 8, !tbaa !22
  %15 = tail call i64 @fwrite(ptr nonnull @.str.21.724, i64 41, i64 1, ptr %14) #37
  %16 = load ptr, ptr @stderr, align 8, !tbaa !22
  %17 = tail call i64 @fwrite(ptr nonnull @.str.22.725, i64 27, i64 1, ptr %16) #37
  %18 = load ptr, ptr @stderr, align 8, !tbaa !22
  %19 = tail call i64 @fwrite(ptr nonnull @.str.23.726, i64 48, i64 1, ptr %18) #37
  %20 = load ptr, ptr @stderr, align 8, !tbaa !22
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24.727, i64 31, i64 1, ptr %20) #37
  %22 = load ptr, ptr @stderr, align 8, !tbaa !22
  %23 = tail call i64 @fwrite(ptr nonnull @.str.25.728, i64 51, i64 1, ptr %22) #37
  %24 = load ptr, ptr @stderr, align 8, !tbaa !22
  %25 = tail call i64 @fwrite(ptr nonnull @.str.26.729, i64 29, i64 1, ptr %24) #37
  %26 = load ptr, ptr @stderr, align 8, !tbaa !22
  %27 = tail call i64 @fwrite(ptr nonnull @.str.27.730, i64 57, i64 1, ptr %26) #37
  %28 = load ptr, ptr @stderr, align 8, !tbaa !22
  %29 = tail call i64 @fwrite(ptr nonnull @.str.28.731, i64 28, i64 1, ptr %28) #37
  %30 = load ptr, ptr @stderr, align 8, !tbaa !22
  %31 = tail call i64 @fwrite(ptr nonnull @.str.29.732, i64 54, i64 1, ptr %30) #37
  %32 = load ptr, ptr @stderr, align 8, !tbaa !22
  %33 = tail call i64 @fwrite(ptr nonnull @.str.30.733, i64 26, i64 1, ptr %32) #37
  %34 = load ptr, ptr @stderr, align 8, !tbaa !22
  %35 = tail call i64 @fwrite(ptr nonnull @.str.31.734, i64 42, i64 1, ptr %34) #37
  %36 = load ptr, ptr @stderr, align 8, !tbaa !22
  %37 = tail call i64 @fwrite(ptr nonnull @.str.32.735, i64 11, i64 1, ptr %36) #37
  %38 = load ptr, ptr @stderr, align 8, !tbaa !22
  %39 = tail call i64 @fwrite(ptr nonnull @.str.33.736, i64 33, i64 1, ptr %38) #37
  %40 = load ptr, ptr @stderr, align 8, !tbaa !22
  %41 = tail call i64 @fwrite(ptr nonnull @.str.34.737, i64 23, i64 1, ptr %40) #37
  %42 = load ptr, ptr @stderr, align 8, !tbaa !22
  %43 = tail call i64 @fwrite(ptr nonnull @.str.35.738, i64 35, i64 1, ptr %42) #37
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @Version() unnamed_addr #3 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.42)
  %3 = tail call i32 @putchar(i32 10)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.43)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.44)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  %7 = tail call i32 @putchar(i32 10)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @GetDefault(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.13.716) #32
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @.str.41.719, ptr %0
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #32
  %7 = and i64 %6, 4294967295
  br label %8

8:                                                ; preds = %12, %2
  %9 = phi i64 [ %13, %12 ], [ %7, %2 ]
  %10 = trunc i64 %9 to i32
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %27

12:                                               ; preds = %8
  %13 = add nsw i64 %9, -1
  %14 = getelementptr inbounds i8, ptr %5, i64 %13
  %15 = load i8, ptr %14, align 1, !tbaa !36
  switch i8 %15, label %8 [
    i8 46, label %16
    i8 47, label %27
    i8 92, label %27
  ]

16:                                               ; preds = %12
  %.lcssa1 = phi i64 [ %9, %12 ]
  %17 = and i64 %.lcssa1, 4294967295
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %19 = add nuw nsw i64 %17, 1
  %20 = add i64 %19, %18
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #36
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %24

24:                                               ; preds = %23, %16
  %25 = tail call ptr @strncpy(ptr noundef %21, ptr noundef nonnull %5, i64 noundef %17) #29
  %26 = getelementptr inbounds i8, ptr %21, i64 %17
  br label %40

27:                                               ; preds = %12, %12, %8
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %31 = add nsw i64 %29, 2
  %32 = add i64 %31, %30
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #36
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %36

36:                                               ; preds = %35, %27
  %37 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %5) #29
  %38 = getelementptr inbounds i8, ptr %33, i64 %29
  store i8 46, ptr %38, align 1, !tbaa !36
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  br label %40

40:                                               ; preds = %36, %24
  %41 = phi ptr [ %39, %36 ], [ %26, %24 ]
  %42 = phi ptr [ %33, %36 ], [ %21, %24 ]
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %1) #29
  ret ptr %42
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #16

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @TreeCCHashString(ptr nocapture noundef readonly %0) #17 {
  %2 = load i8, ptr %0, align 1, !tbaa !36
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %14, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %12, %4 ], [ %2, %1 ]
  %6 = phi i32 [ %11, %4 ], [ 0, %1 ]
  %7 = phi ptr [ %10, %4 ], [ %0, %1 ]
  %8 = sext i8 %5 to i32
  %9 = mul i32 %6, 33
  %10 = getelementptr inbounds i8, ptr %7, i64 1
  %11 = add i32 %9, %8
  %12 = load i8, ptr %10, align 1, !tbaa !36
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %14, label %4, !llvm.loop !254

14:                                               ; preds = %4, %1
  %15 = phi i32 [ 0, %1 ], [ %11, %4 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCNodeFree(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 10
  %3 = load ptr, ptr %2, align 8, !tbaa !255
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %16, %1
  %6 = phi ptr [ %8, %16 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCField, ptr %6, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !256
  %9 = load ptr, ptr %6, align 8, !tbaa !132
  tail call void @free(ptr noundef %9) #29
  %10 = getelementptr inbounds %struct._tagTreeCCField, ptr %6, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !131
  tail call void @free(ptr noundef %11) #29
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %6, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !134
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %13) #29
  br label %16

16:                                               ; preds = %15, %5
  tail call void @free(ptr noundef nonnull %6) #29
  %17 = icmp eq ptr %8, null
  br i1 %17, label %18, label %5, !llvm.loop !257

18:                                               ; preds = %16, %1
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 11
  %20 = load ptr, ptr %19, align 8, !tbaa !258
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %18
  %23 = phi ptr [ %25, %22 ], [ %20, %18 ]
  %24 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %23, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !259
  tail call void @free(ptr noundef nonnull %23) #29
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !260

27:                                               ; preds = %22, %18
  %28 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !101
  tail call void @free(ptr noundef %29) #29
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCNodeCreate(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) #0 {
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %3, null
  %12 = select i1 %11, ptr @.str.1.741, ptr %3
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %1, ptr noundef nonnull @.str.742, ptr noundef %2, ptr noundef nonnull %12, i32 noundef %4) #29
  br label %13

13:                                               ; preds = %10, %5
  %14 = icmp eq ptr %3, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %13
  %16 = tail call ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef nonnull %3) #31
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #36
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %23) #29
  br label %24

24:                                               ; preds = %21, %18
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  store ptr %3, ptr %25, align 8, !tbaa !101
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 5
  store i32 1, ptr %26, align 8, !tbaa !66
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !15
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !15
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 6
  store i32 %28, ptr %30, align 4, !tbaa !102
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = getelementptr inbounds %struct.TreeCCInput, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !261
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 9
  store i64 %1, ptr %36, align 8, !tbaa !262
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 10
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 13
  %40 = load <2 x ptr>, ptr %38, align 8, !tbaa !22
  store <2 x ptr> %40, ptr %39, align 8, !tbaa !22
  %41 = load i8, ptr %3, align 1, !tbaa !36
  %42 = icmp eq i8 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %43, %24
  %44 = phi i8 [ %51, %43 ], [ %41, %24 ]
  %45 = phi i32 [ %50, %43 ], [ 0, %24 ]
  %46 = phi ptr [ %49, %43 ], [ %3, %24 ]
  %47 = sext i8 %44 to i32
  %48 = mul i32 %45, 33
  %49 = getelementptr inbounds i8, ptr %46, i64 1
  %50 = add i32 %48, %47
  %51 = load i8, ptr %49, align 1, !tbaa !36
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !254

53:                                               ; preds = %43
  %.lcssa1 = phi i32 [ %50, %43 ]
  %54 = and i32 %.lcssa1, 511
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %24
  %57 = phi i64 [ 0, %24 ], [ %55, %53 ]
  %58 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !22
  %60 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 12
  store ptr %59, ptr %60, align 8, !tbaa !23
  store ptr %19, ptr %58, align 8, !tbaa !22
  br label %62

61:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %3) #29
  br label %62

62:                                               ; preds = %61, %56, %13
  %63 = phi ptr [ %16, %61 ], [ %19, %56 ], [ null, %13 ]
  %64 = tail call ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %2) #31
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !66
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 8
  %72 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 9
  br i1 %70, label %73, label %81

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = getelementptr inbounds %struct.TreeCCInput, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !31
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %75, ptr noundef %77, i64 noundef %1, ptr noundef nonnull @.str.2.745, ptr noundef %2) #29
  %78 = load ptr, ptr %74, align 8, !tbaa !7
  %79 = load ptr, ptr %71, align 8, !tbaa !261
  %80 = load i64, ptr %72, align 8, !tbaa !262
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %78, ptr noundef %79, i64 noundef %80, ptr noundef nonnull @.str.3.746) #29
  tail call void @free(ptr noundef %2) #29
  br label %152

81:                                               ; preds = %66
  store i32 %4, ptr %67, align 8, !tbaa !66
  store ptr %63, ptr %64, align 8, !tbaa !104
  %82 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = getelementptr inbounds %struct.TreeCCInput, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !31
  store ptr %85, ptr %71, align 8, !tbaa !261
  store i64 %1, ptr %72, align 8, !tbaa !262
  %86 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %87 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 13
  %88 = load <2 x ptr>, ptr %86, align 8, !tbaa !22
  store <2 x ptr> %88, ptr %87, align 8, !tbaa !22
  %89 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 3
  store ptr null, ptr %89, align 8, !tbaa !263
  %90 = icmp eq ptr %63, null
  br i1 %90, label %152, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !264
  %94 = icmp eq ptr %93, null
  %95 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 1
  %96 = getelementptr inbounds %struct._tagTreeCCNode, ptr %93, i64 0, i32 3
  %97 = select i1 %94, ptr %95, ptr %96
  store ptr %64, ptr %97, align 8, !tbaa !22
  store ptr %64, ptr %92, align 8, !tbaa !264
  br label %152

98:                                               ; preds = %62
  %99 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #36
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %103) #29
  br label %104

104:                                              ; preds = %101, %98
  store ptr %63, ptr %99, align 8, !tbaa !104
  %105 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 1
  %106 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  store ptr %2, ptr %106, align 8, !tbaa !101
  %107 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 5
  store i32 %4, ptr %107, align 8, !tbaa !66
  %108 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  %109 = load i32, ptr %108, align 8, !tbaa !15
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 8, !tbaa !15
  %111 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 6
  store i32 %109, ptr %111, align 4, !tbaa !102
  %112 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !7
  %114 = getelementptr inbounds %struct.TreeCCInput, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !31
  %116 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 8
  store ptr %115, ptr %116, align 8, !tbaa !261
  %117 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 9
  store i64 %1, ptr %117, align 8, !tbaa !262
  %118 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 10
  %119 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %120 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 13
  %121 = load <2 x ptr>, ptr %119, align 8, !tbaa !22
  store <2 x ptr> %121, ptr %120, align 8, !tbaa !22
  %122 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 3
  store ptr null, ptr %122, align 8, !tbaa !263
  %123 = icmp eq ptr %63, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %104
  %125 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !264
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 1
  %129 = getelementptr inbounds %struct._tagTreeCCNode, ptr %126, i64 0, i32 3
  %130 = select i1 %127, ptr %128, ptr %129
  store ptr %99, ptr %130, align 8, !tbaa !22
  store ptr %99, ptr %125, align 8, !tbaa !264
  br label %131

131:                                              ; preds = %124, %104
  %132 = load i8, ptr %2, align 1, !tbaa !36
  %133 = icmp eq i8 %132, 0
  br i1 %133, label %147, label %134

134:                                              ; preds = %134, %131
  %135 = phi i8 [ %142, %134 ], [ %132, %131 ]
  %136 = phi i32 [ %141, %134 ], [ 0, %131 ]
  %137 = phi ptr [ %140, %134 ], [ %2, %131 ]
  %138 = sext i8 %135 to i32
  %139 = mul i32 %136, 33
  %140 = getelementptr inbounds i8, ptr %137, i64 1
  %141 = add i32 %139, %138
  %142 = load i8, ptr %140, align 1, !tbaa !36
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %134, !llvm.loop !254

144:                                              ; preds = %134
  %.lcssa = phi i32 [ %141, %134 ]
  %145 = and i32 %.lcssa, 511
  %146 = zext i32 %145 to i64
  br label %147

147:                                              ; preds = %144, %131
  %148 = phi i64 [ 0, %131 ], [ %146, %144 ]
  %149 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !22
  %151 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 12
  store ptr %150, ptr %151, align 8, !tbaa !23
  store ptr %99, ptr %149, align 8, !tbaa !22
  br label %152

152:                                              ; preds = %147, %91, %81, %73
  %153 = phi ptr [ %64, %73 ], [ %64, %91 ], [ %64, %81 ], [ %99, %147 ]
  ret ptr %153
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @TreeCCNodeFind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = load i8, ptr %1, align 1, !tbaa !36
  %4 = icmp eq i8 %3, 0
  br i1 %4, label %18, label %5

5:                                                ; preds = %5, %2
  %6 = phi i8 [ %13, %5 ], [ %3, %2 ]
  %7 = phi i32 [ %12, %5 ], [ 0, %2 ]
  %8 = phi ptr [ %11, %5 ], [ %1, %2 ]
  %9 = sext i8 %6 to i32
  %10 = mul i32 %7, 33
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = add i32 %10, %9
  %13 = load i8, ptr %11, align 1, !tbaa !36
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !254

15:                                               ; preds = %5
  %.lcssa = phi i32 [ %12, %5 ]
  %16 = and i32 %.lcssa, 511
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i64 [ 0, %2 ], [ %17, %15 ]
  %20 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %29, %18
  %24 = phi ptr [ %31, %29 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !101
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %1) #32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !llvm.loop !265

33:                                               ; preds = %29, %23, %18
  %34 = phi ptr [ null, %18 ], [ null, %29 ], [ %24, %23 ]
  ret ptr %34
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #19

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @TreeCCNodeFindByType(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #18 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = add i64 %3, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !36
  %11 = icmp eq i8 %10, 42
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = add nsw i32 %4, -2
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !36
  %17 = icmp eq i8 %16, 32
  br i1 %17, label %19, label %18

18:                                               ; preds = %12, %6, %2
  br label %19

19:                                               ; preds = %18, %12
  %20 = phi i32 [ %4, %18 ], [ %13, %12 ]
  %21 = phi i1 [ true, %18 ], [ false, %12 ]
  %22 = icmp sgt i32 %20, 0
  br i1 %22, label %23, label %37

23:                                               ; preds = %23, %19
  %24 = phi i32 [ %31, %23 ], [ 0, %19 ]
  %25 = phi i32 [ %32, %23 ], [ %20, %19 ]
  %26 = phi ptr [ %28, %23 ], [ %1, %19 ]
  %27 = mul i32 %24, 33
  %28 = getelementptr inbounds i8, ptr %26, i64 1
  %29 = load i8, ptr %26, align 1, !tbaa !36
  %30 = sext i8 %29 to i32
  %31 = add i32 %27, %30
  %32 = add nsw i32 %25, -1
  %33 = icmp ugt i32 %25, 1
  br i1 %33, label %23, label %34, !llvm.loop !266

34:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %31, %23 ]
  %35 = and i32 %.lcssa1, 511
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %34, %19
  %38 = phi i64 [ 0, %19 ], [ %36, %34 ]
  %39 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %37
  %43 = sext i32 %20 to i64
  br label %44

44:                                               ; preds = %65, %42
  %45 = phi ptr [ %40, %42 ], [ %67, %65 ]
  %46 = getelementptr inbounds %struct._tagTreeCCNode, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !101
  %48 = tail call i32 @strncmp(ptr noundef %47, ptr noundef %1, i64 noundef %43) #32
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, ptr %47, i64 %43
  %52 = load i8, ptr %51, align 1, !tbaa !36
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %.lcssa = phi ptr [ %45, %50 ]
  %55 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !66
  %57 = and i32 %56, 8
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %61, label %59

59:                                               ; preds = %54
  %60 = select i1 %21, ptr %.lcssa, ptr null
  br label %69

61:                                               ; preds = %54
  %62 = and i32 %56, 16
  %63 = icmp eq i32 %62, 0
  %64 = select i1 %63, ptr %.lcssa, ptr null
  br label %69

65:                                               ; preds = %50, %44
  %66 = getelementptr inbounds %struct._tagTreeCCNode, ptr %45, i64 0, i32 12
  %67 = load ptr, ptr %66, align 8, !tbaa !22
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %44, !llvm.loop !267

69:                                               ; preds = %65, %61, %59, %37
  %70 = phi ptr [ %60, %59 ], [ %64, %61 ], [ null, %37 ], [ null, %65 ]
  ret ptr %70
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCNodeValidate(ptr nocapture noundef readonly %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %3 = load i32, ptr %2, align 4, !tbaa !39
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %5 = icmp ult i32 %3, 2
  br label %6

6:                                                ; preds = %86, %1
  %7 = phi i64 [ 0, %1 ], [ %87, %86 ]
  %8 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %86, label %11

11:                                               ; preds = %82, %6
  %12 = phi ptr [ %84, %82 ], [ %9, %6 ]
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 5
  %14 = load i32, ptr %13, align 8, !tbaa !66
  %15 = and i32 %14, 1
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %4, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 8
  %20 = load ptr, ptr %19, align 8, !tbaa !261
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 9
  %22 = load i64, ptr %21, align 8, !tbaa !262
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !101
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %18, ptr noundef %20, i64 noundef %22, ptr noundef nonnull @.str.4.751, ptr noundef %24) #29
  br label %25

25:                                               ; preds = %17, %11
  %26 = load ptr, ptr %12, align 8, !tbaa !104
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %40

28:                                               ; preds = %25
  %29 = load i32, ptr %13, align 8, !tbaa !66
  %30 = and i32 %29, 5
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %40

32:                                               ; preds = %28
  %33 = load ptr, ptr %4, align 8, !tbaa !7
  %34 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 8
  %35 = load ptr, ptr %34, align 8, !tbaa !261
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 9
  %37 = load i64, ptr %36, align 8, !tbaa !262
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !101
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %33, ptr noundef %35, i64 noundef %37, ptr noundef nonnull @.str.5.752, ptr noundef %39) #29
  br label %40

40:                                               ; preds = %32, %28, %25
  br i1 %5, label %41, label %82

41:                                               ; preds = %40
  %42 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 10
  %43 = load ptr, ptr %42, align 8, !tbaa !22
  %44 = icmp eq ptr %43, null
  br i1 %44, label %82, label %45

45:                                               ; preds = %78, %41
  %46 = phi ptr [ %80, %78 ], [ %43, %41 ]
  %47 = getelementptr inbounds %struct._tagTreeCCField, ptr %46, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !131
  %49 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %48) #31
  %50 = icmp eq ptr %49, null
  br i1 %50, label %78, label %51

51:                                               ; preds = %45
  %52 = getelementptr inbounds %struct._tagTreeCCNode, ptr %49, i64 0, i32 5
  %53 = load i32, ptr %52, align 8, !tbaa !66
  %54 = and i32 %53, 8
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %56, label %78

56:                                               ; preds = %51
  %57 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #32
  %58 = trunc i64 %57 to i32
  %59 = icmp slt i32 %58, 2
  br i1 %59, label %72, label %60

60:                                               ; preds = %56
  %61 = add i64 %57, 4294967295
  %62 = and i64 %61, 4294967295
  %63 = getelementptr inbounds i8, ptr %48, i64 %62
  %64 = load i8, ptr %63, align 1, !tbaa !36
  %65 = icmp eq i8 %64, 42
  br i1 %65, label %66, label %72

66:                                               ; preds = %60
  %67 = add i64 %57, 4294967294
  %68 = and i64 %67, 4294967295
  %69 = getelementptr inbounds i8, ptr %48, i64 %68
  %70 = load i8, ptr %69, align 1, !tbaa !36
  %71 = icmp eq i8 %70, 32
  br i1 %71, label %78, label %72

72:                                               ; preds = %66, %60, %56
  %73 = load ptr, ptr %4, align 8, !tbaa !7
  %74 = getelementptr inbounds %struct._tagTreeCCField, ptr %46, i64 0, i32 4
  %75 = load ptr, ptr %74, align 8, !tbaa !268
  %76 = getelementptr inbounds %struct._tagTreeCCField, ptr %46, i64 0, i32 5
  %77 = load i64, ptr %76, align 8, !tbaa !269
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %73, ptr noundef %75, i64 noundef %77, ptr noundef nonnull @.str.6.753) #29
  br label %78

78:                                               ; preds = %72, %66, %51, %45
  %79 = getelementptr inbounds %struct._tagTreeCCField, ptr %46, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !22
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %45, !llvm.loop !270

82:                                               ; preds = %78, %41, %40
  %83 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 12
  %84 = load ptr, ptr %83, align 8, !tbaa !22
  %85 = icmp eq ptr %84, null
  br i1 %85, label %86, label %11, !llvm.loop !271

86:                                               ; preds = %82, %6
  %87 = add nuw nsw i64 %7, 1
  %88 = icmp eq i64 %87, 512
  br i1 %88, label %89, label %6, !llvm.loop !272

89:                                               ; preds = %86
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCNodeVisitAll(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %5 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %13, %3
  %9 = phi ptr [ %15, %13 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !104
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void %1(ptr noundef %0, ptr noundef nonnull %9) #29
  tail call fastcc void @Visit(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1) #31
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !273

17:                                               ; preds = %13, %3
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 512
  br i1 %19, label %20, label %3, !llvm.loop !274

20:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Visit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %10

7:                                                ; preds = %10
  %8 = load ptr, ptr %4, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %15

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %13, %10 ], [ %5, %3 ]
  tail call void %2(ptr noundef %0, ptr noundef nonnull %11) #29
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !22
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %10, !llvm.loop !275

15:                                               ; preds = %15, %7
  %16 = phi ptr [ %18, %15 ], [ %8, %7 ]
  tail call fastcc void @Visit(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #31
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !22
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !276

20:                                               ; preds = %15, %7, %3
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @TreeCCNodeIsSingleton(ptr noundef readonly %0) #17 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %8, %1
  %4 = phi ptr [ %9, %8 ], [ %0, %1 ]
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %4, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !255
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %3
  %9 = load ptr, ptr %4, align 8, !tbaa !104
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %3, !llvm.loop !277

11:                                               ; preds = %8, %3, %1
  %12 = phi i32 [ 1, %1 ], [ 1, %8 ], [ 0, %3 ]
  ret i32 %12
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @TreeCCNodeHasAbstracts(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef %1, ptr noundef %1) #31, !range !78
  ret i32 %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @HasAbstracts(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !104
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #31, !range !78
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %30

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %26, %9
  %14 = phi ptr [ %28, %26 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !105
  %16 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %2, ptr noundef %15) #29
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %26

18:                                               ; preds = %22, %13
  %19 = phi ptr [ %20, %22 ], [ %2, %13 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !104
  %21 = icmp eq ptr %20, null
  br i1 %21, label %30, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %14, align 8, !tbaa !105
  %24 = tail call ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %18, label %26, !llvm.loop !278

26:                                               ; preds = %22, %13
  %27 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %14, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !279

30:                                               ; preds = %26, %18, %9, %6
  %31 = phi i32 [ 1, %6 ], [ 0, %9 ], [ 1, %18 ], [ 0, %26 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCNodeAddVirtual(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 8
  %10 = load i64, ptr %9, align 8, !tbaa !280
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !101
  %13 = load ptr, ptr %2, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %10, ptr noundef nonnull @.str.7.760, ptr noundef %12, ptr noundef %13) #29
  br label %14

14:                                               ; preds = %8, %3
  %15 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #36
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %19) #29
  br label %20

20:                                               ; preds = %17, %14
  %21 = load ptr, ptr %2, align 8, !tbaa !42
  store ptr %21, ptr %15, align 8, !tbaa !105
  %22 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !112
  %24 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  store ptr %23, ptr %24, align 8, !tbaa !137
  %25 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !52
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !63
  %29 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 2
  store ptr %28, ptr %29, align 8, !tbaa !281
  %30 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 3
  store ptr %2, ptr %30, align 8, !tbaa !176
  %31 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  store ptr null, ptr %31, align 8, !tbaa !259
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !258
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %20
  %36 = phi ptr [ %38, %35 ], [ %33, %20 ]
  %37 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %36, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !259
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35, !llvm.loop !282

40:                                               ; preds = %35
  %.lcssa = phi ptr [ %36, %35 ]
  %41 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa, i64 0, i32 4
  br label %42

42:                                               ; preds = %40, %20
  %43 = phi ptr [ %41, %40 ], [ %32, %20 ]
  store ptr %15, ptr %43, align 8, !tbaa !22
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @TreeCCNodeInheritsFrom(ptr noundef readonly %0, ptr noundef readnone %1) #17 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %10, label %4

4:                                                ; preds = %7, %2
  %5 = phi ptr [ %8, %7 ], [ %0, %2 ]
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %10, label %7

7:                                                ; preds = %4
  %8 = load ptr, ptr %5, align 8, !tbaa !104
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %4, !llvm.loop !283

10:                                               ; preds = %7, %4, %2
  %11 = phi i32 [ 0, %2 ], [ 0, %7 ], [ 1, %4 ]
  ret i32 %11
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @TreeCCNodeClearMarking(ptr nocapture noundef readonly %0, i32 noundef %1) #20 {
  %3 = xor i32 %1, -1
  br label %4

4:                                                ; preds = %17, %2
  %5 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %6 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %17, label %9

9:                                                ; preds = %9, %4
  %10 = phi ptr [ %15, %9 ], [ %7, %4 ]
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !66
  %13 = and i32 %12, %3
  store i32 %13, ptr %11, align 8, !tbaa !66
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !22
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %9, !llvm.loop !284

17:                                               ; preds = %9, %4
  %18 = add nuw nsw i64 %5, 1
  %19 = icmp eq i64 %18, 512
  br i1 %19, label %20, label %4, !llvm.loop !285

20:                                               ; preds = %17
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @TreeCCNodeAssignPositions(ptr nocapture noundef %0) #21 {
  %2 = tail call fastcc i32 @AssignPositions(ptr noundef %0, i32 noundef 0) #31
  ret i32 %2
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @AssignPositions(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #21 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %9 = tail call fastcc i32 @AssignPositions(ptr noundef nonnull %7, i32 noundef %8) #31
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !286

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %1, %2 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 7
  store i32 %14, ptr %15, align 8, !tbaa !87
  %16 = add nsw i32 %14, 1
  ret i32 %16
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCFieldCreate(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5) #0 {
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 1
  %10 = icmp eq i16 %9, 0
  br i1 %10, label %20, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %13, i64 0, i32 5
  %15 = load i64, ptr %14, align 8, !tbaa !33
  %16 = icmp eq ptr %3, null
  %17 = select i1 %16, ptr @.str.9.765, ptr %3
  %18 = icmp eq ptr %4, null
  %19 = select i1 %18, ptr @.str.10.766, ptr %4
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %15, ptr noundef nonnull @.str.8.767, ptr noundef %2, ptr noundef nonnull %17, ptr noundef nonnull %19, i32 noundef %5) #29
  br label %20

20:                                               ; preds = %11, %6
  %21 = icmp eq ptr %1, null
  br i1 %21, label %32, label %22

22:                                               ; preds = %29, %20
  %23 = phi ptr [ %30, %29 ], [ %1, %20 ]
  %24 = tail call fastcc i32 @IsDeclared(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %2, i32 noundef 0) #31, !range !78
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  tail call void @free(ptr noundef %2) #29
  tail call void @free(ptr noundef %3) #29
  %27 = icmp eq ptr %4, null
  br i1 %27, label %64, label %28

28:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %4) #29
  br label %64

29:                                               ; preds = %22
  %30 = load ptr, ptr %23, align 8, !tbaa !104
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %22, !llvm.loop !287

32:                                               ; preds = %29, %20
  %33 = tail call fastcc i32 @IsDeclaredInChildren(ptr noundef %0, ptr noundef %1, ptr noundef %2) #31, !range !78
  %34 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  br label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %34, %32 ], [ %40, %35 ]
  %37 = phi ptr [ null, %32 ], [ %38, %35 ]
  %38 = load ptr, ptr %36, align 8, !tbaa !22
  %39 = icmp eq ptr %38, null
  %40 = getelementptr inbounds %struct._tagTreeCCField, ptr %38, i64 0, i32 6
  br i1 %39, label %41, label %35, !llvm.loop !288

41:                                               ; preds = %35
  %.lcssa = phi ptr [ %37, %35 ]
  %42 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #36
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %46) #29
  br label %47

47:                                               ; preds = %44, %41
  store ptr %2, ptr %42, align 8, !tbaa !132
  %48 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 1
  store ptr %3, ptr %48, align 8, !tbaa !131
  %49 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 2
  store ptr %4, ptr %49, align 8, !tbaa !134
  %50 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 3
  store i32 %5, ptr %50, align 8, !tbaa !129
  %51 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds %struct.TreeCCInput, ptr %52, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !31
  %55 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 4
  store ptr %54, ptr %55, align 8, !tbaa !268
  %56 = getelementptr inbounds %struct.TreeCCInput, ptr %52, i64 0, i32 5
  %57 = load i64, ptr %56, align 8, !tbaa !33
  %58 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 5
  store i64 %57, ptr %58, align 8, !tbaa !269
  %59 = getelementptr inbounds %struct._tagTreeCCField, ptr %42, i64 0, i32 6
  store ptr null, ptr %59, align 8, !tbaa !256
  %60 = icmp eq ptr %.lcssa, null
  br i1 %60, label %63, label %61

61:                                               ; preds = %47
  %62 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 6
  store ptr %42, ptr %62, align 8, !tbaa !256
  br label %64

63:                                               ; preds = %47
  store ptr %42, ptr %34, align 8, !tbaa !255
  br label %64

64:                                               ; preds = %63, %61, %28, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @IsDeclared(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %29, %4
  %9 = phi ptr [ %31, %29 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !132
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #32
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = icmp eq i32 %3, 0
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  br i1 %14, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !268
  %20 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !269
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %16, ptr noundef %19, i64 noundef %21, ptr noundef nonnull @.str.11.768, ptr noundef %2) #29
  %22 = load ptr, ptr %15, align 8, !tbaa !7
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %22, ptr noundef nonnull @.str.3.746) #29
  br label %33

23:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %16, ptr noundef nonnull @.str.11.768, ptr noundef %2) #29
  %24 = load ptr, ptr %15, align 8, !tbaa !7
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !268
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !269
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %24, ptr noundef %26, i64 noundef %28, ptr noundef nonnull @.str.3.746) #29
  br label %33

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct._tagTreeCCField, ptr %9, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !22
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !289

33:                                               ; preds = %29, %23, %17, %4
  %34 = phi i32 [ 1, %23 ], [ 1, %17 ], [ 0, %4 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @IsDeclaredInChildren(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %11

7:                                                ; preds = %15
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !22
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !llvm.loop !290

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %13 = tail call fastcc i32 @IsDeclared(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, i32 noundef 1) #31, !range !78
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @IsDeclaredInChildren(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2) #31, !range !78
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %15, %11, %7, %3
  %19 = phi i32 [ 0, %3 ], [ 0, %7 ], [ 1, %15 ], [ 1, %11 ]
  ret i32 %19
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCOperationFree(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !42
  tail call void @free(ptr noundef %2) #29
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !41
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %4) #29
  br label %7

7:                                                ; preds = %6, %1
  %8 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !112
  tail call void @free(ptr noundef %9) #29
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %0, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !52
  %12 = icmp eq ptr %11, null
  br i1 %12, label %24, label %13

13:                                               ; preds = %20, %7
  %14 = phi ptr [ %16, %20 ], [ %11, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = load ptr, ptr %14, align 8, !tbaa !67
  %18 = icmp eq ptr %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  tail call void @free(ptr noundef nonnull %17) #29
  br label %20

20:                                               ; preds = %19, %13
  %21 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !61
  tail call void @free(ptr noundef %22) #29
  %23 = icmp eq ptr %16, null
  br i1 %23, label %24, label %13, !llvm.loop !291

24:                                               ; preds = %20, %7
  %25 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %0, i64 0, i32 10
  %26 = load ptr, ptr %25, align 8, !tbaa !54
  %27 = icmp eq ptr %26, null
  br i1 %27, label %50, label %28

28:                                               ; preds = %48, %24
  %29 = phi ptr [ %31, %48 ], [ %26, %24 ]
  %30 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %29, i64 0, i32 8
  %31 = load ptr, ptr %30, align 8, !tbaa !74
  %32 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %29, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !122
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %29, i64 0, i32 9
  %37 = load ptr, ptr %36, align 8, !tbaa !292
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  tail call void @free(ptr noundef nonnull %33) #29
  br label %40

40:                                               ; preds = %39, %35, %28
  %41 = load ptr, ptr %29, align 8, !tbaa !117
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %43, %40
  %44 = phi ptr [ %46, %43 ], [ %41, %40 ]
  %45 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %44, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !118
  tail call void @free(ptr noundef nonnull %44) #29
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %43, !llvm.loop !293

48:                                               ; preds = %43, %40
  tail call void @free(ptr noundef %29) #29
  %49 = icmp eq ptr %31, null
  br i1 %49, label %50, label %28, !llvm.loop !294

50:                                               ; preds = %48, %24
  %51 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %0, i64 0, i32 12
  %52 = load ptr, ptr %51, align 8, !tbaa !51
  %53 = icmp eq ptr %52, null
  br i1 %53, label %55, label %54

54:                                               ; preds = %50
  tail call void @free(ptr noundef nonnull %52) #29
  br label %55

55:                                               ; preds = %54, %50
  tail call void @free(ptr noundef nonnull %0) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCOperationCreate(ptr nocapture noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8, i64 noundef %9) #0 {
  %11 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 1
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %3, null
  %17 = select i1 %16, ptr @.str.1.771, ptr %3
  %18 = select i1 %16, ptr @.str.1.771, ptr @.str.2.772
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %9, ptr noundef nonnull @.str.773, ptr noundef %1, ptr noundef nonnull %17, ptr noundef nonnull %18, ptr noundef %2, i32 noundef %6) #29
  %19 = icmp eq ptr %5, null
  br i1 %19, label %32, label %20

20:                                               ; preds = %20, %15
  %21 = phi ptr [ %30, %20 ], [ %5, %15 ]
  %22 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !61
  %24 = load ptr, ptr %21, align 8, !tbaa !67
  %25 = icmp eq ptr %24, null
  %26 = select i1 %25, ptr @.str.4.774, ptr %24
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 2
  %28 = load i32, ptr %27, align 8, !tbaa !59
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %9, ptr noundef nonnull @.str.3.775, ptr noundef %23, ptr noundef nonnull %26, i32 noundef %28) #29
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %21, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !63
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %20, !llvm.loop !295

32:                                               ; preds = %20, %15, %10
  %33 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #36
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %38

35:                                               ; preds = %32
  %36 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %37) #29
  br label %38

38:                                               ; preds = %35, %32
  store ptr %2, ptr %33, align 8, !tbaa !42
  %39 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 1
  store ptr %3, ptr %39, align 8, !tbaa !41
  %40 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 2
  store ptr %1, ptr %40, align 8, !tbaa !112
  %41 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 3
  store ptr %4, ptr %41, align 8, !tbaa !126
  %42 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 4
  store ptr %5, ptr %42, align 8, !tbaa !52
  %43 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 5
  store i32 %6, ptr %43, align 8, !tbaa !40
  %44 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 6
  store i32 %7, ptr %44, align 4, !tbaa !50
  %45 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 7
  store ptr %8, ptr %45, align 8, !tbaa !296
  %46 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 8
  store i64 %9, ptr %46, align 8, !tbaa !280
  %47 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 10
  %48 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %47, i8 0, i64 28, i1 false)
  %49 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 14
  %50 = load <2 x ptr>, ptr %48, align 8, !tbaa !22
  store <2 x ptr> %50, ptr %49, align 8, !tbaa !22
  %51 = tail call i32 @TreeCCHashString(ptr noundef %2) #29
  %52 = and i32 %51, 511
  %53 = zext i32 %52 to i64
  %54 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 9
  store ptr %55, ptr %56, align 8, !tbaa !27
  store ptr %33, ptr %54, align 8, !tbaa !22
  ret ptr %33
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCOperationFind(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = tail call i32 @TreeCCHashString(ptr noundef %1) #29
  %4 = and i32 %3, 511
  %5 = zext i32 %4 to i64
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !22
  %8 = icmp eq ptr %7, null
  br i1 %8, label %18, label %9

9:                                                ; preds = %14, %2
  %10 = phi ptr [ %16, %14 ], [ %7, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !42
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) %1) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %10, i64 0, i32 9
  %16 = load ptr, ptr %15, align 8, !tbaa !22
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %9, !llvm.loop !297

18:                                               ; preds = %14, %9, %2
  %19 = phi ptr [ null, %2 ], [ null, %14 ], [ %10, %9 ]
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCOperationAddCase(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, i64 noundef %4) #0 {
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %19, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %2, null
  br i1 %11, label %12, label %14

12:                                               ; preds = %10
  %13 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %4, ptr noundef nonnull @.str.5.776, ptr noundef %13) #29
  br label %19

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8, !tbaa !76
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %15, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !101
  %18 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %4, ptr noundef nonnull @.str.6.777, ptr noundef %17, ptr noundef %18) #29
  br label %19

19:                                               ; preds = %14, %12, %5
  %20 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #36
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %24) #29
  br label %25

25:                                               ; preds = %22, %19
  store ptr %2, ptr %20, align 8, !tbaa !117
  %26 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 1
  store ptr null, ptr %26, align 8, !tbaa !122
  %27 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 2
  store ptr %1, ptr %27, align 8, !tbaa !116
  %28 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 3
  store i32 0, ptr %28, align 8, !tbaa !47
  %29 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 4
  store ptr %3, ptr %29, align 8, !tbaa !79
  %30 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 5
  store i64 %4, ptr %30, align 8, !tbaa !80
  %31 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %20, i64 0, i32 6
  %32 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %31, i8 0, i64 32, i1 false)
  %33 = load ptr, ptr %32, align 8, !tbaa !298
  %34 = icmp eq ptr %33, null
  %35 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 10
  %36 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %33, i64 0, i32 8
  %37 = select i1 %34, ptr %35, ptr %36
  store ptr %20, ptr %37, align 8, !tbaa !22
  store ptr %20, ptr %32, align 8, !tbaa !298
  %38 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 13
  %39 = load i32, ptr %38, align 8, !tbaa !299
  %40 = add nsw i32 %39, 1
  store i32 %40, ptr %38, align 8, !tbaa !299
  ret ptr %20
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCOperationValidate(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  br label %3

3:                                                ; preds = %248, %1
  %4 = phi i64 [ 0, %1 ], [ %249, %248 ]
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %248, label %8

8:                                                ; preds = %244, %3
  %9 = phi ptr [ %246, %244 ], [ %6, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %67

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 13
  %16 = load i32, ptr %15, align 8, !tbaa !299
  %17 = icmp slt i32 %16, 2
  br i1 %17, label %67, label %18

18:                                               ; preds = %14
  %19 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 6
  %20 = load i32, ptr %19, align 4, !tbaa !50
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %67, label %22

22:                                               ; preds = %18
  tail call void @TreeCCNodeClearMarking(ptr noundef %0, i32 noundef 65280) #29
  %23 = load i32, ptr %15, align 8, !tbaa !299
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #36
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load ptr, ptr %2, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %29) #29
  br label %30

30:                                               ; preds = %28, %22
  %31 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %42, label %34

34:                                               ; preds = %34, %30
  %35 = phi i64 [ %37, %34 ], [ 0, %30 ]
  %36 = phi ptr [ %40, %34 ], [ %32, %30 ]
  %37 = add nuw i64 %35, 1
  %38 = getelementptr inbounds ptr, ptr %26, i64 %35
  store ptr %36, ptr %38, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %36, i64 0, i32 8
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %34, !llvm.loop !300

42:                                               ; preds = %34, %30
  %43 = load i32, ptr %15, align 8, !tbaa !299
  %44 = sext i32 %43 to i64
  tail call void @qsort(ptr noundef %26, i64 noundef %44, i64 noundef 8, ptr noundef nonnull @CaseCompare) #29
  %45 = load ptr, ptr %26, align 8, !tbaa !22
  store ptr %45, ptr %31, align 8, !tbaa !54
  %46 = load i32, ptr %15, align 8, !tbaa !299
  %47 = icmp sgt i32 %46, 1
  br i1 %47, label %48, label %60

48:                                               ; preds = %42
  %49 = zext i32 %46 to i64
  br label %50

50:                                               ; preds = %50, %48
  %51 = phi i64 [ 1, %48 ], [ %58, %50 ]
  %52 = getelementptr inbounds ptr, ptr %26, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !22
  %54 = add nsw i64 %51, -1
  %55 = getelementptr inbounds ptr, ptr %26, i64 %54
  %56 = load ptr, ptr %55, align 8, !tbaa !22
  %57 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %56, i64 0, i32 8
  store ptr %53, ptr %57, align 8, !tbaa !74
  %58 = add nuw nsw i64 %51, 1
  %59 = icmp eq i64 %58, %49
  br i1 %59, label %60, label %50, !llvm.loop !301

60:                                               ; preds = %50, %42
  %61 = add nsw i32 %46, -1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds ptr, ptr %26, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !22
  %65 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 11
  store ptr %64, ptr %65, align 8, !tbaa !298
  %66 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %64, i64 0, i32 8
  store ptr null, ptr %66, align 8, !tbaa !74
  tail call void @free(ptr noundef nonnull %26) #29
  br label %67

67:                                               ; preds = %60, %18, %14, %8
  tail call void @TreeCCNodeClearMarking(ptr noundef %0, i32 noundef 65280) #29
  %68 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 10
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %78

71:                                               ; preds = %67
  %72 = load ptr, ptr %2, align 8, !tbaa !7
  %73 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 7
  %74 = load ptr, ptr %73, align 8, !tbaa !296
  %75 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 8
  %76 = load i64, ptr %75, align 8, !tbaa !280
  %77 = load ptr, ptr %9, align 8, !tbaa !42
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %72, ptr noundef %74, i64 noundef %76, ptr noundef nonnull @.str.7.780, ptr noundef %77) #29
  br label %78

78:                                               ; preds = %71, %67
  %79 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 6
  %80 = load i32, ptr %79, align 4, !tbaa !50
  switch i32 %80, label %154 [
    i32 1, label %81
    i32 0, label %129
  ]

81:                                               ; preds = %78
  %82 = load ptr, ptr %68, align 8, !tbaa !22
  %83 = icmp eq ptr %82, null
  br i1 %83, label %109, label %84

84:                                               ; preds = %105, %81
  %85 = phi ptr [ %107, %105 ], [ %82, %81 ]
  %86 = load ptr, ptr %85, align 8, !tbaa !117
  %87 = icmp eq ptr %86, null
  br i1 %87, label %105, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %86, align 8, !tbaa !76
  %90 = getelementptr inbounds %struct._tagTreeCCNode, ptr %89, i64 0, i32 5
  %91 = load i32, ptr %90, align 8, !tbaa !66
  %92 = and i32 %91, 256
  %93 = icmp eq i32 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %88
  %95 = load ptr, ptr %2, align 8, !tbaa !7
  %96 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %85, i64 0, i32 4
  %97 = load ptr, ptr %96, align 8, !tbaa !79
  %98 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %85, i64 0, i32 5
  %99 = load i64, ptr %98, align 8, !tbaa !80
  %100 = getelementptr inbounds %struct._tagTreeCCNode, ptr %89, i64 0, i32 4
  %101 = load ptr, ptr %100, align 8, !tbaa !101
  %102 = load ptr, ptr %9, align 8, !tbaa !42
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %95, ptr noundef %97, i64 noundef %99, ptr noundef nonnull @.str.8.781, ptr noundef %101, ptr noundef %102) #29
  br label %105

103:                                              ; preds = %88
  %104 = or i32 %91, 256
  store i32 %104, ptr %90, align 8, !tbaa !66
  br label %105

105:                                              ; preds = %103, %94, %84
  %106 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %85, i64 0, i32 8
  %107 = load ptr, ptr %106, align 8, !tbaa !22
  %108 = icmp eq ptr %107, null
  br i1 %108, label %109, label %84, !llvm.loop !302

109:                                              ; preds = %105, %81
  %110 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !22
  %112 = icmp eq ptr %111, null
  br i1 %112, label %244, label %113

113:                                              ; preds = %125, %109
  %114 = phi ptr [ %127, %125 ], [ %111, %109 ]
  %115 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 2
  %116 = load i32, ptr %115, align 8, !tbaa !59
  %117 = and i32 %116, 1
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %125, label %119

119:                                              ; preds = %113
  %120 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 1
  %121 = load ptr, ptr %120, align 8, !tbaa !61
  %122 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %121) #29
  %123 = icmp eq ptr %122, null
  br i1 %123, label %125, label %124

124:                                              ; preds = %119
  tail call fastcc void @VerifyHierarchy(ptr noundef %0, ptr noundef nonnull %9, ptr noundef nonnull %122) #31
  br label %125

125:                                              ; preds = %124, %119, %113
  %126 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 4
  %127 = load ptr, ptr %126, align 8, !tbaa !22
  %128 = icmp eq ptr %127, null
  br i1 %128, label %244, label %113, !llvm.loop !303

129:                                              ; preds = %78
  %130 = load ptr, ptr %68, align 8, !tbaa !54
  %131 = icmp eq ptr %130, null
  br i1 %131, label %244, label %132

132:                                              ; preds = %129
  %133 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %130, i64 0, i32 8
  %134 = load ptr, ptr %133, align 8, !tbaa !74
  %135 = icmp eq ptr %134, null
  br i1 %135, label %244, label %136

136:                                              ; preds = %136, %132
  %137 = phi ptr [ %145, %136 ], [ %134, %132 ]
  %138 = load ptr, ptr %2, align 8, !tbaa !7
  %139 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %137, i64 0, i32 4
  %140 = load ptr, ptr %139, align 8, !tbaa !79
  %141 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %137, i64 0, i32 5
  %142 = load i64, ptr %141, align 8, !tbaa !80
  %143 = load ptr, ptr %9, align 8, !tbaa !42
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %138, ptr noundef %140, i64 noundef %142, ptr noundef nonnull @.str.9.782, ptr noundef %143) #29
  %144 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %137, i64 0, i32 8
  %145 = load ptr, ptr %144, align 8, !tbaa !74
  %146 = icmp eq ptr %145, null
  br i1 %146, label %147, label %136, !llvm.loop !304

147:                                              ; preds = %136
  %148 = load ptr, ptr %2, align 8, !tbaa !7
  %149 = load ptr, ptr %68, align 8, !tbaa !54
  %150 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %149, i64 0, i32 4
  %151 = load ptr, ptr %150, align 8, !tbaa !79
  %152 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %149, i64 0, i32 5
  %153 = load i64, ptr %152, align 8, !tbaa !80
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %148, ptr noundef %151, i64 noundef %153, ptr noundef nonnull @.str.10.783) #29
  br label %244

154:                                              ; preds = %78
  %155 = load ptr, ptr %68, align 8, !tbaa !54
  %156 = icmp eq ptr %155, null
  br i1 %156, label %244, label %157

157:                                              ; preds = %154
  %158 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 4
  %159 = load ptr, ptr %158, align 8, !tbaa !22
  %160 = icmp eq ptr %159, null
  br i1 %160, label %215, label %161

161:                                              ; preds = %210, %157
  %162 = phi ptr [ %213, %210 ], [ %159, %157 ]
  %163 = phi i32 [ %211, %210 ], [ 1, %157 ]
  %164 = getelementptr inbounds %struct._tagTreeCCParam, ptr %162, i64 0, i32 2
  %165 = load i32, ptr %164, align 8, !tbaa !59
  %166 = and i32 %165, 1
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %210, label %168

168:                                              ; preds = %161
  %169 = getelementptr inbounds %struct._tagTreeCCParam, ptr %162, i64 0, i32 1
  %170 = load ptr, ptr %169, align 8, !tbaa !61
  %171 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %170) #29
  %172 = icmp eq ptr %171, null
  br i1 %172, label %210, label %173

173:                                              ; preds = %168
  %174 = tail call i32 @TreeCCNodeAssignPositions(ptr noundef nonnull %171) #29
  %175 = getelementptr inbounds %struct._tagTreeCCParam, ptr %162, i64 0, i32 3
  store i32 %174, ptr %175, align 4, !tbaa !88
  %176 = mul nsw i32 %174, %163
  %177 = load ptr, ptr %158, align 8, !tbaa !22
  %178 = icmp eq ptr %177, null
  br i1 %178, label %210, label %179

179:                                              ; preds = %206, %173
  %180 = phi ptr [ %208, %206 ], [ %177, %173 ]
  %181 = getelementptr inbounds %struct._tagTreeCCParam, ptr %180, i64 0, i32 2
  %182 = load i32, ptr %181, align 8, !tbaa !59
  %183 = and i32 %182, 1
  %184 = icmp eq i32 %183, 0
  %185 = icmp eq ptr %180, %162
  %186 = or i1 %185, %184
  br i1 %186, label %206, label %187

187:                                              ; preds = %179
  %188 = getelementptr inbounds %struct._tagTreeCCParam, ptr %180, i64 0, i32 1
  %189 = load ptr, ptr %188, align 8, !tbaa !61
  %190 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %189) #29
  %191 = icmp eq ptr %190, null
  %192 = icmp eq ptr %190, %171
  %193 = or i1 %191, %192
  br i1 %193, label %206, label %194

194:                                              ; preds = %187
  %195 = tail call i32 @TreeCCNodeInheritsFrom(ptr noundef nonnull %171, ptr noundef nonnull %190) #29
  %196 = icmp eq i32 %195, 0
  br i1 %196, label %197, label %200

197:                                              ; preds = %194
  %198 = tail call i32 @TreeCCNodeInheritsFrom(ptr noundef nonnull %190, ptr noundef nonnull %171) #29
  %199 = icmp eq i32 %198, 0
  br i1 %199, label %206, label %200

200:                                              ; preds = %197, %194
  %201 = load ptr, ptr %2, align 8, !tbaa !7
  %202 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 7
  %203 = load ptr, ptr %202, align 8, !tbaa !296
  %204 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 8
  %205 = load i64, ptr %204, align 8, !tbaa !280
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %201, ptr noundef %203, i64 noundef %205, ptr noundef nonnull @.str.12.784) #29
  br label %244

206:                                              ; preds = %197, %187, %179
  %207 = getelementptr inbounds %struct._tagTreeCCParam, ptr %180, i64 0, i32 4
  %208 = load ptr, ptr %207, align 8, !tbaa !22
  %209 = icmp eq ptr %208, null
  br i1 %209, label %210, label %179, !llvm.loop !305

210:                                              ; preds = %206, %173, %168, %161
  %211 = phi i32 [ %163, %168 ], [ %163, %161 ], [ %176, %173 ], [ %176, %206 ]
  %212 = getelementptr inbounds %struct._tagTreeCCParam, ptr %162, i64 0, i32 4
  %213 = load ptr, ptr %212, align 8, !tbaa !22
  %214 = icmp eq ptr %213, null
  br i1 %214, label %215, label %161, !llvm.loop !306

215:                                              ; preds = %210, %157
  %216 = phi i32 [ 1, %157 ], [ %211, %210 ]
  %217 = sext i32 %216 to i64
  %218 = tail call noalias ptr @calloc(i64 noundef %217, i64 noundef 8) #28
  %219 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 12
  store ptr %218, ptr %219, align 8, !tbaa !51
  %220 = icmp eq ptr %218, null
  br i1 %220, label %221, label %223

221:                                              ; preds = %215
  %222 = load ptr, ptr %2, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %222) #29
  br label %223

223:                                              ; preds = %221, %215
  %224 = load ptr, ptr %68, align 8, !tbaa !22
  %225 = icmp eq ptr %224, null
  br i1 %225, label %234, label %226

226:                                              ; preds = %226, %223
  %227 = phi ptr [ %232, %226 ], [ %224, %223 ]
  %228 = load ptr, ptr %219, align 8, !tbaa !51
  %229 = load ptr, ptr %158, align 8, !tbaa !52
  %230 = load ptr, ptr %227, align 8, !tbaa !117
  tail call fastcc void @MarkMultiCase(ptr noundef %228, i32 noundef 0, i32 noundef 1, ptr noundef %229, ptr noundef nonnull %227, ptr noundef %230) #31
  %231 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %227, i64 0, i32 8
  %232 = load ptr, ptr %231, align 8, !tbaa !22
  %233 = icmp eq ptr %232, null
  br i1 %233, label %234, label %226, !llvm.loop !307

234:                                              ; preds = %226, %223
  %235 = load i32, ptr %79, align 4, !tbaa !50
  %236 = sext i32 %235 to i64
  %237 = tail call noalias ptr @calloc(i64 noundef %236, i64 noundef 8) #28
  %238 = icmp eq ptr %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %234
  %240 = load ptr, ptr %2, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %240) #29
  br label %241

241:                                              ; preds = %239, %234
  %242 = load ptr, ptr %219, align 8, !tbaa !51
  %243 = load ptr, ptr %158, align 8, !tbaa !52
  tail call fastcc void @VerifyMultiCoverage(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %242, i32 noundef 0, i32 noundef 1, ptr noundef %243, ptr noundef %237, ptr noundef %237) #31
  tail call void @free(ptr noundef %237) #29
  br label %244

244:                                              ; preds = %241, %200, %154, %147, %132, %129, %125, %109
  %245 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 9
  %246 = load ptr, ptr %245, align 8, !tbaa !22
  %247 = icmp eq ptr %246, null
  br i1 %247, label %248, label %8, !llvm.loop !308

248:                                              ; preds = %244, %3
  %249 = add nuw nsw i64 %4, 1
  %250 = icmp eq i64 %249, 512
  br i1 %250, label %251, label %3, !llvm.loop !309

251:                                              ; preds = %248
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @CaseCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #20 {
  %3 = load ptr, ptr %0, align 8, !tbaa !22
  %4 = load ptr, ptr %1, align 8, !tbaa !22
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = load ptr, ptr %3, align 8, !tbaa !22
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %80

10:                                               ; preds = %63, %2
  %11 = phi ptr [ %67, %63 ], [ %6, %2 ]
  %12 = phi ptr [ %66, %63 ], [ %5, %2 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !76
  %14 = load ptr, ptr %12, align 8, !tbaa !76
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %63, label %16

16:                                               ; preds = %20, %10
  %.lcssa5 = phi ptr [ %.lcssa5, %20 ], [ %13, %10 ]
  %.lcssa4 = phi ptr [ %.lcssa4, %20 ], [ %14, %10 ]
  %17 = phi ptr [ %18, %20 ], [ %13, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !104
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %.lcssa4
  br i1 %21, label %80, label %16, !llvm.loop !310

22:                                               ; preds = %26, %16
  %.lcssa5.lcssa = phi ptr [ %.lcssa5.lcssa, %26 ], [ %.lcssa5, %16 ]
  %.lcssa4.lcssa = phi ptr [ %.lcssa4.lcssa, %26 ], [ %.lcssa4, %16 ]
  %.lcssa3 = phi ptr [ %.lcssa3, %26 ], [ %17, %16 ]
  %23 = phi ptr [ %24, %26 ], [ %.lcssa4, %16 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !104
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %24, %.lcssa5.lcssa
  br i1 %27, label %80, label %22, !llvm.loop !311

28:                                               ; preds = %22
  %.lcssa5.lcssa.lcssa = phi ptr [ %.lcssa5.lcssa, %22 ]
  %.lcssa4.lcssa.lcssa = phi ptr [ %.lcssa4.lcssa, %22 ]
  %.lcssa3.lcssa = phi ptr [ %.lcssa3, %22 ]
  %.lcssa2 = phi ptr [ %23, %22 ]
  %29 = icmp eq ptr %.lcssa3.lcssa, %.lcssa2
  br i1 %29, label %30, label %71

30:                                               ; preds = %28
  %31 = load ptr, ptr %.lcssa5.lcssa.lcssa, align 8, !tbaa !104
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !66
  %37 = or i32 %36, 256
  store i32 %37, ptr %35, align 8, !tbaa !66
  %38 = load ptr, ptr %34, align 8, !tbaa !104
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !312

40:                                               ; preds = %33, %30
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %.lcssa4.lcssa.lcssa, %40 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !104
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._tagTreeCCNode, ptr %43, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !66
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !313

50:                                               ; preds = %45, %41
  %.lcssa1 = phi ptr [ %42, %45 ], [ %42, %41 ]
  %.lcssa = phi ptr [ %43, %45 ], [ %43, %41 ]
  br i1 %32, label %58, label %51

51:                                               ; preds = %51, %50
  %52 = phi ptr [ %56, %51 ], [ %31, %50 ]
  %53 = getelementptr inbounds %struct._tagTreeCCNode, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !66
  %55 = and i32 %54, -257
  store i32 %55, ptr %53, align 8, !tbaa !66
  %56 = load ptr, ptr %52, align 8, !tbaa !104
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %51, !llvm.loop !314

58:                                               ; preds = %51, %50
  br label %59

59:                                               ; preds = %59, %58
  %60 = phi ptr [ %61, %59 ], [ %.lcssa5.lcssa.lcssa, %58 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !104
  %62 = icmp eq ptr %61, %.lcssa
  br i1 %62, label %71, label %59, !llvm.loop !315

63:                                               ; preds = %10
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %11, i64 0, i32 1
  %65 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %12, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !22
  %67 = load ptr, ptr %64, align 8, !tbaa !22
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %10, label %80, !llvm.loop !316

71:                                               ; preds = %59, %28
  %72 = phi ptr [ %.lcssa3.lcssa, %28 ], [ %60, %59 ]
  %73 = phi ptr [ %.lcssa2, %28 ], [ %.lcssa1, %59 ]
  %74 = getelementptr inbounds %struct._tagTreeCCNode, ptr %72, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !102
  %76 = getelementptr inbounds %struct._tagTreeCCNode, ptr %73, i64 0, i32 6
  %77 = load i32, ptr %76, align 4, !tbaa !102
  %78 = icmp slt i32 %75, %77
  %79 = select i1 %78, i32 -1, i32 1
  br label %80

80:                                               ; preds = %71, %63, %26, %20, %2
  %81 = phi i32 [ 0, %2 ], [ %79, %71 ], [ 1, %26 ], [ -1, %20 ], [ 0, %63 ]
  ret i32 %81
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @VerifyHierarchy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !66
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !296
  %16 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !280
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !101
  %20 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %13, ptr noundef %15, i64 noundef %17, ptr noundef nonnull @.str.11.788, ptr noundef %19, ptr noundef %20) #29
  br label %30

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  tail call fastcc void @VerifyHierarchy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %26) #31
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !22
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !317

30:                                               ; preds = %25, %21, %11, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MarkMultiCase(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #21 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %14, %6
  %9 = phi ptr [ %16, %14 ], [ %3, %6 ]
  %10 = getelementptr inbounds %struct._tagTreeCCParam, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !59
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !318

18:                                               ; preds = %14, %6
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  store ptr %4, ptr %20, align 8, !tbaa !22
  br label %26

24:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %25 = load ptr, ptr %5, align 8, !tbaa !76
  tail call fastcc void @MarkMultiScan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.lcssa, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %25) #31
  br label %26

26:                                               ; preds = %24, %23, %18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @VerifyMultiCoverage(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %16, %8
  %11 = phi ptr [ %18, %16 ], [ %5, %8 ]
  %12 = getelementptr inbounds %struct._tagTreeCCParam, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !59
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %91

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %11, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !319

20:                                               ; preds = %16, %8
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !22
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %97

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !50
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %80

29:                                               ; preds = %25
  %30 = zext i32 %27 to i64
  br label %37

31:                                               ; preds = %37
  %32 = add nuw nsw i64 %38, 1
  %33 = icmp eq i64 %32, %30
  br i1 %33, label %34, label %37, !llvm.loop !320

34:                                               ; preds = %31
  br i1 %28, label %35, label %80

35:                                               ; preds = %34
  %36 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  br label %45

37:                                               ; preds = %31, %29
  %38 = phi i64 [ 0, %29 ], [ %32, %31 ]
  %39 = getelementptr inbounds ptr, ptr %6, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !22
  %41 = getelementptr inbounds %struct._tagTreeCCNode, ptr %40, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !66
  %43 = and i32 %42, 2
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %31, label %97

45:                                               ; preds = %72, %35
  %46 = phi i64 [ 0, %35 ], [ %74, %72 ]
  %47 = phi ptr [ null, %35 ], [ %73, %72 ]
  %48 = getelementptr inbounds ptr, ptr %6, i64 %46
  %49 = load ptr, ptr %48, align 8, !tbaa !22
  %50 = getelementptr inbounds %struct._tagTreeCCNode, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !101
  %52 = icmp eq ptr %47, null
  br i1 %52, label %70, label %53

53:                                               ; preds = %45
  %54 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %47) #32
  %55 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %51) #32
  %56 = add i64 %55, %54
  %57 = shl i64 %56, 32
  %58 = add i64 %57, 12884901888
  %59 = ashr exact i64 %58, 32
  %60 = tail call ptr @realloc(ptr noundef nonnull %47, i64 noundef %59) #35
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %64

62:                                               ; preds = %53
  %63 = load ptr, ptr %36, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %63) #29
  br label %64

64:                                               ; preds = %62, %53
  %65 = shl i64 %54, 32
  %66 = ashr exact i64 %65, 32
  %67 = getelementptr inbounds i8, ptr %60, i64 %66
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %67, ptr noundef nonnull align 1 dereferenceable(3) @.str.15.785, i64 3, i1 false) #29
  %68 = getelementptr inbounds i8, ptr %67, i64 2
  %69 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %68, ptr noundef nonnull dereferenceable(1) %51) #29
  br label %72

70:                                               ; preds = %45
  %71 = tail call ptr @TreeCCDupString(ptr noundef %51) #29
  br label %72

72:                                               ; preds = %70, %64
  %73 = phi ptr [ %60, %64 ], [ %71, %70 ]
  %74 = add nuw nsw i64 %46, 1
  %75 = load i32, ptr %26, align 4, !tbaa !50
  %76 = sext i32 %75 to i64
  %77 = icmp slt i64 %74, %76
  br i1 %77, label %45, label %78, !llvm.loop !321

78:                                               ; preds = %72
  %.lcssa = phi ptr [ %73, %72 ]
  %79 = icmp eq ptr %.lcssa, null
  br i1 %79, label %80, label %82

80:                                               ; preds = %78, %34, %25
  %81 = tail call ptr @TreeCCDupString(ptr noundef nonnull @.str.13.786) #29
  br label %82

82:                                               ; preds = %80, %78
  %83 = phi ptr [ %.lcssa, %78 ], [ %81, %80 ]
  %84 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 7
  %87 = load ptr, ptr %86, align 8, !tbaa !296
  %88 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 8
  %89 = load i64, ptr %88, align 8, !tbaa !280
  %90 = load ptr, ptr %1, align 8, !tbaa !42
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %85, ptr noundef %87, i64 noundef %89, ptr noundef nonnull @.str.14.787, ptr noundef %83, ptr noundef %90) #29
  tail call void @free(ptr noundef %83) #29
  br label %97

91:                                               ; preds = %10
  %.lcssa1 = phi ptr [ %11, %10 ]
  %92 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa1, i64 0, i32 1
  %93 = load ptr, ptr %92, align 8, !tbaa !61
  %94 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %93) #29
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %91
  tail call fastcc void @VerifyMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.lcssa1, ptr noundef nonnull %94, ptr noundef %6, ptr noundef %7) #31
  br label %97

97:                                               ; preds = %96, %91, %82, %37, %20
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #23

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @VerifyMultiScan(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  store ptr %6, ptr %8, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !87
  %12 = mul nsw i32 %11, %4
  %13 = add nsw i32 %12, %3
  %14 = getelementptr inbounds %struct._tagTreeCCParam, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !88
  %16 = mul nsw i32 %15, %4
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %5, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !63
  %19 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call fastcc void @VerifyMultiCoverage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef %16, ptr noundef %18, ptr noundef %7, ptr noundef nonnull %19) #31
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %23, %9
  %24 = phi ptr [ %26, %23 ], [ %21, %9 ]
  tail call fastcc void @VerifyMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %24, ptr noundef %7, ptr noundef nonnull %8) #31
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !22
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !322

28:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MarkMultiScan(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #21 {
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !87
  %10 = mul nsw i32 %9, %2
  %11 = add nsw i32 %10, %1
  %12 = getelementptr inbounds %struct._tagTreeCCParam, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !88
  %14 = mul nsw i32 %13, %2
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %3, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !63
  %17 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !118
  tail call fastcc void @MarkMultiCase(ptr noundef %0, i32 noundef %11, i32 noundef %14, ptr noundef %16, ptr noundef %4, ptr noundef %18) #31
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !22
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %7
  %23 = phi ptr [ %25, %22 ], [ %20, %7 ]
  tail call fastcc void @MarkMultiScan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %23) #31
  %24 = getelementptr inbounds %struct._tagTreeCCNode, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !323

27:                                               ; preds = %22, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCOperationFindCase(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr noundef %2) #0 {
  %4 = tail call ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %2) #31
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !22
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %17, %6
  %11 = phi ptr [ %19, %17 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !117
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !76
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %11, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !324

21:                                               ; preds = %17, %14, %6, %3
  %22 = phi ptr [ null, %3 ], [ null, %6 ], [ %11, %14 ], [ null, %17 ]
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCOperationVisitAll(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  br label %3

3:                                                ; preds = %13, %2
  %4 = phi i64 [ 0, %2 ], [ %14, %13 ]
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !22
  %7 = icmp eq ptr %6, null
  br i1 %7, label %13, label %8

8:                                                ; preds = %8, %3
  %9 = phi ptr [ %11, %8 ], [ %6, %3 ]
  tail call void %1(ptr noundef %0, ptr noundef nonnull %9) #29
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 9
  %11 = load ptr, ptr %10, align 8, !tbaa !22
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %8, !llvm.loop !325

13:                                               ; preds = %8, %3
  %14 = add nuw nsw i64 %4, 1
  %15 = icmp eq i64 %14, 512
  br i1 %15, label %16, label %3, !llvm.loop !326

16:                                               ; preds = %13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @TreeCCOptionProcess(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  br label %9

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !327
  %8 = icmp eq i64 %5, 32
  br i1 %8, label %20, label %9, !llvm.loop !329

9:                                                ; preds = %4, %3
  %10 = phi i64 [ 0, %3 ], [ %5, %4 ]
  %11 = phi ptr [ @.str.795, %3 ], [ %7, %4 ]
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %11) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %9
  %.lcssa = phi i64 [ %10, %9 ]
  %15 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %.lcssa, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !330
  %17 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %.lcssa, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !331
  %19 = tail call i32 %16(ptr noundef %0, ptr noundef %2, i32 noundef %18) #29
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i32 [ %19, %14 ], [ 2, %4 ]
  ret i32 %21
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @TrackLinesOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 1
  %10 = and i16 %9, 2
  %11 = and i16 %8, -3
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @NoSingletonsOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 2
  %10 = and i16 %9, 4
  %11 = and i16 %8, -5
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @ReentrantOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 3
  %10 = and i16 %9, 8
  %11 = and i16 %8, -9
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @ForceOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 4
  %10 = and i16 %9, 16
  %11 = and i16 %8, -17
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @VirtualFactoryOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 5
  %10 = and i16 %9, 32
  %11 = and i16 %8, -33
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @AbstractFactoryOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 6
  %10 = and i16 %9, 64
  %11 = and i16 %8, -65
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @KindInVtableOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 7
  %10 = and i16 %9, 128
  %11 = and i16 %8, -129
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal i32 @PrefixOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  store ptr %1, ptr %6, align 8, !tbaa !13
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 4, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal i32 @StateTypeOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  store ptr %1, ptr %6, align 8, !tbaa !14
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 4, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @NamespaceOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !36
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  %9 = select i1 %7, ptr %1, ptr null
  %10 = zext i1 %7 to i32
  store ptr %9, ptr %8, align 8, !tbaa !148
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 4, %3 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @BaseOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #25 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !36
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %25

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %16, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %5 ]
  %12 = phi i8 [ %18, %9 ], [ %6, %5 ]
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %10, 10
  %15 = add nsw i32 %13, -48
  %16 = add nsw i32 %15, %14
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !36
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %9, label %21, !llvm.loop !332

21:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %16, %9 ]
  %.lcssa = phi i8 [ %18, %9 ]
  %22 = icmp eq i8 %.lcssa, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  store i32 %.lcssa1, ptr %24, align 8, !tbaa !15
  br label %25

25:                                               ; preds = %23, %21, %5, %3
  %26 = phi i32 [ 4, %3 ], [ 3, %5 ], [ 0, %23 ], [ 3, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @LangOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #26 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.32.827) #32
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.33.828) #32
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.34.829) #32
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.35.830) #32
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.36.831) #32
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.37.832) #32
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.38.833) #32
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.39.834) #32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.40.835) #32
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.41.836) #32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.42.837) #32
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.43.838) #32
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.44.839) #32
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41, %38, %35, %32, %29, %26, %23, %20, %17, %14, %11, %8, %5
  %45 = phi i32 [ 0, %8 ], [ 0, %5 ], [ 1, %14 ], [ 1, %11 ], [ 2, %20 ], [ 2, %17 ], [ 3, %29 ], [ 3, %26 ], [ 3, %23 ], [ 4, %35 ], [ 4, %32 ], [ 5, %41 ], [ 5, %38 ]
  %46 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  store i32 %45, ptr %46, align 4, !tbaa !39
  br label %47

47:                                               ; preds = %44, %41, %3
  %48 = phi i32 [ 4, %3 ], [ 3, %41 ], [ 0, %44 ]
  ret i32 %48
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @BlockSizeOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #25 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !36
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %25

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %16, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %5 ]
  %12 = phi i8 [ %18, %9 ], [ %6, %5 ]
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %10, 10
  %15 = add nsw i32 %13, -48
  %16 = add nsw i32 %15, %14
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !36
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %9, label %21, !llvm.loop !333

21:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %16, %9 ]
  %.lcssa = phi i8 [ %18, %9 ]
  %22 = icmp eq i8 %.lcssa, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  store i32 %.lcssa1, ptr %24, align 8, !tbaa !114
  br label %25

25:                                               ; preds = %23, %21, %5, %3
  %26 = phi i32 [ 4, %3 ], [ 3, %5 ], [ 0, %23 ], [ 3, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @StripFilenamesOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 8
  %10 = and i16 %9, 256
  %11 = and i16 %8, -257
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @PrintLineNumberOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 9
  %10 = and i16 %9, 512
  %11 = and i16 %8, -513
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @InternalAccessOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 10
  %10 = and i16 %9, 1024
  %11 = and i16 %8, -1025
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @AllocatorOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 11
  %10 = and i16 %9, 2048
  %11 = and i16 %8, -2049
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @GCAllocatorOption(ptr nocapture noundef %0, ptr noundef readnone %1, i32 noundef %2) #24 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = trunc i32 %2 to i16
  %8 = load i16, ptr %6, align 8
  %9 = shl i16 %7, 12
  %10 = and i16 %9, 4096
  %11 = and i16 %8, -4097
  %12 = or i16 %11, %10
  store i16 %12, ptr %6, align 8
  br label %13

13:                                               ; preds = %5, %3
  %14 = phi i32 [ 0, %5 ], [ 5, %3 ]
  ret i32 %14
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal i32 @BaseTypeOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #12 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  store ptr %1, ptr %6, align 8, !tbaa !152
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 4, %3 ]
  ret i32 %8
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCParse(ptr noundef %0) #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = tail call i32 @TreeCCNextToken(ptr noundef %9) #29
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %777, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %8, align 8, !tbaa !7
  %21 = load i32, ptr %20, align 8, !tbaa !234
  br label %22

22:                                               ; preds = %773, %12
  %23 = phi i32 [ %21, %12 ], [ %775, %773 ]
  %24 = phi ptr [ %20, %12 ], [ %774, %773 ]
  switch i32 %23, label %770 [
    i32 37, label %763
    i32 1, label %25
    i32 2, label %208
    i32 4, label %208
    i32 31, label %208
    i32 32, label %208
    i32 33, label %208
    i32 19, label %239
    i32 22, label %328
    i32 27, label %575
    i32 28, label %618
    i32 29, label %640
    i32 30, label %662
    i32 34, label %674
    i32 35, label %727
    i32 36, label %729
    i32 3, label %763
    i32 5, label %763
    i32 6, label %763
    i32 7, label %763
    i32 8, label %763
    i32 9, label %763
    i32 10, label %763
    i32 11, label %763
    i32 12, label %763
    i32 13, label %763
    i32 14, label %763
    i32 15, label %763
    i32 16, label %763
    i32 17, label %763
    i32 18, label %763
    i32 20, label %763
    i32 21, label %763
    i32 23, label %763
    i32 24, label %763
    i32 25, label %763
    i32 26, label %763
  ]

25:                                               ; preds = %179, %22
  %26 = phi ptr [ %174, %179 ], [ null, %22 ]
  %27 = load ptr, ptr %8, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !31
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !33
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !235
  %34 = tail call ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %33) #29
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %25
  %37 = load ptr, ptr %32, align 8, !tbaa !235
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.10.842, ptr noundef %37) #29
  br label %38

38:                                               ; preds = %36, %25
  %39 = phi i32 [ 0, %25 ], [ 1, %36 ]
  %40 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %27) #29
  %41 = load i32, ptr %27, align 8, !tbaa !234
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %43, label %95

43:                                               ; preds = %38
  %44 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %27) #29
  %45 = load i32, ptr %27, align 8, !tbaa !234
  %46 = icmp eq i32 %45, 1
  br i1 %46, label %47, label %83

47:                                               ; preds = %80, %43
  %48 = phi ptr [ %69, %80 ], [ null, %43 ]
  %49 = phi i32 [ %52, %80 ], [ 0, %43 ]
  %50 = phi i32 [ %59, %80 ], [ %39, %43 ]
  %51 = phi ptr [ %60, %80 ], [ null, %43 ]
  %52 = add nuw nsw i32 %49, 1
  %53 = load ptr, ptr %32, align 8, !tbaa !235
  %54 = tail call ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %53) #29
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %58

56:                                               ; preds = %47
  %57 = load ptr, ptr %32, align 8, !tbaa !235
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.11.843, ptr noundef %57) #29
  br label %58

58:                                               ; preds = %56, %47
  %59 = phi i32 [ %50, %47 ], [ 1, %56 ]
  %60 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #36
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %63

62:                                               ; preds = %58
  tail call void @TreeCCOutOfMemory(ptr noundef nonnull %27) #29
  br label %63

63:                                               ; preds = %62, %58
  store ptr %54, ptr %60, align 8, !tbaa !76
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %60, i64 0, i32 1
  store ptr null, ptr %64, align 8, !tbaa !118
  %65 = icmp eq ptr %51, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %51, i64 0, i32 1
  store ptr %60, ptr %67, align 8, !tbaa !118
  br label %68

68:                                               ; preds = %66, %63
  %69 = phi ptr [ %48, %66 ], [ %60, %63 ]
  %70 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %27) #29
  %71 = load i32, ptr %27, align 8, !tbaa !234
  switch i32 %71, label %78 [
    i32 11, label %72
    i32 6, label %89
  ]

72:                                               ; preds = %68
  %73 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %27) #29
  %74 = load i32, ptr %27, align 8, !tbaa !234
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %80, label %76

76:                                               ; preds = %72
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.12.844) #29
  %77 = load i32, ptr %27, align 8, !tbaa !234
  br label %80

78:                                               ; preds = %68
  %.lcssa4 = phi ptr [ %69, %68 ]
  %.lcssa3 = phi i32 [ %59, %68 ]
  %.lcssa2 = phi i32 [ %52, %68 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.7.845) #29
  %79 = load i32, ptr %27, align 8, !tbaa !234
  br label %83

80:                                               ; preds = %76, %72
  %81 = phi i32 [ 1, %72 ], [ %77, %76 ]
  %82 = icmp eq i32 %81, 1
  br i1 %82, label %47, label %83, !llvm.loop !334

83:                                               ; preds = %80, %78, %43
  %84 = phi i32 [ %79, %78 ], [ %45, %43 ], [ %81, %80 ]
  %85 = phi i32 [ %.lcssa3, %78 ], [ %39, %43 ], [ %59, %80 ]
  %86 = phi i32 [ %.lcssa2, %78 ], [ 0, %43 ], [ %52, %80 ]
  %87 = phi ptr [ %.lcssa4, %78 ], [ null, %43 ], [ %69, %80 ]
  %88 = icmp eq i32 %84, 6
  br i1 %88, label %89, label %94

89:                                               ; preds = %83, %68
  %90 = phi ptr [ %87, %83 ], [ %69, %68 ]
  %91 = phi i32 [ %86, %83 ], [ %52, %68 ]
  %92 = phi i32 [ %85, %83 ], [ %59, %68 ]
  %93 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %27) #29
  br label %96

94:                                               ; preds = %83
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.13.846) #29
  br label %96

95:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.14.847) #29
  br label %96

96:                                               ; preds = %95, %94, %89
  %97 = phi i32 [ %92, %89 ], [ %85, %94 ], [ %39, %95 ]
  %98 = phi i32 [ %91, %89 ], [ %86, %94 ], [ 0, %95 ]
  %99 = phi ptr [ %90, %89 ], [ %87, %94 ], [ null, %95 ]
  br i1 %35, label %158, label %100

100:                                              ; preds = %96
  %101 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 6
  %102 = load i32, ptr %101, align 4, !tbaa !50
  %103 = icmp eq i32 %102, %98
  br i1 %103, label %109, label %104

104:                                              ; preds = %100
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %29, i64 noundef %31, ptr noundef nonnull @.str.15.848) #29
  %105 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 7
  %106 = load ptr, ptr %105, align 8, !tbaa !296
  %107 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 8
  %108 = load i64, ptr %107, align 8, !tbaa !280
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %106, i64 noundef %108, ptr noundef nonnull @.str.16.849) #29
  br label %161

109:                                              ; preds = %100
  %110 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 4
  %111 = load ptr, ptr %110, align 8, !tbaa !22
  %112 = icmp eq ptr %111, null
  br i1 %112, label %158, label %113

113:                                              ; preds = %144, %109
  %114 = phi ptr [ %149, %144 ], [ %111, %109 ]
  %115 = phi i32 [ %147, %144 ], [ 0, %109 ]
  %116 = phi i32 [ %146, %144 ], [ %97, %109 ]
  %117 = phi ptr [ %145, %144 ], [ %99, %109 ]
  %118 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 2
  %119 = load i32, ptr %118, align 8, !tbaa !59
  %120 = and i32 %119, 1
  %121 = icmp eq i32 %120, 0
  br i1 %121, label %144, label %122

122:                                              ; preds = %113
  %123 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !61
  %125 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %124) #29
  %126 = icmp eq ptr %125, null
  br i1 %126, label %139, label %127

127:                                              ; preds = %122
  %128 = load ptr, ptr %117, align 8, !tbaa !76
  %129 = tail call i32 @TreeCCNodeInheritsFrom(ptr noundef %128, ptr noundef nonnull %125) #29
  %130 = icmp eq i32 %129, 0
  br i1 %130, label %131, label %139

131:                                              ; preds = %127
  %132 = load ptr, ptr %117, align 8, !tbaa !76
  %133 = icmp eq ptr %132, null
  br i1 %133, label %139, label %134

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._tagTreeCCNode, ptr %132, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !101
  %137 = getelementptr inbounds %struct._tagTreeCCNode, ptr %125, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !101
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %29, i64 noundef %31, ptr noundef nonnull @.str.17.850, ptr noundef %136, ptr noundef %138) #29
  br label %139

139:                                              ; preds = %134, %131, %127, %122
  %140 = phi i32 [ %116, %127 ], [ 1, %134 ], [ %116, %131 ], [ %116, %122 ]
  %141 = phi i32 [ %115, %127 ], [ 1, %134 ], [ %115, %131 ], [ %115, %122 ]
  %142 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %117, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !118
  br label %144

144:                                              ; preds = %139, %113
  %145 = phi ptr [ %143, %139 ], [ %117, %113 ]
  %146 = phi i32 [ %140, %139 ], [ %116, %113 ]
  %147 = phi i32 [ %141, %139 ], [ %115, %113 ]
  %148 = getelementptr inbounds %struct._tagTreeCCParam, ptr %114, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !22
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %113, !llvm.loop !335

151:                                              ; preds = %144
  %.lcssa6 = phi i32 [ %146, %144 ]
  %.lcssa5 = phi i32 [ %147, %144 ]
  %152 = icmp eq i32 %.lcssa5, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !296
  %156 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 8
  %157 = load i64, ptr %156, align 8, !tbaa !280
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %155, i64 noundef %157, ptr noundef nonnull @.str.16.849) #29
  br label %158

158:                                              ; preds = %153, %151, %109, %96
  %159 = phi i32 [ %97, %96 ], [ %.lcssa6, %153 ], [ %.lcssa6, %151 ], [ %97, %109 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158, %104
  %162 = icmp eq ptr %99, null
  br i1 %162, label %173, label %163

163:                                              ; preds = %163, %161
  %164 = phi ptr [ %166, %163 ], [ %99, %161 ]
  %165 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !118
  tail call void @free(ptr noundef nonnull %164) #29
  %167 = icmp eq ptr %166, null
  br i1 %167, label %173, label %163, !llvm.loop !336

168:                                              ; preds = %158
  %169 = tail call ptr @TreeCCOperationAddCase(ptr noundef %0, ptr noundef %34, ptr noundef %99, ptr noundef %29, i64 noundef %31) #29
  %170 = icmp eq ptr %169, null
  br i1 %170, label %173, label %171

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %169, i64 0, i32 9
  store ptr %26, ptr %172, align 8, !tbaa !292
  br label %173

173:                                              ; preds = %171, %168, %163, %161
  %174 = phi ptr [ %169, %171 ], [ %26, %168 ], [ %26, %161 ], [ %26, %163 ]
  %175 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %175, label %186 [
    i32 1, label %176
    i32 11, label %182
  ]

176:                                              ; preds = %182, %173
  %177 = phi ptr [ @.str.8.851, %182 ], [ @.str.7.845, %173 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %177) #29
  %178 = load i32, ptr %24, align 8, !tbaa !234
  br label %179

179:                                              ; preds = %182, %176
  %180 = phi i32 [ %178, %176 ], [ 1, %182 ]
  %181 = icmp eq i32 %180, 1
  br i1 %181, label %25, label %186, !llvm.loop !337

182:                                              ; preds = %173
  %183 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %184 = load i32, ptr %24, align 8, !tbaa !234
  %185 = icmp eq i32 %184, 1
  br i1 %185, label %179, label %176

186:                                              ; preds = %179, %173
  %.lcssa7 = phi ptr [ %174, %179 ], [ %174, %173 ]
  %187 = phi i32 [ %175, %173 ], [ %180, %179 ]
  %188 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %189 = load ptr, ptr %188, align 8, !tbaa !31
  %190 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %191 = load i64, ptr %190, align 8, !tbaa !33
  %192 = icmp eq i32 %187, 3
  br i1 %192, label %194, label %193

193:                                              ; preds = %186
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.9.852) #29
  br label %773

194:                                              ; preds = %186
  %195 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %196 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %197 = icmp eq ptr %195, null
  %198 = icmp eq ptr %.lcssa7, null
  %199 = select i1 %197, i1 true, i1 %198
  br i1 %199, label %773, label %200

200:                                              ; preds = %200, %194
  %201 = phi ptr [ %206, %200 ], [ %.lcssa7, %194 ]
  %202 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %201, i64 0, i32 1
  store ptr %195, ptr %202, align 8, !tbaa !122
  %203 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %201, i64 0, i32 6
  store ptr %189, ptr %203, align 8, !tbaa !121
  %204 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %201, i64 0, i32 7
  store i64 %191, ptr %204, align 8, !tbaa !120
  %205 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %201, i64 0, i32 9
  %206 = load ptr, ptr %205, align 8, !tbaa !292
  %207 = icmp eq ptr %206, null
  br i1 %207, label %773, label %200, !llvm.loop !338

208:                                              ; preds = %22, %22, %22, %22, %22
  %209 = add nsw i32 %23, -31
  %210 = icmp ult i32 %209, 3
  br i1 %210, label %211, label %225

211:                                              ; preds = %211, %208
  %212 = phi i32 [ %222, %211 ], [ %23, %208 ]
  %213 = phi ptr [ %221, %211 ], [ %24, %208 ]
  %214 = phi i32 [ %219, %211 ], [ 0, %208 ]
  %215 = icmp eq i32 %212, 32
  %216 = select i1 %215, i32 2, i32 4
  %217 = icmp eq i32 %212, 31
  %218 = select i1 %217, i32 3, i32 %216
  %219 = or i32 %214, %218
  %220 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %213) #29
  %221 = load ptr, ptr %8, align 8, !tbaa !7
  %222 = load i32, ptr %221, align 8, !tbaa !234
  %223 = add i32 %222, -31
  %224 = icmp ult i32 %223, 3
  br i1 %224, label %211, label %225, !llvm.loop !339

225:                                              ; preds = %211, %208
  %226 = phi i32 [ 0, %208 ], [ %219, %211 ]
  %227 = phi ptr [ %24, %208 ], [ %221, %211 ]
  %228 = phi i32 [ %23, %208 ], [ %222, %211 ]
  %229 = lshr i32 %226, 1
  %230 = and i32 %229, 1
  %231 = xor i32 %230, 1
  %232 = or i32 %231, %226
  switch i32 %228, label %238 [
    i32 2, label %233
    i32 4, label %235
  ]

233:                                              ; preds = %225
  %234 = tail call ptr @TreeCCValue(ptr noundef nonnull %227) #29
  tail call void @TreeCCAddLiteralDefn(ptr noundef nonnull %0, ptr noundef %234, i32 noundef %232) #29
  br label %770

235:                                              ; preds = %225
  %236 = tail call ptr @TreeCCValue(ptr noundef nonnull %227) #29
  %237 = or i32 %232, 4
  tail call void @TreeCCAddLiteralDefn(ptr noundef nonnull %0, ptr noundef %236, i32 noundef %237) #29
  br label %770

238:                                              ; preds = %225
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %227, ptr noundef nonnull @.str.853) #29
  br label %773

239:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #30
  %240 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %241 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %242 = load i64, ptr %241, align 8, !tbaa !33
  %243 = load i32, ptr %24, align 8, !tbaa !234
  %244 = icmp eq i32 %243, 1
  br i1 %244, label %246, label %245

245:                                              ; preds = %239
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.8.851) #29
  br label %327

246:                                              ; preds = %239
  %247 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %248 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %249 = load i32, ptr %24, align 8, !tbaa !234
  %250 = icmp eq i32 %249, 1
  br i1 %250, label %251, label %254

251:                                              ; preds = %246
  %252 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %253 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %254

254:                                              ; preds = %251, %246
  %255 = phi ptr [ %252, %251 ], [ null, %246 ]
  br label %256

256:                                              ; preds = %260, %254
  %257 = phi i32 [ 0, %254 ], [ %262, %260 ]
  %258 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %258, label %264 [
    i32 20, label %260
    i32 21, label %259
  ]

259:                                              ; preds = %256
  br label %260

260:                                              ; preds = %259, %256
  %261 = phi i32 [ 4, %259 ], [ 2, %256 ]
  %262 = or i32 %261, %257
  %263 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %256

264:                                              ; preds = %256
  %.lcssa1 = phi i32 [ %257, %256 ]
  %265 = tail call ptr @TreeCCNodeCreate(ptr noundef %0, i64 noundef %242, ptr noundef %247, ptr noundef %255, i32 noundef %.lcssa1) #29
  %266 = load i32, ptr %24, align 8, !tbaa !234
  %267 = icmp eq i32 %266, 12
  br i1 %267, label %268, label %327

268:                                              ; preds = %264
  %269 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 9
  store i32 0, ptr %269, align 8, !tbaa !243
  %270 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  store i32 1, ptr %269, align 8, !tbaa !243
  %271 = load i32, ptr %24, align 8, !tbaa !234
  %272 = icmp eq i32 %271, 7
  br i1 %272, label %273, label %326

273:                                              ; preds = %277, %268
  %274 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %275

275:                                              ; preds = %323, %273
  %276 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %276, label %278 [
    i32 8, label %324
    i32 0, label %324
    i32 15, label %277
  ]

277:                                              ; preds = %321, %318, %275
  br label %273, !llvm.loop !340

278:                                              ; preds = %275
  %279 = icmp eq i32 %276, 23
  br i1 %279, label %280, label %282

280:                                              ; preds = %278
  %281 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %282

282:                                              ; preds = %280, %278
  %283 = phi i32 [ 1, %280 ], [ 0, %278 ]
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %7, ptr noundef nonnull %6) #31
  %284 = load ptr, ptr %7, align 8, !tbaa !22
  %285 = icmp ne ptr %284, null
  %286 = load ptr, ptr %6, align 8
  %287 = icmp ne ptr %286, null
  %288 = select i1 %285, i1 %287, i1 false
  br i1 %288, label %289, label %307

289:                                              ; preds = %282
  %290 = load i32, ptr %24, align 8, !tbaa !234
  %291 = icmp eq i32 %290, 12
  br i1 %291, label %292, label %304

292:                                              ; preds = %289
  %293 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %294 = load i32, ptr %24, align 8, !tbaa !234
  %295 = icmp eq i32 %294, 3
  br i1 %295, label %296, label %301

296:                                              ; preds = %292
  %297 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %298 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %299 = icmp eq ptr %297, null
  %300 = or i1 %279, %299
  br i1 %300, label %304, label %301

301:                                              ; preds = %296, %292
  %302 = phi ptr [ @.str.18.854, %292 ], [ @.str.19.855, %296 ]
  %303 = phi ptr [ null, %292 ], [ %297, %296 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %302) #29
  br label %304

304:                                              ; preds = %301, %296, %289
  %305 = phi ptr [ %297, %296 ], [ null, %289 ], [ %303, %301 ]
  tail call void @TreeCCFieldCreate(ptr noundef %0, ptr noundef %265, ptr noundef nonnull %286, ptr noundef nonnull %284, ptr noundef %305, i32 noundef %283) #29
  %306 = load i32, ptr %24, align 8, !tbaa !234
  br label %318

307:                                              ; preds = %282
  br i1 %285, label %309, label %308

308:                                              ; preds = %307
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.21.856) #29
  br label %310

309:                                              ; preds = %307
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.20.857) #29
  tail call void @free(ptr noundef nonnull %284) #29
  br label %310

310:                                              ; preds = %309, %308
  %311 = icmp eq ptr %286, null
  br i1 %311, label %313, label %312

312:                                              ; preds = %310
  tail call void @free(ptr noundef nonnull %286) #29
  br label %313

313:                                              ; preds = %312, %310
  br label %314

314:                                              ; preds = %316, %313
  %315 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %315, label %316 [
    i32 15, label %318
    i32 8, label %318
    i32 1, label %318
    i32 0, label %318
  ]

316:                                              ; preds = %314
  %317 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %314, !llvm.loop !341

318:                                              ; preds = %314, %314, %314, %314, %304
  %319 = phi i32 [ %306, %304 ], [ %315, %314 ], [ %315, %314 ], [ %315, %314 ], [ %315, %314 ]
  %320 = icmp eq i32 %319, 15
  br i1 %320, label %277, label %321

321:                                              ; preds = %318
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.22.858) #29
  %322 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %322, label %277 [
    i32 1, label %323
    i32 8, label %323
  ]

323:                                              ; preds = %321, %321
  br label %275, !llvm.loop !340

324:                                              ; preds = %275, %275
  %325 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %327

326:                                              ; preds = %268
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.23.859) #29
  br label %327

327:                                              ; preds = %326, %324, %264, %245
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #30
  br label %773

328:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #30
  br label %329

329:                                              ; preds = %335, %328
  %330 = phi i32 [ 0, %328 ], [ %339, %335 ]
  %331 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %332 = load i32, ptr %24, align 8, !tbaa !234
  %333 = add i32 %332, -24
  %334 = icmp ult i32 %333, 3
  br i1 %334, label %335, label %340

335:                                              ; preds = %329
  %336 = sext i32 %333 to i64
  %337 = getelementptr inbounds [3 x i32], ptr @switch.table.TreeCCParse, i64 0, i64 %336
  %338 = load i32, ptr %337, align 4
  %339 = or i32 %338, %330
  br label %329

340:                                              ; preds = %329
  %.lcssa = phi i32 [ %330, %329 ]
  %341 = and i32 %.lcssa, 3
  %342 = icmp eq i32 %341, 3
  br i1 %342, label %343, label %345

343:                                              ; preds = %340
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.28.860) #29
  %344 = and i32 %.lcssa, -3
  br label %345

345:                                              ; preds = %343, %340
  %346 = phi i32 [ %344, %343 ], [ %.lcssa, %340 ]
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %2, ptr noundef nonnull %3) #31
  %347 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %348 = load ptr, ptr %347, align 8, !tbaa !31
  %349 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %350 = load i64, ptr %349, align 8, !tbaa !33
  %351 = load ptr, ptr %2, align 8, !tbaa !22
  %352 = icmp ne ptr %351, null
  %353 = load ptr, ptr %3, align 8
  %354 = icmp ne ptr %353, null
  %355 = select i1 %352, i1 %354, i1 false
  br i1 %355, label %362, label %356

356:                                              ; preds = %345
  br i1 %352, label %358, label %357

357:                                              ; preds = %356
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.30.861) #29
  br label %359

358:                                              ; preds = %356
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.29.862) #29
  tail call void @free(ptr noundef nonnull %351) #29
  br label %359

359:                                              ; preds = %358, %357
  %360 = icmp eq ptr %353, null
  br i1 %360, label %574, label %361

361:                                              ; preds = %359
  tail call void @free(ptr noundef nonnull %353) #29
  br label %574

362:                                              ; preds = %345
  %363 = load i32, ptr %24, align 8, !tbaa !234
  %364 = icmp eq i32 %363, 16
  br i1 %364, label %365, label %373

365:                                              ; preds = %362
  %366 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %367 = load i32, ptr %24, align 8, !tbaa !234
  %368 = icmp eq i32 %367, 1
  br i1 %368, label %370, label %369

369:                                              ; preds = %365
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.29.862) #29
  tail call void @free(ptr noundef nonnull %351) #29
  tail call void @free(ptr noundef nonnull %353) #29
  br label %574

370:                                              ; preds = %365
  %371 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  store ptr %371, ptr %3, align 8, !tbaa !22
  %372 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %373

373:                                              ; preds = %370, %362
  %374 = phi ptr [ %371, %370 ], [ %353, %362 ]
  %375 = phi ptr [ %353, %370 ], [ null, %362 ]
  %376 = and i32 %346, 1
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %378, label %388

378:                                              ; preds = %373
  %379 = load i32, ptr %19, align 4, !tbaa !39
  %380 = icmp eq i32 %379, 3
  br i1 %380, label %381, label %388

381:                                              ; preds = %378
  %382 = icmp eq ptr %375, null
  br i1 %382, label %386, label %383

383:                                              ; preds = %381
  %384 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %375, ptr noundef nonnull dereferenceable(1) %374) #32
  %385 = icmp eq i32 %384, 0
  br i1 %385, label %386, label %388

386:                                              ; preds = %383, %381
  %387 = phi ptr [ @.str.31.863, %381 ], [ @.str.32.864, %383 ]
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %348, i64 noundef %350, ptr noundef nonnull %387) #29
  br label %388

388:                                              ; preds = %386, %383, %378, %373
  %389 = load i32, ptr %24, align 8, !tbaa !234
  %390 = icmp eq i32 %389, 5
  br i1 %390, label %391, label %463

391:                                              ; preds = %388
  %392 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %393

393:                                              ; preds = %454, %391
  %394 = phi ptr [ null, %391 ], [ %446, %454 ]
  %395 = phi ptr [ null, %391 ], [ %447, %454 ]
  %396 = phi i32 [ 0, %391 ], [ %411, %454 ]
  %397 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %397, label %455 [
    i32 1, label %398
    i32 9, label %398
  ]

398:                                              ; preds = %393, %393
  %399 = icmp eq i32 %397, 1
  br i1 %399, label %400, label %401

400:                                              ; preds = %398
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef nonnull %5) #31
  br label %410

401:                                              ; preds = %398
  %402 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef nonnull %5) #31
  %403 = load i32, ptr %24, align 8, !tbaa !234
  %404 = icmp eq i32 %403, 10
  br i1 %404, label %405, label %407

405:                                              ; preds = %401
  %406 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %408

407:                                              ; preds = %401
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.27.865) #29
  br label %408

408:                                              ; preds = %407, %405
  %409 = add nsw i32 %396, 1
  br label %410

410:                                              ; preds = %408, %400
  %411 = phi i32 [ %396, %400 ], [ %409, %408 ]
  %412 = phi i32 [ 0, %400 ], [ 1, %408 ]
  %413 = load ptr, ptr %4, align 8, !tbaa !22
  %414 = icmp eq ptr %413, null
  br i1 %414, label %415, label %416

415:                                              ; preds = %410
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.33.866) #29
  br label %445

416:                                              ; preds = %410
  %417 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %413, ptr noundef nonnull dereferenceable(5) @.str.34.867) #32
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %419, label %423

419:                                              ; preds = %416
  tail call void @free(ptr noundef nonnull %413) #29
  %420 = load ptr, ptr %5, align 8, !tbaa !22
  %421 = icmp eq ptr %420, null
  br i1 %421, label %445, label %422

422:                                              ; preds = %419
  tail call void @free(ptr noundef nonnull %420) #29
  br label %445

423:                                              ; preds = %416
  %424 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #36
  %425 = icmp eq ptr %424, null
  br i1 %425, label %426, label %427

426:                                              ; preds = %423
  tail call void @TreeCCOutOfMemory(ptr noundef nonnull %24) #29
  br label %427

427:                                              ; preds = %426, %423
  %428 = load ptr, ptr %5, align 8, !tbaa !22
  store ptr %428, ptr %424, align 8, !tbaa !67
  %429 = getelementptr inbounds %struct._tagTreeCCParam, ptr %424, i64 0, i32 1
  store ptr %413, ptr %429, align 8, !tbaa !61
  %430 = getelementptr inbounds %struct._tagTreeCCParam, ptr %424, i64 0, i32 2
  store i32 %412, ptr %430, align 8, !tbaa !59
  %431 = getelementptr inbounds %struct._tagTreeCCParam, ptr %424, i64 0, i32 3
  store i32 0, ptr %431, align 4, !tbaa !88
  %432 = getelementptr inbounds %struct._tagTreeCCParam, ptr %424, i64 0, i32 4
  store ptr null, ptr %432, align 8, !tbaa !63
  %433 = icmp eq ptr %395, null
  br i1 %433, label %436, label %434

434:                                              ; preds = %427
  %435 = getelementptr inbounds %struct._tagTreeCCParam, ptr %395, i64 0, i32 4
  store ptr %424, ptr %435, align 8, !tbaa !63
  br label %436

436:                                              ; preds = %434, %427
  %437 = phi ptr [ %394, %434 ], [ %424, %427 ]
  br i1 %399, label %445, label %438

438:                                              ; preds = %436
  %439 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef nonnull %413) #29
  %440 = icmp eq ptr %439, null
  br i1 %440, label %441, label %442

441:                                              ; preds = %438
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.35.868, ptr noundef nonnull %413) #29
  br label %445

442:                                              ; preds = %438
  %443 = load ptr, ptr %347, align 8, !tbaa !31
  %444 = load i64, ptr %349, align 8, !tbaa !33
  tail call fastcc void @ValidateSuffixes(ptr noundef %0, ptr noundef nonnull %413, ptr noundef nonnull %439, ptr noundef %443, i64 noundef %444) #31
  br label %445

445:                                              ; preds = %442, %441, %436, %422, %419, %415
  %446 = phi ptr [ %437, %441 ], [ %437, %442 ], [ %437, %436 ], [ %394, %422 ], [ %394, %419 ], [ %394, %415 ]
  %447 = phi ptr [ %424, %441 ], [ %424, %442 ], [ %424, %436 ], [ %395, %422 ], [ %395, %419 ], [ %395, %415 ]
  %448 = load i32, ptr %24, align 8, !tbaa !234
  %449 = icmp eq i32 %448, 11
  br i1 %449, label %450, label %455

450:                                              ; preds = %445
  %451 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %452 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %452, label %453 [
    i32 1, label %454
    i32 9, label %454
  ]

453:                                              ; preds = %450
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.33.866) #29
  br label %454

454:                                              ; preds = %453, %450, %450
  br label %393, !llvm.loop !342

455:                                              ; preds = %445, %393
  %456 = phi i32 [ %397, %393 ], [ %448, %445 ]
  %457 = phi ptr [ %394, %393 ], [ %446, %445 ]
  %458 = phi i32 [ %396, %393 ], [ %411, %445 ]
  %459 = icmp eq i32 %456, 6
  br i1 %459, label %460, label %462

460:                                              ; preds = %455
  %461 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %464

462:                                              ; preds = %455
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.13.846) #29
  br label %464

463:                                              ; preds = %388
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.14.847) #29
  br label %464

464:                                              ; preds = %463, %462, %460
  %465 = phi ptr [ %457, %460 ], [ %457, %462 ], [ null, %463 ]
  %466 = phi i32 [ %458, %460 ], [ %458, %462 ], [ 0, %463 ]
  %467 = load i32, ptr %24, align 8, !tbaa !234
  %468 = icmp eq i32 %467, 12
  br i1 %468, label %469, label %477

469:                                              ; preds = %464
  %470 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %471 = load i32, ptr %24, align 8, !tbaa !234
  %472 = icmp eq i32 %471, 3
  br i1 %472, label %473, label %476

473:                                              ; preds = %469
  %474 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %475 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %482

476:                                              ; preds = %469
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.36.869) #29
  br label %482

477:                                              ; preds = %464
  br i1 %377, label %478, label %485

478:                                              ; preds = %477
  %479 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %351, ptr noundef nonnull dereferenceable(5) @.str.34.867) #32
  %480 = icmp eq i32 %479, 0
  br i1 %480, label %482, label %481

481:                                              ; preds = %478
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.37.870) #29
  br label %482

482:                                              ; preds = %481, %478, %476, %473
  %483 = phi ptr [ null, %478 ], [ null, %481 ], [ null, %476 ], [ %474, %473 ]
  %484 = load i32, ptr %24, align 8, !tbaa !234
  br label %485

485:                                              ; preds = %482, %477
  %486 = phi i32 [ %484, %482 ], [ %467, %477 ]
  %487 = phi ptr [ %483, %482 ], [ null, %477 ]
  %488 = icmp eq i32 %486, 15
  br i1 %488, label %489, label %491

489:                                              ; preds = %485
  %490 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %491

491:                                              ; preds = %489, %485
  %492 = icmp eq i32 %466, 0
  %493 = icmp ne ptr %465, null
  %494 = select i1 %492, i1 %493, i1 false
  br i1 %494, label %495, label %506

495:                                              ; preds = %491
  %496 = getelementptr inbounds %struct._tagTreeCCParam, ptr %465, i64 0, i32 2
  %497 = load i32, ptr %496, align 8, !tbaa !59
  %498 = or i32 %497, 1
  store i32 %498, ptr %496, align 8, !tbaa !59
  %499 = getelementptr inbounds %struct._tagTreeCCParam, ptr %465, i64 0, i32 1
  %500 = load ptr, ptr %499, align 8, !tbaa !61
  %501 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %500) #29
  %502 = icmp eq ptr %501, null
  %503 = load ptr, ptr %499, align 8, !tbaa !61
  br i1 %502, label %504, label %505

504:                                              ; preds = %495
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %348, i64 noundef %350, ptr noundef nonnull @.str.35.868, ptr noundef %503) #29
  br label %506

505:                                              ; preds = %495
  tail call fastcc void @ValidateSuffixes(ptr noundef %0, ptr noundef %503, ptr noundef nonnull %501, ptr noundef %348, i64 noundef %350) #31
  br label %506

506:                                              ; preds = %505, %504, %491
  %507 = phi i32 [ 1, %504 ], [ 1, %505 ], [ %466, %491 ]
  br i1 %377, label %536, label %508

508:                                              ; preds = %506
  %509 = icmp eq ptr %465, null
  %510 = icmp ne i32 %507, 1
  %511 = select i1 %509, i1 true, i1 %510
  br i1 %511, label %517, label %512

512:                                              ; preds = %508
  %513 = getelementptr inbounds %struct._tagTreeCCParam, ptr %465, i64 0, i32 2
  %514 = load i32, ptr %513, align 8, !tbaa !59
  %515 = and i32 %514, 1
  %516 = icmp eq i32 %515, 0
  br i1 %516, label %518, label %522

517:                                              ; preds = %508
  br i1 %493, label %518, label %519

518:                                              ; preds = %517, %512
  br label %519

519:                                              ; preds = %518, %517
  %520 = phi ptr [ @.str.39.871, %518 ], [ @.str.38.872, %517 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %520) #29
  %521 = and i32 %346, -2
  br label %536

522:                                              ; preds = %512
  %523 = getelementptr inbounds %struct._tagTreeCCParam, ptr %465, i64 0, i32 1
  %524 = load ptr, ptr %523, align 8, !tbaa !61
  %525 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %524) #29
  %526 = icmp eq ptr %525, null
  br i1 %526, label %527, label %529

527:                                              ; preds = %522
  %528 = and i32 %346, -2
  br label %536

529:                                              ; preds = %522
  %530 = getelementptr inbounds %struct._tagTreeCCNode, ptr %525, i64 0, i32 5
  %531 = load i32, ptr %530, align 8, !tbaa !66
  %532 = and i32 %531, 8
  %533 = icmp eq i32 %532, 0
  br i1 %533, label %536, label %534

534:                                              ; preds = %529
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.40.873) #29
  %535 = and i32 %346, -2
  br label %536

536:                                              ; preds = %534, %529, %527, %519, %506
  %537 = phi i32 [ %521, %519 ], [ %528, %527 ], [ %535, %534 ], [ %346, %529 ], [ %346, %506 ]
  %538 = tail call ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %374) #29
  %539 = icmp eq ptr %538, null
  br i1 %539, label %566, label %540

540:                                              ; preds = %536
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %348, i64 noundef %350, ptr noundef nonnull @.str.41.874, ptr noundef %374) #29
  %541 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %538, i64 0, i32 7
  %542 = load ptr, ptr %541, align 8, !tbaa !296
  %543 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %538, i64 0, i32 8
  %544 = load i64, ptr %543, align 8, !tbaa !280
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %542, i64 noundef %544, ptr noundef nonnull @.str.42.875) #29
  tail call void @free(ptr noundef %351) #29
  tail call void @free(ptr noundef %374) #29
  %545 = icmp eq ptr %375, null
  br i1 %545, label %547, label %546

546:                                              ; preds = %540
  tail call void @free(ptr noundef nonnull %375) #29
  br label %547

547:                                              ; preds = %546, %540
  %548 = icmp eq ptr %487, null
  br i1 %548, label %550, label %549

549:                                              ; preds = %547
  tail call void @free(ptr noundef nonnull %487) #29
  br label %550

550:                                              ; preds = %549, %547
  %551 = icmp eq ptr %465, null
  br i1 %551, label %574, label %552

552:                                              ; preds = %564, %550
  %553 = phi ptr [ %555, %564 ], [ %465, %550 ]
  %554 = getelementptr inbounds %struct._tagTreeCCParam, ptr %553, i64 0, i32 4
  %555 = load ptr, ptr %554, align 8, !tbaa !63
  %556 = load ptr, ptr %553, align 8, !tbaa !67
  %557 = icmp eq ptr %556, null
  br i1 %557, label %559, label %558

558:                                              ; preds = %552
  tail call void @free(ptr noundef nonnull %556) #29
  br label %559

559:                                              ; preds = %558, %552
  %560 = getelementptr inbounds %struct._tagTreeCCParam, ptr %553, i64 0, i32 1
  %561 = load ptr, ptr %560, align 8, !tbaa !61
  %562 = icmp eq ptr %561, null
  br i1 %562, label %564, label %563

563:                                              ; preds = %559
  tail call void @free(ptr noundef nonnull %561) #29
  br label %564

564:                                              ; preds = %563, %559
  tail call void @free(ptr noundef nonnull %553) #29
  %565 = icmp eq ptr %555, null
  br i1 %565, label %574, label %552, !llvm.loop !343

566:                                              ; preds = %536
  %567 = tail call ptr @TreeCCOperationCreate(ptr noundef %0, ptr noundef nonnull %351, ptr noundef %374, ptr noundef %375, ptr noundef %487, ptr noundef %465, i32 noundef %537, i32 noundef %507, ptr noundef %348, i64 noundef %350) #29
  %568 = and i32 %537, 1
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %574, label %570

570:                                              ; preds = %566
  %571 = getelementptr inbounds %struct._tagTreeCCParam, ptr %465, i64 0, i32 1
  %572 = load ptr, ptr %571, align 8, !tbaa !61
  %573 = tail call ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %572) #29
  tail call void @TreeCCNodeAddVirtual(ptr noundef %0, ptr noundef %573, ptr noundef %567) #29
  br label %574

574:                                              ; preds = %570, %566, %564, %550, %369, %361, %359
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #30
  br label %773

575:                                              ; preds = %22
  %576 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %577 = load i32, ptr %24, align 8, !tbaa !234
  %578 = icmp eq i32 %577, 1
  br i1 %578, label %580, label %579

579:                                              ; preds = %575
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.44.876) #29
  br label %773

580:                                              ; preds = %575
  %581 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %582 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %583 = load ptr, ptr %582, align 8, !tbaa !31
  %584 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %585 = load i64, ptr %584, align 8, !tbaa !33
  %586 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %587 = load i32, ptr %24, align 8, !tbaa !234
  %588 = icmp eq i32 %587, 12
  br i1 %588, label %589, label %596

589:                                              ; preds = %580
  %590 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %591 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %591, label %595 [
    i32 1, label %592
    i32 17, label %592
  ]

592:                                              ; preds = %589, %589
  %593 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %594 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %596

595:                                              ; preds = %589
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.45.877) #29
  br label %596

596:                                              ; preds = %595, %592, %580
  %597 = phi ptr [ %593, %592 ], [ null, %595 ], [ null, %580 ]
  %598 = load i16, ptr %18, align 8
  %599 = and i16 %598, 1
  %600 = icmp eq i16 %599, 0
  br i1 %600, label %605, label %601

601:                                              ; preds = %596
  %602 = icmp eq ptr %597, null
  br i1 %602, label %604, label %603

603:                                              ; preds = %601
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %585, ptr noundef nonnull @.str.46.878, ptr noundef %581, ptr noundef nonnull %597) #29
  br label %605

604:                                              ; preds = %601
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %585, ptr noundef nonnull @.str.47.879, ptr noundef %581) #29
  br label %605

605:                                              ; preds = %604, %603, %596
  %606 = tail call i32 @TreeCCOptionProcess(ptr noundef nonnull %0, ptr noundef %581, ptr noundef %597) #29
  %607 = add i32 %606, -2
  %608 = icmp ult i32 %607, 4
  br i1 %608, label %609, label %613

609:                                              ; preds = %605
  %610 = sext i32 %607 to i64
  %611 = getelementptr inbounds [4 x ptr], ptr @switch.table.TreeCCParse.57, i64 0, i64 %610
  %612 = load ptr, ptr %611, align 8
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %583, i64 noundef %585, ptr noundef nonnull %612, ptr noundef %581) #29
  br label %613

613:                                              ; preds = %609, %605
  tail call void @free(ptr noundef %581) #29
  %614 = icmp ne i32 %606, 1
  %615 = icmp ne ptr %597, null
  %616 = select i1 %614, i1 %615, i1 false
  br i1 %616, label %617, label %773

617:                                              ; preds = %613
  tail call void @free(ptr noundef nonnull %597) #29
  br label %773

618:                                              ; preds = %22
  %619 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %620 = load ptr, ptr %8, align 8, !tbaa !7
  %621 = load i32, ptr %620, align 8, !tbaa !234
  %622 = icmp eq i32 %621, 17
  br i1 %622, label %623, label %639

623:                                              ; preds = %618
  %624 = getelementptr inbounds %struct.TreeCCInput, ptr %620, i64 0, i32 1
  %625 = load ptr, ptr %624, align 8, !tbaa !235
  %626 = tail call ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef %625, ptr noundef %625, i32 noundef 1) #29
  store ptr %626, ptr %13, align 8, !tbaa !95
  %627 = load ptr, ptr %8, align 8, !tbaa !7
  %628 = getelementptr inbounds %struct.TreeCCInput, ptr %627, i64 0, i32 10
  %629 = load i32, ptr %628, align 4, !tbaa !344
  %630 = getelementptr inbounds %struct._tagTreeCCStream, ptr %626, i64 0, i32 7
  %631 = load i8, ptr %630, align 4
  %632 = trunc i32 %629 to i8
  %633 = shl i8 %632, 1
  %634 = and i8 %633, 2
  %635 = or i8 %634, %631
  store i8 %635, ptr %630, align 4
  %636 = load ptr, ptr %14, align 8, !tbaa !96
  %637 = icmp eq ptr %636, null
  br i1 %637, label %638, label %770

638:                                              ; preds = %623
  store ptr %626, ptr %14, align 8, !tbaa !96
  br label %770

639:                                              ; preds = %618
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %620, ptr noundef nonnull @.str.1.880) #29
  br label %773

640:                                              ; preds = %22
  %641 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %642 = load ptr, ptr %8, align 8, !tbaa !7
  %643 = load i32, ptr %642, align 8, !tbaa !234
  %644 = icmp eq i32 %643, 17
  br i1 %644, label %645, label %661

645:                                              ; preds = %640
  %646 = getelementptr inbounds %struct.TreeCCInput, ptr %642, i64 0, i32 1
  %647 = load ptr, ptr %646, align 8, !tbaa !235
  %648 = tail call ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef %647, ptr noundef %647, i32 noundef 0) #29
  store ptr %648, ptr %15, align 8, !tbaa !98
  %649 = load ptr, ptr %8, align 8, !tbaa !7
  %650 = getelementptr inbounds %struct.TreeCCInput, ptr %649, i64 0, i32 10
  %651 = load i32, ptr %650, align 4, !tbaa !344
  %652 = getelementptr inbounds %struct._tagTreeCCStream, ptr %648, i64 0, i32 7
  %653 = load i8, ptr %652, align 4
  %654 = trunc i32 %651 to i8
  %655 = shl i8 %654, 1
  %656 = and i8 %655, 2
  %657 = or i8 %656, %653
  store i8 %657, ptr %652, align 4
  %658 = load ptr, ptr %16, align 8, !tbaa !97
  %659 = icmp eq ptr %658, null
  br i1 %659, label %660, label %770

660:                                              ; preds = %645
  store ptr %648, ptr %16, align 8, !tbaa !97
  br label %770

661:                                              ; preds = %640
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %642, ptr noundef nonnull @.str.2.881) #29
  br label %773

662:                                              ; preds = %22
  %663 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %664 = load ptr, ptr %8, align 8, !tbaa !7
  %665 = load i32, ptr %664, align 8, !tbaa !234
  %666 = icmp eq i32 %665, 17
  br i1 %666, label %667, label %673

667:                                              ; preds = %662
  %668 = getelementptr inbounds %struct.TreeCCInput, ptr %664, i64 0, i32 4
  %669 = load ptr, ptr %668, align 8, !tbaa !31
  %670 = getelementptr inbounds %struct.TreeCCInput, ptr %664, i64 0, i32 1
  %671 = load ptr, ptr %670, align 8, !tbaa !235
  %672 = tail call ptr @TreeCCResolvePathname(ptr noundef %669, ptr noundef %671) #29
  store ptr %672, ptr %17, align 8, !tbaa !249
  br label %770

673:                                              ; preds = %662
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %664, ptr noundef nonnull @.str.2.881) #29
  br label %773

674:                                              ; preds = %22
  %675 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %676 = load i32, ptr %24, align 8, !tbaa !234
  %677 = icmp eq i32 %676, 1
  br i1 %677, label %679, label %678

678:                                              ; preds = %674
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.52.882) #29
  br label %773

679:                                              ; preds = %674
  %680 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %681 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %682 = load i64, ptr %681, align 8, !tbaa !33
  %683 = tail call ptr @TreeCCNodeCreate(ptr noundef nonnull %0, i64 noundef %682, ptr noundef %680, ptr noundef null, i32 noundef 14) #29
  %684 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %685 = load i32, ptr %24, align 8, !tbaa !234
  %686 = icmp eq i32 %685, 12
  br i1 %686, label %688, label %687

687:                                              ; preds = %679
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.53.883) #29
  br label %773

688:                                              ; preds = %679
  %689 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 9
  store i32 0, ptr %689, align 8, !tbaa !243
  %690 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  store i32 1, ptr %689, align 8, !tbaa !243
  %691 = load i32, ptr %24, align 8, !tbaa !234
  %692 = icmp eq i32 %691, 7
  br i1 %692, label %694, label %693

693:                                              ; preds = %688
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.54.884) #29
  br label %773

694:                                              ; preds = %688
  %695 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %696 = load i32, ptr %24, align 8, !tbaa !234
  %697 = icmp eq i32 %696, 1
  br i1 %697, label %698, label %714

698:                                              ; preds = %694
  %699 = getelementptr inbounds %struct._tagTreeCCNode, ptr %683, i64 0, i32 4
  br label %700

700:                                              ; preds = %711, %698
  %701 = load i64, ptr %681, align 8, !tbaa !33
  %702 = tail call ptr @TreeCCValue(ptr noundef nonnull %24) #29
  %703 = load ptr, ptr %699, align 8, !tbaa !101
  %704 = tail call ptr @TreeCCDupString(ptr noundef %703) #29
  %705 = tail call ptr @TreeCCNodeCreate(ptr noundef %0, i64 noundef %701, ptr noundef %702, ptr noundef %704, i32 noundef 16) #29
  %706 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %707 = load i32, ptr %24, align 8, !tbaa !234
  switch i32 %707, label %714 [
    i32 11, label %708
    i32 1, label %710
  ]

708:                                              ; preds = %700
  %709 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %711

710:                                              ; preds = %700
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.7.845) #29
  br label %711

711:                                              ; preds = %710, %708
  %712 = load i32, ptr %24, align 8, !tbaa !234
  %713 = icmp eq i32 %712, 1
  br i1 %713, label %700, label %714, !llvm.loop !345

714:                                              ; preds = %711, %700, %694
  %715 = phi i32 [ %696, %694 ], [ %712, %711 ], [ %707, %700 ]
  %716 = icmp eq i32 %715, 11
  br i1 %716, label %717, label %719

717:                                              ; preds = %714
  %718 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %719

719:                                              ; preds = %717, %714
  br i1 %697, label %721, label %720

720:                                              ; preds = %719
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.55.885) #29
  br label %721

721:                                              ; preds = %720, %719
  %722 = load i32, ptr %24, align 8, !tbaa !234
  %723 = icmp eq i32 %722, 8
  br i1 %723, label %724, label %726

724:                                              ; preds = %721
  %725 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  br label %773

726:                                              ; preds = %721
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.56.886) #29
  br label %773

727:                                              ; preds = %22
  %728 = load <2 x ptr>, ptr %13, align 8, !tbaa !22
  store <2 x ptr> %728, ptr %14, align 8, !tbaa !22
  br label %770

729:                                              ; preds = %22
  %730 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %24) #29
  %731 = load ptr, ptr %8, align 8, !tbaa !7
  %732 = load i32, ptr %731, align 8, !tbaa !234
  %733 = icmp eq i32 %732, 37
  br i1 %733, label %734, label %738

734:                                              ; preds = %729
  %735 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %731) #29
  %736 = load ptr, ptr %8, align 8, !tbaa !7
  %737 = load i32, ptr %736, align 8, !tbaa !234
  br label %738

738:                                              ; preds = %734, %729
  %739 = phi i32 [ %737, %734 ], [ %732, %729 ]
  %740 = phi ptr [ %736, %734 ], [ %731, %729 ]
  %741 = icmp eq i32 %739, 17
  br i1 %741, label %742, label %762

742:                                              ; preds = %738
  %743 = getelementptr inbounds %struct.TreeCCInput, ptr %740, i64 0, i32 4
  %744 = load ptr, ptr %743, align 8, !tbaa !31
  %745 = getelementptr inbounds %struct.TreeCCInput, ptr %740, i64 0, i32 1
  %746 = load ptr, ptr %745, align 8, !tbaa !235
  %747 = tail call ptr @TreeCCResolvePathname(ptr noundef %744, ptr noundef %746) #29
  %748 = tail call noalias ptr @fopen(ptr noundef %747, ptr noundef nonnull @.str.3.887) #31
  %749 = icmp eq ptr %748, null
  br i1 %749, label %760, label %750

750:                                              ; preds = %742
  %751 = tail call noalias dereferenceable_or_null(1096) ptr @malloc(i64 noundef 1096) #36
  %752 = load ptr, ptr %8, align 8, !tbaa !7
  %753 = icmp eq ptr %751, null
  br i1 %753, label %754, label %756

754:                                              ; preds = %750
  tail call void @TreeCCOutOfMemory(ptr noundef %752) #29
  %755 = load ptr, ptr %8, align 8, !tbaa !7
  br label %756

756:                                              ; preds = %754, %750
  %757 = phi ptr [ %755, %754 ], [ %752, %750 ]
  %758 = getelementptr inbounds %struct.TreeCCInput, ptr %757, i64 0, i32 2
  %759 = load ptr, ptr %758, align 8, !tbaa !38
  tail call void @TreeCCOpen(ptr noundef %751, ptr noundef %759, ptr noundef nonnull %748, ptr noundef %747) #29
  store ptr %751, ptr %8, align 8, !tbaa !7
  tail call void @TreeCCParse(ptr noundef nonnull %0) #31
  store ptr %752, ptr %8, align 8, !tbaa !7
  tail call void @TreeCCClose(ptr noundef %751, i32 noundef 1) #29
  tail call void @free(ptr noundef %751) #29
  br label %770

760:                                              ; preds = %742
  %761 = load ptr, ptr %8, align 8, !tbaa !7
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %761, ptr noundef nonnull @.str.4.888, ptr noundef %747) #29
  tail call void @free(ptr noundef %747) #29
  br label %770

762:                                              ; preds = %738
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %740, ptr noundef nonnull @.str.5.889) #29
  br label %770

763:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.6.890) #29
  %764 = load ptr, ptr %8, align 8, !tbaa !7
  br label %765

765:                                              ; preds = %765, %763
  %766 = phi ptr [ %768, %765 ], [ %764, %763 ]
  %767 = tail call i32 @TreeCCNextToken(ptr noundef %766) #29
  %768 = load ptr, ptr %8, align 8, !tbaa !7
  %769 = load i32, ptr %768, align 8, !tbaa !234
  switch i32 %769, label %765 [
    i32 0, label %773
    i32 1, label %773
    i32 2, label %773
    i32 4, label %773
    i32 19, label %773
    i32 22, label %773
    i32 27, label %773
    i32 28, label %773
    i32 29, label %773
    i32 31, label %773
    i32 32, label %773
    i32 33, label %773
    i32 34, label %773
    i32 35, label %773
    i32 36, label %773
  ], !llvm.loop !346

770:                                              ; preds = %762, %760, %756, %727, %667, %660, %645, %638, %623, %235, %233, %22
  %771 = load ptr, ptr %8, align 8, !tbaa !7
  %772 = tail call i32 @TreeCCNextToken(ptr noundef %771) #29
  br label %773

773:                                              ; preds = %770, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %765, %726, %724, %693, %687, %678, %673, %661, %639, %617, %613, %579, %574, %327, %238, %200, %194, %193
  %774 = load ptr, ptr %8, align 8, !tbaa !7
  %775 = load i32, ptr %774, align 8, !tbaa !234
  %776 = icmp eq i32 %775, 0
  br i1 %776, label %777, label %22, !llvm.loop !347

777:                                              ; preds = %773, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseTypeAndName(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !234
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.12.844) #29
  br label %59

7:                                                ; preds = %20, %3
  %8 = phi ptr [ %22, %20 ], [ null, %3 ]
  %9 = phi ptr [ %21, %20 ], [ null, %3 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call ptr @TreeCCValue(ptr noundef nonnull %0) #29
  br label %20

13:                                               ; preds = %7
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call ptr @TreeCCValue(ptr noundef nonnull %0) #29
  br label %20

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1) #31
  %19 = tail call ptr @TreeCCValue(ptr noundef nonnull %0) #29
  br label %20

20:                                               ; preds = %17, %15, %11
  %21 = phi ptr [ %18, %17 ], [ %9, %15 ], [ %12, %11 ]
  %22 = phi ptr [ %19, %17 ], [ %16, %15 ], [ %8, %11 ]
  %23 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %0) #29
  %24 = load i32, ptr %0, align 8, !tbaa !234
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %7, label %26, !llvm.loop !348

26:                                               ; preds = %20
  %.lcssa4 = phi ptr [ %21, %20 ]
  %.lcssa3 = phi ptr [ %22, %20 ]
  %.lcssa2 = phi i32 [ %24, %20 ]
  %27 = icmp eq ptr %.lcssa3, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %26
  switch i32 %.lcssa2, label %31 [
    i32 13, label %29
    i32 14, label %29
    i32 9, label %29
  ]

29:                                               ; preds = %28, %28, %28
  %30 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %.lcssa4, ptr noundef nonnull %.lcssa3, i32 noundef 1, i32 noundef 1) #31
  br label %31

31:                                               ; preds = %29, %28, %26
  %32 = phi ptr [ %30, %29 ], [ %.lcssa4, %26 ], [ %.lcssa4, %28 ]
  %33 = phi ptr [ null, %29 ], [ null, %26 ], [ %.lcssa3, %28 ]
  br label %34

34:                                               ; preds = %44, %31
  %35 = phi ptr [ %32, %31 ], [ %45, %44 ]
  %36 = load i32, ptr %0, align 8, !tbaa !234
  switch i32 %36, label %52 [
    i32 13, label %46
    i32 14, label %37
    i32 9, label %38
  ]

37:                                               ; preds = %34
  br label %46

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull @.str.26.896, i32 noundef 0, i32 noundef 0) #31
  %40 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %0) #29
  %41 = load i32, ptr %0, align 8, !tbaa !234
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %49, label %43

43:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.865) #29
  br label %44

44:                                               ; preds = %49, %43
  %45 = phi ptr [ %50, %49 ], [ %39, %43 ]
  br label %34, !llvm.loop !349

46:                                               ; preds = %37, %34
  %47 = phi ptr [ @.str.25.897, %37 ], [ @.str.24.898, %34 ]
  %48 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %47, i32 noundef 1, i32 noundef 0) #31
  br label %49

49:                                               ; preds = %46, %38
  %50 = phi ptr [ %39, %38 ], [ %48, %46 ]
  %51 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %0) #29
  br label %44

52:                                               ; preds = %34
  %.lcssa1 = phi ptr [ %35, %34 ]
  %.lcssa = phi i32 [ %36, %34 ]
  %53 = icmp eq ptr %33, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = icmp eq i32 %.lcssa, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = tail call ptr @TreeCCValue(ptr noundef nonnull %0) #29
  %58 = tail call i32 @TreeCCNextToken(ptr noundef nonnull %0) #29
  br label %59

59:                                               ; preds = %56, %54, %52, %6
  %60 = phi ptr [ null, %6 ], [ %.lcssa1, %56 ], [ %.lcssa1, %54 ], [ %.lcssa1, %52 ]
  %61 = phi ptr [ null, %6 ], [ %57, %56 ], [ null, %54 ], [ %33, %52 ]
  store ptr %60, ptr %1, align 8, !tbaa !22
  store ptr %61, ptr %2, align 8, !tbaa !22
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ValidateSuffixes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4) unnamed_addr #0 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !66
  %14 = and i32 %13, 24
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %33

16:                                               ; preds = %11
  %17 = icmp slt i32 %7, 2
  br i1 %17, label %30, label %18

18:                                               ; preds = %16
  %19 = add i64 %6, 4294967295
  %20 = and i64 %19, 4294967295
  %21 = getelementptr inbounds i8, ptr %1, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !36
  %23 = icmp eq i8 %22, 42
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = add i64 %6, 4294967294
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !36
  %29 = icmp eq i8 %28, 32
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %18, %16
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %32, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @.str.43.895) #29
  br label %33

33:                                               ; preds = %30, %24, %11, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @AppendStrings(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, %7
  %11 = add i32 %10, 1
  %12 = add i32 %11, %3
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @realloc(ptr noundef %1, i64 noundef %13) #35
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call void @TreeCCOutOfMemory(ptr noundef %0) #29
  br label %17

17:                                               ; preds = %16, %5
  %18 = icmp eq i32 %3, 0
  %19 = shl i64 %6, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i8, ptr %14, i64 %20
  br i1 %18, label %24, label %22

22:                                               ; preds = %17
  store i8 32, ptr %21, align 1, !tbaa !36
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %21, %17 ]
  %26 = phi i32 [ %11, %22 ], [ %10, %17 ]
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %2) #29
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %14, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !36
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @free(ptr noundef %2) #29
  br label %32

32:                                               ; preds = %31, %24
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCIncludeSkeleton(ptr nocapture noundef readonly %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca [8192 x i8], align 16
  %5 = load ptr, ptr @TreeCCSkelFiles, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %16, label %7

7:                                                ; preds = %12, %3
  %8 = phi ptr [ %14, %12 ], [ %5, %3 ]
  %9 = phi ptr [ %13, %12 ], [ @TreeCCSkelFiles, %3 ]
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %2) #32
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %7
  %13 = getelementptr inbounds ptr, ptr %9, i64 2
  %14 = load ptr, ptr %13, align 8, !tbaa !22
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %7, !llvm.loop !350

16:                                               ; preds = %12, %3
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #30
  br label %21

17:                                               ; preds = %7
  %.lcssa6 = phi ptr [ %9, %7 ]
  %18 = getelementptr inbounds ptr, ptr %.lcssa6, i64 1
  %19 = load ptr, ptr %18, align 8, !tbaa !22
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %17, %16
  %22 = load ptr, ptr @stderr, align 8, !tbaa !22
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.901, ptr noundef %2) #34
  tail call void @exit(i32 noundef 1) #33
  unreachable

24:                                               ; preds = %17
  tail call void @TreeCCStreamLine(ptr noundef %1, i64 noundef 1, ptr noundef %2) #29
  %25 = load i8, ptr %19, align 1, !tbaa !36
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %108, label %27

27:                                               ; preds = %24
  %28 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %29 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  br label %30

30:                                               ; preds = %45, %27
  %31 = phi i8 [ %25, %27 ], [ %46, %45 ]
  %32 = phi ptr [ %4, %27 ], [ %47, %45 ]
  %33 = phi i32 [ 8192, %27 ], [ %48, %45 ]
  %34 = phi ptr [ %19, %27 ], [ %49, %45 ]
  switch i8 %31, label %35 [
    i8 10, label %50
    i8 0, label %53
  ]

35:                                               ; preds = %30
  %36 = icmp sgt i32 %33, 2
  br i1 %36, label %37, label %40

37:                                               ; preds = %35
  %38 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 %31, ptr %32, align 1, !tbaa !36
  %39 = add nsw i32 %33, -1
  br label %40

40:                                               ; preds = %37, %35
  %41 = phi ptr [ %38, %37 ], [ %32, %35 ]
  %42 = phi i32 [ %39, %37 ], [ %33, %35 ]
  %43 = getelementptr inbounds i8, ptr %34, i64 1
  %44 = load i8, ptr %43, align 1, !tbaa !36
  br label %45

45:                                               ; preds = %105, %40
  %46 = phi i8 [ %44, %40 ], [ %106, %105 ]
  %47 = phi ptr [ %41, %40 ], [ %4, %105 ]
  %48 = phi i32 [ %42, %40 ], [ 8192, %105 ]
  %49 = phi ptr [ %43, %40 ], [ %55, %105 ]
  br label %30, !llvm.loop !351

50:                                               ; preds = %30
  %51 = getelementptr inbounds i8, ptr %34, i64 1
  %52 = getelementptr inbounds i8, ptr %32, i64 1
  store i8 10, ptr %32, align 1, !tbaa !36
  br label %53

53:                                               ; preds = %50, %30
  %54 = phi ptr [ %52, %50 ], [ %32, %30 ]
  %55 = phi ptr [ %51, %50 ], [ %34, %30 ]
  store i8 0, ptr %54, align 1, !tbaa !36
  %56 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 89) #32
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %61

58:                                               ; preds = %53
  %59 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 121) #32
  %60 = icmp eq ptr %59, null
  br i1 %60, label %103, label %61

61:                                               ; preds = %58, %53
  br label %62

62:                                               ; preds = %94, %61
  %63 = phi i32 [ 0, %61 ], [ %95, %94 ]
  br label %64

64:                                               ; preds = %96, %62
  %65 = phi i32 [ %97, %96 ], [ %63, %62 ]
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 %66
  %68 = load i8, ptr %67, align 1, !tbaa !36
  switch i8 %68, label %96 [
    i8 0, label %98
    i8 89, label %69
    i8 121, label %80
  ]

69:                                               ; preds = %64
  %70 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %67, ptr noundef nonnull dereferenceable(12) @.str.1.902, i64 noundef 11) #32
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %96

72:                                               ; preds = %69
  %.lcssa5 = phi i32 [ %65, %69 ]
  %.lcssa2 = phi ptr [ %67, %69 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !36
  %73 = icmp slt i32 %63, %.lcssa5
  br i1 %73, label %74, label %77

74:                                               ; preds = %72
  %75 = sext i32 %63 to i64
  %76 = getelementptr inbounds i8, ptr %4, i64 %75
  call void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %76) #29
  br label %77

77:                                               ; preds = %74, %72
  %78 = load ptr, ptr %29, align 8, !tbaa !14
  call void @TreeCCStreamCode(ptr noundef %1, ptr noundef %78) #29
  %79 = add nsw i32 %.lcssa5, 11
  br label %94

80:                                               ; preds = %64
  %81 = add nsw i32 %65, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !36
  %85 = icmp eq i8 %84, 121
  br i1 %85, label %86, label %96

86:                                               ; preds = %80
  %.lcssa4 = phi i32 [ %65, %80 ]
  %.lcssa1 = phi ptr [ %67, %80 ]
  store i8 0, ptr %.lcssa1, align 1, !tbaa !36
  %87 = icmp slt i32 %63, %.lcssa4
  br i1 %87, label %88, label %91

88:                                               ; preds = %86
  %89 = sext i32 %63 to i64
  %90 = getelementptr inbounds i8, ptr %4, i64 %89
  call void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %90) #29
  br label %91

91:                                               ; preds = %88, %86
  %92 = load ptr, ptr %28, align 8, !tbaa !13
  call void @TreeCCStreamCode(ptr noundef %1, ptr noundef %92) #29
  %93 = add nsw i32 %.lcssa4, 2
  br label %94

94:                                               ; preds = %91, %77
  %95 = phi i32 [ %79, %77 ], [ %93, %91 ]
  br label %62, !llvm.loop !352

96:                                               ; preds = %80, %69, %64
  %97 = add nsw i32 %65, 1
  br label %64, !llvm.loop !352

98:                                               ; preds = %64
  %.lcssa = phi i32 [ %63, %64 ]
  %.lcssa3 = phi i32 [ %65, %64 ]
  %99 = icmp slt i32 %.lcssa, %.lcssa3
  br i1 %99, label %100, label %105

100:                                              ; preds = %98
  %101 = sext i32 %.lcssa to i64
  %102 = getelementptr inbounds i8, ptr %4, i64 %101
  br label %103

103:                                              ; preds = %100, %58
  %104 = phi ptr [ %102, %100 ], [ %4, %58 ]
  call void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %104) #29
  br label %105

105:                                              ; preds = %103, %98
  %106 = load i8, ptr %55, align 1, !tbaa !36
  %107 = icmp eq i8 %106, 0
  br i1 %107, label %108, label %45

108:                                              ; preds = %105, %24
  call void @TreeCCStreamFixLine(ptr noundef %1) #29
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #30
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCDupString(ptr nocapture noundef readonly %0) #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #36
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %7

7:                                                ; preds = %6, %1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #29
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCResolvePathname(ptr noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call ptr @TreeCCDupString(ptr noundef %1) #31
  br label %31

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #32
  %8 = and i64 %7, 4294967295
  br label %9

9:                                                ; preds = %13, %6
  %10 = phi i64 [ %14, %13 ], [ %8, %6 ]
  %11 = trunc i64 %10 to i32
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %9
  %14 = add nsw i64 %10, -1
  %15 = getelementptr inbounds i8, ptr %0, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !36
  switch i8 %16, label %9 [
    i8 47, label %19
    i8 92, label %19
  ], !llvm.loop !353

17:                                               ; preds = %9
  %18 = tail call ptr @TreeCCDupString(ptr noundef %1) #31
  br label %31

19:                                               ; preds = %13, %13
  %.lcssa1 = phi i64 [ %10, %13 ], [ %10, %13 ]
  %20 = and i64 %.lcssa1, 4294967295
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %22 = add nuw nsw i64 %20, 1
  %23 = add i64 %22, %21
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #36
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %27

27:                                               ; preds = %26, %19
  %28 = tail call ptr @strncpy(ptr noundef %24, ptr noundef nonnull %0, i64 noundef %20) #29
  %29 = getelementptr inbounds i8, ptr %24, i64 %20
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %1) #29
  br label %31

31:                                               ; preds = %27, %17, %4
  %32 = phi ptr [ %18, %17 ], [ %24, %27 ], [ %5, %4 ]
  ret ptr %32
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCStreamCreate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) #0 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call ptr @TreeCCDupString(ptr noundef %1) #31
  br label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = getelementptr inbounds %struct.TreeCCInput, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !31
  %13 = tail call ptr @TreeCCResolvePathname(ptr noundef %12, ptr noundef %1) #31
  %14 = trunc i32 %3 to i8
  %15 = shl i8 %14, 2
  %16 = and i8 %15, 4
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi i8 [ 0, %6 ], [ %16, %8 ]
  %19 = phi ptr [ %7, %6 ], [ %13, %8 ]
  %20 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !22
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %30, %17
  %24 = phi ptr [ %32, %30 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct._tagTreeCCStream, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !354
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %19) #32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  tail call void @free(ptr noundef %19) #29
  br label %61

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct._tagTreeCCStream, ptr %24, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !22
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23, !llvm.loop !355

34:                                               ; preds = %30, %17
  %35 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #36
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %38

38:                                               ; preds = %37, %34
  store ptr %0, ptr %35, align 8, !tbaa !356
  %39 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 1
  store ptr %19, ptr %39, align 8, !tbaa !354
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call ptr @TreeCCDupString(ptr noundef nonnull %2) #31
  br label %45

43:                                               ; preds = %38
  %44 = tail call ptr @TreeCCDupString(ptr noundef %1) #31
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !166
  %48 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 3
  store i64 1, ptr %48, align 8, !tbaa !357
  %49 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 4
  %50 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  store i32 2048, ptr %50, align 8, !tbaa !358
  %51 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %52 = load i16, ptr %51, align 8
  %53 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 7
  %54 = trunc i16 %52 to i8
  %55 = lshr i8 %54, 4
  %56 = and i8 %55, 1
  %57 = or i8 %18, %56
  store i8 %57, ptr %53, align 4
  %58 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %59 = load ptr, ptr %20, align 8, !tbaa !16
  %60 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 10
  store ptr %59, ptr %60, align 8, !tbaa !17
  store ptr %35, ptr %20, align 8, !tbaa !16
  br label %61

61:                                               ; preds = %45, %29
  %62 = phi ptr [ %.lcssa, %29 ], [ %35, %45 ]
  ret ptr %62
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @TreeCCStreamGetJava(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !249
  %5 = icmp eq ptr %4, null
  br i1 %5, label %32, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #32
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %9 = add i64 %8, %7
  %10 = shl i64 %9, 32
  %11 = add i64 %10, 30064771072
  %12 = ashr exact i64 %11, 32
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #36
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %19

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %17) #29
  %18 = load ptr, ptr %3, align 8, !tbaa !249
  br label %19

19:                                               ; preds = %15, %6
  %20 = phi ptr [ %18, %15 ], [ %4, %6 ]
  %21 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %20) #29
  %22 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %20) #32
  %23 = shl i64 %22, 32
  %24 = ashr exact i64 %23, 32
  %25 = getelementptr inbounds i8, ptr %13, i64 %24
  store i8 47, ptr %25, align 1, !tbaa !36
  %26 = getelementptr inbounds i8, ptr %25, i64 1
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %1) #29
  %28 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %13)
  %29 = getelementptr inbounds i8, ptr %13, i64 %28
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %29, ptr noundef nonnull align 1 dereferenceable(6) @.str.921, i64 6, i1 false)
  %30 = add i64 %23, 4294967296
  %31 = ashr exact i64 %30, 32
  br label %46

32:                                               ; preds = %2
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %34 = shl i64 %33, 32
  %35 = add i64 %34, 25769803776
  %36 = ashr exact i64 %35, 32
  %37 = tail call noalias ptr @malloc(i64 noundef %36) #36
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %42

39:                                               ; preds = %32
  %40 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  tail call void @TreeCCOutOfMemory(ptr noundef %41) #29
  br label %42

42:                                               ; preds = %39, %32
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %37, ptr noundef nonnull dereferenceable(1) %1) #29
  %44 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %37)
  %45 = getelementptr inbounds i8, ptr %37, i64 %44
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %45, ptr noundef nonnull align 1 dereferenceable(6) @.str.921, i64 6, i1 false)
  br label %46

46:                                               ; preds = %42, %19
  %47 = phi i64 [ %31, %19 ], [ 0, %42 ]
  %48 = phi ptr [ %13, %19 ], [ %37, %42 ]
  %49 = getelementptr inbounds i8, ptr %48, i64 %47
  %50 = tail call ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef nonnull %48, ptr noundef %49, i32 noundef -1) #31
  tail call void @free(ptr noundef nonnull %48) #29
  ret ptr %50
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamDestroy(ptr nocapture noundef %0) #0 {
  tail call void @TreeCCStreamClear(ptr noundef %0) #31
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 8
  %3 = load ptr, ptr %2, align 8, !tbaa !359
  %4 = icmp eq ptr %3, null
  br i1 %4, label %16, label %5

5:                                                ; preds = %14, %1
  %6 = phi ptr [ %8, %14 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %6, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !360
  %9 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %6, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !362
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 8, !tbaa !363
  tail call void @free(ptr noundef %13) #29
  br label %14

14:                                               ; preds = %12, %5
  tail call void @free(ptr noundef nonnull %6) #29
  %15 = icmp eq ptr %8, null
  br i1 %15, label %16, label %5, !llvm.loop !364

16:                                               ; preds = %14, %1
  %17 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !354
  tail call void @free(ptr noundef %18) #29
  %19 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !166
  tail call void @free(ptr noundef %20) #29
  tail call void @free(ptr noundef %0) #29
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamClear(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !365
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !366
  tail call void @free(ptr noundef nonnull %6) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !368

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -17
  store i8 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  store i32 2048, ptr %14, align 8, !tbaa !358
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  store i64 1, ptr %15, align 8, !tbaa !357
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @TreeCCStreamFlush(ptr nocapture noundef readonly %0) #3 {
  %2 = alloca [2048 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %2) #30
  %3 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %4 = load i8, ptr %3, align 4
  %5 = and i8 %4, 8
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %11, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !365
  %10 = icmp eq ptr %9, null
  br i1 %10, label %77, label %11

11:                                               ; preds = %7, %1
  %12 = and i8 %4, 3
  %13 = icmp eq i8 %12, 1
  br i1 %13, label %67, label %14

14:                                               ; preds = %11
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !354
  %17 = tail call noalias ptr @fopen(ptr noundef %16, ptr noundef nonnull @.str.1.928) #31
  %18 = icmp eq ptr %17, null
  br i1 %18, label %59, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !365
  %22 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %23 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  br label %24

24:                                               ; preds = %47, %19
  %25 = phi ptr [ %21, %19 ], [ %49, %47 ]
  %26 = call i64 @fread(ptr noundef nonnull %2, i64 noundef 1, i64 noundef 2048, ptr noundef nonnull %17) #31
  %27 = trunc i64 %26 to i32
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %24
  %30 = icmp eq ptr %25, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %29
  %32 = load ptr, ptr %23, align 8, !tbaa !369
  %33 = icmp eq ptr %25, %32
  br i1 %33, label %34, label %42

34:                                               ; preds = %31
  %35 = load i32, ptr %22, align 8, !tbaa !358
  %36 = icmp eq i32 %35, %27
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = shl i64 %26, 32
  %39 = ashr exact i64 %38, 32
  %40 = call i32 @bcmp(ptr nonnull %25, ptr nonnull %2, i64 %39)
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %47, label %51

42:                                               ; preds = %31
  %43 = icmp eq i32 %27, 2048
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2048) %25, ptr noundef nonnull dereferenceable(2048) %2, i64 2048)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %44, %37
  %48 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %25, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !366
  %50 = icmp slt i32 %27, 2048
  br i1 %50, label %51, label %24, !llvm.loop !370

51:                                               ; preds = %47, %44, %42, %37, %34, %29, %24
  %52 = phi ptr [ %25, %24 ], [ null, %29 ], [ %25, %34 ], [ %25, %37 ], [ %25, %42 ], [ %25, %44 ], [ %49, %47 ]
  %53 = phi i1 [ true, %24 ], [ false, %29 ], [ false, %34 ], [ false, %37 ], [ false, %42 ], [ false, %44 ], [ true, %47 ]
  %54 = icmp eq ptr %52, null
  %55 = xor i1 %53, true
  %56 = select i1 %55, i1 true, i1 %54
  %57 = tail call i32 @fclose(ptr noundef nonnull %17) #31
  %58 = and i1 %53, %56
  br i1 %58, label %77, label %59

59:                                               ; preds = %51, %14
  %60 = load i8, ptr %3, align 4
  %61 = and i8 %60, 2
  %62 = icmp eq i8 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load ptr, ptr @stderr, align 8, !tbaa !22
  %65 = load ptr, ptr %15, align 8, !tbaa !354
  %66 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.2.929, ptr noundef %65) #34
  br label %77

67:                                               ; preds = %59, %11
  %68 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !354
  %70 = tail call noalias ptr @fopen(ptr noundef %69, ptr noundef nonnull @.str.3.930) #31
  %71 = icmp eq ptr %70, null
  br i1 %71, label %72, label %74

72:                                               ; preds = %67
  %73 = load ptr, ptr %68, align 8, !tbaa !354
  tail call void @perror(ptr noundef %73) #34
  br label %77

74:                                               ; preds = %67
  %75 = tail call i32 @TreeCCStreamFlushStdio(ptr noundef nonnull %0, ptr noundef nonnull %70) #31, !range !78
  %76 = tail call i32 @fclose(ptr noundef nonnull %70) #31
  br label %77

77:                                               ; preds = %74, %72, %63, %51, %7
  %78 = phi i32 [ 0, %63 ], [ 0, %72 ], [ %75, %74 ], [ 1, %7 ], [ 1, %51 ]
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %2) #30
  ret i32 %78
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #27

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @TreeCCStreamFlushStdio(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #3 {
  %3 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !22
  %5 = icmp eq ptr %4, null
  br i1 %5, label %27, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %8 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  br label %9

9:                                                ; preds = %23, %6
  %10 = phi ptr [ %4, %6 ], [ %25, %23 ]
  %11 = load ptr, ptr %7, align 8, !tbaa !369
  %12 = icmp eq ptr %10, %11
  br i1 %12, label %13, label %20

13:                                               ; preds = %9
  %14 = load i32, ptr %8, align 8, !tbaa !358
  %15 = sext i32 %14 to i64
  %16 = tail call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 1, i64 noundef %15, ptr noundef %1) #31
  %17 = load i32, ptr %8, align 8, !tbaa !358
  %18 = sext i32 %17 to i64
  %19 = icmp eq i64 %16, %18
  br i1 %19, label %23, label %31

20:                                               ; preds = %9
  %21 = tail call i64 @fwrite(ptr noundef nonnull %10, i64 noundef 1, i64 noundef 2048, ptr noundef %1) #31
  %22 = icmp eq i64 %21, 2048
  br i1 %22, label %23, label %31

23:                                               ; preds = %20, %13
  %24 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %10, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !22
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %9, !llvm.loop !371

27:                                               ; preds = %23, %2
  %28 = tail call i32 @fflush(ptr noundef %1) #31
  %29 = icmp eq i32 %28, 0
  %30 = zext i1 %29 to i32
  br label %31

31:                                               ; preds = %27, %20, %13
  %32 = phi i32 [ %30, %27 ], [ 0, %13 ], [ 0, %20 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamPrint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef %1, ptr noundef nonnull %4) #29
  call void @llvm.va_end(ptr nonnull %4)
  call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef nonnull %3) #31
  %6 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %3, %2 ], [ %12, %11 ]
  %9 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 10) #32
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i64, ptr %6, align 8, !tbaa !357
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %6, align 8, !tbaa !357
  br label %7, !llvm.loop !372

15:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #30
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @WriteBuffer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #32
  %4 = trunc i64 %3 to i32
  %5 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %6 = load i8, ptr %5, align 4
  %7 = or i8 %6, 16
  store i8 %7, ptr %5, align 4
  %8 = icmp sgt i32 %4, 0
  br i1 %8, label %9, label %45

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %13 = load i32, ptr %10, align 8, !tbaa !358
  br label %14

14:                                               ; preds = %32, %9
  %15 = phi i32 [ %13, %9 ], [ %43, %32 ]
  %16 = phi i32 [ %4, %9 ], [ %41, %32 ]
  %17 = phi ptr [ %1, %9 ], [ %40, %32 ]
  %18 = icmp sgt i32 %15, 2047
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = tail call noalias dereferenceable_or_null(2056) ptr @malloc(i64 noundef 2056) #36
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %20, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !366
  %25 = load ptr, ptr %11, align 8, !tbaa !369
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %25, i64 0, i32 1
  %28 = select i1 %26, ptr %12, ptr %27
  store ptr %20, ptr %28, align 8, !tbaa !22
  store ptr %20, ptr %11, align 8, !tbaa !369
  store i32 0, ptr %10, align 8, !tbaa !358
  br label %32

29:                                               ; preds = %14
  %30 = load ptr, ptr %11, align 8, !tbaa !369
  %31 = sub nsw i32 2048, %15
  br label %32

32:                                               ; preds = %29, %23
  %33 = phi i32 [ 0, %23 ], [ %15, %29 ]
  %34 = phi i32 [ 2048, %23 ], [ %31, %29 ]
  %35 = phi ptr [ %20, %23 ], [ %30, %29 ]
  %36 = tail call i32 @llvm.umin.i32(i32 %34, i32 %16)
  %37 = sext i32 %33 to i64
  %38 = getelementptr inbounds i8, ptr %35, i64 %37
  %39 = zext i32 %36 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %38, ptr align 1 %17, i64 %39, i1 false)
  %40 = getelementptr inbounds i8, ptr %17, i64 %39
  %41 = sub nsw i32 %16, %36
  %42 = load i32, ptr %10, align 8, !tbaa !358
  %43 = add nsw i32 %42, %36
  store i32 %43, ptr %10, align 8, !tbaa !358
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %14, label %45, !llvm.loop !373

45:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamCode(ptr nocapture noundef %0, ptr noundef readonly %1) #0 {
  tail call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef %1) #31
  %3 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %1, %2 ], [ %9, %8 ]
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 10) #32
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i64, ptr %3, align 8, !tbaa !357
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %3, align 8, !tbaa !357
  br label %4, !llvm.loop !372

12:                                               ; preds = %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamCodeIndent(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i8, ptr %1, align 1, !tbaa !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %54, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %14 = icmp sgt i32 %2, 0
  %15 = getelementptr inbounds [2 x i8], ptr %4, i64 0, i64 1
  br label %16

16:                                               ; preds = %50, %8
  %17 = phi i8 [ %6, %8 ], [ %52, %50 ]
  %18 = phi ptr [ %1, %8 ], [ %51, %50 ]
  %19 = load i32, ptr %9, align 8, !tbaa !358
  %20 = icmp slt i32 %19, 2048
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 8, !tbaa !369
  %23 = add nsw i32 %19, 1
  store i32 %23, ptr %9, align 8, !tbaa !358
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds [2048 x i8], ptr %22, i64 0, i64 %24
  store i8 %17, ptr %25, align 1, !tbaa !36
  %26 = load i8, ptr %12, align 4
  %27 = or i8 %26, 16
  store i8 %27, ptr %12, align 4
  br label %29

28:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #30
  store i8 %17, ptr %5, align 1, !tbaa !36
  store i8 0, ptr %10, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #30
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i8, ptr %18, align 1, !tbaa !36
  %31 = icmp eq i8 %30, 10
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i64, ptr %13, align 8, !tbaa !357
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %13, align 8, !tbaa !357
  br i1 %14, label %35, label %50

35:                                               ; preds = %47, %32
  %36 = phi i32 [ %48, %47 ], [ 0, %32 ]
  %37 = load i32, ptr %9, align 8, !tbaa !358
  %38 = icmp slt i32 %37, 2048
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8, !tbaa !369
  %41 = add nsw i32 %37, 1
  store i32 %41, ptr %9, align 8, !tbaa !358
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds [2048 x i8], ptr %40, i64 0, i64 %42
  store i8 9, ptr %43, align 1, !tbaa !36
  %44 = load i8, ptr %12, align 4
  %45 = or i8 %44, 16
  store i8 %45, ptr %12, align 4
  br label %47

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #30
  store i8 9, ptr %4, align 1, !tbaa !36
  store i8 0, ptr %15, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #30
  br label %47

47:                                               ; preds = %46, %39
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %35, !llvm.loop !374

50:                                               ; preds = %47, %32, %29
  %51 = getelementptr inbounds i8, ptr %18, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !36
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %16, !llvm.loop !375

54:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamCodeIndentCustom(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i8 noundef signext %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = load i8, ptr %1, align 1, !tbaa !36
  %8 = icmp eq i8 %7, 0
  br i1 %8, label %55, label %9

9:                                                ; preds = %4
  %10 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %11 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %13 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %15 = icmp sgt i32 %3, 0
  %16 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  br label %17

17:                                               ; preds = %51, %9
  %18 = phi i8 [ %7, %9 ], [ %53, %51 ]
  %19 = phi ptr [ %1, %9 ], [ %52, %51 ]
  %20 = load i32, ptr %10, align 8, !tbaa !358
  %21 = icmp slt i32 %20, 2048
  br i1 %21, label %22, label %29

22:                                               ; preds = %17
  %23 = load ptr, ptr %12, align 8, !tbaa !369
  %24 = add nsw i32 %20, 1
  store i32 %24, ptr %10, align 8, !tbaa !358
  %25 = sext i32 %20 to i64
  %26 = getelementptr inbounds [2048 x i8], ptr %23, i64 0, i64 %25
  store i8 %18, ptr %26, align 1, !tbaa !36
  %27 = load i8, ptr %13, align 4
  %28 = or i8 %27, 16
  store i8 %28, ptr %13, align 4
  br label %30

29:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #30
  store i8 %18, ptr %6, align 1, !tbaa !36
  store i8 0, ptr %11, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %6) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #30
  br label %30

30:                                               ; preds = %29, %22
  %31 = load i8, ptr %19, align 1, !tbaa !36
  %32 = icmp eq i8 %31, 10
  br i1 %32, label %33, label %51

33:                                               ; preds = %30
  %34 = load i64, ptr %14, align 8, !tbaa !357
  %35 = add nsw i64 %34, 1
  store i64 %35, ptr %14, align 8, !tbaa !357
  br i1 %15, label %36, label %51

36:                                               ; preds = %48, %33
  %37 = phi i32 [ %49, %48 ], [ 0, %33 ]
  %38 = load i32, ptr %10, align 8, !tbaa !358
  %39 = icmp slt i32 %38, 2048
  br i1 %39, label %40, label %47

40:                                               ; preds = %36
  %41 = load ptr, ptr %12, align 8, !tbaa !369
  %42 = add nsw i32 %38, 1
  store i32 %42, ptr %10, align 8, !tbaa !358
  %43 = sext i32 %38 to i64
  %44 = getelementptr inbounds [2048 x i8], ptr %41, i64 0, i64 %43
  store i8 %2, ptr %44, align 1, !tbaa !36
  %45 = load i8, ptr %13, align 4
  %46 = or i8 %45, 16
  store i8 %46, ptr %13, align 4
  br label %48

47:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #30
  store i8 %2, ptr %5, align 1, !tbaa !36
  store i8 0, ptr %16, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #30
  br label %48

48:                                               ; preds = %47, %40
  %49 = add nuw nsw i32 %37, 1
  %50 = icmp eq i32 %49, %3
  br i1 %50, label %51, label %36, !llvm.loop !376

51:                                               ; preds = %48, %33, %30
  %52 = getelementptr inbounds i8, ptr %19, i64 1
  %53 = load i8, ptr %52, align 1, !tbaa !36
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %55, label %17, !llvm.loop !377

55:                                               ; preds = %51, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamFixLine(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %3 = load i64, ptr %2, align 8, !tbaa !357
  %4 = add nsw i64 %3, 1
  %5 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !166
  tail call void @TreeCCStreamLine(ptr noundef %0, i64 noundef %4, ptr noundef %6) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamLine(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !356
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %4, i64 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 512
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %3
  %10 = and i16 %6, 256
  %11 = icmp eq i16 %10, 0
  br i1 %11, label %29, label %12

12:                                               ; preds = %9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #32
  %14 = trunc i64 %13 to i32
  %15 = and i64 %13, 4294967295
  %16 = tail call i32 @llvm.smin.i32(i32 %14, i32 0)
  br label %17

17:                                               ; preds = %21, %12
  %18 = phi i64 [ %22, %21 ], [ %15, %12 ]
  %19 = trunc i64 %18 to i32
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %25

21:                                               ; preds = %17
  %22 = add nsw i64 %18, -1
  %23 = getelementptr inbounds i8, ptr %2, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !36
  switch i8 %24, label %17 [
    i8 47, label %25
    i8 92, label %25
  ], !llvm.loop !378

25:                                               ; preds = %21, %21, %17
  %26 = phi i32 [ %19, %21 ], [ %19, %21 ], [ %16, %17 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi ptr [ %28, %25 ], [ %2, %9 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.8.943, i64 noundef %1, ptr noundef %30) #31
  br label %31

31:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamAddLiteral(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #36
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call void @TreeCCOutOfMemory(ptr noundef null) #29
  br label %12

12:                                               ; preds = %11, %8
  store ptr %1, ptr %9, align 8, !tbaa !363
  %13 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !379
  %14 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 2
  store i64 %3, ptr %14, align 8, !tbaa !380
  %15 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 3
  store i32 %4, ptr %15, align 8, !tbaa !381
  %16 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 4
  store i32 %5, ptr %16, align 4, !tbaa !362
  %17 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 5
  store ptr null, ptr %17, align 8, !tbaa !360
  %18 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !382
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %19, i64 0, i32 5
  %23 = select i1 %20, ptr %21, ptr %22
  store ptr %9, ptr %23, align 8, !tbaa !22
  store ptr %9, ptr %18, align 8, !tbaa !382
  br label %24

24:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamHeaderTop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.948, ptr noundef %3) #31
  %4 = load ptr, ptr %0, align 8, !tbaa !356
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.5.949, ptr noundef %6) #31
  tail call fastcc void @OutputMacroName(ptr noundef nonnull %0, ptr noundef %3) #31
  %7 = load ptr, ptr %0, align 8, !tbaa !356
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.6.950, ptr noundef %9) #31
  tail call fastcc void @OutputMacroName(ptr noundef nonnull %0, ptr noundef %3) #31
  tail call fastcc void @OutputDefns(ptr noundef nonnull %0, i32 noundef 0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputMacroName(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i8, ptr %1, align 1, !tbaa !36
  %7 = icmp eq i8 %6, 0
  br i1 %7, label %47, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds [2 x i8], ptr %4, i64 0, i64 1
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  br label %14

14:                                               ; preds = %43, %8
  %15 = phi i8 [ %6, %8 ], [ %45, %43 ]
  %16 = phi ptr [ %1, %8 ], [ %44, %43 ]
  %17 = and i8 %15, -33
  %18 = add i8 %17, -65
  %19 = icmp ult i8 %18, 26
  %20 = add i8 %15, -48
  %21 = icmp ult i8 %20, 10
  %22 = or i1 %21, %19
  %23 = load i32, ptr %9, align 8, !tbaa !358
  %24 = icmp slt i32 %23, 2048
  br i1 %22, label %25, label %34

25:                                               ; preds = %14
  br i1 %24, label %26, label %33

26:                                               ; preds = %25
  %27 = load ptr, ptr %11, align 8, !tbaa !369
  %28 = add nsw i32 %23, 1
  store i32 %28, ptr %9, align 8, !tbaa !358
  %29 = sext i32 %23 to i64
  %30 = getelementptr inbounds [2048 x i8], ptr %27, i64 0, i64 %29
  store i8 %15, ptr %30, align 1, !tbaa !36
  %31 = load i8, ptr %12, align 4
  %32 = or i8 %31, 16
  store i8 %32, ptr %12, align 4
  br label %43

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #30
  store i8 %15, ptr %5, align 1, !tbaa !36
  store i8 0, ptr %13, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %5) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #30
  br label %43

34:                                               ; preds = %14
  br i1 %24, label %35, label %42

35:                                               ; preds = %34
  %36 = load ptr, ptr %11, align 8, !tbaa !369
  %37 = add nsw i32 %23, 1
  store i32 %37, ptr %9, align 8, !tbaa !358
  %38 = sext i32 %23 to i64
  %39 = getelementptr inbounds [2048 x i8], ptr %36, i64 0, i64 %38
  store i8 95, ptr %39, align 1, !tbaa !36
  %40 = load i8, ptr %12, align 4
  %41 = or i8 %40, 16
  store i8 %41, ptr %12, align 4
  br label %43

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #30
  store i8 95, ptr %4, align 1, !tbaa !36
  store i8 0, ptr %10, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #30
  br label %43

43:                                               ; preds = %42, %35, %33, %26
  %44 = getelementptr inbounds i8, ptr %16, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !36
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %14, !llvm.loop !383

47:                                               ; preds = %43, %2
  %48 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !358
  %50 = icmp slt i32 %49, 2048
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !369
  %54 = add nsw i32 %49, 1
  store i32 %54, ptr %48, align 8, !tbaa !358
  %55 = sext i32 %49 to i64
  %56 = getelementptr inbounds [2048 x i8], ptr %53, i64 0, i64 %55
  store i8 10, ptr %56, align 1, !tbaa !36
  %57 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = or i8 %58, 16
  store i8 %59, ptr %57, align 4
  br label %62

60:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #30
  store i8 10, ptr %3, align 1, !tbaa !36
  %61 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #30
  br label %62

62:                                               ; preds = %60, %51
  %63 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !357
  %65 = add nsw i64 %64, 1
  store i64 %65, ptr %63, align 8, !tbaa !357
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputDefns(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !22
  %6 = icmp eq ptr %5, null
  br i1 %6, label %70, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  br label %13

13:                                               ; preds = %57, %7
  %14 = phi ptr [ %5, %7 ], [ %60, %57 ]
  %15 = phi i32 [ 0, %7 ], [ %58, %57 ]
  %16 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !381
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !380
  %22 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !379
  tail call void @TreeCCStreamLine(ptr noundef %0, i64 noundef %21, ptr noundef %23) #31
  %24 = load ptr, ptr %14, align 8, !tbaa !363
  tail call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef %24) #31
  %25 = load ptr, ptr %14, align 8, !tbaa !363
  br label %26

26:                                               ; preds = %30, %19
  %27 = phi ptr [ %25, %19 ], [ %31, %30 ]
  %28 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 10) #32
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i64, ptr %8, align 8, !tbaa !357
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %8, align 8, !tbaa !357
  br label %26, !llvm.loop !372

34:                                               ; preds = %26
  %35 = load i8, ptr %25, align 1, !tbaa !36
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #32
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds i8, ptr %25, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !36
  %42 = icmp eq i8 %41, 10
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %9, align 8, !tbaa !358
  %45 = icmp slt i32 %44, 2048
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %11, align 8, !tbaa !369
  %48 = add nsw i32 %44, 1
  store i32 %48, ptr %9, align 8, !tbaa !358
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [2048 x i8], ptr %47, i64 0, i64 %49
  store i8 10, ptr %50, align 1, !tbaa !36
  %51 = load i8, ptr %12, align 4
  %52 = or i8 %51, 16
  store i8 %52, ptr %12, align 4
  br label %54

53:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #30
  store i8 10, ptr %3, align 1, !tbaa !36
  store i8 0, ptr %10, align 1, !tbaa !36
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3) #31
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #30
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64, ptr %8, align 8, !tbaa !357
  %56 = add nsw i64 %55, 1
  store i64 %56, ptr %8, align 8, !tbaa !357
  br label %57

57:                                               ; preds = %54, %37, %34, %13
  %58 = phi i32 [ %15, %13 ], [ 1, %54 ], [ 1, %37 ], [ 1, %34 ]
  %59 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !22
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %13, !llvm.loop !384

62:                                               ; preds = %57
  %.lcssa = phi i32 [ %58, %57 ]
  %63 = icmp eq i32 %.lcssa, 0
  br i1 %63, label %70, label %64

64:                                               ; preds = %62
  %65 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %66 = load i64, ptr %65, align 8, !tbaa !357
  %67 = add nsw i64 %66, 1
  %68 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %69 = load ptr, ptr %68, align 8, !tbaa !166
  tail call void @TreeCCStreamLine(ptr noundef %0, i64 noundef %67, ptr noundef %69) #31
  br label %70

70:                                               ; preds = %64, %62, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamHeaderBottom(ptr nocapture noundef %0) #0 {
  tail call fastcc void @OutputDefns(ptr noundef %0, i32 noundef 1) #31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.7.953) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamSourceTop(ptr nocapture noundef %0) #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !166
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.948, ptr noundef %3) #31
  tail call fastcc void @OutputDefns(ptr noundef %0, i32 noundef 0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamSourceTopCS(ptr nocapture noundef %0) #0 {
  tail call fastcc void @OutputDefns(ptr noundef %0, i32 noundef 0) #31
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamSourceBottom(ptr nocapture noundef %0) #0 {
  tail call fastcc void @OutputDefns(ptr noundef %0, i32 noundef 1) #31
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { nocallback nofree nosync nounwind willreturn }
attributes #6 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree nounwind }
attributes #17 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #20 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #24 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree nounwind willreturn memory(argmem: read) }
attributes #28 = { nounwind optsize allocsize(0,1) }
attributes #29 = { nounwind optsize }
attributes #30 = { nounwind }
attributes #31 = { optsize }
attributes #32 = { nounwind optsize willreturn memory(read) }
attributes #33 = { noreturn nounwind optsize }
attributes #34 = { cold optsize }
attributes #35 = { nounwind optsize allocsize(1) }
attributes #36 = { nounwind optsize allocsize(0) }
attributes #37 = { cold }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !11, i64 8192}
!8 = !{!"_tagTreeCCContext", !9, i64 0, !9, i64 4096, !11, i64 8192, !11, i64 8200, !11, i64 8208, !11, i64 8216, !11, i64 8224, !11, i64 8232, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8240, !12, i64 8241, !12, i64 8241, !12, i64 8241, !12, i64 8241, !12, i64 8241, !11, i64 8248, !11, i64 8256, !11, i64 8264, !12, i64 8272, !12, i64 8276, !12, i64 8280, !11, i64 8288, !11, i64 8296}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!"any pointer", !9, i64 0}
!12 = !{!"int", !9, i64 0}
!13 = !{!8, !11, i64 8248}
!14 = !{!8, !11, i64 8256}
!15 = !{!8, !12, i64 8272}
!16 = !{!8, !11, i64 8200}
!17 = !{!18, !11, i64 72}
!18 = !{!"_tagTreeCCStream", !11, i64 0, !11, i64 8, !11, i64 16, !19, i64 24, !11, i64 32, !11, i64 40, !12, i64 48, !12, i64 52, !12, i64 52, !12, i64 52, !12, i64 52, !12, i64 52, !11, i64 56, !11, i64 64, !11, i64 72}
!19 = !{!"long", !9, i64 0}
!20 = distinct !{!20, !21}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!11, !11, i64 0}
!23 = !{!24, !11, i64 88}
!24 = !{!"_tagTreeCCNode", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 44, !12, i64 48, !11, i64 56, !19, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!25 = distinct !{!25, !21}
!26 = distinct !{!26, !21}
!27 = !{!28, !11, i64 64}
!28 = !{!"_tagTreeCCOperation", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !12, i64 40, !12, i64 44, !11, i64 48, !19, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !12, i64 96, !11, i64 104, !11, i64 112}
!29 = distinct !{!29, !21}
!30 = distinct !{!30, !21}
!31 = !{!32, !11, i64 32}
!32 = !{!"", !9, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !19, i64 40, !19, i64 48, !12, i64 56, !12, i64 60, !12, i64 64, !12, i64 68, !9, i64 72}
!33 = !{!32, !19, i64 40}
!34 = !{!32, !12, i64 56}
!35 = !{!12, !12, i64 0}
!36 = !{!9, !9, i64 0}
!37 = distinct !{!37, !21}
!38 = !{!32, !11, i64 16}
!39 = !{!8, !12, i64 8276}
!40 = !{!28, !12, i64 40}
!41 = !{!28, !11, i64 8}
!42 = !{!28, !11, i64 0}
!43 = !{!28, !11, i64 112}
!44 = !{!45, !11, i64 0}
!45 = !{!"", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32, !11, i64 40, !11, i64 48, !11, i64 56, !11, i64 64, !11, i64 72, !11, i64 80, !11, i64 88, !11, i64 96, !11, i64 104}
!46 = !{!45, !11, i64 48}
!47 = !{!48, !12, i64 24}
!48 = !{!"_tagTreeCCOperationCase", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !19, i64 40, !11, i64 48, !19, i64 56, !11, i64 64, !11, i64 72}
!49 = distinct !{!49, !21}
!50 = !{!28, !12, i64 44}
!51 = !{!28, !11, i64 88}
!52 = !{!28, !11, i64 32}
!53 = !{!45, !11, i64 8}
!54 = !{!28, !11, i64 72}
!55 = !{!45, !11, i64 96}
!56 = !{!45, !11, i64 104}
!57 = distinct !{!57, !21}
!58 = distinct !{!58, !21}
!59 = !{!60, !12, i64 16}
!60 = !{!"_tagTreeCCParam", !11, i64 0, !11, i64 8, !12, i64 16, !12, i64 20, !11, i64 24}
!61 = !{!60, !11, i64 8}
!62 = distinct !{!62, !21}
!63 = !{!60, !11, i64 24}
!64 = distinct !{!64, !21}
!65 = !{!45, !11, i64 16}
!66 = !{!24, !12, i64 40}
!67 = !{!60, !11, i64 0}
!68 = !{!45, !11, i64 24}
!69 = distinct !{!69, !21}
!70 = !{!45, !11, i64 88}
!71 = distinct !{!71, !21}
!72 = !{!45, !11, i64 64}
!73 = !{!45, !11, i64 56}
!74 = !{!48, !11, i64 64}
!75 = distinct !{!75, !21}
!76 = !{!77, !11, i64 0}
!77 = !{!"_tagTreeCCTrigger", !11, i64 0, !11, i64 8}
!78 = !{i32 0, i32 2}
!79 = !{!48, !11, i64 32}
!80 = !{!48, !19, i64 40}
!81 = !{!45, !11, i64 40}
!82 = !{!45, !11, i64 80}
!83 = distinct !{!83, !21}
!84 = distinct !{!84, !21}
!85 = distinct !{!85, !21}
!86 = !{!45, !11, i64 32}
!87 = !{!24, !12, i64 48}
!88 = !{!60, !12, i64 20}
!89 = distinct !{!89, !21}
!90 = distinct !{!90, !21}
!91 = distinct !{!91, !21}
!92 = !{!45, !11, i64 72}
!93 = distinct !{!93, !21}
!94 = distinct !{!94, !21}
!95 = !{!8, !11, i64 8208}
!96 = !{!8, !11, i64 8224}
!97 = !{!8, !11, i64 8232}
!98 = !{!8, !11, i64 8216}
!99 = distinct !{!99, !21}
!100 = !{!24, !11, i64 96}
!101 = !{!24, !11, i64 32}
!102 = !{!24, !12, i64 44}
!103 = distinct !{!103, !21}
!104 = !{!24, !11, i64 0}
!105 = !{!106, !11, i64 0}
!106 = !{!"_tagTreeCCVirtual", !11, i64 0, !11, i64 8, !11, i64 16, !11, i64 24, !11, i64 32}
!107 = distinct !{!107, !21}
!108 = distinct !{!108, !21}
!109 = distinct !{!109, !21}
!110 = distinct !{!110, !21}
!111 = !{!28, !11, i64 104}
!112 = !{!28, !11, i64 16}
!113 = distinct !{!113, !21}
!114 = !{!8, !12, i64 8280}
!115 = !{!24, !11, i64 104}
!116 = !{!48, !11, i64 16}
!117 = !{!48, !11, i64 0}
!118 = !{!77, !11, i64 8}
!119 = distinct !{!119, !21}
!120 = !{!48, !19, i64 56}
!121 = !{!48, !11, i64 48}
!122 = !{!48, !11, i64 8}
!123 = distinct !{!123, !21}
!124 = distinct !{!124, !21}
!125 = distinct !{!125, !21}
!126 = !{!28, !11, i64 24}
!127 = distinct !{!127, !21}
!128 = distinct !{!128, !21}
!129 = !{!130, !12, i64 24}
!130 = !{!"_tagTreeCCField", !11, i64 0, !11, i64 8, !11, i64 16, !12, i64 24, !11, i64 32, !19, i64 40, !11, i64 48}
!131 = !{!130, !11, i64 8}
!132 = !{!130, !11, i64 0}
!133 = distinct !{!133, !21}
!134 = !{!130, !11, i64 16}
!135 = distinct !{!135, !21}
!136 = distinct !{!136, !21}
!137 = !{!106, !11, i64 8}
!138 = distinct !{!138, !21}
!139 = distinct !{!139, !21}
!140 = distinct !{!140, !21}
!141 = distinct !{!141, !21}
!142 = distinct !{!142, !21}
!143 = distinct !{!143, !21}
!144 = distinct !{!144, !21}
!145 = distinct !{!145, !21}
!146 = distinct !{!146, !21}
!147 = distinct !{!147, !21}
!148 = !{!8, !11, i64 8264}
!149 = distinct !{!149, !21}
!150 = distinct !{!150, !21}
!151 = distinct !{!151, !21}
!152 = !{!8, !11, i64 8296}
!153 = distinct !{!153, !21}
!154 = distinct !{!154, !21}
!155 = distinct !{!155, !21}
!156 = distinct !{!156, !21}
!157 = distinct !{!157, !21}
!158 = distinct !{!158, !21}
!159 = distinct !{!159, !21}
!160 = distinct !{!160, !21}
!161 = distinct !{!161, !21}
!162 = distinct !{!162, !21}
!163 = distinct !{!163, !21}
!164 = distinct !{!164, !21}
!165 = distinct !{!165, !21}
!166 = !{!18, !11, i64 16}
!167 = distinct !{!167, !21}
!168 = distinct !{!168, !21}
!169 = distinct !{!169, !21}
!170 = distinct !{!170, !21}
!171 = distinct !{!171, !21}
!172 = distinct !{!172, !21}
!173 = distinct !{!173, !21}
!174 = distinct !{!174, !21}
!175 = distinct !{!175, !21}
!176 = !{!106, !11, i64 24}
!177 = distinct !{!177, !21}
!178 = distinct !{!178, !21}
!179 = distinct !{!179, !21}
!180 = distinct !{!180, !21}
!181 = distinct !{!181, !21}
!182 = distinct !{!182, !21}
!183 = distinct !{!183, !21}
!184 = distinct !{!184, !21}
!185 = distinct !{!185, !21}
!186 = distinct !{!186, !21}
!187 = distinct !{!187, !21}
!188 = distinct !{!188, !21}
!189 = distinct !{!189, !21}
!190 = distinct !{!190, !21}
!191 = distinct !{!191, !21}
!192 = distinct !{!192, !21}
!193 = distinct !{!193, !21}
!194 = distinct !{!194, !21}
!195 = distinct !{!195, !21}
!196 = distinct !{!196, !21}
!197 = distinct !{!197, !21}
!198 = distinct !{!198, !21}
!199 = distinct !{!199, !21}
!200 = distinct !{!200, !21}
!201 = distinct !{!201, !21}
!202 = distinct !{!202, !21}
!203 = distinct !{!203, !21}
!204 = distinct !{!204, !21}
!205 = distinct !{!205, !21}
!206 = distinct !{!206, !21}
!207 = distinct !{!207, !21}
!208 = distinct !{!208, !21}
!209 = distinct !{!209, !21}
!210 = distinct !{!210, !21}
!211 = distinct !{!211, !21}
!212 = distinct !{!212, !21}
!213 = distinct !{!213, !21}
!214 = distinct !{!214, !21}
!215 = distinct !{!215, !21}
!216 = distinct !{!216, !21}
!217 = distinct !{!217, !21}
!218 = distinct !{!218, !21}
!219 = distinct !{!219, !21}
!220 = distinct !{!220, !21}
!221 = distinct !{!221, !21}
!222 = distinct !{!222, !21}
!223 = distinct !{!223, !21}
!224 = distinct !{!224, !21}
!225 = distinct !{!225, !21}
!226 = distinct !{!226, !21}
!227 = distinct !{!227, !21}
!228 = distinct !{!228, !21}
!229 = distinct !{!229, !21}
!230 = distinct !{!230, !21}
!231 = distinct !{!231, !21}
!232 = distinct !{!232, !21}
!233 = distinct !{!233, !21}
!234 = !{!32, !9, i64 0}
!235 = !{!32, !11, i64 8}
!236 = !{!32, !11, i64 24}
!237 = !{!32, !19, i64 48}
!238 = !{!32, !12, i64 60}
!239 = !{!240, !11, i64 0}
!240 = !{!"", !11, i64 0, !9, i64 8}
!241 = !{!240, !9, i64 8}
!242 = distinct !{!242, !21}
!243 = !{!32, !12, i64 64}
!244 = distinct !{!244, !21}
!245 = distinct !{!245, !21}
!246 = distinct !{!246, !21}
!247 = distinct !{!247, !21}
!248 = distinct !{!248, !21}
!249 = !{!8, !11, i64 8288}
!250 = distinct !{!250, !21}
!251 = distinct !{!251, !21}
!252 = distinct !{!252, !21}
!253 = distinct !{!253, !21}
!254 = distinct !{!254, !21}
!255 = !{!24, !11, i64 72}
!256 = !{!130, !11, i64 48}
!257 = distinct !{!257, !21}
!258 = !{!24, !11, i64 80}
!259 = !{!106, !11, i64 32}
!260 = distinct !{!260, !21}
!261 = !{!24, !11, i64 56}
!262 = !{!24, !19, i64 64}
!263 = !{!24, !11, i64 24}
!264 = !{!24, !11, i64 16}
!265 = distinct !{!265, !21}
!266 = distinct !{!266, !21}
!267 = distinct !{!267, !21}
!268 = !{!130, !11, i64 32}
!269 = !{!130, !19, i64 40}
!270 = distinct !{!270, !21}
!271 = distinct !{!271, !21}
!272 = distinct !{!272, !21}
!273 = distinct !{!273, !21}
!274 = distinct !{!274, !21}
!275 = distinct !{!275, !21}
!276 = distinct !{!276, !21}
!277 = distinct !{!277, !21}
!278 = distinct !{!278, !21}
!279 = distinct !{!279, !21}
!280 = !{!28, !19, i64 56}
!281 = !{!106, !11, i64 16}
!282 = distinct !{!282, !21}
!283 = distinct !{!283, !21}
!284 = distinct !{!284, !21}
!285 = distinct !{!285, !21}
!286 = distinct !{!286, !21}
!287 = distinct !{!287, !21}
!288 = distinct !{!288, !21}
!289 = distinct !{!289, !21}
!290 = distinct !{!290, !21}
!291 = distinct !{!291, !21}
!292 = !{!48, !11, i64 72}
!293 = distinct !{!293, !21}
!294 = distinct !{!294, !21}
!295 = distinct !{!295, !21}
!296 = !{!28, !11, i64 48}
!297 = distinct !{!297, !21}
!298 = !{!28, !11, i64 80}
!299 = !{!28, !12, i64 96}
!300 = distinct !{!300, !21}
!301 = distinct !{!301, !21}
!302 = distinct !{!302, !21}
!303 = distinct !{!303, !21}
!304 = distinct !{!304, !21}
!305 = distinct !{!305, !21}
!306 = distinct !{!306, !21}
!307 = distinct !{!307, !21}
!308 = distinct !{!308, !21}
!309 = distinct !{!309, !21}
!310 = distinct !{!310, !21}
!311 = distinct !{!311, !21}
!312 = distinct !{!312, !21}
!313 = distinct !{!313, !21}
!314 = distinct !{!314, !21}
!315 = distinct !{!315, !21}
!316 = distinct !{!316, !21}
!317 = distinct !{!317, !21}
!318 = distinct !{!318, !21}
!319 = distinct !{!319, !21}
!320 = distinct !{!320, !21}
!321 = distinct !{!321, !21}
!322 = distinct !{!322, !21}
!323 = distinct !{!323, !21}
!324 = distinct !{!324, !21}
!325 = distinct !{!325, !21}
!326 = distinct !{!326, !21}
!327 = !{!328, !11, i64 0}
!328 = !{!"", !11, i64 0, !11, i64 8, !12, i64 16}
!329 = distinct !{!329, !21}
!330 = !{!328, !11, i64 8}
!331 = !{!328, !12, i64 16}
!332 = distinct !{!332, !21}
!333 = distinct !{!333, !21}
!334 = distinct !{!334, !21}
!335 = distinct !{!335, !21}
!336 = distinct !{!336, !21}
!337 = distinct !{!337, !21}
!338 = distinct !{!338, !21}
!339 = distinct !{!339, !21}
!340 = distinct !{!340, !21}
!341 = distinct !{!341, !21}
!342 = distinct !{!342, !21}
!343 = distinct !{!343, !21}
!344 = !{!32, !12, i64 68}
!345 = distinct !{!345, !21}
!346 = distinct !{!346, !21}
!347 = distinct !{!347, !21}
!348 = distinct !{!348, !21}
!349 = distinct !{!349, !21}
!350 = distinct !{!350, !21}
!351 = distinct !{!351, !21}
!352 = distinct !{!352, !21}
!353 = distinct !{!353, !21}
!354 = !{!18, !11, i64 8}
!355 = distinct !{!355, !21}
!356 = !{!18, !11, i64 0}
!357 = !{!18, !19, i64 24}
!358 = !{!18, !12, i64 48}
!359 = !{!18, !11, i64 56}
!360 = !{!361, !11, i64 32}
!361 = !{!"_tagTreeCCStreamDefn", !11, i64 0, !11, i64 8, !19, i64 16, !12, i64 24, !12, i64 28, !11, i64 32}
!362 = !{!361, !12, i64 28}
!363 = !{!361, !11, i64 0}
!364 = distinct !{!364, !21}
!365 = !{!18, !11, i64 32}
!366 = !{!367, !11, i64 2048}
!367 = !{!"_tagTreeCCStreamBuf", !9, i64 0, !11, i64 2048}
!368 = distinct !{!368, !21}
!369 = !{!18, !11, i64 40}
!370 = distinct !{!370, !21}
!371 = distinct !{!371, !21}
!372 = distinct !{!372, !21}
!373 = distinct !{!373, !21}
!374 = distinct !{!374, !21}
!375 = distinct !{!375, !21}
!376 = distinct !{!376, !21}
!377 = distinct !{!377, !21}
!378 = distinct !{!378, !21}
!379 = !{!361, !11, i64 8}
!380 = !{!361, !19, i64 16}
!381 = !{!361, !12, i64 24}
!382 = !{!18, !11, i64 64}
!383 = distinct !{!383, !21}
!384 = distinct !{!384, !21}
