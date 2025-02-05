; ModuleID = 'treecc.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TreeCCNonVirtual = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.anon = type { ptr, i32 }
%struct.anon.78 = type { ptr, ptr, i32 }
%struct.TreeCCInput = type { i32, ptr, ptr, ptr, ptr, i64, i64, i32, i32, i32, i32, [1024 x i8] }
%struct._tagTreeCCContext = type { [512 x ptr], [512 x ptr], ptr, ptr, ptr, ptr, ptr, ptr, i16, ptr, ptr, ptr, i32, i32, i32, ptr, ptr }
%struct._tagTreeCCStream = type { ptr, ptr, ptr, i64, ptr, ptr, i32, i8, ptr, ptr, ptr }
%struct._tagTreeCCNode = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, ptr }
%struct._tagTreeCCField = type { ptr, ptr, ptr, i32, ptr, i64, ptr }
%struct._tagTreeCCOperation = type { ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i64, ptr, ptr, ptr, ptr, i32, ptr, ptr }
%struct._tagTreeCCOperationCase = type { ptr, ptr, ptr, i32, ptr, i64, ptr, i64, ptr, ptr }
%struct._tagTreeCCParam = type { ptr, ptr, i32, i32, ptr }
%struct._tagTreeCCStreamBuf = type { [2048 x i8], ptr }
%struct._tagTreeCCTrigger = type { ptr, ptr }
%struct._tagTreeCCVirtual = type { ptr, ptr, ptr, ptr, ptr }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }
%struct._tagTreeCCStreamDefn = type { ptr, ptr, i64, i32, i32, ptr }

@.str = private unnamed_addr constant [3 x i8] c"yy\00", align 1
@TreeCCErrorFile = internal unnamed_addr global ptr null, align 8
@.str.2 = private unnamed_addr constant [11 x i8] c"line %ld: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.1.5 = private unnamed_addr constant [3 x i8] c": \00", align 1
@.str.2.6 = private unnamed_addr constant [26 x i8] c"virtual memory exhausted\0A\00", align 1
@.str.3 = private unnamed_addr constant [6 x i8] c"%ld: \00", align 1
@.str.1.8 = private unnamed_addr constant [39 x i8] c"this operation case duplicates another\00", align 1
@.str.3.15 = private unnamed_addr constant [18 x i8] c"%s %s_split_%d__(\00", align 1
@.str.15 = private unnamed_addr constant [32 x i8] c"switch(%s__->vtable__->kind__)\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"switch(%s__->kind__)\0A\00", align 1
@.str.17 = private unnamed_addr constant [25 x i8] c"switch(%s__->getKind())\0A\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"case %s:\0A\00", align 1
@.str.23 = private unnamed_addr constant [15 x i8] c"case %s_kind:\0A\00", align 1
@.str.24 = private unnamed_addr constant [19 x i8] c"static %s %s_%d__(\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"%s %s%s\00", align 1
@.str.28 = private unnamed_addr constant [11 x i8] c"%s %sP%d__\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"(%s *)\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"%s *%s = (%s *)%s__;\0A\00", align 1
@.str.42 = private unnamed_addr constant [20 x i8] c"#ifdef __cplusplus\0A\00", align 1
@.str.43 = private unnamed_addr constant [14 x i8] c"extern \22C\22 {\0A\00", align 1
@.str.45 = private unnamed_addr constant [20 x i8] c"#define %s_kind %d\0A\00", align 1
@.str.46 = private unnamed_addr constant [15 x i8] c"typedef enum {\00", align 1
@.str.47 = private unnamed_addr constant [6 x i8] c"%s\09%s\00", align 1
@.str.48 = private unnamed_addr constant [3 x i8] c",\0A\00", align 1
@.str.49 = private unnamed_addr constant [9 x i8] c"\0A} %s;\0A\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"typedef struct %s__ %s;\0A\00", align 1
@.str.51 = private unnamed_addr constant [15 x i8] c"struct %s__ {\0A\00", align 1
@.str.52 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *vtable__;\0A\00", align 1
@.str.57 = private unnamed_addr constant [22 x i8] c"struct %s_vtable__ {\0A\00", align 1
@.str.58 = private unnamed_addr constant [38 x i8] c"\09const struct %s_vtable__ *parent__;\0A\00", align 1
@.str.59 = private unnamed_addr constant [24 x i8] c"\09const void *parent__;\0A\00", align 1
@.str.60 = private unnamed_addr constant [22 x i8] c"\09const char *name__;\0A\00", align 1
@.str.61 = private unnamed_addr constant [43 x i8] c"extern struct %s_vtable__ const %s_vt__;\0A\0A\00", align 1
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
@.str.78 = private unnamed_addr constant [7 x i8] c"%s *%s\00", align 1
@.str.79 = private unnamed_addr constant [10 x i8] c"%s *P%d__\00", align 1
@.str.80 = private unnamed_addr constant [22 x i8] c"extern %s *%s_create(\00", align 1
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
@.str.156 = private unnamed_addr constant [22 x i8] c"\09\09vt = vt->parent__;\0A\00", align 1
@.str.158 = private unnamed_addr constant [4 x i8] c"};\0A\00", align 1
@TreeCCNonVirtualFuncsC = internal constant %struct.TreeCCNonVirtual { ptr @C_GenStart, ptr @C_GenEntry, ptr @C_GenSplitEntry, ptr @C_GenSwitchHead, ptr @C_GenSelector, ptr @C_GenEndSelectors, ptr @C_GenCaseFunc, ptr @C_GenCaseCall, ptr @C_GenCaseInline, ptr @C_GenCaseSplit, ptr @C_GenEndCase, ptr @C_GenEndSwitch, ptr @C_GenExit, ptr @C_GenEnd }, align 8
@.str.1.160 = private unnamed_addr constant [16 x i8] c"#include <new>\0A\00", align 1
@.str.3.275 = private unnamed_addr constant [25 x i8] c"const int %s_kind = %d;\0A\00", align 1
@.str.4.271 = private unnamed_addr constant [16 x i8] c"typedef enum {\0A\00", align 1
@.str.6.273 = private unnamed_addr constant [8 x i8] c"} %s;\0A\0A\00", align 1
@.str.7.274 = private unnamed_addr constant [11 x i8] c"class %s;\0A\00", align 1
@.str.9.217 = private unnamed_addr constant [10 x i8] c"public:\0A\0A\00", align 1
@.str.10.248 = private unnamed_addr constant [8 x i8] c"\09%s();\0A\00", align 1
@.str.11.245 = private unnamed_addr constant [18 x i8] c"\09virtual ~%s();\0A\0A\00", align 1
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
@.str.55.243 = private unnamed_addr constant [35 x i8] c"\09virtual int isA(int kind) const;\0A\00", align 1
@.str.56.244 = private unnamed_addr constant [44 x i8] c"\09virtual const char *getKindName() const;\0A\0A\00", align 1
@.str.57.221 = private unnamed_addr constant [5 x i8] c"};\0A\0A\00", align 1
@.str.58.241 = private unnamed_addr constant [9 x i8] c"\09%s %s;\0A\00", align 1
@.str.59.246 = private unnamed_addr constant [16 x i8] c"\09virtual %s %s(\00", align 1
@.str.63.218 = private unnamed_addr constant [9 x i8] c"\09static \00", align 1
@.str.64.219 = private unnamed_addr constant [7 x i8] c"%s %s(\00", align 1
@.str.66.204 = private unnamed_addr constant [22 x i8] c"#define %s_BLKSIZ %d\0A\00", align 1
@.str.67.205 = private unnamed_addr constant [24 x i8] c"#define %s_REENTRANT 1\0A\00", align 1
@.str.68.206 = private unnamed_addr constant [26 x i8] c"#define %s_TRACK_LINES 1\0A\00", align 1
@.str.69.207 = private unnamed_addr constant [28 x i8] c"#define %s_USE_ALLOCATOR 1\0A\00", align 1
@.str.72.211 = private unnamed_addr constant [18 x i8] c"%s *%s::%sCreate(\00", align 1
@.str.74.212 = private unnamed_addr constant [41 x i8] c"\09void *buf__ = this->alloc(sizeof(%s));\0A\00", align 1
@.str.75.213 = private unnamed_addr constant [27 x i8] c"\09if(buf__ == 0) return 0;\0A\00", align 1
@.str.76.214 = private unnamed_addr constant [28 x i8] c"\09return new (buf__) %s(this\00", align 1
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
@.str.96.179 = private unnamed_addr constant [26 x i8] c"\09this->kind__ = %s_kind;\0A\00", align 1
@.str.97.180 = private unnamed_addr constant [46 x i8] c"\09this->filename__ = state__->currFilename();\0A\00", align 1
@.str.98.181 = private unnamed_addr constant [44 x i8] c"\09this->linenum__ = state__->currLinenum();\0A\00", align 1
@.str.99.182 = private unnamed_addr constant [53 x i8] c"\09this->filename__ = %s::getState()->currFilename();\0A\00", align 1
@.str.100.183 = private unnamed_addr constant [51 x i8] c"\09this->linenum__ = %s::getState()->currLinenum();\0A\00", align 1
@.str.101.184 = private unnamed_addr constant [17 x i8] c"\09this->%s = %s;\0A\00", align 1
@.str.102.195 = private unnamed_addr constant [11 x i8] c"%s %s::%s(\00", align 1
@.str.106.201 = private unnamed_addr constant [19 x i8] c"{\0A\09%s *%s = this;\0A\00", align 1
@.str.278 = private unnamed_addr constant [47 x i8] c"/* %s.  Generated automatically by treecc */\0A\0A\00", align 1
@.str.1.279 = private unnamed_addr constant [17 x i8] c"namespace %s\0A{\0A\0A\00", align 1
@.str.2.280 = private unnamed_addr constant [16 x i8] c"using System;\0A\0A\00", align 1
@.str.3.366 = private unnamed_addr constant [18 x i8] c"internal enum %s\0A\00", align 1
@.str.4.365 = private unnamed_addr constant [16 x i8] c"public enum %s\0A\00", align 1
@.str.6.368 = private unnamed_addr constant [6 x i8] c"\09%s,\0A\00", align 1
@.str.8.345 = private unnamed_addr constant [31 x i8] c"internal abstract class %s\0A{\0A\0A\00", align 1
@.str.10.347 = private unnamed_addr constant [22 x i8] c"internal class %s\0A{\0A\0A\00", align 1
@.str.21.356 = private unnamed_addr constant [56 x i8] c"\09public virtual String currFilename() { return null; }\0A\00", align 1
@.str.22.357 = private unnamed_addr constant [51 x i8] c"\09public virtual long currLinenum() { return 0; }\0A\0A\00", align 1
@.str.23.358 = private unnamed_addr constant [38 x i8] c"\09public virtual abstract %s %sCreate(\00", align 1
@.str.24.359 = private unnamed_addr constant [29 x i8] c"\09public virtual %s %sCreate(\00", align 1
@.str.34.287 = private unnamed_addr constant [29 x i8] c"%s abstract class %s : %s\0A{\0A\00", align 1
@.str.35.288 = private unnamed_addr constant [20 x i8] c"%s class %s : %s\0A{\0A\00", align 1
@.str.36.289 = private unnamed_addr constant [24 x i8] c"%s abstract class %s\0A{\0A\00", align 1
@.str.47.301 = private unnamed_addr constant [35 x i8] c"\09public new const int KIND = %d;\0A\0A\00", align 1
@.str.48.300 = private unnamed_addr constant [31 x i8] c"\09public const int KIND = %d;\0A\0A\00", align 1
@.str.53.309 = private unnamed_addr constant [10 x i8] c"\09\09: base(\00", align 1
@.str.61.322 = private unnamed_addr constant [36 x i8] c"\09public override int isA(int kind)\0A\00", align 1
@.str.62.321 = private unnamed_addr constant [35 x i8] c"\09public virtual int isA(int kind)\0A\00", align 1
@.str.66.327 = private unnamed_addr constant [27 x i8] c"\09\09\09return base.isA(kind);\0A\00", align 1
@.str.68.329 = private unnamed_addr constant [39 x i8] c"\09public override String getKindName()\0A\00", align 1
@.str.69.328 = private unnamed_addr constant [38 x i8] c"\09public virtual String getKindName()\0A\00", align 1
@.str.74.335 = private unnamed_addr constant [23 x i8] c"\09public virtual %s %s(\00", align 1
@.str.75.336 = private unnamed_addr constant [24 x i8] c"\09public override %s %s(\00", align 1
@.str.79.342 = private unnamed_addr constant [19 x i8] c"\0A\09\09%s %s = this;\0A\09\00", align 1
@TreeCCNonVirtualFuncsJava = internal constant %struct.TreeCCNonVirtual { ptr @Java_GenStart, ptr @Java_GenEntry, ptr @Java_GenSplitEntry, ptr @Java_GenSwitchHead, ptr @Java_GenSelector, ptr @Java_GenEndSelectors, ptr @Java_GenCaseFunc, ptr @Java_GenCaseCall, ptr @Java_GenCaseInline, ptr @Java_GenCaseSplit, ptr @Java_GenEndCase, ptr @Java_GenEndSwitch, ptr @Java_GenExit, ptr @Java_GenEnd }, align 8
@.str.431 = private unnamed_addr constant [9 x i8] c"internal\00", align 1
@.str.1.430 = private unnamed_addr constant [7 x i8] c"public\00", align 1
@.str.2.432 = private unnamed_addr constant [15 x i8] c"%s class %s\0A{\0A\00", align 1
@.str.3.427 = private unnamed_addr constant [34 x i8] c"\09private static %s %s_split_%d__(\00", align 1
@.str.4.428 = private unnamed_addr constant [22 x i8] c"\09public static %s %s(\00", align 1
@.str.6.429 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.11.379 = private unnamed_addr constant [4 x i8] c"\09{\0A\00", align 1
@.str.12.416 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.13.426 = private unnamed_addr constant [12 x i8] c"switch(%s)\0A\00", align 1
@.str.14.425 = private unnamed_addr constant [24 x i8] c"switch(%s__.getKind())\0A\00", align 1
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
@.str.31.408 = private unnamed_addr constant [5 x i8] c"(%s)\00", align 1
@.str.33.413 = private unnamed_addr constant [19 x i8] c"%s %s = (%s)%s__;\0A\00", align 1
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
@.str.75.449 = private unnamed_addr constant [11 x i8] c"protected \00", align 1
@.str.76.450 = private unnamed_addr constant [7 x i8] c"\09%s%s(\00", align 1
@.str.77.451 = private unnamed_addr constant [11 x i8] c"%s state__\00", align 1
@.str.78.453 = private unnamed_addr constant [9 x i8] c"\09\09super(\00", align 1
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
@.str.98.474 = private unnamed_addr constant [17 x i8] c"\09\09%s %s = this;\0A\00", align 1
@.str.100.476 = private unnamed_addr constant [5 x i8] c");\0A\0A\00", align 1
@switch.table.Indent.400 = private unnamed_addr constant [3 x ptr] [ptr @.str.17.401, ptr @.str.18.402, ptr @.str.19.403], align 8
@TreeCCNonVirtualFuncsPHP = internal constant %struct.TreeCCNonVirtual { ptr @PHP_GenStart, ptr @PHP_GenEntry, ptr @PHP_GenSplitEntry, ptr @PHP_GenSwitchHead, ptr @PHP_GenSelector, ptr @PHP_GenEndSelectors, ptr @PHP_GenCaseFunc, ptr @PHP_GenCaseCall, ptr @PHP_GenCaseInline, ptr @PHP_GenCaseSplit, ptr @PHP_GenEndCase, ptr @PHP_GenEndSwitch, ptr @PHP_GenExit, ptr @PHP_GenEnd }, align 8
@.str.527 = private unnamed_addr constant [12 x i8] c"class %s\0A{\0A\00", align 1
@.str.1.524 = private unnamed_addr constant [29 x i8] c"    function %s_split_%d__(&\00", align 1
@.str.2.525 = private unnamed_addr constant [18 x i8] c"    function %s(&\00", align 1
@.str.4.508 = private unnamed_addr constant [4 x i8] c"$%s\00", align 1
@.str.5.515 = private unnamed_addr constant [7 x i8] c"$P%d__\00", align 1
@.str.8.526 = private unnamed_addr constant [7 x i8] c"    {\0A\00", align 1
@.str.9.523 = private unnamed_addr constant [13 x i8] c"switch($%s)\0A\00", align 1
@.str.10.522 = private unnamed_addr constant [26 x i8] c"switch($%s__->getKind())\0A\00", align 1
@.str.11.519 = private unnamed_addr constant [3 x i8] c"{\0A\00", align 1
@.str.12.499 = private unnamed_addr constant [17 x i8] c"                \00", align 1
@.str.15.503 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.16.520 = private unnamed_addr constant [13 x i8] c"case %s_%s:\0A\00", align 1
@.str.17.521 = private unnamed_addr constant [15 x i8] c"case %s_KIND:\0A\00", align 1
@.str.18.516 = private unnamed_addr constant [23 x i8] c"    function %s_%d__(&\00", align 1
@.str.19.518 = private unnamed_addr constant [6 x i8] c"    {\00", align 1
@.str.20.491 = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.23.505 = private unnamed_addr constant [8 x i8] c"return \00", align 1
@.str.24.514 = private unnamed_addr constant [45 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_%d__(\00", align 1
@.str.25.511 = private unnamed_addr constant [4 x i8] c");\0A\00", align 1
@.str.26.512 = private unnamed_addr constant [13 x i8] c"$%s = %s__;\0A\00", align 1
@.str.27.513 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.28.506 = private unnamed_addr constant [51 x i8] c"$_t = __CLASS__;$_t = new $_t; $_t->%s_split_%d__(\00", align 1
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
@switch.table.Indent.500 = private unnamed_addr constant [3 x ptr] [ptr @.str.13.602, ptr @.str.11.599, ptr @.str.15.503], align 8
@TreeCCNonVirtualFuncsRuby = internal constant %struct.TreeCCNonVirtual { ptr @Ruby_GenStart, ptr @Ruby_GenEntry, ptr @Ruby_GenSplitEntry, ptr @Ruby_GenSwitchHead, ptr @Ruby_GenSelector, ptr @Ruby_GenEndSelectors, ptr @Ruby_GenCaseFunc, ptr @Ruby_GenCaseCall, ptr @Ruby_GenCaseInline, ptr @Ruby_GenCaseSplit, ptr @Ruby_GenEndCase, ptr @Ruby_GenEndSwitch, ptr @Ruby_GenExit, ptr @Ruby_GenEnd }, align 8
@.str.620 = private unnamed_addr constant [10 x i8] c"class %s\0A\00", align 1
@.str.1.618 = private unnamed_addr constant [35 x i8] c"  private \0A  def %s.%s_split_%d__(\00", align 1
@.str.2.619 = private unnamed_addr constant [23 x i8] c"  public \0A  def %s.%s(\00", align 1
@.str.4.606 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.5.607 = private unnamed_addr constant [6 x i8] c"p%d__\00", align 1
@.str.6.608 = private unnamed_addr constant [3 x i8] c"__\00", align 1
@.str.7.609 = private unnamed_addr constant [3 x i8] c")\0A\00", align 1
@.str.8.617 = private unnamed_addr constant [9 x i8] c"case %s\0A\00", align 1
@.str.9.616 = private unnamed_addr constant [22 x i8] c"case %s__.type::KIND\0A\00", align 1
@.str.10.611 = private constant [2 x i8] c"\0A\00", align 1
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
@.str.12.714 = private unnamed_addr constant [2 x i8] c"h\00", align 1
@.str.13.716 = private unnamed_addr constant [2 x i8] c"-\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.14.717 = private unnamed_addr constant [6 x i8] c"stdin\00", align 1
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
@.str.5.752 = private unnamed_addr constant [52 x i8] c"base node type `%s' must be declared with %%typedef\00", align 1
@.str.6.753 = private unnamed_addr constant [31 x i8] c"field type does not end in `*'\00", align 1
@.str.7.760 = private unnamed_addr constant [16 x i8] c"%%virtual %s %s\00", align 1
@.str.8.767 = private unnamed_addr constant [20 x i8] c"%%field %s %s %s %d\00", align 1
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
@.str.7.912 = private unnamed_addr constant [15 x i8] c"cpp_gc_skel.cc\00", align 1
@TreeCCSkel_cpp_gc_skel_cc = internal constant [2540 x i8] c"/*\0A * treecc node allocation routines for C++.\0A *\0A * Copyright (C) 2003  Southern Storm Software, Pty Ltd.\0A *\0A * This program is free software; you can redistribute it and/or modify\0A * it under the terms of the GNU General Public License as published by\0A * the Free Software Foundation; either version 2 of the License, or\0A * (at your option) any later version.\0A *\0A * This program is distributed in the hope that it will be useful,\0A * but WITHOUT ANY WARRANTY; without even the implied warranty of\0A * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the\0A * GNU General Public License for more details.\0A *\0A * You should have received a copy of the GNU General Public License\0A * along with this program; if not, write to the Free Software\0A * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA\0A *\0A * As a special exception, when this file is copied by treecc into\0A * a treecc output file, you may use that output file without restriction.\0A */\0A\0A#include <gc.h>\0A\0A/*\0A * Initialize the singleton instance.\0A */\0A#ifndef YYNODESTATE_REENTRANT\0AYYNODESTATE *YYNODESTATE::state__ = 0;\0A#endif\0A\0A/*\0A * Constructor for YYNODESTATE.\0A */\0AYYNODESTATE::YYNODESTATE()\0A{\0A\09/* Initialize the garbage collector */\0A\09GC_INIT();\0A\09GC_init();\0A\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* Register this object as the singleton instance */\0A\09if(!state__)\0A\09{\0A\09\09state__ = this;\0A\09}\0A#endif\0A}\0A\0A/*\0A * Destructor for YYNODESTATE.\0A */\0AYYNODESTATE::~YYNODESTATE()\0A{\0A#ifndef YYNODESTATE_REENTRANT\0A\09/* We are no longer the singleton instance */\0A\09if(state__ == this)\0A\09{\0A\09\09state__ = 0;\0A\09}\0A#endif\0A}\0A\0A#ifdef YYNODESTATE_USE_ALLOCATOR\0A\0A/*\0A * Allocate a block of memory.\0A */\0Avoid *YYNODESTATE::alloc(size_t size__)\0A{\0A\09return (void *)GC_MALLOC((size_t)size__);\0A}\0A\0A/*\0A * Deallocate a block of memory.\0A */\0Avoid YYNODESTATE::dealloc(void *ptr__, size_t size__)\0A{\0A\09/* Nothing to do for this type of node allocator */\0A}\0A\0A/*\0A * Push the node allocation state.\0A */\0Aint YYNODESTATE::push()\0A{\0A\09/* Not used with the garbage collector */\0A\09return 1;\0A}\0A\0A/*\0A * Pop the node allocation state.\0A */\0Avoid YYNODESTATE::pop()\0A{\0A\09/* Not used with the garbage collector */\0A}\0A\0A/*\0A * Clear the node allocation pool completely.\0A */\0Avoid YYNODESTATE::clear()\0A{\0A\09/* Not used with the garbage collector */\0A}\0A\0A#endif /* YYNODESTATE_USE_ALLOCATOR */\0A\0A/*\0A * Default implementation of functions which may be overridden.\0A */\0Avoid YYNODESTATE::failed()\0A{\0A}\0A\0A#ifdef YYNODESTATE_TRACK_LINES\0A\0Achar *YYNODESTATE::currFilename()\0A{\0A\09return (char *)0;\0A}\0A\0Along YYNODESTATE::currLinenum()\0A{\0A\09return 0;\0A}\0A\0A#endif\0A\00", align 16
@TreeCCSkelFiles = internal unnamed_addr constant [17 x ptr] [ptr @.str.905, ptr @TreeCCSkel_c_skel_c, ptr @.str.1.906, ptr @TreeCCSkel_c_skel_h, ptr @.str.2.907, ptr @TreeCCSkel_cpp_skel_cc, ptr @.str.3.908, ptr @TreeCCSkel_cpp_skel_h, ptr @.str.4.909, ptr @TreeCCSkel_c_gc_skel_h, ptr @.str.5.910, ptr @TreeCCSkel_c_gc_skel_c, ptr @.str.6.911, ptr @.str.10.611, ptr @.str.7.912, ptr @TreeCCSkel_cpp_gc_skel_cc, ptr null], align 16
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
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [2048 x i8], align 16
  %4 = alloca %struct.TreeCCInput, align 8
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 1096, ptr nonnull %4) #28
  %6 = sext i32 %0 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #29
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %2
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

11:                                               ; preds = %2
  %12 = icmp sgt i32 %0, 1
  br i1 %12, label %13, label %226

13:                                               ; preds = %210, %11
  %14 = phi i32 [ %219, %210 ], [ 0, %11 ]
  %15 = phi i32 [ %218, %210 ], [ 1, %11 ]
  %16 = phi i32 [ %220, %210 ], [ %0, %11 ]
  %17 = phi i16 [ %216, %210 ], [ 0, %11 ]
  %18 = phi ptr [ %215, %210 ], [ null, %11 ]
  %19 = phi ptr [ %214, %210 ], [ @.str.32.827, %11 ]
  %20 = phi ptr [ %213, %210 ], [ null, %11 ]
  %21 = phi ptr [ %212, %210 ], [ null, %11 ]
  %22 = phi ptr [ %221, %210 ], [ %1, %11 ]
  %23 = getelementptr inbounds ptr, ptr %22, i64 1
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = icmp eq i8 %25, 45
  br i1 %26, label %27, label %227

27:                                               ; preds = %13
  %28 = getelementptr inbounds i8, ptr %24, i64 1
  %29 = load i8, ptr %28, align 1, !tbaa !11
  switch i8 %29, label %109 [
    i8 0, label %227
    i8 45, label %30
  ]

30:                                               ; preds = %27
  %31 = getelementptr inbounds i8, ptr %24, i64 2
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %223, label %34

34:                                               ; preds = %30
  %35 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(9) @.str.1.703) #31
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %44

37:                                               ; preds = %34
  %38 = icmp ult i32 %16, 3
  br i1 %38, label %39, label %40

39:                                               ; preds = %37
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

40:                                               ; preds = %37
  %41 = add nsw i32 %16, -1
  %42 = getelementptr inbounds ptr, ptr %22, i64 2
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  br label %210

44:                                               ; preds = %34
  %45 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(9) @.str.2.704) #31
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %44
  %48 = icmp ult i32 %16, 3
  br i1 %48, label %49, label %50

49:                                               ; preds = %47
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

50:                                               ; preds = %47
  %51 = add nsw i32 %16, -1
  %52 = getelementptr inbounds ptr, ptr %22, i64 2
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  br label %210

54:                                               ; preds = %44
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(13) @.str.3.705) #31
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %54
  %58 = icmp ult i32 %16, 3
  br i1 %58, label %59, label %60

59:                                               ; preds = %57
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

60:                                               ; preds = %57
  %61 = add nsw i32 %16, -1
  %62 = getelementptr inbounds ptr, ptr %22, i64 2
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  br label %210

64:                                               ; preds = %54
  %65 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(15) @.str.4.706) #31
  %66 = icmp eq i32 %65, 0
  br i1 %66, label %67, label %71

67:                                               ; preds = %64
  %68 = add nsw i32 %16, -1
  %69 = icmp ult i32 %16, 3
  br i1 %69, label %70, label %210

70:                                               ; preds = %67
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

71:                                               ; preds = %64
  %72 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(12) @.str.5.707) #31
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %74, label %81

74:                                               ; preds = %71
  %75 = icmp ult i32 %16, 3
  br i1 %75, label %76, label %77

76:                                               ; preds = %74
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

77:                                               ; preds = %74
  %78 = add nsw i32 %16, -1
  %79 = getelementptr inbounds ptr, ptr %22, i64 2
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  br label %210

81:                                               ; preds = %71
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(9) @.str.6.708) #31
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %94

84:                                               ; preds = %81
  %85 = icmp ult i32 %16, 3
  br i1 %85, label %86, label %87

86:                                               ; preds = %84
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

87:                                               ; preds = %84
  %88 = add nsw i32 %16, -1
  %89 = getelementptr inbounds ptr, ptr %22, i64 2
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = add nsw i32 %14, 1
  %92 = sext i32 %14 to i64
  %93 = getelementptr inbounds ptr, ptr %8, i64 %92
  store ptr %90, ptr %93, align 8, !tbaa !7
  br label %210

94:                                               ; preds = %81
  %95 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(15) @.str.7.709) #31
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %210, label %97

97:                                               ; preds = %94
  %98 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(12) @.str.8.710) #31
  %99 = icmp eq i32 %98, 0
  br i1 %99, label %210, label %100

100:                                              ; preds = %97
  %.lcssa5 = phi ptr [ %24, %97 ]
  %101 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa5, ptr noundef nonnull dereferenceable(7) @.str.9.711) #31
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %100
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

104:                                              ; preds = %100
  %105 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa5, ptr noundef nonnull dereferenceable(10) @.str.10.712) #31
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %104
  tail call fastcc void @Version() #32
  br label %1502

108:                                              ; preds = %104
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

109:                                              ; preds = %197, %27
  %110 = phi i8 [ %208, %197 ], [ %29, %27 ]
  %111 = phi i32 [ %207, %197 ], [ %14, %27 ]
  %112 = phi i32 [ %206, %197 ], [ %15, %27 ]
  %113 = phi i32 [ %205, %197 ], [ %16, %27 ]
  %114 = phi i16 [ %204, %197 ], [ %17, %27 ]
  %115 = phi ptr [ %203, %197 ], [ %18, %27 ]
  %116 = phi ptr [ %202, %197 ], [ %19, %27 ]
  %117 = phi ptr [ %201, %197 ], [ %20, %27 ]
  %118 = phi ptr [ %200, %197 ], [ %21, %27 ]
  %119 = phi ptr [ %199, %197 ], [ %28, %27 ]
  %120 = phi ptr [ %198, %197 ], [ %22, %27 ]
  %121 = sext i8 %110 to i32
  %122 = getelementptr inbounds i8, ptr %119, i64 1
  switch i32 %121, label %196 [
    i32 111, label %123
    i32 104, label %134
    i32 100, label %145
    i32 115, label %156
    i32 101, label %165
    i32 79, label %176
    i32 102, label %197
    i32 110, label %194
    i32 118, label %195
  ]

123:                                              ; preds = %109
  %124 = load i8, ptr %122, align 1, !tbaa !11
  %125 = icmp eq i8 %124, 0
  br i1 %125, label %126, label %197

126:                                              ; preds = %123
  %127 = icmp slt i32 %113, 3
  br i1 %127, label %128, label %129

128:                                              ; preds = %126
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

129:                                              ; preds = %126
  %130 = add nsw i32 %113, -1
  %131 = getelementptr inbounds ptr, ptr %120, i64 1
  %132 = getelementptr inbounds ptr, ptr %120, i64 2
  %133 = load ptr, ptr %132, align 8, !tbaa !7
  br label %197

134:                                              ; preds = %109
  %135 = load i8, ptr %122, align 1, !tbaa !11
  %136 = icmp eq i8 %135, 0
  br i1 %136, label %137, label %197

137:                                              ; preds = %134
  %138 = icmp slt i32 %113, 3
  br i1 %138, label %139, label %140

139:                                              ; preds = %137
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

140:                                              ; preds = %137
  %141 = add nsw i32 %113, -1
  %142 = getelementptr inbounds ptr, ptr %120, i64 1
  %143 = getelementptr inbounds ptr, ptr %120, i64 2
  %144 = load ptr, ptr %143, align 8, !tbaa !7
  br label %197

145:                                              ; preds = %109
  %146 = load i8, ptr %122, align 1, !tbaa !11
  %147 = icmp eq i8 %146, 0
  br i1 %147, label %148, label %197

148:                                              ; preds = %145
  %149 = icmp slt i32 %113, 3
  br i1 %149, label %150, label %151

150:                                              ; preds = %148
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

151:                                              ; preds = %148
  %152 = add nsw i32 %113, -1
  %153 = getelementptr inbounds ptr, ptr %120, i64 1
  %154 = getelementptr inbounds ptr, ptr %120, i64 2
  %155 = load ptr, ptr %154, align 8, !tbaa !7
  br label %197

156:                                              ; preds = %109
  %157 = load i8, ptr %122, align 1, !tbaa !11
  %158 = icmp eq i8 %157, 0
  br i1 %158, label %159, label %197

159:                                              ; preds = %156
  %160 = icmp slt i32 %113, 3
  br i1 %160, label %161, label %162

161:                                              ; preds = %159
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

162:                                              ; preds = %159
  %163 = add nsw i32 %113, -1
  %164 = getelementptr inbounds ptr, ptr %120, i64 1
  br label %197

165:                                              ; preds = %109
  %166 = load i8, ptr %122, align 1, !tbaa !11
  %167 = icmp eq i8 %166, 0
  br i1 %167, label %168, label %197

168:                                              ; preds = %165
  %169 = icmp slt i32 %113, 3
  br i1 %169, label %170, label %171

170:                                              ; preds = %168
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

171:                                              ; preds = %168
  %172 = add nsw i32 %113, -1
  %173 = getelementptr inbounds ptr, ptr %120, i64 1
  %174 = getelementptr inbounds ptr, ptr %120, i64 2
  %175 = load ptr, ptr %174, align 8, !tbaa !7
  br label %197

176:                                              ; preds = %109
  %177 = load i8, ptr %122, align 1, !tbaa !11
  %178 = icmp eq i8 %177, 0
  br i1 %178, label %183, label %179

179:                                              ; preds = %176
  %180 = add nsw i32 %111, 1
  %181 = sext i32 %111 to i64
  %182 = getelementptr inbounds ptr, ptr %8, i64 %181
  store ptr %122, ptr %182, align 8, !tbaa !7
  br label %197

183:                                              ; preds = %176
  %184 = icmp slt i32 %113, 3
  br i1 %184, label %185, label %186

185:                                              ; preds = %183
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

186:                                              ; preds = %183
  %187 = add nsw i32 %113, -1
  %188 = getelementptr inbounds ptr, ptr %120, i64 1
  %189 = getelementptr inbounds ptr, ptr %120, i64 2
  %190 = load ptr, ptr %189, align 8, !tbaa !7
  %191 = add nsw i32 %111, 1
  %192 = sext i32 %111 to i64
  %193 = getelementptr inbounds ptr, ptr %8, i64 %192
  store ptr %190, ptr %193, align 8, !tbaa !7
  br label %197

194:                                              ; preds = %109
  br label %197

195:                                              ; preds = %109
  tail call fastcc void @Version() #32
  br label %1502

196:                                              ; preds = %109
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

197:                                              ; preds = %194, %186, %179, %171, %165, %162, %156, %151, %145, %140, %134, %129, %123, %109
  %198 = phi ptr [ %120, %194 ], [ %120, %179 ], [ %188, %186 ], [ %173, %171 ], [ %164, %162 ], [ %153, %151 ], [ %142, %140 ], [ %131, %129 ], [ %120, %123 ], [ %120, %134 ], [ %120, %145 ], [ %120, %156 ], [ %120, %165 ], [ %120, %109 ]
  %199 = phi ptr [ %122, %194 ], [ @.str.1.771, %179 ], [ %122, %186 ], [ %122, %171 ], [ %122, %162 ], [ %122, %151 ], [ %122, %140 ], [ %122, %129 ], [ @.str.1.771, %123 ], [ @.str.1.771, %134 ], [ @.str.1.771, %145 ], [ @.str.1.771, %156 ], [ @.str.1.771, %165 ], [ %122, %109 ]
  %200 = phi ptr [ %118, %194 ], [ %118, %179 ], [ %118, %186 ], [ %118, %171 ], [ %118, %162 ], [ %118, %151 ], [ %118, %140 ], [ %133, %129 ], [ %122, %123 ], [ %118, %134 ], [ %118, %145 ], [ %118, %156 ], [ %118, %165 ], [ %118, %109 ]
  %201 = phi ptr [ %117, %194 ], [ %117, %179 ], [ %117, %186 ], [ %117, %171 ], [ %117, %162 ], [ %117, %151 ], [ %144, %140 ], [ %117, %129 ], [ %117, %123 ], [ %122, %134 ], [ %117, %145 ], [ %117, %156 ], [ %117, %165 ], [ %117, %109 ]
  %202 = phi ptr [ %116, %194 ], [ %116, %179 ], [ %116, %186 ], [ %175, %171 ], [ %116, %162 ], [ %116, %151 ], [ %116, %140 ], [ %116, %129 ], [ %116, %123 ], [ %116, %134 ], [ %116, %145 ], [ %116, %156 ], [ %122, %165 ], [ %116, %109 ]
  %203 = phi ptr [ %115, %194 ], [ %115, %179 ], [ %115, %186 ], [ %115, %171 ], [ %115, %162 ], [ %155, %151 ], [ %115, %140 ], [ %115, %129 ], [ %115, %123 ], [ %115, %134 ], [ %122, %145 ], [ %115, %156 ], [ %115, %165 ], [ %115, %109 ]
  %204 = phi i16 [ %114, %194 ], [ %114, %179 ], [ %114, %186 ], [ %114, %171 ], [ %114, %162 ], [ %114, %151 ], [ %114, %140 ], [ %114, %129 ], [ %114, %123 ], [ %114, %134 ], [ %114, %145 ], [ %114, %156 ], [ %114, %165 ], [ 1, %109 ]
  %205 = phi i32 [ %113, %194 ], [ %113, %179 ], [ %187, %186 ], [ %172, %171 ], [ %163, %162 ], [ %152, %151 ], [ %141, %140 ], [ %130, %129 ], [ %113, %123 ], [ %113, %134 ], [ %113, %145 ], [ %113, %156 ], [ %113, %165 ], [ %113, %109 ]
  %206 = phi i32 [ 0, %194 ], [ %112, %179 ], [ %112, %186 ], [ %112, %171 ], [ %112, %162 ], [ %112, %151 ], [ %112, %140 ], [ %112, %129 ], [ %112, %123 ], [ %112, %134 ], [ %112, %145 ], [ %112, %156 ], [ %112, %165 ], [ %112, %109 ]
  %207 = phi i32 [ %111, %194 ], [ %180, %179 ], [ %191, %186 ], [ %111, %171 ], [ %111, %162 ], [ %111, %151 ], [ %111, %140 ], [ %111, %129 ], [ %111, %123 ], [ %111, %134 ], [ %111, %145 ], [ %111, %156 ], [ %111, %165 ], [ %111, %109 ]
  %208 = load i8, ptr %199, align 1, !tbaa !11
  %209 = icmp eq i8 %208, 0
  br i1 %209, label %210, label %109, !llvm.loop !12

210:                                              ; preds = %197, %97, %94, %87, %77, %67, %60, %50, %40
  %211 = phi ptr [ %23, %87 ], [ %23, %77 ], [ %23, %67 ], [ %23, %60 ], [ %23, %50 ], [ %23, %40 ], [ %22, %94 ], [ %22, %97 ], [ %198, %197 ]
  %212 = phi ptr [ %21, %87 ], [ %21, %77 ], [ %21, %67 ], [ %21, %60 ], [ %21, %50 ], [ %43, %40 ], [ %21, %94 ], [ %21, %97 ], [ %200, %197 ]
  %213 = phi ptr [ %20, %87 ], [ %20, %77 ], [ %20, %67 ], [ %20, %60 ], [ %53, %50 ], [ %20, %40 ], [ %20, %94 ], [ %20, %97 ], [ %201, %197 ]
  %214 = phi ptr [ %19, %87 ], [ %80, %77 ], [ %19, %67 ], [ %19, %60 ], [ %19, %50 ], [ %19, %40 ], [ %19, %94 ], [ %19, %97 ], [ %202, %197 ]
  %215 = phi ptr [ %18, %87 ], [ %18, %77 ], [ %18, %67 ], [ %63, %60 ], [ %18, %50 ], [ %18, %40 ], [ %18, %94 ], [ %18, %97 ], [ %203, %197 ]
  %216 = phi i16 [ %17, %87 ], [ %17, %77 ], [ %17, %67 ], [ %17, %60 ], [ %17, %50 ], [ %17, %40 ], [ 1, %94 ], [ %17, %97 ], [ %204, %197 ]
  %217 = phi i32 [ %88, %87 ], [ %78, %77 ], [ %68, %67 ], [ %61, %60 ], [ %51, %50 ], [ %41, %40 ], [ %16, %94 ], [ %16, %97 ], [ %205, %197 ]
  %218 = phi i32 [ %15, %87 ], [ %15, %77 ], [ %15, %67 ], [ %15, %60 ], [ %15, %50 ], [ %15, %40 ], [ %15, %94 ], [ 0, %97 ], [ %206, %197 ]
  %219 = phi i32 [ %91, %87 ], [ %14, %77 ], [ %14, %67 ], [ %14, %60 ], [ %14, %50 ], [ %14, %40 ], [ %14, %94 ], [ %14, %97 ], [ %207, %197 ]
  %220 = add nsw i32 %217, -1
  %221 = getelementptr inbounds ptr, ptr %211, i64 1
  %222 = icmp sgt i32 %217, 2
  br i1 %222, label %13, label %226, !llvm.loop !14

223:                                              ; preds = %30
  %.lcssa157 = phi i32 [ %14, %30 ]
  %.lcssa140 = phi i32 [ %15, %30 ]
  %.lcssa123 = phi i32 [ %16, %30 ]
  %.lcssa106 = phi i16 [ %17, %30 ]
  %.lcssa89 = phi ptr [ %18, %30 ]
  %.lcssa72 = phi ptr [ %19, %30 ]
  %.lcssa55 = phi ptr [ %20, %30 ]
  %.lcssa38 = phi ptr [ %21, %30 ]
  %.lcssa21 = phi ptr [ %23, %30 ]
  %.lcssa4 = phi ptr [ %24, %30 ]
  %224 = add nsw i32 %.lcssa123, -1
  %225 = icmp ult i32 %.lcssa123, 3
  br i1 %225, label %226, label %227

226:                                              ; preds = %223, %210, %11
  tail call fastcc void @Usage(ptr noundef %5) #32
  br label %1502

227:                                              ; preds = %223, %27, %13
  %.lcssa156 = phi i32 [ %.lcssa157, %223 ], [ %14, %27 ], [ %14, %13 ]
  %.lcssa139 = phi i32 [ %.lcssa140, %223 ], [ %15, %27 ], [ %15, %13 ]
  %.lcssa105 = phi i16 [ %.lcssa106, %223 ], [ %17, %27 ], [ %17, %13 ]
  %.lcssa88 = phi ptr [ %.lcssa89, %223 ], [ %18, %27 ], [ %18, %13 ]
  %.lcssa71 = phi ptr [ %.lcssa72, %223 ], [ %19, %27 ], [ %19, %13 ]
  %.lcssa54 = phi ptr [ %.lcssa55, %223 ], [ %20, %27 ], [ %20, %13 ]
  %.lcssa37 = phi ptr [ %.lcssa38, %223 ], [ %21, %27 ], [ %21, %13 ]
  %228 = phi i32 [ %224, %223 ], [ %16, %13 ], [ %16, %27 ]
  %229 = phi ptr [ %.lcssa21, %223 ], [ %22, %13 ], [ %22, %27 ]
  %230 = icmp eq ptr %.lcssa37, null
  br i1 %230, label %231, label %239

231:                                              ; preds = %227
  %232 = load i8, ptr %.lcssa71, align 1, !tbaa !11
  %233 = icmp eq i8 %232, 46
  %234 = zext i1 %233 to i64
  %235 = getelementptr inbounds i8, ptr %.lcssa71, i64 %234
  %236 = getelementptr inbounds ptr, ptr %229, i64 1
  %237 = load ptr, ptr %236, align 8, !tbaa !7
  %238 = tail call fastcc ptr @GetDefault(ptr noundef %237, ptr noundef nonnull %235) #32
  br label %239

239:                                              ; preds = %231, %227
  %240 = phi ptr [ %.lcssa37, %227 ], [ %238, %231 ]
  %241 = icmp eq ptr %.lcssa54, null
  br i1 %241, label %242, label %244

242:                                              ; preds = %239
  %243 = tail call fastcc ptr @GetDefault(ptr noundef %240, ptr noundef nonnull @.str.12.714) #32
  br label %244

244:                                              ; preds = %242, %239
  %245 = phi ptr [ %.lcssa54, %239 ], [ %243, %242 ]
  store i32 1, ptr %4, align 8, !tbaa !15
  %246 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 1
  store ptr null, ptr %246, align 8, !tbaa !19
  %247 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 2
  store ptr %5, ptr %247, align 8, !tbaa !20
  %248 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 3
  %249 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 4
  %250 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %248, i8 0, i64 16, i1 false)
  store i64 1, ptr %250, align 8, !tbaa !21
  %251 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 6
  store i64 1, ptr %251, align 8, !tbaa !22
  %252 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 7
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %252, align 8, !tbaa !23
  %253 = icmp eq ptr %.lcssa88, null
  br i1 %253, label %254, label %284

254:                                              ; preds = %244
  %255 = getelementptr inbounds ptr, ptr %229, i64 1
  %256 = load ptr, ptr %255, align 8, !tbaa !7
  %257 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %256) #31
  %258 = trunc i64 %257 to i32
  %259 = and i64 %257, 4294967295
  %260 = tail call i32 @llvm.smin.i32(i32 %258, i32 0)
  br label %261

261:                                              ; preds = %265, %254
  %262 = phi i64 [ %266, %265 ], [ %259, %254 ]
  %263 = trunc i64 %262 to i32
  %264 = icmp sgt i32 %263, 0
  br i1 %264, label %265, label %269

265:                                              ; preds = %261
  %266 = add nsw i64 %262, -1
  %267 = getelementptr inbounds i8, ptr %256, i64 %266
  %268 = load i8, ptr %267, align 1, !tbaa !11
  switch i8 %268, label %261 [
    i8 47, label %269
    i8 92, label %269
  ], !llvm.loop !24

269:                                              ; preds = %265, %265, %261
  %.lcssa2 = phi i1 [ %264, %265 ], [ %264, %265 ], [ %264, %261 ]
  %270 = phi i32 [ %263, %265 ], [ %263, %265 ], [ %260, %261 ]
  %271 = sext i1 %.lcssa2 to i32
  %272 = add nsw i32 %270, %271
  %273 = icmp sgt i32 %272, 0
  br i1 %273, label %274, label %284

274:                                              ; preds = %269
  %275 = add nuw nsw i32 %272, 1
  %276 = zext i32 %275 to i64
  %277 = tail call noalias ptr @malloc(i64 noundef %276) #29
  %278 = icmp eq ptr %277, null
  br i1 %278, label %279, label %280

279:                                              ; preds = %274
  call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %4) #30
  unreachable

280:                                              ; preds = %274
  %281 = zext i32 %272 to i64
  %282 = tail call ptr @strncpy(ptr noundef nonnull %277, ptr noundef %256, i64 noundef %281) #30
  %283 = getelementptr inbounds i8, ptr %277, i64 %281
  store i8 0, ptr %283, align 1, !tbaa !11
  br label %284

284:                                              ; preds = %280, %269, %244
  %285 = phi ptr [ %.lcssa88, %244 ], [ %277, %280 ], [ null, %269 ]
  %286 = tail call noalias dereferenceable_or_null(8304) ptr @calloc(i64 noundef 1, i64 noundef 8304) #33
  %287 = icmp eq ptr %286, null
  br i1 %287, label %288, label %289

288:                                              ; preds = %284
  call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %4) #30
  unreachable

289:                                              ; preds = %284
  %290 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 2
  store ptr %4, ptr %290, align 8, !tbaa !25
  %291 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 8
  %292 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 9
  store ptr @.str, ptr %292, align 8, !tbaa !27
  %293 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 10
  store ptr @.str.1.902, ptr %293, align 8, !tbaa !28
  %294 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 12
  store i32 1, ptr %294, align 8, !tbaa !29
  %295 = shl nuw nsw i16 %.lcssa105, 4
  %296 = and i16 %295, 16
  %297 = or i16 %296, 2562
  store i16 %297, ptr %291, align 8
  %298 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 15
  store ptr %285, ptr %298, align 8, !tbaa !30
  br label %299

299:                                              ; preds = %314, %289
  %300 = phi ptr [ %8, %289 ], [ %305, %314 ]
  %301 = phi i32 [ %.lcssa156, %289 ], [ %302, %314 ]
  %302 = add nsw i32 %301, -1
  %303 = icmp sgt i32 %301, 0
  br i1 %303, label %304, label %321

304:                                              ; preds = %299
  %305 = getelementptr inbounds ptr, ptr %300, i64 1
  %306 = load ptr, ptr %300, align 8, !tbaa !7
  br label %307

307:                                              ; preds = %310, %304
  %308 = phi ptr [ %306, %304 ], [ %311, %310 ]
  %309 = load i8, ptr %308, align 1, !tbaa !11
  switch i8 %309, label %310 [
    i8 0, label %314
    i8 61, label %312
  ]

310:                                              ; preds = %307
  %311 = getelementptr inbounds i8, ptr %308, i64 1
  br label %307, !llvm.loop !31

312:                                              ; preds = %307
  %.lcssa1 = phi ptr [ %308, %307 ]
  %313 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  store i8 0, ptr %.lcssa1, align 1, !tbaa !11
  br label %314

314:                                              ; preds = %312, %307
  %315 = phi ptr [ %313, %312 ], [ null, %307 ]
  %316 = call fastcc i32 @TreeCCOptionProcess(ptr noundef %286, ptr noundef %306, ptr noundef %315) #30
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %299, label %318, !llvm.loop !32

318:                                              ; preds = %314
  %.lcssa = phi ptr [ %306, %314 ]
  %319 = load ptr, ptr @stderr, align 8, !tbaa !7
  %320 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %319, ptr noundef nonnull @.str.40.715, ptr noundef %.lcssa) #34
  br label %1502

321:                                              ; preds = %299
  call void @free(ptr noundef %8) #30
  %322 = call fastcc ptr @TreeCCStreamCreate(ptr noundef %286, ptr noundef %240, ptr noundef null, i32 noundef 0) #30
  %323 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 5
  store ptr %322, ptr %323, align 8, !tbaa !33
  %324 = getelementptr inbounds %struct._tagTreeCCStream, ptr %322, i64 0, i32 7
  %325 = load i8, ptr %324, align 4
  %326 = or i8 %325, 8
  store i8 %326, ptr %324, align 4
  %327 = call fastcc ptr @TreeCCStreamCreate(ptr noundef %286, ptr noundef %245, ptr noundef null, i32 noundef 1) #30
  %328 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 4
  store ptr %327, ptr %328, align 8, !tbaa !34
  %329 = getelementptr inbounds %struct._tagTreeCCStream, ptr %327, i64 0, i32 7
  %330 = load i8, ptr %329, align 4
  %331 = or i8 %330, 8
  store i8 %331, ptr %329, align 4
  %332 = icmp sgt i32 %228, 1
  br i1 %332, label %333, label %362

333:                                              ; preds = %321
  %334 = getelementptr inbounds %struct.TreeCCInput, ptr %4, i64 0, i32 11
  br label %335

335:                                              ; preds = %358, %333
  %336 = phi i32 [ %359, %358 ], [ 0, %333 ]
  %337 = phi i32 [ %360, %358 ], [ %228, %333 ]
  %338 = phi ptr [ %339, %358 ], [ %229, %333 ]
  %339 = getelementptr inbounds ptr, ptr %338, i64 1
  %340 = load ptr, ptr %339, align 8, !tbaa !7
  %341 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %340, ptr noundef nonnull dereferenceable(2) @.str.13.716) #31
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %335
  %344 = icmp eq i32 %336, 0
  br i1 %344, label %345, label %358

345:                                              ; preds = %343
  %346 = load ptr, ptr @stdin, align 8, !tbaa !7
  store i32 1, ptr %4, align 8, !tbaa !15
  store ptr null, ptr %246, align 8, !tbaa !19
  store ptr %5, ptr %247, align 8, !tbaa !20
  store ptr %346, ptr %248, align 8, !tbaa !35
  store ptr @.str.14.717, ptr %249, align 8, !tbaa !36
  store i64 1, ptr %250, align 8, !tbaa !21
  store i64 1, ptr %251, align 8, !tbaa !22
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %252, align 8, !tbaa !23
  call fastcc void @TreeCCParse(ptr noundef %286) #30
  %347 = load ptr, ptr %246, align 8, !tbaa !19
  %348 = icmp eq ptr %347, null
  %349 = icmp eq ptr %347, %334
  %350 = select i1 %348, i1 true, i1 %349
  br i1 %350, label %358, label %351

351:                                              ; preds = %345
  call void @free(ptr noundef nonnull %347) #30
  br label %358

352:                                              ; preds = %335
  %353 = call noalias ptr @fopen(ptr noundef %340, ptr noundef nonnull @.str.1.928) #32
  %354 = icmp eq ptr %353, null
  %355 = load ptr, ptr %339, align 8, !tbaa !7
  br i1 %354, label %356, label %357

356:                                              ; preds = %352
  call void @perror(ptr noundef %355) #34
  store i32 1, ptr %252, align 8, !tbaa !37
  br label %358

357:                                              ; preds = %352
  store i32 1, ptr %4, align 8, !tbaa !15
  store ptr null, ptr %246, align 8, !tbaa !19
  store ptr %5, ptr %247, align 8, !tbaa !20
  store ptr %353, ptr %248, align 8, !tbaa !35
  store ptr %355, ptr %249, align 8, !tbaa !36
  store i64 1, ptr %250, align 8, !tbaa !21
  store i64 1, ptr %251, align 8, !tbaa !22
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %252, align 8, !tbaa !23
  call fastcc void @TreeCCParse(ptr noundef %286) #30
  call fastcc void @TreeCCClose(ptr noundef nonnull %4, i32 noundef 1) #30
  br label %358

358:                                              ; preds = %357, %356, %351, %345, %343
  %359 = phi i32 [ %336, %356 ], [ %336, %357 ], [ 1, %343 ], [ 1, %345 ], [ 1, %351 ]
  %360 = add nsw i32 %337, -1
  %361 = icmp sgt i32 %337, 2
  br i1 %361, label %335, label %362, !llvm.loop !38

362:                                              ; preds = %358, %321
  %363 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 13
  %364 = load i32, ptr %363, align 4, !tbaa !39
  %365 = icmp ult i32 %364, 2
  br label %366

366:                                              ; preds = %446, %362
  %367 = phi i64 [ 0, %362 ], [ %447, %446 ]
  %368 = getelementptr inbounds [512 x ptr], ptr %286, i64 0, i64 %367
  %369 = load ptr, ptr %368, align 8, !tbaa !7
  %370 = icmp eq ptr %369, null
  br i1 %370, label %446, label %371

371:                                              ; preds = %442, %366
  %372 = phi ptr [ %444, %442 ], [ %369, %366 ]
  %373 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 5
  %374 = load i32, ptr %373, align 8, !tbaa !40
  %375 = and i32 %374, 1
  %376 = icmp eq i32 %375, 0
  br i1 %376, label %385, label %377

377:                                              ; preds = %371
  %378 = load ptr, ptr %290, align 8, !tbaa !25
  %379 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 8
  %380 = load ptr, ptr %379, align 8, !tbaa !42
  %381 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 9
  %382 = load i64, ptr %381, align 8, !tbaa !43
  %383 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 4
  %384 = load ptr, ptr %383, align 8, !tbaa !44
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %378, ptr noundef %380, i64 noundef %382, ptr noundef nonnull @.str.11.843, ptr noundef %384) #30
  br label %385

385:                                              ; preds = %377, %371
  %386 = load ptr, ptr %372, align 8, !tbaa !45
  %387 = icmp eq ptr %386, null
  br i1 %387, label %388, label %400

388:                                              ; preds = %385
  %389 = load i32, ptr %373, align 8, !tbaa !40
  %390 = and i32 %389, 5
  %391 = icmp eq i32 %390, 0
  br i1 %391, label %392, label %400

392:                                              ; preds = %388
  %393 = load ptr, ptr %290, align 8, !tbaa !25
  %394 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 8
  %395 = load ptr, ptr %394, align 8, !tbaa !42
  %396 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 9
  %397 = load i64, ptr %396, align 8, !tbaa !43
  %398 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 4
  %399 = load ptr, ptr %398, align 8, !tbaa !44
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %393, ptr noundef %395, i64 noundef %397, ptr noundef nonnull @.str.5.752, ptr noundef %399) #30
  br label %400

400:                                              ; preds = %392, %388, %385
  br i1 %365, label %401, label %442

401:                                              ; preds = %400
  %402 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 10
  %403 = load ptr, ptr %402, align 8, !tbaa !7
  %404 = icmp eq ptr %403, null
  br i1 %404, label %442, label %405

405:                                              ; preds = %438, %401
  %406 = phi ptr [ %440, %438 ], [ %403, %401 ]
  %407 = getelementptr inbounds %struct._tagTreeCCField, ptr %406, i64 0, i32 1
  %408 = load ptr, ptr %407, align 8, !tbaa !46
  %409 = call fastcc ptr @TreeCCNodeFindByType(ptr noundef %286, ptr noundef %408) #32
  %410 = icmp eq ptr %409, null
  br i1 %410, label %438, label %411

411:                                              ; preds = %405
  %412 = getelementptr inbounds %struct._tagTreeCCNode, ptr %409, i64 0, i32 5
  %413 = load i32, ptr %412, align 8, !tbaa !40
  %414 = and i32 %413, 8
  %415 = icmp eq i32 %414, 0
  br i1 %415, label %416, label %438

416:                                              ; preds = %411
  %417 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %408) #31
  %418 = trunc i64 %417 to i32
  %419 = icmp slt i32 %418, 2
  br i1 %419, label %432, label %420

420:                                              ; preds = %416
  %421 = add i64 %417, 4294967295
  %422 = and i64 %421, 4294967295
  %423 = getelementptr inbounds i8, ptr %408, i64 %422
  %424 = load i8, ptr %423, align 1, !tbaa !11
  %425 = icmp eq i8 %424, 42
  br i1 %425, label %426, label %432

426:                                              ; preds = %420
  %427 = add i64 %417, 4294967294
  %428 = and i64 %427, 4294967295
  %429 = getelementptr inbounds i8, ptr %408, i64 %428
  %430 = load i8, ptr %429, align 1, !tbaa !11
  %431 = icmp eq i8 %430, 32
  br i1 %431, label %438, label %432

432:                                              ; preds = %426, %420, %416
  %433 = load ptr, ptr %290, align 8, !tbaa !25
  %434 = getelementptr inbounds %struct._tagTreeCCField, ptr %406, i64 0, i32 4
  %435 = load ptr, ptr %434, align 8, !tbaa !48
  %436 = getelementptr inbounds %struct._tagTreeCCField, ptr %406, i64 0, i32 5
  %437 = load i64, ptr %436, align 8, !tbaa !49
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %433, ptr noundef %435, i64 noundef %437, ptr noundef nonnull @.str.6.753) #30
  br label %438

438:                                              ; preds = %432, %426, %411, %405
  %439 = getelementptr inbounds %struct._tagTreeCCField, ptr %406, i64 0, i32 6
  %440 = load ptr, ptr %439, align 8, !tbaa !7
  %441 = icmp eq ptr %440, null
  br i1 %441, label %442, label %405, !llvm.loop !50

442:                                              ; preds = %438, %401, %400
  %443 = getelementptr inbounds %struct._tagTreeCCNode, ptr %372, i64 0, i32 12
  %444 = load ptr, ptr %443, align 8, !tbaa !7
  %445 = icmp eq ptr %444, null
  br i1 %445, label %446, label %371, !llvm.loop !51

446:                                              ; preds = %442, %366
  %447 = add nuw nsw i64 %367, 1
  %448 = icmp eq i64 %447, 512
  br i1 %448, label %449, label %366, !llvm.loop !52

449:                                              ; preds = %730, %446
  %450 = phi i64 [ %731, %730 ], [ 0, %446 ]
  %451 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 1, i64 %450
  %452 = load ptr, ptr %451, align 8, !tbaa !7
  %453 = icmp eq ptr %452, null
  br i1 %453, label %730, label %454

454:                                              ; preds = %726, %449
  %455 = phi ptr [ %728, %726 ], [ %452, %449 ]
  %456 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 5
  %457 = load i32, ptr %456, align 8, !tbaa !53
  %458 = and i32 %457, 1
  %459 = icmp eq i32 %458, 0
  br i1 %459, label %460, label %526

460:                                              ; preds = %454
  %461 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 13
  %462 = load i32, ptr %461, align 8, !tbaa !55
  %463 = icmp slt i32 %462, 2
  br i1 %463, label %526, label %464

464:                                              ; preds = %460
  %465 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 6
  %466 = load i32, ptr %465, align 4, !tbaa !56
  %467 = icmp eq i32 %466, 0
  br i1 %467, label %526, label %468

468:                                              ; preds = %481, %464
  %469 = phi i64 [ %482, %481 ], [ 0, %464 ]
  %470 = getelementptr inbounds [512 x ptr], ptr %286, i64 0, i64 %469
  %471 = load ptr, ptr %470, align 8, !tbaa !7
  %472 = icmp eq ptr %471, null
  br i1 %472, label %481, label %473

473:                                              ; preds = %473, %468
  %474 = phi ptr [ %479, %473 ], [ %471, %468 ]
  %475 = getelementptr inbounds %struct._tagTreeCCNode, ptr %474, i64 0, i32 5
  %476 = load i32, ptr %475, align 8, !tbaa !40
  %477 = and i32 %476, -65281
  store i32 %477, ptr %475, align 8, !tbaa !40
  %478 = getelementptr inbounds %struct._tagTreeCCNode, ptr %474, i64 0, i32 12
  %479 = load ptr, ptr %478, align 8, !tbaa !7
  %480 = icmp eq ptr %479, null
  br i1 %480, label %481, label %473, !llvm.loop !57

481:                                              ; preds = %473, %468
  %482 = add nuw nsw i64 %469, 1
  %483 = icmp eq i64 %482, 512
  br i1 %483, label %484, label %468, !llvm.loop !58

484:                                              ; preds = %481
  %485 = sext i32 %462 to i64
  %486 = shl nsw i64 %485, 3
  %487 = call noalias ptr @malloc(i64 noundef %486) #29
  %488 = icmp eq ptr %487, null
  br i1 %488, label %489, label %491

489:                                              ; preds = %484
  %490 = load ptr, ptr %290, align 8, !tbaa !25
  call fastcc void @TreeCCOutOfMemory(ptr noundef %490) #30
  unreachable

491:                                              ; preds = %484
  %492 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 10
  %493 = load ptr, ptr %492, align 8, !tbaa !7
  %494 = icmp eq ptr %493, null
  br i1 %494, label %503, label %495

495:                                              ; preds = %495, %491
  %496 = phi i64 [ %498, %495 ], [ 0, %491 ]
  %497 = phi ptr [ %501, %495 ], [ %493, %491 ]
  %498 = add nuw i64 %496, 1
  %499 = getelementptr inbounds ptr, ptr %487, i64 %496
  store ptr %497, ptr %499, align 8, !tbaa !7
  %500 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %497, i64 0, i32 8
  %501 = load ptr, ptr %500, align 8, !tbaa !7
  %502 = icmp eq ptr %501, null
  br i1 %502, label %503, label %495, !llvm.loop !59

503:                                              ; preds = %495, %491
  call void @qsort(ptr noundef nonnull %487, i64 noundef %485, i64 noundef 8, ptr noundef nonnull @CaseCompare) #30
  %504 = load ptr, ptr %487, align 8, !tbaa !7
  store ptr %504, ptr %492, align 8, !tbaa !60
  %505 = load i32, ptr %461, align 8, !tbaa !55
  %506 = icmp sgt i32 %505, 1
  br i1 %506, label %507, label %519

507:                                              ; preds = %503
  %508 = zext i32 %505 to i64
  br label %509

509:                                              ; preds = %509, %507
  %510 = phi i64 [ 1, %507 ], [ %517, %509 ]
  %511 = getelementptr inbounds ptr, ptr %487, i64 %510
  %512 = load ptr, ptr %511, align 8, !tbaa !7
  %513 = add nsw i64 %510, -1
  %514 = getelementptr inbounds ptr, ptr %487, i64 %513
  %515 = load ptr, ptr %514, align 8, !tbaa !7
  %516 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %515, i64 0, i32 8
  store ptr %512, ptr %516, align 8, !tbaa !61
  %517 = add nuw nsw i64 %510, 1
  %518 = icmp eq i64 %517, %508
  br i1 %518, label %519, label %509, !llvm.loop !63

519:                                              ; preds = %509, %503
  %520 = add nsw i32 %505, -1
  %521 = sext i32 %520 to i64
  %522 = getelementptr inbounds ptr, ptr %487, i64 %521
  %523 = load ptr, ptr %522, align 8, !tbaa !7
  %524 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 11
  store ptr %523, ptr %524, align 8, !tbaa !64
  %525 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %523, i64 0, i32 8
  store ptr null, ptr %525, align 8, !tbaa !61
  call void @free(ptr noundef nonnull %487) #30
  br label %526

526:                                              ; preds = %519, %464, %460, %454
  br label %527

527:                                              ; preds = %540, %526
  %528 = phi i64 [ %541, %540 ], [ 0, %526 ]
  %529 = getelementptr inbounds [512 x ptr], ptr %286, i64 0, i64 %528
  %530 = load ptr, ptr %529, align 8, !tbaa !7
  %531 = icmp eq ptr %530, null
  br i1 %531, label %540, label %532

532:                                              ; preds = %532, %527
  %533 = phi ptr [ %538, %532 ], [ %530, %527 ]
  %534 = getelementptr inbounds %struct._tagTreeCCNode, ptr %533, i64 0, i32 5
  %535 = load i32, ptr %534, align 8, !tbaa !40
  %536 = and i32 %535, -65281
  store i32 %536, ptr %534, align 8, !tbaa !40
  %537 = getelementptr inbounds %struct._tagTreeCCNode, ptr %533, i64 0, i32 12
  %538 = load ptr, ptr %537, align 8, !tbaa !7
  %539 = icmp eq ptr %538, null
  br i1 %539, label %540, label %532, !llvm.loop !57

540:                                              ; preds = %532, %527
  %541 = add nuw nsw i64 %528, 1
  %542 = icmp eq i64 %541, 512
  br i1 %542, label %543, label %527, !llvm.loop !58

543:                                              ; preds = %540
  %544 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 10
  %545 = load ptr, ptr %544, align 8, !tbaa !60
  %546 = icmp eq ptr %545, null
  br i1 %546, label %547, label %554

547:                                              ; preds = %543
  %548 = load ptr, ptr %290, align 8, !tbaa !25
  %549 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 7
  %550 = load ptr, ptr %549, align 8, !tbaa !65
  %551 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 8
  %552 = load i64, ptr %551, align 8, !tbaa !66
  %553 = load ptr, ptr %455, align 8, !tbaa !67
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %548, ptr noundef %550, i64 noundef %552, ptr noundef nonnull @.str.7.780, ptr noundef %553) #30
  br label %554

554:                                              ; preds = %547, %543
  %555 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 6
  %556 = load i32, ptr %555, align 4, !tbaa !56
  switch i32 %556, label %630 [
    i32 1, label %557
    i32 0, label %605
  ]

557:                                              ; preds = %554
  %558 = load ptr, ptr %544, align 8, !tbaa !7
  %559 = icmp eq ptr %558, null
  br i1 %559, label %585, label %560

560:                                              ; preds = %581, %557
  %561 = phi ptr [ %583, %581 ], [ %558, %557 ]
  %562 = load ptr, ptr %561, align 8, !tbaa !68
  %563 = icmp eq ptr %562, null
  br i1 %563, label %581, label %564

564:                                              ; preds = %560
  %565 = load ptr, ptr %562, align 8, !tbaa !69
  %566 = getelementptr inbounds %struct._tagTreeCCNode, ptr %565, i64 0, i32 5
  %567 = load i32, ptr %566, align 8, !tbaa !40
  %568 = and i32 %567, 256
  %569 = icmp eq i32 %568, 0
  br i1 %569, label %579, label %570

570:                                              ; preds = %564
  %571 = load ptr, ptr %290, align 8, !tbaa !25
  %572 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %561, i64 0, i32 4
  %573 = load ptr, ptr %572, align 8, !tbaa !71
  %574 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %561, i64 0, i32 5
  %575 = load i64, ptr %574, align 8, !tbaa !72
  %576 = getelementptr inbounds %struct._tagTreeCCNode, ptr %565, i64 0, i32 4
  %577 = load ptr, ptr %576, align 8, !tbaa !44
  %578 = load ptr, ptr %455, align 8, !tbaa !67
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %571, ptr noundef %573, i64 noundef %575, ptr noundef nonnull @.str.8.781, ptr noundef %577, ptr noundef %578) #30
  br label %581

579:                                              ; preds = %564
  %580 = or i32 %567, 256
  store i32 %580, ptr %566, align 8, !tbaa !40
  br label %581

581:                                              ; preds = %579, %570, %560
  %582 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %561, i64 0, i32 8
  %583 = load ptr, ptr %582, align 8, !tbaa !7
  %584 = icmp eq ptr %583, null
  br i1 %584, label %585, label %560, !llvm.loop !73

585:                                              ; preds = %581, %557
  %586 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 4
  %587 = load ptr, ptr %586, align 8, !tbaa !7
  %588 = icmp eq ptr %587, null
  br i1 %588, label %726, label %589

589:                                              ; preds = %601, %585
  %590 = phi ptr [ %603, %601 ], [ %587, %585 ]
  %591 = getelementptr inbounds %struct._tagTreeCCParam, ptr %590, i64 0, i32 2
  %592 = load i32, ptr %591, align 8, !tbaa !74
  %593 = and i32 %592, 1
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %601, label %595

595:                                              ; preds = %589
  %596 = getelementptr inbounds %struct._tagTreeCCParam, ptr %590, i64 0, i32 1
  %597 = load ptr, ptr %596, align 8, !tbaa !76
  %598 = call fastcc ptr @TreeCCNodeFindByType(ptr noundef %286, ptr noundef %597) #30
  %599 = icmp eq ptr %598, null
  br i1 %599, label %601, label %600

600:                                              ; preds = %595
  call fastcc void @VerifyHierarchy(ptr noundef %286, ptr noundef nonnull %455, ptr noundef nonnull %598) #32
  br label %601

601:                                              ; preds = %600, %595, %589
  %602 = getelementptr inbounds %struct._tagTreeCCParam, ptr %590, i64 0, i32 4
  %603 = load ptr, ptr %602, align 8, !tbaa !7
  %604 = icmp eq ptr %603, null
  br i1 %604, label %726, label %589, !llvm.loop !77

605:                                              ; preds = %554
  %606 = load ptr, ptr %544, align 8, !tbaa !60
  %607 = icmp eq ptr %606, null
  br i1 %607, label %726, label %608

608:                                              ; preds = %605
  %609 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %606, i64 0, i32 8
  %610 = load ptr, ptr %609, align 8, !tbaa !61
  %611 = icmp eq ptr %610, null
  br i1 %611, label %726, label %612

612:                                              ; preds = %612, %608
  %613 = phi ptr [ %621, %612 ], [ %610, %608 ]
  %614 = load ptr, ptr %290, align 8, !tbaa !25
  %615 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %613, i64 0, i32 4
  %616 = load ptr, ptr %615, align 8, !tbaa !71
  %617 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %613, i64 0, i32 5
  %618 = load i64, ptr %617, align 8, !tbaa !72
  %619 = load ptr, ptr %455, align 8, !tbaa !67
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %614, ptr noundef %616, i64 noundef %618, ptr noundef nonnull @.str.9.782, ptr noundef %619) #30
  %620 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %613, i64 0, i32 8
  %621 = load ptr, ptr %620, align 8, !tbaa !61
  %622 = icmp eq ptr %621, null
  br i1 %622, label %623, label %612, !llvm.loop !78

623:                                              ; preds = %612
  %624 = load ptr, ptr %290, align 8, !tbaa !25
  %625 = load ptr, ptr %544, align 8, !tbaa !60
  %626 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %625, i64 0, i32 4
  %627 = load ptr, ptr %626, align 8, !tbaa !71
  %628 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %625, i64 0, i32 5
  %629 = load i64, ptr %628, align 8, !tbaa !72
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %624, ptr noundef %627, i64 noundef %629, ptr noundef nonnull @.str.10.783) #30
  br label %726

630:                                              ; preds = %554
  %631 = load ptr, ptr %544, align 8, !tbaa !60
  %632 = icmp eq ptr %631, null
  br i1 %632, label %726, label %633

633:                                              ; preds = %630
  %634 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 4
  %635 = load ptr, ptr %634, align 8, !tbaa !7
  %636 = icmp eq ptr %635, null
  br i1 %636, label %697, label %637

637:                                              ; preds = %692, %633
  %638 = phi ptr [ %695, %692 ], [ %635, %633 ]
  %639 = phi i32 [ %693, %692 ], [ 1, %633 ]
  %640 = getelementptr inbounds %struct._tagTreeCCParam, ptr %638, i64 0, i32 2
  %641 = load i32, ptr %640, align 8, !tbaa !74
  %642 = and i32 %641, 1
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %692, label %644

644:                                              ; preds = %637
  %645 = getelementptr inbounds %struct._tagTreeCCParam, ptr %638, i64 0, i32 1
  %646 = load ptr, ptr %645, align 8, !tbaa !76
  %647 = call fastcc ptr @TreeCCNodeFindByType(ptr noundef %286, ptr noundef %646) #30
  %648 = icmp eq ptr %647, null
  br i1 %648, label %692, label %649

649:                                              ; preds = %644
  %650 = call fastcc i32 @AssignPositions(ptr noundef nonnull %647, i32 noundef 0) #32
  %651 = getelementptr inbounds %struct._tagTreeCCParam, ptr %638, i64 0, i32 3
  store i32 %650, ptr %651, align 4, !tbaa !79
  %652 = mul nsw i32 %650, %639
  %653 = load ptr, ptr %634, align 8, !tbaa !7
  %654 = icmp eq ptr %653, null
  br i1 %654, label %692, label %655

655:                                              ; preds = %688, %649
  %656 = phi ptr [ %690, %688 ], [ %653, %649 ]
  %657 = getelementptr inbounds %struct._tagTreeCCParam, ptr %656, i64 0, i32 2
  %658 = load i32, ptr %657, align 8, !tbaa !74
  %659 = and i32 %658, 1
  %660 = icmp eq i32 %659, 0
  %661 = icmp eq ptr %656, %638
  %662 = or i1 %661, %660
  br i1 %662, label %688, label %663

663:                                              ; preds = %655
  %664 = getelementptr inbounds %struct._tagTreeCCParam, ptr %656, i64 0, i32 1
  %665 = load ptr, ptr %664, align 8, !tbaa !76
  %666 = call fastcc ptr @TreeCCNodeFindByType(ptr noundef %286, ptr noundef %665) #30
  %667 = icmp eq ptr %666, null
  %668 = icmp eq ptr %666, %647
  %669 = or i1 %667, %668
  br i1 %669, label %688, label %670

670:                                              ; preds = %673, %663
  %671 = phi ptr [ %674, %673 ], [ %647, %663 ]
  %672 = icmp eq ptr %671, %666
  br i1 %672, label %682, label %673

673:                                              ; preds = %670
  %674 = load ptr, ptr %671, align 8, !tbaa !45
  %675 = icmp eq ptr %674, null
  br i1 %675, label %676, label %670, !llvm.loop !80

676:                                              ; preds = %679, %673
  %677 = phi ptr [ %680, %679 ], [ %666, %673 ]
  %678 = icmp eq ptr %677, %647
  br i1 %678, label %682, label %679

679:                                              ; preds = %676
  %680 = load ptr, ptr %677, align 8, !tbaa !45
  %681 = icmp eq ptr %680, null
  br i1 %681, label %688, label %676, !llvm.loop !80

682:                                              ; preds = %676, %670
  %683 = load ptr, ptr %290, align 8, !tbaa !25
  %684 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 7
  %685 = load ptr, ptr %684, align 8, !tbaa !65
  %686 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 8
  %687 = load i64, ptr %686, align 8, !tbaa !66
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %683, ptr noundef %685, i64 noundef %687, ptr noundef nonnull @.str.12.784) #30
  br label %726

688:                                              ; preds = %679, %663, %655
  %689 = getelementptr inbounds %struct._tagTreeCCParam, ptr %656, i64 0, i32 4
  %690 = load ptr, ptr %689, align 8, !tbaa !7
  %691 = icmp eq ptr %690, null
  br i1 %691, label %692, label %655, !llvm.loop !81

692:                                              ; preds = %688, %649, %644, %637
  %693 = phi i32 [ %639, %644 ], [ %639, %637 ], [ %652, %649 ], [ %652, %688 ]
  %694 = getelementptr inbounds %struct._tagTreeCCParam, ptr %638, i64 0, i32 4
  %695 = load ptr, ptr %694, align 8, !tbaa !7
  %696 = icmp eq ptr %695, null
  br i1 %696, label %697, label %637, !llvm.loop !82

697:                                              ; preds = %692, %633
  %698 = phi i32 [ 1, %633 ], [ %693, %692 ]
  %699 = sext i32 %698 to i64
  %700 = call noalias ptr @calloc(i64 noundef %699, i64 noundef 8) #33
  %701 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 12
  store ptr %700, ptr %701, align 8, !tbaa !83
  %702 = icmp eq ptr %700, null
  br i1 %702, label %703, label %705

703:                                              ; preds = %697
  %704 = load ptr, ptr %290, align 8, !tbaa !25
  call fastcc void @TreeCCOutOfMemory(ptr noundef %704) #30
  unreachable

705:                                              ; preds = %697
  %706 = load ptr, ptr %544, align 8, !tbaa !7
  %707 = icmp eq ptr %706, null
  br i1 %707, label %716, label %708

708:                                              ; preds = %708, %705
  %709 = phi ptr [ %714, %708 ], [ %706, %705 ]
  %710 = load ptr, ptr %701, align 8, !tbaa !83
  %711 = load ptr, ptr %634, align 8, !tbaa !84
  %712 = load ptr, ptr %709, align 8, !tbaa !68
  call fastcc void @MarkMultiCase(ptr noundef %710, i32 noundef 0, i32 noundef 1, ptr noundef %711, ptr noundef nonnull %709, ptr noundef %712) #32
  %713 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %709, i64 0, i32 8
  %714 = load ptr, ptr %713, align 8, !tbaa !7
  %715 = icmp eq ptr %714, null
  br i1 %715, label %716, label %708, !llvm.loop !85

716:                                              ; preds = %708, %705
  %717 = load i32, ptr %555, align 4, !tbaa !56
  %718 = sext i32 %717 to i64
  %719 = call noalias ptr @calloc(i64 noundef %718, i64 noundef 8) #33
  %720 = icmp eq ptr %719, null
  br i1 %720, label %721, label %723

721:                                              ; preds = %716
  %722 = load ptr, ptr %290, align 8, !tbaa !25
  call fastcc void @TreeCCOutOfMemory(ptr noundef %722) #30
  unreachable

723:                                              ; preds = %716
  %724 = load ptr, ptr %701, align 8, !tbaa !83
  %725 = load ptr, ptr %634, align 8, !tbaa !84
  call fastcc void @VerifyMultiCoverage(ptr noundef %286, ptr noundef nonnull %455, ptr noundef %724, i32 noundef 0, i32 noundef 1, ptr noundef %725, ptr noundef nonnull %719, ptr noundef nonnull %719) #32
  call void @free(ptr noundef nonnull %719) #30
  br label %726

726:                                              ; preds = %723, %682, %630, %623, %608, %605, %601, %585
  %727 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %455, i64 0, i32 9
  %728 = load ptr, ptr %727, align 8, !tbaa !7
  %729 = icmp eq ptr %728, null
  br i1 %729, label %730, label %454, !llvm.loop !86

730:                                              ; preds = %726, %449
  %731 = add nuw nsw i64 %450, 1
  %732 = icmp eq i64 %731, 512
  br i1 %732, label %733, label %449, !llvm.loop !87

733:                                              ; preds = %730
  %734 = load i32, ptr %252, align 8, !tbaa !37
  %735 = icmp eq i32 %734, 0
  br i1 %735, label %737, label %736

736:                                              ; preds = %733
  call fastcc void @TreeCCContextDestroy(ptr noundef %286) #30
  br label %1502

737:                                              ; preds = %733
  %738 = icmp eq i32 %.lcssa139, 0
  br i1 %738, label %1500, label %739

739:                                              ; preds = %737
  %740 = load i32, ptr %363, align 4, !tbaa !39
  switch i32 %740, label %1383 [
    i32 0, label %741
    i32 1, label %974
    i32 2, label %1104
    i32 3, label %1214
    i32 4, label %1274
    i32 5, label %1334
  ]

741:                                              ; preds = %739
  %742 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %743 = load ptr, ptr %742, align 8, !tbaa !7
  %744 = icmp eq ptr %743, null
  br i1 %744, label %765, label %745

745:                                              ; preds = %761, %741
  %746 = phi ptr [ %763, %761 ], [ %743, %741 ]
  %747 = getelementptr inbounds %struct._tagTreeCCStream, ptr %746, i64 0, i32 7
  %748 = load i8, ptr %747, align 4
  %749 = and i8 %748, 4
  %750 = icmp eq i8 %749, 0
  br i1 %750, label %752, label %751

751:                                              ; preds = %745
  call fastcc void @TreeCCStreamHeaderTop(ptr noundef nonnull %746) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.10.611) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.42) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.43) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.7.953) #30
  br label %755

752:                                              ; preds = %745
  %753 = getelementptr inbounds %struct._tagTreeCCStream, ptr %746, i64 0, i32 2
  %754 = load ptr, ptr %753, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.4.948, ptr noundef %754) #32
  call fastcc void @OutputDefns(ptr noundef nonnull %746, i32 noundef 0) #32
  br label %755

755:                                              ; preds = %752, %751
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %746, ptr noundef nonnull @.str.10.611) #30
  %756 = load i8, ptr %747, align 4
  %757 = and i8 %756, 8
  %758 = icmp eq i8 %757, 0
  br i1 %758, label %761, label %759

759:                                              ; preds = %755
  %760 = and i8 %756, -17
  store i8 %760, ptr %747, align 4
  br label %761

761:                                              ; preds = %759, %755
  %762 = getelementptr inbounds %struct._tagTreeCCStream, ptr %746, i64 0, i32 10
  %763 = load ptr, ptr %762, align 8, !tbaa !7
  %764 = icmp eq ptr %763, null
  br i1 %764, label %765, label %745, !llvm.loop !90

765:                                              ; preds = %761, %741
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DefineNodeNumbers) #30
  %766 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %766, ptr noundef nonnull @.str.10.611) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DeclareTypeDefs) #30
  %767 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %767, ptr noundef nonnull @.str.10.611) #30
  %768 = load i16, ptr %291, align 8
  %769 = and i16 %768, 4096
  %770 = icmp eq i16 %769, 0
  %771 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 6
  %772 = load ptr, ptr %771, align 8, !tbaa !91
  %773 = icmp eq ptr %772, null
  br i1 %770, label %778, label %774

774:                                              ; preds = %765
  br i1 %773, label %776, label %775

775:                                              ; preds = %774
  call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %286, ptr noundef nonnull %772, ptr noundef nonnull @.str.4.909) #30
  br label %782

776:                                              ; preds = %774
  %777 = load ptr, ptr %328, align 8, !tbaa !34
  call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %286, ptr noundef %777, ptr noundef nonnull @.str.4.909) #30
  br label %782

778:                                              ; preds = %765
  br i1 %773, label %780, label %779

779:                                              ; preds = %778
  call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %286, ptr noundef nonnull %772, ptr noundef nonnull @.str.1.906) #30
  br label %782

780:                                              ; preds = %778
  %781 = load ptr, ptr %328, align 8, !tbaa !34
  call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %286, ptr noundef %781, ptr noundef nonnull @.str.1.906) #30
  br label %782

782:                                              ; preds = %780, %779, %776, %775
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @DeclareCreateFuncs) #30
  %783 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %783, ptr noundef nonnull @.str.10.611) #30
  br label %784

784:                                              ; preds = %828, %782
  %785 = phi i64 [ 0, %782 ], [ %829, %828 ]
  %786 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 1, i64 %785
  %787 = load ptr, ptr %786, align 8, !tbaa !7
  %788 = icmp eq ptr %787, null
  br i1 %788, label %828, label %789

789:                                              ; preds = %824, %784
  %790 = phi ptr [ %826, %824 ], [ %787, %784 ]
  %791 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %790, i64 0, i32 14
  %792 = load ptr, ptr %791, align 8, !tbaa !92
  %793 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %790, i64 0, i32 5
  %794 = load i32, ptr %793, align 8, !tbaa !53
  %795 = and i32 %794, 1
  %796 = icmp eq i32 %795, 0
  br i1 %796, label %797, label %824

797:                                              ; preds = %789
  %798 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %790, i64 0, i32 2
  %799 = load ptr, ptr %798, align 8, !tbaa !93
  %800 = load ptr, ptr %790, align 8, !tbaa !67
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.82, ptr noundef %799, ptr noundef %800) #30
  %801 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %790, i64 0, i32 4
  %802 = load ptr, ptr %801, align 8, !tbaa !7
  %803 = icmp eq ptr %802, null
  br i1 %803, label %822, label %804

804:                                              ; preds = %817, %797
  %805 = phi ptr [ %820, %817 ], [ %802, %797 ]
  %806 = phi i1 [ false, %817 ], [ true, %797 ]
  %807 = phi i32 [ %818, %817 ], [ 1, %797 ]
  br i1 %806, label %809, label %808

808:                                              ; preds = %804
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.15.785) #30
  br label %809

809:                                              ; preds = %808, %804
  %810 = load ptr, ptr %805, align 8, !tbaa !94
  %811 = icmp eq ptr %810, null
  %812 = getelementptr inbounds %struct._tagTreeCCParam, ptr %805, i64 0, i32 1
  %813 = load ptr, ptr %812, align 8, !tbaa !76
  br i1 %811, label %815, label %814

814:                                              ; preds = %809
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.23.418, ptr noundef %813, ptr noundef nonnull %810) #30
  br label %817

815:                                              ; preds = %809
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.24.419, ptr noundef %813, i32 noundef %807) #30
  %816 = add nsw i32 %807, 1
  br label %817

817:                                              ; preds = %815, %814
  %818 = phi i32 [ %807, %814 ], [ %816, %815 ]
  %819 = getelementptr inbounds %struct._tagTreeCCParam, ptr %805, i64 0, i32 4
  %820 = load ptr, ptr %819, align 8, !tbaa !7
  %821 = icmp eq ptr %820, null
  br i1 %821, label %823, label %804, !llvm.loop !95

822:                                              ; preds = %797
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.34.867) #30
  br label %823

823:                                              ; preds = %822, %817
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %792, ptr noundef nonnull @.str.25.511) #30
  br label %824

824:                                              ; preds = %823, %789
  %825 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %790, i64 0, i32 9
  %826 = load ptr, ptr %825, align 8, !tbaa !7
  %827 = icmp eq ptr %826, null
  br i1 %827, label %828, label %789, !llvm.loop !96

828:                                              ; preds = %824, %784
  %829 = add nuw nsw i64 %785, 1
  %830 = icmp eq i64 %829, 512
  br i1 %830, label %831, label %784, !llvm.loop !97

831:                                              ; preds = %828
  %832 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %832, ptr noundef nonnull @.str.10.611) #30
  %833 = load ptr, ptr %771, align 8, !tbaa !91
  %834 = icmp eq ptr %833, null
  br i1 %834, label %835, label %837

835:                                              ; preds = %831
  %836 = load ptr, ptr %328, align 8, !tbaa !34
  br label %837

837:                                              ; preds = %835, %831
  %838 = phi ptr [ %836, %835 ], [ %833, %831 ]
  %839 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.83, ptr noundef %839) #30
  %840 = load i16, ptr %291, align 8
  %841 = and i16 %840, 128
  %842 = icmp eq i16 %841, 0
  %843 = load ptr, ptr %292, align 8, !tbaa !27
  %844 = select i1 %842, ptr @.str.85, ptr @.str.84
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull %844, ptr noundef %843) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %845 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.87, ptr noundef %845) #30
  %846 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.88, ptr noundef %846) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %847 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.89, ptr noundef %847) #30
  %848 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.90, ptr noundef %848) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %849 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.91, ptr noundef %849) #30
  %850 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.92, ptr noundef %850) #30
  %851 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.93, ptr noundef %851) #30
  %852 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.94, ptr noundef %852) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %853 = load i16, ptr %291, align 8
  %854 = and i16 %853, 2
  %855 = icmp eq i16 %854, 0
  br i1 %855, label %883, label %856

856:                                              ; preds = %837
  %857 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.95, ptr noundef %857) #30
  %858 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.96, ptr noundef %858) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %859 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.97, ptr noundef %859) #30
  %860 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.98, ptr noundef %860) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %861 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.99, ptr noundef %861) #30
  %862 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.100, ptr noundef %862) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.101) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %863 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.102, ptr noundef %863) #30
  %864 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.103, ptr noundef %864) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.104) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %865 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.105, ptr noundef %865) #30
  %866 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.106, ptr noundef %866) #30
  %867 = load i16, ptr %291, align 8
  %868 = and i16 %867, 8
  %869 = icmp eq i16 %868, 0
  br i1 %869, label %872, label %870

870:                                              ; preds = %856
  %871 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %871) #30
  br label %873

872:                                              ; preds = %856
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %873

873:                                              ; preds = %872, %870
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %874 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.107, ptr noundef %874) #30
  %875 = load i16, ptr %291, align 8
  %876 = and i16 %875, 8
  %877 = icmp eq i16 %876, 0
  br i1 %877, label %880, label %878

878:                                              ; preds = %873
  %879 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %879) #30
  br label %881

880:                                              ; preds = %873
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %881

881:                                              ; preds = %880, %878
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %882 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.108, ptr noundef %882) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  br label %883

883:                                              ; preds = %881, %837
  %884 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.109, ptr noundef %884) #30
  %885 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.110, ptr noundef %885) #30
  %886 = load i16, ptr %291, align 8
  %887 = and i16 %886, 8
  %888 = icmp eq i16 %887, 0
  br i1 %888, label %891, label %889

889:                                              ; preds = %883
  %890 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %890) #30
  br label %892

891:                                              ; preds = %883
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %892

892:                                              ; preds = %891, %889
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %893 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.111, ptr noundef %893) #30
  %894 = load i16, ptr %291, align 8
  %895 = and i16 %894, 8
  %896 = icmp eq i16 %895, 0
  br i1 %896, label %899, label %897

897:                                              ; preds = %892
  %898 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.112, ptr noundef %898) #30
  br label %899

899:                                              ; preds = %897, %892
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.113) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %900 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.114, ptr noundef %900) #30
  %901 = load i16, ptr %291, align 8
  %902 = and i16 %901, 8
  %903 = icmp eq i16 %902, 0
  br i1 %903, label %906, label %904

904:                                              ; preds = %899
  %905 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %905) #30
  br label %907

906:                                              ; preds = %899
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %907

907:                                              ; preds = %906, %904
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %908 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.115, ptr noundef %908) #30
  %909 = load i16, ptr %291, align 8
  %910 = and i16 %909, 8
  %911 = icmp eq i16 %910, 0
  br i1 %911, label %914, label %912

912:                                              ; preds = %907
  %913 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %913) #30
  br label %915

914:                                              ; preds = %907
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %915

915:                                              ; preds = %914, %912
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %916 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.116, ptr noundef %916) #30
  %917 = load i16, ptr %291, align 8
  %918 = and i16 %917, 8
  %919 = icmp eq i16 %918, 0
  br i1 %919, label %922, label %920

920:                                              ; preds = %915
  %921 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %921) #30
  br label %923

922:                                              ; preds = %915
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %923

923:                                              ; preds = %922, %920
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %924 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.117, ptr noundef %924) #30
  %925 = load i16, ptr %291, align 8
  %926 = and i16 %925, 8
  %927 = icmp eq i16 %926, 0
  br i1 %927, label %930, label %928

928:                                              ; preds = %923
  %929 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.53.174, ptr noundef %929) #30
  br label %931

930:                                              ; preds = %923
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.34.867) #30
  br label %931

931:                                              ; preds = %930, %928
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.25.511) #30
  %932 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.118, ptr noundef %932) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %838, ptr noundef nonnull @.str.86) #30
  %933 = load i16, ptr %291, align 8
  %934 = and i16 %933, 2048
  %935 = icmp eq i16 %934, 0
  br i1 %935, label %943, label %936

936:                                              ; preds = %931
  %937 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %938 = load ptr, ptr %937, align 8, !tbaa !98
  %939 = icmp eq ptr %938, null
  br i1 %939, label %941, label %940

940:                                              ; preds = %936
  call fastcc void @WriteSourceSkeleton(ptr noundef nonnull %286, ptr noundef nonnull %938) #32
  br label %943

941:                                              ; preds = %936
  %942 = load ptr, ptr %323, align 8, !tbaa !33
  call fastcc void @WriteSourceSkeleton(ptr noundef nonnull %286, ptr noundef %942) #32
  br label %943

943:                                              ; preds = %941, %940, %931
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @DefineVtables) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @ImplementCreateFuncs) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsC) #30
  %944 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %945 = load ptr, ptr %944, align 8, !tbaa !98
  %946 = icmp eq ptr %945, null
  br i1 %946, label %947, label %949

947:                                              ; preds = %943
  %948 = load ptr, ptr %323, align 8, !tbaa !33
  br label %949

949:                                              ; preds = %947, %943
  %950 = phi ptr [ %948, %947 ], [ %945, %943 ]
  %951 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.57, ptr noundef %951) #30
  %952 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.58, ptr noundef %952) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.39.225) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.57.221) #30
  %953 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.150, ptr noundef %953) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.11.519) #30
  %954 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.151, ptr noundef %954) #30
  %955 = load ptr, ptr %292, align 8, !tbaa !27
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.152, ptr noundef %955) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.153) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.154) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.88.465) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.156) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.40.396) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.39.395) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %950, ptr noundef nonnull @.str.47.562) #30
  %956 = load ptr, ptr %742, align 8, !tbaa !7
  %957 = icmp eq ptr %956, null
  br i1 %957, label %1383, label %958

958:                                              ; preds = %970, %949
  %959 = phi ptr [ %972, %970 ], [ %956, %949 ]
  %960 = getelementptr inbounds %struct._tagTreeCCStream, ptr %959, i64 0, i32 7
  %961 = load i8, ptr %960, align 4
  %962 = and i8 %961, 24
  %963 = icmp eq i8 %962, 8
  br i1 %963, label %964, label %965

964:                                              ; preds = %958
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %959) #30
  br label %970

965:                                              ; preds = %958
  %966 = and i8 %961, 4
  %967 = icmp eq i8 %966, 0
  br i1 %967, label %969, label %968

968:                                              ; preds = %965
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %959, ptr noundef nonnull @.str.42) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %959, ptr noundef nonnull @.str.158) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %959, ptr noundef nonnull @.str.7.953) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %959, ptr noundef nonnull @.str.10.611) #30
  call fastcc void @OutputDefns(ptr noundef nonnull %959, i32 noundef 1) #32
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %959, ptr noundef nonnull @.str.7.953) #32
  br label %970

969:                                              ; preds = %965
  call fastcc void @OutputDefns(ptr noundef nonnull %959, i32 noundef 1) #32
  br label %970

970:                                              ; preds = %969, %968, %964
  %971 = getelementptr inbounds %struct._tagTreeCCStream, ptr %959, i64 0, i32 10
  %972 = load ptr, ptr %971, align 8, !tbaa !7
  %973 = icmp eq ptr %972, null
  br i1 %973, label %1383, label %958, !llvm.loop !99

974:                                              ; preds = %739
  %975 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %976 = load ptr, ptr %975, align 8, !tbaa !7
  %977 = icmp eq ptr %976, null
  br i1 %977, label %1004, label %978

978:                                              ; preds = %974
  %979 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %980

980:                                              ; preds = %1000, %978
  %981 = phi ptr [ %976, %978 ], [ %1002, %1000 ]
  %982 = getelementptr inbounds %struct._tagTreeCCStream, ptr %981, i64 0, i32 7
  %983 = load i8, ptr %982, align 4
  %984 = and i8 %983, 4
  %985 = icmp eq i8 %984, 0
  br i1 %985, label %987, label %986

986:                                              ; preds = %980
  call fastcc void @TreeCCStreamHeaderTop(ptr noundef nonnull %981) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %981, ptr noundef nonnull @.str.10.611) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %981, ptr noundef nonnull @.str.1.160) #30
  br label %990

987:                                              ; preds = %980
  %988 = getelementptr inbounds %struct._tagTreeCCStream, ptr %981, i64 0, i32 2
  %989 = load ptr, ptr %988, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %981, ptr noundef nonnull @.str.4.948, ptr noundef %989) #32
  call fastcc void @OutputDefns(ptr noundef nonnull %981, i32 noundef 0) #32
  br label %990

990:                                              ; preds = %987, %986
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %981, ptr noundef nonnull @.str.10.611) #30
  %991 = load ptr, ptr %979, align 8, !tbaa !100
  %992 = icmp eq ptr %991, null
  br i1 %992, label %994, label %993

993:                                              ; preds = %990
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %981, ptr noundef nonnull @.str.1.279, ptr noundef nonnull %991) #30
  br label %994

994:                                              ; preds = %993, %990
  %995 = load i8, ptr %982, align 4
  %996 = and i8 %995, 8
  %997 = icmp eq i8 %996, 0
  br i1 %997, label %1000, label %998

998:                                              ; preds = %994
  %999 = and i8 %995, -17
  store i8 %999, ptr %982, align 4
  br label %1000

1000:                                             ; preds = %998, %994
  %1001 = getelementptr inbounds %struct._tagTreeCCStream, ptr %981, i64 0, i32 10
  %1002 = load ptr, ptr %1001, align 8, !tbaa !7
  %1003 = icmp eq ptr %1002, null
  br i1 %1003, label %1004, label %980, !llvm.loop !101

1004:                                             ; preds = %1000, %974
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @DefineNodeNumbers.162) #30
  %1005 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1005, ptr noundef nonnull @.str.10.611) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @DeclareTypeDefs.163) #30
  %1006 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1006, ptr noundef nonnull @.str.10.611) #30
  %1007 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 6
  %1008 = load ptr, ptr %1007, align 8, !tbaa !91
  %1009 = icmp eq ptr %1008, null
  br i1 %1009, label %1011, label %1010

1010:                                             ; preds = %1004
  call fastcc void @DeclareStateType(ptr noundef nonnull %286, ptr noundef nonnull %1008) #32
  br label %1013

1011:                                             ; preds = %1004
  %1012 = load ptr, ptr %328, align 8, !tbaa !34
  call fastcc void @DeclareStateType(ptr noundef nonnull %286, ptr noundef %1012) #32
  br label %1013

1013:                                             ; preds = %1011, %1010
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls.164) #30
  %1014 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1014, ptr noundef nonnull @.str.10.611) #30
  br label %1015

1015:                                             ; preds = %1067, %1013
  %1016 = phi i64 [ 0, %1013 ], [ %1068, %1067 ]
  %1017 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 1, i64 %1016
  %1018 = load ptr, ptr %1017, align 8, !tbaa !7
  %1019 = icmp eq ptr %1018, null
  br i1 %1019, label %1067, label %1020

1020:                                             ; preds = %1063, %1015
  %1021 = phi ptr [ %1065, %1063 ], [ %1018, %1015 ]
  %1022 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 14
  %1023 = load ptr, ptr %1022, align 8, !tbaa !92
  %1024 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 5
  %1025 = load i32, ptr %1024, align 8, !tbaa !53
  %1026 = and i32 %1025, 1
  %1027 = icmp eq i32 %1026, 0
  br i1 %1027, label %1028, label %1063

1028:                                             ; preds = %1020
  %1029 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 1
  %1030 = load ptr, ptr %1029, align 8, !tbaa !102
  %1031 = icmp eq ptr %1030, null
  br i1 %1031, label %1033, label %1032

1032:                                             ; preds = %1028
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.620, ptr noundef nonnull %1030) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.11.519) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.9.217) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.63.218) #30
  br label %1033

1033:                                             ; preds = %1032, %1028
  %1034 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 2
  %1035 = load ptr, ptr %1034, align 8, !tbaa !93
  %1036 = load ptr, ptr %1021, align 8, !tbaa !67
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.64.219, ptr noundef %1035, ptr noundef %1036) #30
  %1037 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 4
  %1038 = load ptr, ptr %1037, align 8, !tbaa !7
  %1039 = icmp eq ptr %1038, null
  br i1 %1039, label %1058, label %1040

1040:                                             ; preds = %1053, %1033
  %1041 = phi ptr [ %1056, %1053 ], [ %1038, %1033 ]
  %1042 = phi i1 [ false, %1053 ], [ true, %1033 ]
  %1043 = phi i32 [ %1054, %1053 ], [ 1, %1033 ]
  br i1 %1042, label %1045, label %1044

1044:                                             ; preds = %1040
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.15.785) #30
  br label %1045

1045:                                             ; preds = %1044, %1040
  %1046 = load ptr, ptr %1041, align 8, !tbaa !94
  %1047 = icmp eq ptr %1046, null
  %1048 = getelementptr inbounds %struct._tagTreeCCParam, ptr %1041, i64 0, i32 1
  %1049 = load ptr, ptr %1048, align 8, !tbaa !76
  br i1 %1047, label %1051, label %1050

1050:                                             ; preds = %1045
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.23.418, ptr noundef %1049, ptr noundef nonnull %1046) #30
  br label %1053

1051:                                             ; preds = %1045
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.24.419, ptr noundef %1049, i32 noundef %1043) #30
  %1052 = add nsw i32 %1043, 1
  br label %1053

1053:                                             ; preds = %1051, %1050
  %1054 = phi i32 [ %1043, %1050 ], [ %1052, %1051 ]
  %1055 = getelementptr inbounds %struct._tagTreeCCParam, ptr %1041, i64 0, i32 4
  %1056 = load ptr, ptr %1055, align 8, !tbaa !7
  %1057 = icmp eq ptr %1056, null
  br i1 %1057, label %1059, label %1040, !llvm.loop !103

1058:                                             ; preds = %1033
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.34.867) #30
  br label %1059

1059:                                             ; preds = %1058, %1053
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.25.511) #30
  %1060 = load ptr, ptr %1029, align 8, !tbaa !102
  %1061 = icmp eq ptr %1060, null
  br i1 %1061, label %1063, label %1062

1062:                                             ; preds = %1059
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1023, ptr noundef nonnull @.str.57.221) #30
  br label %1063

1063:                                             ; preds = %1062, %1059, %1020
  %1064 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1021, i64 0, i32 9
  %1065 = load ptr, ptr %1064, align 8, !tbaa !7
  %1066 = icmp eq ptr %1065, null
  br i1 %1066, label %1067, label %1020, !llvm.loop !96

1067:                                             ; preds = %1063, %1015
  %1068 = add nuw nsw i64 %1016, 1
  %1069 = icmp eq i64 %1068, 512
  br i1 %1069, label %1070, label %1015, !llvm.loop !97

1070:                                             ; preds = %1067
  %1071 = load ptr, ptr %328, align 8, !tbaa !34
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1071, ptr noundef nonnull @.str.10.611) #30
  %1072 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %1073 = load ptr, ptr %1072, align 8, !tbaa !98
  %1074 = icmp eq ptr %1073, null
  br i1 %1074, label %1076, label %1075

1075:                                             ; preds = %1070
  call fastcc void @ImplementStateType(ptr noundef nonnull %286, ptr noundef nonnull %1073) #32
  br label %1078

1076:                                             ; preds = %1070
  %1077 = load ptr, ptr %323, align 8, !tbaa !33
  call fastcc void @ImplementStateType(ptr noundef nonnull %286, ptr noundef %1077) #32
  br label %1078

1078:                                             ; preds = %1076, %1075
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @ImplementNodeTypes) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsC) #30
  %1079 = load ptr, ptr %975, align 8, !tbaa !7
  %1080 = icmp eq ptr %1079, null
  br i1 %1080, label %1383, label %1081

1081:                                             ; preds = %1078
  %1082 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1083

1083:                                             ; preds = %1100, %1081
  %1084 = phi ptr [ %1079, %1081 ], [ %1102, %1100 ]
  %1085 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1084, i64 0, i32 7
  %1086 = load i8, ptr %1085, align 4
  %1087 = and i8 %1086, 24
  %1088 = icmp eq i8 %1087, 8
  br i1 %1088, label %1089, label %1090

1089:                                             ; preds = %1083
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %1084) #30
  br label %1100

1090:                                             ; preds = %1083
  %1091 = load ptr, ptr %1082, align 8, !tbaa !100
  %1092 = icmp eq ptr %1091, null
  br i1 %1092, label %1095, label %1093

1093:                                             ; preds = %1090
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1084, ptr noundef nonnull @.str.20.491) #30
  %1094 = load i8, ptr %1085, align 4
  br label %1095

1095:                                             ; preds = %1093, %1090
  %1096 = phi i8 [ %1094, %1093 ], [ %1086, %1090 ]
  %1097 = and i8 %1096, 4
  %1098 = icmp eq i8 %1097, 0
  call fastcc void @OutputDefns(ptr noundef nonnull %1084, i32 noundef 1) #32
  br i1 %1098, label %1100, label %1099

1099:                                             ; preds = %1095
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1084, ptr noundef nonnull @.str.7.953) #32
  br label %1100

1100:                                             ; preds = %1099, %1095, %1089
  %1101 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1084, i64 0, i32 10
  %1102 = load ptr, ptr %1101, align 8, !tbaa !7
  %1103 = icmp eq ptr %1102, null
  br i1 %1103, label %1383, label %1083, !llvm.loop !104

1104:                                             ; preds = %739
  %1105 = load ptr, ptr %293, align 8, !tbaa !28
  %1106 = call fastcc ptr @TreeCCStreamGetJava(ptr noundef nonnull %286, ptr noundef %1105) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @CreateNodeStreams) #30
  br label %1107

1107:                                             ; preds = %1131, %1104
  %1108 = phi i64 [ 0, %1104 ], [ %1132, %1131 ]
  %1109 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 1, i64 %1108
  %1110 = load ptr, ptr %1109, align 8, !tbaa !7
  %1111 = icmp eq ptr %1110, null
  br i1 %1111, label %1131, label %1112

1112:                                             ; preds = %1127, %1107
  %1113 = phi ptr [ %1129, %1127 ], [ %1110, %1107 ]
  %1114 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1113, i64 0, i32 5
  %1115 = load i32, ptr %1114, align 8, !tbaa !53
  %1116 = and i32 %1115, 1
  %1117 = icmp eq i32 %1116, 0
  br i1 %1117, label %1118, label %1127

1118:                                             ; preds = %1112
  %1119 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1113, i64 0, i32 1
  %1120 = load ptr, ptr %1119, align 8, !tbaa !102
  %1121 = icmp eq ptr %1120, null
  br i1 %1121, label %1124, label %1122

1122:                                             ; preds = %1118
  %1123 = call fastcc ptr @TreeCCStreamGetJava(ptr noundef %286, ptr noundef nonnull %1120) #30
  br label %1127

1124:                                             ; preds = %1118
  %1125 = load ptr, ptr %1113, align 8, !tbaa !67
  %1126 = call fastcc ptr @TreeCCStreamGetJava(ptr noundef %286, ptr noundef %1125) #30
  br label %1127

1127:                                             ; preds = %1124, %1122, %1112
  %1128 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1113, i64 0, i32 9
  %1129 = load ptr, ptr %1128, align 8, !tbaa !7
  %1130 = icmp eq ptr %1129, null
  br i1 %1130, label %1131, label %1112, !llvm.loop !96

1131:                                             ; preds = %1127, %1107
  %1132 = add nuw nsw i64 %1108, 1
  %1133 = icmp eq i64 %1132, 512
  br i1 %1133, label %1134, label %1107, !llvm.loop !97

1134:                                             ; preds = %1131
  %1135 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %1136 = load ptr, ptr %1135, align 8, !tbaa !7
  %1137 = icmp eq ptr %1136, null
  br i1 %1137, label %1164, label %1138

1138:                                             ; preds = %1134
  %1139 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1140

1140:                                             ; preds = %1160, %1138
  %1141 = phi ptr [ %1136, %1138 ], [ %1162, %1160 ]
  %1142 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1141, i64 0, i32 7
  %1143 = load i8, ptr %1142, align 4
  %1144 = and i8 %1143, 4
  %1145 = icmp eq i8 %1144, 0
  br i1 %1145, label %1146, label %1154

1146:                                             ; preds = %1140
  %1147 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1141, i64 0, i32 2
  %1148 = load ptr, ptr %1147, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1141, ptr noundef nonnull @.str.4.948, ptr noundef %1148) #32
  call fastcc void @OutputDefns(ptr noundef nonnull %1141, i32 noundef 0) #32
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1141, ptr noundef nonnull @.str.10.611) #30
  %1149 = load ptr, ptr %1139, align 8, !tbaa !100
  %1150 = icmp eq ptr %1149, null
  br i1 %1150, label %1152, label %1151

1151:                                             ; preds = %1146
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1141, ptr noundef nonnull @.str.41.372, ptr noundef nonnull %1149) #30
  br label %1152

1152:                                             ; preds = %1151, %1146
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1141, ptr noundef nonnull @.str.42.373) #30
  %1153 = load i8, ptr %1142, align 4
  br label %1154

1154:                                             ; preds = %1152, %1140
  %1155 = phi i8 [ %1153, %1152 ], [ %1143, %1140 ]
  %1156 = and i8 %1155, 8
  %1157 = icmp eq i8 %1156, 0
  br i1 %1157, label %1160, label %1158

1158:                                             ; preds = %1154
  %1159 = and i8 %1155, -17
  store i8 %1159, ptr %1142, align 4
  br label %1160

1160:                                             ; preds = %1158, %1154
  %1161 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1141, i64 0, i32 10
  %1162 = load ptr, ptr %1161, align 8, !tbaa !7
  %1163 = icmp eq ptr %1162, null
  br i1 %1163, label %1164, label %1140, !llvm.loop !105

1164:                                             ; preds = %1160, %1134
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DeclareTypeDefs.374) #30
  %1165 = load ptr, ptr %293, align 8, !tbaa !28
  %1166 = call fastcc ptr @TreeCCStreamGetJava(ptr noundef %286, ptr noundef %1165) #30
  %1167 = load i16, ptr %291, align 8
  %1168 = and i16 %1167, 72
  %1169 = icmp eq i16 %1168, 72
  %1170 = load ptr, ptr %293, align 8, !tbaa !28
  %1171 = select i1 %1169, ptr @.str.45.375, ptr @.str.46.376
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull %1171, ptr noundef %1170) #30
  %1172 = load i16, ptr %291, align 8
  %1173 = and i16 %1172, 8
  %1174 = icmp eq i16 %1173, 0
  br i1 %1174, label %1175, label %1181

1175:                                             ; preds = %1164
  %1176 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.47.377, ptr noundef %1176) #30
  %1177 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.48.378, ptr noundef %1177) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.11.379) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.49.380) #30
  %1178 = load ptr, ptr %293, align 8, !tbaa !28
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.50.381, ptr noundef %1178) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.51.382) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.52.383) #30
  %1179 = load i16, ptr %291, align 8
  %1180 = and i16 %1179, 8
  br label %1181

1181:                                             ; preds = %1175, %1164
  %1182 = phi i16 [ %1180, %1175 ], [ %1173, %1164 ]
  %1183 = icmp eq i16 %1182, 0
  %1184 = load ptr, ptr %293, align 8, !tbaa !28
  %1185 = select i1 %1183, ptr @.str.54.384, ptr @.str.53.385
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull %1185, ptr noundef %1184) #30
  %1186 = load i16, ptr %291, align 8
  %1187 = and i16 %1186, 8
  %1188 = icmp eq i16 %1187, 0
  br i1 %1188, label %1191, label %1189

1189:                                             ; preds = %1181
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @ImplementCreateFuncs.386) #30
  %1190 = load i16, ptr %291, align 8
  br label %1191

1191:                                             ; preds = %1189, %1181
  %1192 = phi i16 [ %1190, %1189 ], [ %1186, %1181 ]
  %1193 = and i16 %1192, 2
  %1194 = icmp eq i16 %1193, 0
  br i1 %1194, label %1196, label %1195

1195:                                             ; preds = %1191
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.55.387) #30
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.56.388) #30
  br label %1196

1196:                                             ; preds = %1195, %1191
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1166, ptr noundef nonnull @.str.20.491) #30
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls.390) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsJava) #30
  %1197 = load ptr, ptr %1135, align 8, !tbaa !7
  %1198 = icmp eq ptr %1197, null
  br i1 %1198, label %1383, label %1199

1199:                                             ; preds = %1210, %1196
  %1200 = phi ptr [ %1212, %1210 ], [ %1197, %1196 ]
  %1201 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1200, i64 0, i32 7
  %1202 = load i8, ptr %1201, align 4
  %1203 = and i8 %1202, 24
  %1204 = icmp eq i8 %1203, 8
  br i1 %1204, label %1205, label %1206

1205:                                             ; preds = %1199
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %1200) #30
  br label %1210

1206:                                             ; preds = %1199
  %1207 = and i8 %1202, 4
  %1208 = icmp eq i8 %1207, 0
  br i1 %1208, label %1209, label %1210

1209:                                             ; preds = %1206
  call fastcc void @OutputDefns(ptr noundef nonnull %1200, i32 noundef 1) #32
  br label %1210

1210:                                             ; preds = %1209, %1206, %1205
  %1211 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1200, i64 0, i32 10
  %1212 = load ptr, ptr %1211, align 8, !tbaa !7
  %1213 = icmp eq ptr %1212, null
  br i1 %1213, label %1383, label %1199, !llvm.loop !106

1214:                                             ; preds = %739
  %1215 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %1216 = load ptr, ptr %1215, align 8, !tbaa !7
  %1217 = icmp eq ptr %1216, null
  br i1 %1217, label %1244, label %1218

1218:                                             ; preds = %1214
  %1219 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1220

1220:                                             ; preds = %1240, %1218
  %1221 = phi ptr [ %1216, %1218 ], [ %1242, %1240 ]
  %1222 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1221, i64 0, i32 7
  %1223 = load i8, ptr %1222, align 4
  %1224 = and i8 %1223, 4
  %1225 = icmp eq i8 %1224, 0
  br i1 %1225, label %1226, label %1234

1226:                                             ; preds = %1220
  %1227 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1221, i64 0, i32 2
  %1228 = load ptr, ptr %1227, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1221, ptr noundef nonnull @.str.278, ptr noundef %1228) #30
  %1229 = load ptr, ptr %1219, align 8, !tbaa !100
  %1230 = icmp eq ptr %1229, null
  br i1 %1230, label %1232, label %1231

1231:                                             ; preds = %1226
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1221, ptr noundef nonnull @.str.1.279, ptr noundef nonnull %1229) #30
  br label %1232

1232:                                             ; preds = %1231, %1226
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1221, ptr noundef nonnull @.str.2.280) #30
  call fastcc void @OutputDefns(ptr noundef nonnull %1221, i32 noundef 0) #32
  %1233 = load i8, ptr %1222, align 4
  br label %1234

1234:                                             ; preds = %1232, %1220
  %1235 = phi i8 [ %1233, %1232 ], [ %1223, %1220 ]
  %1236 = and i8 %1235, 8
  %1237 = icmp eq i8 %1236, 0
  br i1 %1237, label %1240, label %1238

1238:                                             ; preds = %1234
  %1239 = and i8 %1235, -17
  store i8 %1239, ptr %1222, align 4
  br label %1240

1240:                                             ; preds = %1238, %1234
  %1241 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1221, i64 0, i32 10
  %1242 = load ptr, ptr %1241, align 8, !tbaa !7
  %1243 = icmp eq ptr %1242, null
  br i1 %1243, label %1244, label %1220, !llvm.loop !107

1244:                                             ; preds = %1240, %1214
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DeclareTypeDefs.281) #30
  %1245 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %1246 = load ptr, ptr %1245, align 8, !tbaa !98
  %1247 = icmp eq ptr %1246, null
  br i1 %1247, label %1249, label %1248

1248:                                             ; preds = %1244
  call fastcc void @ImplementStateType.282(ptr noundef nonnull %286, ptr noundef nonnull %1246) #32
  br label %1251

1249:                                             ; preds = %1244
  %1250 = load ptr, ptr %323, align 8, !tbaa !33
  call fastcc void @ImplementStateType.282(ptr noundef nonnull %286, ptr noundef %1250) #32
  br label %1251

1251:                                             ; preds = %1249, %1248
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls.283) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsJava) #30
  %1252 = load ptr, ptr %1215, align 8, !tbaa !7
  %1253 = icmp eq ptr %1252, null
  br i1 %1253, label %1383, label %1254

1254:                                             ; preds = %1251
  %1255 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1256

1256:                                             ; preds = %1270, %1254
  %1257 = phi ptr [ %1252, %1254 ], [ %1272, %1270 ]
  %1258 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1257, i64 0, i32 7
  %1259 = load i8, ptr %1258, align 4
  %1260 = and i8 %1259, 24
  %1261 = icmp eq i8 %1260, 8
  br i1 %1261, label %1262, label %1263

1262:                                             ; preds = %1256
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %1257) #30
  br label %1270

1263:                                             ; preds = %1256
  %1264 = and i8 %1259, 4
  %1265 = icmp eq i8 %1264, 0
  br i1 %1265, label %1266, label %1270

1266:                                             ; preds = %1263
  call fastcc void @OutputDefns(ptr noundef nonnull %1257, i32 noundef 1) #32
  %1267 = load ptr, ptr %1255, align 8, !tbaa !100
  %1268 = icmp eq ptr %1267, null
  br i1 %1268, label %1270, label %1269

1269:                                             ; preds = %1266
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1257, ptr noundef nonnull @.str.20.491) #30
  br label %1270

1270:                                             ; preds = %1269, %1266, %1263, %1262
  %1271 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1257, i64 0, i32 10
  %1272 = load ptr, ptr %1271, align 8, !tbaa !7
  %1273 = icmp eq ptr %1272, null
  br i1 %1273, label %1383, label %1256, !llvm.loop !108

1274:                                             ; preds = %739
  %1275 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %1276 = load ptr, ptr %1275, align 8, !tbaa !7
  %1277 = icmp eq ptr %1276, null
  br i1 %1277, label %1304, label %1278

1278:                                             ; preds = %1274
  %1279 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1280

1280:                                             ; preds = %1300, %1278
  %1281 = phi ptr [ %1276, %1278 ], [ %1302, %1300 ]
  %1282 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1281, i64 0, i32 7
  %1283 = load i8, ptr %1282, align 4
  %1284 = and i8 %1283, 4
  %1285 = icmp eq i8 %1284, 0
  br i1 %1285, label %1286, label %1294

1286:                                             ; preds = %1280
  %1287 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1281, i64 0, i32 2
  %1288 = load ptr, ptr %1287, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1281, ptr noundef nonnull @.str.27.587, ptr noundef %1288) #30
  %1289 = load ptr, ptr %1279, align 8, !tbaa !100
  %1290 = icmp eq ptr %1289, null
  br i1 %1290, label %1292, label %1291

1291:                                             ; preds = %1286
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1281, ptr noundef nonnull @.str.28.588, ptr noundef nonnull %1289) #30
  br label %1292

1292:                                             ; preds = %1291, %1286
  call fastcc void @OutputDefns(ptr noundef nonnull %1281, i32 noundef 0) #32
  %1293 = load i8, ptr %1282, align 4
  br label %1294

1294:                                             ; preds = %1292, %1280
  %1295 = phi i8 [ %1293, %1292 ], [ %1283, %1280 ]
  %1296 = and i8 %1295, 8
  %1297 = icmp eq i8 %1296, 0
  br i1 %1297, label %1300, label %1298

1298:                                             ; preds = %1294
  %1299 = and i8 %1295, -17
  store i8 %1299, ptr %1282, align 4
  br label %1300

1300:                                             ; preds = %1298, %1294
  %1301 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1281, i64 0, i32 10
  %1302 = load ptr, ptr %1301, align 8, !tbaa !7
  %1303 = icmp eq ptr %1302, null
  br i1 %1303, label %1304, label %1280, !llvm.loop !109

1304:                                             ; preds = %1300, %1274
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DeclareTypeDefs.589) #30
  %1305 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %1306 = load ptr, ptr %1305, align 8, !tbaa !98
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1309, label %1308

1308:                                             ; preds = %1304
  call fastcc void @ImplementStateType.590(ptr noundef nonnull %286, ptr noundef nonnull %1306) #32
  br label %1311

1309:                                             ; preds = %1304
  %1310 = load ptr, ptr %323, align 8, !tbaa !33
  call fastcc void @ImplementStateType.590(ptr noundef nonnull %286, ptr noundef %1310) #32
  br label %1311

1311:                                             ; preds = %1309, %1308
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls.591) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsRuby) #30
  %1312 = load ptr, ptr %1275, align 8, !tbaa !7
  %1313 = icmp eq ptr %1312, null
  br i1 %1313, label %1383, label %1314

1314:                                             ; preds = %1311
  %1315 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 11
  br label %1316

1316:                                             ; preds = %1330, %1314
  %1317 = phi ptr [ %1312, %1314 ], [ %1332, %1330 ]
  %1318 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1317, i64 0, i32 7
  %1319 = load i8, ptr %1318, align 4
  %1320 = and i8 %1319, 24
  %1321 = icmp eq i8 %1320, 8
  br i1 %1321, label %1322, label %1323

1322:                                             ; preds = %1316
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %1317) #30
  br label %1330

1323:                                             ; preds = %1316
  %1324 = and i8 %1319, 4
  %1325 = icmp eq i8 %1324, 0
  br i1 %1325, label %1326, label %1330

1326:                                             ; preds = %1323
  call fastcc void @OutputDefns(ptr noundef nonnull %1317, i32 noundef 1) #32
  %1327 = load ptr, ptr %1315, align 8, !tbaa !100
  %1328 = icmp eq ptr %1327, null
  br i1 %1328, label %1330, label %1329

1329:                                             ; preds = %1326
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1317, ptr noundef nonnull @.str.18.592) #30
  br label %1330

1330:                                             ; preds = %1329, %1326, %1323, %1322
  %1331 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1317, i64 0, i32 10
  %1332 = load ptr, ptr %1331, align 8, !tbaa !7
  %1333 = icmp eq ptr %1332, null
  br i1 %1333, label %1383, label %1316, !llvm.loop !110

1334:                                             ; preds = %739
  %1335 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %1336 = load ptr, ptr %1335, align 8, !tbaa !7
  %1337 = icmp eq ptr %1336, null
  br i1 %1337, label %1358, label %1338

1338:                                             ; preds = %1354, %1334
  %1339 = phi ptr [ %1356, %1354 ], [ %1336, %1334 ]
  %1340 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1339, i64 0, i32 7
  %1341 = load i8, ptr %1340, align 4
  %1342 = and i8 %1341, 4
  %1343 = icmp eq i8 %1342, 0
  br i1 %1343, label %1344, label %1348

1344:                                             ; preds = %1338
  %1345 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1339, i64 0, i32 2
  %1346 = load ptr, ptr %1345, align 8, !tbaa !88
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1339, ptr noundef nonnull @.str.35.486, ptr noundef %1346) #30
  call fastcc void @OutputDefns(ptr noundef nonnull %1339, i32 noundef 0) #32
  %1347 = load i8, ptr %1340, align 4
  br label %1348

1348:                                             ; preds = %1344, %1338
  %1349 = phi i8 [ %1347, %1344 ], [ %1341, %1338 ]
  %1350 = and i8 %1349, 8
  %1351 = icmp eq i8 %1350, 0
  br i1 %1351, label %1354, label %1352

1352:                                             ; preds = %1348
  %1353 = and i8 %1349, -17
  store i8 %1353, ptr %1340, align 4
  br label %1354

1354:                                             ; preds = %1352, %1348
  %1355 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1339, i64 0, i32 10
  %1356 = load ptr, ptr %1355, align 8, !tbaa !7
  %1357 = icmp eq ptr %1356, null
  br i1 %1357, label %1358, label %1338, !llvm.loop !111

1358:                                             ; preds = %1354, %1334
  call fastcc void @TreeCCNodeVisitAll(ptr noundef %286, ptr noundef nonnull @DeclareTypeDefs.487) #30
  %1359 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 7
  %1360 = load ptr, ptr %1359, align 8, !tbaa !98
  %1361 = icmp eq ptr %1360, null
  br i1 %1361, label %1363, label %1362

1362:                                             ; preds = %1358
  call fastcc void @ImplementStateType.488(ptr noundef nonnull %286, ptr noundef nonnull %1360) #32
  br label %1365

1363:                                             ; preds = %1358
  %1364 = load ptr, ptr %323, align 8, !tbaa !33
  call fastcc void @ImplementStateType.488(ptr noundef nonnull %286, ptr noundef %1364) #32
  br label %1365

1365:                                             ; preds = %1363, %1362
  call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %286, ptr noundef nonnull @BuildTypeDecls.489) #30
  call fastcc void @TreeCCGenerateNonVirtuals(ptr noundef nonnull %286, ptr noundef nonnull @TreeCCNonVirtualFuncsPHP) #30
  %1366 = load ptr, ptr %1335, align 8, !tbaa !7
  %1367 = icmp eq ptr %1366, null
  br i1 %1367, label %1383, label %1368

1368:                                             ; preds = %1379, %1365
  %1369 = phi ptr [ %1381, %1379 ], [ %1366, %1365 ]
  %1370 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1369, i64 0, i32 7
  %1371 = load i8, ptr %1370, align 4
  %1372 = and i8 %1371, 24
  %1373 = icmp eq i8 %1372, 8
  br i1 %1373, label %1374, label %1375

1374:                                             ; preds = %1368
  call fastcc void @TreeCCStreamClear(ptr noundef nonnull %1369) #30
  br label %1379

1375:                                             ; preds = %1368
  %1376 = and i8 %1371, 4
  %1377 = icmp eq i8 %1376, 0
  br i1 %1377, label %1378, label %1379

1378:                                             ; preds = %1375
  call fastcc void @OutputDefns(ptr noundef nonnull %1369, i32 noundef 1) #32
  br label %1379

1379:                                             ; preds = %1378, %1375, %1374
  call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1369, ptr noundef nonnull @.str.87.490) #30
  %1380 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1369, i64 0, i32 10
  %1381 = load ptr, ptr %1380, align 8, !tbaa !7
  %1382 = icmp eq ptr %1381, null
  br i1 %1382, label %1383, label %1368, !llvm.loop !112

1383:                                             ; preds = %1379, %1365, %1330, %1311, %1270, %1251, %1210, %1196, %1100, %1078, %970, %949, %739
  %1384 = getelementptr inbounds %struct._tagTreeCCContext, ptr %286, i64 0, i32 3
  %1385 = load ptr, ptr %1384, align 8, !tbaa !7
  %1386 = icmp eq ptr %1385, null
  br i1 %1386, label %1500, label %1387

1387:                                             ; preds = %1495, %1383
  %1388 = phi ptr [ %1498, %1495 ], [ %1385, %1383 ]
  %1389 = phi i32 [ %1496, %1495 ], [ 0, %1383 ]
  call void @llvm.lifetime.start.p0(i64 2048, ptr nonnull %3) #28
  %1390 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 7
  %1391 = load i8, ptr %1390, align 4
  %1392 = and i8 %1391, 8
  %1393 = icmp eq i8 %1392, 0
  br i1 %1393, label %1398, label %1394

1394:                                             ; preds = %1387
  %1395 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 4
  %1396 = load ptr, ptr %1395, align 8, !tbaa !113
  %1397 = icmp eq ptr %1396, null
  br i1 %1397, label %1487, label %1398

1398:                                             ; preds = %1394, %1387
  %1399 = and i8 %1391, 3
  %1400 = icmp eq i8 %1399, 1
  br i1 %1400, label %1454, label %1401

1401:                                             ; preds = %1398
  %1402 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 1
  %1403 = load ptr, ptr %1402, align 8, !tbaa !114
  %1404 = call noalias ptr @fopen(ptr noundef %1403, ptr noundef nonnull @.str.1.928) #32
  %1405 = icmp eq ptr %1404, null
  br i1 %1405, label %1446, label %1406

1406:                                             ; preds = %1401
  %1407 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 4
  %1408 = load ptr, ptr %1407, align 8, !tbaa !113
  %1409 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 6
  %1410 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 5
  br label %1411

1411:                                             ; preds = %1434, %1406
  %1412 = phi ptr [ %1408, %1406 ], [ %1436, %1434 ]
  %1413 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 2048, ptr noundef nonnull %1404) #32
  %1414 = trunc i64 %1413 to i32
  %1415 = icmp eq i32 %1414, 0
  br i1 %1415, label %1438, label %1416

1416:                                             ; preds = %1411
  %1417 = icmp eq ptr %1412, null
  br i1 %1417, label %1438, label %1418

1418:                                             ; preds = %1416
  %1419 = load ptr, ptr %1410, align 8, !tbaa !115
  %1420 = icmp eq ptr %1412, %1419
  br i1 %1420, label %1421, label %1429

1421:                                             ; preds = %1418
  %1422 = load i32, ptr %1409, align 8, !tbaa !116
  %1423 = icmp eq i32 %1422, %1414
  br i1 %1423, label %1424, label %1438

1424:                                             ; preds = %1421
  %1425 = shl i64 %1413, 32
  %1426 = ashr exact i64 %1425, 32
  %1427 = call i32 @bcmp(ptr nonnull %1412, ptr nonnull %3, i64 %1426)
  %1428 = icmp eq i32 %1427, 0
  br i1 %1428, label %1434, label %1438

1429:                                             ; preds = %1418
  %1430 = icmp eq i32 %1414, 2048
  br i1 %1430, label %1431, label %1438

1431:                                             ; preds = %1429
  %1432 = call i32 @bcmp(ptr noundef nonnull dereferenceable(2048) %1412, ptr noundef nonnull dereferenceable(2048) %3, i64 2048)
  %1433 = icmp eq i32 %1432, 0
  br i1 %1433, label %1434, label %1438

1434:                                             ; preds = %1431, %1424
  %1435 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %1412, i64 0, i32 1
  %1436 = load ptr, ptr %1435, align 8, !tbaa !117
  %1437 = icmp slt i32 %1414, 2048
  br i1 %1437, label %1438, label %1411, !llvm.loop !119

1438:                                             ; preds = %1434, %1431, %1429, %1424, %1421, %1416, %1411
  %1439 = phi ptr [ %1412, %1411 ], [ null, %1416 ], [ %1412, %1421 ], [ %1412, %1424 ], [ %1412, %1429 ], [ %1412, %1431 ], [ %1436, %1434 ]
  %1440 = phi i1 [ true, %1411 ], [ false, %1416 ], [ false, %1421 ], [ false, %1424 ], [ false, %1429 ], [ false, %1431 ], [ true, %1434 ]
  %1441 = icmp eq ptr %1439, null
  %1442 = xor i1 %1440, true
  %1443 = select i1 %1442, i1 true, i1 %1441
  %1444 = call i32 @fclose(ptr noundef nonnull %1404) #32
  %1445 = and i1 %1440, %1443
  br i1 %1445, label %1487, label %1446

1446:                                             ; preds = %1438, %1401
  %1447 = load i8, ptr %1390, align 4
  %1448 = and i8 %1447, 2
  %1449 = icmp eq i8 %1448, 0
  br i1 %1449, label %1454, label %1450

1450:                                             ; preds = %1446
  %1451 = load ptr, ptr @stderr, align 8, !tbaa !7
  %1452 = load ptr, ptr %1402, align 8, !tbaa !114
  %1453 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1451, ptr noundef nonnull @.str.2.929, ptr noundef %1452) #34
  br label %1486

1454:                                             ; preds = %1446, %1398
  %1455 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 1
  %1456 = load ptr, ptr %1455, align 8, !tbaa !114
  %1457 = call noalias ptr @fopen(ptr noundef %1456, ptr noundef nonnull @.str.3.930) #32
  %1458 = icmp eq ptr %1457, null
  br i1 %1458, label %1459, label %1461

1459:                                             ; preds = %1454
  %1460 = load ptr, ptr %1455, align 8, !tbaa !114
  call void @perror(ptr noundef %1460) #34
  br label %1486

1461:                                             ; preds = %1454
  %1462 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 4
  %1463 = load ptr, ptr %1462, align 8, !tbaa !7
  %1464 = icmp eq ptr %1463, null
  br i1 %1464, label %1490, label %1465

1465:                                             ; preds = %1461
  %1466 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 5
  %1467 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 6
  br label %1468

1468:                                             ; preds = %1482, %1465
  %1469 = phi ptr [ %1463, %1465 ], [ %1484, %1482 ]
  %1470 = load ptr, ptr %1466, align 8, !tbaa !115
  %1471 = icmp eq ptr %1469, %1470
  br i1 %1471, label %1472, label %1479

1472:                                             ; preds = %1468
  %1473 = load i32, ptr %1467, align 8, !tbaa !116
  %1474 = sext i32 %1473 to i64
  %1475 = call i64 @fwrite(ptr noundef nonnull %1469, i64 noundef 1, i64 noundef %1474, ptr noundef nonnull %1457) #32
  %1476 = load i32, ptr %1467, align 8, !tbaa !116
  %1477 = sext i32 %1476 to i64
  %1478 = icmp eq i64 %1475, %1477
  br i1 %1478, label %1482, label %1488

1479:                                             ; preds = %1468
  %1480 = call i64 @fwrite(ptr noundef nonnull %1469, i64 noundef 1, i64 noundef 2048, ptr noundef nonnull %1457) #32
  %1481 = icmp eq i64 %1480, 2048
  br i1 %1481, label %1482, label %1488

1482:                                             ; preds = %1479, %1472
  %1483 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %1469, i64 0, i32 1
  %1484 = load ptr, ptr %1483, align 8, !tbaa !7
  %1485 = icmp eq ptr %1484, null
  br i1 %1485, label %1490, label %1468, !llvm.loop !120

1486:                                             ; preds = %1459, %1450
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #28
  br label %1494

1487:                                             ; preds = %1438, %1394
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #28
  br label %1495

1488:                                             ; preds = %1479, %1472
  %1489 = call i32 @fclose(ptr noundef nonnull %1457) #32
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #28
  br label %1494

1490:                                             ; preds = %1482, %1461
  %1491 = call i32 @fflush(ptr noundef nonnull %1457) #32
  %1492 = icmp eq i32 %1491, 0
  %1493 = call i32 @fclose(ptr noundef nonnull %1457) #32
  call void @llvm.lifetime.end.p0(i64 2048, ptr nonnull %3) #28
  br i1 %1492, label %1495, label %1494

1494:                                             ; preds = %1490, %1488, %1486
  br label %1495

1495:                                             ; preds = %1494, %1490, %1487
  %1496 = phi i32 [ 1, %1494 ], [ %1389, %1490 ], [ %1389, %1487 ]
  %1497 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1388, i64 0, i32 10
  %1498 = load ptr, ptr %1497, align 8, !tbaa !7
  %1499 = icmp eq ptr %1498, null
  br i1 %1499, label %1500, label %1387, !llvm.loop !121

1500:                                             ; preds = %1495, %1383, %737
  %1501 = phi i32 [ 0, %737 ], [ 0, %1383 ], [ %1496, %1495 ]
  call fastcc void @TreeCCContextDestroy(ptr noundef %286) #30
  br label %1502

1502:                                             ; preds = %1500, %736, %318, %226, %196, %195, %185, %170, %161, %150, %139, %128, %108, %107, %103, %86, %76, %70, %59, %49, %39
  %1503 = phi i32 [ 1, %226 ], [ 1, %736 ], [ %1501, %1500 ], [ 1, %108 ], [ 0, %107 ], [ 1, %103 ], [ 1, %86 ], [ 1, %76 ], [ 1, %70 ], [ 1, %59 ], [ 1, %49 ], [ 1, %39 ], [ 1, %196 ], [ 0, %195 ], [ 1, %185 ], [ 1, %170 ], [ 1, %161 ], [ 1, %150 ], [ 1, %139 ], [ 1, %128 ], [ 1, %318 ]
  call void @llvm.lifetime.end.p0(i64 1096, ptr nonnull %4) #28
  ret i32 %1503
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @TreeCCOutOfMemory(ptr noundef readonly %0) unnamed_addr #3 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %12, label %3

3:                                                ; preds = %1
  %4 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = icmp eq ptr %5, null
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 @fputs(ptr noundef nonnull %5, ptr noundef %8) #34
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 @fputs(ptr noundef nonnull @.str.1.5, ptr noundef %10) #34
  br label %12

12:                                               ; preds = %7, %3, %1
  %13 = load ptr, ptr @stderr, align 8, !tbaa !7
  %14 = tail call i32 @fputs(ptr noundef nonnull @.str.2.6, ptr noundef %13) #34
  tail call void @exit(i32 noundef 1) #35
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @Usage(ptr noundef %0) unnamed_addr #5 {
  %2 = load ptr, ptr @stderr, align 8, !tbaa !7
  %3 = tail call i64 @fwrite(ptr nonnull @.str.16.720, i64 38, i64 1, ptr %2) #36
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.17.721, i64 59, i64 1, ptr %4) #36
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i32 @fputc(i32 10, ptr %6)
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.19.722, ptr noundef %0) #34
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i32 @fputc(i32 10, ptr %10)
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = tail call i64 @fwrite(ptr nonnull @.str.20.723, i64 27, i64 1, ptr %12) #36
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.21.724, i64 41, i64 1, ptr %14) #36
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = tail call i64 @fwrite(ptr nonnull @.str.22.725, i64 27, i64 1, ptr %16) #36
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i64 @fwrite(ptr nonnull @.str.23.726, i64 48, i64 1, ptr %18) #36
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i64 @fwrite(ptr nonnull @.str.24.727, i64 31, i64 1, ptr %20) #36
  %22 = load ptr, ptr @stderr, align 8, !tbaa !7
  %23 = tail call i64 @fwrite(ptr nonnull @.str.25.728, i64 51, i64 1, ptr %22) #36
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = tail call i64 @fwrite(ptr nonnull @.str.26.729, i64 29, i64 1, ptr %24) #36
  %26 = load ptr, ptr @stderr, align 8, !tbaa !7
  %27 = tail call i64 @fwrite(ptr nonnull @.str.27.730, i64 57, i64 1, ptr %26) #36
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.28.731, i64 28, i64 1, ptr %28) #36
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = tail call i64 @fwrite(ptr nonnull @.str.29.732, i64 54, i64 1, ptr %30) #36
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.30.733, i64 26, i64 1, ptr %32) #36
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = tail call i64 @fwrite(ptr nonnull @.str.31.734, i64 42, i64 1, ptr %34) #36
  %36 = load ptr, ptr @stderr, align 8, !tbaa !7
  %37 = tail call i64 @fwrite(ptr nonnull @.str.32.735, i64 11, i64 1, ptr %36) #36
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = tail call i64 @fwrite(ptr nonnull @.str.33.736, i64 33, i64 1, ptr %38) #36
  %40 = load ptr, ptr @stderr, align 8, !tbaa !7
  %41 = tail call i64 @fwrite(ptr nonnull @.str.34.737, i64 23, i64 1, ptr %40) #36
  %42 = load ptr, ptr @stderr, align 8, !tbaa !7
  %43 = tail call i64 @fwrite(ptr nonnull @.str.35.738, i64 35, i64 1, ptr %42) #36
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @Version() unnamed_addr #5 {
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
  %3 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(2) @.str.13.716) #31
  %4 = icmp eq i32 %3, 0
  %5 = select i1 %4, ptr @.str.41.719, ptr %0
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #31
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
  %15 = load i8, ptr %14, align 1, !tbaa !11
  switch i8 %15, label %8 [
    i8 46, label %16
    i8 47, label %27
    i8 92, label %27
  ]

16:                                               ; preds = %12
  %.lcssa1 = phi i64 [ %9, %12 ]
  %17 = and i64 %.lcssa1, 4294967295
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %19 = add nuw nsw i64 %17, 1
  %20 = add i64 %19, %18
  %21 = tail call noalias ptr @malloc(i64 noundef %20) #29
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

24:                                               ; preds = %16
  %25 = tail call ptr @strncpy(ptr noundef nonnull %21, ptr noundef nonnull %5, i64 noundef %17) #30
  %26 = getelementptr inbounds i8, ptr %21, i64 %17
  br label %40

27:                                               ; preds = %12, %12, %8
  %28 = shl i64 %6, 32
  %29 = ashr exact i64 %28, 32
  %30 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %31 = add nsw i64 %29, 2
  %32 = add i64 %31, %30
  %33 = tail call noalias ptr @malloc(i64 noundef %32) #29
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %36

35:                                               ; preds = %27
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

36:                                               ; preds = %27
  %37 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %33, ptr noundef nonnull dereferenceable(1) %5) #30
  %38 = getelementptr inbounds i8, ptr %33, i64 %29
  store i8 46, ptr %38, align 1, !tbaa !11
  %39 = getelementptr inbounds i8, ptr %38, i64 1
  br label %40

40:                                               ; preds = %36, %24
  %41 = phi ptr [ %39, %36 ], [ %26, %24 ]
  %42 = phi ptr [ %33, %36 ], [ %21, %24 ]
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %41, ptr noundef nonnull dereferenceable(1) %1) #30
  ret ptr %42
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @TreeCCOptionProcess(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #0 {
  br label %9

4:                                                ; preds = %9
  %5 = add nuw nsw i64 %10, 1
  %6 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !122
  %8 = icmp eq i64 %5, 32
  br i1 %8, label %20, label %9, !llvm.loop !124

9:                                                ; preds = %4, %3
  %10 = phi i64 [ 0, %3 ], [ %5, %4 ]
  %11 = phi ptr [ @.str.795, %3 ], [ %7, %4 ]
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %11) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %4

14:                                               ; preds = %9
  %.lcssa = phi i64 [ %10, %9 ]
  %15 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %.lcssa, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !125
  %17 = getelementptr inbounds [33 x %struct.anon.78], ptr @OptionHandlers, i64 0, i64 %.lcssa, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !126
  %19 = tail call i32 %16(ptr noundef %0, ptr noundef %2, i32 noundef %18) #30
  br label %20

20:                                               ; preds = %14, %4
  %21 = phi i32 [ %19, %14 ], [ 2, %4 ]
  ret i32 %21
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCStreamCreate(ptr noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp slt i32 %3, 0
  br i1 %5, label %6, label %8

6:                                                ; preds = %4
  %7 = tail call fastcc ptr @TreeCCDupString(ptr noundef %1) #32
  br label %17

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.TreeCCInput, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !36
  %13 = tail call fastcc ptr @TreeCCResolvePathname(ptr noundef %12, ptr noundef %1) #32
  %14 = trunc i32 %3 to i8
  %15 = shl nuw nsw i8 %14, 2
  %16 = and i8 %15, 4
  br label %17

17:                                               ; preds = %8, %6
  %18 = phi i8 [ 0, %6 ], [ %16, %8 ]
  %19 = phi ptr [ %7, %6 ], [ %13, %8 ]
  %20 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %34, label %23

23:                                               ; preds = %30, %17
  %24 = phi ptr [ %32, %30 ], [ %21, %17 ]
  %25 = getelementptr inbounds %struct._tagTreeCCStream, ptr %24, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !114
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %19) #31
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  %.lcssa = phi ptr [ %24, %23 ]
  tail call void @free(ptr noundef %19) #30
  br label %61

30:                                               ; preds = %23
  %31 = getelementptr inbounds %struct._tagTreeCCStream, ptr %24, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %23, !llvm.loop !127

34:                                               ; preds = %30, %17
  %35 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %38

37:                                               ; preds = %34
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

38:                                               ; preds = %34
  store ptr %0, ptr %35, align 8, !tbaa !128
  %39 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 1
  store ptr %19, ptr %39, align 8, !tbaa !114
  %40 = icmp eq ptr %2, null
  br i1 %40, label %43, label %41

41:                                               ; preds = %38
  %42 = tail call fastcc ptr @TreeCCDupString(ptr noundef nonnull %2) #32
  br label %45

43:                                               ; preds = %38
  %44 = tail call fastcc ptr @TreeCCDupString(ptr noundef %1) #32
  br label %45

45:                                               ; preds = %43, %41
  %46 = phi ptr [ %42, %41 ], [ %44, %43 ]
  %47 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 2
  store ptr %46, ptr %47, align 8, !tbaa !88
  %48 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 3
  store i64 1, ptr %48, align 8, !tbaa !129
  %49 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 4
  %50 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 6
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %49, i8 0, i64 16, i1 false)
  store i32 2048, ptr %50, align 8, !tbaa !116
  %51 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %52 = load i16, ptr %51, align 8
  %53 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 7
  %54 = trunc i16 %52 to i8
  %55 = lshr i8 %54, 4
  %56 = and i8 %55, 1
  %57 = or i8 %56, %18
  store i8 %57, ptr %53, align 4
  %58 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %58, i8 0, i64 16, i1 false)
  %59 = load ptr, ptr %20, align 8, !tbaa !130
  %60 = getelementptr inbounds %struct._tagTreeCCStream, ptr %35, i64 0, i32 10
  store ptr %59, ptr %60, align 8, !tbaa !131
  store ptr %35, ptr %20, align 8, !tbaa !130
  br label %61

61:                                               ; preds = %45, %29
  %62 = phi ptr [ %.lcssa, %29 ], [ %35, %45 ]
  ret ptr %62
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCParse(ptr noundef %0) unnamed_addr #0 {
  %2 = alloca ptr, align 8
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = alloca ptr, align 8
  %6 = alloca ptr, align 8
  %7 = alloca ptr, align 8
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !25
  %10 = tail call fastcc i32 @TreeCCNextToken(ptr noundef %9) #30, !range !132
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %949, label %12

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %17 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 15
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %20 = load ptr, ptr %8, align 8, !tbaa !25
  %21 = load i32, ptr %20, align 8, !tbaa !15
  br label %22

22:                                               ; preds = %945, %12
  %23 = phi i32 [ %21, %12 ], [ %947, %945 ]
  %24 = phi ptr [ %20, %12 ], [ %946, %945 ]
  switch i32 %23, label %942 [
    i32 37, label %935
    i32 1, label %25
    i32 2, label %236
    i32 4, label %236
    i32 31, label %236
    i32 32, label %236
    i32 33, label %236
    i32 19, label %267
    i32 22, label %407
    i32 27, label %742
    i32 28, label %785
    i32 29, label %807
    i32 30, label %829
    i32 34, label %841
    i32 35, label %894
    i32 36, label %896
    i32 3, label %935
    i32 5, label %935
    i32 6, label %935
    i32 7, label %935
    i32 8, label %935
    i32 9, label %935
    i32 10, label %935
    i32 11, label %935
    i32 12, label %935
    i32 13, label %935
    i32 14, label %935
    i32 15, label %935
    i32 16, label %935
    i32 17, label %935
    i32 18, label %935
    i32 20, label %935
    i32 21, label %935
    i32 23, label %935
    i32 24, label %935
    i32 25, label %935
    i32 26, label %935
  ]

25:                                               ; preds = %209, %22
  %26 = phi ptr [ %204, %209 ], [ null, %22 ]
  %27 = load ptr, ptr %8, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !36
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 5
  %31 = load i64, ptr %30, align 8, !tbaa !21
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %27, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !19
  %34 = tail call fastcc ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %33) #30
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %37

36:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.10.842, ptr noundef %33) #30
  br label %37

37:                                               ; preds = %36, %25
  %38 = phi i32 [ 0, %25 ], [ 1, %36 ]
  %39 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %27) #30, !range !132
  %40 = load i32, ptr %27, align 8, !tbaa !15
  %41 = icmp eq i32 %40, 5
  br i1 %41, label %42, label %93

42:                                               ; preds = %37
  %43 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %27) #30, !range !132
  %44 = load i32, ptr %27, align 8, !tbaa !15
  %45 = icmp eq i32 %44, 1
  br i1 %45, label %46, label %81

46:                                               ; preds = %78, %42
  %47 = phi ptr [ %67, %78 ], [ null, %42 ]
  %48 = phi i32 [ %51, %78 ], [ 0, %42 ]
  %49 = phi i32 [ %57, %78 ], [ %38, %42 ]
  %50 = phi ptr [ %58, %78 ], [ null, %42 ]
  %51 = add nuw nsw i32 %48, 1
  %52 = load ptr, ptr %32, align 8, !tbaa !19
  %53 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %52) #30
  %54 = icmp eq ptr %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.11.843, ptr noundef %52) #30
  br label %56

56:                                               ; preds = %55, %46
  %57 = phi i32 [ %49, %46 ], [ 1, %55 ]
  %58 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #29
  %59 = icmp eq ptr %58, null
  br i1 %59, label %60, label %61

60:                                               ; preds = %56
  %.lcssa12 = phi ptr [ %27, %56 ]
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %.lcssa12) #30
  unreachable

61:                                               ; preds = %56
  store ptr %53, ptr %58, align 8, !tbaa !69
  %62 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %58, i64 0, i32 1
  store ptr null, ptr %62, align 8, !tbaa !133
  %63 = icmp eq ptr %50, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %50, i64 0, i32 1
  store ptr %58, ptr %65, align 8, !tbaa !133
  br label %66

66:                                               ; preds = %64, %61
  %67 = phi ptr [ %47, %64 ], [ %58, %61 ]
  %68 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %27) #30, !range !132
  %69 = load i32, ptr %27, align 8, !tbaa !15
  switch i32 %69, label %76 [
    i32 11, label %70
    i32 6, label %87
  ]

70:                                               ; preds = %66
  %71 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %27) #30, !range !132
  %72 = load i32, ptr %27, align 8, !tbaa !15
  %73 = icmp eq i32 %72, 1
  br i1 %73, label %78, label %74

74:                                               ; preds = %70
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.12.844) #30
  %75 = load i32, ptr %27, align 8, !tbaa !15
  br label %78

76:                                               ; preds = %66
  %.lcssa9 = phi ptr [ %67, %66 ]
  %.lcssa8 = phi i32 [ %57, %66 ]
  %.lcssa6 = phi i32 [ %51, %66 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.7.845) #30
  %77 = load i32, ptr %27, align 8, !tbaa !15
  br label %81

78:                                               ; preds = %74, %70
  %79 = phi i32 [ 1, %70 ], [ %75, %74 ]
  %80 = icmp eq i32 %79, 1
  br i1 %80, label %46, label %81, !llvm.loop !134

81:                                               ; preds = %78, %76, %42
  %82 = phi i32 [ %77, %76 ], [ %44, %42 ], [ %79, %78 ]
  %83 = phi i32 [ %.lcssa8, %76 ], [ %38, %42 ], [ %57, %78 ]
  %84 = phi i32 [ %.lcssa6, %76 ], [ 0, %42 ], [ %51, %78 ]
  %85 = phi ptr [ %.lcssa9, %76 ], [ null, %42 ], [ %67, %78 ]
  %86 = icmp eq i32 %82, 6
  br i1 %86, label %87, label %92

87:                                               ; preds = %81, %66
  %88 = phi ptr [ %85, %81 ], [ %67, %66 ]
  %89 = phi i32 [ %84, %81 ], [ %51, %66 ]
  %90 = phi i32 [ %83, %81 ], [ %57, %66 ]
  %91 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %27) #30, !range !132
  br label %94

92:                                               ; preds = %81
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.13.846) #30
  br label %94

93:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %27, ptr noundef nonnull @.str.14.847) #30
  br label %94

94:                                               ; preds = %93, %92, %87
  %95 = phi i32 [ %90, %87 ], [ %83, %92 ], [ %38, %93 ]
  %96 = phi i32 [ %89, %87 ], [ %84, %92 ], [ 0, %93 ]
  %97 = phi ptr [ %88, %87 ], [ %85, %92 ], [ null, %93 ]
  br i1 %35, label %158, label %98

98:                                               ; preds = %94
  %99 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 6
  %100 = load i32, ptr %99, align 4, !tbaa !56
  %101 = icmp eq i32 %100, %96
  br i1 %101, label %107, label %102

102:                                              ; preds = %98
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %29, i64 noundef %31, ptr noundef nonnull @.str.15.848) #30
  %103 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 7
  %104 = load ptr, ptr %103, align 8, !tbaa !65
  %105 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 8
  %106 = load i64, ptr %105, align 8, !tbaa !66
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %104, i64 noundef %106, ptr noundef nonnull @.str.16.849) #30
  br label %161

107:                                              ; preds = %98
  %108 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 4
  %109 = load ptr, ptr %108, align 8, !tbaa !7
  %110 = icmp eq ptr %109, null
  br i1 %110, label %158, label %111

111:                                              ; preds = %144, %107
  %112 = phi ptr [ %149, %144 ], [ %109, %107 ]
  %113 = phi i32 [ %147, %144 ], [ 0, %107 ]
  %114 = phi i32 [ %146, %144 ], [ %95, %107 ]
  %115 = phi ptr [ %145, %144 ], [ %97, %107 ]
  %116 = getelementptr inbounds %struct._tagTreeCCParam, ptr %112, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !74
  %118 = and i32 %117, 1
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %144, label %120

120:                                              ; preds = %111
  %121 = getelementptr inbounds %struct._tagTreeCCParam, ptr %112, i64 0, i32 1
  %122 = load ptr, ptr %121, align 8, !tbaa !76
  %123 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %122) #30
  %124 = icmp eq ptr %123, null
  br i1 %124, label %139, label %125

125:                                              ; preds = %120
  %126 = load ptr, ptr %115, align 8, !tbaa !69
  %127 = icmp eq ptr %126, null
  br i1 %127, label %139, label %128

128:                                              ; preds = %131, %125
  %129 = phi ptr [ %132, %131 ], [ %126, %125 ]
  %130 = icmp eq ptr %129, %123
  br i1 %130, label %139, label %131

131:                                              ; preds = %128
  %132 = load ptr, ptr %129, align 8, !tbaa !45
  %133 = icmp eq ptr %132, null
  br i1 %133, label %134, label %128, !llvm.loop !80

134:                                              ; preds = %131
  %135 = getelementptr inbounds %struct._tagTreeCCNode, ptr %126, i64 0, i32 4
  %136 = load ptr, ptr %135, align 8, !tbaa !44
  %137 = getelementptr inbounds %struct._tagTreeCCNode, ptr %123, i64 0, i32 4
  %138 = load ptr, ptr %137, align 8, !tbaa !44
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %29, i64 noundef %31, ptr noundef nonnull @.str.17.850, ptr noundef %136, ptr noundef %138) #30
  br label %139

139:                                              ; preds = %134, %128, %125, %120
  %140 = phi i32 [ 1, %134 ], [ %114, %120 ], [ %114, %125 ], [ %114, %128 ]
  %141 = phi i32 [ 1, %134 ], [ %113, %120 ], [ %113, %125 ], [ %113, %128 ]
  %142 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %115, i64 0, i32 1
  %143 = load ptr, ptr %142, align 8, !tbaa !133
  br label %144

144:                                              ; preds = %139, %111
  %145 = phi ptr [ %143, %139 ], [ %115, %111 ]
  %146 = phi i32 [ %140, %139 ], [ %114, %111 ]
  %147 = phi i32 [ %141, %139 ], [ %113, %111 ]
  %148 = getelementptr inbounds %struct._tagTreeCCParam, ptr %112, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !7
  %150 = icmp eq ptr %149, null
  br i1 %150, label %151, label %111, !llvm.loop !135

151:                                              ; preds = %144
  %.lcssa11 = phi i32 [ %146, %144 ]
  %.lcssa10 = phi i32 [ %147, %144 ]
  %152 = icmp eq i32 %.lcssa10, 0
  br i1 %152, label %158, label %153

153:                                              ; preds = %151
  %154 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 7
  %155 = load ptr, ptr %154, align 8, !tbaa !65
  %156 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 8
  %157 = load i64, ptr %156, align 8, !tbaa !66
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %27, ptr noundef %155, i64 noundef %157, ptr noundef nonnull @.str.16.849) #30
  br label %158

158:                                              ; preds = %153, %151, %107, %94
  %159 = phi i32 [ %95, %94 ], [ %.lcssa11, %153 ], [ %.lcssa11, %151 ], [ %95, %107 ]
  %160 = icmp eq i32 %159, 0
  br i1 %160, label %168, label %161

161:                                              ; preds = %158, %102
  %162 = icmp eq ptr %97, null
  br i1 %162, label %203, label %163

163:                                              ; preds = %163, %161
  %164 = phi ptr [ %166, %163 ], [ %97, %161 ]
  %165 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %164, i64 0, i32 1
  %166 = load ptr, ptr %165, align 8, !tbaa !133
  tail call void @free(ptr noundef nonnull %164) #30
  %167 = icmp eq ptr %166, null
  br i1 %167, label %203, label %163, !llvm.loop !136

168:                                              ; preds = %158
  %169 = load i16, ptr %18, align 8
  %170 = and i16 %169, 1
  %171 = icmp eq i16 %170, 0
  br i1 %171, label %181, label %172

172:                                              ; preds = %168
  %173 = icmp eq ptr %97, null
  br i1 %173, label %174, label %176

174:                                              ; preds = %172
  %175 = load ptr, ptr %34, align 8, !tbaa !67
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %31, ptr noundef nonnull @.str.5.776, ptr noundef %175) #30
  br label %181

176:                                              ; preds = %172
  %177 = load ptr, ptr %97, align 8, !tbaa !69
  %178 = getelementptr inbounds %struct._tagTreeCCNode, ptr %177, i64 0, i32 4
  %179 = load ptr, ptr %178, align 8, !tbaa !44
  %180 = load ptr, ptr %34, align 8, !tbaa !67
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %31, ptr noundef nonnull @.str.6.777, ptr noundef %179, ptr noundef %180) #30
  br label %181

181:                                              ; preds = %176, %174, %168
  %182 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #29
  %183 = icmp eq ptr %182, null
  br i1 %183, label %184, label %186

184:                                              ; preds = %181
  %185 = load ptr, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %185) #30
  unreachable

186:                                              ; preds = %181
  store ptr %97, ptr %182, align 8, !tbaa !68
  %187 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 1
  store ptr null, ptr %187, align 8, !tbaa !137
  %188 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 2
  store ptr %34, ptr %188, align 8, !tbaa !138
  %189 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 3
  store i32 0, ptr %189, align 8, !tbaa !139
  %190 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 4
  store ptr %29, ptr %190, align 8, !tbaa !71
  %191 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 5
  store i64 %31, ptr %191, align 8, !tbaa !72
  %192 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 6
  %193 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %192, i8 0, i64 32, i1 false)
  %194 = load ptr, ptr %193, align 8, !tbaa !64
  %195 = icmp eq ptr %194, null
  %196 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 10
  %197 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %194, i64 0, i32 8
  %198 = select i1 %195, ptr %196, ptr %197
  store ptr %182, ptr %198, align 8, !tbaa !7
  store ptr %182, ptr %193, align 8, !tbaa !64
  %199 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %34, i64 0, i32 13
  %200 = load i32, ptr %199, align 8, !tbaa !55
  %201 = add nsw i32 %200, 1
  store i32 %201, ptr %199, align 8, !tbaa !55
  %202 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %182, i64 0, i32 9
  store ptr %26, ptr %202, align 8, !tbaa !140
  br label %203

203:                                              ; preds = %186, %163, %161
  %204 = phi ptr [ %182, %186 ], [ %26, %161 ], [ %26, %163 ]
  %205 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %205, label %216 [
    i32 1, label %206
    i32 11, label %212
  ]

206:                                              ; preds = %212, %203
  %207 = phi ptr [ @.str.8.851, %212 ], [ @.str.7.845, %203 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %207) #30
  %208 = load i32, ptr %24, align 8, !tbaa !15
  br label %209

209:                                              ; preds = %212, %206
  %210 = phi i32 [ %208, %206 ], [ 1, %212 ]
  %211 = icmp eq i32 %210, 1
  br i1 %211, label %25, label %216, !llvm.loop !141

212:                                              ; preds = %203
  %213 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %214 = load i32, ptr %24, align 8, !tbaa !15
  %215 = icmp eq i32 %214, 1
  br i1 %215, label %209, label %206

216:                                              ; preds = %209, %203
  %.lcssa15 = phi ptr [ %204, %209 ], [ %204, %203 ]
  %217 = phi i32 [ %205, %203 ], [ %210, %209 ]
  %218 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !36
  %220 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %221 = load i64, ptr %220, align 8, !tbaa !21
  %222 = icmp eq i32 %217, 3
  br i1 %222, label %224, label %223

223:                                              ; preds = %216
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.9.852) #30
  br label %945

224:                                              ; preds = %216
  %225 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %226 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %227 = icmp eq ptr %.lcssa15, null
  br i1 %227, label %945, label %228

228:                                              ; preds = %228, %224
  %229 = phi ptr [ %234, %228 ], [ %.lcssa15, %224 ]
  %230 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %229, i64 0, i32 1
  store ptr %225, ptr %230, align 8, !tbaa !137
  %231 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %229, i64 0, i32 6
  store ptr %219, ptr %231, align 8, !tbaa !142
  %232 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %229, i64 0, i32 7
  store i64 %221, ptr %232, align 8, !tbaa !143
  %233 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %229, i64 0, i32 9
  %234 = load ptr, ptr %233, align 8, !tbaa !140
  %235 = icmp eq ptr %234, null
  br i1 %235, label %945, label %228, !llvm.loop !144

236:                                              ; preds = %22, %22, %22, %22, %22
  %237 = add nsw i32 %23, -31
  %238 = icmp ult i32 %237, 3
  br i1 %238, label %239, label %253

239:                                              ; preds = %239, %236
  %240 = phi i32 [ %250, %239 ], [ %23, %236 ]
  %241 = phi ptr [ %249, %239 ], [ %24, %236 ]
  %242 = phi i32 [ %247, %239 ], [ 0, %236 ]
  %243 = icmp eq i32 %240, 32
  %244 = select i1 %243, i32 2, i32 4
  %245 = icmp eq i32 %240, 31
  %246 = select i1 %245, i32 3, i32 %244
  %247 = or i32 %246, %242
  %248 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %241) #30, !range !132
  %249 = load ptr, ptr %8, align 8, !tbaa !25
  %250 = load i32, ptr %249, align 8, !tbaa !15
  %251 = add i32 %250, -31
  %252 = icmp ult i32 %251, 3
  br i1 %252, label %239, label %253, !llvm.loop !145

253:                                              ; preds = %239, %236
  %254 = phi i32 [ 0, %236 ], [ %247, %239 ]
  %255 = phi ptr [ %24, %236 ], [ %249, %239 ]
  %256 = phi i32 [ %23, %236 ], [ %250, %239 ]
  %257 = lshr i32 %254, 1
  %258 = and i32 %257, 1
  %259 = xor i32 %258, 1
  %260 = or i32 %259, %254
  switch i32 %256, label %266 [
    i32 2, label %261
    i32 4, label %263
  ]

261:                                              ; preds = %253
  %262 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %255) #30
  tail call fastcc void @TreeCCAddLiteralDefn(ptr noundef nonnull %0, ptr noundef %262, i32 noundef %260) #30
  br label %942

263:                                              ; preds = %253
  %264 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %255) #30
  %265 = or i32 %260, 4
  tail call fastcc void @TreeCCAddLiteralDefn(ptr noundef nonnull %0, ptr noundef %264, i32 noundef %265) #30
  br label %942

266:                                              ; preds = %253
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %255, ptr noundef nonnull @.str.853) #30
  br label %945

267:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #28
  %268 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %269 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %270 = load i64, ptr %269, align 8, !tbaa !21
  %271 = load i32, ptr %24, align 8, !tbaa !15
  %272 = icmp eq i32 %271, 1
  br i1 %272, label %274, label %273

273:                                              ; preds = %267
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.8.851) #30
  br label %406

274:                                              ; preds = %267
  %275 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %276 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %277 = load i32, ptr %24, align 8, !tbaa !15
  %278 = icmp eq i32 %277, 1
  br i1 %278, label %279, label %282

279:                                              ; preds = %274
  %280 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %281 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %282

282:                                              ; preds = %279, %274
  %283 = phi ptr [ %280, %279 ], [ null, %274 ]
  br label %284

284:                                              ; preds = %288, %282
  %285 = phi i32 [ 0, %282 ], [ %290, %288 ]
  %286 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %286, label %292 [
    i32 20, label %288
    i32 21, label %287
  ]

287:                                              ; preds = %284
  br label %288

288:                                              ; preds = %287, %284
  %289 = phi i32 [ 4, %287 ], [ 2, %284 ]
  %290 = or i32 %289, %285
  %291 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %284

292:                                              ; preds = %284
  %.lcssa3 = phi i32 [ %285, %284 ]
  %293 = tail call fastcc ptr @TreeCCNodeCreate(ptr noundef %0, i64 noundef %270, ptr noundef %275, ptr noundef %283, i32 noundef %.lcssa3) #30
  %294 = load i32, ptr %24, align 8, !tbaa !15
  %295 = icmp eq i32 %294, 12
  br i1 %295, label %296, label %406

296:                                              ; preds = %292
  %297 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 9
  store i32 0, ptr %297, align 8, !tbaa !146
  %298 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  store i32 1, ptr %297, align 8, !tbaa !146
  %299 = load i32, ptr %24, align 8, !tbaa !15
  %300 = icmp eq i32 %299, 7
  br i1 %300, label %301, label %405

301:                                              ; preds = %296
  %302 = getelementptr inbounds %struct._tagTreeCCNode, ptr %293, i64 0, i32 10
  br label %304

303:                                              ; preds = %400, %397, %307
  br label %304

304:                                              ; preds = %303, %301
  %305 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %306 = load i32, ptr %24, align 8, !tbaa !15
  br label %307

307:                                              ; preds = %402, %304
  %308 = phi i32 [ %401, %402 ], [ %306, %304 ]
  switch i32 %308, label %309 [
    i32 8, label %403
    i32 0, label %403
    i32 15, label %303
  ], !llvm.loop !147

309:                                              ; preds = %307
  %310 = icmp eq i32 %308, 23
  br i1 %310, label %311, label %313

311:                                              ; preds = %309
  %312 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %313

313:                                              ; preds = %311, %309
  %314 = phi i32 [ 1, %311 ], [ 0, %309 ]
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %7, ptr noundef nonnull %6) #32
  %315 = load ptr, ptr %7, align 8, !tbaa !7
  %316 = icmp ne ptr %315, null
  %317 = load ptr, ptr %6, align 8
  %318 = icmp ne ptr %317, null
  %319 = select i1 %316, i1 %318, i1 false
  br i1 %319, label %320, label %386

320:                                              ; preds = %313
  %321 = load i32, ptr %24, align 8, !tbaa !15
  %322 = icmp eq i32 %321, 12
  br i1 %322, label %323, label %333

323:                                              ; preds = %320
  %324 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %325 = load i32, ptr %24, align 8, !tbaa !15
  %326 = icmp eq i32 %325, 3
  br i1 %326, label %327, label %330

327:                                              ; preds = %323
  %328 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %329 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br i1 %310, label %333, label %330

330:                                              ; preds = %327, %323
  %331 = phi ptr [ @.str.18.854, %323 ], [ @.str.19.855, %327 ]
  %332 = phi ptr [ null, %323 ], [ %328, %327 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %331) #30
  br label %333

333:                                              ; preds = %330, %327, %320
  %334 = phi ptr [ %328, %327 ], [ null, %320 ], [ %332, %330 ]
  %335 = load i16, ptr %18, align 8
  %336 = and i16 %335, 1
  %337 = icmp eq i16 %336, 0
  br i1 %337, label %344, label %338

338:                                              ; preds = %333
  %339 = load ptr, ptr %8, align 8, !tbaa !25
  %340 = getelementptr inbounds %struct.TreeCCInput, ptr %339, i64 0, i32 5
  %341 = load i64, ptr %340, align 8, !tbaa !21
  %342 = icmp eq ptr %334, null
  %343 = select i1 %342, ptr @.str.10.766, ptr %334
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %341, ptr noundef nonnull @.str.8.767, ptr noundef nonnull %317, ptr noundef nonnull %315, ptr noundef nonnull %343, i32 noundef %314) #30
  br label %344

344:                                              ; preds = %338, %333
  br label %345

345:                                              ; preds = %352, %344
  %346 = phi ptr [ %353, %352 ], [ %293, %344 ]
  %347 = tail call fastcc i32 @IsDeclared(ptr noundef %0, ptr noundef nonnull %346, ptr noundef nonnull %317, i32 noundef 0) #32, !range !132
  %348 = icmp eq i32 %347, 0
  br i1 %348, label %352, label %349

349:                                              ; preds = %345
  tail call void @free(ptr noundef %317) #30
  tail call void @free(ptr noundef %315) #30
  %350 = icmp eq ptr %334, null
  br i1 %350, label %384, label %351

351:                                              ; preds = %349
  tail call void @free(ptr noundef nonnull %334) #30
  br label %384

352:                                              ; preds = %345
  %353 = load ptr, ptr %346, align 8, !tbaa !45
  %354 = icmp eq ptr %353, null
  br i1 %354, label %355, label %345, !llvm.loop !148

355:                                              ; preds = %352
  %356 = tail call fastcc i32 @IsDeclaredInChildren(ptr noundef %0, ptr noundef %293, ptr noundef nonnull %317) #32, !range !132
  br label %357

357:                                              ; preds = %357, %355
  %358 = phi ptr [ %302, %355 ], [ %362, %357 ]
  %359 = phi ptr [ null, %355 ], [ %360, %357 ]
  %360 = load ptr, ptr %358, align 8, !tbaa !7
  %361 = icmp eq ptr %360, null
  %362 = getelementptr inbounds %struct._tagTreeCCField, ptr %360, i64 0, i32 6
  br i1 %361, label %363, label %357, !llvm.loop !149

363:                                              ; preds = %357
  %.lcssa4 = phi ptr [ %359, %357 ]
  %364 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #29
  %365 = icmp eq ptr %364, null
  br i1 %365, label %366, label %368

366:                                              ; preds = %363
  %367 = load ptr, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %367) #30
  unreachable

368:                                              ; preds = %363
  store ptr %317, ptr %364, align 8, !tbaa !150
  %369 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 1
  store ptr %315, ptr %369, align 8, !tbaa !46
  %370 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 2
  store ptr %334, ptr %370, align 8, !tbaa !151
  %371 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 3
  store i32 %314, ptr %371, align 8, !tbaa !152
  %372 = load ptr, ptr %8, align 8, !tbaa !25
  %373 = getelementptr inbounds %struct.TreeCCInput, ptr %372, i64 0, i32 4
  %374 = load ptr, ptr %373, align 8, !tbaa !36
  %375 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 4
  store ptr %374, ptr %375, align 8, !tbaa !48
  %376 = getelementptr inbounds %struct.TreeCCInput, ptr %372, i64 0, i32 5
  %377 = load i64, ptr %376, align 8, !tbaa !21
  %378 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 5
  store i64 %377, ptr %378, align 8, !tbaa !49
  %379 = getelementptr inbounds %struct._tagTreeCCField, ptr %364, i64 0, i32 6
  store ptr null, ptr %379, align 8, !tbaa !153
  %380 = icmp eq ptr %.lcssa4, null
  br i1 %380, label %383, label %381

381:                                              ; preds = %368
  %382 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa4, i64 0, i32 6
  store ptr %364, ptr %382, align 8, !tbaa !153
  br label %384

383:                                              ; preds = %368
  store ptr %364, ptr %302, align 8, !tbaa !154
  br label %384

384:                                              ; preds = %383, %381, %351, %349
  %385 = load i32, ptr %24, align 8, !tbaa !15
  br label %397

386:                                              ; preds = %313
  br i1 %316, label %388, label %387

387:                                              ; preds = %386
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.21.856) #30
  br label %389

388:                                              ; preds = %386
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.20.857) #30
  tail call void @free(ptr noundef nonnull %315) #30
  br label %389

389:                                              ; preds = %388, %387
  %390 = icmp eq ptr %317, null
  br i1 %390, label %392, label %391

391:                                              ; preds = %389
  tail call void @free(ptr noundef nonnull %317) #30
  br label %392

392:                                              ; preds = %391, %389
  br label %393

393:                                              ; preds = %395, %392
  %394 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %394, label %395 [
    i32 15, label %397
    i32 8, label %397
    i32 1, label %397
    i32 0, label %397
  ]

395:                                              ; preds = %393
  %396 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %393, !llvm.loop !155

397:                                              ; preds = %393, %393, %393, %393, %384
  %398 = phi i32 [ %385, %384 ], [ %394, %393 ], [ %394, %393 ], [ %394, %393 ], [ %394, %393 ]
  %399 = icmp eq i32 %398, 15
  br i1 %399, label %303, label %400, !llvm.loop !147

400:                                              ; preds = %397
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.22.858) #30
  %401 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %401, label %303 [
    i32 1, label %402
    i32 8, label %402
  ], !llvm.loop !147

402:                                              ; preds = %400, %400
  br label %307, !llvm.loop !147

403:                                              ; preds = %307, %307
  %404 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %406

405:                                              ; preds = %296
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.23.859) #30
  br label %406

406:                                              ; preds = %405, %403, %292, %273
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #28
  br label %945

407:                                              ; preds = %22
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #28
  br label %408

408:                                              ; preds = %414, %407
  %409 = phi i32 [ 0, %407 ], [ %418, %414 ]
  %410 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %411 = load i32, ptr %24, align 8, !tbaa !15
  %412 = add i32 %411, -24
  %413 = icmp ult i32 %412, 3
  br i1 %413, label %414, label %419

414:                                              ; preds = %408
  %415 = zext i32 %412 to i64
  %416 = getelementptr inbounds [3 x i32], ptr @switch.table.TreeCCParse, i64 0, i64 %415
  %417 = load i32, ptr %416, align 4
  %418 = or i32 %417, %409
  br label %408

419:                                              ; preds = %408
  %.lcssa = phi i32 [ %409, %408 ]
  %420 = and i32 %.lcssa, 3
  %421 = icmp eq i32 %420, 3
  br i1 %421, label %422, label %424

422:                                              ; preds = %419
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.28.860) #30
  %423 = and i32 %.lcssa, -3
  br label %424

424:                                              ; preds = %422, %419
  %425 = phi i32 [ %423, %422 ], [ %.lcssa, %419 ]
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %2, ptr noundef nonnull %3) #32
  %426 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %427 = load ptr, ptr %426, align 8, !tbaa !36
  %428 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %429 = load i64, ptr %428, align 8, !tbaa !21
  %430 = load ptr, ptr %2, align 8, !tbaa !7
  %431 = icmp ne ptr %430, null
  %432 = load ptr, ptr %3, align 8
  %433 = icmp ne ptr %432, null
  %434 = select i1 %431, i1 %433, i1 false
  br i1 %434, label %441, label %435

435:                                              ; preds = %424
  br i1 %431, label %437, label %436

436:                                              ; preds = %435
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.30.861) #30
  br label %438

437:                                              ; preds = %435
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.29.862) #30
  tail call void @free(ptr noundef nonnull %430) #30
  br label %438

438:                                              ; preds = %437, %436
  %439 = icmp eq ptr %432, null
  br i1 %439, label %741, label %440

440:                                              ; preds = %438
  tail call void @free(ptr noundef nonnull %432) #30
  br label %741

441:                                              ; preds = %424
  %442 = load i32, ptr %24, align 8, !tbaa !15
  %443 = icmp eq i32 %442, 16
  br i1 %443, label %444, label %452

444:                                              ; preds = %441
  %445 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %446 = load i32, ptr %24, align 8, !tbaa !15
  %447 = icmp eq i32 %446, 1
  br i1 %447, label %449, label %448

448:                                              ; preds = %444
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.29.862) #30
  tail call void @free(ptr noundef nonnull %430) #30
  tail call void @free(ptr noundef nonnull %432) #30
  br label %741

449:                                              ; preds = %444
  %450 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  store ptr %450, ptr %3, align 8, !tbaa !7
  %451 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %452

452:                                              ; preds = %449, %441
  %453 = phi ptr [ %450, %449 ], [ %432, %441 ]
  %454 = phi ptr [ %432, %449 ], [ null, %441 ]
  %455 = and i32 %425, 1
  %456 = icmp eq i32 %455, 0
  br i1 %456, label %457, label %467

457:                                              ; preds = %452
  %458 = load i32, ptr %19, align 4, !tbaa !39
  %459 = icmp eq i32 %458, 3
  br i1 %459, label %460, label %467

460:                                              ; preds = %457
  %461 = icmp eq ptr %454, null
  br i1 %461, label %465, label %462

462:                                              ; preds = %460
  %463 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %454, ptr noundef nonnull dereferenceable(1) %453) #31
  %464 = icmp eq i32 %463, 0
  br i1 %464, label %465, label %467

465:                                              ; preds = %462, %460
  %466 = phi ptr [ @.str.31.863, %460 ], [ @.str.32.864, %462 ]
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %427, i64 noundef %429, ptr noundef nonnull %466) #30
  br label %467

467:                                              ; preds = %465, %462, %457, %452
  %468 = load i32, ptr %24, align 8, !tbaa !15
  %469 = icmp eq i32 %468, 5
  br i1 %469, label %470, label %542

470:                                              ; preds = %467
  %471 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %472

472:                                              ; preds = %533, %470
  %473 = phi ptr [ null, %470 ], [ %525, %533 ]
  %474 = phi ptr [ null, %470 ], [ %526, %533 ]
  %475 = phi i32 [ 0, %470 ], [ %490, %533 ]
  %476 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %476, label %534 [
    i32 1, label %477
    i32 9, label %477
  ]

477:                                              ; preds = %472, %472
  %478 = icmp eq i32 %476, 1
  br i1 %478, label %479, label %480

479:                                              ; preds = %477
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef nonnull %5) #32
  br label %489

480:                                              ; preds = %477
  %481 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  call fastcc void @ParseTypeAndName(ptr noundef nonnull %24, ptr noundef nonnull %4, ptr noundef nonnull %5) #32
  %482 = load i32, ptr %24, align 8, !tbaa !15
  %483 = icmp eq i32 %482, 10
  br i1 %483, label %484, label %486

484:                                              ; preds = %480
  %485 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %487

486:                                              ; preds = %480
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.27.865) #30
  br label %487

487:                                              ; preds = %486, %484
  %488 = add nsw i32 %475, 1
  br label %489

489:                                              ; preds = %487, %479
  %490 = phi i32 [ %475, %479 ], [ %488, %487 ]
  %491 = phi i32 [ 0, %479 ], [ 1, %487 ]
  %492 = load ptr, ptr %4, align 8, !tbaa !7
  %493 = icmp eq ptr %492, null
  br i1 %493, label %494, label %495

494:                                              ; preds = %489
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.33.866) #30
  br label %524

495:                                              ; preds = %489
  %496 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %492, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %498, label %502

498:                                              ; preds = %495
  tail call void @free(ptr noundef nonnull %492) #30
  %499 = load ptr, ptr %5, align 8, !tbaa !7
  %500 = icmp eq ptr %499, null
  br i1 %500, label %524, label %501

501:                                              ; preds = %498
  tail call void @free(ptr noundef nonnull %499) #30
  br label %524

502:                                              ; preds = %495
  %503 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #29
  %504 = icmp eq ptr %503, null
  br i1 %504, label %505, label %506

505:                                              ; preds = %502
  %.lcssa18 = phi ptr [ %24, %502 ]
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %.lcssa18) #30
  unreachable

506:                                              ; preds = %502
  %507 = load ptr, ptr %5, align 8, !tbaa !7
  store ptr %507, ptr %503, align 8, !tbaa !94
  %508 = getelementptr inbounds %struct._tagTreeCCParam, ptr %503, i64 0, i32 1
  store ptr %492, ptr %508, align 8, !tbaa !76
  %509 = getelementptr inbounds %struct._tagTreeCCParam, ptr %503, i64 0, i32 2
  store i32 %491, ptr %509, align 8, !tbaa !74
  %510 = getelementptr inbounds %struct._tagTreeCCParam, ptr %503, i64 0, i32 3
  store i32 0, ptr %510, align 4, !tbaa !79
  %511 = getelementptr inbounds %struct._tagTreeCCParam, ptr %503, i64 0, i32 4
  store ptr null, ptr %511, align 8, !tbaa !156
  %512 = icmp eq ptr %474, null
  br i1 %512, label %515, label %513

513:                                              ; preds = %506
  %514 = getelementptr inbounds %struct._tagTreeCCParam, ptr %474, i64 0, i32 4
  store ptr %503, ptr %514, align 8, !tbaa !156
  br label %515

515:                                              ; preds = %513, %506
  %516 = phi ptr [ %473, %513 ], [ %503, %506 ]
  br i1 %478, label %524, label %517

517:                                              ; preds = %515
  %518 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef nonnull %492) #30
  %519 = icmp eq ptr %518, null
  br i1 %519, label %520, label %521

520:                                              ; preds = %517
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.35.868, ptr noundef nonnull %492) #30
  br label %524

521:                                              ; preds = %517
  %522 = load ptr, ptr %426, align 8, !tbaa !36
  %523 = load i64, ptr %428, align 8, !tbaa !21
  tail call fastcc void @ValidateSuffixes(ptr noundef %0, ptr noundef nonnull %492, ptr noundef nonnull %518, ptr noundef %522, i64 noundef %523) #32
  br label %524

524:                                              ; preds = %521, %520, %515, %501, %498, %494
  %525 = phi ptr [ %516, %520 ], [ %516, %521 ], [ %516, %515 ], [ %473, %501 ], [ %473, %498 ], [ %473, %494 ]
  %526 = phi ptr [ %503, %520 ], [ %503, %521 ], [ %503, %515 ], [ %474, %501 ], [ %474, %498 ], [ %474, %494 ]
  %527 = load i32, ptr %24, align 8, !tbaa !15
  %528 = icmp eq i32 %527, 11
  br i1 %528, label %529, label %534

529:                                              ; preds = %524
  %530 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %531 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %531, label %532 [
    i32 1, label %533
    i32 9, label %533
  ]

532:                                              ; preds = %529
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.33.866) #30
  br label %533

533:                                              ; preds = %532, %529, %529
  br label %472, !llvm.loop !157

534:                                              ; preds = %524, %472
  %535 = phi i32 [ %476, %472 ], [ %527, %524 ]
  %536 = phi ptr [ %473, %472 ], [ %525, %524 ]
  %537 = phi i32 [ %475, %472 ], [ %490, %524 ]
  %538 = icmp eq i32 %535, 6
  br i1 %538, label %539, label %541

539:                                              ; preds = %534
  %540 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %543

541:                                              ; preds = %534
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.13.846) #30
  br label %543

542:                                              ; preds = %467
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.14.847) #30
  br label %543

543:                                              ; preds = %542, %541, %539
  %544 = phi ptr [ %536, %539 ], [ %536, %541 ], [ null, %542 ]
  %545 = phi i32 [ %537, %539 ], [ %537, %541 ], [ 0, %542 ]
  %546 = load i32, ptr %24, align 8, !tbaa !15
  %547 = icmp eq i32 %546, 12
  br i1 %547, label %548, label %556

548:                                              ; preds = %543
  %549 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %550 = load i32, ptr %24, align 8, !tbaa !15
  %551 = icmp eq i32 %550, 3
  br i1 %551, label %552, label %555

552:                                              ; preds = %548
  %553 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %554 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %561

555:                                              ; preds = %548
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.36.869) #30
  br label %561

556:                                              ; preds = %543
  br i1 %456, label %557, label %564

557:                                              ; preds = %556
  %558 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %430, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %559 = icmp eq i32 %558, 0
  br i1 %559, label %561, label %560

560:                                              ; preds = %557
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.37.870) #30
  br label %561

561:                                              ; preds = %560, %557, %555, %552
  %562 = phi ptr [ null, %557 ], [ null, %560 ], [ null, %555 ], [ %553, %552 ]
  %563 = load i32, ptr %24, align 8, !tbaa !15
  br label %564

564:                                              ; preds = %561, %556
  %565 = phi i32 [ %563, %561 ], [ %546, %556 ]
  %566 = phi ptr [ %562, %561 ], [ null, %556 ]
  %567 = icmp eq i32 %565, 15
  br i1 %567, label %568, label %570

568:                                              ; preds = %564
  %569 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %570

570:                                              ; preds = %568, %564
  %571 = icmp eq i32 %545, 0
  %572 = icmp ne ptr %544, null
  %573 = select i1 %571, i1 %572, i1 false
  br i1 %573, label %574, label %584

574:                                              ; preds = %570
  %575 = getelementptr inbounds %struct._tagTreeCCParam, ptr %544, i64 0, i32 2
  %576 = load i32, ptr %575, align 8, !tbaa !74
  %577 = or i32 %576, 1
  store i32 %577, ptr %575, align 8, !tbaa !74
  %578 = getelementptr inbounds %struct._tagTreeCCParam, ptr %544, i64 0, i32 1
  %579 = load ptr, ptr %578, align 8, !tbaa !76
  %580 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %579) #30
  %581 = icmp eq ptr %580, null
  br i1 %581, label %582, label %583

582:                                              ; preds = %574
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %427, i64 noundef %429, ptr noundef nonnull @.str.35.868, ptr noundef %579) #30
  br label %584

583:                                              ; preds = %574
  tail call fastcc void @ValidateSuffixes(ptr noundef %0, ptr noundef %579, ptr noundef nonnull %580, ptr noundef %427, i64 noundef %429) #32
  br label %584

584:                                              ; preds = %583, %582, %570
  %585 = phi i32 [ 1, %582 ], [ 1, %583 ], [ %545, %570 ]
  br i1 %456, label %614, label %586

586:                                              ; preds = %584
  %587 = icmp eq ptr %544, null
  %588 = icmp ne i32 %585, 1
  %589 = select i1 %587, i1 true, i1 %588
  br i1 %589, label %595, label %590

590:                                              ; preds = %586
  %591 = getelementptr inbounds %struct._tagTreeCCParam, ptr %544, i64 0, i32 2
  %592 = load i32, ptr %591, align 8, !tbaa !74
  %593 = and i32 %592, 1
  %594 = icmp eq i32 %593, 0
  br i1 %594, label %596, label %600

595:                                              ; preds = %586
  br i1 %572, label %596, label %597

596:                                              ; preds = %595, %590
  br label %597

597:                                              ; preds = %596, %595
  %598 = phi ptr [ @.str.39.871, %596 ], [ @.str.38.872, %595 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull %598) #30
  %599 = and i32 %425, -2
  br label %614

600:                                              ; preds = %590
  %601 = getelementptr inbounds %struct._tagTreeCCParam, ptr %544, i64 0, i32 1
  %602 = load ptr, ptr %601, align 8, !tbaa !76
  %603 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %602) #30
  %604 = icmp eq ptr %603, null
  br i1 %604, label %605, label %607

605:                                              ; preds = %600
  %606 = and i32 %425, -2
  br label %614

607:                                              ; preds = %600
  %608 = getelementptr inbounds %struct._tagTreeCCNode, ptr %603, i64 0, i32 5
  %609 = load i32, ptr %608, align 8, !tbaa !40
  %610 = and i32 %609, 8
  %611 = icmp eq i32 %610, 0
  br i1 %611, label %614, label %612

612:                                              ; preds = %607
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.40.873) #30
  %613 = and i32 %425, -2
  br label %614

614:                                              ; preds = %612, %607, %605, %597, %584
  %615 = phi i32 [ %599, %597 ], [ %606, %605 ], [ %613, %612 ], [ %425, %607 ], [ %425, %584 ]
  %616 = tail call fastcc ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %453) #30
  %617 = icmp eq ptr %616, null
  br i1 %617, label %644, label %618

618:                                              ; preds = %614
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %427, i64 noundef %429, ptr noundef nonnull @.str.41.874, ptr noundef %453) #30
  %619 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %616, i64 0, i32 7
  %620 = load ptr, ptr %619, align 8, !tbaa !65
  %621 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %616, i64 0, i32 8
  %622 = load i64, ptr %621, align 8, !tbaa !66
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %620, i64 noundef %622, ptr noundef nonnull @.str.42.875) #30
  tail call void @free(ptr noundef %430) #30
  tail call void @free(ptr noundef %453) #30
  %623 = icmp eq ptr %454, null
  br i1 %623, label %625, label %624

624:                                              ; preds = %618
  tail call void @free(ptr noundef nonnull %454) #30
  br label %625

625:                                              ; preds = %624, %618
  %626 = icmp eq ptr %566, null
  br i1 %626, label %628, label %627

627:                                              ; preds = %625
  tail call void @free(ptr noundef nonnull %566) #30
  br label %628

628:                                              ; preds = %627, %625
  %629 = icmp eq ptr %544, null
  br i1 %629, label %741, label %630

630:                                              ; preds = %642, %628
  %631 = phi ptr [ %633, %642 ], [ %544, %628 ]
  %632 = getelementptr inbounds %struct._tagTreeCCParam, ptr %631, i64 0, i32 4
  %633 = load ptr, ptr %632, align 8, !tbaa !156
  %634 = load ptr, ptr %631, align 8, !tbaa !94
  %635 = icmp eq ptr %634, null
  br i1 %635, label %637, label %636

636:                                              ; preds = %630
  tail call void @free(ptr noundef nonnull %634) #30
  br label %637

637:                                              ; preds = %636, %630
  %638 = getelementptr inbounds %struct._tagTreeCCParam, ptr %631, i64 0, i32 1
  %639 = load ptr, ptr %638, align 8, !tbaa !76
  %640 = icmp eq ptr %639, null
  br i1 %640, label %642, label %641

641:                                              ; preds = %637
  tail call void @free(ptr noundef nonnull %639) #30
  br label %642

642:                                              ; preds = %641, %637
  tail call void @free(ptr noundef nonnull %631) #30
  %643 = icmp eq ptr %633, null
  br i1 %643, label %741, label %630, !llvm.loop !158

644:                                              ; preds = %614
  %645 = load i16, ptr %18, align 8
  %646 = and i16 %645, 1
  %647 = icmp eq i16 %646, 0
  br i1 %647, label %665, label %648

648:                                              ; preds = %644
  %649 = icmp eq ptr %454, null
  %650 = select i1 %649, ptr @.str.1.771, ptr %454
  %651 = select i1 %649, ptr @.str.1.771, ptr @.str.2.772
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %429, ptr noundef nonnull @.str.773, ptr noundef nonnull %430, ptr noundef nonnull %650, ptr noundef nonnull %651, ptr noundef %453, i32 noundef %615) #30
  %652 = icmp eq ptr %544, null
  br i1 %652, label %665, label %653

653:                                              ; preds = %653, %648
  %654 = phi ptr [ %663, %653 ], [ %544, %648 ]
  %655 = getelementptr inbounds %struct._tagTreeCCParam, ptr %654, i64 0, i32 1
  %656 = load ptr, ptr %655, align 8, !tbaa !76
  %657 = load ptr, ptr %654, align 8, !tbaa !94
  %658 = icmp eq ptr %657, null
  %659 = select i1 %658, ptr @.str.4.774, ptr %657
  %660 = getelementptr inbounds %struct._tagTreeCCParam, ptr %654, i64 0, i32 2
  %661 = load i32, ptr %660, align 8, !tbaa !74
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %429, ptr noundef nonnull @.str.3.775, ptr noundef %656, ptr noundef nonnull %659, i32 noundef %661) #30
  %662 = getelementptr inbounds %struct._tagTreeCCParam, ptr %654, i64 0, i32 4
  %663 = load ptr, ptr %662, align 8, !tbaa !156
  %664 = icmp eq ptr %663, null
  br i1 %664, label %665, label %653, !llvm.loop !159

665:                                              ; preds = %653, %648, %644
  %666 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #29
  %667 = icmp eq ptr %666, null
  br i1 %667, label %668, label %670

668:                                              ; preds = %665
  %669 = load ptr, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %669) #30
  unreachable

670:                                              ; preds = %665
  store ptr %453, ptr %666, align 8, !tbaa !67
  %671 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 1
  store ptr %454, ptr %671, align 8, !tbaa !102
  %672 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 2
  store ptr %430, ptr %672, align 8, !tbaa !93
  %673 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 3
  store ptr %566, ptr %673, align 8, !tbaa !160
  %674 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 4
  store ptr %544, ptr %674, align 8, !tbaa !84
  %675 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 5
  store i32 %615, ptr %675, align 8, !tbaa !53
  %676 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 6
  store i32 %585, ptr %676, align 4, !tbaa !56
  %677 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 7
  store ptr %427, ptr %677, align 8, !tbaa !65
  %678 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 8
  store i64 %429, ptr %678, align 8, !tbaa !66
  %679 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 10
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(28) %679, i8 0, i64 28, i1 false)
  %680 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 14
  %681 = load <2 x ptr>, ptr %13, align 8, !tbaa !7
  store <2 x ptr> %681, ptr %680, align 8, !tbaa !7
  %682 = load i8, ptr %453, align 1, !tbaa !11
  %683 = icmp eq i8 %682, 0
  br i1 %683, label %697, label %684

684:                                              ; preds = %684, %670
  %685 = phi i8 [ %692, %684 ], [ %682, %670 ]
  %686 = phi i32 [ %691, %684 ], [ 0, %670 ]
  %687 = phi ptr [ %690, %684 ], [ %453, %670 ]
  %688 = sext i8 %685 to i32
  %689 = mul i32 %686, 33
  %690 = getelementptr inbounds i8, ptr %687, i64 1
  %691 = add i32 %689, %688
  %692 = load i8, ptr %690, align 1, !tbaa !11
  %693 = icmp eq i8 %692, 0
  br i1 %693, label %694, label %684, !llvm.loop !161

694:                                              ; preds = %684
  %.lcssa1 = phi i32 [ %691, %684 ]
  %695 = and i32 %.lcssa1, 511
  %696 = zext i32 %695 to i64
  br label %697

697:                                              ; preds = %694, %670
  %698 = phi i64 [ 0, %670 ], [ %696, %694 ]
  %699 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !7
  %701 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %666, i64 0, i32 9
  store ptr %700, ptr %701, align 8, !tbaa !162
  store ptr %666, ptr %699, align 8, !tbaa !7
  %702 = and i32 %615, 1
  %703 = icmp eq i32 %702, 0
  br i1 %703, label %741, label %704

704:                                              ; preds = %697
  %705 = getelementptr inbounds %struct._tagTreeCCParam, ptr %544, i64 0, i32 1
  %706 = load ptr, ptr %705, align 8, !tbaa !76
  %707 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef nonnull %0, ptr noundef %706) #30
  %708 = load i16, ptr %18, align 8
  %709 = and i16 %708, 1
  %710 = icmp eq i16 %709, 0
  br i1 %710, label %714, label %711

711:                                              ; preds = %704
  %712 = getelementptr inbounds %struct._tagTreeCCNode, ptr %707, i64 0, i32 4
  %713 = load ptr, ptr %712, align 8, !tbaa !44
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %429, ptr noundef nonnull @.str.7.760, ptr noundef %713, ptr noundef nonnull %453) #30
  br label %714

714:                                              ; preds = %711, %704
  %715 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #29
  %716 = icmp eq ptr %715, null
  br i1 %716, label %717, label %719

717:                                              ; preds = %714
  %718 = load ptr, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %718) #30
  unreachable

719:                                              ; preds = %714
  %720 = load ptr, ptr %666, align 8, !tbaa !67
  store ptr %720, ptr %715, align 8, !tbaa !163
  %721 = load ptr, ptr %672, align 8, !tbaa !93
  %722 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %715, i64 0, i32 1
  store ptr %721, ptr %722, align 8, !tbaa !165
  %723 = load ptr, ptr %674, align 8, !tbaa !84
  %724 = getelementptr inbounds %struct._tagTreeCCParam, ptr %723, i64 0, i32 4
  %725 = load ptr, ptr %724, align 8, !tbaa !156
  %726 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %715, i64 0, i32 2
  store ptr %725, ptr %726, align 8, !tbaa !166
  %727 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %715, i64 0, i32 3
  store ptr %666, ptr %727, align 8, !tbaa !167
  %728 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %715, i64 0, i32 4
  store ptr null, ptr %728, align 8, !tbaa !168
  %729 = getelementptr inbounds %struct._tagTreeCCNode, ptr %707, i64 0, i32 11
  %730 = load ptr, ptr %729, align 8, !tbaa !169
  %731 = icmp eq ptr %730, null
  br i1 %731, label %739, label %732

732:                                              ; preds = %732, %719
  %733 = phi ptr [ %735, %732 ], [ %730, %719 ]
  %734 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %733, i64 0, i32 4
  %735 = load ptr, ptr %734, align 8, !tbaa !168
  %736 = icmp eq ptr %735, null
  br i1 %736, label %737, label %732, !llvm.loop !170

737:                                              ; preds = %732
  %.lcssa2 = phi ptr [ %733, %732 ]
  %738 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa2, i64 0, i32 4
  br label %739

739:                                              ; preds = %737, %719
  %740 = phi ptr [ %729, %719 ], [ %738, %737 ]
  store ptr %715, ptr %740, align 8, !tbaa !7
  br label %741

741:                                              ; preds = %739, %697, %642, %628, %448, %440, %438
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #28
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #28
  br label %945

742:                                              ; preds = %22
  %743 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %744 = load i32, ptr %24, align 8, !tbaa !15
  %745 = icmp eq i32 %744, 1
  br i1 %745, label %747, label %746

746:                                              ; preds = %742
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.44.876) #30
  br label %945

747:                                              ; preds = %742
  %748 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %749 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 4
  %750 = load ptr, ptr %749, align 8, !tbaa !36
  %751 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %752 = load i64, ptr %751, align 8, !tbaa !21
  %753 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %754 = load i32, ptr %24, align 8, !tbaa !15
  %755 = icmp eq i32 %754, 12
  br i1 %755, label %756, label %763

756:                                              ; preds = %747
  %757 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %758 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %758, label %762 [
    i32 1, label %759
    i32 17, label %759
  ]

759:                                              ; preds = %756, %756
  %760 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %761 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %763

762:                                              ; preds = %756
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.45.877) #30
  br label %763

763:                                              ; preds = %762, %759, %747
  %764 = phi ptr [ %760, %759 ], [ null, %762 ], [ null, %747 ]
  %765 = load i16, ptr %18, align 8
  %766 = and i16 %765, 1
  %767 = icmp eq i16 %766, 0
  br i1 %767, label %772, label %768

768:                                              ; preds = %763
  %769 = icmp eq ptr %764, null
  br i1 %769, label %771, label %770

770:                                              ; preds = %768
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %752, ptr noundef nonnull @.str.46.878, ptr noundef %748, ptr noundef nonnull %764) #30
  br label %772

771:                                              ; preds = %768
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %752, ptr noundef nonnull @.str.47.879, ptr noundef %748) #30
  br label %772

772:                                              ; preds = %771, %770, %763
  %773 = tail call fastcc i32 @TreeCCOptionProcess(ptr noundef nonnull %0, ptr noundef %748, ptr noundef %764) #30
  %774 = add i32 %773, -2
  %775 = icmp ult i32 %774, 4
  br i1 %775, label %776, label %780

776:                                              ; preds = %772
  %777 = zext i32 %774 to i64
  %778 = getelementptr inbounds [4 x ptr], ptr @switch.table.TreeCCParse.57, i64 0, i64 %777
  %779 = load ptr, ptr %778, align 8
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef nonnull %24, ptr noundef %750, i64 noundef %752, ptr noundef nonnull %779, ptr noundef %748) #30
  br label %780

780:                                              ; preds = %776, %772
  tail call void @free(ptr noundef %748) #30
  %781 = icmp ne i32 %773, 1
  %782 = icmp ne ptr %764, null
  %783 = select i1 %781, i1 %782, i1 false
  br i1 %783, label %784, label %945

784:                                              ; preds = %780
  tail call void @free(ptr noundef nonnull %764) #30
  br label %945

785:                                              ; preds = %22
  %786 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %787 = load ptr, ptr %8, align 8, !tbaa !25
  %788 = load i32, ptr %787, align 8, !tbaa !15
  %789 = icmp eq i32 %788, 17
  br i1 %789, label %790, label %806

790:                                              ; preds = %785
  %791 = getelementptr inbounds %struct.TreeCCInput, ptr %787, i64 0, i32 1
  %792 = load ptr, ptr %791, align 8, !tbaa !19
  %793 = tail call fastcc ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef %792, ptr noundef %792, i32 noundef 1) #30
  store ptr %793, ptr %13, align 8, !tbaa !34
  %794 = load ptr, ptr %8, align 8, !tbaa !25
  %795 = getelementptr inbounds %struct.TreeCCInput, ptr %794, i64 0, i32 10
  %796 = load i32, ptr %795, align 4, !tbaa !171
  %797 = getelementptr inbounds %struct._tagTreeCCStream, ptr %793, i64 0, i32 7
  %798 = load i8, ptr %797, align 4
  %799 = trunc i32 %796 to i8
  %800 = shl i8 %799, 1
  %801 = and i8 %800, 2
  %802 = or i8 %801, %798
  store i8 %802, ptr %797, align 4
  %803 = load ptr, ptr %14, align 8, !tbaa !91
  %804 = icmp eq ptr %803, null
  br i1 %804, label %805, label %942

805:                                              ; preds = %790
  store ptr %793, ptr %14, align 8, !tbaa !91
  br label %942

806:                                              ; preds = %785
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %787, ptr noundef nonnull @.str.1.880) #30
  br label %945

807:                                              ; preds = %22
  %808 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %809 = load ptr, ptr %8, align 8, !tbaa !25
  %810 = load i32, ptr %809, align 8, !tbaa !15
  %811 = icmp eq i32 %810, 17
  br i1 %811, label %812, label %828

812:                                              ; preds = %807
  %813 = getelementptr inbounds %struct.TreeCCInput, ptr %809, i64 0, i32 1
  %814 = load ptr, ptr %813, align 8, !tbaa !19
  %815 = tail call fastcc ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef %814, ptr noundef %814, i32 noundef 0) #30
  store ptr %815, ptr %15, align 8, !tbaa !33
  %816 = load ptr, ptr %8, align 8, !tbaa !25
  %817 = getelementptr inbounds %struct.TreeCCInput, ptr %816, i64 0, i32 10
  %818 = load i32, ptr %817, align 4, !tbaa !171
  %819 = getelementptr inbounds %struct._tagTreeCCStream, ptr %815, i64 0, i32 7
  %820 = load i8, ptr %819, align 4
  %821 = trunc i32 %818 to i8
  %822 = shl i8 %821, 1
  %823 = and i8 %822, 2
  %824 = or i8 %823, %820
  store i8 %824, ptr %819, align 4
  %825 = load ptr, ptr %16, align 8, !tbaa !98
  %826 = icmp eq ptr %825, null
  br i1 %826, label %827, label %942

827:                                              ; preds = %812
  store ptr %815, ptr %16, align 8, !tbaa !98
  br label %942

828:                                              ; preds = %807
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %809, ptr noundef nonnull @.str.2.881) #30
  br label %945

829:                                              ; preds = %22
  %830 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %831 = load ptr, ptr %8, align 8, !tbaa !25
  %832 = load i32, ptr %831, align 8, !tbaa !15
  %833 = icmp eq i32 %832, 17
  br i1 %833, label %834, label %840

834:                                              ; preds = %829
  %835 = getelementptr inbounds %struct.TreeCCInput, ptr %831, i64 0, i32 4
  %836 = load ptr, ptr %835, align 8, !tbaa !36
  %837 = getelementptr inbounds %struct.TreeCCInput, ptr %831, i64 0, i32 1
  %838 = load ptr, ptr %837, align 8, !tbaa !19
  %839 = tail call fastcc ptr @TreeCCResolvePathname(ptr noundef %836, ptr noundef %838) #30
  store ptr %839, ptr %17, align 8, !tbaa !30
  br label %942

840:                                              ; preds = %829
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %831, ptr noundef nonnull @.str.2.881) #30
  br label %945

841:                                              ; preds = %22
  %842 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %843 = load i32, ptr %24, align 8, !tbaa !15
  %844 = icmp eq i32 %843, 1
  br i1 %844, label %846, label %845

845:                                              ; preds = %841
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.52.882) #30
  br label %945

846:                                              ; preds = %841
  %847 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %848 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 5
  %849 = load i64, ptr %848, align 8, !tbaa !21
  %850 = tail call fastcc ptr @TreeCCNodeCreate(ptr noundef nonnull %0, i64 noundef %849, ptr noundef %847, ptr noundef null, i32 noundef 14) #30
  %851 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %852 = load i32, ptr %24, align 8, !tbaa !15
  %853 = icmp eq i32 %852, 12
  br i1 %853, label %855, label %854

854:                                              ; preds = %846
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.53.883) #30
  br label %945

855:                                              ; preds = %846
  %856 = getelementptr inbounds %struct.TreeCCInput, ptr %24, i64 0, i32 9
  store i32 0, ptr %856, align 8, !tbaa !146
  %857 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  store i32 1, ptr %856, align 8, !tbaa !146
  %858 = load i32, ptr %24, align 8, !tbaa !15
  %859 = icmp eq i32 %858, 7
  br i1 %859, label %861, label %860

860:                                              ; preds = %855
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.54.884) #30
  br label %945

861:                                              ; preds = %855
  %862 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %863 = load i32, ptr %24, align 8, !tbaa !15
  %864 = icmp eq i32 %863, 1
  br i1 %864, label %865, label %881

865:                                              ; preds = %861
  %866 = getelementptr inbounds %struct._tagTreeCCNode, ptr %850, i64 0, i32 4
  br label %867

867:                                              ; preds = %878, %865
  %868 = load i64, ptr %848, align 8, !tbaa !21
  %869 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %24) #30
  %870 = load ptr, ptr %866, align 8, !tbaa !44
  %871 = tail call fastcc ptr @TreeCCDupString(ptr noundef %870) #30
  %872 = tail call fastcc ptr @TreeCCNodeCreate(ptr noundef %0, i64 noundef %868, ptr noundef %869, ptr noundef %871, i32 noundef 16) #30
  %873 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %874 = load i32, ptr %24, align 8, !tbaa !15
  switch i32 %874, label %881 [
    i32 11, label %875
    i32 1, label %877
  ]

875:                                              ; preds = %867
  %876 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %878

877:                                              ; preds = %867
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.7.845) #30
  br label %878

878:                                              ; preds = %877, %875
  %879 = load i32, ptr %24, align 8, !tbaa !15
  %880 = icmp eq i32 %879, 1
  br i1 %880, label %867, label %881, !llvm.loop !172

881:                                              ; preds = %878, %867, %861
  %882 = phi i32 [ %863, %861 ], [ %874, %867 ], [ %879, %878 ]
  %883 = icmp eq i32 %882, 11
  br i1 %883, label %884, label %886

884:                                              ; preds = %881
  %885 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %886

886:                                              ; preds = %884, %881
  br i1 %864, label %888, label %887

887:                                              ; preds = %886
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.55.885) #30
  br label %888

888:                                              ; preds = %887, %886
  %889 = load i32, ptr %24, align 8, !tbaa !15
  %890 = icmp eq i32 %889, 8
  br i1 %890, label %891, label %893

891:                                              ; preds = %888
  %892 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  br label %945

893:                                              ; preds = %888
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.56.886) #30
  br label %945

894:                                              ; preds = %22
  %895 = load <2 x ptr>, ptr %13, align 8, !tbaa !7
  store <2 x ptr> %895, ptr %14, align 8, !tbaa !7
  br label %942

896:                                              ; preds = %22
  %897 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %24) #30, !range !132
  %898 = load ptr, ptr %8, align 8, !tbaa !25
  %899 = load i32, ptr %898, align 8, !tbaa !15
  %900 = icmp eq i32 %899, 37
  br i1 %900, label %901, label %905

901:                                              ; preds = %896
  %902 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %898) #30, !range !132
  %903 = load ptr, ptr %8, align 8, !tbaa !25
  %904 = load i32, ptr %903, align 8, !tbaa !15
  br label %905

905:                                              ; preds = %901, %896
  %906 = phi i32 [ %904, %901 ], [ %899, %896 ]
  %907 = phi ptr [ %903, %901 ], [ %898, %896 ]
  %908 = icmp eq i32 %906, 17
  br i1 %908, label %909, label %934

909:                                              ; preds = %905
  %910 = getelementptr inbounds %struct.TreeCCInput, ptr %907, i64 0, i32 4
  %911 = load ptr, ptr %910, align 8, !tbaa !36
  %912 = getelementptr inbounds %struct.TreeCCInput, ptr %907, i64 0, i32 1
  %913 = load ptr, ptr %912, align 8, !tbaa !19
  %914 = tail call fastcc ptr @TreeCCResolvePathname(ptr noundef %911, ptr noundef %913) #30
  %915 = tail call noalias ptr @fopen(ptr noundef %914, ptr noundef nonnull @.str.1.928) #32
  %916 = icmp eq ptr %915, null
  br i1 %916, label %932, label %917

917:                                              ; preds = %909
  %918 = tail call noalias dereferenceable_or_null(1096) ptr @malloc(i64 noundef 1096) #29
  %919 = load ptr, ptr %8, align 8, !tbaa !25
  %920 = icmp eq ptr %918, null
  br i1 %920, label %921, label %922

921:                                              ; preds = %917
  %.lcssa16 = phi ptr [ %919, %917 ]
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %.lcssa16) #30
  unreachable

922:                                              ; preds = %917
  %923 = getelementptr inbounds %struct.TreeCCInput, ptr %919, i64 0, i32 2
  %924 = load ptr, ptr %923, align 8, !tbaa !20
  store i32 1, ptr %918, align 8, !tbaa !15
  %925 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 1
  store ptr null, ptr %925, align 8, !tbaa !19
  %926 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 2
  store ptr %924, ptr %926, align 8, !tbaa !20
  %927 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 3
  store ptr %915, ptr %927, align 8, !tbaa !35
  %928 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 4
  store ptr %914, ptr %928, align 8, !tbaa !36
  %929 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 5
  store i64 1, ptr %929, align 8, !tbaa !21
  %930 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 6
  store i64 1, ptr %930, align 8, !tbaa !22
  %931 = getelementptr inbounds %struct.TreeCCInput, ptr %918, i64 0, i32 7
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %931, align 8, !tbaa !23
  store ptr %918, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCParse(ptr noundef nonnull %0) #32
  store ptr %919, ptr %8, align 8, !tbaa !25
  tail call fastcc void @TreeCCClose(ptr noundef nonnull %918, i32 noundef 1) #30
  tail call void @free(ptr noundef nonnull %918) #30
  br label %942

932:                                              ; preds = %909
  %933 = load ptr, ptr %8, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %933, ptr noundef nonnull @.str.4.888, ptr noundef %914) #30
  tail call void @free(ptr noundef %914) #30
  br label %942

934:                                              ; preds = %905
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %907, ptr noundef nonnull @.str.5.889) #30
  br label %942

935:                                              ; preds = %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22, %22
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %24, ptr noundef nonnull @.str.6.890) #30
  %936 = load ptr, ptr %8, align 8, !tbaa !25
  br label %937

937:                                              ; preds = %937, %935
  %938 = phi ptr [ %940, %937 ], [ %936, %935 ]
  %939 = tail call fastcc i32 @TreeCCNextToken(ptr noundef %938) #30, !range !132
  %940 = load ptr, ptr %8, align 8, !tbaa !25
  %941 = load i32, ptr %940, align 8, !tbaa !15
  switch i32 %941, label %937 [
    i32 0, label %945
    i32 1, label %945
    i32 2, label %945
    i32 4, label %945
    i32 19, label %945
    i32 22, label %945
    i32 27, label %945
    i32 28, label %945
    i32 29, label %945
    i32 31, label %945
    i32 32, label %945
    i32 33, label %945
    i32 34, label %945
    i32 35, label %945
    i32 36, label %945
  ], !llvm.loop !173

942:                                              ; preds = %934, %932, %922, %894, %834, %827, %812, %805, %790, %263, %261, %22
  %943 = load ptr, ptr %8, align 8, !tbaa !25
  %944 = tail call fastcc i32 @TreeCCNextToken(ptr noundef %943) #30, !range !132
  br label %945

945:                                              ; preds = %942, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %937, %893, %891, %860, %854, %845, %840, %828, %806, %784, %780, %746, %741, %406, %266, %228, %224, %223
  %946 = load ptr, ptr %8, align 8, !tbaa !25
  %947 = load i32, ptr %946, align 8, !tbaa !15
  %948 = icmp eq i32 %947, 0
  br i1 %948, label %949, label %22, !llvm.loop !174

949:                                              ; preds = %945, %1
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare void @perror(ptr nocapture noundef readonly) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCClose(ptr noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !19
  %5 = icmp eq ptr %4, null
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %7 = icmp eq ptr %4, %6
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %10, label %9

9:                                                ; preds = %2
  tail call void @free(ptr noundef nonnull %4) #30
  br label %10

10:                                               ; preds = %9, %2
  %11 = icmp eq i32 %1, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %10
  %13 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !35
  %15 = tail call i32 @fclose(ptr noundef %14) #32
  br label %16

16:                                               ; preds = %12, %10
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCErrorOnLine(ptr noundef writeonly %0, ptr noundef %1, i64 noundef %2, ptr nocapture noundef readonly %3, ...) unnamed_addr #5 {
  %5 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #28
  call void @llvm.va_start(ptr nonnull %5)
  call fastcc void @ReportError(ptr noundef %1, i64 noundef %2, ptr noundef %3, ptr noundef nonnull %5) #32
  call void @llvm.va_end(ptr nonnull %5)
  %6 = icmp eq ptr %0, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 7
  store i32 1, ptr %8, align 8, !tbaa !37
  br label %9

9:                                                ; preds = %7, %4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #28
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @TreeCCNodeFindByType(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %4 = trunc i64 %3 to i32
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %6, label %18

6:                                                ; preds = %2
  %7 = add i64 %3, 4294967295
  %8 = and i64 %7, 4294967295
  %9 = getelementptr inbounds i8, ptr %1, i64 %8
  %10 = load i8, ptr %9, align 1, !tbaa !11
  %11 = icmp eq i8 %10, 42
  br i1 %11, label %12, label %18

12:                                               ; preds = %6
  %13 = add nsw i32 %4, -2
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds i8, ptr %1, i64 %14
  %16 = load i8, ptr %15, align 1, !tbaa !11
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
  %29 = load i8, ptr %26, align 1, !tbaa !11
  %30 = sext i8 %29 to i32
  %31 = add i32 %27, %30
  %32 = add nsw i32 %25, -1
  %33 = icmp ugt i32 %25, 1
  br i1 %33, label %23, label %34, !llvm.loop !175

34:                                               ; preds = %23
  %.lcssa1 = phi i32 [ %31, %23 ]
  %35 = and i32 %.lcssa1, 511
  %36 = zext i32 %35 to i64
  br label %37

37:                                               ; preds = %34, %19
  %38 = phi i64 [ 0, %19 ], [ %36, %34 ]
  %39 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %38
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %69, label %42

42:                                               ; preds = %37
  %43 = sext i32 %20 to i64
  br label %44

44:                                               ; preds = %65, %42
  %45 = phi ptr [ %40, %42 ], [ %67, %65 ]
  %46 = getelementptr inbounds %struct._tagTreeCCNode, ptr %45, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !44
  %48 = tail call i32 @strncmp(ptr noundef %47, ptr noundef %1, i64 noundef %43) #31
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %65

50:                                               ; preds = %44
  %51 = getelementptr inbounds i8, ptr %47, i64 %43
  %52 = load i8, ptr %51, align 1, !tbaa !11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %50
  %.lcssa = phi ptr [ %45, %50 ]
  %55 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 5
  %56 = load i32, ptr %55, align 8, !tbaa !40
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
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = icmp eq ptr %67, null
  br i1 %68, label %69, label %44, !llvm.loop !176

69:                                               ; preds = %65, %61, %59, %37
  %70 = phi ptr [ %60, %59 ], [ %64, %61 ], [ null, %37 ], [ null, %65 ]
  ret ptr %70
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @CaseCompare(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #13 {
  %3 = load ptr, ptr %0, align 8, !tbaa !7
  %4 = load ptr, ptr %1, align 8, !tbaa !7
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = load ptr, ptr %3, align 8, !tbaa !7
  %7 = icmp ne ptr %6, null
  %8 = icmp ne ptr %5, null
  %9 = select i1 %7, i1 %8, i1 false
  br i1 %9, label %10, label %80

10:                                               ; preds = %63, %2
  %11 = phi ptr [ %67, %63 ], [ %6, %2 ]
  %12 = phi ptr [ %66, %63 ], [ %5, %2 ]
  %13 = load ptr, ptr %11, align 8, !tbaa !69
  %14 = load ptr, ptr %12, align 8, !tbaa !69
  %15 = icmp eq ptr %13, %14
  br i1 %15, label %63, label %16

16:                                               ; preds = %20, %10
  %.lcssa5 = phi ptr [ %.lcssa5, %20 ], [ %13, %10 ]
  %.lcssa4 = phi ptr [ %.lcssa4, %20 ], [ %14, %10 ]
  %17 = phi ptr [ %18, %20 ], [ %13, %10 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  br i1 %19, label %22, label %20

20:                                               ; preds = %16
  %21 = icmp eq ptr %18, %.lcssa4
  br i1 %21, label %80, label %16, !llvm.loop !177

22:                                               ; preds = %26, %16
  %.lcssa5.lcssa = phi ptr [ %.lcssa5.lcssa, %26 ], [ %.lcssa5, %16 ]
  %.lcssa4.lcssa = phi ptr [ %.lcssa4.lcssa, %26 ], [ %.lcssa4, %16 ]
  %.lcssa3 = phi ptr [ %.lcssa3, %26 ], [ %17, %16 ]
  %23 = phi ptr [ %24, %26 ], [ %.lcssa4, %16 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = icmp eq ptr %24, %.lcssa5.lcssa
  br i1 %27, label %80, label %22, !llvm.loop !178

28:                                               ; preds = %22
  %.lcssa5.lcssa.lcssa = phi ptr [ %.lcssa5.lcssa, %22 ]
  %.lcssa4.lcssa.lcssa = phi ptr [ %.lcssa4.lcssa, %22 ]
  %.lcssa3.lcssa = phi ptr [ %.lcssa3, %22 ]
  %.lcssa2 = phi ptr [ %23, %22 ]
  %29 = icmp eq ptr %.lcssa3.lcssa, %.lcssa2
  br i1 %29, label %30, label %71

30:                                               ; preds = %28
  %31 = load ptr, ptr %.lcssa5.lcssa.lcssa, align 8, !tbaa !45
  %32 = icmp eq ptr %31, null
  br i1 %32, label %40, label %33

33:                                               ; preds = %33, %30
  %34 = phi ptr [ %38, %33 ], [ %31, %30 ]
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %34, i64 0, i32 5
  %36 = load i32, ptr %35, align 8, !tbaa !40
  %37 = or i32 %36, 256
  store i32 %37, ptr %35, align 8, !tbaa !40
  %38 = load ptr, ptr %34, align 8, !tbaa !45
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %33, !llvm.loop !179

40:                                               ; preds = %33, %30
  br label %41

41:                                               ; preds = %45, %40
  %42 = phi ptr [ %43, %45 ], [ %.lcssa4.lcssa.lcssa, %40 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  %46 = getelementptr inbounds %struct._tagTreeCCNode, ptr %43, i64 0, i32 5
  %47 = load i32, ptr %46, align 8, !tbaa !40
  %48 = and i32 %47, 256
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %41, label %50, !llvm.loop !180

50:                                               ; preds = %45, %41
  %.lcssa1 = phi ptr [ %42, %45 ], [ %42, %41 ]
  %.lcssa = phi ptr [ %43, %45 ], [ %43, %41 ]
  br i1 %32, label %58, label %51

51:                                               ; preds = %51, %50
  %52 = phi ptr [ %56, %51 ], [ %31, %50 ]
  %53 = getelementptr inbounds %struct._tagTreeCCNode, ptr %52, i64 0, i32 5
  %54 = load i32, ptr %53, align 8, !tbaa !40
  %55 = and i32 %54, -257
  store i32 %55, ptr %53, align 8, !tbaa !40
  %56 = load ptr, ptr %52, align 8, !tbaa !45
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %51, !llvm.loop !181

58:                                               ; preds = %51, %50
  br label %59

59:                                               ; preds = %59, %58
  %60 = phi ptr [ %61, %59 ], [ %.lcssa5.lcssa.lcssa, %58 ]
  %61 = load ptr, ptr %60, align 8, !tbaa !45
  %62 = icmp eq ptr %61, %.lcssa
  br i1 %62, label %71, label %59, !llvm.loop !182

63:                                               ; preds = %10
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %11, i64 0, i32 1
  %65 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %12, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !7
  %67 = load ptr, ptr %64, align 8, !tbaa !7
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %66, null
  %70 = select i1 %68, i1 %69, i1 false
  br i1 %70, label %10, label %80, !llvm.loop !183

71:                                               ; preds = %59, %28
  %72 = phi ptr [ %.lcssa3.lcssa, %28 ], [ %60, %59 ]
  %73 = phi ptr [ %.lcssa2, %28 ], [ %.lcssa1, %59 ]
  %74 = getelementptr inbounds %struct._tagTreeCCNode, ptr %72, i64 0, i32 6
  %75 = load i32, ptr %74, align 4, !tbaa !184
  %76 = getelementptr inbounds %struct._tagTreeCCNode, ptr %73, i64 0, i32 6
  %77 = load i32, ptr %76, align 4, !tbaa !184
  %78 = icmp slt i32 %75, %77
  %79 = select i1 %78, i32 -1, i32 1
  br label %80

80:                                               ; preds = %71, %63, %26, %20, %2
  %81 = phi i32 [ 0, %2 ], [ %79, %71 ], [ 1, %26 ], [ -1, %20 ], [ 0, %63 ]
  ret i32 %81
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @VerifyHierarchy(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !40
  %6 = and i32 %5, 256
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %30

8:                                                ; preds = %3
  %9 = and i32 %5, 2
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %21

11:                                               ; preds = %8
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 7
  %15 = load ptr, ptr %14, align 8, !tbaa !65
  %16 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 8
  %17 = load i64, ptr %16, align 8, !tbaa !66
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  %20 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %13, ptr noundef %15, i64 noundef %17, ptr noundef nonnull @.str.11.788, ptr noundef %19, ptr noundef %20) #30
  br label %30

21:                                               ; preds = %8
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %30, label %25

25:                                               ; preds = %25, %21
  %26 = phi ptr [ %28, %25 ], [ %23, %21 ]
  tail call fastcc void @VerifyHierarchy(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %26) #32
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 3
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %25, !llvm.loop !185

30:                                               ; preds = %25, %21, %11, %3
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc i32 @AssignPositions(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %13, label %6

6:                                                ; preds = %6, %2
  %7 = phi ptr [ %11, %6 ], [ %4, %2 ]
  %8 = phi i32 [ %9, %6 ], [ %1, %2 ]
  %9 = tail call fastcc i32 @AssignPositions(ptr noundef nonnull %7, i32 noundef %8) #32
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %7, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %6, !llvm.loop !186

13:                                               ; preds = %6, %2
  %14 = phi i32 [ %1, %2 ], [ %9, %6 ]
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %0, i64 0, i32 7
  store i32 %14, ptr %15, align 8, !tbaa !187
  %16 = add nsw i32 %14, 1
  ret i32 %16
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MarkMultiCase(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5) unnamed_addr #15 {
  %7 = icmp eq ptr %3, null
  br i1 %7, label %18, label %8

8:                                                ; preds = %14, %6
  %9 = phi ptr [ %16, %14 ], [ %3, %6 ]
  %10 = getelementptr inbounds %struct._tagTreeCCParam, ptr %9, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !74
  %12 = and i32 %11, 1
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %9, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %8, !llvm.loop !188

18:                                               ; preds = %14, %6
  %19 = sext i32 %1 to i64
  %20 = getelementptr inbounds ptr, ptr %0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  store ptr %4, ptr %20, align 8, !tbaa !7
  br label %26

24:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %25 = load ptr, ptr %5, align 8, !tbaa !69
  tail call fastcc void @MarkMultiScan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef nonnull %.lcssa, ptr noundef %4, ptr noundef nonnull %5, ptr noundef %25) #32
  br label %26

26:                                               ; preds = %24, %23, %18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @VerifyMultiCoverage(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr noundef readonly %5, ptr nocapture noundef readonly %6, ptr nocapture noundef writeonly %7) unnamed_addr #0 {
  %9 = icmp eq ptr %5, null
  br i1 %9, label %20, label %10

10:                                               ; preds = %16, %8
  %11 = phi ptr [ %18, %16 ], [ %5, %8 ]
  %12 = getelementptr inbounds %struct._tagTreeCCParam, ptr %11, i64 0, i32 2
  %13 = load i32, ptr %12, align 8, !tbaa !74
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %87

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %11, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %10, !llvm.loop !189

20:                                               ; preds = %16, %8
  %21 = sext i32 %3 to i64
  %22 = getelementptr inbounds ptr, ptr %2, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %25, label %93

25:                                               ; preds = %20
  %26 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 6
  %27 = load i32, ptr %26, align 4, !tbaa !56
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %76

29:                                               ; preds = %25
  %30 = zext i32 %27 to i64
  br label %34

31:                                               ; preds = %34
  %32 = add nuw nsw i64 %35, 1
  %33 = icmp eq i64 %32, %30
  br i1 %33, label %42, label %34, !llvm.loop !190

34:                                               ; preds = %31, %29
  %35 = phi i64 [ 0, %29 ], [ %32, %31 ]
  %36 = getelementptr inbounds ptr, ptr %6, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = and i32 %39, 2
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %31, label %93

42:                                               ; preds = %70, %31
  %43 = phi i64 [ %72, %70 ], [ 0, %31 ]
  %44 = phi ptr [ %71, %70 ], [ null, %31 ]
  %45 = getelementptr inbounds ptr, ptr %6, i64 %43
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = getelementptr inbounds %struct._tagTreeCCNode, ptr %46, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !44
  %49 = icmp eq ptr %44, null
  br i1 %49, label %68, label %50

50:                                               ; preds = %42
  %51 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %44) #31
  %52 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %48) #31
  %53 = add i64 %52, %51
  %54 = shl i64 %53, 32
  %55 = add i64 %54, 12884901888
  %56 = ashr exact i64 %55, 32
  %57 = tail call ptr @realloc(ptr noundef nonnull %44, i64 noundef %56) #37
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %62

59:                                               ; preds = %50
  %60 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %61) #30
  unreachable

62:                                               ; preds = %50
  %63 = shl i64 %51, 32
  %64 = ashr exact i64 %63, 32
  %65 = getelementptr inbounds i8, ptr %57, i64 %64
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %65, ptr noundef nonnull align 1 dereferenceable(3) @.str.15.785, i64 3, i1 false) #30
  %66 = getelementptr inbounds i8, ptr %65, i64 2
  %67 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %66, ptr noundef nonnull dereferenceable(1) %48) #30
  br label %70

68:                                               ; preds = %42
  %69 = tail call fastcc ptr @TreeCCDupString(ptr noundef %48) #30
  br label %70

70:                                               ; preds = %68, %62
  %71 = phi ptr [ %57, %62 ], [ %69, %68 ]
  %72 = add nuw nsw i64 %43, 1
  %73 = load i32, ptr %26, align 4, !tbaa !56
  %74 = sext i32 %73 to i64
  %75 = icmp slt i64 %72, %74
  br i1 %75, label %42, label %78, !llvm.loop !191

76:                                               ; preds = %25
  %77 = tail call fastcc ptr @TreeCCDupString(ptr noundef nonnull @.str.13.786) #30
  br label %78

78:                                               ; preds = %76, %70
  %79 = phi ptr [ %77, %76 ], [ %71, %70 ]
  %80 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %81 = load ptr, ptr %80, align 8, !tbaa !25
  %82 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 7
  %83 = load ptr, ptr %82, align 8, !tbaa !65
  %84 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 8
  %85 = load i64, ptr %84, align 8, !tbaa !66
  %86 = load ptr, ptr %1, align 8, !tbaa !67
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %81, ptr noundef %83, i64 noundef %85, ptr noundef nonnull @.str.14.787, ptr noundef %79, ptr noundef %86) #30
  tail call void @free(ptr noundef %79) #30
  br label %93

87:                                               ; preds = %10
  %.lcssa = phi ptr [ %11, %10 ]
  %88 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !76
  %90 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %89) #30
  %91 = icmp eq ptr %90, null
  br i1 %91, label %93, label %92

92:                                               ; preds = %87
  tail call fastcc void @VerifyMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef nonnull %.lcssa, ptr noundef nonnull %90, ptr noundef %6, ptr noundef %7) #32
  br label %93

93:                                               ; preds = %92, %87, %78, %34, %20
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCContextDestroy(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !130
  %4 = icmp eq ptr %3, null
  br i1 %4, label %29, label %5

5:                                                ; preds = %23, %1
  %6 = phi ptr [ %8, %23 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !131
  tail call fastcc void @TreeCCStreamClear(ptr noundef nonnull %6) #32
  %9 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !192
  %11 = icmp eq ptr %10, null
  br i1 %11, label %23, label %12

12:                                               ; preds = %21, %5
  %13 = phi ptr [ %15, %21 ], [ %10, %5 ]
  %14 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %13, i64 0, i32 5
  %15 = load ptr, ptr %14, align 8, !tbaa !193
  %16 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %13, i64 0, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !195
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %12
  %20 = load ptr, ptr %13, align 8, !tbaa !196
  tail call void @free(ptr noundef %20) #30
  br label %21

21:                                               ; preds = %19, %12
  tail call void @free(ptr noundef nonnull %13) #30
  %22 = icmp eq ptr %15, null
  br i1 %22, label %23, label %12, !llvm.loop !197

23:                                               ; preds = %21, %5
  %24 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !114
  tail call void @free(ptr noundef %25) #30
  %26 = getelementptr inbounds %struct._tagTreeCCStream, ptr %6, i64 0, i32 2
  %27 = load ptr, ptr %26, align 8, !tbaa !88
  tail call void @free(ptr noundef %27) #30
  tail call void @free(ptr noundef %6) #30
  %28 = icmp eq ptr %8, null
  br i1 %28, label %29, label %5, !llvm.loop !198

29:                                               ; preds = %23, %1
  br label %30

30:                                               ; preds = %68, %29
  %31 = phi i64 [ %69, %68 ], [ 0, %29 ]
  %32 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %31
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %68, label %35

35:                                               ; preds = %64, %30
  %36 = phi ptr [ %38, %64 ], [ %33, %30 ]
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 12
  %38 = load ptr, ptr %37, align 8, !tbaa !199
  %39 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 10
  %40 = load ptr, ptr %39, align 8, !tbaa !154
  %41 = icmp eq ptr %40, null
  br i1 %41, label %55, label %42

42:                                               ; preds = %53, %35
  %43 = phi ptr [ %45, %53 ], [ %40, %35 ]
  %44 = getelementptr inbounds %struct._tagTreeCCField, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !153
  %46 = load ptr, ptr %43, align 8, !tbaa !150
  tail call void @free(ptr noundef %46) #30
  %47 = getelementptr inbounds %struct._tagTreeCCField, ptr %43, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !46
  tail call void @free(ptr noundef %48) #30
  %49 = getelementptr inbounds %struct._tagTreeCCField, ptr %43, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !151
  %51 = icmp eq ptr %50, null
  br i1 %51, label %53, label %52

52:                                               ; preds = %42
  tail call void @free(ptr noundef nonnull %50) #30
  br label %53

53:                                               ; preds = %52, %42
  tail call void @free(ptr noundef nonnull %43) #30
  %54 = icmp eq ptr %45, null
  br i1 %54, label %55, label %42, !llvm.loop !200

55:                                               ; preds = %53, %35
  %56 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 11
  %57 = load ptr, ptr %56, align 8, !tbaa !169
  %58 = icmp eq ptr %57, null
  br i1 %58, label %64, label %59

59:                                               ; preds = %59, %55
  %60 = phi ptr [ %62, %59 ], [ %57, %55 ]
  %61 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %60, i64 0, i32 4
  %62 = load ptr, ptr %61, align 8, !tbaa !168
  tail call void @free(ptr noundef nonnull %60) #30
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %59, !llvm.loop !201

64:                                               ; preds = %59, %55
  %65 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 4
  %66 = load ptr, ptr %65, align 8, !tbaa !44
  tail call void @free(ptr noundef %66) #30
  tail call void @free(ptr noundef %36) #30
  %67 = icmp eq ptr %38, null
  br i1 %67, label %68, label %35, !llvm.loop !202

68:                                               ; preds = %64, %30
  %69 = add nuw nsw i64 %31, 1
  %70 = icmp eq i64 %69, 512
  br i1 %70, label %71, label %30, !llvm.loop !203

71:                                               ; preds = %135, %68
  %72 = phi i64 [ %136, %135 ], [ 0, %68 ]
  %73 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %135, label %76

76:                                               ; preds = %133, %71
  %77 = phi ptr [ %79, %133 ], [ %74, %71 ]
  %78 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 9
  %79 = load ptr, ptr %78, align 8, !tbaa !162
  %80 = load ptr, ptr %77, align 8, !tbaa !67
  tail call void @free(ptr noundef %80) #30
  %81 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 1
  %82 = load ptr, ptr %81, align 8, !tbaa !102
  %83 = icmp eq ptr %82, null
  br i1 %83, label %85, label %84

84:                                               ; preds = %76
  tail call void @free(ptr noundef nonnull %82) #30
  br label %85

85:                                               ; preds = %84, %76
  %86 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !93
  tail call void @free(ptr noundef %87) #30
  %88 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 4
  %89 = load ptr, ptr %88, align 8, !tbaa !84
  %90 = icmp eq ptr %89, null
  br i1 %90, label %102, label %91

91:                                               ; preds = %98, %85
  %92 = phi ptr [ %94, %98 ], [ %89, %85 ]
  %93 = getelementptr inbounds %struct._tagTreeCCParam, ptr %92, i64 0, i32 4
  %94 = load ptr, ptr %93, align 8, !tbaa !156
  %95 = load ptr, ptr %92, align 8, !tbaa !94
  %96 = icmp eq ptr %95, null
  br i1 %96, label %98, label %97

97:                                               ; preds = %91
  tail call void @free(ptr noundef nonnull %95) #30
  br label %98

98:                                               ; preds = %97, %91
  %99 = getelementptr inbounds %struct._tagTreeCCParam, ptr %92, i64 0, i32 1
  %100 = load ptr, ptr %99, align 8, !tbaa !76
  tail call void @free(ptr noundef %100) #30
  %101 = icmp eq ptr %94, null
  br i1 %101, label %102, label %91, !llvm.loop !204

102:                                              ; preds = %98, %85
  %103 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 10
  %104 = load ptr, ptr %103, align 8, !tbaa !60
  %105 = icmp eq ptr %104, null
  br i1 %105, label %128, label %106

106:                                              ; preds = %126, %102
  %107 = phi ptr [ %109, %126 ], [ %104, %102 ]
  %108 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %107, i64 0, i32 8
  %109 = load ptr, ptr %108, align 8, !tbaa !61
  %110 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %107, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !137
  %112 = icmp eq ptr %111, null
  br i1 %112, label %118, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %107, i64 0, i32 9
  %115 = load ptr, ptr %114, align 8, !tbaa !140
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %118

117:                                              ; preds = %113
  tail call void @free(ptr noundef nonnull %111) #30
  br label %118

118:                                              ; preds = %117, %113, %106
  %119 = load ptr, ptr %107, align 8, !tbaa !68
  %120 = icmp eq ptr %119, null
  br i1 %120, label %126, label %121

121:                                              ; preds = %121, %118
  %122 = phi ptr [ %124, %121 ], [ %119, %118 ]
  %123 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %122, i64 0, i32 1
  %124 = load ptr, ptr %123, align 8, !tbaa !133
  tail call void @free(ptr noundef nonnull %122) #30
  %125 = icmp eq ptr %124, null
  br i1 %125, label %126, label %121, !llvm.loop !205

126:                                              ; preds = %121, %118
  tail call void @free(ptr noundef %107) #30
  %127 = icmp eq ptr %109, null
  br i1 %127, label %128, label %106, !llvm.loop !206

128:                                              ; preds = %126, %102
  %129 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %77, i64 0, i32 12
  %130 = load ptr, ptr %129, align 8, !tbaa !83
  %131 = icmp eq ptr %130, null
  br i1 %131, label %133, label %132

132:                                              ; preds = %128
  tail call void @free(ptr noundef nonnull %130) #30
  br label %133

133:                                              ; preds = %132, %128
  tail call void @free(ptr noundef nonnull %77) #30
  %134 = icmp eq ptr %79, null
  br i1 %134, label %135, label %76, !llvm.loop !207

135:                                              ; preds = %133, %71
  %136 = add nuw nsw i64 %72, 1
  %137 = icmp eq i64 %136, 512
  br i1 %137, label %138, label %71, !llvm.loop !208

138:                                              ; preds = %135
  tail call void @free(ptr noundef %0) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamHeaderTop(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !88
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.948, ptr noundef %3) #32
  %4 = load ptr, ptr %0, align 8, !tbaa !128
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %4, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.5.949, ptr noundef %6) #32
  tail call fastcc void @OutputMacroName(ptr noundef nonnull %0, ptr noundef %3) #32
  %7 = load ptr, ptr %0, align 8, !tbaa !128
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %7, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.6.950, ptr noundef %9) #32
  tail call fastcc void @OutputMacroName(ptr noundef nonnull %0, ptr noundef %3) #32
  tail call fastcc void @OutputDefns(ptr noundef nonnull %0, i32 noundef 0) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @TreeCCStreamPrint(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #0 {
  %3 = alloca [4096 x i8], align 16
  %4 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %3) #28
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.va_start(ptr nonnull %4)
  %5 = call i32 @vsnprintf(ptr noundef nonnull %3, i64 noundef 4096, ptr noundef %1, ptr noundef nonnull %4) #30
  call void @llvm.va_end(ptr nonnull %4)
  call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef nonnull %3) #32
  %6 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  br label %7

7:                                                ; preds = %11, %2
  %8 = phi ptr [ %3, %2 ], [ %12, %11 ]
  %9 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %8, i32 noundef 10) #31
  %10 = icmp eq ptr %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds i8, ptr %9, i64 1
  %13 = load i64, ptr %6, align 8, !tbaa !129
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %6, align 8, !tbaa !129
  br label %7, !llvm.loop !209

15:                                               ; preds = %7
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #28
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputDefns(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %69, label %7

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
  %17 = load i32, ptr %16, align 8, !tbaa !210
  %18 = icmp eq i32 %17, %1
  br i1 %18, label %19, label %57

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 2
  %21 = load i64, ptr %20, align 8, !tbaa !211
  %22 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 1
  %23 = load ptr, ptr %22, align 8, !tbaa !212
  tail call fastcc void @TreeCCStreamLine(ptr noundef %0, i64 noundef %21, ptr noundef %23) #32
  %24 = load ptr, ptr %14, align 8, !tbaa !196
  tail call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef %24) #32
  %25 = load ptr, ptr %14, align 8, !tbaa !196
  br label %26

26:                                               ; preds = %30, %19
  %27 = phi ptr [ %25, %19 ], [ %31, %30 ]
  %28 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %27, i32 noundef 10) #31
  %29 = icmp eq ptr %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds i8, ptr %28, i64 1
  %32 = load i64, ptr %8, align 8, !tbaa !129
  %33 = add nsw i64 %32, 1
  store i64 %33, ptr %8, align 8, !tbaa !129
  br label %26, !llvm.loop !209

34:                                               ; preds = %26
  %35 = load i8, ptr %25, align 1, !tbaa !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %57, label %37

37:                                               ; preds = %34
  %38 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %25) #31
  %39 = add i64 %38, -1
  %40 = getelementptr inbounds i8, ptr %25, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = icmp eq i8 %41, 10
  br i1 %42, label %57, label %43

43:                                               ; preds = %37
  %44 = load i32, ptr %9, align 8, !tbaa !116
  %45 = icmp slt i32 %44, 2048
  br i1 %45, label %46, label %53

46:                                               ; preds = %43
  %47 = load ptr, ptr %11, align 8, !tbaa !115
  %48 = add nsw i32 %44, 1
  store i32 %48, ptr %9, align 8, !tbaa !116
  %49 = sext i32 %44 to i64
  %50 = getelementptr inbounds [2048 x i8], ptr %47, i64 0, i64 %49
  store i8 10, ptr %50, align 1, !tbaa !11
  %51 = load i8, ptr %12, align 4
  %52 = or i8 %51, 16
  store i8 %52, ptr %12, align 4
  br label %54

53:                                               ; preds = %43
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #28
  store i8 10, ptr %3, align 1, !tbaa !11
  store i8 0, ptr %10, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #28
  br label %54

54:                                               ; preds = %53, %46
  %55 = load i64, ptr %8, align 8, !tbaa !129
  %56 = add nsw i64 %55, 1
  store i64 %56, ptr %8, align 8, !tbaa !129
  br label %57

57:                                               ; preds = %54, %37, %34, %13
  %58 = phi i32 [ %15, %13 ], [ 1, %54 ], [ 1, %37 ], [ 1, %34 ]
  %59 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %14, i64 0, i32 5
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %62, label %13, !llvm.loop !213

62:                                               ; preds = %57
  %.lcssa = phi i32 [ %58, %57 ]
  %63 = icmp eq i32 %.lcssa, 0
  br i1 %63, label %69, label %64

64:                                               ; preds = %62
  %65 = load i64, ptr %8, align 8, !tbaa !129
  %66 = add nsw i64 %65, 1
  %67 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %0, i64 noundef %66, ptr noundef %68) #32
  br label %69

69:                                               ; preds = %64, %62, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineNodeNumbers(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !184
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.45, ptr noundef %11, i32 noundef %13) #30
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCNodeVisitAll(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  br label %3

3:                                                ; preds = %17, %2
  %4 = phi i64 [ 0, %2 ], [ %18, %17 ]
  %5 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %13, %3
  %9 = phi ptr [ %15, %13 ], [ %6, %3 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %8
  tail call void %1(ptr noundef %0, ptr noundef nonnull %9) #30
  tail call fastcc void @Visit(ptr noundef %0, ptr noundef nonnull %9, ptr noundef %1) #32
  br label %13

13:                                               ; preds = %12, %8
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 12
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !215

17:                                               ; preds = %13, %3
  %18 = add nuw nsw i64 %4, 1
  %19 = icmp eq i64 %18, 512
  br i1 %19, label %20, label %3, !llvm.loop !216

20:                                               ; preds = %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %31, label %9

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.46) #30
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %28, label %13

13:                                               ; preds = %23, %9
  %14 = phi ptr [ %26, %23 ], [ %11, %9 ]
  %15 = phi ptr [ %24, %23 ], [ @.str.10.611, %9 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 5
  %17 = load i32, ptr %16, align 8, !tbaa !40
  %18 = and i32 %17, 16
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %13
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47, ptr noundef %15, ptr noundef %22) #30
  br label %23

23:                                               ; preds = %20, %13
  %24 = phi ptr [ @.str.48, %20 ], [ %15, %13 ]
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %13, !llvm.loop !217

28:                                               ; preds = %23, %9
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.49, ptr noundef %30) #30
  br label %37

31:                                               ; preds = %2
  %32 = and i32 %6, 16
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.50, ptr noundef %36, ptr noundef %36) #30
  br label %37

37:                                               ; preds = %34, %31, %28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCIncludeSkeleton(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = alloca [8192 x i8], align 16
  br label %5

5:                                                ; preds = %10, %3
  %6 = phi ptr [ %12, %10 ], [ @.str.905, %3 ]
  %7 = phi ptr [ %11, %10 ], [ @TreeCCSkelFiles, %3 ]
  %8 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %2) #31
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %15, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds ptr, ptr %7, i64 2
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %5, !llvm.loop !218

14:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #28
  br label %19

15:                                               ; preds = %5
  %.lcssa7 = phi ptr [ %7, %5 ]
  %16 = getelementptr inbounds ptr, ptr %.lcssa7, i64 1
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 8192, ptr nonnull %4) #28
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %22

19:                                               ; preds = %15, %14
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.901, ptr noundef %2) #34
  tail call void @exit(i32 noundef 1) #35
  unreachable

22:                                               ; preds = %15
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef 1, ptr noundef %2) #30
  %23 = load i8, ptr %17, align 1, !tbaa !11
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %105, label %25

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  br label %28

28:                                               ; preds = %100, %25
  %29 = phi i8 [ %23, %25 ], [ %101, %100 ]
  %30 = phi ptr [ %4, %25 ], [ %102, %100 ]
  %31 = phi i32 [ 8192, %25 ], [ %103, %100 ]
  %32 = phi ptr [ %17, %25 ], [ %104, %100 ]
  switch i8 %29, label %33 [
    i8 10, label %43
    i8 0, label %46
  ]

33:                                               ; preds = %28
  %34 = icmp sgt i32 %31, 2
  br i1 %34, label %35, label %38

35:                                               ; preds = %33
  %36 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !11
  %37 = add nsw i32 %31, -1
  br label %38

38:                                               ; preds = %35, %33
  %39 = phi ptr [ %36, %35 ], [ %30, %33 ]
  %40 = phi i32 [ %37, %35 ], [ %31, %33 ]
  %41 = getelementptr inbounds i8, ptr %32, i64 1
  %42 = load i8, ptr %41, align 1, !tbaa !11
  br label %100

43:                                               ; preds = %28
  %44 = getelementptr inbounds i8, ptr %32, i64 1
  %45 = getelementptr inbounds i8, ptr %30, i64 1
  store i8 10, ptr %30, align 1, !tbaa !11
  br label %46

46:                                               ; preds = %43, %28
  %47 = phi ptr [ %45, %43 ], [ %30, %28 ]
  %48 = phi ptr [ %44, %43 ], [ %32, %28 ]
  store i8 0, ptr %47, align 1, !tbaa !11
  %49 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 89) #31
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %4, i32 noundef 121) #31
  %53 = icmp eq ptr %52, null
  br i1 %53, label %95, label %54

54:                                               ; preds = %51, %46
  br label %55

55:                                               ; preds = %86, %54
  %56 = phi i32 [ 0, %54 ], [ %87, %86 ]
  %57 = sext i32 %56 to i64
  br label %58

58:                                               ; preds = %88, %55
  %59 = phi i64 [ %89, %88 ], [ %57, %55 ]
  %60 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 %59
  %61 = load i8, ptr %60, align 1, !tbaa !11
  switch i8 %61, label %88 [
    i8 0, label %90
    i8 89, label %62
    i8 121, label %73
  ]

62:                                               ; preds = %58
  %63 = call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %60, ptr noundef nonnull dereferenceable(12) @.str.1.902, i64 noundef 11) #31
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %88

65:                                               ; preds = %62
  %.lcssa5 = phi i64 [ %59, %62 ]
  %.lcssa2 = phi ptr [ %60, %62 ]
  %66 = trunc i64 %.lcssa5 to i32
  store i8 0, ptr %.lcssa2, align 1, !tbaa !11
  %67 = icmp slt i32 %56, %66
  br i1 %67, label %68, label %70

68:                                               ; preds = %65
  %69 = getelementptr inbounds i8, ptr %4, i64 %57
  call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %69) #30
  br label %70

70:                                               ; preds = %68, %65
  %71 = load ptr, ptr %27, align 8, !tbaa !28
  call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef %71) #30
  %72 = add nsw i32 %66, 11
  br label %86

73:                                               ; preds = %58
  %74 = add nsw i64 %59, 1
  %75 = getelementptr inbounds [8192 x i8], ptr %4, i64 0, i64 %74
  %76 = load i8, ptr %75, align 1, !tbaa !11
  %77 = icmp eq i8 %76, 121
  br i1 %77, label %78, label %88

78:                                               ; preds = %73
  %.lcssa4 = phi i64 [ %59, %73 ]
  %.lcssa1 = phi ptr [ %60, %73 ]
  %79 = trunc i64 %.lcssa4 to i32
  store i8 0, ptr %.lcssa1, align 1, !tbaa !11
  %80 = icmp slt i32 %56, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %78
  %82 = getelementptr inbounds i8, ptr %4, i64 %57
  call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %82) #30
  br label %83

83:                                               ; preds = %81, %78
  %84 = load ptr, ptr %26, align 8, !tbaa !27
  call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef %84) #30
  %85 = add nsw i32 %79, 2
  br label %86

86:                                               ; preds = %83, %70
  %87 = phi i32 [ %72, %70 ], [ %85, %83 ]
  br label %55, !llvm.loop !219

88:                                               ; preds = %73, %62, %58
  %89 = add i64 %59, 1
  br label %58, !llvm.loop !219

90:                                               ; preds = %58
  %.lcssa6 = phi i32 [ %56, %58 ]
  %.lcssa = phi i64 [ %57, %58 ]
  %.lcssa3 = phi i64 [ %59, %58 ]
  %91 = trunc i64 %.lcssa3 to i32
  %92 = icmp slt i32 %.lcssa6, %91
  br i1 %92, label %93, label %97

93:                                               ; preds = %90
  %94 = getelementptr inbounds i8, ptr %4, i64 %.lcssa
  br label %95

95:                                               ; preds = %93, %51
  %96 = phi ptr [ %94, %93 ], [ %4, %51 ]
  call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %96) #30
  br label %97

97:                                               ; preds = %95, %90
  %98 = load i8, ptr %48, align 1, !tbaa !11
  %99 = icmp eq i8 %98, 0
  br i1 %99, label %105, label %100

100:                                              ; preds = %97, %38
  %101 = phi i8 [ %42, %38 ], [ %98, %97 ]
  %102 = phi ptr [ %39, %38 ], [ %4, %97 ]
  %103 = phi i32 [ %40, %38 ], [ 8192, %97 ]
  %104 = phi ptr [ %41, %38 ], [ %48, %97 ]
  br label %28, !llvm.loop !220

105:                                              ; preds = %97, %22
  %106 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %107 = load i64, ptr %106, align 8, !tbaa !129
  %108 = add nsw i64 %107, 1
  %109 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %110 = load ptr, ptr %109, align 8, !tbaa !88
  call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %108, ptr noundef %110) #32
  call void @llvm.lifetime.end.p0(i64 8192, ptr nonnull %4) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %83

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.51, ptr noundef %11) #30
  %12 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.52, ptr noundef %12) #30
  %13 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %14 = load i16, ptr %13, align 8
  %15 = and i16 %14, 128
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %19

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.39.225) #30
  %18 = load i16, ptr %13, align 8
  br label %19

19:                                               ; preds = %17, %9
  %20 = phi i16 [ %18, %17 ], [ %14, %9 ]
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.40.226) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.41.227) #30
  br label %24

24:                                               ; preds = %23, %19
  tail call fastcc void @DeclareFields(ptr noundef %4, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #30
  %25 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57, ptr noundef %25) #30
  %26 = load ptr, ptr %1, align 8, !tbaa !45
  %27 = icmp eq ptr %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.58, ptr noundef %30) #30
  br label %32

31:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.59) #30
  br label %32

32:                                               ; preds = %31, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.39.225) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.60) #30
  tail call fastcc void @DeclareVirtuals(ptr noundef %4, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #30
  %33 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.61, ptr noundef %33, ptr noundef %33) #30
  %34 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %79, label %37

37:                                               ; preds = %75, %32
  %38 = phi ptr [ %77, %75 ], [ %35, %32 ]
  %39 = load ptr, ptr %38, align 8, !tbaa !163
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.66, ptr noundef %39) #30
  %40 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %38, i64 0, i32 2
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %56, label %43

43:                                               ; preds = %51, %37
  %44 = phi ptr [ %54, %51 ], [ %41, %37 ]
  %45 = phi i32 [ %52, %51 ], [ 1, %37 ]
  %46 = load ptr, ptr %44, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.67, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.68, i32 noundef %45) #30
  %50 = add nsw i32 %45, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %45, %48 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %43, !llvm.loop !221

56:                                               ; preds = %51, %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.69) #30
  %57 = load ptr, ptr %10, align 8, !tbaa !44
  %58 = load ptr, ptr %38, align 8, !tbaa !163
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.70, ptr noundef %57, ptr noundef %58) #30
  %59 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.71, ptr noundef %59) #30
  %60 = load ptr, ptr %40, align 8, !tbaa !7
  %61 = icmp eq ptr %60, null
  br i1 %61, label %75, label %62

62:                                               ; preds = %70, %56
  %63 = phi ptr [ %73, %70 ], [ %60, %56 ]
  %64 = phi i32 [ %71, %70 ], [ 1, %56 ]
  %65 = load ptr, ptr %63, align 8, !tbaa !94
  %66 = icmp eq ptr %65, null
  br i1 %66, label %68, label %67

67:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.72, ptr noundef nonnull %65) #30
  br label %70

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.73, i32 noundef %64) #30
  %69 = add nsw i32 %64, 1
  br label %70

70:                                               ; preds = %68, %67
  %71 = phi i32 [ %64, %67 ], [ %69, %68 ]
  %72 = getelementptr inbounds %struct._tagTreeCCParam, ptr %63, i64 0, i32 4
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %62, !llvm.loop !222

75:                                               ; preds = %70, %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.74) #30
  %76 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %38, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !7
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %37, !llvm.loop !223

79:                                               ; preds = %75, %32
  %80 = tail call fastcc i32 @DeclareVirtualImpls(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #32, !range !132
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.10.611) #30
  br label %83

83:                                               ; preds = %82, %79, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareCreateFuncs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %36

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %1, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !224

18:                                               ; preds = %13, %9
  %.lcssa = phi ptr [ %10, %13 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.80, ptr noundef %20, ptr noundef %22) #30
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %29) #30
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ 1, %27 ], [ 0, %18 ]
  %32 = tail call fastcc i32 @CreateParams(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %31) #32, !range !132
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.34.867) #30
  br label %35

35:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.25.511) #30
  br label %36

36:                                               ; preds = %35, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @WriteSourceSkeleton(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !225
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.66.204, ptr noundef %8, i32 noundef %4) #30
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.67.205, ptr noundef %16) #30
  %17 = load i16, ptr %10, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i16 [ %17, %14 ], [ %11, %9 ]
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.206, ptr noundef %24) #30
  %25 = load i16, ptr %10, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i16 [ %25, %22 ], [ %19, %18 ]
  %28 = and i16 %27, 4096
  %29 = icmp eq i16 %28, 0
  %30 = select i1 %29, ptr @.str.905, ptr @.str.5.910
  tail call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %30) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineVtables(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %21

9:                                                ; preds = %2
  tail call fastcc void @OutputVtableImpls(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.124, ptr noundef %11, ptr noundef %11) #30
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.125, ptr noundef %16) #30
  br label %18

17:                                               ; preds = %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.126) #30
  br label %18

18:                                               ; preds = %17, %14
  %19 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.127, ptr noundef %19) #30
  %20 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.128, ptr noundef %20) #30
  tail call fastcc void @OutputVtableFuncs(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #30
  br label %21

21:                                               ; preds = %18, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %84

9:                                                ; preds = %13, %2
  %10 = phi ptr [ %11, %13 ], [ %1, %2 ]
  %11 = load ptr, ptr %10, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  br i1 %12, label %18, label %13

13:                                               ; preds = %9
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 5
  %15 = load i32, ptr %14, align 8, !tbaa !40
  %16 = and i32 %15, 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %9, label %18, !llvm.loop !224

18:                                               ; preds = %13, %9
  %.lcssa = phi ptr [ %10, %13 ], [ %10, %9 ]
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %.lcssa, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !44
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.133, ptr noundef %20, ptr noundef %22) #30
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %24 = load i16, ptr %23, align 8
  %25 = and i16 %24, 8
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %18
  %28 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %29 = load ptr, ptr %28, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %29) #30
  br label %30

30:                                               ; preds = %27, %18
  %31 = phi i32 [ 1, %27 ], [ 0, %18 ]
  %32 = tail call fastcc i32 @CreateParamsSource(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %31) #32, !range !132
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.34.867) #30
  br label %35

35:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %36 = load i16, ptr %23, align 8
  %37 = and i16 %36, 6
  %38 = icmp eq i16 %37, 0
  br i1 %38, label %39, label %56

39:                                               ; preds = %44, %35
  %40 = phi ptr [ %45, %44 ], [ %1, %35 ]
  %41 = getelementptr inbounds %struct._tagTreeCCNode, ptr %40, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !154
  %43 = icmp eq ptr %42, null
  br i1 %43, label %44, label %56

44:                                               ; preds = %39
  %45 = load ptr, ptr %40, align 8, !tbaa !45
  %46 = icmp eq ptr %45, null
  br i1 %46, label %47, label %39, !llvm.loop !227

47:                                               ; preds = %44
  %48 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.134, ptr noundef %48) #30
  %49 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.135, ptr noundef %49) #30
  %50 = load i16, ptr %23, align 8
  %51 = and i16 %50, 128
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %47
  %54 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.136, ptr noundef %54) #30
  br label %55

55:                                               ; preds = %53, %47
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.137) #30
  br label %82

56:                                               ; preds = %39, %35
  %57 = and i16 %36, 8
  %58 = icmp eq i16 %57, 0
  %59 = load ptr, ptr %21, align 8, !tbaa !44
  %60 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  %61 = load ptr, ptr %60, align 8, !tbaa !27
  %62 = select i1 %58, ptr @.str.140, ptr @.str.139
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %62, ptr noundef %59, ptr noundef %59, ptr noundef %61, ptr noundef %59) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.141) #30
  %63 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.142, ptr noundef %63) #30
  %64 = load i16, ptr %23, align 8
  %65 = and i16 %64, 128
  %66 = icmp eq i16 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %56
  %68 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.143, ptr noundef %68) #30
  %69 = load i16, ptr %23, align 8
  br label %70

70:                                               ; preds = %67, %56
  %71 = phi i16 [ %69, %67 ], [ %64, %56 ]
  %72 = and i16 %71, 2
  %73 = icmp eq i16 %72, 0
  br i1 %73, label %81, label %74

74:                                               ; preds = %70
  %75 = and i16 %71, 8
  %76 = icmp eq i16 %75, 0
  %77 = load ptr, ptr %60, align 8, !tbaa !27
  %78 = select i1 %76, ptr @.str.146, ptr @.str.144
  %79 = select i1 %76, ptr @.str.147, ptr @.str.145
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %78, ptr noundef %77) #30
  %80 = load ptr, ptr %60, align 8, !tbaa !27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %79, ptr noundef %80) #30
  br label %81

81:                                               ; preds = %74, %70
  tail call fastcc void @InitFields(ptr noundef %4, ptr noundef nonnull %1) #32
  br label %82

82:                                               ; preds = %81, %55
  %83 = phi ptr [ @.str.148, %81 ], [ @.str.138, %55 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %83, ptr noundef %20) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  br label %84

84:                                               ; preds = %82, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCGenerateNonVirtuals(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %4 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 6
  %5 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 1
  %6 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 12
  %7 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %1, i64 0, i32 13
  br label %8

8:                                                ; preds = %87, %2
  %9 = phi i64 [ 0, %2 ], [ %88, %87 ]
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %9
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %87, label %13

13:                                               ; preds = %83, %8
  %14 = phi ptr [ %85, %83 ], [ %11, %8 ]
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !53
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %83

19:                                               ; preds = %13
  %20 = load i32, ptr %3, align 4, !tbaa !39
  %21 = icmp eq i32 %20, 2
  br i1 %21, label %22, label %31

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !102
  %25 = icmp eq ptr %24, null
  br i1 %25, label %28, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef nonnull %0, ptr noundef nonnull %24) #30
  br label %34

28:                                               ; preds = %22
  %29 = load ptr, ptr %14, align 8, !tbaa !67
  %30 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef nonnull %0, ptr noundef %29) #30
  br label %34

31:                                               ; preds = %19
  %32 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 15
  %33 = load ptr, ptr %32, align 8, !tbaa !228
  br label %34

34:                                               ; preds = %31, %28, %26
  %35 = phi ptr [ %27, %26 ], [ %30, %28 ], [ %33, %31 ]
  %36 = load ptr, ptr %1, align 8, !tbaa !229
  tail call void %36(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %14) #30
  %37 = load i32, ptr %15, align 8, !tbaa !53
  %38 = and i32 %37, 2
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %53

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 10
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = icmp eq ptr %42, null
  br i1 %43, label %53, label %44

44:                                               ; preds = %44, %40
  %45 = phi ptr [ %51, %44 ], [ %42, %40 ]
  %46 = phi i32 [ %48, %44 ], [ 1, %40 ]
  %47 = load ptr, ptr %4, align 8, !tbaa !231
  tail call void %47(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %45, i32 noundef %46) #30
  %48 = add nuw nsw i32 %46, 1
  %49 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 3
  store i32 %46, ptr %49, align 8, !tbaa !139
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 8
  %51 = load ptr, ptr %50, align 8, !tbaa !7
  %52 = icmp eq ptr %51, null
  br i1 %52, label %53, label %44, !llvm.loop !232

53:                                               ; preds = %44, %40, %34
  %54 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !56
  %56 = icmp sgt i32 %55, 1
  br i1 %56, label %57, label %66

57:                                               ; preds = %53
  %58 = load i32, ptr %15, align 8, !tbaa !53
  %59 = and i32 %58, 4
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  tail call fastcc void @AssignTriggerPosns(ptr noundef %0, ptr noundef nonnull %14) #32
  %62 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 12
  %63 = load ptr, ptr %62, align 8, !tbaa !83
  %64 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 4
  %65 = load ptr, ptr %64, align 8, !tbaa !84
  tail call fastcc void @GenerateSplitMultiSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %63, i32 noundef 0, i32 noundef 1, ptr noundef %65, i32 noundef 0) #32
  br label %81

66:                                               ; preds = %57, %53
  %67 = load ptr, ptr %5, align 8, !tbaa !233
  tail call void %67(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #30
  %68 = load i32, ptr %54, align 4, !tbaa !56
  %69 = icmp slt i32 %68, 2
  br i1 %69, label %70, label %74

70:                                               ; preds = %66
  %71 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !60
  %73 = tail call fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %72, i32 noundef 0) #32
  br label %79

74:                                               ; preds = %66
  tail call fastcc void @AssignTriggerPosns(ptr noundef %0, ptr noundef nonnull %14) #32
  %75 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 12
  %76 = load ptr, ptr %75, align 8, !tbaa !83
  %77 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 4
  %78 = load ptr, ptr %77, align 8, !tbaa !84
  tail call fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %1, ptr noundef nonnull %14, ptr noundef %76, i32 noundef 0, i32 noundef 1, ptr noundef %78, i32 noundef 0) #32
  br label %79

79:                                               ; preds = %74, %70
  %80 = load ptr, ptr %6, align 8, !tbaa !234
  tail call void %80(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #30
  br label %81

81:                                               ; preds = %79, %61
  %82 = load ptr, ptr %7, align 8, !tbaa !235
  tail call void %82(ptr noundef %0, ptr noundef %35, ptr noundef nonnull %14) #30
  br label %83

83:                                               ; preds = %81, %13
  %84 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %14, i64 0, i32 9
  %85 = load ptr, ptr %84, align 8, !tbaa !7
  %86 = icmp eq ptr %85, null
  br i1 %86, label %87, label %13, !llvm.loop !236

87:                                               ; preds = %83, %8
  %88 = add nuw nsw i64 %9, 1
  %89 = icmp eq i64 %88, 512
  br i1 %89, label %90, label %8, !llvm.loop !237

90:                                               ; preds = %87
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamClear(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !113
  %4 = icmp eq ptr %3, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %5, %1
  %6 = phi ptr [ %8, %5 ], [ %3, %1 ]
  %7 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !117
  tail call void @free(ptr noundef nonnull %6) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %5, !llvm.loop !238

10:                                               ; preds = %5, %1
  %11 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %12 = load i8, ptr %11, align 4
  %13 = and i8 %12, -17
  store i8 %13, ptr %11, align 4
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  store i32 2048, ptr %14, align 8, !tbaa !116
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  store i64 1, ptr %15, align 8, !tbaa !129
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DefineNodeNumbers.162(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %14

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %9 = load ptr, ptr %8, align 8, !tbaa !214
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %13 = load i32, ptr %12, align 4, !tbaa !184
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.3.275, ptr noundef %11, i32 noundef %13) #30
  br label %14

14:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.163(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 8
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %26, label %9

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.4.271) #30
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %22, %9
  %14 = phi ptr [ %24, %22 ], [ %11, %9 ]
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 8, !tbaa !40
  %17 = and i32 %16, 16
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %13
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.6.368, ptr noundef %21) #30
  br label %22

22:                                               ; preds = %19, %13
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %14, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %13, !llvm.loop !239

26:                                               ; preds = %2
  %27 = and i32 %6, 16
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26, %22, %9
  %30 = phi ptr [ @.str.6.273, %9 ], [ @.str.7.274, %26 ], [ @.str.6.273, %22 ]
  %31 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull %30, ptr noundef %32) #30
  br label %33

33:                                               ; preds = %29, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareStateType(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.527, ptr noundef %4) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #30
  %5 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.248, ptr noundef %5) #30
  %6 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.245, ptr noundef %6) #30
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %8 = load i16, ptr %7, align 8
  %9 = and i16 %8, 4096
  %10 = icmp eq i16 %9, 0
  %11 = select i1 %10, ptr @.str.3.908, ptr @.str.6.911
  tail call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %11) #30
  %12 = load i16, ptr %7, align 8
  %13 = and i16 %12, 8
  %14 = icmp eq i16 %13, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.14.251) #30
  %16 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.252, ptr noundef %16) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #30
  %17 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.253, ptr noundef %17) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.254) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.255) #30
  %18 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.256, ptr noundef %18) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.257) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.258) #30
  %19 = load i16, ptr %7, align 8
  %20 = and i16 %19, 8
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %15, %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #30
  tail call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @DeclareCreateFuncs.259) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  br label %23

23:                                               ; preds = %22, %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.9.217) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.260) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.261) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.262) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.263) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.264) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.265) #30
  %24 = load i16, ptr %7, align 8
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28.266) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.29.267) #30
  br label %28

28:                                               ; preds = %27, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.268) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.164(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 13
  %4 = load ptr, ptr %3, align 8, !tbaa !214
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %85

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !45
  %11 = icmp eq ptr %10, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %10, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.37.222, ptr noundef %14, ptr noundef %16) #30
  br label %41

17:                                               ; preds = %9
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %19 = load ptr, ptr %18, align 8, !tbaa !240
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  br i1 %20, label %24, label %23

23:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.37.222, ptr noundef %22, ptr noundef nonnull %19) #30
  br label %25

24:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.527, ptr noundef %22) #30
  br label %25

25:                                               ; preds = %24, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.39.225) #30
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %27 = load i16, ptr %26, align 8
  %28 = and i16 %27, 2
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.40.226) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.41.227) #30
  br label %31

31:                                               ; preds = %30, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.42.228) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.43.229) #30
  %32 = load i16, ptr %26, align 8
  %33 = and i16 %32, 2
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.44.230) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.45.231) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.46.232) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.233) #30
  br label %36

36:                                               ; preds = %35, %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.10.611) #30
  %37 = load i16, ptr %26, align 8
  %38 = and i16 %37, 8
  %39 = icmp eq i16 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.48.234) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.49.235) #30
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
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.50.236) #30
  br label %59

50:                                               ; preds = %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #30
  %51 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %52 = load ptr, ptr %51, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.51.237, ptr noundef %52) #30
  br label %59

53:                                               ; preds = %41
  %54 = load i32, ptr %5, align 8, !tbaa !40
  %55 = and i32 %54, 2
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #30
  br label %59

58:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.9.217) #30
  br label %59

59:                                               ; preds = %58, %57, %50, %49
  %60 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.52.238, ptr noundef %61) #30
  %62 = load i16, ptr %42, align 8
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %59
  %66 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %67 = load ptr, ptr %66, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %67) #30
  br label %68

68:                                               ; preds = %65, %59
  %69 = phi i32 [ 1, %65 ], [ 0, %59 ]
  %70 = tail call fastcc i32 @CreateParams.239(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %69) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.100.476) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.9.217) #30
  %71 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %72 = load ptr, ptr %71, align 8, !tbaa !7
  %73 = icmp eq ptr %72, null
  br i1 %73, label %83, label %74

74:                                               ; preds = %74, %68
  %75 = phi ptr [ %80, %74 ], [ %72, %68 ]
  %76 = getelementptr inbounds %struct._tagTreeCCField, ptr %75, i64 0, i32 1
  %77 = load ptr, ptr %76, align 8, !tbaa !46
  %78 = load ptr, ptr %75, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.58.241, ptr noundef %77, ptr noundef %78) #30
  %79 = getelementptr inbounds %struct._tagTreeCCField, ptr %75, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %74, !llvm.loop !241

82:                                               ; preds = %74
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.10.611) #30
  br label %83

83:                                               ; preds = %82, %68
  tail call fastcc void @DeclareVirtuals.242(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.10.611) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.55.243) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.56.244) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.38.224) #30
  %84 = load ptr, ptr %60, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.245, ptr noundef %84) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.57.221) #30
  br label %85

85:                                               ; preds = %83, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 8, !tbaa !225
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.66.204, ptr noundef %8, i32 noundef %4) #30
  br label %9

9:                                                ; preds = %6, %2
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %16 = load ptr, ptr %15, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.67.205, ptr noundef %16) #30
  %17 = load i16, ptr %10, align 8
  br label %18

18:                                               ; preds = %14, %9
  %19 = phi i16 [ %17, %14 ], [ %11, %9 ]
  %20 = and i16 %19, 2
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %24 = load ptr, ptr %23, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.206, ptr noundef %24) #30
  %25 = load i16, ptr %10, align 8
  br label %26

26:                                               ; preds = %22, %18
  %27 = phi i16 [ %25, %22 ], [ %19, %18 ]
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %32 = load ptr, ptr %31, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.69.207, ptr noundef %32) #30
  %33 = load i16, ptr %10, align 8
  br label %34

34:                                               ; preds = %30, %26
  %35 = phi i16 [ %33, %30 ], [ %27, %26 ]
  %36 = and i16 %35, 4096
  %37 = icmp eq i16 %36, 0
  %38 = select i1 %37, ptr @.str.2.907, ptr @.str.7.912
  tail call fastcc void @TreeCCIncludeSkeleton(ptr noundef nonnull %0, ptr noundef %1, ptr noundef nonnull %38) #30
  %39 = load i16, ptr %10, align 8
  %40 = and i16 %39, 72
  %41 = icmp eq i16 %40, 8
  br i1 %41, label %42, label %43

42:                                               ; preds = %34
  tail call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.210) #30
  br label %43

43:                                               ; preds = %42, %34
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementNodeTypes(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %4 = load ptr, ptr %3, align 8, !tbaa !226
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 24
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %101

9:                                                ; preds = %2
  %10 = load ptr, ptr %1, align 8, !tbaa !45
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
  %19 = load ptr, ptr %18, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.79.167, ptr noundef %19) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %20 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %21 = load ptr, ptr %20, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.80.169, ptr noundef %21) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  %22 = load ptr, ptr %18, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.81.171, ptr noundef %22) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %23 = load ptr, ptr %20, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.82.172, ptr noundef %23) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  br label %24

24:                                               ; preds = %17, %12, %9
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.93.173, ptr noundef %26, ptr noundef %26) #30
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %28 = load i16, ptr %27, align 8
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %24
  %32 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %33 = load ptr, ptr %32, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.53.174, ptr noundef %33) #30
  br label %34

34:                                               ; preds = %31, %24
  %35 = phi i32 [ 1, %31 ], [ 0, %24 ]
  %36 = tail call fastcc i32 @CreateParamsSource.175(ptr noundef %4, ptr noundef nonnull %1, i32 noundef %35) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.7.609) #30
  %37 = load ptr, ptr %1, align 8, !tbaa !45
  %38 = icmp eq ptr %37, null
  br i1 %38, label %50, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.94.177, ptr noundef %41) #30
  %42 = load i16, ptr %27, align 8
  %43 = and i16 %42, 8
  %44 = icmp eq i16 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.50.627) #30
  br label %46

46:                                               ; preds = %45, %39
  %47 = phi i32 [ 1, %45 ], [ 0, %39 ]
  %48 = load ptr, ptr %1, align 8, !tbaa !45
  %49 = tail call fastcc i32 @InheritParamsSource(ptr noundef %4, ptr noundef %48, i32 noundef %47) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.7.609) #30
  br label %50

50:                                               ; preds = %46, %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %51 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.96.179, ptr noundef %51) #30
  %52 = load i16, ptr %27, align 8
  %53 = and i16 %52, 2
  %54 = icmp eq i16 %53, 0
  br i1 %54, label %66, label %55

55:                                               ; preds = %50
  %56 = load ptr, ptr %1, align 8, !tbaa !45
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = and i16 %52, 8
  %60 = icmp eq i16 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.97.180) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.98.181) #30
  br label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %64 = load ptr, ptr %63, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.99.182, ptr noundef %64) #30
  %65 = load ptr, ptr %63, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.100.183, ptr noundef %65) #30
  br label %66

66:                                               ; preds = %62, %61, %55, %50
  %67 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %68 = load ptr, ptr %67, align 8, !tbaa !7
  %69 = icmp eq ptr %68, null
  br i1 %69, label %88, label %70

70:                                               ; preds = %84, %66
  %71 = phi ptr [ %86, %84 ], [ %68, %66 ]
  %72 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 3
  %73 = load i32, ptr %72, align 8, !tbaa !152
  %74 = and i32 %73, 1
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load ptr, ptr %71, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.101.184, ptr noundef %77, ptr noundef %77) #30
  br label %84

78:                                               ; preds = %70
  %79 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 2
  %80 = load ptr, ptr %79, align 8, !tbaa !151
  %81 = icmp eq ptr %80, null
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = load ptr, ptr %71, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.101.184, ptr noundef %83, ptr noundef nonnull %80) #30
  br label %84

84:                                               ; preds = %82, %78, %76
  %85 = getelementptr inbounds %struct._tagTreeCCField, ptr %71, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !7
  %87 = icmp eq ptr %86, null
  br i1 %87, label %88, label %70, !llvm.loop !242

88:                                               ; preds = %84, %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  %89 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.83.185, ptr noundef %89, ptr noundef %89) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.84.186) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  tail call fastcc void @ImplementVirtuals(ptr noundef %0, ptr noundef %4, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  %90 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.85.187, ptr noundef %90) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %91 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.86.188, ptr noundef %91) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.87.189) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.88.190) #30
  %92 = load ptr, ptr %1, align 8, !tbaa !45
  %93 = icmp eq ptr %92, null
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = getelementptr inbounds %struct._tagTreeCCNode, ptr %92, i64 0, i32 4
  %96 = load ptr, ptr %95, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.89.191, ptr noundef %96) #30
  br label %98

97:                                               ; preds = %88
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.90.192) #30
  br label %98

98:                                               ; preds = %97, %94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  %99 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.91.193, ptr noundef %99) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.11.519) #30
  %100 = load ptr, ptr %25, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.92.194, ptr noundef %100) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %4, ptr noundef nonnull @.str.47.562) #30
  br label %101

101:                                              ; preds = %98, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCStreamGetJava(ptr noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 15
  %4 = load ptr, ptr %3, align 8, !tbaa !30
  %5 = icmp eq ptr %4, null
  br i1 %5, label %30, label %6

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #31
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %9 = add i64 %8, %7
  %10 = shl i64 %9, 32
  %11 = add i64 %10, 30064771072
  %12 = ashr exact i64 %11, 32
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %6
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %17) #30
  unreachable

18:                                               ; preds = %6
  %19 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %4) #30
  %20 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #31
  %21 = shl i64 %20, 32
  %22 = ashr exact i64 %21, 32
  %23 = getelementptr inbounds i8, ptr %13, i64 %22
  store i8 47, ptr %23, align 1, !tbaa !11
  %24 = getelementptr inbounds i8, ptr %23, i64 1
  %25 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %24, ptr noundef nonnull dereferenceable(1) %1) #30
  %26 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %13)
  %27 = getelementptr inbounds i8, ptr %13, i64 %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %27, ptr noundef nonnull align 1 dereferenceable(6) @.str.921, i64 6, i1 false)
  %28 = add i64 %21, 4294967296
  %29 = ashr exact i64 %28, 32
  br label %44

30:                                               ; preds = %2
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %32 = shl i64 %31, 32
  %33 = add i64 %32, 25769803776
  %34 = ashr exact i64 %33, 32
  %35 = tail call noalias ptr @malloc(i64 noundef %34) #29
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %39) #30
  unreachable

40:                                               ; preds = %30
  %41 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %1) #30
  %42 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %35)
  %43 = getelementptr inbounds i8, ptr %35, i64 %42
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %43, ptr noundef nonnull align 1 dereferenceable(6) @.str.921, i64 6, i1 false)
  br label %44

44:                                               ; preds = %40, %18
  %45 = phi i64 [ %29, %18 ], [ 0, %40 ]
  %46 = phi ptr [ %13, %18 ], [ %35, %40 ]
  %47 = getelementptr inbounds i8, ptr %46, i64 %45
  %48 = tail call fastcc ptr @TreeCCStreamCreate(ptr noundef nonnull %0, ptr noundef nonnull %46, ptr noundef nonnull %47, i32 noundef -1) #32
  tail call void @free(ptr noundef nonnull %46) #30
  ret ptr %48
}

; Function Attrs: nounwind optsize uwtable
define internal void @CreateNodeStreams(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 16
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #30
  br label %11

11:                                               ; preds = %7, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.374(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !44
  %10 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #30
  %11 = load ptr, ptr %8, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.43.482, ptr noundef %11) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.11.519) #30
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %26, %7
  %16 = phi ptr [ %29, %26 ], [ %13, %7 ]
  %17 = phi i32 [ %27, %26 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.483, ptr noundef %24, i32 noundef %17) #30
  %25 = add nsw i32 %17, 1
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ %25, %22 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !243

31:                                               ; preds = %26, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.20.491) #30
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.386(ptr noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %9 = load ptr, ptr %8, align 8, !tbaa !28
  %10 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %9) #30
  %11 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %12 = load i16, ptr %11, align 8
  %13 = and i16 %12, 64
  %14 = icmp eq i16 %13, 0
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  %17 = select i1 %14, ptr @.str.58.477, ptr @.str.57.478
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %17, ptr noundef %16, ptr noundef %16) #30
  %18 = tail call fastcc i32 @FactoryCreateParams.479(ptr noundef nonnull %0, ptr noundef %10, ptr noundef nonnull %1) #32, !range !132
  %19 = load i16, ptr %11, align 8
  %20 = and i16 %19, 64
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.11.379) #30
  %23 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.480, ptr noundef %23) #30
  tail call fastcc void @FactoryInvokeParams.481(ptr noundef %10, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.25.511) #30
  br label %24

24:                                               ; preds = %22, %7
  %25 = phi ptr [ @.str.52.383, %22 ], [ @.str.25.511, %7 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %25) #30
  br label %26

26:                                               ; preds = %24, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.390(ptr noundef %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %147

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #32, !range !132
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !44
  %11 = tail call fastcc ptr @TreeCCStreamGetJava(ptr noundef %0, ptr noundef %10) #30
  %12 = load ptr, ptr %1, align 8, !tbaa !45
  %13 = icmp eq ptr %12, null
  %14 = icmp eq i32 %8, 0
  br i1 %13, label %21, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %9, align 8, !tbaa !44
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  br i1 %14, label %20, label %19

19:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.60.433, ptr noundef %16, ptr noundef %18) #30
  br label %44

20:                                               ; preds = %15
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.61.434, ptr noundef %16, ptr noundef %18) #30
  br label %44

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %23 = load ptr, ptr %22, align 8, !tbaa !240
  %24 = icmp eq ptr %23, null
  %25 = load ptr, ptr %9, align 8, !tbaa !44
  br i1 %14, label %29, label %26

26:                                               ; preds = %21
  br i1 %24, label %28, label %27

27:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.60.433, ptr noundef %25, ptr noundef nonnull %23) #30
  br label %32

28:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.62.435, ptr noundef %25) #30
  br label %32

29:                                               ; preds = %21
  br i1 %24, label %31, label %30

30:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.61.434, ptr noundef %25, ptr noundef nonnull %23) #30
  br label %32

31:                                               ; preds = %29
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.63.436, ptr noundef %25) #30
  br label %32

32:                                               ; preds = %31, %30, %28, %27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.64.437) #30
  %33 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %34 = load i16, ptr %33, align 8
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.65.438) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.66.439) #30
  br label %38

38:                                               ; preds = %37, %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.10.611) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.67.440) #30
  %39 = load i16, ptr %33, align 8
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.68.441) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.69.442) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.70.443) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.71.444) #30
  br label %43

43:                                               ; preds = %42, %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.10.611) #30
  br label %44

44:                                               ; preds = %43, %20, %19
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %46 = load i32, ptr %45, align 4, !tbaa !184
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.72.445, i32 noundef %46) #30
  %47 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %69, label %50

50:                                               ; preds = %62, %44
  %51 = phi ptr [ %66, %62 ], [ %48, %44 ]
  %52 = getelementptr inbounds %struct._tagTreeCCField, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !46
  %54 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %53) #30
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %50
  %57 = getelementptr inbounds %struct._tagTreeCCNode, ptr %54, i64 0, i32 5
  %58 = load i32, ptr %57, align 8, !tbaa !40
  %59 = and i32 %58, 8
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %56, %50
  br label %62

62:                                               ; preds = %61, %56
  %63 = phi ptr [ %53, %61 ], [ @.str.12.416, %56 ]
  %64 = load ptr, ptr %51, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.94.446, ptr noundef %63, ptr noundef %64) #30
  %65 = getelementptr inbounds %struct._tagTreeCCField, ptr %51, i64 0, i32 6
  %66 = load ptr, ptr %65, align 8, !tbaa !7
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %50, !llvm.loop !244

68:                                               ; preds = %62
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.10.611) #30
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
  %77 = select i1 %76, ptr @.str.1.771, ptr @.str.73.448
  br label %83

78:                                               ; preds = %69
  %79 = load i32, ptr %3, align 8, !tbaa !40
  %80 = and i32 %79, 2
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, ptr @.str.73.448, ptr @.str.75.449
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi ptr [ %82, %78 ], [ %77, %74 ]
  %85 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.76.450, ptr noundef nonnull %84, ptr noundef %85) #30
  %86 = load i16, ptr %70, align 8
  %87 = and i16 %86, 8
  %88 = icmp eq i16 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %83
  %90 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %91 = load ptr, ptr %90, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.77.451, ptr noundef %91) #30
  br label %92

92:                                               ; preds = %89, %83
  %93 = phi i32 [ 1, %89 ], [ 0, %83 ]
  %94 = tail call fastcc i32 @CreateParams.452(ptr noundef nonnull %0, ptr noundef %11, ptr noundef nonnull %1, i32 noundef %93) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #30
  %95 = load ptr, ptr %1, align 8, !tbaa !45
  %96 = icmp eq ptr %95, null
  br i1 %96, label %106, label %97

97:                                               ; preds = %92
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.78.453) #30
  %98 = load i16, ptr %70, align 8
  %99 = and i16 %98, 8
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %102, label %101

101:                                              ; preds = %97
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.50.627) #30
  br label %102

102:                                              ; preds = %101, %97
  %103 = phi i32 [ 1, %101 ], [ 0, %97 ]
  %104 = load ptr, ptr %1, align 8, !tbaa !45
  %105 = tail call fastcc i32 @InheritParamsSource.455(ptr noundef %11, ptr noundef %104, i32 noundef %103) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.25.511) #30
  br label %106

106:                                              ; preds = %102, %92
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.80.456) #30
  %107 = load i16, ptr %70, align 8
  %108 = and i16 %107, 2
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %121, label %110

110:                                              ; preds = %106
  %111 = load ptr, ptr %1, align 8, !tbaa !45
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %121

113:                                              ; preds = %110
  %114 = and i16 %107, 8
  %115 = icmp eq i16 %114, 0
  br i1 %115, label %117, label %116

116:                                              ; preds = %113
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.81.457) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.82.458) #30
  br label %121

117:                                              ; preds = %113
  %118 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %119 = load ptr, ptr %118, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.83.459, ptr noundef %119) #30
  %120 = load ptr, ptr %118, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.84.460, ptr noundef %120) #30
  br label %121

121:                                              ; preds = %117, %116, %110, %106
  %122 = load ptr, ptr %47, align 8, !tbaa !7
  %123 = icmp eq ptr %122, null
  br i1 %123, label %142, label %124

124:                                              ; preds = %138, %121
  %125 = phi ptr [ %140, %138 ], [ %122, %121 ]
  %126 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 3
  %127 = load i32, ptr %126, align 8, !tbaa !152
  %128 = and i32 %127, 1
  %129 = icmp eq i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %124
  %131 = load ptr, ptr %125, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.85.461, ptr noundef %131, ptr noundef %131) #30
  br label %138

132:                                              ; preds = %124
  %133 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 2
  %134 = load ptr, ptr %133, align 8, !tbaa !151
  %135 = icmp eq ptr %134, null
  br i1 %135, label %138, label %136

136:                                              ; preds = %132
  %137 = load ptr, ptr %125, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.85.461, ptr noundef %137, ptr noundef nonnull %134) #30
  br label %138

138:                                              ; preds = %136, %132, %130
  %139 = getelementptr inbounds %struct._tagTreeCCField, ptr %125, i64 0, i32 6
  %140 = load ptr, ptr %139, align 8, !tbaa !7
  %141 = icmp eq ptr %140, null
  br i1 %141, label %142, label %124, !llvm.loop !245

142:                                              ; preds = %138, %121
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.52.383) #30
  tail call fastcc void @ImplementVirtuals.462(ptr noundef %0, ptr noundef %11, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.86.463) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.87.464) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.88.465) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.89.466) #30
  %143 = load ptr, ptr %1, align 8, !tbaa !45
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr @.str.91.467, ptr @.str.90.468
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull %145) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.52.383) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.92.469) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.11.379) #30
  %146 = load ptr, ptr %9, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.93.470, ptr noundef %146) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.40.396) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %11, ptr noundef nonnull @.str.20.491) #30
  br label %147

147:                                              ; preds = %142, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.281(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %34, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %11 = load i16, ptr %10, align 8
  %12 = and i16 %11, 1024
  %13 = icmp eq i16 %12, 0
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !44
  %16 = select i1 %13, ptr @.str.4.365, ptr @.str.3.366
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull %16, ptr noundef %15) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.11.519) #30
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %33, label %20

20:                                               ; preds = %29, %7
  %21 = phi ptr [ %31, %29 ], [ %18, %7 ]
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 5
  %23 = load i32, ptr %22, align 8, !tbaa !40
  %24 = and i32 %23, 16
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.6.368, ptr noundef %28) #30
  br label %29

29:                                               ; preds = %26, %20
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %21, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %20, !llvm.loop !246

33:                                               ; preds = %29, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.47.562) #30
  br label %34

34:                                               ; preds = %33, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.282(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %4 = load i16, ptr %3, align 8
  %5 = and i16 %4, 72
  %6 = icmp eq i16 %5, 72
  %7 = and i16 %4, 1024
  %8 = icmp eq i16 %7, 0
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !28
  %11 = select i1 %8, ptr @.str.45.375, ptr @.str.8.345
  %12 = select i1 %8, ptr @.str.46.376, ptr @.str.10.347
  %13 = select i1 %6, ptr %11, ptr %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %10) #30
  %14 = load i16, ptr %3, align 8
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %23

17:                                               ; preds = %2
  %18 = load ptr, ptr %9, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.47.377, ptr noundef %18) #30
  %19 = load ptr, ptr %9, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.48.378, ptr noundef %19) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.379) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.49.380) #30
  %20 = load ptr, ptr %9, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.50.381, ptr noundef %20) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.51.382) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.52.383) #30
  %21 = load i16, ptr %3, align 8
  %22 = and i16 %21, 8
  br label %23

23:                                               ; preds = %17, %2
  %24 = phi i16 [ %22, %17 ], [ %15, %2 ]
  %25 = icmp eq i16 %24, 0
  %26 = load ptr, ptr %9, align 8, !tbaa !28
  %27 = select i1 %25, ptr @.str.54.384, ptr @.str.53.385
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %27, ptr noundef %26) #30
  %28 = load i16, ptr %3, align 8
  %29 = and i16 %28, 8
  %30 = icmp eq i16 %29, 0
  br i1 %30, label %33, label %31

31:                                               ; preds = %23
  tail call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.355) #30
  %32 = load i16, ptr %3, align 8
  br label %33

33:                                               ; preds = %31, %23
  %34 = phi i16 [ %32, %31 ], [ %28, %23 ]
  %35 = and i16 %34, 2
  %36 = icmp eq i16 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.356) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.357) #30
  br label %38

38:                                               ; preds = %37, %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.47.562) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.283(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %147

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #32, !range !132
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %10 = load i16, ptr %9, align 8
  %11 = and i16 %10, 1024
  %12 = icmp eq i16 %11, 0
  %13 = select i1 %12, ptr @.str.1.430, ptr @.str.431
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %15 = load ptr, ptr %14, align 8, !tbaa !226
  %16 = load ptr, ptr %1, align 8, !tbaa !45
  %17 = icmp eq ptr %16, null
  %18 = icmp eq i32 %8, 0
  br i1 %17, label %26, label %19

19:                                               ; preds = %7
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  br i1 %18, label %25, label %24

24:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.34.287, ptr noundef nonnull %13, ptr noundef %21, ptr noundef %23) #30
  br label %49

25:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.35.288, ptr noundef nonnull %13, ptr noundef %21, ptr noundef %23) #30
  br label %49

26:                                               ; preds = %7
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  %28 = load ptr, ptr %27, align 8, !tbaa !240
  %29 = icmp eq ptr %28, null
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !44
  br i1 %18, label %35, label %32

32:                                               ; preds = %26
  br i1 %29, label %34, label %33

33:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.34.287, ptr noundef nonnull %13, ptr noundef %31, ptr noundef nonnull %28) #30
  br label %38

34:                                               ; preds = %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.36.289, ptr noundef nonnull %13, ptr noundef %31) #30
  br label %38

35:                                               ; preds = %26
  br i1 %29, label %37, label %36

36:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.35.288, ptr noundef nonnull %13, ptr noundef %31, ptr noundef nonnull %28) #30
  br label %38

37:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.2.432, ptr noundef nonnull %13, ptr noundef %31) #30
  br label %38

38:                                               ; preds = %37, %36, %34, %33
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.64.437) #30
  %39 = load i16, ptr %9, align 8
  %40 = and i16 %39, 2
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.65.438) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.66.439) #30
  br label %43

43:                                               ; preds = %42, %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.10.611) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.67.440) #30
  %44 = load i16, ptr %9, align 8
  %45 = and i16 %44, 2
  %46 = icmp eq i16 %45, 0
  br i1 %46, label %48, label %47

47:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.68.441) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.69.442) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.70.443) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.71.444) #30
  br label %48

48:                                               ; preds = %47, %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.10.611) #30
  br label %49

49:                                               ; preds = %48, %25, %24
  %50 = load ptr, ptr %1, align 8, !tbaa !45
  %51 = icmp eq ptr %50, null
  %52 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %53 = load i32, ptr %52, align 4, !tbaa !184
  %54 = select i1 %51, ptr @.str.48.300, ptr @.str.47.301
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %54, i32 noundef %53) #30
  %55 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %67, label %58

58:                                               ; preds = %58, %49
  %59 = phi ptr [ %64, %58 ], [ %56, %49 ]
  %60 = getelementptr inbounds %struct._tagTreeCCField, ptr %59, i64 0, i32 1
  %61 = load ptr, ptr %60, align 8, !tbaa !46
  %62 = load ptr, ptr %59, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.94.446, ptr noundef %61, ptr noundef %62) #30
  %63 = getelementptr inbounds %struct._tagTreeCCField, ptr %59, i64 0, i32 6
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %58, !llvm.loop !247

66:                                               ; preds = %58
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.10.611) #30
  br label %67

67:                                               ; preds = %66, %49
  %68 = load i16, ptr %9, align 8
  %69 = and i16 %68, 8
  %70 = icmp eq i16 %69, 0
  br i1 %70, label %71, label %76

71:                                               ; preds = %67
  %72 = load i32, ptr %3, align 8, !tbaa !40
  %73 = and i32 %72, 2
  %74 = icmp eq i32 %73, 0
  %75 = select i1 %74, ptr @.str.73.448, ptr @.str.75.449
  br label %76

76:                                               ; preds = %71, %67
  %77 = phi ptr [ @.str.73.448, %67 ], [ %75, %71 ]
  %78 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %79 = load ptr, ptr %78, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.76.450, ptr noundef nonnull %77, ptr noundef %79) #30
  %80 = load i16, ptr %9, align 8
  %81 = and i16 %80, 8
  %82 = icmp eq i16 %81, 0
  br i1 %82, label %86, label %83

83:                                               ; preds = %76
  %84 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %85 = load ptr, ptr %84, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.77.451, ptr noundef %85) #30
  br label %86

86:                                               ; preds = %83, %76
  %87 = phi i32 [ 1, %83 ], [ 0, %76 ]
  %88 = tail call fastcc i32 @CreateParams.307(ptr noundef %15, ptr noundef nonnull %1, i32 noundef %87) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  %89 = load ptr, ptr %1, align 8, !tbaa !45
  %90 = icmp eq ptr %89, null
  br i1 %90, label %100, label %91

91:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.53.309) #30
  %92 = load i16, ptr %9, align 8
  %93 = and i16 %92, 8
  %94 = icmp eq i16 %93, 0
  br i1 %94, label %96, label %95

95:                                               ; preds = %91
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.50.627) #30
  br label %96

96:                                               ; preds = %95, %91
  %97 = phi i32 [ 1, %95 ], [ 0, %91 ]
  %98 = load ptr, ptr %1, align 8, !tbaa !45
  %99 = tail call fastcc i32 @InheritParamsSource.311(ptr noundef %15, ptr noundef %98, i32 noundef %97) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  br label %100

100:                                              ; preds = %96, %86
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.11.379) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.80.456) #30
  %101 = load i16, ptr %9, align 8
  %102 = and i16 %101, 2
  %103 = icmp eq i16 %102, 0
  br i1 %103, label %115, label %104

104:                                              ; preds = %100
  %105 = load ptr, ptr %1, align 8, !tbaa !45
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = and i16 %101, 8
  %109 = icmp eq i16 %108, 0
  br i1 %109, label %111, label %110

110:                                              ; preds = %107
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.81.457) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.82.458) #30
  br label %115

111:                                              ; preds = %107
  %112 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %113 = load ptr, ptr %112, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.83.459, ptr noundef %113) #30
  %114 = load ptr, ptr %112, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.84.460, ptr noundef %114) #30
  br label %115

115:                                              ; preds = %111, %110, %104, %100
  %116 = load ptr, ptr %55, align 8, !tbaa !7
  %117 = icmp eq ptr %116, null
  br i1 %117, label %136, label %118

118:                                              ; preds = %132, %115
  %119 = phi ptr [ %134, %132 ], [ %116, %115 ]
  %120 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 3
  %121 = load i32, ptr %120, align 8, !tbaa !152
  %122 = and i32 %121, 1
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %118
  %125 = load ptr, ptr %119, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.85.461, ptr noundef %125, ptr noundef %125) #30
  br label %132

126:                                              ; preds = %118
  %127 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 2
  %128 = load ptr, ptr %127, align 8, !tbaa !151
  %129 = icmp eq ptr %128, null
  br i1 %129, label %132, label %130

130:                                              ; preds = %126
  %131 = load ptr, ptr %119, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.85.461, ptr noundef %131, ptr noundef nonnull %128) #30
  br label %132

132:                                              ; preds = %130, %126, %124
  %133 = getelementptr inbounds %struct._tagTreeCCField, ptr %119, i64 0, i32 6
  %134 = load ptr, ptr %133, align 8, !tbaa !7
  %135 = icmp eq ptr %134, null
  br i1 %135, label %136, label %118, !llvm.loop !248

136:                                              ; preds = %132, %115
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.52.383) #30
  tail call fastcc void @ImplementVirtuals.320(ptr noundef %0, ptr noundef %15, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  %137 = load ptr, ptr %1, align 8, !tbaa !45
  %138 = icmp eq ptr %137, null
  %139 = select i1 %138, ptr @.str.62.321, ptr @.str.61.322
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %139) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.11.379) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.87.464) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.88.465) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.89.466) #30
  %140 = load ptr, ptr %1, align 8, !tbaa !45
  %141 = icmp eq ptr %140, null
  %142 = select i1 %141, ptr @.str.91.467, ptr @.str.66.327
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %142) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.52.383) #30
  %143 = load ptr, ptr %1, align 8, !tbaa !45
  %144 = icmp eq ptr %143, null
  %145 = select i1 %144, ptr @.str.69.328, ptr @.str.68.329
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %145) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.11.379) #30
  %146 = load ptr, ptr %78, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.93.470, ptr noundef %146) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.40.396) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.47.562) #30
  br label %147

147:                                              ; preds = %136, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.589(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %32, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.29.668, ptr noundef %11) #30
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %31, label %15

15:                                               ; preds = %26, %7
  %16 = phi ptr [ %29, %26 ], [ %13, %7 ]
  %17 = phi i32 [ %27, %26 ], [ 0, %7 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %26, label %22

22:                                               ; preds = %15
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  %25 = add nsw i32 %17, 1
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.30.669, ptr noundef %24, i32 noundef %17) #30
  br label %26

26:                                               ; preds = %22, %15
  %27 = phi i32 [ %25, %22 ], [ %17, %15 ]
  %28 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %15, !llvm.loop !249

31:                                               ; preds = %26, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.31.648) #30
  br label %32

32:                                               ; preds = %31, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.590(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %4 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef %4) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.654) #30
  %5 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %6 = load i16, ptr %5, align 8
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %2
  %10 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.655, ptr noundef %10) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.656) #30
  %11 = load ptr, ptr %3, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35.657, ptr noundef %11) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.36.658) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.37.638) #30
  %12 = load i16, ptr %5, align 8
  br label %13

13:                                               ; preds = %9, %2
  %14 = phi i16 [ %12, %9 ], [ %6, %2 ]
  %15 = and i16 %14, 8
  %16 = icmp eq i16 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.659) #30
  %18 = load i16, ptr %5, align 8
  %19 = and i16 %18, 8
  %20 = icmp eq i16 %19, 0
  br i1 %20, label %23, label %21

21:                                               ; preds = %17, %13
  tail call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.660) #30
  %22 = load i16, ptr %5, align 8
  br label %23

23:                                               ; preds = %21, %17
  %24 = phi i16 [ %22, %21 ], [ %18, %17 ]
  %25 = and i16 %24, 2
  %26 = icmp eq i16 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.661) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.662) #30
  br label %28

28:                                               ; preds = %27, %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.648) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.591(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %99

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #32, !range !132
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !226
  %11 = load ptr, ptr %1, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  br i1 %12, label %18, label %15

15:                                               ; preds = %7
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %11, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.621, ptr noundef %14, ptr noundef %17) #30
  br label %25

18:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.620, ptr noundef %14) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.45.622) #30
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 2
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.46.623) #30
  br label %24

24:                                               ; preds = %23, %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #30
  br label %25

25:                                               ; preds = %24, %15
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %35, label %29

29:                                               ; preds = %29, %25
  %30 = phi ptr [ %33, %29 ], [ %27, %25 ]
  %31 = load ptr, ptr %30, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.47.624, ptr noundef %31) #30
  %32 = getelementptr inbounds %struct._tagTreeCCField, ptr %30, i64 0, i32 6
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %29, !llvm.loop !250

35:                                               ; preds = %29, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #30
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %37 = load i32, ptr %36, align 4, !tbaa !184
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.48.625, i32 noundef %37) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.49.626) #30
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %39 = load i16, ptr %38, align 8
  %40 = and i16 %39, 8
  %41 = icmp eq i16 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.50.627) #30
  br label %43

43:                                               ; preds = %42, %35
  %44 = phi i32 [ 1, %42 ], [ 0, %35 ]
  %45 = tail call fastcc i32 @CreateParams.628(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %44) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #30
  %46 = load ptr, ptr %1, align 8, !tbaa !45
  %47 = icmp eq ptr %46, null
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.51.629) #30
  %49 = load i16, ptr %38, align 8
  %50 = and i16 %49, 8
  %51 = icmp eq i16 %50, 0
  br i1 %51, label %53, label %52

52:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.52.630) #30
  br label %53

53:                                               ; preds = %52, %48
  %54 = phi i32 [ 1, %52 ], [ 0, %48 ]
  %55 = tail call fastcc i32 @CreateParams.628(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %54) #32, !range !132
  %56 = load ptr, ptr %1, align 8, !tbaa !45
  %57 = tail call fastcc i32 @InheritParamsSource.631(ptr noundef %10, ptr noundef %56, i32 noundef %54) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #30
  br label %58

58:                                               ; preds = %53, %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.53.632) #30
  %59 = load i16, ptr %38, align 8
  %60 = and i16 %59, 2
  %61 = icmp eq i16 %60, 0
  br i1 %61, label %73, label %62

62:                                               ; preds = %58
  %63 = load ptr, ptr %1, align 8, !tbaa !45
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %73

65:                                               ; preds = %62
  %66 = and i16 %59, 8
  %67 = icmp eq i16 %66, 0
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.54.633) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.55.634) #30
  br label %73

69:                                               ; preds = %65
  %70 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %71 = load ptr, ptr %70, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.56.635, ptr noundef %71) #30
  %72 = load ptr, ptr %70, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.57.636, ptr noundef %72) #30
  br label %73

73:                                               ; preds = %69, %68, %62, %58
  %74 = load ptr, ptr %26, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %94, label %76

76:                                               ; preds = %90, %73
  %77 = phi ptr [ %92, %90 ], [ %74, %73 ]
  %78 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 3
  %79 = load i32, ptr %78, align 8, !tbaa !152
  %80 = and i32 %79, 1
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load ptr, ptr %77, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.637, ptr noundef %83, ptr noundef %83) #30
  br label %90

84:                                               ; preds = %76
  %85 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 2
  %86 = load ptr, ptr %85, align 8, !tbaa !151
  %87 = icmp eq ptr %86, null
  br i1 %87, label %90, label %88

88:                                               ; preds = %84
  %89 = load ptr, ptr %77, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.637, ptr noundef %89, ptr noundef nonnull %86) #30
  br label %90

90:                                               ; preds = %88, %84, %82
  %91 = getelementptr inbounds %struct._tagTreeCCField, ptr %77, i64 0, i32 6
  %92 = load ptr, ptr %91, align 8, !tbaa !7
  %93 = icmp eq ptr %92, null
  br i1 %93, label %94, label %76, !llvm.loop !251

94:                                               ; preds = %90, %73
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.37.638) #30
  tail call fastcc void @ImplementVirtuals.639(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.640) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.60.641) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.61.642) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.62.643) #30
  %95 = load ptr, ptr %1, align 8, !tbaa !45
  %96 = icmp eq ptr %95, null
  %97 = select i1 %96, ptr @.str.64.644, ptr @.str.63.645
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %97) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.37.638) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.65.646) #30
  %98 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.66.647, ptr noundef %98) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.26.596) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.31.648) #30
  br label %99

99:                                               ; preds = %94, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareTypeDefs.487(ptr nocapture readnone %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 8
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !226
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %7
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  br label %15

15:                                               ; preds = %27, %13
  %16 = phi ptr [ %11, %13 ], [ %30, %27 ]
  %17 = phi i32 [ 1, %13 ], [ %28, %27 ]
  %18 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 5
  %19 = load i32, ptr %18, align 8, !tbaa !40
  %20 = and i32 %19, 16
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %27, label %22

22:                                               ; preds = %15
  %23 = load ptr, ptr %14, align 8, !tbaa !44
  %24 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.36.583, ptr noundef %23, ptr noundef %25, i32 noundef %17) #30
  %26 = add nsw i32 %17, 1
  br label %27

27:                                               ; preds = %22, %15
  %28 = phi i32 [ %26, %22 ], [ %17, %15 ]
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %15, !llvm.loop !252

32:                                               ; preds = %27, %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %9, ptr noundef nonnull @.str.37.584) #30
  br label %33

33:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementStateType.488(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %5 = load ptr, ptr %4, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.570, ptr noundef %5) #30
  %6 = load i16, ptr %3, align 8
  %7 = and i16 %6, 8
  %8 = icmp eq i16 %7, 0
  br i1 %8, label %9, label %14

9:                                                ; preds = %2
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.571) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.526) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.572) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.41.573) #30
  %10 = load ptr, ptr %4, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.42.574, ptr noundef %10) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.43.575) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.44.552) #30
  %11 = load i16, ptr %3, align 8
  %12 = and i16 %11, 8
  %13 = icmp eq i16 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %9, %2
  tail call fastcc void @TreeCCNodeVisitAll(ptr noundef nonnull %0, ptr noundef nonnull @ImplementCreateFuncs.576) #30
  %15 = load i16, ptr %3, align 8
  br label %16

16:                                               ; preds = %14, %9
  %17 = phi i16 [ %15, %14 ], [ %11, %9 ]
  %18 = and i16 %17, 2
  %19 = icmp eq i16 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.45.577) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.46.578) #30
  br label %21

21:                                               ; preds = %20, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.47.562) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BuildTypeDecls.489(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 24
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %113

7:                                                ; preds = %2
  %8 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %1, ptr noundef nonnull %1) #32, !range !132
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 14
  %10 = load ptr, ptr %9, align 8, !tbaa !226
  %11 = load ptr, ptr %1, align 8, !tbaa !45
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 6
  %16 = load i32, ptr %15, align 4, !tbaa !184
  %17 = select i1 %12, ptr @.str.51.528, ptr @.str.50.529
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %17, ptr noundef %14, i32 noundef %16) #30
  %18 = load ptr, ptr %1, align 8, !tbaa !45
  %19 = icmp eq ptr %18, null
  %20 = load ptr, ptr %13, align 8, !tbaa !44
  br i1 %19, label %24, label %21

21:                                               ; preds = %7
  %22 = getelementptr inbounds %struct._tagTreeCCNode, ptr %18, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.52.530, ptr noundef %20, ptr noundef %23) #30
  br label %36

24:                                               ; preds = %7
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.527, ptr noundef %20) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.53.531) #30
  %25 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %26 = load i16, ptr %25, align 8
  %27 = and i16 %26, 2
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %30, label %29

29:                                               ; preds = %24
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.54.532) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.55.533) #30
  br label %30

30:                                               ; preds = %29, %24
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.56.534) #30
  %31 = load i16, ptr %25, align 8
  %32 = and i16 %31, 2
  %33 = icmp eq i16 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.57.535) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.58.536) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.59.537) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.60.538) #30
  br label %35

35:                                               ; preds = %34, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #30
  br label %36

36:                                               ; preds = %35, %21
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %47, label %40

40:                                               ; preds = %40, %36
  %41 = phi ptr [ %44, %40 ], [ %38, %36 ]
  %42 = load ptr, ptr %41, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.79.539, ptr noundef %42) #30
  %43 = getelementptr inbounds %struct._tagTreeCCField, ptr %41, i64 0, i32 6
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %40, !llvm.loop !253

46:                                               ; preds = %40
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.10.611) #30
  br label %47

47:                                               ; preds = %46, %36
  %48 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %49 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.62.540, ptr noundef nonnull @.str.1.771, ptr noundef %49) #30
  %50 = load i16, ptr %48, align 8
  %51 = and i16 %50, 8
  %52 = icmp eq i16 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.63.542) #30
  br label %54

54:                                               ; preds = %53, %47
  %55 = phi i32 [ 1, %53 ], [ 0, %47 ]
  %56 = tail call fastcc i32 @CreateParams.543(ptr noundef %10, ptr noundef nonnull %1, i32 noundef %55) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #30
  %57 = load ptr, ptr %1, align 8, !tbaa !45
  %58 = icmp eq ptr %57, null
  br i1 %58, label %70, label %59

59:                                               ; preds = %54
  %60 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.64.544, ptr noundef %61) #30
  %62 = load i16, ptr %48, align 8
  %63 = and i16 %62, 8
  %64 = icmp eq i16 %63, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.63.542) #30
  br label %66

66:                                               ; preds = %65, %59
  %67 = phi i32 [ 1, %65 ], [ 0, %59 ]
  %68 = load ptr, ptr %1, align 8, !tbaa !45
  %69 = tail call fastcc i32 @InheritParamsSource.545(ptr noundef %10, ptr noundef %68, i32 noundef %67) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.25.511) #30
  br label %70

70:                                               ; preds = %66, %54
  %71 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.65.546, ptr noundef %71) #30
  %72 = load i16, ptr %48, align 8
  %73 = and i16 %72, 2
  %74 = icmp eq i16 %73, 0
  br i1 %74, label %86, label %75

75:                                               ; preds = %70
  %76 = load ptr, ptr %1, align 8, !tbaa !45
  %77 = icmp eq ptr %76, null
  br i1 %77, label %78, label %86

78:                                               ; preds = %75
  %79 = and i16 %72, 8
  %80 = icmp eq i16 %79, 0
  br i1 %80, label %82, label %81

81:                                               ; preds = %78
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.66.547) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.67.548) #30
  br label %86

82:                                               ; preds = %78
  %83 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %84 = load ptr, ptr %83, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.68.549, ptr noundef %84) #30
  %85 = load ptr, ptr %83, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.69.550, ptr noundef %85) #30
  br label %86

86:                                               ; preds = %82, %81, %75, %70
  %87 = load ptr, ptr %37, align 8, !tbaa !7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %107, label %89

89:                                               ; preds = %103, %86
  %90 = phi ptr [ %105, %103 ], [ %87, %86 ]
  %91 = getelementptr inbounds %struct._tagTreeCCField, ptr %90, i64 0, i32 3
  %92 = load i32, ptr %91, align 8, !tbaa !152
  %93 = and i32 %92, 1
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %97

95:                                               ; preds = %89
  %96 = load ptr, ptr %90, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.70.551, ptr noundef %96, ptr noundef %96) #30
  br label %103

97:                                               ; preds = %89
  %98 = getelementptr inbounds %struct._tagTreeCCField, ptr %90, i64 0, i32 2
  %99 = load ptr, ptr %98, align 8, !tbaa !151
  %100 = icmp eq ptr %99, null
  br i1 %100, label %103, label %101

101:                                              ; preds = %97
  %102 = load ptr, ptr %90, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.70.551, ptr noundef %102, ptr noundef nonnull %99) #30
  br label %103

103:                                              ; preds = %101, %97, %95
  %104 = getelementptr inbounds %struct._tagTreeCCField, ptr %90, i64 0, i32 6
  %105 = load ptr, ptr %104, align 8, !tbaa !7
  %106 = icmp eq ptr %105, null
  br i1 %106, label %107, label %89, !llvm.loop !254

107:                                              ; preds = %103, %86
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.552) #30
  tail call fastcc void @ImplementVirtuals.553(ptr noundef %0, ptr noundef %10, ptr noundef nonnull %1, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.71.554) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #30
  %108 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.72.555, ptr noundef %108) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.73.556) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.74.557) #30
  %109 = load ptr, ptr %1, align 8, !tbaa !45
  %110 = icmp eq ptr %109, null
  %111 = select i1 %110, ptr @.str.76.558, ptr @.str.75.559
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull %111) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.44.552) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.77.560) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.8.526) #30
  %112 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.78.561, ptr noundef %112) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.34.496) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %10, ptr noundef nonnull @.str.47.562) #30
  br label %113

113:                                              ; preds = %107, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #16

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenStart(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.527, ptr noundef nonnull %5) #30
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.527, ptr noundef %9) #30
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @PHPGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSplitEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @PHPGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSwitchHead(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #32
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.10.522, ptr @.str.9.523
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #30
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenSelector(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %11) #32
  %12 = load ptr, ptr %2, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.520, ptr noundef %14, ptr noundef %16) #30
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %22) #32
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.521, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndSelectors(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseFunc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.516, ptr noundef %7, i32 noundef %3) #30
  %8 = load ptr, ptr %5, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %28, label %12

12:                                               ; preds = %23, %4
  %13 = phi ptr [ %26, %23 ], [ %10, %4 ]
  %14 = phi i1 [ false, %23 ], [ true, %4 ]
  %15 = phi i32 [ %24, %23 ], [ 1, %4 ]
  br i1 %14, label %17, label %16

16:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %17

17:                                               ; preds = %16, %12
  %18 = load ptr, ptr %13, align 8, !tbaa !94
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %18) #30
  br label %23

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %15) #30
  %22 = add nsw i32 %15, 1
  br label %23

23:                                               ; preds = %21, %20
  %24 = phi i32 [ %15, %20 ], [ %22, %21 ]
  %25 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %12, !llvm.loop !255

28:                                               ; preds = %23, %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %29 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %30 = load i32, ptr %29, align 4, !tbaa !39
  %31 = icmp eq i32 %30, 3
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %34 = load i64, ptr %33, align 8, !tbaa !143
  %35 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %36 = load ptr, ptr %35, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %34, ptr noundef %36) #30
  br label %37

37:                                               ; preds = %32, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.518) #30
  %38 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !137
  %40 = icmp eq ptr %39, null
  br i1 %40, label %42, label %41

41:                                               ; preds = %37
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %39, i32 noundef 1) #30
  br label %42

42:                                               ; preds = %41, %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %43 = load i32, ptr %29, align 4, !tbaa !39
  %44 = icmp eq i32 %43, 3
  br i1 %44, label %45, label %51

45:                                               ; preds = %42
  %46 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %47 = load i64, ptr %46, align 8, !tbaa !129
  %48 = add nsw i64 %47, 1
  %49 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %50 = load ptr, ptr %49, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %48, ptr noundef %50) #32
  br label %51

51:                                               ; preds = %45, %42
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseCall(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.514, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %53, %23
  %26 = phi ptr [ %56, %53 ], [ %21, %23 ]
  %27 = phi i1 [ false, %53 ], [ true, %23 ]
  %28 = phi i32 [ %38, %53 ], [ 1, %23 ]
  %29 = phi ptr [ %54, %53 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %26, align 8, !tbaa !94
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %32) #30
  br label %37

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %28) #30
  %36 = add nsw i32 %28, 1
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %28, %34 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %29, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !40
  %47 = and i32 %46, 24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !133
  br label %53

53:                                               ; preds = %50, %37
  %54 = phi ptr [ %52, %50 ], [ %29, %37 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %25, !llvm.loop !256

58:                                               ; preds = %53, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseInline(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !68
  %12 = shl nsw i32 %3, 1
  %13 = add nsw i32 %12, 4
  br label %14

14:                                               ; preds = %35, %10
  %15 = phi ptr [ %8, %10 ], [ %38, %35 ]
  %16 = phi ptr [ %11, %10 ], [ %36, %35 ]
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %35, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %32, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !40
  %28 = and i32 %27, 24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %24
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %13) #32
  %31 = load ptr, ptr %15, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.512, ptr noundef %31, ptr noundef %31) #30
  br label %32

32:                                               ; preds = %30, %24, %21
  %33 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %16, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !133
  br label %35

35:                                               ; preds = %32, %14
  %36 = phi ptr [ %34, %32 ], [ %16, %14 ]
  %37 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %14, !llvm.loop !257

40:                                               ; preds = %35, %4
  %41 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = icmp eq i32 %42, 3
  br i1 %43, label %44, label %49

44:                                               ; preds = %40
  %45 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %46 = load i64, ptr %45, align 8, !tbaa !143
  %47 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %48 = load ptr, ptr %47, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %46, ptr noundef %48) #30
  br label %49

49:                                               ; preds = %44, %40
  %50 = shl nsw i32 %3, 1
  %51 = add nsw i32 %50, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %51) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %52 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !137
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %49
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %53, i32 noundef %51) #30
  br label %56

56:                                               ; preds = %55, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %57 = load i32, ptr %41, align 4, !tbaa !39
  %58 = icmp eq i32 %57, 3
  br i1 %58, label %59, label %65

59:                                               ; preds = %56
  %60 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %61 = load i64, ptr %60, align 8, !tbaa !129
  %62 = add nsw i64 %61, 1
  %63 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %64 = load ptr, ptr %63, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %62, ptr noundef %64) #32
  br label %65

65:                                               ; preds = %59, %56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenCaseSplit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28.506, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %58, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %53, %23
  %26 = phi ptr [ %56, %53 ], [ %21, %23 ]
  %27 = phi i1 [ false, %53 ], [ true, %23 ]
  %28 = phi i32 [ %38, %53 ], [ 1, %23 ]
  %29 = phi ptr [ %54, %53 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = load ptr, ptr %26, align 8, !tbaa !94
  %33 = icmp eq ptr %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %32) #30
  br label %37

35:                                               ; preds = %31
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %28) #30
  %36 = add nsw i32 %28, 1
  br label %37

37:                                               ; preds = %35, %34
  %38 = phi i32 [ %28, %34 ], [ %36, %35 ]
  %39 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %40 = load i32, ptr %39, align 8, !tbaa !74
  %41 = and i32 %40, 1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %53, label %43

43:                                               ; preds = %37
  %44 = load ptr, ptr %29, align 8, !tbaa !69
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %44, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !40
  %47 = and i32 %46, 24
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %50

50:                                               ; preds = %49, %43
  %51 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !133
  br label %53

53:                                               ; preds = %50, %37
  %54 = phi ptr [ %52, %50 ], [ %29, %37 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %25, !llvm.loop !258

58:                                               ; preds = %53, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndCase(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.504) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEndSwitch(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.498) #30
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.497(ptr noundef %1, i32 noundef %6) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenExit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.32.494, ptr noundef nonnull %10) #30
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.495) #30
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.496) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @PHP_GenEnd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.497(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.12.499) #30
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !259

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.500, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #30
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamLine(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !128
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
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
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
  %24 = load i8, ptr %23, align 1, !tbaa !11
  switch i8 %24, label %17 [
    i8 47, label %25
    i8 92, label %25
  ], !llvm.loop !260

25:                                               ; preds = %21, %21, %17
  %26 = phi i32 [ %19, %21 ], [ %19, %21 ], [ %16, %17 ]
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8, ptr %2, i64 %27
  br label %29

29:                                               ; preds = %25, %9
  %30 = phi ptr [ %28, %25 ], [ %2, %9 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %0, ptr noundef nonnull @.str.8.943, i64 noundef %1, ptr noundef %30) #32
  br label %31

31:                                               ; preds = %29, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamCodeIndent(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i8, ptr %1, align 1, !tbaa !11
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
  %19 = load i32, ptr %9, align 8, !tbaa !116
  %20 = icmp slt i32 %19, 2048
  br i1 %20, label %21, label %28

21:                                               ; preds = %16
  %22 = load ptr, ptr %11, align 8, !tbaa !115
  %23 = add nsw i32 %19, 1
  store i32 %23, ptr %9, align 8, !tbaa !116
  %24 = sext i32 %19 to i64
  %25 = getelementptr inbounds [2048 x i8], ptr %22, i64 0, i64 %24
  store i8 %17, ptr %25, align 1, !tbaa !11
  %26 = load i8, ptr %12, align 4
  %27 = or i8 %26, 16
  store i8 %27, ptr %12, align 4
  br label %29

28:                                               ; preds = %16
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  store i8 %17, ptr %5, align 1, !tbaa !11
  store i8 0, ptr %10, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  br label %29

29:                                               ; preds = %28, %21
  %30 = load i8, ptr %18, align 1, !tbaa !11
  %31 = icmp eq i8 %30, 10
  br i1 %31, label %32, label %50

32:                                               ; preds = %29
  %33 = load i64, ptr %13, align 8, !tbaa !129
  %34 = add nsw i64 %33, 1
  store i64 %34, ptr %13, align 8, !tbaa !129
  br i1 %14, label %35, label %50

35:                                               ; preds = %47, %32
  %36 = phi i32 [ %48, %47 ], [ 0, %32 ]
  %37 = load i32, ptr %9, align 8, !tbaa !116
  %38 = icmp slt i32 %37, 2048
  br i1 %38, label %39, label %46

39:                                               ; preds = %35
  %40 = load ptr, ptr %11, align 8, !tbaa !115
  %41 = add nsw i32 %37, 1
  store i32 %41, ptr %9, align 8, !tbaa !116
  %42 = sext i32 %37 to i64
  %43 = getelementptr inbounds [2048 x i8], ptr %40, i64 0, i64 %42
  store i8 9, ptr %43, align 1, !tbaa !11
  %44 = load i8, ptr %12, align 4
  %45 = or i8 %44, 16
  store i8 %45, ptr %12, align 4
  br label %47

46:                                               ; preds = %35
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #28
  store i8 9, ptr %4, align 1, !tbaa !11
  store i8 0, ptr %15, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #28
  br label %47

47:                                               ; preds = %46, %39
  %48 = add nuw nsw i32 %36, 1
  %49 = icmp eq i32 %48, %2
  br i1 %49, label %50, label %35, !llvm.loop !261

50:                                               ; preds = %47, %32, %29
  %51 = getelementptr inbounds i8, ptr %18, i64 1
  %52 = load i8, ptr %51, align 1, !tbaa !11
  %53 = icmp eq i8 %52, 0
  br i1 %53, label %54, label %16, !llvm.loop !262

54:                                               ; preds = %50, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @WriteBuffer(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
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
  %13 = load i32, ptr %10, align 8, !tbaa !116
  br label %14

14:                                               ; preds = %32, %9
  %15 = phi i32 [ %13, %9 ], [ %43, %32 ]
  %16 = phi i32 [ %4, %9 ], [ %41, %32 ]
  %17 = phi ptr [ %1, %9 ], [ %40, %32 ]
  %18 = icmp sgt i32 %15, 2047
  br i1 %18, label %19, label %29

19:                                               ; preds = %14
  %20 = tail call noalias dereferenceable_or_null(2056) ptr @malloc(i64 noundef 2056) #29
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %20, i64 0, i32 1
  store ptr null, ptr %24, align 8, !tbaa !117
  %25 = load ptr, ptr %11, align 8, !tbaa !115
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct._tagTreeCCStreamBuf, ptr %25, i64 0, i32 1
  %28 = select i1 %26, ptr %12, ptr %27
  store ptr %20, ptr %28, align 8, !tbaa !7
  store ptr %20, ptr %11, align 8, !tbaa !115
  store i32 0, ptr %10, align 8, !tbaa !116
  br label %32

29:                                               ; preds = %14
  %30 = load ptr, ptr %11, align 8, !tbaa !115
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
  %42 = load i32, ptr %10, align 8, !tbaa !116
  %43 = add nsw i32 %42, %36
  store i32 %43, ptr %10, align 8, !tbaa !116
  %44 = icmp sgt i32 %41, 0
  br i1 %44, label %14, label %45, !llvm.loop !263

45:                                               ; preds = %32, %2
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #18

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @PHPGenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  %6 = load ptr, ptr %2, align 8, !tbaa !67
  br i1 %5, label %8, label %7

7:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.1.524, ptr noundef %6, i32 noundef %3) #30
  br label %9

8:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.525, ptr noundef %6) #30
  br label %9

9:                                                ; preds = %8, %7
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %45, label %13

13:                                               ; preds = %41, %9
  %14 = phi ptr [ %43, %41 ], [ %11, %9 ]
  %15 = phi i1 [ false, %41 ], [ true, %9 ]
  %16 = phi i32 [ %25, %41 ], [ 1, %9 ]
  br i1 %15, label %18, label %17

17:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %18

18:                                               ; preds = %17, %13
  %19 = load ptr, ptr %14, align 8, !tbaa !94
  %20 = icmp eq ptr %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.508, ptr noundef nonnull %19) #30
  br label %24

22:                                               ; preds = %18
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %16) #30
  %23 = add nsw i32 %16, 1
  br label %24

24:                                               ; preds = %22, %21
  %25 = phi i32 [ %16, %21 ], [ %23, %22 ]
  %26 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 2
  %27 = load i32, ptr %26, align 8, !tbaa !74
  %28 = and i32 %27, 1
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %41, label %30

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !76
  %33 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %32) #30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %33, i64 0, i32 5
  %37 = load i32, ptr %36, align 8, !tbaa !40
  %38 = and i32 %37, 8
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %35, %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %41

41:                                               ; preds = %40, %35, %24
  %42 = getelementptr inbounds %struct._tagTreeCCParam, ptr %14, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %13, !llvm.loop !264

45:                                               ; preds = %41, %9
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.8.526) #30
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc i32 @HasAbstracts(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) unnamed_addr #12 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %9, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @HasAbstracts(ptr noundef %0, ptr noundef nonnull %4, ptr noundef %2) #32, !range !132
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %29

9:                                                ; preds = %6, %3
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %29, label %13

13:                                               ; preds = %25, %9
  %14 = phi ptr [ %27, %25 ], [ %11, %9 ]
  %15 = load ptr, ptr %14, align 8, !tbaa !163
  %16 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %2, ptr noundef %15) #30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %25

18:                                               ; preds = %22, %13
  %19 = phi ptr [ %20, %22 ], [ %2, %13 ]
  %20 = load ptr, ptr %19, align 8, !tbaa !45
  %21 = icmp eq ptr %20, null
  br i1 %21, label %29, label %22

22:                                               ; preds = %18
  %23 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %15) #30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %18, label %25, !llvm.loop !265

25:                                               ; preds = %22, %13
  %26 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %14, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %13, !llvm.loop !266

29:                                               ; preds = %25, %18, %9, %6
  %30 = phi i32 [ 1, %6 ], [ 0, %9 ], [ 1, %18 ], [ 0, %25 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.543(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.543(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.80.569, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !267

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.545(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.545(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !268

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.553(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.553(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %87, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  br label %16

16:                                               ; preds = %31, %12
  %17 = phi ptr [ %10, %12 ], [ %33, %31 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %18) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %35

21:                                               ; preds = %25, %16
  %22 = phi ptr [ %23, %25 ], [ %3, %16 ]
  %23 = load ptr, ptr %22, align 8, !tbaa !45
  %24 = icmp eq ptr %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %21
  %26 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %23, ptr noundef %18) #30
  %27 = icmp eq ptr %26, null
  br i1 %27, label %21, label %31, !llvm.loop !269

28:                                               ; preds = %21
  br i1 %13, label %35, label %31

29:                                               ; preds = %81, %66
  %30 = phi ptr [ @.str.10.611, %81 ], [ @.str.86.563, %66 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %30) #30
  br label %31

31:                                               ; preds = %29, %28, %25
  %32 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %87, label %16, !llvm.loop !270

35:                                               ; preds = %28, %16
  %36 = phi ptr [ @.str.81.564, %28 ], [ @.str.82.565, %16 ]
  %37 = phi ptr [ null, %28 ], [ %19, %16 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %36, ptr noundef %18) #30
  %38 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !167
  %40 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !7
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
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %50

50:                                               ; preds = %49, %43
  %51 = load ptr, ptr %44, align 8, !tbaa !94
  %52 = icmp eq ptr %51, null
  br i1 %46, label %56, label %53

53:                                               ; preds = %50
  %54 = zext i1 %52 to i32
  %55 = add nsw i32 %47, %54
  br label %60

56:                                               ; preds = %50
  br i1 %52, label %58, label %57

57:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.83.566, ptr noundef nonnull %51) #30
  br label %60

58:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.515, i32 noundef %47) #30
  %59 = add nsw i32 %47, 1
  br label %60

60:                                               ; preds = %58, %57, %53
  %61 = phi i32 [ %55, %53 ], [ %47, %57 ], [ %59, %58 ]
  %62 = phi i32 [ %45, %53 ], [ 1, %57 ], [ 1, %58 ]
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !271

66:                                               ; preds = %60, %35
  br i1 %20, label %29, label %67

67:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %68 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !143
  %70 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %69, ptr noundef %71) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.518) #30
  %72 = load ptr, ptr %38, align 8, !tbaa !167
  %73 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = load ptr, ptr %74, align 8, !tbaa !94
  %76 = icmp eq ptr %75, null
  br i1 %76, label %81, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.84.567) #31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %81, label %80

80:                                               ; preds = %77
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.85.568, ptr noundef nonnull %75) #30
  br label %81

81:                                               ; preds = %80, %77, %67
  %82 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %83, i32 noundef 1) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %84 = load i64, ptr %14, align 8, !tbaa !129
  %85 = add nsw i64 %84, 1
  %86 = load ptr, ptr %15, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %85, ptr noundef %86) #32
  br label %29

87:                                               ; preds = %31, %8
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @TreeCCOperationFindCase(ptr nocapture noundef readonly %0, ptr noundef readnone %1, ptr nocapture noundef readonly %2) unnamed_addr #12 {
  %4 = tail call fastcc ptr @TreeCCOperationFind(ptr noundef %0, ptr noundef %2) #32
  %5 = icmp eq ptr %4, null
  br i1 %5, label %21, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %4, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %21, label %10

10:                                               ; preds = %17, %6
  %11 = phi ptr [ %19, %17 ], [ %8, %6 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !68
  %13 = icmp eq ptr %12, null
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %12, align 8, !tbaa !69
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %21, label %17

17:                                               ; preds = %14, %10
  %18 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %11, i64 0, i32 8
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %10, !llvm.loop !272

21:                                               ; preds = %17, %14, %6, %3
  %22 = phi ptr [ null, %3 ], [ null, %6 ], [ null, %17 ], [ %11, %14 ]
  ret ptr %22
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @TreeCCOperationFind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load i8, ptr %1, align 1, !tbaa !11
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
  %13 = load i8, ptr %11, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !161

15:                                               ; preds = %5
  %.lcssa = phi i32 [ %12, %5 ]
  %16 = and i32 %.lcssa, 511
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i64 [ 0, %2 ], [ %17, %15 ]
  %20 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 1, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %32, label %23

23:                                               ; preds = %28, %18
  %24 = phi ptr [ %30, %28 ], [ %21, %18 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !67
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %1) #31
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %32, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %24, i64 0, i32 9
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %23, !llvm.loop !273

32:                                               ; preds = %28, %23, %18
  %33 = phi ptr [ null, %18 ], [ %24, %23 ], [ null, %28 ]
  ret ptr %33
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.576(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %27

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.48.579, ptr noundef %18) #30
  %19 = tail call fastcc i32 @FactoryCreateParams.580(ptr noundef %15, ptr noundef nonnull %1) #32, !range !132
  %20 = load i16, ptr %16, align 8
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.8.526) #30
  %24 = load ptr, ptr %17, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.49.581, ptr noundef %24) #30
  tail call fastcc void @FactoryInvokeParams.582(ptr noundef %15, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.25.511) #30
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi ptr [ @.str.44.552, %23 ], [ @.str.25.511, %14 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %26) #30
  br label %27

27:                                               ; preds = %25, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.580(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.580(ptr noundef %0, ptr noundef nonnull %3) #32, !range !132
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %24, %7
  %13 = phi ptr [ %27, %24 ], [ %10, %7 ]
  %14 = phi i32 [ %25, %24 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !152
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %19
  %23 = load ptr, ptr %13, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %23) #30
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %26 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !274

29:                                               ; preds = %24, %7
  %30 = phi i32 [ %8, %7 ], [ %25, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.582(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.582(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.508, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !275

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenStart(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !102
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef nonnull %5) #30
  br label %10

8:                                                ; preds = %3
  %9 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.620, ptr noundef %9) #30
  br label %10

10:                                               ; preds = %8, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @RubyGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSplitEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @RubyGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSwitchHead(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #32
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.9.616, ptr @.str.8.617
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #30
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenSelector(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %11) #32
  %12 = load ptr, ptr %2, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.614, ptr noundef %14, ptr noundef %16) #30
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %22) #32
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.16.615, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @Ruby_GenEndSelectors(ptr nocapture %0, ptr nocapture %1, i32 %2) #19 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseFunc(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !102
  %9 = icmp eq ptr %8, null
  %10 = load ptr, ptr %6, align 8, !tbaa !67
  %11 = select i1 %9, ptr %10, ptr %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.17.613, ptr noundef %11, ptr noundef %10, i32 noundef %3) #30
  %12 = load ptr, ptr %5, align 8, !tbaa !138
  %13 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = icmp eq ptr %14, null
  br i1 %15, label %32, label %16

16:                                               ; preds = %27, %4
  %17 = phi ptr [ %30, %27 ], [ %14, %4 ]
  %18 = phi i1 [ false, %27 ], [ true, %4 ]
  %19 = phi i32 [ %28, %27 ], [ 1, %4 ]
  br i1 %18, label %21, label %20

20:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %21

21:                                               ; preds = %20, %16
  %22 = load ptr, ptr %17, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %22) #30
  br label %27

25:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %19) #30
  %26 = add nsw i32 %19, 1
  br label %27

27:                                               ; preds = %25, %24
  %28 = phi i32 [ %19, %24 ], [ %26, %25 ]
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %16, !llvm.loop !276

32:                                               ; preds = %27, %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %33 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !137
  %35 = icmp eq ptr %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %32
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %34, i32 noundef 1) #30
  br label %37

37:                                               ; preds = %36, %32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseCall(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = or i32 %6, 1
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.612, ptr noundef %10, i32 noundef %3) #30
  %11 = load ptr, ptr %8, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %50, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %45, %15
  %18 = phi ptr [ %48, %45 ], [ %13, %15 ]
  %19 = phi i1 [ false, %45 ], [ true, %15 ]
  %20 = phi i32 [ %30, %45 ], [ 1, %15 ]
  %21 = phi ptr [ %46, %45 ], [ %16, %15 ]
  br i1 %19, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %17
  %24 = load ptr, ptr %18, align 8, !tbaa !94
  %25 = icmp eq ptr %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %24) #30
  br label %29

27:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %20) #30
  %28 = add nsw i32 %20, 1
  br label %29

29:                                               ; preds = %27, %26
  %30 = phi i32 [ %20, %26 ], [ %28, %27 ]
  %31 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %32 = load i32, ptr %31, align 8, !tbaa !74
  %33 = and i32 %32, 1
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %45, label %35

35:                                               ; preds = %29
  %36 = load ptr, ptr %21, align 8, !tbaa !69
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %36, i64 0, i32 5
  %38 = load i32, ptr %37, align 8, !tbaa !40
  %39 = and i32 %38, 24
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %42

42:                                               ; preds = %41, %35
  %43 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %21, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !133
  br label %45

45:                                               ; preds = %42, %29
  %46 = phi ptr [ %44, %42 ], [ %21, %29 ]
  %47 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %17, !llvm.loop !277

50:                                               ; preds = %45, %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseInline(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i8], align 1
  %6 = alloca [2 x i8], align 1
  %7 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !138
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %8, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %4
  %13 = shl nsw i32 %3, 1
  %14 = add nsw i32 %13, 4
  br label %45

15:                                               ; preds = %4
  %16 = load ptr, ptr %2, align 8, !tbaa !68
  %17 = shl nsw i32 %3, 1
  %18 = add nsw i32 %17, 4
  br label %19

19:                                               ; preds = %40, %15
  %20 = phi ptr [ %10, %15 ], [ %43, %40 ]
  %21 = phi ptr [ %16, %15 ], [ %41, %40 ]
  %22 = getelementptr inbounds %struct._tagTreeCCParam, ptr %20, i64 0, i32 2
  %23 = load i32, ptr %22, align 8, !tbaa !74
  %24 = and i32 %23, 1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %40, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %20, align 8, !tbaa !94
  %28 = icmp eq ptr %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load ptr, ptr %21, align 8, !tbaa !69
  %31 = getelementptr inbounds %struct._tagTreeCCNode, ptr %30, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !40
  %33 = and i32 %32, 24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %29
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %18) #32
  %36 = load ptr, ptr %20, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.610, ptr noundef %36, ptr noundef %36) #30
  br label %37

37:                                               ; preds = %35, %29, %26
  %38 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %21, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !133
  br label %40

40:                                               ; preds = %37, %19
  %41 = phi ptr [ %39, %37 ], [ %21, %19 ]
  %42 = getelementptr inbounds %struct._tagTreeCCParam, ptr %20, i64 0, i32 4
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %19, !llvm.loop !278

45:                                               ; preds = %40, %12
  %46 = phi i32 [ %14, %12 ], [ %18, %40 ]
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %46) #32
  %47 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !137
  %49 = icmp eq ptr %48, null
  br i1 %49, label %101, label %50

50:                                               ; preds = %45
  %51 = shl i32 %3, 2
  %52 = add i32 %51, 6
  %53 = load i8, ptr %48, align 1, !tbaa !11
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %101, label %55

55:                                               ; preds = %50
  %56 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 6
  %57 = getelementptr inbounds [2 x i8], ptr %6, i64 0, i64 1
  %58 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 5
  %59 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 7
  %60 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %61 = icmp sgt i32 %52, 0
  %62 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  br label %63

63:                                               ; preds = %97, %55
  %64 = phi i8 [ %53, %55 ], [ %99, %97 ]
  %65 = phi ptr [ %48, %55 ], [ %98, %97 ]
  %66 = load i32, ptr %56, align 8, !tbaa !116
  %67 = icmp slt i32 %66, 2048
  br i1 %67, label %68, label %75

68:                                               ; preds = %63
  %69 = load ptr, ptr %58, align 8, !tbaa !115
  %70 = add nsw i32 %66, 1
  store i32 %70, ptr %56, align 8, !tbaa !116
  %71 = sext i32 %66 to i64
  %72 = getelementptr inbounds [2048 x i8], ptr %69, i64 0, i64 %71
  store i8 %64, ptr %72, align 1, !tbaa !11
  %73 = load i8, ptr %59, align 4
  %74 = or i8 %73, 16
  store i8 %74, ptr %59, align 4
  br label %76

75:                                               ; preds = %63
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %6) #28
  store i8 %64, ptr %6, align 1, !tbaa !11
  store i8 0, ptr %57, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %1, ptr noundef nonnull %6) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %6) #28
  br label %76

76:                                               ; preds = %75, %68
  %77 = load i8, ptr %65, align 1, !tbaa !11
  %78 = icmp eq i8 %77, 10
  br i1 %78, label %79, label %97

79:                                               ; preds = %76
  %80 = load i64, ptr %60, align 8, !tbaa !129
  %81 = add nsw i64 %80, 1
  store i64 %81, ptr %60, align 8, !tbaa !129
  br i1 %61, label %82, label %97

82:                                               ; preds = %94, %79
  %83 = phi i32 [ %95, %94 ], [ 0, %79 ]
  %84 = load i32, ptr %56, align 8, !tbaa !116
  %85 = icmp slt i32 %84, 2048
  br i1 %85, label %86, label %93

86:                                               ; preds = %82
  %87 = load ptr, ptr %58, align 8, !tbaa !115
  %88 = add nsw i32 %84, 1
  store i32 %88, ptr %56, align 8, !tbaa !116
  %89 = sext i32 %84 to i64
  %90 = getelementptr inbounds [2048 x i8], ptr %87, i64 0, i64 %89
  store i8 32, ptr %90, align 1, !tbaa !11
  %91 = load i8, ptr %59, align 4
  %92 = or i8 %91, 16
  store i8 %92, ptr %59, align 4
  br label %94

93:                                               ; preds = %82
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  store i8 32, ptr %5, align 1, !tbaa !11
  store i8 0, ptr %62, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %1, ptr noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  br label %94

94:                                               ; preds = %93, %86
  %95 = add nuw nsw i32 %83, 1
  %96 = icmp eq i32 %95, %52
  br i1 %96, label %97, label %82, !llvm.loop !279

97:                                               ; preds = %94, %79, %76
  %98 = getelementptr inbounds i8, ptr %65, i64 1
  %99 = load i8, ptr %98, align 1, !tbaa !11
  %100 = icmp eq i8 %99, 0
  br i1 %100, label %101, label %63, !llvm.loop !280

101:                                              ; preds = %97, %50, %45
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %46) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenCaseSplit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = load ptr, ptr %9, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.604, ptr noundef %10, i32 noundef %3) #30
  %11 = load ptr, ptr %8, align 8, !tbaa !138
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %11, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %5
  %16 = load ptr, ptr %2, align 8, !tbaa !68
  br label %17

17:                                               ; preds = %58, %15
  %18 = phi ptr [ %61, %58 ], [ %13, %15 ]
  %19 = phi i1 [ false, %58 ], [ true, %15 ]
  %20 = phi i32 [ %44, %58 ], [ 1, %15 ]
  %21 = phi ptr [ %59, %58 ], [ %16, %15 ]
  br i1 %19, label %23, label %22

22:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %17
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %25 = load i32, ptr %24, align 8, !tbaa !74
  %26 = and i32 %25, 1
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %23
  %29 = load ptr, ptr %21, align 8, !tbaa !69
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %29, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !40
  %32 = and i32 %31, 24
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %29, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef %36) #30
  br label %37

37:                                               ; preds = %34, %28, %23
  %38 = load ptr, ptr %18, align 8, !tbaa !94
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %38) #30
  br label %43

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %20) #30
  %42 = add nsw i32 %20, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %20, %40 ], [ %42, %41 ]
  %45 = load i32, ptr %24, align 8, !tbaa !74
  %46 = and i32 %45, 1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %58, label %48

48:                                               ; preds = %43
  %49 = load ptr, ptr %21, align 8, !tbaa !69
  %50 = getelementptr inbounds %struct._tagTreeCCNode, ptr %49, i64 0, i32 5
  %51 = load i32, ptr %50, align 8, !tbaa !40
  %52 = and i32 %51, 24
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %55

54:                                               ; preds = %48
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %55

55:                                               ; preds = %54, %48
  %56 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %21, i64 0, i32 1
  %57 = load ptr, ptr %56, align 8, !tbaa !133
  br label %58

58:                                               ; preds = %55, %43
  %59 = phi ptr [ %57, %55 ], [ %21, %43 ]
  %60 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %17, !llvm.loop !281

63:                                               ; preds = %58, %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @Ruby_GenEndCase(ptr nocapture %0, ptr nocapture %1, i32 %2) #19 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEndSwitch(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.598) #30
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.597(ptr noundef %1, i32 noundef %6) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenExit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.594, ptr noundef nonnull %10) #30
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.595) #30
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.596) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Ruby_GenEnd(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.18.592) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.597(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.11.599) #30
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !282

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.600, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #30
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @RubyGenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !102
  %7 = icmp eq ptr %6, null
  %8 = load ptr, ptr %2, align 8, !tbaa !67
  %9 = select i1 %7, ptr %8, ptr %6
  %10 = icmp eq i32 %3, -1
  br i1 %10, label %12, label %11

11:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.1.618, ptr noundef %9, ptr noundef %8, i32 noundef %3) #30
  br label %13

12:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.619, ptr noundef %9, ptr noundef %8) #30
  br label %13

13:                                               ; preds = %12, %11
  %14 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = icmp eq ptr %15, null
  br i1 %16, label %49, label %17

17:                                               ; preds = %45, %13
  %18 = phi ptr [ %47, %45 ], [ %15, %13 ]
  %19 = phi i1 [ false, %45 ], [ true, %13 ]
  %20 = phi i32 [ %29, %45 ], [ 1, %13 ]
  br i1 %19, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %17
  %23 = load ptr, ptr %18, align 8, !tbaa !94
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %23) #30
  br label %28

26:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.5.607, i32 noundef %20) #30
  %27 = add nsw i32 %20, 1
  br label %28

28:                                               ; preds = %26, %25
  %29 = phi i32 [ %20, %25 ], [ %27, %26 ]
  %30 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %31 = load i32, ptr %30, align 8, !tbaa !74
  %32 = and i32 %31, 1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %45, label %34

34:                                               ; preds = %28
  %35 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 1
  %36 = load ptr, ptr %35, align 8, !tbaa !76
  %37 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %36) #30
  %38 = icmp eq ptr %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %34
  %40 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !40
  %42 = and i32 %41, 8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %39, %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %45

45:                                               ; preds = %44, %39, %28
  %46 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = icmp eq ptr %47, null
  br i1 %48, label %49, label %17, !llvm.loop !283

49:                                               ; preds = %45, %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.628(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.628(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !284

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.631(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.631(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !285

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.639(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.639(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  br label %17

17:                                               ; preds = %32, %12
  %18 = phi ptr [ %10, %12 ], [ %34, %32 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !163
  %20 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %19) #30
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %36

22:                                               ; preds = %26, %17
  %23 = phi ptr [ %24, %26 ], [ %3, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %19) #30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %22, label %32, !llvm.loop !286

29:                                               ; preds = %22
  br i1 %13, label %36, label %32

30:                                               ; preds = %82, %66
  %31 = phi ptr [ @.str.10.611, %82 ], [ @.str.71.649, %66 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %31) #30
  br label %32

32:                                               ; preds = %30, %29, %26
  %33 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %88, label %17, !llvm.loop !287

36:                                               ; preds = %29, %17
  %37 = phi ptr [ null, %29 ], [ %20, %17 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.67.650, ptr noundef %19) #30
  %38 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !167
  %40 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %39, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %66, label %43

43:                                               ; preds = %60, %36
  %44 = phi ptr [ %64, %60 ], [ %41, %36 ]
  %45 = phi i32 [ %62, %60 ], [ 0, %36 ]
  %46 = phi i1 [ true, %60 ], [ false, %36 ]
  %47 = phi i32 [ %61, %60 ], [ 1, %36 ]
  %48 = icmp eq i32 %45, 0
  br i1 %48, label %50, label %49

49:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %50

50:                                               ; preds = %49, %43
  %51 = load ptr, ptr %44, align 8, !tbaa !94
  %52 = icmp eq ptr %51, null
  br i1 %46, label %56, label %53

53:                                               ; preds = %50
  %54 = zext i1 %52 to i32
  %55 = add nsw i32 %47, %54
  br label %60

56:                                               ; preds = %50
  br i1 %52, label %58, label %57

57:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %51) #30
  br label %60

58:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %47) #30
  %59 = add nsw i32 %47, 1
  br label %60

60:                                               ; preds = %58, %57, %53
  %61 = phi i32 [ %55, %53 ], [ %47, %57 ], [ %59, %58 ]
  %62 = phi i32 [ %45, %53 ], [ 1, %57 ], [ 1, %58 ]
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %44, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %43, !llvm.loop !288

66:                                               ; preds = %60, %36
  br i1 %21, label %30, label %67

67:                                               ; preds = %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %68 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 7
  %69 = load i64, ptr %68, align 8, !tbaa !143
  %70 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 6
  %71 = load ptr, ptr %70, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %69, ptr noundef %71) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.12.601) #30
  %72 = load ptr, ptr %38, align 8, !tbaa !167
  %73 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %72, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !84
  %75 = load ptr, ptr %74, align 8, !tbaa !94
  %76 = icmp eq ptr %75, null
  br i1 %76, label %82, label %77

77:                                               ; preds = %67
  %78 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %75, ptr noundef nonnull dereferenceable(5) @.str.69.652) #31
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %82, label %80

80:                                               ; preds = %77
  %81 = load ptr, ptr %14, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.70.653, ptr noundef %81, ptr noundef nonnull %75) #30
  br label %82

82:                                               ; preds = %80, %77, %67
  %83 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %37, i64 0, i32 1
  %84 = load ptr, ptr %83, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %84, i32 noundef 1) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.26.596) #30
  %85 = load i64, ptr %15, align 8, !tbaa !129
  %86 = add nsw i64 %85, 1
  %87 = load ptr, ptr %16, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %86, ptr noundef %87) #32
  br label %30

88:                                               ; preds = %32, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.660(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %26

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.41.663, ptr noundef %17, ptr noundef %17) #30
  %18 = tail call fastcc i32 @FactoryCreateParams.664(ptr noundef %15, ptr noundef nonnull %1) #32, !range !132
  %19 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %20 = load i16, ptr %19, align 8
  %21 = and i16 %20, 64
  %22 = icmp eq i16 %21, 0
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  %23 = load ptr, ptr %16, align 8, !tbaa !44
  br i1 %22, label %25, label %24

24:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.42.665, ptr noundef %23) #30
  br label %26

25:                                               ; preds = %14
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.43.666, ptr noundef %23) #30
  tail call fastcc void @FactoryInvokeParams.667(ptr noundef %15, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.37.638) #30
  br label %26

26:                                               ; preds = %25, %24, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.664(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.664(ptr noundef %0, ptr noundef nonnull %3) #32, !range !132
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %29, label %12

12:                                               ; preds = %24, %7
  %13 = phi ptr [ %27, %24 ], [ %10, %7 ]
  %14 = phi i32 [ %25, %24 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !152
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %19
  %23 = load ptr, ptr %13, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %23) #30
  br label %24

24:                                               ; preds = %22, %12
  %25 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %26 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp eq ptr %27, null
  br i1 %28, label %29, label %12, !llvm.loop !289

29:                                               ; preds = %24, %7
  %30 = phi i32 [ %8, %7 ], [ %25, %24 ]
  ret i32 %30
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.667(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.667(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !290

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.307(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.307(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %25, ptr noundef %26) #30
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !291

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.311(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.311(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !292

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.320(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.320(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %98, label %12

12:                                               ; preds = %8
  %13 = icmp eq ptr %2, %3
  %14 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  br label %17

17:                                               ; preds = %35, %12
  %18 = phi ptr [ %10, %12 ], [ %37, %35 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !163
  %20 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %19) #30
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %39

22:                                               ; preds = %26, %17
  %23 = phi ptr [ %24, %26 ], [ %3, %17 ]
  %24 = load ptr, ptr %23, align 8, !tbaa !45
  %25 = icmp eq ptr %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %22
  %27 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %24, ptr noundef %19) #30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %22, label %35, !llvm.loop !293

29:                                               ; preds = %22
  br i1 %13, label %30, label %35

30:                                               ; preds = %29
  %31 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 1
  %32 = load ptr, ptr %31, align 8, !tbaa !165
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.95.471, ptr noundef %32, ptr noundef %19) #30
  br label %44

33:                                               ; preds = %92, %76
  %34 = phi ptr [ @.str.10.611, %92 ], [ @.str.100.476, %76 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %34) #30
  br label %35

35:                                               ; preds = %33, %29, %26
  %36 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %98, label %17, !llvm.loop !294

39:                                               ; preds = %17
  %40 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !165
  br i1 %13, label %42, label %43

42:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.74.335, ptr noundef %41, ptr noundef %19) #30
  br label %44

43:                                               ; preds = %39
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.75.336, ptr noundef %41, ptr noundef %19) #30
  br label %44

44:                                               ; preds = %43, %42, %30
  %45 = phi ptr [ %20, %42 ], [ %20, %43 ], [ null, %30 ]
  %46 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %18, i64 0, i32 3
  %47 = load ptr, ptr %46, align 8, !tbaa !167
  %48 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %47, i64 0, i32 4
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %76, label %51

51:                                               ; preds = %70, %44
  %52 = phi ptr [ %74, %70 ], [ %49, %44 ]
  %53 = phi i32 [ %72, %70 ], [ 0, %44 ]
  %54 = phi i1 [ true, %70 ], [ false, %44 ]
  %55 = phi i32 [ %71, %70 ], [ 1, %44 ]
  %56 = icmp eq i32 %53, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %58

58:                                               ; preds = %57, %51
  %59 = load ptr, ptr %52, align 8, !tbaa !94
  %60 = icmp eq ptr %59, null
  br i1 %54, label %64, label %61

61:                                               ; preds = %58
  %62 = zext i1 %60 to i32
  %63 = add nsw i32 %55, %62
  br label %70

64:                                               ; preds = %58
  %65 = getelementptr inbounds %struct._tagTreeCCParam, ptr %52, i64 0, i32 1
  %66 = load ptr, ptr %65, align 8, !tbaa !76
  br i1 %60, label %68, label %67

67:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %66, ptr noundef nonnull %59) #30
  br label %70

68:                                               ; preds = %64
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %66, i32 noundef %55) #30
  %69 = add nsw i32 %55, 1
  br label %70

70:                                               ; preds = %68, %67, %61
  %71 = phi i32 [ %63, %61 ], [ %55, %67 ], [ %69, %68 ]
  %72 = phi i32 [ %53, %61 ], [ 1, %67 ], [ 1, %68 ]
  %73 = getelementptr inbounds %struct._tagTreeCCParam, ptr %52, i64 0, i32 4
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = icmp eq ptr %74, null
  br i1 %75, label %76, label %51, !llvm.loop !295

76:                                               ; preds = %70, %44
  br i1 %21, label %33, label %77

77:                                               ; preds = %76
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %78 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !143
  %80 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %79, ptr noundef %81) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.421) #30
  %82 = load ptr, ptr %46, align 8, !tbaa !167
  %83 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %82, i64 0, i32 4
  %84 = load ptr, ptr %83, align 8, !tbaa !84
  %85 = load ptr, ptr %84, align 8, !tbaa !94
  %86 = icmp eq ptr %85, null
  br i1 %86, label %92, label %87

87:                                               ; preds = %77
  %88 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %85, ptr noundef nonnull dereferenceable(5) @.str.84.567) #31
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %92, label %90

90:                                               ; preds = %87
  %91 = load ptr, ptr %14, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79.342, ptr noundef %91, ptr noundef nonnull %85) #30
  br label %92

92:                                               ; preds = %90, %87, %77
  %93 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %45, i64 0, i32 1
  %94 = load ptr, ptr %93, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %94, i32 noundef 1) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %95 = load i64, ptr %15, align 8, !tbaa !129
  %96 = add nsw i64 %95, 1
  %97 = load ptr, ptr %16, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %96, ptr noundef %97) #32
  br label %33

98:                                               ; preds = %35, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.355(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %40

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !33
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
  %22 = load ptr, ptr %21, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.23.358, ptr noundef %22, ptr noundef %22) #30
  br label %30

23:                                               ; preds = %14
  %24 = and i16 %17, 32
  %25 = icmp eq i16 %24, 0
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %26, align 8, !tbaa !44
  br i1 %25, label %29, label %28

28:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.24.359, ptr noundef %27, ptr noundef %27) #30
  br label %30

29:                                               ; preds = %23
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.58.477, ptr noundef %27, ptr noundef %27) #30
  br label %30

30:                                               ; preds = %29, %28, %20
  %31 = tail call fastcc i32 @FactoryCreateParams.361(ptr noundef %15, ptr noundef nonnull %1) #32, !range !132
  %32 = load i16, ptr %16, align 8
  %33 = and i16 %32, 64
  %34 = icmp eq i16 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.11.379) #30
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %37 = load ptr, ptr %36, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.59.480, ptr noundef %37) #30
  tail call fastcc void @FactoryInvokeParams.363(ptr noundef %15, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.25.511) #30
  br label %38

38:                                               ; preds = %35, %30
  %39 = phi ptr [ @.str.52.383, %35 ], [ @.str.25.511, %30 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %39) #30
  br label %40

40:                                               ; preds = %38, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.361(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams.361(ptr noundef %0, ptr noundef nonnull %3) #32, !range !132
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %26, %7
  %13 = phi ptr [ %29, %26 ], [ %10, %7 ]
  %14 = phi i32 [ %27, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !152
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load ptr, ptr %13, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %24, ptr noundef %25) #30
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %28 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !296

31:                                               ; preds = %26, %7
  %32 = phi i32 [ %8, %7 ], [ %27, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.363(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.363(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !297

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenStart(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
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
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.432, ptr noundef nonnull %14, ptr noundef nonnull %16) #30
  br label %21

19:                                               ; preds = %13
  %20 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.2.432, ptr noundef nonnull %14, ptr noundef %20) #30
  br label %21

21:                                               ; preds = %19, %18
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @JavaGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSplitEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @JavaGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSwitchHead(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = add nsw i32 %6, 2
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #32
  %8 = icmp eq i32 %4, 0
  %9 = select i1 %8, ptr @.str.14.425, ptr @.str.13.426
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %9, ptr noundef %2) #30
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenSelector(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
  %7 = and i32 %6, 16
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %4
  %10 = shl nsw i32 %3, 1
  %11 = add nsw i32 %10, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %11) #32
  %12 = load ptr, ptr %2, align 8, !tbaa !45
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !44
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.423, ptr noundef %14, ptr noundef %16) #30
  br label %25

17:                                               ; preds = %4
  %18 = and i32 %6, 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %17
  %21 = shl nsw i32 %3, 1
  %22 = add nsw i32 %21, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %22) #32
  %23 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.424, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %20, %17, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndSelectors(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseFunc(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %8) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %16, label %11

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = and i32 %13, 8
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %11, %4
  br label %17

17:                                               ; preds = %16, %11
  %18 = phi ptr [ %8, %16 ], [ @.str.12.416, %11 ]
  %19 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.22.417, ptr noundef %18, ptr noundef %19, i32 noundef %3) #30
  %20 = load ptr, ptr %5, align 8, !tbaa !138
  %21 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %20, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %90, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %2, align 8, !tbaa !68
  %26 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  br label %27

27:                                               ; preds = %85, %24
  %28 = phi ptr [ %22, %24 ], [ %88, %85 ]
  %29 = phi i1 [ true, %24 ], [ false, %85 ]
  %30 = phi i32 [ 1, %24 ], [ %86, %85 ]
  %31 = phi ptr [ %25, %24 ], [ %52, %85 ]
  br i1 %29, label %33, label %32

32:                                               ; preds = %27
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %struct._tagTreeCCParam, ptr %28, i64 0, i32 2
  %35 = load i32, ptr %34, align 8, !tbaa !74
  %36 = and i32 %35, 1
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %49, label %38

38:                                               ; preds = %33
  %39 = load ptr, ptr %31, align 8, !tbaa !69
  %40 = getelementptr inbounds %struct._tagTreeCCNode, ptr %39, i64 0, i32 5
  %41 = load i32, ptr %40, align 8, !tbaa !40
  %42 = and i32 %41, 24
  %43 = icmp eq i32 %42, 0
  %44 = getelementptr inbounds %struct._tagTreeCCNode, ptr %39, i64 0, i32 4
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %28, i64 0, i32 1
  %46 = select i1 %43, ptr %44, ptr %45
  %47 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %31, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !133
  br label %51

49:                                               ; preds = %33
  %50 = getelementptr inbounds %struct._tagTreeCCParam, ptr %28, i64 0, i32 1
  br label %51

51:                                               ; preds = %49, %38
  %52 = phi ptr [ %48, %38 ], [ %31, %49 ]
  %53 = phi ptr [ %46, %38 ], [ %50, %49 ]
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = load ptr, ptr %28, align 8, !tbaa !94
  %56 = icmp eq ptr %55, null
  %57 = load i32, ptr %26, align 4, !tbaa !39
  %58 = icmp eq i32 %57, 3
  br i1 %56, label %72, label %59

59:                                               ; preds = %51
  br i1 %58, label %60, label %61

60:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %54, ptr noundef nonnull %55) #30
  br label %85

61:                                               ; preds = %59
  %62 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %54) #30
  %63 = icmp eq ptr %62, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %61
  %65 = getelementptr inbounds %struct._tagTreeCCNode, ptr %62, i64 0, i32 5
  %66 = load i32, ptr %65, align 8, !tbaa !40
  %67 = and i32 %66, 8
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %61
  br label %70

70:                                               ; preds = %69, %64
  %71 = phi ptr [ %54, %69 ], [ @.str.12.416, %64 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %71, ptr noundef nonnull %55) #30
  br label %85

72:                                               ; preds = %51
  br i1 %58, label %82, label %73

73:                                               ; preds = %72
  %74 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %54) #30
  %75 = icmp eq ptr %74, null
  br i1 %75, label %81, label %76

76:                                               ; preds = %73
  %77 = getelementptr inbounds %struct._tagTreeCCNode, ptr %74, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !40
  %79 = and i32 %78, 8
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %76, %73
  br label %82

82:                                               ; preds = %81, %76, %72
  %83 = phi ptr [ %54, %72 ], [ %54, %81 ], [ @.str.12.416, %76 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %83, i32 noundef %30) #30
  %84 = add nsw i32 %30, 1
  br label %85

85:                                               ; preds = %82, %70, %60
  %86 = phi i32 [ %30, %60 ], [ %30, %70 ], [ %84, %82 ]
  %87 = getelementptr inbounds %struct._tagTreeCCParam, ptr %28, i64 0, i32 4
  %88 = load ptr, ptr %87, align 8, !tbaa !7
  %89 = icmp eq ptr %88, null
  br i1 %89, label %90, label %27, !llvm.loop !298

90:                                               ; preds = %85, %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %91 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %92 = load i32, ptr %91, align 4, !tbaa !39
  %93 = icmp eq i32 %92, 3
  br i1 %93, label %94, label %99

94:                                               ; preds = %90
  %95 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %96 = load i64, ptr %95, align 8, !tbaa !143
  %97 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %98 = load ptr, ptr %97, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %96, ptr noundef %98) #30
  br label %99

99:                                               ; preds = %94, %90
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.421) #30
  %100 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %101 = load ptr, ptr %100, align 8, !tbaa !137
  %102 = icmp eq ptr %101, null
  br i1 %102, label %104, label %103

103:                                              ; preds = %99
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %101, i32 noundef 1) #30
  br label %104

104:                                              ; preds = %103, %99
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %105 = load i32, ptr %91, align 4, !tbaa !39
  %106 = icmp eq i32 %105, 3
  br i1 %106, label %107, label %113

107:                                              ; preds = %104
  %108 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %109 = load i64, ptr %108, align 8, !tbaa !129
  %110 = add nsw i64 %109, 1
  %111 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %110, ptr noundef %112) #32
  br label %113

113:                                              ; preds = %107, %104
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseCall(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.612, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.408, ptr noundef %44) #30
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %28) #30
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !74
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !40
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !133
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !299

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseInline(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %43, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %2, align 8, !tbaa !68
  %12 = shl nsw i32 %3, 1
  %13 = add nsw i32 %12, 4
  br label %14

14:                                               ; preds = %38, %10
  %15 = phi ptr [ %8, %10 ], [ %41, %38 ]
  %16 = phi ptr [ %11, %10 ], [ %39, %38 ]
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 2
  %18 = load i32, ptr %17, align 8, !tbaa !74
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %38, label %21

21:                                               ; preds = %14
  %22 = load ptr, ptr %15, align 8, !tbaa !94
  %23 = icmp eq ptr %22, null
  br i1 %23, label %35, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %16, align 8, !tbaa !69
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %25, i64 0, i32 5
  %27 = load i32, ptr %26, align 8, !tbaa !40
  %28 = and i32 %27, 24
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %13) #32
  %31 = load ptr, ptr %16, align 8, !tbaa !69
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %31, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !44
  %34 = load ptr, ptr %15, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33.413, ptr noundef %33, ptr noundef %34, ptr noundef %33, ptr noundef %34) #30
  br label %35

35:                                               ; preds = %30, %24, %21
  %36 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %16, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !133
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi ptr [ %37, %35 ], [ %16, %14 ]
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %15, i64 0, i32 4
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !300

43:                                               ; preds = %38, %4
  %44 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %45 = load i32, ptr %44, align 4, !tbaa !39
  %46 = icmp eq i32 %45, 3
  br i1 %46, label %47, label %52

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %49, ptr noundef %51) #30
  br label %52

52:                                               ; preds = %47, %43
  %53 = shl nsw i32 %3, 1
  %54 = add nsw i32 %53, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %54) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %55 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %56 = load ptr, ptr %55, align 8, !tbaa !137
  %57 = icmp eq ptr %56, null
  br i1 %57, label %59, label %58

58:                                               ; preds = %52
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %56, i32 noundef %54) #30
  br label %59

59:                                               ; preds = %58, %52
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %60 = load i32, ptr %44, align 4, !tbaa !39
  %61 = icmp eq i32 %60, 3
  br i1 %61, label %62, label %68

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !129
  %65 = add nsw i64 %64, 1
  %66 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %67 = load ptr, ptr %66, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %65, ptr noundef %67) #32
  br label %68

68:                                               ; preds = %62, %59
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenCaseSplit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 4
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.604, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.408, ptr noundef %44) #30
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %28) #30
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !74
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !40
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !133
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !301

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndCase(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.504) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEndSwitch(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 3
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.498) #30
  %6 = add nsw i32 %4, 2
  tail call fastcc void @Indent.397(ptr noundef %1, i32 noundef %6) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenExit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.394, ptr noundef nonnull %10) #30
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.395) #30
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.40.396) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @Java_GenEnd(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture readnone %2) #0 {
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %5 = load i32, ptr %4, align 4, !tbaa !39
  %6 = icmp eq i32 %5, 3
  br i1 %6, label %7, label %8

7:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  br label %8

8:                                                ; preds = %7, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent.397(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.16.399) #30
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !302

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.400, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #30
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal fastcc ptr @TreeCCNodeFind(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #12 {
  %3 = load i8, ptr %1, align 1, !tbaa !11
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
  %13 = load i8, ptr %11, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %5, !llvm.loop !161

15:                                               ; preds = %5
  %.lcssa = phi i32 [ %12, %5 ]
  %16 = and i32 %.lcssa, 511
  %17 = zext i32 %16 to i64
  br label %18

18:                                               ; preds = %15, %2
  %19 = phi i64 [ 0, %2 ], [ %17, %15 ]
  %20 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %33, label %23

23:                                               ; preds = %29, %18
  %24 = phi ptr [ %31, %29 ], [ %21, %18 ]
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !44
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %1) #31
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %33, label %29

29:                                               ; preds = %23
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 12
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %23, !llvm.loop !303

33:                                               ; preds = %29, %23, %18
  %34 = phi ptr [ null, %18 ], [ %24, %23 ], [ null, %29 ]
  ret ptr %34
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @JavaGenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  %6 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !93
  %8 = load ptr, ptr %2, align 8, !tbaa !67
  br i1 %5, label %10, label %9

9:                                                ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.427, ptr noundef %7, ptr noundef %8, i32 noundef %3) #30
  br label %11

10:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.428, ptr noundef %7, ptr noundef %8) #30
  br label %11

11:                                               ; preds = %10, %9
  %12 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %63, label %15

15:                                               ; preds = %11
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  br label %17

17:                                               ; preds = %59, %15
  %18 = phi ptr [ %13, %15 ], [ %61, %59 ]
  %19 = phi i1 [ true, %15 ], [ false, %59 ]
  %20 = phi i32 [ 1, %15 ], [ %44, %59 ]
  br i1 %19, label %22, label %21

21:                                               ; preds = %17
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %17
  %23 = load i32, ptr %16, align 4, !tbaa !39
  %24 = icmp eq i32 %23, 3
  %25 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !76
  br i1 %24, label %36, label %27

27:                                               ; preds = %22
  %28 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %26) #30
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %27
  %31 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %32 = load i32, ptr %31, align 8, !tbaa !40
  %33 = and i32 %32, 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %30, %27
  br label %36

36:                                               ; preds = %35, %30, %22
  %37 = phi ptr [ %26, %22 ], [ %26, %35 ], [ @.str.12.416, %30 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.429, ptr noundef %37) #30
  %38 = load ptr, ptr %18, align 8, !tbaa !94
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %38) #30
  br label %43

41:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %20) #30
  %42 = add nsw i32 %20, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %20, %40 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %25, align 8, !tbaa !76
  %51 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef nonnull %0, ptr noundef %50) #30
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._tagTreeCCNode, ptr %51, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !40
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %59

59:                                               ; preds = %58, %53, %43
  %60 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %17, !llvm.loop !304

63:                                               ; preds = %59, %11
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.379) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.452(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @CreateParams.452(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, i32 noundef %3) #32, !range !132
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ %3, %4 ]
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 10
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %43, label %14

14:                                               ; preds = %38, %9
  %15 = phi ptr [ %41, %38 ], [ %12, %9 ]
  %16 = phi i32 [ %39, %38 ], [ %10, %9 ]
  %17 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 3
  %18 = load i32, ptr %17, align 8, !tbaa !152
  %19 = and i32 %18, 1
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %38

21:                                               ; preds = %14
  %22 = icmp eq i32 %16, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %24

24:                                               ; preds = %23, %21
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !46
  %27 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %26) #30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %27, i64 0, i32 5
  %31 = load i32, ptr %30, align 8, !tbaa !40
  %32 = and i32 %31, 8
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29, %24
  br label %35

35:                                               ; preds = %34, %29
  %36 = phi ptr [ %26, %34 ], [ @.str.12.416, %29 ]
  %37 = load ptr, ptr %15, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %36, ptr noundef %37) #30
  br label %38

38:                                               ; preds = %35, %14
  %39 = phi i32 [ 1, %35 ], [ %16, %14 ]
  %40 = getelementptr inbounds %struct._tagTreeCCField, ptr %15, i64 0, i32 6
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %14, !llvm.loop !305

43:                                               ; preds = %38, %9
  %44 = phi i32 [ %10, %9 ], [ %39, %38 ]
  ret i32 %44
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource.455(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource.455(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !306

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals.462(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals.462(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %123, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %14

14:                                               ; preds = %119, %12
  %15 = phi ptr [ %10, %12 ], [ %121, %119 ]
  %16 = load ptr, ptr %15, align 8, !tbaa !163
  %17 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %16) #30
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %39

19:                                               ; preds = %23, %14
  %20 = phi ptr [ %21, %23 ], [ %3, %14 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !45
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %19
  %24 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %16) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %19, label %119, !llvm.loop !307

26:                                               ; preds = %19
  %27 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !165
  %29 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %28) #30
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %29, i64 0, i32 5
  %33 = load i32, ptr %32, align 8, !tbaa !40
  %34 = and i32 %33, 8
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %31, %26
  br label %37

37:                                               ; preds = %36, %31
  %38 = phi ptr [ %28, %36 ], [ @.str.12.416, %31 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.95.471, ptr noundef %38, ptr noundef %16) #30
  br label %52

39:                                               ; preds = %14
  %40 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %41 = load ptr, ptr %40, align 8, !tbaa !165
  %42 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %41) #30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %49, label %44

44:                                               ; preds = %39
  %45 = getelementptr inbounds %struct._tagTreeCCNode, ptr %42, i64 0, i32 5
  %46 = load i32, ptr %45, align 8, !tbaa !40
  %47 = and i32 %46, 8
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44, %39
  br label %50

50:                                               ; preds = %49, %44
  %51 = phi ptr [ %41, %49 ], [ @.str.12.416, %44 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.96.472, ptr noundef %51, ptr noundef %16) #30
  br label %52

52:                                               ; preds = %50, %37
  %53 = phi ptr [ %17, %50 ], [ null, %37 ]
  %54 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 3
  %55 = load ptr, ptr %54, align 8, !tbaa !167
  %56 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %55, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %102, label %59

59:                                               ; preds = %96, %52
  %60 = phi ptr [ %100, %96 ], [ %57, %52 ]
  %61 = phi i32 [ %98, %96 ], [ 0, %52 ]
  %62 = phi i1 [ true, %96 ], [ false, %52 ]
  %63 = phi i32 [ %97, %96 ], [ 1, %52 ]
  %64 = icmp eq i32 %61, 0
  br i1 %64, label %66, label %65

65:                                               ; preds = %59
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %66

66:                                               ; preds = %65, %59
  %67 = load ptr, ptr %60, align 8, !tbaa !94
  %68 = icmp eq ptr %67, null
  br i1 %62, label %72, label %69

69:                                               ; preds = %66
  %70 = zext i1 %68 to i32
  %71 = add nsw i32 %63, %70
  br label %96

72:                                               ; preds = %66
  %73 = getelementptr inbounds %struct._tagTreeCCParam, ptr %60, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !76
  %75 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %74) #30
  %76 = icmp eq ptr %75, null
  br i1 %68, label %86, label %77

77:                                               ; preds = %72
  br i1 %76, label %83, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct._tagTreeCCNode, ptr %75, i64 0, i32 5
  %80 = load i32, ptr %79, align 8, !tbaa !40
  %81 = and i32 %80, 8
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %78, %77
  br label %84

84:                                               ; preds = %83, %78
  %85 = phi ptr [ %74, %83 ], [ @.str.12.416, %78 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %85, ptr noundef nonnull %67) #30
  br label %96

86:                                               ; preds = %72
  br i1 %76, label %92, label %87

87:                                               ; preds = %86
  %88 = getelementptr inbounds %struct._tagTreeCCNode, ptr %75, i64 0, i32 5
  %89 = load i32, ptr %88, align 8, !tbaa !40
  %90 = and i32 %89, 8
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87, %86
  br label %93

93:                                               ; preds = %92, %87
  %94 = phi ptr [ %74, %92 ], [ @.str.12.416, %87 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %94, i32 noundef %63) #30
  %95 = add nsw i32 %63, 1
  br label %96

96:                                               ; preds = %93, %84, %69
  %97 = phi i32 [ %71, %69 ], [ %63, %84 ], [ %95, %93 ]
  %98 = phi i32 [ %61, %69 ], [ 1, %84 ], [ 1, %93 ]
  %99 = getelementptr inbounds %struct._tagTreeCCParam, ptr %60, i64 0, i32 4
  %100 = load ptr, ptr %99, align 8, !tbaa !7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %102, label %59, !llvm.loop !308

102:                                              ; preds = %96, %52
  br i1 %18, label %117, label %103

103:                                              ; preds = %102
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.379) #30
  %104 = load ptr, ptr %54, align 8, !tbaa !167
  %105 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %104, i64 0, i32 4
  %106 = load ptr, ptr %105, align 8, !tbaa !84
  %107 = load ptr, ptr %106, align 8, !tbaa !94
  %108 = icmp eq ptr %107, null
  br i1 %108, label %114, label %109

109:                                              ; preds = %103
  %110 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(5) @.str.84.567) #31
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %109
  %113 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.98.474, ptr noundef %113, ptr noundef nonnull %107) #30
  br label %114

114:                                              ; preds = %112, %109, %103
  %115 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %53, i64 0, i32 1
  %116 = load ptr, ptr %115, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %116, i32 noundef 1) #30
  br label %117

117:                                              ; preds = %114, %102
  %118 = phi ptr [ @.str.47.562, %114 ], [ @.str.100.476, %102 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %118) #30
  br label %119

119:                                              ; preds = %117, %23
  %120 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %121 = load ptr, ptr %120, align 8, !tbaa !7
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %14, !llvm.loop !309

123:                                              ; preds = %119, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams.479(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = load ptr, ptr %2, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @FactoryCreateParams.479(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %4) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ 0, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %42, label %13

13:                                               ; preds = %37, %8
  %14 = phi ptr [ %40, %37 ], [ %11, %8 ]
  %15 = phi i32 [ %38, %37 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %37

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef %0, ptr noundef %25) #30
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %23
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = and i32 %30, 8
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %28, %23
  br label %34

34:                                               ; preds = %33, %28
  %35 = phi ptr [ %25, %33 ], [ @.str.12.416, %28 ]
  %36 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %35, ptr noundef %36) #30
  br label %37

37:                                               ; preds = %34, %13
  %38 = phi i32 [ 1, %34 ], [ %15, %13 ]
  %39 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %13, !llvm.loop !310

42:                                               ; preds = %37, %8
  %43 = phi i32 [ %9, %8 ], [ %38, %37 ]
  ret i32 %43
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams.481(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams.481(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !311

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParamsSource.175(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParamsSource.175(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %25, ptr noundef %26) #30
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !312

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @InheritParamsSource(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @InheritParamsSource(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %30, label %13

13:                                               ; preds = %25, %8
  %14 = phi ptr [ %28, %25 ], [ %11, %8 ]
  %15 = phi i32 [ %26, %25 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %25

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %24) #30
  br label %25

25:                                               ; preds = %23, %13
  %26 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %13, !llvm.loop !313

30:                                               ; preds = %25, %8
  %31 = phi i32 [ %9, %8 ], [ %26, %25 ]
  ret i32 %31
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ImplementVirtuals(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @ImplementVirtuals(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %88, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  br label %16

16:                                               ; preds = %21, %12
  %17 = phi ptr [ %10, %12 ], [ %23, %21 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %18) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %87, %16
  %22 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %88, label %16, !llvm.loop !314

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.102.195, ptr noundef %27, ptr noundef %28, ptr noundef %18) #30
  %29 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %59, label %34

34:                                               ; preds = %53, %25
  %35 = phi ptr [ %57, %53 ], [ %32, %25 ]
  %36 = phi i32 [ %55, %53 ], [ 0, %25 ]
  %37 = phi i1 [ true, %53 ], [ false, %25 ]
  %38 = phi i32 [ %54, %53 ], [ 1, %25 ]
  %39 = icmp eq i32 %36, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %41

41:                                               ; preds = %40, %34
  %42 = load ptr, ptr %35, align 8, !tbaa !94
  %43 = icmp eq ptr %42, null
  br i1 %37, label %47, label %44

44:                                               ; preds = %41
  %45 = zext i1 %43 to i32
  %46 = add nsw i32 %38, %45
  br label %53

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct._tagTreeCCParam, ptr %35, i64 0, i32 1
  %49 = load ptr, ptr %48, align 8, !tbaa !76
  br i1 %43, label %51, label %50

50:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %49, ptr noundef nonnull %42) #30
  br label %53

51:                                               ; preds = %47
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %49, i32 noundef %38) #30
  %52 = add nsw i32 %38, 1
  br label %53

53:                                               ; preds = %51, %50, %44
  %54 = phi i32 [ %46, %44 ], [ %38, %50 ], [ %52, %51 ]
  %55 = phi i32 [ %36, %44 ], [ 1, %50 ], [ 1, %51 ]
  %56 = getelementptr inbounds %struct._tagTreeCCParam, ptr %35, i64 0, i32 4
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  %58 = icmp eq ptr %57, null
  br i1 %58, label %59, label %34, !llvm.loop !315

59:                                               ; preds = %53, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %60 = load ptr, ptr %31, align 8, !tbaa !84
  %61 = load ptr, ptr %60, align 8, !tbaa !94
  %62 = icmp eq ptr %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %59
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %61, ptr noundef nonnull dereferenceable(5) @.str.84.567) #31
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %76

66:                                               ; preds = %63, %59
  %67 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 7
  %68 = load i64, ptr %67, align 8, !tbaa !143
  %69 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 6
  %70 = load ptr, ptr %69, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %68, ptr noundef %70) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %71 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 1
  %72 = load ptr, ptr %71, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef %72) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %73 = load i64, ptr %14, align 8, !tbaa !129
  %74 = add nsw i64 %73, 1
  %75 = load ptr, ptr %15, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %74, ptr noundef %75) #32
  br label %87

76:                                               ; preds = %63
  %77 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.106.201, ptr noundef %77, ptr noundef nonnull %61) #30
  %78 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 7
  %79 = load i64, ptr %78, align 8, !tbaa !143
  %80 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %79, ptr noundef %81) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.421) #30
  %82 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef %83, i32 noundef 1) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %84 = load i64, ptr %14, align 8, !tbaa !129
  %85 = add nsw i64 %84, 1
  %86 = load ptr, ptr %15, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %85, ptr noundef %86) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  br label %87

87:                                               ; preds = %76, %66
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef nonnull %1, ptr noundef nonnull @.str.10.611) #30
  br label %21

88:                                               ; preds = %21, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamCode(ptr nocapture noundef %0, ptr noundef readonly %1) unnamed_addr #0 {
  tail call fastcc void @WriteBuffer(ptr noundef %0, ptr noundef %1) #32
  %3 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %8, %2
  %5 = phi ptr [ %1, %2 ], [ %9, %8 ]
  %6 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %5, i32 noundef 10) #31
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  %10 = load i64, ptr %3, align 8, !tbaa !129
  %11 = add nsw i64 %10, 1
  store i64 %11, ptr %3, align 8, !tbaa !129
  br label %4, !llvm.loop !209

12:                                               ; preds = %4
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal void @ImplementCreateFuncs.210(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %23

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !98
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %13 = load ptr, ptr %12, align 8, !tbaa !33
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  %18 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  %19 = load ptr, ptr %18, align 8, !tbaa !28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.72.211, ptr noundef %17, ptr noundef %19, ptr noundef %17) #30
  %20 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %15, ptr noundef nonnull %1) #32, !range !132
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.11.519) #30
  %21 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.74.212, ptr noundef %21) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.75.213) #30
  %22 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.76.214, ptr noundef %22) #30
  tail call fastcc void @FactoryInvokeParams(ptr noundef %15, ptr noundef nonnull %1) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.25.511) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull @.str.47.562) #30
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FactoryCreateParams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %2
  %6 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %0, ptr noundef nonnull %3) #32, !range !132
  br label %7

7:                                                ; preds = %5, %2
  %8 = phi i32 [ %6, %5 ], [ 0, %2 ]
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %31, label %12

12:                                               ; preds = %26, %7
  %13 = phi ptr [ %29, %26 ], [ %10, %7 ]
  %14 = phi i32 [ %27, %26 ], [ %8, %7 ]
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 3
  %16 = load i32, ptr %15, align 8, !tbaa !152
  %17 = and i32 %16, 1
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %26

19:                                               ; preds = %12
  %20 = icmp eq i32 %14, 0
  br i1 %20, label %22, label %21

21:                                               ; preds = %19
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %19
  %23 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 1
  %24 = load ptr, ptr %23, align 8, !tbaa !46
  %25 = load ptr, ptr %13, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %24, ptr noundef %25) #30
  br label %26

26:                                               ; preds = %22, %12
  %27 = phi i32 [ 1, %22 ], [ %14, %12 ]
  %28 = getelementptr inbounds %struct._tagTreeCCField, ptr %13, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %12, !llvm.loop !316

31:                                               ; preds = %26, %7
  %32 = phi i32 [ %8, %7 ], [ %27, %26 ]
  ret i32 %32
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @FactoryInvokeParams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @FactoryInvokeParams(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %22, label %10

10:                                               ; preds = %18, %6
  %11 = phi ptr [ %20, %18 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.4.606, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %10, !llvm.loop !317

22:                                               ; preds = %18, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams.239(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams.239(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %25, ptr noundef %26) #30
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !318

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareVirtuals.242(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @DeclareVirtuals.242(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %54, label %12

12:                                               ; preds = %50, %8
  %13 = phi ptr [ %52, %50 ], [ %10, %8 ]
  %14 = load ptr, ptr %13, align 8, !tbaa !163
  %15 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %14) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %24

17:                                               ; preds = %21, %12
  %18 = phi ptr [ %19, %21 ], [ %3, %12 ]
  %19 = load ptr, ptr %18, align 8, !tbaa !45
  %20 = icmp eq ptr %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %17
  %22 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %19, ptr noundef %14) #30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %17, label %50, !llvm.loop !319

24:                                               ; preds = %17, %12
  %25 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !165
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.59.246, ptr noundef %26, ptr noundef %14) #30
  %27 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 2
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %48, label %30

30:                                               ; preds = %43, %24
  %31 = phi ptr [ %46, %43 ], [ %28, %24 ]
  %32 = phi i1 [ false, %43 ], [ true, %24 ]
  %33 = phi i32 [ %44, %43 ], [ 1, %24 ]
  br i1 %32, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %35

35:                                               ; preds = %34, %30
  %36 = load ptr, ptr %31, align 8, !tbaa !94
  %37 = icmp eq ptr %36, null
  %38 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !76
  br i1 %37, label %41, label %40

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %39, ptr noundef nonnull %36) #30
  br label %43

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %39, i32 noundef %33) #30
  %42 = add nsw i32 %33, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %33, %40 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 4
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %30, !llvm.loop !320

48:                                               ; preds = %43, %24
  %49 = select i1 %16, ptr @.str.33.247, ptr @.str.25.511
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %49) #30
  br label %50

50:                                               ; preds = %48, %21
  %51 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %54, label %12, !llvm.loop !321

54:                                               ; preds = %50, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @DeclareCreateFuncs.259(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 5
  %4 = load i32, ptr %3, align 8, !tbaa !40
  %5 = and i32 %4, 26
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %7, label %28

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 6
  %9 = load ptr, ptr %8, align 8, !tbaa !91
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %14

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !34
  br label %14

14:                                               ; preds = %11, %7
  %15 = phi ptr [ %13, %11 ], [ %9, %7 ]
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %17 = load i16, ptr %16, align 8
  %18 = and i16 %17, 96
  %19 = icmp eq i16 %18, 0
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !44
  %22 = select i1 %19, ptr @.str.32.269, ptr @.str.31.270
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %22, ptr noundef %21, ptr noundef %21) #30
  %23 = tail call fastcc i32 @FactoryCreateParams(ptr noundef %15, ptr noundef nonnull %1) #32, !range !132
  %24 = load i16, ptr %16, align 8
  %25 = and i16 %24, 64
  %26 = icmp eq i16 %25, 0
  %27 = select i1 %26, ptr @.str.25.511, ptr @.str.33.247
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %15, ptr noundef nonnull %27) #30
  br label %28

28:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @AssignTriggerPosns(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #20 {
  %3 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !7
  %5 = icmp eq ptr %4, null
  br i1 %5, label %23, label %6

6:                                                ; preds = %19, %2
  %7 = phi ptr [ %21, %19 ], [ %4, %2 ]
  %8 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 2
  %9 = load i32, ptr %8, align 8, !tbaa !74
  %10 = and i32 %9, 1
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %19, label %12

12:                                               ; preds = %6
  %13 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !76
  %15 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %14) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %19, label %17

17:                                               ; preds = %12
  %18 = tail call fastcc i32 @AssignPositions(ptr noundef nonnull %15, i32 noundef 0) #32
  br label %19

19:                                               ; preds = %17, %12, %6
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %6, !llvm.loop !322

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
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !323

22:                                               ; preds = %18, %12, %9
  %23 = phi ptr [ null, %9 ], [ %13, %12 ], [ null, %18 ]
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !76
  %26 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %25) #30
  %27 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 6
  %28 = load i32, ptr %27, align 4, !tbaa !56
  %29 = add nsw i32 %28, -1
  %30 = icmp eq i32 %29, %8
  br i1 %30, label %32, label %31

31:                                               ; preds = %22
  tail call fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %23, i32 noundef %8, ptr noundef %26) #32
  br label %32

32:                                               ; preds = %31, %22
  %33 = icmp eq i32 %8, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %32
  %35 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 2
  %36 = load ptr, ptr %35, align 8, !tbaa !324
  tail call void %36(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %5) #30
  br label %40

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 1
  %39 = load ptr, ptr %38, align 8, !tbaa !233
  tail call void %39(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3) #30
  br label %40

40:                                               ; preds = %37, %34
  %41 = getelementptr inbounds %struct._tagTreeCCNode, ptr %26, i64 0, i32 5
  %42 = load i32, ptr %41, align 8, !tbaa !40
  %43 = lshr i32 %42, 3
  %44 = and i32 %43, 1
  %45 = load ptr, ptr %23, align 8, !tbaa !94
  %46 = icmp eq ptr %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %40
  %48 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %49 = load ptr, ptr %48, align 8, !tbaa !325
  tail call void %49(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %45, i32 noundef 0, i32 noundef %44) #30
  br label %73

50:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #28
  %51 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = icmp ne ptr %52, null
  %54 = icmp ne ptr %52, %23
  %55 = and i1 %53, %54
  br i1 %55, label %56, label %68

56:                                               ; preds = %56, %50
  %57 = phi ptr [ %64, %56 ], [ %52, %50 ]
  %58 = phi i32 [ %62, %56 ], [ 0, %50 ]
  %59 = load ptr, ptr %57, align 8, !tbaa !94
  %60 = icmp eq ptr %59, null
  %61 = zext i1 %60 to i32
  %62 = add nuw nsw i32 %58, %61
  %63 = getelementptr inbounds %struct._tagTreeCCParam, ptr %57, i64 0, i32 4
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = icmp ne ptr %64, null
  %66 = icmp ne ptr %64, %23
  %67 = and i1 %65, %66
  br i1 %67, label %56, label %68, !llvm.loop !326

68:                                               ; preds = %56, %50
  %69 = phi i32 [ 0, %50 ], [ %62, %56 ]
  %70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.68.651, i32 noundef %69) #30
  %71 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %72 = load ptr, ptr %71, align 8, !tbaa !325
  call void %72(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef 0, i32 noundef %44) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #28
  br label %73

73:                                               ; preds = %68, %47
  call fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %8, ptr noundef %26) #32
  %74 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %75 = load ptr, ptr %74, align 8, !tbaa !327
  call void %75(ptr noundef %0, ptr noundef %1, i32 noundef 0) #30
  %76 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 12
  %77 = load ptr, ptr %76, align 8, !tbaa !234
  call void %77(ptr noundef %0, ptr noundef %1, ptr noundef %3) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = alloca [64 x i8], align 16
  %8 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %32, label %11

11:                                               ; preds = %23, %6
  %12 = phi ptr [ %30, %23 ], [ %9, %6 ]
  %13 = phi i32 [ %28, %23 ], [ 1, %6 ]
  %14 = phi i32 [ %24, %23 ], [ 0, %6 ]
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %12, i64 0, i32 2
  %16 = load i32, ptr %15, align 8, !tbaa !74
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
  %25 = load ptr, ptr %12, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  %27 = zext i1 %26 to i32
  %28 = add nuw nsw i32 %13, %27
  %29 = getelementptr inbounds %struct._tagTreeCCParam, ptr %12, i64 0, i32 4
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %11, !llvm.loop !328

32:                                               ; preds = %23, %6
  %33 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %34 = load i32, ptr %33, align 8, !tbaa !53
  %35 = and i32 %34, 2
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %32
  %38 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %39 = load ptr, ptr %38, align 8, !tbaa !329
  %40 = add nsw i32 %5, -1
  tail call void %39(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %40) #30
  br label %47

41:                                               ; preds = %32
  %42 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %43 = load ptr, ptr %42, align 8, !tbaa !330
  %44 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %4, i64 0, i32 3
  %45 = load i32, ptr %44, align 8, !tbaa !139
  %46 = add nsw i32 %5, -1
  tail call void %43(ptr noundef %0, ptr noundef %1, ptr noundef %4, i32 noundef %45, i32 noundef %46) #30
  br label %47

47:                                               ; preds = %41, %37
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %4, i64 0, i32 8
  %49 = load ptr, ptr %48, align 8, !tbaa !61
  br label %144

50:                                               ; preds = %19
  %.lcssa3 = phi ptr [ %12, %19 ]
  %.lcssa2 = phi i32 [ %13, %19 ]
  %51 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa3, i64 0, i32 1
  %52 = load ptr, ptr %51, align 8, !tbaa !76
  %53 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %52) #30
  %54 = getelementptr inbounds %struct._tagTreeCCNode, ptr %53, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !40
  %56 = lshr i32 %55, 3
  %57 = and i32 %56, 1
  %58 = load ptr, ptr %.lcssa3, align 8, !tbaa !94
  %59 = icmp eq ptr %58, null
  br i1 %59, label %63, label %60

60:                                               ; preds = %50
  %61 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %62 = load ptr, ptr %61, align 8, !tbaa !325
  tail call void %62(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %58, i32 noundef %5, i32 noundef %57) #30
  br label %67

63:                                               ; preds = %50
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %7) #28
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(1) @.str.68.651, i32 noundef %.lcssa2) #30
  %65 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %66 = load ptr, ptr %65, align 8, !tbaa !325
  call void %66(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %7, i32 noundef %5, i32 noundef %57) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %7) #28
  br label %67

67:                                               ; preds = %63, %60
  %68 = shl i32 256, %5
  %69 = xor i32 %68, -1
  br label %70

70:                                               ; preds = %83, %67
  %71 = phi i64 [ 0, %67 ], [ %84, %83 ]
  %72 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %71
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %83, label %75

75:                                               ; preds = %75, %70
  %76 = phi ptr [ %81, %75 ], [ %73, %70 ]
  %77 = getelementptr inbounds %struct._tagTreeCCNode, ptr %76, i64 0, i32 5
  %78 = load i32, ptr %77, align 8, !tbaa !40
  %79 = and i32 %78, %69
  store i32 %79, ptr %77, align 8, !tbaa !40
  %80 = getelementptr inbounds %struct._tagTreeCCNode, ptr %76, i64 0, i32 12
  %81 = load ptr, ptr %80, align 8, !tbaa !7
  %82 = icmp eq ptr %81, null
  br i1 %82, label %83, label %75, !llvm.loop !57

83:                                               ; preds = %75, %70
  %84 = add nuw nsw i64 %71, 1
  %85 = icmp eq i64 %84, 512
  br i1 %85, label %86, label %70, !llvm.loop !58

86:                                               ; preds = %83
  %87 = icmp sgt i32 %5, 0
  %88 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %89 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %90 = add nsw i32 %5, 1
  %91 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  br label %92

92:                                               ; preds = %124, %86
  %93 = phi ptr [ %4, %86 ], [ %121, %124 ]
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = icmp ne ptr %94, null
  %96 = and i1 %87, %95
  br i1 %96, label %97, label %106

97:                                               ; preds = %97, %92
  %98 = phi ptr [ %102, %97 ], [ %94, %92 ]
  %99 = phi i32 [ %100, %97 ], [ 0, %92 ]
  %100 = add nuw nsw i32 %99, 1
  %101 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %98, i64 0, i32 1
  %102 = load ptr, ptr %101, align 8, !tbaa !7
  %103 = icmp ne ptr %102, null
  %104 = icmp slt i32 %100, %5
  %105 = select i1 %103, i1 %104, i1 false
  br i1 %105, label %97, label %106, !llvm.loop !331

106:                                              ; preds = %97, %92
  %107 = phi ptr [ %94, %92 ], [ %102, %97 ]
  %108 = phi i1 [ %95, %92 ], [ %103, %97 ]
  br i1 %108, label %109, label %119

109:                                              ; preds = %106
  %110 = load ptr, ptr %107, align 8, !tbaa !69
  %111 = call fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %110, i32 noundef %68, i32 noundef %5) #32, !range !132
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load ptr, ptr %88, align 8, !tbaa !25
  %115 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %93, i64 0, i32 4
  %116 = load ptr, ptr %115, align 8, !tbaa !71
  %117 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %93, i64 0, i32 5
  %118 = load i64, ptr %117, align 8, !tbaa !72
  call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %114, ptr noundef %116, i64 noundef %118, ptr noundef nonnull @.str.1.8) #30
  br label %119

119:                                              ; preds = %113, %109, %106
  %120 = load ptr, ptr %89, align 8, !tbaa !332
  call void %120(ptr noundef %0, ptr noundef %1, i32 noundef %5) #30
  %121 = call fastcc ptr @GenerateSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef nonnull %93, i32 noundef %90) #32
  %122 = load ptr, ptr %91, align 8, !tbaa !333
  call void %122(ptr noundef %0, ptr noundef %1, i32 noundef %5) #30
  %123 = icmp eq ptr %121, null
  br i1 %123, label %141, label %124

124:                                              ; preds = %119
  br i1 %87, label %125, label %92, !llvm.loop !334

125:                                              ; preds = %124
  %.lcssa1 = phi ptr [ %121, %124 ]
  %126 = load ptr, ptr %.lcssa1, align 8, !tbaa !7
  %127 = load ptr, ptr %4, align 8, !tbaa !7
  %128 = load ptr, ptr %127, align 8, !tbaa !69
  %129 = load ptr, ptr %126, align 8, !tbaa !69
  %130 = icmp eq ptr %128, %129
  br i1 %130, label %131, label %141

131:                                              ; preds = %131, %125
  %132 = phi ptr [ %137, %131 ], [ %127, %125 ]
  %133 = phi ptr [ %136, %131 ], [ %126, %125 ]
  %134 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %132, i64 0, i32 1
  %135 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %133, i64 0, i32 1
  %136 = load ptr, ptr %135, align 8, !tbaa !7
  %137 = load ptr, ptr %134, align 8, !tbaa !7
  %138 = load ptr, ptr %137, align 8, !tbaa !69
  %139 = load ptr, ptr %136, align 8, !tbaa !69
  %140 = icmp eq ptr %138, %139
  br i1 %140, label %131, label %141

141:                                              ; preds = %131, %125, %119
  %.lcssa = phi ptr [ %.lcssa1, %131 ], [ %.lcssa1, %125 ], [ %121, %119 ]
  %142 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %143 = load ptr, ptr %142, align 8, !tbaa !327
  call void %143(ptr noundef %0, ptr noundef %1, i32 noundef %5) #30
  br label %144

144:                                              ; preds = %141, %47
  %145 = phi ptr [ %.lcssa, %141 ], [ %49, %47 ]
  ret ptr %145
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr noundef readonly %7, i32 noundef %8) unnamed_addr #0 {
  %10 = alloca [64 x i8], align 16
  %11 = icmp eq ptr %7, null
  br i1 %11, label %22, label %12

12:                                               ; preds = %18, %9
  %13 = phi ptr [ %20, %18 ], [ %7, %9 ]
  %14 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 2
  %15 = load i32, ptr %14, align 8, !tbaa !74
  %16 = and i32 %15, 1
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %40

18:                                               ; preds = %12
  %19 = getelementptr inbounds %struct._tagTreeCCParam, ptr %13, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !156
  %21 = icmp eq ptr %20, null
  br i1 %21, label %22, label %12, !llvm.loop !335

22:                                               ; preds = %18, %9
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %24 = load i32, ptr %23, align 8, !tbaa !53
  %25 = and i32 %24, 2
  %26 = icmp eq i32 %25, 0
  %27 = sext i32 %5 to i64
  %28 = getelementptr inbounds ptr, ptr %4, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  br i1 %26, label %34, label %30

30:                                               ; preds = %22
  %31 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %32 = load ptr, ptr %31, align 8, !tbaa !329
  %33 = add nsw i32 %8, -1
  tail call void %32(ptr noundef %0, ptr noundef %1, ptr noundef %29, i32 noundef %33) #30
  br label %79

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %36 = load ptr, ptr %35, align 8, !tbaa !330
  %37 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %29, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !139
  %39 = add nsw i32 %8, -1
  tail call void %36(ptr noundef %0, ptr noundef %1, ptr noundef %29, i32 noundef %38, i32 noundef %39) #30
  br label %79

40:                                               ; preds = %12
  %.lcssa = phi ptr [ %13, %12 ]
  %41 = getelementptr inbounds %struct._tagTreeCCParam, ptr %.lcssa, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  %43 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %42) #30
  %44 = getelementptr inbounds %struct._tagTreeCCNode, ptr %43, i64 0, i32 5
  %45 = load i32, ptr %44, align 8, !tbaa !40
  %46 = lshr i32 %45, 3
  %47 = and i32 %46, 1
  %48 = load ptr, ptr %.lcssa, align 8, !tbaa !94
  %49 = icmp eq ptr %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %40
  %51 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !325
  tail call void %52(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %48, i32 noundef %8, i32 noundef %47) #30
  br label %76

53:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %10) #28
  %54 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = icmp ne ptr %55, null
  %57 = icmp ne ptr %55, %.lcssa
  %58 = and i1 %56, %57
  br i1 %58, label %59, label %71

59:                                               ; preds = %59, %53
  %60 = phi ptr [ %67, %59 ], [ %55, %53 ]
  %61 = phi i32 [ %65, %59 ], [ 0, %53 ]
  %62 = load ptr, ptr %60, align 8, !tbaa !94
  %63 = icmp eq ptr %62, null
  %64 = zext i1 %63 to i32
  %65 = add nuw nsw i32 %61, %64
  %66 = getelementptr inbounds %struct._tagTreeCCParam, ptr %60, i64 0, i32 4
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = icmp ne ptr %67, null
  %69 = icmp ne ptr %67, %.lcssa
  %70 = and i1 %68, %69
  br i1 %70, label %59, label %71, !llvm.loop !336

71:                                               ; preds = %59, %53
  %72 = phi i32 [ 0, %53 ], [ %65, %59 ]
  %73 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.68.651, i32 noundef %72) #30
  %74 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 3
  %75 = load ptr, ptr %74, align 8, !tbaa !325
  call void %75(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %10, i32 noundef %8, i32 noundef %47) #30
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %10) #28
  br label %76

76:                                               ; preds = %71, %50
  call fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef nonnull %.lcssa, i32 noundef %8, ptr noundef %43) #32
  %77 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 11
  %78 = load ptr, ptr %77, align 8, !tbaa !327
  call void %78(ptr noundef %0, ptr noundef %1, i32 noundef %8) #30
  br label %79

79:                                               ; preds = %76, %34, %30
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr noundef %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %32

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !337
  tail call void %17(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %9, i32 noundef %8) #30
  %18 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %19 = load ptr, ptr %18, align 8, !tbaa !332
  tail call void %19(ptr noundef %0, ptr noundef %1, i32 noundef %8) #30
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 7
  %21 = load i32, ptr %20, align 8, !tbaa !187
  %22 = mul nsw i32 %21, %6
  %23 = add nsw i32 %22, %5
  %24 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !79
  %26 = mul nsw i32 %25, %6
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !156
  %29 = add nsw i32 %8, 1
  tail call fastcc void @GenerateMultiSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %23, i32 noundef %26, ptr noundef %28, i32 noundef %29) #32
  %30 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  %31 = load ptr, ptr %30, align 8, !tbaa !333
  tail call void %31(ptr noundef %0, ptr noundef %1, i32 noundef %8) #30
  br label %32

32:                                               ; preds = %15, %10
  %33 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %41, label %36

36:                                               ; preds = %36, %32
  %37 = phi ptr [ %39, %36 ], [ %34, %32 ]
  tail call fastcc void @GenerateMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %37) #32
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 3
  %39 = load ptr, ptr %38, align 8, !tbaa !7
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %36, !llvm.loop !338

41:                                               ; preds = %36, %32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !40
  %9 = and i32 %8, %4
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %11, label %24

11:                                               ; preds = %6
  %12 = or i32 %8, %4
  store i32 %12, ptr %7, align 8, !tbaa !40
  %13 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !337
  tail call void %14(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %3, i32 noundef %5) #30
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %18, %11
  %19 = phi ptr [ %22, %18 ], [ %16, %11 ]
  %20 = tail call fastcc i32 @GenerateSelectors(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %19, i32 noundef %4, i32 noundef %5) #32, !range !132
  %21 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 3
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %18, !llvm.loop !339

24:                                               ; preds = %18, %11, %6
  %25 = phi i32 [ 0, %6 ], [ 1, %11 ], [ 1, %18 ]
  ret i32 %25
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, ptr nocapture noundef readonly %7, i32 noundef %8, ptr nocapture noundef readonly %9) unnamed_addr #0 {
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 5
  %12 = load i32, ptr %11, align 8, !tbaa !40
  %13 = and i32 %12, 2
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %26

15:                                               ; preds = %10
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !187
  %18 = mul nsw i32 %17, %6
  %19 = add nsw i32 %18, %5
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !79
  %22 = mul nsw i32 %21, %6
  %23 = getelementptr inbounds %struct._tagTreeCCParam, ptr %7, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !156
  %25 = add nsw i32 %8, 1
  tail call fastcc void @GenerateSplitMultiSwitch(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %19, i32 noundef %22, ptr noundef %24, i32 noundef %25) #32
  br label %26

26:                                               ; preds = %15, %10
  %27 = getelementptr inbounds %struct._tagTreeCCNode, ptr %9, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %30, %26
  %31 = phi ptr [ %33, %30 ], [ %28, %26 ]
  tail call fastcc void @GenerateSplitMultiScanFunc(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, ptr noundef %7, i32 noundef %8, ptr noundef nonnull %31) #32
  %32 = getelementptr inbounds %struct._tagTreeCCNode, ptr %31, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %35, label %30, !llvm.loop !340

35:                                               ; preds = %30, %26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3, ptr nocapture noundef readonly %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef %8) unnamed_addr #0 {
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 5
  %11 = load i32, ptr %10, align 8, !tbaa !40
  %12 = and i32 %11, 2
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %52

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !337
  tail call void %16(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %8, i32 noundef 0) #30
  %17 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !332
  tail call void %18(ptr noundef %0, ptr noundef %1, i32 noundef 0) #30
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 7
  %20 = load i32, ptr %19, align 8, !tbaa !187
  %21 = mul nsw i32 %20, %6
  %22 = add nsw i32 %21, %5
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 6
  %24 = load i32, ptr %23, align 4, !tbaa !56
  %25 = add nsw i32 %24, -1
  %26 = icmp eq i32 %25, %7
  br i1 %26, label %27, label %43

27:                                               ; preds = %14
  %28 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %3, i64 0, i32 5
  %29 = load i32, ptr %28, align 8, !tbaa !53
  %30 = and i32 %29, 2
  %31 = icmp eq i32 %30, 0
  %32 = sext i32 %22 to i64
  %33 = getelementptr inbounds ptr, ptr %4, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  br i1 %31, label %38, label %35

35:                                               ; preds = %27
  %36 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 8
  %37 = load ptr, ptr %36, align 8, !tbaa !329
  tail call void %37(ptr noundef %0, ptr noundef %1, ptr noundef %34, i32 noundef 0) #30
  br label %49

38:                                               ; preds = %27
  %39 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 7
  %40 = load ptr, ptr %39, align 8, !tbaa !330
  %41 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %34, i64 0, i32 3
  %42 = load i32, ptr %41, align 8, !tbaa !139
  tail call void %40(ptr noundef %0, ptr noundef %1, ptr noundef %34, i32 noundef %42, i32 noundef 0) #30
  br label %49

43:                                               ; preds = %14
  %44 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 9
  %45 = load ptr, ptr %44, align 8, !tbaa !341
  %46 = sext i32 %22 to i64
  %47 = getelementptr inbounds ptr, ptr %4, i64 %46
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  tail call void %45(ptr noundef %0, ptr noundef %1, ptr noundef %48, i32 noundef %22, i32 noundef 0) #30
  br label %49

49:                                               ; preds = %43, %38, %35
  %50 = getelementptr inbounds %struct.TreeCCNonVirtual, ptr %2, i64 0, i32 10
  %51 = load ptr, ptr %50, align 8, !tbaa !333
  tail call void %51(ptr noundef %0, ptr noundef %1, i32 noundef 0) #30
  br label %52

52:                                               ; preds = %49, %9
  %53 = getelementptr inbounds %struct._tagTreeCCNode, ptr %8, i64 0, i32 1
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %61, label %56

56:                                               ; preds = %56, %52
  %57 = phi ptr [ %59, %56 ], [ %54, %52 ]
  tail call fastcc void @GenerateSplitMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3, ptr noundef %4, i32 noundef %5, i32 noundef %6, i32 noundef %7, ptr noundef nonnull %57) #32
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 3
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %56, !llvm.loop !342

61:                                               ; preds = %56, %52
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @C_GenStart(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #19 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  tail call fastcc void @CGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef -1) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSplitEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  tail call fastcc void @CGenEntry(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSwitchHead(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %3, 1
  %7 = or i32 %6, 1
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #32
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
  %20 = phi ptr [ @.str.13.426, %5 ], [ %18, %13 ], [ @.str.17, %9 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %20, ptr noundef %2) #30
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenSelector(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %6 = load i32, ptr %5, align 8, !tbaa !40
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
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %15) #32
  %16 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  %17 = load ptr, ptr %16, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull %13, ptr noundef %17) #30
  br label %18

18:                                               ; preds = %12, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndSelectors(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseFunc(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = load ptr, ptr %6, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24, ptr noundef %8, ptr noundef %9, i32 noundef %3) #30
  %10 = load ptr, ptr %5, align 8, !tbaa !138
  %11 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %10, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %56, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %2, align 8, !tbaa !68
  br label %16

16:                                               ; preds = %51, %14
  %17 = phi ptr [ %54, %51 ], [ %12, %14 ]
  %18 = phi i1 [ false, %51 ], [ true, %14 ]
  %19 = phi i32 [ %52, %51 ], [ 1, %14 ]
  %20 = phi ptr [ %42, %51 ], [ %15, %14 ]
  br i1 %18, label %22, label %21

21:                                               ; preds = %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %22

22:                                               ; preds = %21, %16
  %23 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 2
  %24 = load i32, ptr %23, align 8, !tbaa !74
  %25 = and i32 %24, 1
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %39, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %20, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = and i32 %30, 24
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 4
  %34 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 1
  %35 = select i1 %32, ptr %33, ptr %34
  %36 = select i1 %32, ptr @.str.24.898, ptr @.str.1.771
  %37 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %20, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !133
  br label %41

39:                                               ; preds = %22
  %40 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 1
  br label %41

41:                                               ; preds = %39, %27
  %42 = phi ptr [ %38, %27 ], [ %20, %39 ]
  %43 = phi ptr [ %35, %27 ], [ %40, %39 ]
  %44 = phi ptr [ %36, %27 ], [ @.str.1.771, %39 ]
  %45 = load ptr, ptr %43, align 8, !tbaa !7
  %46 = load ptr, ptr %17, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27, ptr noundef %45, ptr noundef nonnull %44, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.28, ptr noundef %45, ptr noundef nonnull %44, i32 noundef %19) #30
  %50 = add nsw i32 %19, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %19, %48 ], [ %50, %49 ]
  %53 = getelementptr inbounds %struct._tagTreeCCParam, ptr %17, i64 0, i32 4
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %57, label %16, !llvm.loop !343

56:                                               ; preds = %4
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.867) #30
  br label %57

57:                                               ; preds = %56, %51
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %58 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %59 = load i64, ptr %58, align 8, !tbaa !143
  %60 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %61 = load ptr, ptr %60, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %59, ptr noundef %61) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %62 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !137
  %64 = icmp eq ptr %63, null
  br i1 %64, label %66, label %65

65:                                               ; preds = %57
  tail call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef nonnull %63) #30
  br label %66

66:                                               ; preds = %65, %57
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %67 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %68 = load i64, ptr %67, align 8, !tbaa !129
  %69 = add nsw i64 %68, 1
  %70 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %71 = load ptr, ptr %70, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %69, ptr noundef %71) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseCall(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 3
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.19.612, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %44) #30
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %28) #30
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !74
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !40
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !133
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !344

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseInline(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #0 {
  %5 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !138
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %6, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %4
  %11 = shl nsw i32 %3, 1
  %12 = add nsw i32 %11, 3
  br label %46

13:                                               ; preds = %4
  %14 = load ptr, ptr %2, align 8, !tbaa !68
  %15 = shl nsw i32 %3, 1
  %16 = add nsw i32 %15, 3
  br label %17

17:                                               ; preds = %41, %13
  %18 = phi ptr [ %8, %13 ], [ %44, %41 ]
  %19 = phi ptr [ %14, %13 ], [ %42, %41 ]
  %20 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 2
  %21 = load i32, ptr %20, align 8, !tbaa !74
  %22 = and i32 %21, 1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %41, label %24

24:                                               ; preds = %17
  %25 = load ptr, ptr %18, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  br i1 %26, label %38, label %27

27:                                               ; preds = %24
  %28 = load ptr, ptr %19, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct._tagTreeCCNode, ptr %28, i64 0, i32 5
  %30 = load i32, ptr %29, align 8, !tbaa !40
  %31 = and i32 %30, 24
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %38

33:                                               ; preds = %27
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %16) #32
  %34 = load ptr, ptr %19, align 8, !tbaa !69
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %34, i64 0, i32 4
  %36 = load ptr, ptr %35, align 8, !tbaa !44
  %37 = load ptr, ptr %18, align 8, !tbaa !94
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.35, ptr noundef %36, ptr noundef %37, ptr noundef %36, ptr noundef %37) #30
  br label %38

38:                                               ; preds = %33, %27, %24
  %39 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %19, i64 0, i32 1
  %40 = load ptr, ptr %39, align 8, !tbaa !133
  br label %41

41:                                               ; preds = %38, %17
  %42 = phi ptr [ %40, %38 ], [ %19, %17 ]
  %43 = getelementptr inbounds %struct._tagTreeCCParam, ptr %18, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %17, !llvm.loop !345

46:                                               ; preds = %41, %10
  %47 = phi i32 [ %12, %10 ], [ %16, %41 ]
  %48 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 7
  %49 = load i64, ptr %48, align 8, !tbaa !143
  %50 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 6
  %51 = load ptr, ptr %50, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %49, ptr noundef %51) #30
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %47) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %52 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !137
  %54 = icmp eq ptr %53, null
  br i1 %54, label %56, label %55

55:                                               ; preds = %46
  tail call fastcc void @TreeCCStreamCodeIndent(ptr noundef %1, ptr noundef nonnull %53, i32 noundef %47) #30
  br label %56

56:                                               ; preds = %55, %46
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %57 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %58 = load i64, ptr %57, align 8, !tbaa !129
  %59 = add nsw i64 %58, 1
  %60 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  %61 = load ptr, ptr %60, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %59, ptr noundef %61) #32
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenCaseSplit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #0 {
  %6 = shl nsw i32 %4, 1
  %7 = add nsw i32 %6, 3
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %7) #32
  %8 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %2, i64 0, i32 2
  %9 = load ptr, ptr %8, align 8, !tbaa !138
  %10 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %9, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !93
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %5
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.505) #30
  %15 = load ptr, ptr %8, align 8, !tbaa !138
  br label %16

16:                                               ; preds = %14, %5
  %17 = phi ptr [ %15, %14 ], [ %9, %5 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.21.604, ptr noundef %18, i32 noundef %3) #30
  %19 = load ptr, ptr %8, align 8, !tbaa !138
  %20 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %19, i64 0, i32 4
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %71, label %23

23:                                               ; preds = %16
  %24 = load ptr, ptr %2, align 8, !tbaa !68
  br label %25

25:                                               ; preds = %66, %23
  %26 = phi ptr [ %69, %66 ], [ %21, %23 ]
  %27 = phi i1 [ false, %66 ], [ true, %23 ]
  %28 = phi i32 [ %52, %66 ], [ 1, %23 ]
  %29 = phi ptr [ %67, %66 ], [ %24, %23 ]
  br i1 %27, label %31, label %30

30:                                               ; preds = %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %31

31:                                               ; preds = %30, %25
  %32 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 2
  %33 = load i32, ptr %32, align 8, !tbaa !74
  %34 = and i32 %33, 1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %45, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %29, align 8, !tbaa !69
  %38 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 5
  %39 = load i32, ptr %38, align 8, !tbaa !40
  %40 = and i32 %39, 24
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %36
  %43 = getelementptr inbounds %struct._tagTreeCCNode, ptr %37, i64 0, i32 4
  %44 = load ptr, ptr %43, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.33, ptr noundef %44) #30
  br label %45

45:                                               ; preds = %42, %36, %31
  %46 = load ptr, ptr %26, align 8, !tbaa !94
  %47 = icmp eq ptr %46, null
  br i1 %47, label %49, label %48

48:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %46) #30
  br label %51

49:                                               ; preds = %45
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %28) #30
  %50 = add nsw i32 %28, 1
  br label %51

51:                                               ; preds = %49, %48
  %52 = phi i32 [ %28, %48 ], [ %50, %49 ]
  %53 = load i32, ptr %32, align 8, !tbaa !74
  %54 = and i32 %53, 1
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %66, label %56

56:                                               ; preds = %51
  %57 = load ptr, ptr %29, align 8, !tbaa !69
  %58 = getelementptr inbounds %struct._tagTreeCCNode, ptr %57, i64 0, i32 5
  %59 = load i32, ptr %58, align 8, !tbaa !40
  %60 = and i32 %59, 24
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %56
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %63

63:                                               ; preds = %62, %56
  %64 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %29, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !133
  br label %66

66:                                               ; preds = %63, %51
  %67 = phi ptr [ %65, %63 ], [ %29, %51 ]
  %68 = getelementptr inbounds %struct._tagTreeCCParam, ptr %26, i64 0, i32 4
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %25, !llvm.loop !346

71:                                               ; preds = %66, %16
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndCase(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.30.504) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenEndSwitch(ptr nocapture readnone %0, ptr nocapture noundef %1, i32 noundef %2) #0 {
  %4 = shl nsw i32 %2, 1
  %5 = add nsw i32 %4, 2
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %5) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.31.498) #30
  %6 = or i32 %4, 1
  tail call fastcc void @Indent(ptr noundef %1, i32 noundef %6) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @C_GenExit(ptr nocapture readnone %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2) #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !93
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(5) @.str.34.867) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %14, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !160
  %11 = icmp eq ptr %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.38.394, ptr noundef nonnull %10) #30
  br label %14

13:                                               ; preds = %8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.39.395) #30
  br label %14

14:                                               ; preds = %13, %12, %3
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.47.562) #30
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @C_GenEnd(ptr nocapture %0, ptr nocapture %1, ptr nocapture %2) #19 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Indent(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = icmp sgt i32 %1, 3
  br i1 %3, label %4, label %8

4:                                                ; preds = %4, %2
  %5 = phi i32 [ %6, %4 ], [ %1, %2 ]
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.16.399) #30
  %6 = add nsw i32 %5, -4
  %7 = icmp ugt i32 %5, 7
  br i1 %7, label %4, label %8, !llvm.loop !347

8:                                                ; preds = %4, %2
  %9 = phi i32 [ %1, %2 ], [ %6, %4 ]
  %10 = add i32 %9, -1
  %11 = icmp ult i32 %10, 3
  br i1 %11, label %12, label %16

12:                                               ; preds = %8
  %13 = zext i32 %10 to i64
  %14 = getelementptr inbounds [3 x ptr], ptr @switch.table.Indent.400, i64 0, i64 %13
  %15 = load ptr, ptr %14, align 8
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull %15) #30
  br label %16

16:                                               ; preds = %12, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @CGenEntry(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #0 {
  %5 = icmp eq i32 %3, -1
  br i1 %5, label %10, label %6

6:                                                ; preds = %4
  %7 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !93
  %9 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.3.15, ptr noundef %8, ptr noundef %9, i32 noundef %3) #30
  br label %26

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %12 = load i32, ptr %11, align 4, !tbaa !39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !102
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %22

18:                                               ; preds = %14, %10
  %19 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !93
  %21 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.64.219, ptr noundef %20, ptr noundef %21) #30
  br label %26

22:                                               ; preds = %14
  %23 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 2
  %24 = load ptr, ptr %23, align 8, !tbaa !93
  %25 = load ptr, ptr %2, align 8, !tbaa !67
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.102.195, ptr noundef %24, ptr noundef nonnull %16, ptr noundef %25) #30
  br label %26

26:                                               ; preds = %22, %18, %6
  %27 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %2, i64 0, i32 4
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %63, label %30

30:                                               ; preds = %59, %26
  %31 = phi ptr [ %61, %59 ], [ %28, %26 ]
  %32 = phi i1 [ false, %59 ], [ true, %26 ]
  %33 = phi i32 [ %44, %59 ], [ 1, %26 ]
  br i1 %32, label %35, label %34

34:                                               ; preds = %30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  br label %35

35:                                               ; preds = %34, %30
  %36 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !76
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.429, ptr noundef %37) #30
  %38 = load ptr, ptr %31, align 8, !tbaa !94
  %39 = icmp eq ptr %38, null
  br i1 %39, label %41, label %40

40:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.4.606, ptr noundef nonnull %38) #30
  br label %43

41:                                               ; preds = %35
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.68.651, i32 noundef %33) #30
  %42 = add nsw i32 %33, 1
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ %33, %40 ], [ %42, %41 ]
  %45 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !74
  %47 = and i32 %46, 1
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %43
  %50 = load ptr, ptr %36, align 8, !tbaa !76
  %51 = tail call fastcc ptr @TreeCCNodeFindByType(ptr noundef %0, ptr noundef %50) #30
  %52 = icmp eq ptr %51, null
  br i1 %52, label %58, label %53

53:                                               ; preds = %49
  %54 = getelementptr inbounds %struct._tagTreeCCNode, ptr %51, i64 0, i32 5
  %55 = load i32, ptr %54, align 8, !tbaa !40
  %56 = and i32 %55, 8
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.6.608) #30
  br label %59

59:                                               ; preds = %58, %53, %43
  %60 = getelementptr inbounds %struct._tagTreeCCParam, ptr %31, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !7
  %62 = icmp eq ptr %61, null
  br i1 %62, label %64, label %30, !llvm.loop !348

63:                                               ; preds = %26
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.34.867) #30
  br label %64

64:                                               ; preds = %63, %59
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.11.519) #30
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParamsSource(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParamsSource(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %25, ptr noundef %26) #30
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !349

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @InitFields(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @InitFields(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %28, label %10

10:                                               ; preds = %24, %6
  %11 = phi ptr [ %26, %24 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 3
  %13 = load i32, ptr %12, align 8, !tbaa !152
  %14 = and i32 %13, 1
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %17, ptr noundef %17) #30
  br label %24

18:                                               ; preds = %10
  %19 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !151
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.149, ptr noundef %23, ptr noundef nonnull %20) #30
  br label %24

24:                                               ; preds = %22, %18, %16
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %10, !llvm.loop !350

28:                                               ; preds = %24, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputVtableImpls(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @OutputVtableImpls(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %68, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  %14 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 3
  %15 = getelementptr inbounds %struct._tagTreeCCStream, ptr %1, i64 0, i32 2
  br label %16

16:                                               ; preds = %21, %12
  %17 = phi ptr [ %10, %12 ], [ %23, %21 ]
  %18 = load ptr, ptr %17, align 8, !tbaa !163
  %19 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %18) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %25

21:                                               ; preds = %58, %16
  %22 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = icmp eq ptr %23, null
  br i1 %24, label %68, label %16, !llvm.loop !351

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %17, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !165
  %28 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.129, ptr noundef %27, ptr noundef %28, ptr noundef %18) #30
  %29 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 2
  %30 = load ptr, ptr %29, align 8, !tbaa !138
  %31 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %30, i64 0, i32 4
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = icmp eq ptr %32, null
  br i1 %33, label %58, label %34

34:                                               ; preds = %53, %25
  %35 = phi ptr [ %56, %53 ], [ %32, %25 ]
  %36 = phi i1 [ false, %53 ], [ true, %25 ]
  %37 = phi i32 [ %54, %53 ], [ 1, %25 ]
  br i1 %36, label %43, label %38

38:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  %39 = load ptr, ptr %35, align 8, !tbaa !94
  %40 = icmp eq ptr %39, null
  %41 = getelementptr inbounds %struct._tagTreeCCParam, ptr %35, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !76
  br i1 %40, label %51, label %50

43:                                               ; preds = %34
  %44 = load ptr, ptr %35, align 8, !tbaa !94
  %45 = icmp eq ptr %44, null
  %46 = load ptr, ptr %13, align 8, !tbaa !44
  br i1 %45, label %48, label %47

47:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %46, ptr noundef nonnull %44) #30
  br label %53

48:                                               ; preds = %43
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef %46, i32 noundef %37) #30
  %49 = add nsw i32 %37, 1
  br label %53

50:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %42, ptr noundef nonnull %39) #30
  br label %53

51:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %42, i32 noundef %37) #30
  %52 = add nsw i32 %37, 1
  br label %53

53:                                               ; preds = %51, %50, %48, %47
  %54 = phi i32 [ %37, %50 ], [ %52, %51 ], [ %37, %47 ], [ %49, %48 ]
  %55 = getelementptr inbounds %struct._tagTreeCCParam, ptr %35, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !7
  %57 = icmp eq ptr %56, null
  br i1 %57, label %58, label %34, !llvm.loop !352

58:                                               ; preds = %53, %25
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.7.609) #30
  %59 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 7
  %60 = load i64, ptr %59, align 8, !tbaa !143
  %61 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 6
  %62 = load ptr, ptr %61, align 8, !tbaa !142
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %60, ptr noundef %62) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.27.513) #30
  %63 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %19, i64 0, i32 1
  %64 = load ptr, ptr %63, align 8, !tbaa !137
  tail call fastcc void @TreeCCStreamCode(ptr noundef %1, ptr noundef %64) #30
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.20.491) #30
  %65 = load i64, ptr %14, align 8, !tbaa !129
  %66 = add nsw i64 %65, 1
  %67 = load ptr, ptr %15, align 8, !tbaa !88
  tail call fastcc void @TreeCCStreamLine(ptr noundef %1, i64 noundef %66, ptr noundef %67) #32
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.10.611) #30
  br label %21

68:                                               ; preds = %21, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputVtableFuncs(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %4
  tail call fastcc void @OutputVtableFuncs(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32
  br label %8

8:                                                ; preds = %7, %4
  %9 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %10 = load ptr, ptr %9, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %57, label %12

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 4
  br label %14

14:                                               ; preds = %53, %12
  %15 = phi ptr [ %10, %12 ], [ %55, %53 ]
  %16 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 1
  %17 = load ptr, ptr %16, align 8, !tbaa !165
  %18 = load ptr, ptr %13, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.130, ptr noundef %17, ptr noundef %18) #30
  %19 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 2
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %37, label %22

22:                                               ; preds = %32, %14
  %23 = phi ptr [ %35, %32 ], [ %20, %14 ]
  %24 = phi i32 [ %33, %32 ], [ 1, %14 ]
  %25 = load ptr, ptr %23, align 8, !tbaa !94
  %26 = icmp eq ptr %25, null
  %27 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !76
  br i1 %26, label %30, label %29

29:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.64, ptr noundef %28, ptr noundef nonnull %25) #30
  br label %32

30:                                               ; preds = %22
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.65, ptr noundef %28, i32 noundef %24) #30
  %31 = add nsw i32 %24, 1
  br label %32

32:                                               ; preds = %30, %29
  %33 = phi i32 [ %24, %29 ], [ %31, %30 ]
  %34 = getelementptr inbounds %struct._tagTreeCCParam, ptr %23, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %37, label %22, !llvm.loop !353

37:                                               ; preds = %32, %14
  %38 = load ptr, ptr %15, align 8, !tbaa !163
  %39 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %38) #30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %45, %37
  %42 = phi ptr [ %43, %45 ], [ %3, %37 ]
  %43 = load ptr, ptr %42, align 8, !tbaa !45
  %44 = icmp eq ptr %43, null
  br i1 %44, label %52, label %45

45:                                               ; preds = %41
  %46 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef nonnull %43, ptr noundef %38) #30
  %47 = icmp eq ptr %46, null
  br i1 %47, label %41, label %48, !llvm.loop !354

48:                                               ; preds = %45, %37
  %49 = phi ptr [ %3, %37 ], [ %43, %45 ]
  %50 = getelementptr inbounds %struct._tagTreeCCNode, ptr %49, i64 0, i32 4
  %51 = load ptr, ptr %50, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.131, ptr noundef %51, ptr noundef %38) #30
  br label %53

52:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.132) #30
  br label %53

53:                                               ; preds = %52, %48
  %54 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %15, i64 0, i32 4
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %14, !llvm.loop !355

57:                                               ; preds = %53, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @CreateParams(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #0 {
  %4 = load ptr, ptr %1, align 8, !tbaa !45
  %5 = icmp eq ptr %4, null
  br i1 %5, label %8, label %6

6:                                                ; preds = %3
  %7 = tail call fastcc i32 @CreateParams(ptr noundef %0, ptr noundef nonnull %4, i32 noundef %2) #32, !range !132
  br label %8

8:                                                ; preds = %6, %3
  %9 = phi i32 [ %7, %6 ], [ %2, %3 ]
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %32, label %13

13:                                               ; preds = %27, %8
  %14 = phi ptr [ %30, %27 ], [ %11, %8 ]
  %15 = phi i32 [ %28, %27 ], [ %9, %8 ]
  %16 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 3
  %17 = load i32, ptr %16, align 8, !tbaa !152
  %18 = and i32 %17, 1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = icmp eq i32 %15, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %20
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.15.785) #30
  br label %23

23:                                               ; preds = %22, %20
  %24 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !46
  %26 = load ptr, ptr %14, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.23.418, ptr noundef %25, ptr noundef %26) #30
  br label %27

27:                                               ; preds = %23, %13
  %28 = phi i32 [ 1, %23 ], [ %15, %13 ]
  %29 = getelementptr inbounds %struct._tagTreeCCField, ptr %14, i64 0, i32 6
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %13, !llvm.loop !356

32:                                               ; preds = %27, %8
  %33 = phi i32 [ %9, %8 ], [ %28, %27 ]
  ret i32 %33
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareFields(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @DeclareFields(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %10, %6
  %11 = phi ptr [ %16, %10 ], [ %8, %6 ]
  %12 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !46
  %14 = load ptr, ptr %11, align 8, !tbaa !150
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.58.241, ptr noundef %13, ptr noundef %14) #30
  %15 = getelementptr inbounds %struct._tagTreeCCField, ptr %11, i64 0, i32 6
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %10, !llvm.loop !357

18:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @DeclareVirtuals(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = load ptr, ptr %1, align 8, !tbaa !45
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  tail call fastcc void @DeclareVirtuals(ptr noundef %0, ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %2
  %7 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 11
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %40, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 4
  br label %12

12:                                               ; preds = %36, %10
  %13 = phi ptr [ %8, %10 ], [ %38, %36 ]
  %14 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !165
  %16 = load ptr, ptr %13, align 8, !tbaa !163
  %17 = load ptr, ptr %11, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.63, ptr noundef %15, ptr noundef %16, ptr noundef %17) #30
  %18 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = icmp eq ptr %19, null
  br i1 %20, label %36, label %21

21:                                               ; preds = %31, %12
  %22 = phi ptr [ %34, %31 ], [ %19, %12 ]
  %23 = phi i32 [ %32, %31 ], [ 1, %12 ]
  %24 = load ptr, ptr %22, align 8, !tbaa !94
  %25 = icmp eq ptr %24, null
  %26 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !76
  br i1 %25, label %29, label %28

28:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.64, ptr noundef %27, ptr noundef nonnull %24) #30
  br label %31

29:                                               ; preds = %21
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.65, ptr noundef %27, i32 noundef %23) #30
  %30 = add nsw i32 %23, 1
  br label %31

31:                                               ; preds = %29, %28
  %32 = phi i32 [ %23, %28 ], [ %30, %29 ]
  %33 = getelementptr inbounds %struct._tagTreeCCParam, ptr %22, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %21, !llvm.loop !358

36:                                               ; preds = %31, %12
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %0, ptr noundef nonnull @.str.25.511) #30
  %37 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %13, i64 0, i32 4
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %12, !llvm.loop !359

40:                                               ; preds = %36, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @DeclareVirtualImpls(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #0 {
  %5 = load ptr, ptr %2, align 8, !tbaa !45
  %6 = icmp eq ptr %5, null
  br i1 %6, label %9, label %7

7:                                                ; preds = %4
  %8 = tail call fastcc i32 @DeclareVirtualImpls(ptr noundef %0, ptr noundef %1, ptr noundef nonnull %5, ptr noundef %3) #32, !range !132
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi i32 [ %8, %7 ], [ 0, %4 ]
  %11 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 11
  %12 = load ptr, ptr %11, align 8, !tbaa !7
  %13 = icmp eq ptr %12, null
  br i1 %13, label %65, label %14

14:                                               ; preds = %9
  %15 = getelementptr inbounds %struct._tagTreeCCNode, ptr %3, i64 0, i32 4
  br label %16

16:                                               ; preds = %61, %14
  %17 = phi ptr [ %12, %14 ], [ %63, %61 ]
  %18 = phi i32 [ %10, %14 ], [ 1, %61 ]
  br label %19

19:                                               ; preds = %24, %16
  %20 = phi ptr [ %17, %16 ], [ %26, %24 ]
  %21 = load ptr, ptr %20, align 8, !tbaa !163
  %22 = tail call fastcc ptr @TreeCCOperationFindCase(ptr noundef %0, ptr noundef %3, ptr noundef %21) #30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %20, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %65, label %19, !llvm.loop !360

28:                                               ; preds = %19
  %.lcssa2 = phi ptr [ %20, %19 ]
  %.lcssa1 = phi ptr [ %21, %19 ]
  %.lcssa = phi ptr [ %22, %19 ]
  %29 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa2, i64 0, i32 1
  %30 = load ptr, ptr %29, align 8, !tbaa !165
  %31 = load ptr, ptr %15, align 8, !tbaa !44
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.75, ptr noundef %30, ptr noundef %31, ptr noundef %.lcssa1) #30
  %32 = getelementptr inbounds %struct._tagTreeCCOperationCase, ptr %.lcssa, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !138
  %34 = getelementptr inbounds %struct._tagTreeCCOperation, ptr %33, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = icmp eq ptr %35, null
  br i1 %36, label %61, label %37

37:                                               ; preds = %56, %28
  %38 = phi ptr [ %59, %56 ], [ %35, %28 ]
  %39 = phi i1 [ false, %56 ], [ true, %28 ]
  %40 = phi i32 [ %57, %56 ], [ 1, %28 ]
  br i1 %39, label %49, label %41

41:                                               ; preds = %37
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.15.785) #30
  %42 = load ptr, ptr %38, align 8, !tbaa !94
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %struct._tagTreeCCParam, ptr %38, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8, !tbaa !76
  br i1 %43, label %47, label %46

46:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.23.418, ptr noundef %45, ptr noundef nonnull %42) #30
  br label %56

47:                                               ; preds = %41
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.24.419, ptr noundef %45, i32 noundef %40) #30
  %48 = add nsw i32 %40, 1
  br label %56

49:                                               ; preds = %37
  %50 = load ptr, ptr %38, align 8, !tbaa !94
  %51 = icmp eq ptr %50, null
  %52 = load ptr, ptr %15, align 8, !tbaa !44
  br i1 %51, label %54, label %53

53:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.78, ptr noundef %52, ptr noundef nonnull %50) #30
  br label %56

54:                                               ; preds = %49
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.79, ptr noundef %52, i32 noundef %40) #30
  %55 = add nsw i32 %40, 1
  br label %56

56:                                               ; preds = %54, %53, %47, %46
  %57 = phi i32 [ %40, %46 ], [ %48, %47 ], [ %40, %53 ], [ %55, %54 ]
  %58 = getelementptr inbounds %struct._tagTreeCCParam, ptr %38, i64 0, i32 4
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %37, !llvm.loop !361

61:                                               ; preds = %56, %28
  tail call void (ptr, ptr, ...) @TreeCCStreamPrint(ptr noundef %1, ptr noundef nonnull @.str.25.511) #30
  %62 = getelementptr inbounds %struct._tagTreeCCVirtual, ptr %.lcssa2, i64 0, i32 4
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = icmp eq ptr %63, null
  br i1 %64, label %65, label %16, !llvm.loop !360

65:                                               ; preds = %61, %24, %9
  %66 = phi i32 [ %10, %9 ], [ %18, %24 ], [ 1, %61 ]
  ret i32 %66
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @Visit(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %20, label %10

7:                                                ; preds = %10
  %8 = load ptr, ptr %4, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %20, label %15

10:                                               ; preds = %10, %3
  %11 = phi ptr [ %13, %10 ], [ %5, %3 ]
  tail call void %2(ptr noundef %0, ptr noundef nonnull %11) #30
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %11, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  %14 = icmp eq ptr %13, null
  br i1 %14, label %7, label %10, !llvm.loop !362

15:                                               ; preds = %15, %7
  %16 = phi ptr [ %18, %15 ], [ %8, %7 ]
  tail call fastcc void @Visit(ptr noundef %0, ptr noundef nonnull %16, ptr noundef %2) #32
  %17 = getelementptr inbounds %struct._tagTreeCCNode, ptr %16, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %15, !llvm.loop !363

20:                                               ; preds = %15, %7, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #22

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vsnprintf(ptr nocapture noundef, i64 noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #22

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @OutputMacroName(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = alloca [2 x i8], align 1
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i8, ptr %1, align 1, !tbaa !11
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
  %23 = load i32, ptr %9, align 8, !tbaa !116
  %24 = icmp slt i32 %23, 2048
  br i1 %22, label %25, label %34

25:                                               ; preds = %14
  br i1 %24, label %26, label %33

26:                                               ; preds = %25
  %27 = load ptr, ptr %11, align 8, !tbaa !115
  %28 = add nsw i32 %23, 1
  store i32 %28, ptr %9, align 8, !tbaa !116
  %29 = sext i32 %23 to i64
  %30 = getelementptr inbounds [2048 x i8], ptr %27, i64 0, i64 %29
  store i8 %15, ptr %30, align 1, !tbaa !11
  %31 = load i8, ptr %12, align 4
  %32 = or i8 %31, 16
  store i8 %32, ptr %12, align 4
  br label %43

33:                                               ; preds = %25
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #28
  store i8 %15, ptr %5, align 1, !tbaa !11
  store i8 0, ptr %13, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %5) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #28
  br label %43

34:                                               ; preds = %14
  br i1 %24, label %35, label %42

35:                                               ; preds = %34
  %36 = load ptr, ptr %11, align 8, !tbaa !115
  %37 = add nsw i32 %23, 1
  store i32 %37, ptr %9, align 8, !tbaa !116
  %38 = sext i32 %23 to i64
  %39 = getelementptr inbounds [2048 x i8], ptr %36, i64 0, i64 %38
  store i8 95, ptr %39, align 1, !tbaa !11
  %40 = load i8, ptr %12, align 4
  %41 = or i8 %40, 16
  store i8 %41, ptr %12, align 4
  br label %43

42:                                               ; preds = %34
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #28
  store i8 95, ptr %4, align 1, !tbaa !11
  store i8 0, ptr %10, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %4) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #28
  br label %43

43:                                               ; preds = %42, %35, %33, %26
  %44 = getelementptr inbounds i8, ptr %16, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %14, !llvm.loop !364

47:                                               ; preds = %43, %2
  %48 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !116
  %50 = icmp slt i32 %49, 2048
  br i1 %50, label %51, label %60

51:                                               ; preds = %47
  %52 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 5
  %53 = load ptr, ptr %52, align 8, !tbaa !115
  %54 = add nsw i32 %49, 1
  store i32 %54, ptr %48, align 8, !tbaa !116
  %55 = sext i32 %49 to i64
  %56 = getelementptr inbounds [2048 x i8], ptr %53, i64 0, i64 %55
  store i8 10, ptr %56, align 1, !tbaa !11
  %57 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 7
  %58 = load i8, ptr %57, align 4
  %59 = or i8 %58, 16
  store i8 %59, ptr %57, align 4
  br label %62

60:                                               ; preds = %47
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %3) #28
  store i8 10, ptr %3, align 1, !tbaa !11
  %61 = getelementptr inbounds [2 x i8], ptr %3, i64 0, i64 1
  store i8 0, ptr %61, align 1, !tbaa !11
  call fastcc void @WriteBuffer(ptr noundef nonnull %0, ptr noundef nonnull %3) #32
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %3) #28
  br label %62

62:                                               ; preds = %60, %51
  %63 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 3
  %64 = load i64, ptr %63, align 8, !tbaa !129
  %65 = add nsw i64 %64, 1
  store i64 %65, ptr %63, align 8, !tbaa !129
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite)
declare noalias noundef ptr @realloc(ptr allocptr nocapture noundef, i64 noundef) local_unnamed_addr #23

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCDupString(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
  %3 = add i64 %2, 1
  %4 = tail call noalias ptr @malloc(i64 noundef %3) #29
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %7

6:                                                ; preds = %1
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

7:                                                ; preds = %1
  %8 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %0) #30
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @VerifyMultiScan(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4, ptr nocapture noundef readonly %5, ptr noundef %6, ptr nocapture noundef readonly %7, ptr nocapture noundef writeonly %8) unnamed_addr #0 {
  store ptr %6, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 7
  %11 = load i32, ptr %10, align 8, !tbaa !187
  %12 = mul nsw i32 %11, %4
  %13 = add nsw i32 %12, %3
  %14 = getelementptr inbounds %struct._tagTreeCCParam, ptr %5, i64 0, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !79
  %16 = mul nsw i32 %15, %4
  %17 = getelementptr inbounds %struct._tagTreeCCParam, ptr %5, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !156
  %19 = getelementptr inbounds ptr, ptr %8, i64 1
  tail call fastcc void @VerifyMultiCoverage(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %13, i32 noundef %16, ptr noundef %18, ptr noundef %7, ptr noundef nonnull %19) #32
  %20 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %23, %9
  %24 = phi ptr [ %26, %23 ], [ %21, %9 ]
  tail call fastcc void @VerifyMultiScan(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, i32 noundef %4, ptr noundef %5, ptr noundef nonnull %24, ptr noundef %7, ptr noundef nonnull %8) #32
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %24, i64 0, i32 3
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %28, label %23, !llvm.loop !365

28:                                               ; preds = %23, %9
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @MarkMultiScan(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3, ptr noundef %4, ptr nocapture noundef readonly %5, ptr nocapture noundef readonly %6) unnamed_addr #15 {
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 7
  %9 = load i32, ptr %8, align 8, !tbaa !187
  %10 = mul nsw i32 %9, %2
  %11 = add nsw i32 %10, %1
  %12 = getelementptr inbounds %struct._tagTreeCCParam, ptr %3, i64 0, i32 3
  %13 = load i32, ptr %12, align 4, !tbaa !79
  %14 = mul nsw i32 %13, %2
  %15 = getelementptr inbounds %struct._tagTreeCCParam, ptr %3, i64 0, i32 4
  %16 = load ptr, ptr %15, align 8, !tbaa !156
  %17 = getelementptr inbounds %struct._tagTreeCCTrigger, ptr %5, i64 0, i32 1
  %18 = load ptr, ptr %17, align 8, !tbaa !133
  tail call fastcc void @MarkMultiCase(ptr noundef %0, i32 noundef %11, i32 noundef %14, ptr noundef %16, ptr noundef %4, ptr noundef %18) #32
  %19 = getelementptr inbounds %struct._tagTreeCCNode, ptr %6, i64 0, i32 1
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %27, label %22

22:                                               ; preds = %22, %7
  %23 = phi ptr [ %25, %22 ], [ %20, %7 ]
  tail call fastcc void @MarkMultiScan(ptr noundef %0, i32 noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef nonnull %23) #32
  %24 = getelementptr inbounds %struct._tagTreeCCNode, ptr %23, i64 0, i32 3
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %22, !llvm.loop !366

27:                                               ; preds = %22, %7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @ReportError(ptr noundef readonly %0, i64 noundef %1, ptr nocapture noundef readonly %2, ptr noundef %3) unnamed_addr #5 {
  %5 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  store ptr %8, ptr @TreeCCErrorFile, align 8, !tbaa !7
  br label %9

9:                                                ; preds = %7, %4
  %10 = phi ptr [ %8, %7 ], [ %5, %4 ]
  %11 = icmp eq ptr %0, null
  br i1 %11, label %17, label %12

12:                                               ; preds = %9
  %13 = tail call i32 @fputs(ptr noundef nonnull %0, ptr noundef %10) #32
  %14 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  %15 = tail call i32 @putc(i32 noundef 58, ptr noundef %14) #32
  %16 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  br label %17

17:                                               ; preds = %12, %9
  %18 = phi ptr [ %16, %12 ], [ %10, %9 ]
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %18, ptr noundef nonnull @.str.3, i64 noundef %1) #32
  %20 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  %21 = tail call i32 @vfprintf(ptr noundef %20, ptr noundef %2, ptr noundef %3) #32
  %22 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  %23 = tail call i32 @putc(i32 noundef 10, ptr noundef %22) #32
  %24 = load ptr, ptr @TreeCCErrorFile, align 8, !tbaa !7
  %25 = tail call i32 @fflush(ptr noundef %24) #32
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @TreeCCNextToken(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  %3 = load i32, ptr %2, align 4, !tbaa !367
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  %7 = load i64, ptr %6, align 8, !tbaa !22
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  store i64 %7, ptr %8, align 8, !tbaa !21
  store i32 0, ptr %0, align 8, !tbaa !15
  br label %168

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !19
  %12 = icmp eq ptr %11, null
  %13 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %14 = icmp eq ptr %11, %13
  %15 = select i1 %12, i1 true, i1 %14
  br i1 %15, label %17, label %16

16:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %11) #30
  br label %17

17:                                               ; preds = %16, %9
  store ptr null, ptr %10, align 8, !tbaa !19
  %18 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  %19 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %21

21:                                               ; preds = %165, %17
  %22 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %22, ptr %19, align 8, !tbaa !21
  %23 = load ptr, ptr %20, align 8, !tbaa !35
  %24 = tail call i32 @getc(ptr noundef %23) #32
  switch i32 %24, label %66 [
    i32 -1, label %166
    i32 37, label %25
  ]

25:                                               ; preds = %21
  %26 = load ptr, ptr %20, align 8, !tbaa !35
  %27 = tail call i32 @getc(ptr noundef %26) #32
  switch i32 %27, label %30 [
    i32 123, label %28
    i32 37, label %29
  ]

28:                                               ; preds = %25
  tail call fastcc void @LiteralCodeDefn(ptr noundef nonnull %0, i32 noundef 0) #32
  store i32 2, ptr %0, align 8, !tbaa !15
  br label %168

29:                                               ; preds = %25
  tail call fastcc void @LiteralCodeDefn(ptr noundef nonnull %0, i32 noundef 1) #32
  store i32 4, ptr %0, align 8, !tbaa !15
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
  tail call fastcc void @RecogIdentifier(ptr noundef nonnull %0, i32 noundef %.lcssa5, ptr noundef nonnull @.str.670) #32
  %39 = load ptr, ptr %10, align 8, !tbaa !19
  br label %40

40:                                               ; preds = %53, %38
  %41 = phi i32 [ 18, %38 ], [ %58, %53 ]
  %42 = phi i32 [ 0, %38 ], [ %57, %53 ]
  %43 = add nsw i32 %42, %41
  %44 = sdiv i32 %43, 2
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [19 x %struct.anon], ptr @KeywordTable, i64 0, i64 %45
  %47 = load ptr, ptr %46, align 16, !tbaa !368
  %48 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %39, ptr noundef nonnull dereferenceable(1) %47) #31
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %40
  %.lcssa = phi i64 [ %45, %40 ]
  %51 = getelementptr inbounds [19 x %struct.anon], ptr @KeywordTable, i64 0, i64 %.lcssa, i32 1
  %52 = load i32, ptr %51, align 8, !tbaa !370
  store i32 %52, ptr %0, align 8, !tbaa !15
  br label %168

53:                                               ; preds = %40
  %54 = icmp slt i32 %48, 0
  %55 = add nsw i32 %44, -1
  %56 = add nsw i32 %44, 1
  %57 = select i1 %54, i32 %42, i32 %56
  %58 = select i1 %54, i32 %55, i32 %41
  %59 = icmp sgt i32 %57, %58
  br i1 %59, label %60, label %40, !llvm.loop !371

60:                                               ; preds = %53
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.1.671, ptr noundef %39) #30
  store i32 18, ptr %0, align 8, !tbaa !15
  br label %168

61:                                               ; preds = %33
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.2.672) #30
  %62 = icmp eq i32 %27, -1
  br i1 %62, label %166, label %63

63:                                               ; preds = %61
  %64 = load ptr, ptr %20, align 8, !tbaa !35
  %65 = tail call i32 @ungetc(i32 noundef %27, ptr noundef %64) #32
  br label %165

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
  tail call fastcc void @RecogIdentifier(ptr noundef nonnull %0, i32 noundef %.lcssa10, ptr noundef nonnull @.str.3.673) #32
  store i32 1, ptr %0, align 8, !tbaa !15
  br label %168

75:                                               ; preds = %69
  switch i32 %24, label %161 [
    i32 40, label %76
    i32 41, label %77
    i32 125, label %78
    i32 91, label %79
    i32 93, label %80
    i32 44, label %81
    i32 61, label %82
    i32 42, label %83
    i32 38, label %84
    i32 59, label %85
    i32 58, label %86
    i32 39, label %95
    i32 34, label %95
    i32 10, label %96
    i32 13, label %99
    i32 123, label %109
    i32 32, label %165
    i32 12, label %165
    i32 11, label %165
    i32 9, label %165
    i32 47, label %115
  ]

76:                                               ; preds = %75
  store i32 5, ptr %0, align 8, !tbaa !15
  br label %168

77:                                               ; preds = %75
  store i32 6, ptr %0, align 8, !tbaa !15
  br label %168

78:                                               ; preds = %75
  store i32 8, ptr %0, align 8, !tbaa !15
  br label %168

79:                                               ; preds = %75
  store i32 9, ptr %0, align 8, !tbaa !15
  br label %168

80:                                               ; preds = %75
  store i32 10, ptr %0, align 8, !tbaa !15
  br label %168

81:                                               ; preds = %75
  store i32 11, ptr %0, align 8, !tbaa !15
  br label %168

82:                                               ; preds = %75
  store i32 12, ptr %0, align 8, !tbaa !15
  br label %168

83:                                               ; preds = %75
  store i32 13, ptr %0, align 8, !tbaa !15
  br label %168

84:                                               ; preds = %75
  store i32 14, ptr %0, align 8, !tbaa !15
  br label %168

85:                                               ; preds = %75
  store i32 15, ptr %0, align 8, !tbaa !15
  br label %168

86:                                               ; preds = %75
  %87 = load ptr, ptr %20, align 8, !tbaa !35
  %88 = tail call i32 @getc(ptr noundef %87) #32
  switch i32 %88, label %92 [
    i32 58, label %89
    i32 -1, label %90
  ]

89:                                               ; preds = %86
  store i32 16, ptr %0, align 8, !tbaa !15
  br label %168

90:                                               ; preds = %86
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 58) #30
  store i32 1, ptr %2, align 4, !tbaa !367
  %91 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %91, ptr %19, align 8, !tbaa !21
  store i32 0, ptr %0, align 8, !tbaa !15
  br label %168

92:                                               ; preds = %86
  %93 = load ptr, ptr %20, align 8, !tbaa !35
  %94 = tail call i32 @ungetc(i32 noundef %88, ptr noundef %93) #32
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 58) #30
  br label %165

95:                                               ; preds = %75, %75
  %.lcssa21 = phi i32 [ %24, %75 ], [ %24, %75 ]
  tail call fastcc void @RecogString(ptr noundef %0, i32 noundef %.lcssa21) #32
  store i32 17, ptr %0, align 8, !tbaa !15
  br label %168

96:                                               ; preds = %75
  %97 = load i64, ptr %18, align 8, !tbaa !22
  %98 = add nsw i64 %97, 1
  store i64 %98, ptr %18, align 8, !tbaa !22
  br label %165

99:                                               ; preds = %75
  %100 = load ptr, ptr %20, align 8, !tbaa !35
  %101 = tail call i32 @getc(ptr noundef %100) #32
  switch i32 %101, label %103 [
    i32 -1, label %102
    i32 10, label %106
  ]

102:                                              ; preds = %99
  store i32 1, ptr %2, align 4, !tbaa !367
  br label %106

103:                                              ; preds = %99
  %104 = load ptr, ptr %20, align 8, !tbaa !35
  %105 = tail call i32 @ungetc(i32 noundef %101, ptr noundef %104) #32
  br label %106

106:                                              ; preds = %103, %102, %99
  %107 = load i64, ptr %18, align 8, !tbaa !22
  %108 = add nsw i64 %107, 1
  store i64 %108, ptr %18, align 8, !tbaa !22
  br label %165

109:                                              ; preds = %75
  %110 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 9
  %111 = load i32, ptr %110, align 8, !tbaa !146
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %114, label %113

113:                                              ; preds = %109
  tail call fastcc void @LiteralCode(ptr noundef nonnull %0) #32
  store i32 3, ptr %0, align 8, !tbaa !15
  br label %168

114:                                              ; preds = %109
  store i32 7, ptr %0, align 8, !tbaa !15
  br label %168

115:                                              ; preds = %75
  %116 = load ptr, ptr %20, align 8, !tbaa !35
  %117 = tail call i32 @getc(ptr noundef %116) #32
  switch i32 %117, label %156 [
    i32 42, label %118
    i32 47, label %141
  ]

118:                                              ; preds = %140, %115
  %119 = load ptr, ptr %20, align 8, !tbaa !35
  %120 = tail call i32 @getc(ptr noundef %119) #32
  switch i32 %120, label %140 [
    i32 -1, label %121
    i32 42, label %123
    i32 10, label %129
    i32 13, label %132
  ]

121:                                              ; preds = %132, %123, %118
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.4.675) #30
  store i32 1, ptr %2, align 4, !tbaa !367
  %122 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %122, ptr %19, align 8, !tbaa !21
  store i32 0, ptr %0, align 8, !tbaa !15
  br label %168

123:                                              ; preds = %123, %118
  %124 = load ptr, ptr %20, align 8, !tbaa !35
  %125 = tail call i32 @getc(ptr noundef %124) #32
  switch i32 %125, label %126 [
    i32 -1, label %121
    i32 47, label %165
    i32 42, label %123
  ]

126:                                              ; preds = %123
  %.lcssa2 = phi i32 [ %125, %123 ]
  %127 = load ptr, ptr %20, align 8, !tbaa !35
  %128 = tail call i32 @ungetc(i32 noundef %.lcssa2, ptr noundef %127) #32
  br label %140

129:                                              ; preds = %118
  %130 = load i64, ptr %18, align 8, !tbaa !22
  %131 = add nsw i64 %130, 1
  store i64 %131, ptr %18, align 8, !tbaa !22
  br label %140

132:                                              ; preds = %118
  %133 = load i64, ptr %18, align 8, !tbaa !22
  %134 = add nsw i64 %133, 1
  store i64 %134, ptr %18, align 8, !tbaa !22
  %135 = load ptr, ptr %20, align 8, !tbaa !35
  %136 = tail call i32 @getc(ptr noundef %135) #32
  switch i32 %136, label %137 [
    i32 -1, label %121
    i32 10, label %140
  ]

137:                                              ; preds = %132
  %138 = load ptr, ptr %20, align 8, !tbaa !35
  %139 = tail call i32 @ungetc(i32 noundef %136, ptr noundef %138) #32
  br label %140

140:                                              ; preds = %137, %132, %129, %126, %118
  br label %118

141:                                              ; preds = %141, %115
  %142 = load ptr, ptr %20, align 8, !tbaa !35
  %143 = tail call i32 @getc(ptr noundef %142) #32
  switch i32 %143, label %141 [
    i32 -1, label %144
    i32 10, label %153
    i32 13, label %146
  ]

144:                                              ; preds = %141
  store i32 1, ptr %2, align 4, !tbaa !367
  %145 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %145, ptr %19, align 8, !tbaa !21
  store i32 0, ptr %0, align 8, !tbaa !15
  br label %168

146:                                              ; preds = %141
  %147 = load ptr, ptr %20, align 8, !tbaa !35
  %148 = tail call i32 @getc(ptr noundef %147) #32
  switch i32 %148, label %150 [
    i32 -1, label %149
    i32 10, label %153
  ]

149:                                              ; preds = %146
  store i32 1, ptr %2, align 4, !tbaa !367
  br label %153

150:                                              ; preds = %146
  %151 = load ptr, ptr %20, align 8, !tbaa !35
  %152 = tail call i32 @ungetc(i32 noundef %148, ptr noundef %151) #32
  br label %153

153:                                              ; preds = %150, %149, %146, %141
  %154 = load i64, ptr %18, align 8, !tbaa !22
  %155 = add nsw i64 %154, 1
  store i64 %155, ptr %18, align 8, !tbaa !22
  br label %165

156:                                              ; preds = %115
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.674, i32 noundef 47) #30
  %157 = icmp eq i32 %117, -1
  br i1 %157, label %166, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %20, align 8, !tbaa !35
  %160 = tail call i32 @ungetc(i32 noundef %117, ptr noundef %159) #32
  br label %165

161:                                              ; preds = %75
  %162 = add i32 %24, -32
  %163 = icmp ult i32 %162, 95
  %164 = select i1 %163, ptr @.str.27.674, ptr @.str.28.676
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %0, ptr noundef nonnull %164, i32 noundef %24) #30
  br label %165

165:                                              ; preds = %161, %158, %153, %123, %106, %96, %92, %75, %75, %75, %75, %63
  br label %21

166:                                              ; preds = %156, %61, %21
  %167 = load i64, ptr %18, align 8, !tbaa !22
  store i64 %167, ptr %19, align 8, !tbaa !21
  store i32 0, ptr %0, align 8, !tbaa !15
  store i32 1, ptr %2, align 4, !tbaa !367
  br label %168

168:                                              ; preds = %166, %144, %121, %114, %113, %95, %90, %89, %85, %84, %83, %82, %81, %80, %79, %78, %77, %76, %74, %60, %50, %29, %28, %5
  %169 = phi i32 [ 0, %5 ], [ 0, %166 ], [ 1, %28 ], [ 1, %29 ], [ 1, %50 ], [ 1, %60 ], [ 1, %74 ], [ 1, %76 ], [ 1, %77 ], [ 1, %78 ], [ 1, %79 ], [ 1, %80 ], [ 1, %81 ], [ 1, %82 ], [ 1, %83 ], [ 1, %84 ], [ 1, %85 ], [ 1, %89 ], [ 0, %90 ], [ 1, %95 ], [ 1, %113 ], [ 1, %114 ], [ 0, %121 ], [ 0, %144 ]
  ret i32 %169
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCError(ptr noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #5 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !21
  call fastcc void @ReportError(ptr noundef %7, i64 noundef %9, ptr noundef %1, ptr noundef nonnull %3) #32
  call void @llvm.va_end(ptr nonnull %3)
  %10 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 7
  store i32 1, ptr %10, align 8, !tbaa !37
  br label %12

11:                                               ; preds = %2
  call fastcc void @ReportError(ptr noundef null, i64 noundef 0, ptr noundef %1, ptr noundef nonnull %3) #32
  call void @llvm.va_end(ptr nonnull %3)
  br label %12

12:                                               ; preds = %11, %5
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @TreeCCDebug(i64 noundef %0, ptr nocapture noundef readonly %1, ...) unnamed_addr #5 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.va_start(ptr nonnull %3)
  %4 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i64 noundef %0) #32
  %5 = load ptr, ptr @stdout, align 8, !tbaa !7
  %6 = call i32 @vfprintf(ptr noundef %5, ptr noundef %1, ptr noundef nonnull %3) #32
  %7 = load ptr, ptr @stdout, align 8, !tbaa !7
  %8 = call i32 @putc(i32 noundef 10, ptr noundef %7) #32
  call void @llvm.va_end(ptr nonnull %3)
  %9 = load ptr, ptr @stdout, align 8, !tbaa !7
  %10 = call i32 @fflush(ptr noundef %9) #32
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCValue(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !19
  %4 = icmp eq ptr %3, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = load i32, ptr %0, align 8, !tbaa !15
  tail call void (ptr, ptr, ...) @TreeCCAbort(ptr noundef nonnull %0, ptr nonnull poison, i32 noundef %6) #30
  unreachable

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %9 = icmp eq ptr %3, %8
  br i1 %9, label %10, label %18

10:                                               ; preds = %7
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #31
  %12 = add i64 %11, 1
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #29
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %10
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %0) #30
  unreachable

16:                                               ; preds = %10
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %3) #30
  br label %18

18:                                               ; preds = %16, %7
  %19 = phi ptr [ %13, %16 ], [ %3, %7 ]
  store ptr null, ptr %2, align 8, !tbaa !19
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCAddLiteralDefn(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %5 = load i16, ptr %4, align 8
  %6 = and i16 %5, 1
  %7 = icmp eq i16 %6, 0
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.TreeCCInput, ptr %10, i64 0, i32 5
  %12 = load i64, ptr %11, align 8, !tbaa !21
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %12, ptr noundef nonnull @.str.701, i32 noundef %2, ptr noundef %1) #30
  br label %13

13:                                               ; preds = %8, %3
  %14 = and i32 %2, 3
  %15 = icmp eq i32 %14, 3
  %16 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.TreeCCInput, ptr %17, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !36
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %17, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !21
  %22 = lshr i32 %2, 2
  %23 = and i32 %22, 1
  br i1 %15, label %24, label %34

24:                                               ; preds = %13
  %25 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !34
  tail call fastcc void @TreeCCStreamAddLiteral(ptr noundef %26, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #30
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !33
  %29 = load ptr, ptr %16, align 8, !tbaa !25
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %29, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %29, i64 0, i32 5
  %33 = load i64, ptr %32, align 8, !tbaa !21
  tail call fastcc void @TreeCCStreamAddLiteral(ptr noundef %28, ptr noundef %1, ptr noundef %31, i64 noundef %33, i32 noundef %23, i32 noundef 1) #30
  br label %43

34:                                               ; preds = %13
  %35 = and i32 %2, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 5
  %39 = load ptr, ptr %38, align 8, !tbaa !33
  tail call fastcc void @TreeCCStreamAddLiteral(ptr noundef %39, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #30
  br label %43

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !34
  tail call fastcc void @TreeCCStreamAddLiteral(ptr noundef %42, ptr noundef %1, ptr noundef %19, i64 noundef %21, i32 noundef %23, i32 noundef 0) #30
  br label %43

43:                                               ; preds = %40, %37, %24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCNodeCreate(ptr nocapture noundef %0, i64 noundef %1, ptr noundef %2, ptr noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 8
  %7 = load i16, ptr %6, align 8
  %8 = and i16 %7, 1
  %9 = icmp eq i16 %8, 0
  br i1 %9, label %13, label %10

10:                                               ; preds = %5
  %11 = icmp eq ptr %3, null
  %12 = select i1 %11, ptr @.str.1.741, ptr %3
  tail call void (i64, ptr, ...) @TreeCCDebug(i64 noundef %1, ptr noundef nonnull @.str.742, ptr noundef %2, ptr noundef nonnull %12, i32 noundef %4) #30
  br label %13

13:                                               ; preds = %10, %5
  %14 = icmp eq ptr %3, null
  br i1 %14, label %62, label %15

15:                                               ; preds = %13
  %16 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef nonnull %3) #32
  %17 = icmp eq ptr %16, null
  br i1 %17, label %18, label %61

18:                                               ; preds = %15
  %19 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #29
  %20 = icmp eq ptr %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %23 = load ptr, ptr %22, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %23) #30
  unreachable

24:                                               ; preds = %18
  %25 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %19, i8 0, i64 32, i1 false)
  store ptr %3, ptr %25, align 8, !tbaa !44
  %26 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 5
  store i32 1, ptr %26, align 8, !tbaa !40
  %27 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  %28 = load i32, ptr %27, align 8, !tbaa !29
  %29 = add nsw i32 %28, 1
  store i32 %29, ptr %27, align 8, !tbaa !29
  %30 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 6
  store i32 %28, ptr %30, align 4, !tbaa !184
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  %33 = getelementptr inbounds %struct.TreeCCInput, ptr %32, i64 0, i32 4
  %34 = load ptr, ptr %33, align 8, !tbaa !36
  %35 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 8
  store ptr %34, ptr %35, align 8, !tbaa !42
  %36 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 9
  store i64 %1, ptr %36, align 8, !tbaa !43
  %37 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 10
  %38 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %37, i8 0, i64 16, i1 false)
  %39 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 13
  %40 = load <2 x ptr>, ptr %38, align 8, !tbaa !7
  store <2 x ptr> %40, ptr %39, align 8, !tbaa !7
  %41 = load i8, ptr %3, align 1, !tbaa !11
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
  %51 = load i8, ptr %49, align 1, !tbaa !11
  %52 = icmp eq i8 %51, 0
  br i1 %52, label %53, label %43, !llvm.loop !161

53:                                               ; preds = %43
  %.lcssa1 = phi i32 [ %50, %43 ]
  %54 = and i32 %.lcssa1, 511
  %55 = zext i32 %54 to i64
  br label %56

56:                                               ; preds = %53, %24
  %57 = phi i64 [ 0, %24 ], [ %55, %53 ]
  %58 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %57
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = getelementptr inbounds %struct._tagTreeCCNode, ptr %19, i64 0, i32 12
  store ptr %59, ptr %60, align 8, !tbaa !199
  store ptr %19, ptr %58, align 8, !tbaa !7
  br label %62

61:                                               ; preds = %15
  tail call void @free(ptr noundef nonnull %3) #30
  br label %62

62:                                               ; preds = %61, %56, %13
  %63 = phi ptr [ %16, %61 ], [ %19, %56 ], [ null, %13 ]
  %64 = tail call fastcc ptr @TreeCCNodeFind(ptr noundef nonnull %0, ptr noundef %2) #32
  %65 = icmp eq ptr %64, null
  br i1 %65, label %98, label %66

66:                                               ; preds = %62
  %67 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 5
  %68 = load i32, ptr %67, align 8, !tbaa !40
  %69 = and i32 %68, 1
  %70 = icmp eq i32 %69, 0
  %71 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 8
  %72 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 9
  br i1 %70, label %73, label %81

73:                                               ; preds = %66
  %74 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %75 = load ptr, ptr %74, align 8, !tbaa !25
  %76 = getelementptr inbounds %struct.TreeCCInput, ptr %75, i64 0, i32 4
  %77 = load ptr, ptr %76, align 8, !tbaa !36
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %75, ptr noundef %77, i64 noundef %1, ptr noundef nonnull @.str.2.745, ptr noundef %2) #30
  %78 = load ptr, ptr %74, align 8, !tbaa !25
  %79 = load ptr, ptr %71, align 8, !tbaa !42
  %80 = load i64, ptr %72, align 8, !tbaa !43
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %78, ptr noundef %79, i64 noundef %80, ptr noundef nonnull @.str.42.875) #30
  tail call void @free(ptr noundef %2) #30
  br label %152

81:                                               ; preds = %66
  store i32 %4, ptr %67, align 8, !tbaa !40
  store ptr %63, ptr %64, align 8, !tbaa !45
  %82 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %83 = load ptr, ptr %82, align 8, !tbaa !25
  %84 = getelementptr inbounds %struct.TreeCCInput, ptr %83, i64 0, i32 4
  %85 = load ptr, ptr %84, align 8, !tbaa !36
  store ptr %85, ptr %71, align 8, !tbaa !42
  store i64 %1, ptr %72, align 8, !tbaa !43
  %86 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  %87 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 13
  %88 = load <2 x ptr>, ptr %86, align 8, !tbaa !7
  store <2 x ptr> %88, ptr %87, align 8, !tbaa !7
  %89 = getelementptr inbounds %struct._tagTreeCCNode, ptr %64, i64 0, i32 3
  store ptr null, ptr %89, align 8, !tbaa !372
  %90 = icmp eq ptr %63, null
  br i1 %90, label %152, label %91

91:                                               ; preds = %81
  %92 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 2
  %93 = load ptr, ptr %92, align 8, !tbaa !373
  %94 = icmp eq ptr %93, null
  %95 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 1
  %96 = getelementptr inbounds %struct._tagTreeCCNode, ptr %93, i64 0, i32 3
  %97 = select i1 %94, ptr %95, ptr %96
  store ptr %64, ptr %97, align 8, !tbaa !7
  store ptr %64, ptr %92, align 8, !tbaa !373
  br label %152

98:                                               ; preds = %62
  %99 = tail call noalias dereferenceable_or_null(112) ptr @malloc(i64 noundef 112) #29
  %100 = icmp eq ptr %99, null
  br i1 %100, label %101, label %104

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %103 = load ptr, ptr %102, align 8, !tbaa !25
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %103) #30
  unreachable

104:                                              ; preds = %98
  store ptr %63, ptr %99, align 8, !tbaa !45
  %105 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 1
  %106 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %105, i8 0, i64 16, i1 false)
  store ptr %2, ptr %106, align 8, !tbaa !44
  %107 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 5
  store i32 %4, ptr %107, align 8, !tbaa !40
  %108 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  %109 = load i32, ptr %108, align 8, !tbaa !29
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 8, !tbaa !29
  %111 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 6
  store i32 %109, ptr %111, align 4, !tbaa !184
  %112 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %113 = load ptr, ptr %112, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.TreeCCInput, ptr %113, i64 0, i32 4
  %115 = load ptr, ptr %114, align 8, !tbaa !36
  %116 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 8
  store ptr %115, ptr %116, align 8, !tbaa !42
  %117 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 9
  store i64 %1, ptr %117, align 8, !tbaa !43
  %118 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 10
  %119 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %118, i8 0, i64 16, i1 false)
  %120 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 13
  %121 = load <2 x ptr>, ptr %119, align 8, !tbaa !7
  store <2 x ptr> %121, ptr %120, align 8, !tbaa !7
  %122 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 3
  store ptr null, ptr %122, align 8, !tbaa !372
  %123 = icmp eq ptr %63, null
  br i1 %123, label %131, label %124

124:                                              ; preds = %104
  %125 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 2
  %126 = load ptr, ptr %125, align 8, !tbaa !373
  %127 = icmp eq ptr %126, null
  %128 = getelementptr inbounds %struct._tagTreeCCNode, ptr %63, i64 0, i32 1
  %129 = getelementptr inbounds %struct._tagTreeCCNode, ptr %126, i64 0, i32 3
  %130 = select i1 %127, ptr %128, ptr %129
  store ptr %99, ptr %130, align 8, !tbaa !7
  store ptr %99, ptr %125, align 8, !tbaa !373
  br label %131

131:                                              ; preds = %124, %104
  %132 = load i8, ptr %2, align 1, !tbaa !11
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
  %142 = load i8, ptr %140, align 1, !tbaa !11
  %143 = icmp eq i8 %142, 0
  br i1 %143, label %144, label %134, !llvm.loop !161

144:                                              ; preds = %134
  %.lcssa = phi i32 [ %141, %134 ]
  %145 = and i32 %.lcssa, 511
  %146 = zext i32 %145 to i64
  br label %147

147:                                              ; preds = %144, %131
  %148 = phi i64 [ 0, %131 ], [ %146, %144 ]
  %149 = getelementptr inbounds [512 x ptr], ptr %0, i64 0, i64 %148
  %150 = load ptr, ptr %149, align 8, !tbaa !7
  %151 = getelementptr inbounds %struct._tagTreeCCNode, ptr %99, i64 0, i32 12
  store ptr %150, ptr %151, align 8, !tbaa !199
  store ptr %99, ptr %149, align 8, !tbaa !7
  br label %152

152:                                              ; preds = %147, %91, %81, %73
  %153 = phi ptr [ %64, %73 ], [ %64, %91 ], [ %64, %81 ], [ %99, %147 ]
  ret ptr %153
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ParseTypeAndName(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #0 {
  %4 = load i32, ptr %0, align 8, !tbaa !15
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.12.844) #30
  br label %59

7:                                                ; preds = %20, %3
  %8 = phi ptr [ %22, %20 ], [ null, %3 ]
  %9 = phi ptr [ %21, %20 ], [ null, %3 ]
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %13

11:                                               ; preds = %7
  %12 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %0) #30
  br label %20

13:                                               ; preds = %7
  %14 = icmp eq ptr %8, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %13
  %16 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %0) #30
  br label %20

17:                                               ; preds = %13
  %18 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef nonnull %9, ptr noundef nonnull %8, i32 noundef 1, i32 noundef 1) #32
  %19 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %0) #30
  br label %20

20:                                               ; preds = %17, %15, %11
  %21 = phi ptr [ %18, %17 ], [ %9, %15 ], [ %12, %11 ]
  %22 = phi ptr [ %19, %17 ], [ %16, %15 ], [ %8, %11 ]
  %23 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %0) #30, !range !132
  %24 = load i32, ptr %0, align 8, !tbaa !15
  %25 = icmp eq i32 %24, 1
  br i1 %25, label %7, label %26, !llvm.loop !374

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
  %30 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %.lcssa4, ptr noundef nonnull %.lcssa3, i32 noundef 1, i32 noundef 1) #32
  br label %31

31:                                               ; preds = %29, %28, %26
  %32 = phi ptr [ %30, %29 ], [ %.lcssa4, %26 ], [ %.lcssa4, %28 ]
  %33 = phi ptr [ null, %29 ], [ null, %26 ], [ %.lcssa3, %28 ]
  br label %34

34:                                               ; preds = %50, %31
  %35 = phi ptr [ %32, %31 ], [ %51, %50 ]
  %36 = load i32, ptr %0, align 8, !tbaa !15
  switch i32 %36, label %52 [
    i32 13, label %44
    i32 14, label %37
    i32 9, label %38
  ]

37:                                               ; preds = %34
  br label %44

38:                                               ; preds = %34
  %39 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull @.str.26.896, i32 noundef 0, i32 noundef 0) #32
  %40 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %0) #30, !range !132
  %41 = load i32, ptr %0, align 8, !tbaa !15
  %42 = icmp eq i32 %41, 10
  br i1 %42, label %47, label %43

43:                                               ; preds = %38
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.27.865) #30
  br label %50

44:                                               ; preds = %37, %34
  %45 = phi ptr [ @.str.25.897, %37 ], [ @.str.24.898, %34 ]
  %46 = tail call fastcc ptr @AppendStrings(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %45, i32 noundef 1, i32 noundef 0) #32
  br label %47

47:                                               ; preds = %44, %38
  %48 = phi ptr [ %39, %38 ], [ %46, %44 ]
  %49 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %0) #30, !range !132
  br label %50

50:                                               ; preds = %47, %43
  %51 = phi ptr [ %48, %47 ], [ %39, %43 ]
  br label %34, !llvm.loop !375

52:                                               ; preds = %34
  %.lcssa1 = phi ptr [ %35, %34 ]
  %.lcssa = phi i32 [ %36, %34 ]
  %53 = icmp eq ptr %33, null
  br i1 %53, label %54, label %59

54:                                               ; preds = %52
  %55 = icmp eq i32 %.lcssa, 1
  br i1 %55, label %56, label %59

56:                                               ; preds = %54
  %57 = tail call fastcc ptr @TreeCCValue(ptr noundef nonnull %0) #30
  %58 = tail call fastcc i32 @TreeCCNextToken(ptr noundef nonnull %0) #30, !range !132
  br label %59

59:                                               ; preds = %56, %54, %52, %6
  %60 = phi ptr [ null, %6 ], [ %.lcssa1, %56 ], [ %.lcssa1, %54 ], [ %.lcssa1, %52 ]
  %61 = phi ptr [ null, %6 ], [ %57, %56 ], [ null, %54 ], [ %33, %52 ]
  store ptr %60, ptr %1, align 8, !tbaa !7
  store ptr %61, ptr %2, align 8, !tbaa !7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @IsDeclared(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2, i32 noundef %3) unnamed_addr #5 {
  %5 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 10
  %6 = load ptr, ptr %5, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %33, label %8

8:                                                ; preds = %29, %4
  %9 = phi ptr [ %31, %29 ], [ %6, %4 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !150
  %11 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %2) #31
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %29

13:                                               ; preds = %8
  %.lcssa = phi ptr [ %9, %8 ]
  %14 = icmp eq i32 %3, 0
  %15 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  br i1 %14, label %23, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !48
  %20 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 5
  %21 = load i64, ptr %20, align 8, !tbaa !49
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %16, ptr noundef %19, i64 noundef %21, ptr noundef nonnull @.str.11.768, ptr noundef %2) #30
  %22 = load ptr, ptr %15, align 8, !tbaa !25
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %22, ptr noundef nonnull @.str.42.875) #30
  br label %33

23:                                               ; preds = %13
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef %16, ptr noundef nonnull @.str.11.768, ptr noundef %2) #30
  %24 = load ptr, ptr %15, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 4
  %26 = load ptr, ptr %25, align 8, !tbaa !48
  %27 = getelementptr inbounds %struct._tagTreeCCField, ptr %.lcssa, i64 0, i32 5
  %28 = load i64, ptr %27, align 8, !tbaa !49
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %24, ptr noundef %26, i64 noundef %28, ptr noundef nonnull @.str.42.875) #30
  br label %33

29:                                               ; preds = %8
  %30 = getelementptr inbounds %struct._tagTreeCCField, ptr %9, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = icmp eq ptr %31, null
  br i1 %32, label %33, label %8, !llvm.loop !376

33:                                               ; preds = %29, %23, %17, %4
  %34 = phi i32 [ 1, %23 ], [ 1, %17 ], [ 0, %4 ], [ 0, %29 ]
  ret i32 %34
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @IsDeclaredInChildren(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct._tagTreeCCNode, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %18, label %11

7:                                                ; preds = %15
  %8 = getelementptr inbounds %struct._tagTreeCCNode, ptr %12, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11, !llvm.loop !377

11:                                               ; preds = %7, %3
  %12 = phi ptr [ %9, %7 ], [ %5, %3 ]
  %13 = tail call fastcc i32 @IsDeclared(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2, i32 noundef 1) #32, !range !132
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = tail call fastcc i32 @IsDeclaredInChildren(ptr noundef %0, ptr noundef nonnull %12, ptr noundef %2) #32, !range !132
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %7, label %18

18:                                               ; preds = %15, %11, %7, %3
  %19 = phi i32 [ 0, %3 ], [ 1, %11 ], [ 1, %15 ], [ 0, %7 ]
  ret i32 %19
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @ValidateSuffixes(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr noundef %3, i64 noundef %4) unnamed_addr #5 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %7 = trunc i64 %6 to i32
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 13
  %9 = load i32, ptr %8, align 4, !tbaa !39
  %10 = icmp ult i32 %9, 2
  br i1 %10, label %11, label %33

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct._tagTreeCCNode, ptr %2, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !40
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
  %22 = load i8, ptr %21, align 1, !tbaa !11
  %23 = icmp eq i8 %22, 42
  br i1 %23, label %24, label %30

24:                                               ; preds = %18
  %25 = add i64 %6, 4294967294
  %26 = and i64 %25, 4294967295
  %27 = getelementptr inbounds i8, ptr %1, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = icmp eq i8 %28, 32
  br i1 %29, label %33, label %30

30:                                               ; preds = %24, %18, %16
  %31 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 2
  %32 = load ptr, ptr %31, align 8, !tbaa !25
  tail call void (ptr, ptr, i64, ptr, ...) @TreeCCErrorOnLine(ptr noundef %32, ptr noundef %3, i64 noundef %4, ptr noundef nonnull @.str.43.895) #30
  br label %33

33:                                               ; preds = %30, %24, %11, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @TreeCCResolvePathname(ptr noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #0 {
  %3 = icmp eq ptr %0, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call fastcc ptr @TreeCCDupString(ptr noundef %1) #32
  br label %31

6:                                                ; preds = %2
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #31
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
  %16 = load i8, ptr %15, align 1, !tbaa !11
  switch i8 %16, label %9 [
    i8 47, label %19
    i8 92, label %19
  ], !llvm.loop !378

17:                                               ; preds = %9
  %18 = tail call fastcc ptr @TreeCCDupString(ptr noundef %1) #32
  br label %31

19:                                               ; preds = %13, %13
  %.lcssa1 = phi i64 [ %10, %13 ], [ %10, %13 ]
  %20 = and i64 %.lcssa1, 4294967295
  %21 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %22 = add nuw nsw i64 %20, 1
  %23 = add i64 %22, %21
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #29
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

27:                                               ; preds = %19
  %28 = tail call ptr @strncpy(ptr noundef nonnull %24, ptr noundef nonnull %0, i64 noundef %20) #30
  %29 = getelementptr inbounds i8, ptr %24, i64 %20
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %29, ptr noundef nonnull dereferenceable(1) %1) #30
  br label %31

31:                                               ; preds = %27, %17, %4
  %32 = phi ptr [ %18, %17 ], [ %24, %27 ], [ %5, %4 ]
  ret ptr %32
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc ptr @AppendStrings(ptr noundef %0, ptr nocapture noundef %1, ptr nocapture noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #0 {
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #31
  %7 = trunc i64 %6 to i32
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #31
  %9 = trunc i64 %8 to i32
  %10 = add nsw i32 %9, %7
  %11 = add i32 %10, 1
  %12 = add i32 %11, %3
  %13 = sext i32 %12 to i64
  %14 = tail call ptr @realloc(ptr noundef %1, i64 noundef %13) #37
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %5
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef %0) #30
  unreachable

17:                                               ; preds = %5
  %18 = icmp eq i32 %3, 0
  %19 = shl i64 %6, 32
  %20 = ashr exact i64 %19, 32
  %21 = getelementptr inbounds i8, ptr %14, i64 %20
  br i1 %18, label %24, label %22

22:                                               ; preds = %17
  store i8 32, ptr %21, align 1, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %21, i64 1
  br label %24

24:                                               ; preds = %22, %17
  %25 = phi ptr [ %23, %22 ], [ %21, %17 ]
  %26 = phi i32 [ %11, %22 ], [ %10, %17 ]
  %27 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %2) #30
  %28 = sext i32 %26 to i64
  %29 = getelementptr inbounds i8, ptr %14, i64 %28
  store i8 0, ptr %29, align 1, !tbaa !11
  %30 = icmp eq i32 %4, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %24
  tail call void @free(ptr noundef %2) #30
  br label %32

32:                                               ; preds = %31, %24
  ret ptr %14
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @TreeCCStreamAddLiteral(ptr noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, i32 noundef %4, i32 noundef %5) unnamed_addr #0 {
  %7 = icmp eq ptr %0, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = tail call noalias dereferenceable_or_null(40) ptr @malloc(i64 noundef 40) #29
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %8
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef null) #30
  unreachable

12:                                               ; preds = %8
  store ptr %1, ptr %9, align 8, !tbaa !196
  %13 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 1
  store ptr %2, ptr %13, align 8, !tbaa !212
  %14 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 2
  store i64 %3, ptr %14, align 8, !tbaa !211
  %15 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 3
  store i32 %4, ptr %15, align 8, !tbaa !210
  %16 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 4
  store i32 %5, ptr %16, align 4, !tbaa !195
  %17 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %9, i64 0, i32 5
  store ptr null, ptr %17, align 8, !tbaa !193
  %18 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 9
  %19 = load ptr, ptr %18, align 8, !tbaa !379
  %20 = icmp eq ptr %19, null
  %21 = getelementptr inbounds %struct._tagTreeCCStream, ptr %0, i64 0, i32 8
  %22 = getelementptr inbounds %struct._tagTreeCCStreamDefn, ptr %19, i64 0, i32 5
  %23 = select i1 %20, ptr %21, ptr %22
  store ptr %9, ptr %23, align 8, !tbaa !7
  store ptr %9, ptr %18, align 8, !tbaa !379
  br label %24

24:                                               ; preds = %12, %6
  ret void
}

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @TreeCCAbort(ptr noundef readonly %0, ptr nocapture readonly %1, ...) unnamed_addr #3 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #28
  call void @llvm.va_start(ptr nonnull %3)
  %4 = icmp eq ptr %0, null
  br i1 %4, label %10, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !36
  %8 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 5
  %9 = load i64, ptr %8, align 8, !tbaa !21
  br label %10

10:                                               ; preds = %5, %2
  %11 = phi ptr [ %7, %5 ], [ null, %2 ]
  %12 = phi i64 [ %9, %5 ], [ 0, %2 ]
  call fastcc void @ReportError(ptr noundef %11, i64 noundef %12, ptr noundef nonnull @.str.5.700, ptr noundef nonnull %3) #32
  call void @llvm.va_end(ptr nonnull %3)
  call void @exit(i32 noundef 1) #35
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @LiteralCodeDefn(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %4 = icmp ne i32 %1, 0
  %5 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  br label %6

6:                                                ; preds = %65, %2
  %7 = phi i32 [ %67, %65 ], [ 0, %2 ]
  br label %8

8:                                                ; preds = %63, %6
  %9 = phi i32 [ 0, %6 ], [ %64, %63 ]
  %10 = load ptr, ptr %3, align 8, !tbaa !35
  %11 = tail call i32 @getc(ptr noundef %10) #32
  %12 = icmp eq i32 %11, -1
  br i1 %12, label %13, label %16

13:                                               ; preds = %8
  %.lcssa6 = phi i32 [ %7, %8 ]
  %.lcssa1 = phi i32 [ %9, %8 ]
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %14, align 4, !tbaa !367
  %15 = icmp eq i32 %1, 0
  br i1 %15, label %68, label %72

16:                                               ; preds = %8
  %17 = icmp ne i32 %11, 37
  %18 = or i1 %4, %17
  br i1 %18, label %34, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %3, align 8, !tbaa !35
  %21 = tail call i32 @getc(ptr noundef %20) #32
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
  store i8 37, ptr %25, align 1, !tbaa !11
  %26 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %26, align 4, !tbaa !367
  br label %68

27:                                               ; preds = %19
  %28 = load ptr, ptr %3, align 8, !tbaa !35
  %29 = tail call i32 @ungetc(i32 noundef %21, ptr noundef %28) #32
  %30 = add nsw i32 %9, 1
  %31 = sext i32 %9 to i64
  %32 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %31
  store i8 37, ptr %32, align 1, !tbaa !11
  %33 = icmp sgt i32 %9, 1021
  br i1 %33, label %65, label %63

34:                                               ; preds = %16
  switch i32 %11, label %55 [
    i32 10, label %35
    i32 13, label %41
    i32 0, label %54
  ]

35:                                               ; preds = %34
  %36 = load i64, ptr %5, align 8, !tbaa !22
  %37 = add nsw i64 %36, 1
  store i64 %37, ptr %5, align 8, !tbaa !22
  %38 = add nsw i32 %9, 1
  %39 = sext i32 %9 to i64
  %40 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %39
  store i8 10, ptr %40, align 1, !tbaa !11
  br label %60

41:                                               ; preds = %34
  %42 = load i64, ptr %5, align 8, !tbaa !22
  %43 = add nsw i64 %42, 1
  store i64 %43, ptr %5, align 8, !tbaa !22
  %44 = add nsw i32 %9, 1
  %45 = sext i32 %9 to i64
  %46 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %45
  store i8 10, ptr %46, align 1, !tbaa !11
  %47 = load ptr, ptr %3, align 8, !tbaa !35
  %48 = tail call i32 @getc(ptr noundef %47) #32
  switch i32 %48, label %51 [
    i32 -1, label %49
    i32 10, label %60
  ]

49:                                               ; preds = %41
  %.lcssa9 = phi i32 [ %7, %41 ]
  %.lcssa5 = phi i32 [ %9, %41 ]
  %.lcssa = phi i32 [ %44, %41 ]
  %50 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %50, align 4, !tbaa !367
  br i1 %4, label %72, label %68

51:                                               ; preds = %41
  %52 = load ptr, ptr %3, align 8, !tbaa !35
  %53 = tail call i32 @ungetc(i32 noundef %48, ptr noundef %52) #32
  br label %60

54:                                               ; preds = %34
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #30
  br label %60

55:                                               ; preds = %34
  %56 = trunc i32 %11 to i8
  %57 = add nsw i32 %9, 1
  %58 = sext i32 %9 to i64
  %59 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %58
  store i8 %56, ptr %59, align 1, !tbaa !11
  br label %60

60:                                               ; preds = %55, %54, %51, %41, %35
  %61 = phi i32 [ %38, %35 ], [ %44, %51 ], [ %9, %54 ], [ %57, %55 ], [ %44, %41 ]
  %62 = icmp sgt i32 %61, 1022
  br i1 %62, label %65, label %63

63:                                               ; preds = %60, %27
  %64 = phi i32 [ %61, %60 ], [ %30, %27 ]
  br label %8

65:                                               ; preds = %60, %27
  %66 = phi i32 [ %30, %27 ], [ %61, %60 ]
  %67 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %66, i32 noundef %7) #32
  br label %6

68:                                               ; preds = %49, %22, %13
  %69 = phi i32 [ %.lcssa8, %22 ], [ %.lcssa6, %13 ], [ %.lcssa9, %49 ]
  %70 = phi i32 [ %.lcssa3, %22 ], [ %.lcssa1, %13 ], [ %.lcssa5, %49 ]
  %71 = phi i32 [ %23, %22 ], [ %.lcssa1, %13 ], [ %.lcssa, %49 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.6.678) #30
  br label %72

72:                                               ; preds = %68, %49, %19, %13
  %.lcssa7 = phi i32 [ %69, %68 ], [ %.lcssa9, %49 ], [ %7, %19 ], [ %.lcssa6, %13 ]
  %73 = phi i32 [ %.lcssa1, %13 ], [ %.lcssa, %49 ], [ %71, %68 ], [ %9, %19 ]
  %74 = icmp eq i32 %.lcssa7, 0
  br i1 %74, label %77, label %75

75:                                               ; preds = %72
  %76 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %73, i32 noundef %.lcssa7) #32
  br label %82

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %79 = sext i32 %73 to i64
  %80 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %79
  store i8 0, ptr %80, align 1, !tbaa !11
  %81 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %78, ptr %81, align 8, !tbaa !19
  br label %82

82:                                               ; preds = %77, %75
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @RecogIdentifier(ptr noundef %0, i32 noundef %1, ptr noundef %2) unnamed_addr #5 {
  %4 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %5

5:                                                ; preds = %32, %3
  %6 = phi i32 [ %1, %3 ], [ %19, %32 ]
  %7 = phi i32 [ 0, %3 ], [ %16, %32 ]
  %8 = phi i32 [ 0, %3 ], [ %17, %32 ]
  %9 = icmp slt i32 %7, 1023
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = trunc i32 %6 to i8
  %12 = add nsw i32 %7, 1
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %13
  store i8 %11, ptr %14, align 1, !tbaa !11
  br label %15

15:                                               ; preds = %10, %5
  %16 = phi i32 [ %12, %10 ], [ %7, %5 ]
  %17 = phi i32 [ %8, %10 ], [ 1, %5 ]
  %18 = load ptr, ptr %4, align 8, !tbaa !35
  %19 = tail call i32 @getc(ptr noundef %18) #32
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %.lcssa4 = phi i32 [ %16, %15 ]
  %.lcssa2 = phi i32 [ %17, %15 ]
  %22 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %22, align 4, !tbaa !367
  br label %36

23:                                               ; preds = %15
  %24 = and i32 %19, -33
  %25 = add i32 %24, -65
  %26 = icmp ult i32 %25, 26
  br i1 %26, label %32, label %27

27:                                               ; preds = %23
  %28 = add i32 %19, -48
  %29 = icmp ult i32 %28, 10
  %30 = icmp eq i32 %19, 95
  %31 = or i1 %30, %29
  br i1 %31, label %32, label %33

32:                                               ; preds = %27, %23
  br label %5

33:                                               ; preds = %27
  %.lcssa5 = phi i32 [ %16, %27 ]
  %.lcssa3 = phi i32 [ %17, %27 ]
  %.lcssa1 = phi i32 [ %19, %27 ]
  %34 = load ptr, ptr %4, align 8, !tbaa !35
  %35 = tail call i32 @ungetc(i32 noundef %.lcssa1, ptr noundef %34) #32
  br label %36

36:                                               ; preds = %33, %21
  %37 = phi i32 [ %.lcssa5, %33 ], [ %.lcssa4, %21 ]
  %38 = phi i32 [ %.lcssa3, %33 ], [ %.lcssa2, %21 ]
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.7.699, ptr noundef %2) #30
  br label %41

41:                                               ; preds = %40, %36
  %42 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %43 = sext i32 %37 to i64
  %44 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %43
  store i8 0, ptr %44, align 1, !tbaa !11
  %45 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %42, ptr %45, align 8, !tbaa !19
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @RecogString(ptr noundef %0, i32 noundef %1) unnamed_addr #0 {
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  br label %4

4:                                                ; preds = %24, %2
  %5 = phi i32 [ %25, %24 ], [ 0, %2 ]
  br label %6

6:                                                ; preds = %19, %4
  %7 = phi i64 [ %21, %19 ], [ 0, %4 ]
  br label %8

8:                                                ; preds = %18, %6
  %9 = load ptr, ptr %3, align 8, !tbaa !35
  %10 = tail call i32 @getc(ptr noundef %9) #32
  %11 = icmp eq i32 %10, %1
  br i1 %11, label %31, label %12

12:                                               ; preds = %8
  switch i32 %10, label %19 [
    i32 -1, label %13
    i32 13, label %15
    i32 10, label %15
    i32 0, label %18
  ]

13:                                               ; preds = %12
  %.lcssa8 = phi i32 [ %5, %12 ]
  %.lcssa4 = phi i64 [ %7, %12 ]
  %.lcssa2 = phi i32 [ %10, %12 ]
  %14 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %14, align 4, !tbaa !367
  br label %26

15:                                               ; preds = %12, %12
  %.lcssa9 = phi i32 [ %5, %12 ], [ %5, %12 ]
  %.lcssa5 = phi i64 [ %7, %12 ], [ %7, %12 ]
  %.lcssa3 = phi i32 [ %10, %12 ], [ %10, %12 ]
  %16 = load ptr, ptr %3, align 8, !tbaa !35
  %17 = tail call i32 @ungetc(i32 noundef %.lcssa3, ptr noundef %16) #32
  br label %26

18:                                               ; preds = %12
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #30
  br label %8

19:                                               ; preds = %12
  %.lcssa1 = phi i32 [ %10, %12 ]
  %20 = trunc i32 %.lcssa1 to i8
  %21 = add nuw nsw i64 %7, 1
  %22 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %7
  store i8 %20, ptr %22, align 1, !tbaa !11
  %23 = icmp eq i64 %21, 1023
  br i1 %23, label %24, label %6

24:                                               ; preds = %19
  %25 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef 1023, i32 noundef %5) #32
  br label %4

26:                                               ; preds = %15, %13
  %27 = phi i32 [ %.lcssa9, %15 ], [ %.lcssa8, %13 ]
  %28 = phi i64 [ %.lcssa5, %15 ], [ %.lcssa4, %13 ]
  %29 = phi i32 [ %.lcssa3, %15 ], [ %.lcssa2, %13 ]
  %30 = phi ptr [ @.str.30.677, %15 ], [ @.str.29.679, %13 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull %30) #30
  br label %31

31:                                               ; preds = %26, %8
  %.lcssa7 = phi i32 [ %27, %26 ], [ %5, %8 ]
  %.lcssa = phi i64 [ %28, %26 ], [ %7, %8 ]
  %32 = icmp eq i32 %.lcssa7, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %31
  %34 = trunc i64 %.lcssa to i32
  %35 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %34, i32 noundef %.lcssa7) #32
  br label %41

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %38 = and i64 %.lcssa, 4294967295
  %39 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %38
  store i8 0, ptr %39, align 1, !tbaa !11
  %40 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %37, ptr %40, align 8, !tbaa !19
  br label %41

41:                                               ; preds = %36, %33
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @LiteralCode(ptr noundef %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 3
  %3 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 6
  br label %4

4:                                                ; preds = %235, %1
  %5 = phi i32 [ 0, %1 ], [ %236, %235 ]
  %6 = phi i32 [ 0, %1 ], [ %237, %235 ]
  %7 = phi i64 [ 0, %1 ], [ %231, %235 ]
  br label %8

8:                                                ; preds = %202, %4
  %9 = phi i32 [ %94, %202 ], [ %5, %4 ]
  %10 = phi i32 [ %95, %202 ], [ %6, %4 ]
  br label %11

11:                                               ; preds = %222, %8
  %12 = load ptr, ptr %2, align 8, !tbaa !35
  %13 = tail call i32 @getc(ptr noundef %12) #32
  switch i32 %13, label %223 [
    i32 -1, label %242
    i32 125, label %14
    i32 123, label %21
    i32 39, label %26
    i32 34, label %26
    i32 47, label %86
    i32 10, label %205
    i32 13, label %211
    i32 0, label %222
  ]

14:                                               ; preds = %11
  %.lcssa22 = phi i32 [ %9, %11 ]
  %.lcssa12 = phi i32 [ %10, %11 ]
  %15 = icmp eq i64 %7, 0
  br i1 %15, label %247, label %16

16:                                               ; preds = %14
  %17 = add i64 %7, -1
  %18 = add nsw i32 %.lcssa22, 1
  %19 = sext i32 %.lcssa22 to i64
  %20 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %19
  store i8 125, ptr %20, align 1, !tbaa !11
  br label %228

21:                                               ; preds = %11
  %.lcssa23 = phi i32 [ %9, %11 ]
  %.lcssa13 = phi i32 [ %10, %11 ]
  %22 = add i64 %7, 1
  %23 = add nsw i32 %.lcssa23, 1
  %24 = sext i32 %.lcssa23 to i64
  %25 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %24
  store i8 123, ptr %25, align 1, !tbaa !11
  br label %228

26:                                               ; preds = %11, %11
  %.lcssa24 = phi i32 [ %9, %11 ], [ %9, %11 ]
  %.lcssa14 = phi i32 [ %10, %11 ], [ %10, %11 ]
  %.lcssa4 = phi i32 [ %13, %11 ], [ %13, %11 ]
  %27 = trunc i32 %.lcssa4 to i8
  %28 = add nsw i32 %.lcssa24, 1
  %29 = sext i32 %.lcssa24 to i64
  %30 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %29
  store i8 %27, ptr %30, align 1, !tbaa !11
  %31 = icmp sgt i32 %.lcssa24, 1021
  br i1 %31, label %32, label %34

32:                                               ; preds = %26
  %33 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %28, i32 noundef %.lcssa14) #32
  br label %34

34:                                               ; preds = %32, %26
  %35 = phi i32 [ 0, %32 ], [ %28, %26 ]
  %36 = phi i32 [ %33, %32 ], [ %.lcssa14, %26 ]
  br label %37

37:                                               ; preds = %75, %34
  %38 = phi i32 [ %35, %34 ], [ %76, %75 ]
  %39 = phi i32 [ %36, %34 ], [ %77, %75 ]
  %40 = load ptr, ptr %2, align 8, !tbaa !35
  %41 = tail call i32 @getc(ptr noundef %40) #32
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
  store i8 92, ptr %50, align 1, !tbaa !11
  %51 = icmp sgt i32 %38, 1021
  br i1 %51, label %52, label %54

52:                                               ; preds = %47
  %53 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %48, i32 noundef %39) #32
  br label %54

54:                                               ; preds = %52, %47
  %55 = phi i32 [ 0, %52 ], [ %48, %47 ]
  %56 = phi i32 [ %53, %52 ], [ %39, %47 ]
  %57 = load ptr, ptr %2, align 8, !tbaa !35
  %58 = tail call i32 @getc(ptr noundef %57) #32
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %242, label %60

60:                                               ; preds = %54, %45
  %61 = phi i32 [ %55, %54 ], [ %38, %45 ]
  %62 = phi i32 [ %56, %54 ], [ %39, %45 ]
  %63 = phi i32 [ %58, %54 ], [ %41, %45 ]
  switch i32 %63, label %67 [
    i32 13, label %64
    i32 10, label %64
  ]

64:                                               ; preds = %60, %60
  %.lcssa59 = phi i32 [ %61, %60 ], [ %61, %60 ]
  %.lcssa58 = phi i32 [ %62, %60 ], [ %62, %60 ]
  %.lcssa57 = phi i32 [ %63, %60 ], [ %63, %60 ]
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.30.677) #30
  %65 = load ptr, ptr %2, align 8, !tbaa !35
  %66 = tail call i32 @ungetc(i32 noundef %.lcssa57, ptr noundef %65) #32
  br label %80

67:                                               ; preds = %60
  %68 = trunc i32 %63 to i8
  %69 = add nsw i32 %61, 1
  %70 = sext i32 %61 to i64
  %71 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %70
  store i8 %68, ptr %71, align 1, !tbaa !11
  %72 = icmp sgt i32 %61, 1021
  br i1 %72, label %73, label %75

73:                                               ; preds = %67
  %74 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %69, i32 noundef %62) #32
  br label %75

75:                                               ; preds = %73, %67
  %76 = phi i32 [ 0, %73 ], [ %69, %67 ]
  %77 = phi i32 [ %74, %73 ], [ %62, %67 ]
  br label %37, !llvm.loop !380

78:                                               ; preds = %37
  %.lcssa55 = phi i32 [ %38, %37 ]
  %.lcssa53 = phi i32 [ %39, %37 ]
  %.lcssa51 = phi i32 [ %41, %37 ]
  %79 = icmp eq i32 %.lcssa51, -1
  br i1 %79, label %242, label %80

80:                                               ; preds = %78, %64
  %81 = phi i32 [ %.lcssa58, %64 ], [ %.lcssa53, %78 ]
  %82 = phi i32 [ %.lcssa59, %64 ], [ %.lcssa55, %78 ]
  %83 = add nsw i32 %82, 1
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %84
  store i8 %27, ptr %85, align 1, !tbaa !11
  br label %228

86:                                               ; preds = %11
  %.lcssa5 = phi i32 [ %13, %11 ]
  %87 = add nsw i32 %9, 1
  %88 = sext i32 %9 to i64
  %89 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %88
  store i8 47, ptr %89, align 1, !tbaa !11
  %90 = icmp sgt i32 %9, 1021
  br i1 %90, label %91, label %93

91:                                               ; preds = %86
  %92 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %87, i32 noundef %10) #32
  br label %93

93:                                               ; preds = %91, %86
  %94 = phi i32 [ 0, %91 ], [ %87, %86 ]
  %95 = phi i32 [ %92, %91 ], [ %10, %86 ]
  %96 = load ptr, ptr %2, align 8, !tbaa !35
  %97 = tail call i32 @getc(ptr noundef %96) #32
  switch i32 %97, label %202 [
    i32 -1, label %242
    i32 47, label %98
    i32 42, label %132
  ]

98:                                               ; preds = %93
  %.lcssa32 = phi i32 [ %94, %93 ]
  %.lcssa30 = phi i32 [ %95, %93 ]
  %.lcssa27 = phi i32 [ %9, %93 ]
  %.lcssa17 = phi i32 [ %10, %93 ]
  %.lcssa5.lcssa = phi i32 [ %.lcssa5, %93 ]
  %99 = add nsw i32 %.lcssa32, 1
  %100 = sext i32 %.lcssa32 to i64
  %101 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %100
  store i8 47, ptr %101, align 1, !tbaa !11
  %102 = icmp sgt i32 %.lcssa32, 1021
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %99, i32 noundef %.lcssa30) #32
  br label %105

105:                                              ; preds = %103, %98
  %106 = phi i32 [ 0, %103 ], [ %99, %98 ]
  %107 = phi i32 [ %104, %103 ], [ %.lcssa30, %98 ]
  br label %108

108:                                              ; preds = %125, %105
  %109 = phi i32 [ 0, %125 ], [ %106, %105 ]
  %110 = phi i32 [ %126, %125 ], [ %107, %105 ]
  %111 = sext i32 %109 to i64
  %112 = tail call i32 @llvm.smax.i32(i32 %109, i32 1022)
  %113 = add nuw nsw i32 %112, 1
  br label %114

114:                                              ; preds = %119, %108
  %115 = phi i64 [ %121, %119 ], [ %111, %108 ]
  br label %116

116:                                              ; preds = %127, %114
  %117 = load ptr, ptr %2, align 8, !tbaa !35
  %118 = tail call i32 @getc(ptr noundef %117) #32
  switch i32 %118, label %119 [
    i32 0, label %127
    i32 -1, label %240
    i32 10, label %128
    i32 13, label %128
  ]

119:                                              ; preds = %116
  %.lcssa43 = phi i32 [ %118, %116 ]
  %120 = trunc i32 %.lcssa43 to i8
  %121 = add nsw i64 %115, 1
  %122 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %115
  store i8 %120, ptr %122, align 1, !tbaa !11
  %123 = trunc i64 %121 to i32
  %124 = icmp eq i32 %113, %123
  br i1 %124, label %125, label %114, !llvm.loop !381

125:                                              ; preds = %119
  %126 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %113, i32 noundef %110) #32
  br label %108, !llvm.loop !381

127:                                              ; preds = %116
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #30
  br label %116, !llvm.loop !381

128:                                              ; preds = %116, %116
  %.lcssa50 = phi i32 [ %110, %116 ], [ %110, %116 ]
  %.lcssa47 = phi i64 [ %115, %116 ], [ %115, %116 ]
  %.lcssa45 = phi i32 [ %118, %116 ], [ %118, %116 ]
  %129 = trunc i64 %.lcssa47 to i32
  %130 = load ptr, ptr %2, align 8, !tbaa !35
  %131 = tail call i32 @ungetc(i32 noundef %.lcssa45, ptr noundef %130) #32
  br label %228

132:                                              ; preds = %93
  %.lcssa33 = phi i32 [ %94, %93 ]
  %.lcssa31 = phi i32 [ %95, %93 ]
  %.lcssa28 = phi i32 [ %9, %93 ]
  %.lcssa18 = phi i32 [ %10, %93 ]
  %.lcssa5.lcssa8 = phi i32 [ %.lcssa5, %93 ]
  %133 = add nsw i32 %.lcssa33, 1
  %134 = sext i32 %.lcssa33 to i64
  %135 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %134
  store i8 42, ptr %135, align 1, !tbaa !11
  %136 = icmp sgt i32 %.lcssa33, 1021
  br i1 %136, label %137, label %139

137:                                              ; preds = %132
  %138 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %133, i32 noundef %.lcssa31) #32
  br label %139

139:                                              ; preds = %137, %132
  %140 = phi i32 [ 0, %137 ], [ %133, %132 ]
  %141 = phi i32 [ %138, %137 ], [ %.lcssa31, %132 ]
  br label %142

142:                                              ; preds = %199, %139
  %143 = phi i32 [ %140, %139 ], [ %200, %199 ]
  %144 = phi i32 [ %141, %139 ], [ %201, %199 ]
  %145 = sext i32 %143 to i64
  %146 = tail call i32 @llvm.smax.i32(i32 %143, i32 1022)
  %147 = add nuw nsw i32 %146, 1
  br label %148

148:                                              ; preds = %190, %142
  %149 = phi i64 [ %193, %190 ], [ %145, %142 ]
  %150 = load ptr, ptr %2, align 8, !tbaa !35
  %151 = tail call i32 @getc(ptr noundef %150) #32
  switch i32 %151, label %190 [
    i32 -1, label %238
    i32 42, label %152
    i32 10, label %173
    i32 13, label %176
  ]

152:                                              ; preds = %148
  %.lcssa35 = phi i64 [ %149, %148 ]
  %153 = trunc i64 %.lcssa35 to i32
  %154 = add nsw i32 %153, 1
  %155 = shl i64 %.lcssa35, 32
  %156 = ashr exact i64 %155, 32
  %157 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %156
  store i8 42, ptr %157, align 1, !tbaa !11
  %158 = icmp sgt i32 %153, 1021
  br i1 %158, label %159, label %161

159:                                              ; preds = %152
  %160 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %154, i32 noundef %144) #32
  br label %161

161:                                              ; preds = %159, %152
  %162 = phi i32 [ 0, %159 ], [ %154, %152 ]
  %163 = phi i32 [ %160, %159 ], [ %144, %152 ]
  %164 = load ptr, ptr %2, align 8, !tbaa !35
  %165 = tail call i32 @getc(ptr noundef %164) #32
  switch i32 %165, label %170 [
    i32 47, label %166
    i32 -1, label %242
  ]

166:                                              ; preds = %161
  %.lcssa42 = phi i32 [ %162, %161 ]
  %.lcssa41 = phi i32 [ %163, %161 ]
  %167 = add nsw i32 %.lcssa42, 1
  %168 = sext i32 %.lcssa42 to i64
  %169 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %168
  store i8 47, ptr %169, align 1, !tbaa !11
  br label %228

170:                                              ; preds = %161
  %171 = load ptr, ptr %2, align 8, !tbaa !35
  %172 = tail call i32 @ungetc(i32 noundef %165, ptr noundef %171) #32
  br label %199

173:                                              ; preds = %148
  %174 = load i64, ptr %3, align 8, !tbaa !22
  %175 = add nsw i64 %174, 1
  store i64 %175, ptr %3, align 8, !tbaa !22
  br label %190

176:                                              ; preds = %148
  %177 = load i64, ptr %3, align 8, !tbaa !22
  %178 = add nsw i64 %177, 1
  store i64 %178, ptr %3, align 8, !tbaa !22
  %179 = load ptr, ptr %2, align 8, !tbaa !35
  %180 = tail call i32 @getc(ptr noundef %179) #32
  switch i32 %180, label %187 [
    i32 -1, label %181
    i32 10, label %190
  ]

181:                                              ; preds = %176
  %.lcssa39 = phi i32 [ %144, %176 ]
  %.lcssa36 = phi i64 [ %149, %176 ]
  %.lcssa28.lcssa29 = phi i32 [ %.lcssa28, %176 ]
  %.lcssa18.lcssa19 = phi i32 [ %.lcssa18, %176 ]
  %.lcssa5.lcssa8.lcssa9 = phi i32 [ %.lcssa5.lcssa8, %176 ]
  %182 = trunc i64 %.lcssa36 to i32
  %183 = add nsw i32 %182, 1
  %184 = shl i64 %.lcssa36, 32
  %185 = ashr exact i64 %184, 32
  %186 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %185
  store i8 10, ptr %186, align 1, !tbaa !11
  br label %242

187:                                              ; preds = %176
  %188 = load ptr, ptr %2, align 8, !tbaa !35
  %189 = tail call i32 @ungetc(i32 noundef %180, ptr noundef %188) #32
  br label %190

190:                                              ; preds = %187, %176, %173, %148
  %191 = phi i32 [ 10, %173 ], [ %151, %148 ], [ %180, %176 ], [ 10, %187 ]
  %192 = trunc i32 %191 to i8
  %193 = add nsw i64 %149, 1
  %194 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %149
  store i8 %192, ptr %194, align 1, !tbaa !11
  %195 = trunc i64 %193 to i32
  %196 = icmp eq i32 %147, %195
  br i1 %196, label %197, label %148

197:                                              ; preds = %190
  %198 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %147, i32 noundef %144) #32
  br label %199

199:                                              ; preds = %197, %170
  %200 = phi i32 [ 0, %197 ], [ %162, %170 ]
  %201 = phi i32 [ %198, %197 ], [ %163, %170 ]
  br label %142

202:                                              ; preds = %93
  %203 = load ptr, ptr %2, align 8, !tbaa !35
  %204 = tail call i32 @ungetc(i32 noundef %97, ptr noundef %203) #32
  br label %8

205:                                              ; preds = %11
  %.lcssa25 = phi i32 [ %9, %11 ]
  %.lcssa15 = phi i32 [ %10, %11 ]
  %206 = load i64, ptr %3, align 8, !tbaa !22
  %207 = add nsw i64 %206, 1
  store i64 %207, ptr %3, align 8, !tbaa !22
  %208 = add nsw i32 %.lcssa25, 1
  %209 = sext i32 %.lcssa25 to i64
  %210 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %209
  store i8 10, ptr %210, align 1, !tbaa !11
  br label %228

211:                                              ; preds = %11
  %.lcssa26 = phi i32 [ %9, %11 ]
  %.lcssa16 = phi i32 [ %10, %11 ]
  %.lcssa7 = phi i32 [ %13, %11 ]
  %212 = load i64, ptr %3, align 8, !tbaa !22
  %213 = add nsw i64 %212, 1
  store i64 %213, ptr %3, align 8, !tbaa !22
  %214 = add nsw i32 %.lcssa26, 1
  %215 = sext i32 %.lcssa26 to i64
  %216 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %215
  store i8 10, ptr %216, align 1, !tbaa !11
  %217 = load ptr, ptr %2, align 8, !tbaa !35
  %218 = tail call i32 @getc(ptr noundef %217) #32
  switch i32 %218, label %219 [
    i32 -1, label %242
    i32 10, label %228
  ]

219:                                              ; preds = %211
  %220 = load ptr, ptr %2, align 8, !tbaa !35
  %221 = tail call i32 @ungetc(i32 noundef %218, ptr noundef %220) #32
  br label %228

222:                                              ; preds = %11
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull @.str.28.676, i32 noundef 0) #30
  br label %11

223:                                              ; preds = %11
  %.lcssa20 = phi i32 [ %9, %11 ]
  %.lcssa10 = phi i32 [ %10, %11 ]
  %.lcssa = phi i32 [ %13, %11 ]
  %224 = trunc i32 %.lcssa to i8
  %225 = add nsw i32 %.lcssa20, 1
  %226 = sext i32 %.lcssa20 to i64
  %227 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %226
  store i8 %224, ptr %227, align 1, !tbaa !11
  br label %228

228:                                              ; preds = %223, %219, %211, %205, %166, %128, %80, %21, %16
  %229 = phi i32 [ %18, %16 ], [ %23, %21 ], [ %83, %80 ], [ %129, %128 ], [ %167, %166 ], [ %208, %205 ], [ %214, %219 ], [ %225, %223 ], [ %214, %211 ]
  %230 = phi i32 [ %.lcssa12, %16 ], [ %.lcssa13, %21 ], [ %81, %80 ], [ %.lcssa50, %128 ], [ %.lcssa41, %166 ], [ %.lcssa15, %205 ], [ %.lcssa16, %219 ], [ %.lcssa10, %223 ], [ %.lcssa16, %211 ]
  %231 = phi i64 [ %17, %16 ], [ %22, %21 ], [ %7, %80 ], [ %7, %128 ], [ %7, %166 ], [ %7, %205 ], [ %7, %219 ], [ %7, %223 ], [ %7, %211 ]
  %232 = icmp sgt i32 %229, 1022
  br i1 %232, label %233, label %235

233:                                              ; preds = %228
  %234 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %229, i32 noundef %230) #32
  br label %235

235:                                              ; preds = %233, %228
  %236 = phi i32 [ 0, %233 ], [ %229, %228 ]
  %237 = phi i32 [ %234, %233 ], [ %230, %228 ]
  br label %4

238:                                              ; preds = %148
  %.lcssa38 = phi i32 [ %144, %148 ]
  %.lcssa34 = phi i64 [ %149, %148 ]
  %.lcssa28.lcssa = phi i32 [ %.lcssa28, %148 ]
  %.lcssa18.lcssa = phi i32 [ %.lcssa18, %148 ]
  %.lcssa5.lcssa8.lcssa = phi i32 [ %.lcssa5.lcssa8, %148 ]
  %239 = trunc i64 %.lcssa34 to i32
  br label %242

240:                                              ; preds = %116
  %.lcssa49 = phi i32 [ %110, %116 ]
  %.lcssa46 = phi i64 [ %115, %116 ]
  %.lcssa27.lcssa = phi i32 [ %.lcssa27, %116 ]
  %.lcssa17.lcssa = phi i32 [ %.lcssa17, %116 ]
  %.lcssa5.lcssa.lcssa = phi i32 [ %.lcssa5.lcssa, %116 ]
  %241 = trunc i64 %.lcssa46 to i32
  br label %242

242:                                              ; preds = %240, %238, %211, %181, %161, %93, %78, %54, %11
  %243 = phi ptr [ @.str.6.678, %181 ], [ @.str.6.678, %238 ], [ @.str.6.678, %240 ], [ @.str.6.678, %11 ], [ @.str.29.679, %54 ], [ @.str.6.678, %161 ], [ @.str.6.678, %93 ], [ @.str.6.678, %211 ], [ @.str.29.679, %78 ]
  %244 = phi i32 [ %183, %181 ], [ %239, %238 ], [ %241, %240 ], [ %9, %11 ], [ %55, %54 ], [ %162, %161 ], [ %94, %93 ], [ %214, %211 ], [ %.lcssa55, %78 ]
  %245 = phi i32 [ %.lcssa39, %181 ], [ %.lcssa38, %238 ], [ %.lcssa49, %240 ], [ %10, %11 ], [ %56, %54 ], [ %163, %161 ], [ %95, %93 ], [ %.lcssa16, %211 ], [ %.lcssa53, %78 ]
  %246 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 8
  store i32 1, ptr %246, align 4, !tbaa !367
  tail call void (ptr, ptr, ...) @TreeCCError(ptr noundef nonnull %0, ptr noundef nonnull %243) #30
  br label %247

247:                                              ; preds = %242, %14
  %248 = phi i32 [ %244, %242 ], [ %.lcssa22, %14 ]
  %249 = phi i32 [ %245, %242 ], [ %.lcssa12, %14 ]
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %253, label %251

251:                                              ; preds = %247
  %252 = tail call fastcc i32 @FlushBuffer(ptr noundef nonnull %0, i32 noundef %248, i32 noundef %249) #32
  br label %258

253:                                              ; preds = %247
  %254 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %255 = sext i32 %248 to i64
  %256 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11, i64 %255
  store i8 0, ptr %256, align 1, !tbaa !11
  %257 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  store ptr %254, ptr %257, align 8, !tbaa !19
  br label %258

258:                                              ; preds = %253, %251
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @FlushBuffer(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp eq i32 %1, 0
  br i1 %4, label %22, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !19
  %8 = add nsw i32 %2, %1
  %9 = add nsw i32 %8, 1
  %10 = sext i32 %9 to i64
  %11 = tail call ptr @realloc(ptr noundef %7, i64 noundef %10) #37
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %14

13:                                               ; preds = %5
  tail call fastcc void @TreeCCOutOfMemory(ptr noundef nonnull %0) #30
  unreachable

14:                                               ; preds = %5
  store ptr %11, ptr %6, align 8, !tbaa !19
  %15 = sext i32 %2 to i64
  %16 = getelementptr inbounds i8, ptr %11, i64 %15
  %17 = getelementptr inbounds %struct.TreeCCInput, ptr %0, i64 0, i32 11
  %18 = sext i32 %1 to i64
  %19 = tail call ptr @strncpy(ptr noundef nonnull %16, ptr noundef nonnull %17, i64 noundef %18) #30
  %20 = sext i32 %8 to i64
  %21 = getelementptr inbounds i8, ptr %11, i64 %20
  store i8 0, ptr %21, align 1, !tbaa !11
  br label %22

22:                                               ; preds = %14, %3
  %23 = phi i32 [ %8, %14 ], [ %2, %3 ]
  ret i32 %23
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #7

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
define internal i32 @PrefixOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #25 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 9
  store ptr %1, ptr %6, align 8, !tbaa !27
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 4, %3 ]
  ret i32 %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal i32 @StateTypeOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #25 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 10
  store ptr %1, ptr %6, align 8, !tbaa !28
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
  %6 = load i8, ptr %1, align 1, !tbaa !11
  %7 = icmp ne i8 %6, 0
  %8 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 11
  %9 = select i1 %7, ptr %1, ptr null
  %10 = zext i1 %7 to i32
  store ptr %9, ptr %8, align 8, !tbaa !100
  br label %11

11:                                               ; preds = %5, %3
  %12 = phi i32 [ 4, %3 ], [ %10, %5 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @BaseOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #26 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !11
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %25

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %16, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %5 ]
  %12 = phi i8 [ %18, %9 ], [ %6, %5 ]
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %10, 10
  %15 = add i32 %14, -48
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %9, label %21, !llvm.loop !382

21:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %16, %9 ]
  %.lcssa = phi i8 [ %18, %9 ]
  %22 = icmp eq i8 %.lcssa, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 12
  store i32 %.lcssa1, ptr %24, align 8, !tbaa !29
  br label %25

25:                                               ; preds = %23, %21, %5, %3
  %26 = phi i32 [ 4, %3 ], [ 3, %5 ], [ 0, %23 ], [ 3, %21 ]
  ret i32 %26
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @LangOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #27 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %3
  %6 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.32.827) #31
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %44, label %8

8:                                                ; preds = %5
  %9 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(2) @.str.33.828) #31
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %44, label %11

11:                                               ; preds = %8
  %12 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.34.829) #31
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %44, label %14

14:                                               ; preds = %11
  %15 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.35.830) #31
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %44, label %17

17:                                               ; preds = %14
  %18 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.36.831) #31
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %44, label %20

20:                                               ; preds = %17
  %21 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.37.832) #31
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %44, label %23

23:                                               ; preds = %20
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.38.833) #31
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %44, label %26

26:                                               ; preds = %23
  %27 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(3) @.str.39.834) #31
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %44, label %29

29:                                               ; preds = %26
  %30 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(7) @.str.40.835) #31
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %29
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.41.836) #31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %32
  %36 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(5) @.str.42.837) #31
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %44, label %38

38:                                               ; preds = %35
  %39 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.43.838) #31
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38
  %42 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(4) @.str.44.839) #31
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
define internal i32 @BlockSizeOption(ptr nocapture noundef writeonly %0, ptr noundef readonly %1, i32 %2) #26 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %25, label %5

5:                                                ; preds = %3
  %6 = load i8, ptr %1, align 1, !tbaa !11
  %7 = add i8 %6, -48
  %8 = icmp ult i8 %7, 10
  br i1 %8, label %9, label %25

9:                                                ; preds = %9, %5
  %10 = phi i32 [ %16, %9 ], [ 0, %5 ]
  %11 = phi ptr [ %17, %9 ], [ %1, %5 ]
  %12 = phi i8 [ %18, %9 ], [ %6, %5 ]
  %13 = zext i8 %12 to i32
  %14 = mul nsw i32 %10, 10
  %15 = add i32 %14, -48
  %16 = add i32 %15, %13
  %17 = getelementptr inbounds i8, ptr %11, i64 1
  %18 = load i8, ptr %17, align 1, !tbaa !11
  %19 = add i8 %18, -48
  %20 = icmp ult i8 %19, 10
  br i1 %20, label %9, label %21, !llvm.loop !383

21:                                               ; preds = %9
  %.lcssa1 = phi i32 [ %16, %9 ]
  %.lcssa = phi i8 [ %18, %9 ]
  %22 = icmp eq i8 %.lcssa, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 14
  store i32 %.lcssa1, ptr %24, align 8, !tbaa !225
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
define internal i32 @BaseTypeOption(ptr nocapture noundef writeonly %0, ptr noundef %1, i32 %2) #25 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct._tagTreeCCContext, ptr %0, i64 0, i32 16
  store ptr %1, ptr %6, align 8, !tbaa !240
  br label %7

7:                                                ; preds = %5, %3
  %8 = phi i32 [ 1, %5 ], [ 4, %3 ]
  ret i32 %8
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #17

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #17

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #17 = { nofree nounwind }
attributes #18 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nocallback nofree nosync nounwind willreturn }
attributes #23 = { mustprogress nounwind optsize willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { nounwind }
attributes #29 = { nounwind optsize allocsize(0) }
attributes #30 = { nounwind optsize }
attributes #31 = { nounwind optsize willreturn memory(read) }
attributes #32 = { optsize }
attributes #33 = { nounwind optsize allocsize(0,1) }
attributes #34 = { cold optsize }
attributes #35 = { noreturn nounwind optsize }
attributes #36 = { cold }
attributes #37 = { nounwind optsize allocsize(1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !9, i64 0}
!16 = !{!"", !9, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !17, i64 40, !17, i64 48, !18, i64 56, !18, i64 60, !18, i64 64, !18, i64 68, !9, i64 72}
!17 = !{!"long", !9, i64 0}
!18 = !{!"int", !9, i64 0}
!19 = !{!16, !8, i64 8}
!20 = !{!16, !8, i64 16}
!21 = !{!16, !17, i64 40}
!22 = !{!16, !17, i64 48}
!23 = !{!18, !18, i64 0}
!24 = distinct !{!24, !13}
!25 = !{!26, !8, i64 8192}
!26 = !{!"_tagTreeCCContext", !9, i64 0, !9, i64 4096, !8, i64 8192, !8, i64 8200, !8, i64 8208, !8, i64 8216, !8, i64 8224, !8, i64 8232, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8240, !18, i64 8241, !18, i64 8241, !18, i64 8241, !18, i64 8241, !18, i64 8241, !8, i64 8248, !8, i64 8256, !8, i64 8264, !18, i64 8272, !18, i64 8276, !18, i64 8280, !8, i64 8288, !8, i64 8296}
!27 = !{!26, !8, i64 8248}
!28 = !{!26, !8, i64 8256}
!29 = !{!26, !18, i64 8272}
!30 = !{!26, !8, i64 8288}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = !{!26, !8, i64 8216}
!34 = !{!26, !8, i64 8208}
!35 = !{!16, !8, i64 24}
!36 = !{!16, !8, i64 32}
!37 = !{!16, !18, i64 56}
!38 = distinct !{!38, !13}
!39 = !{!26, !18, i64 8276}
!40 = !{!41, !18, i64 40}
!41 = !{!"_tagTreeCCNode", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !18, i64 40, !18, i64 44, !18, i64 48, !8, i64 56, !17, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!42 = !{!41, !8, i64 56}
!43 = !{!41, !17, i64 64}
!44 = !{!41, !8, i64 32}
!45 = !{!41, !8, i64 0}
!46 = !{!47, !8, i64 8}
!47 = !{!"_tagTreeCCField", !8, i64 0, !8, i64 8, !8, i64 16, !18, i64 24, !8, i64 32, !17, i64 40, !8, i64 48}
!48 = !{!47, !8, i64 32}
!49 = !{!47, !17, i64 40}
!50 = distinct !{!50, !13}
!51 = distinct !{!51, !13}
!52 = distinct !{!52, !13}
!53 = !{!54, !18, i64 40}
!54 = !{!"_tagTreeCCOperation", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !18, i64 40, !18, i64 44, !8, i64 48, !17, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !18, i64 96, !8, i64 104, !8, i64 112}
!55 = !{!54, !18, i64 96}
!56 = !{!54, !18, i64 44}
!57 = distinct !{!57, !13}
!58 = distinct !{!58, !13}
!59 = distinct !{!59, !13}
!60 = !{!54, !8, i64 72}
!61 = !{!62, !8, i64 64}
!62 = !{!"_tagTreeCCOperationCase", !8, i64 0, !8, i64 8, !8, i64 16, !18, i64 24, !8, i64 32, !17, i64 40, !8, i64 48, !17, i64 56, !8, i64 64, !8, i64 72}
!63 = distinct !{!63, !13}
!64 = !{!54, !8, i64 80}
!65 = !{!54, !8, i64 48}
!66 = !{!54, !17, i64 56}
!67 = !{!54, !8, i64 0}
!68 = !{!62, !8, i64 0}
!69 = !{!70, !8, i64 0}
!70 = !{!"_tagTreeCCTrigger", !8, i64 0, !8, i64 8}
!71 = !{!62, !8, i64 32}
!72 = !{!62, !17, i64 40}
!73 = distinct !{!73, !13}
!74 = !{!75, !18, i64 16}
!75 = !{!"_tagTreeCCParam", !8, i64 0, !8, i64 8, !18, i64 16, !18, i64 20, !8, i64 24}
!76 = !{!75, !8, i64 8}
!77 = distinct !{!77, !13}
!78 = distinct !{!78, !13}
!79 = !{!75, !18, i64 20}
!80 = distinct !{!80, !13}
!81 = distinct !{!81, !13}
!82 = distinct !{!82, !13}
!83 = !{!54, !8, i64 88}
!84 = !{!54, !8, i64 32}
!85 = distinct !{!85, !13}
!86 = distinct !{!86, !13}
!87 = distinct !{!87, !13}
!88 = !{!89, !8, i64 16}
!89 = !{!"_tagTreeCCStream", !8, i64 0, !8, i64 8, !8, i64 16, !17, i64 24, !8, i64 32, !8, i64 40, !18, i64 48, !18, i64 52, !18, i64 52, !18, i64 52, !18, i64 52, !18, i64 52, !8, i64 56, !8, i64 64, !8, i64 72}
!90 = distinct !{!90, !13}
!91 = !{!26, !8, i64 8224}
!92 = !{!54, !8, i64 104}
!93 = !{!54, !8, i64 16}
!94 = !{!75, !8, i64 0}
!95 = distinct !{!95, !13}
!96 = distinct !{!96, !13}
!97 = distinct !{!97, !13}
!98 = !{!26, !8, i64 8232}
!99 = distinct !{!99, !13}
!100 = !{!26, !8, i64 8264}
!101 = distinct !{!101, !13}
!102 = !{!54, !8, i64 8}
!103 = distinct !{!103, !13}
!104 = distinct !{!104, !13}
!105 = distinct !{!105, !13}
!106 = distinct !{!106, !13}
!107 = distinct !{!107, !13}
!108 = distinct !{!108, !13}
!109 = distinct !{!109, !13}
!110 = distinct !{!110, !13}
!111 = distinct !{!111, !13}
!112 = distinct !{!112, !13}
!113 = !{!89, !8, i64 32}
!114 = !{!89, !8, i64 8}
!115 = !{!89, !8, i64 40}
!116 = !{!89, !18, i64 48}
!117 = !{!118, !8, i64 2048}
!118 = !{!"_tagTreeCCStreamBuf", !9, i64 0, !8, i64 2048}
!119 = distinct !{!119, !13}
!120 = distinct !{!120, !13}
!121 = distinct !{!121, !13}
!122 = !{!123, !8, i64 0}
!123 = !{!"", !8, i64 0, !8, i64 8, !18, i64 16}
!124 = distinct !{!124, !13}
!125 = !{!123, !8, i64 8}
!126 = !{!123, !18, i64 16}
!127 = distinct !{!127, !13}
!128 = !{!89, !8, i64 0}
!129 = !{!89, !17, i64 24}
!130 = !{!26, !8, i64 8200}
!131 = !{!89, !8, i64 72}
!132 = !{i32 0, i32 2}
!133 = !{!70, !8, i64 8}
!134 = distinct !{!134, !13}
!135 = distinct !{!135, !13}
!136 = distinct !{!136, !13}
!137 = !{!62, !8, i64 8}
!138 = !{!62, !8, i64 16}
!139 = !{!62, !18, i64 24}
!140 = !{!62, !8, i64 72}
!141 = distinct !{!141, !13}
!142 = !{!62, !8, i64 48}
!143 = !{!62, !17, i64 56}
!144 = distinct !{!144, !13}
!145 = distinct !{!145, !13}
!146 = !{!16, !18, i64 64}
!147 = distinct !{!147, !13}
!148 = distinct !{!148, !13}
!149 = distinct !{!149, !13}
!150 = !{!47, !8, i64 0}
!151 = !{!47, !8, i64 16}
!152 = !{!47, !18, i64 24}
!153 = !{!47, !8, i64 48}
!154 = !{!41, !8, i64 72}
!155 = distinct !{!155, !13}
!156 = !{!75, !8, i64 24}
!157 = distinct !{!157, !13}
!158 = distinct !{!158, !13}
!159 = distinct !{!159, !13}
!160 = !{!54, !8, i64 24}
!161 = distinct !{!161, !13}
!162 = !{!54, !8, i64 64}
!163 = !{!164, !8, i64 0}
!164 = !{!"_tagTreeCCVirtual", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!165 = !{!164, !8, i64 8}
!166 = !{!164, !8, i64 16}
!167 = !{!164, !8, i64 24}
!168 = !{!164, !8, i64 32}
!169 = !{!41, !8, i64 80}
!170 = distinct !{!170, !13}
!171 = !{!16, !18, i64 68}
!172 = distinct !{!172, !13}
!173 = distinct !{!173, !13}
!174 = distinct !{!174, !13}
!175 = distinct !{!175, !13}
!176 = distinct !{!176, !13}
!177 = distinct !{!177, !13}
!178 = distinct !{!178, !13}
!179 = distinct !{!179, !13}
!180 = distinct !{!180, !13}
!181 = distinct !{!181, !13}
!182 = distinct !{!182, !13}
!183 = distinct !{!183, !13}
!184 = !{!41, !18, i64 44}
!185 = distinct !{!185, !13}
!186 = distinct !{!186, !13}
!187 = !{!41, !18, i64 48}
!188 = distinct !{!188, !13}
!189 = distinct !{!189, !13}
!190 = distinct !{!190, !13}
!191 = distinct !{!191, !13}
!192 = !{!89, !8, i64 56}
!193 = !{!194, !8, i64 32}
!194 = !{!"_tagTreeCCStreamDefn", !8, i64 0, !8, i64 8, !17, i64 16, !18, i64 24, !18, i64 28, !8, i64 32}
!195 = !{!194, !18, i64 28}
!196 = !{!194, !8, i64 0}
!197 = distinct !{!197, !13}
!198 = distinct !{!198, !13}
!199 = !{!41, !8, i64 88}
!200 = distinct !{!200, !13}
!201 = distinct !{!201, !13}
!202 = distinct !{!202, !13}
!203 = distinct !{!203, !13}
!204 = distinct !{!204, !13}
!205 = distinct !{!205, !13}
!206 = distinct !{!206, !13}
!207 = distinct !{!207, !13}
!208 = distinct !{!208, !13}
!209 = distinct !{!209, !13}
!210 = !{!194, !18, i64 24}
!211 = !{!194, !17, i64 16}
!212 = !{!194, !8, i64 8}
!213 = distinct !{!213, !13}
!214 = !{!41, !8, i64 96}
!215 = distinct !{!215, !13}
!216 = distinct !{!216, !13}
!217 = distinct !{!217, !13}
!218 = distinct !{!218, !13}
!219 = distinct !{!219, !13}
!220 = distinct !{!220, !13}
!221 = distinct !{!221, !13}
!222 = distinct !{!222, !13}
!223 = distinct !{!223, !13}
!224 = distinct !{!224, !13}
!225 = !{!26, !18, i64 8280}
!226 = !{!41, !8, i64 104}
!227 = distinct !{!227, !13}
!228 = !{!54, !8, i64 112}
!229 = !{!230, !8, i64 0}
!230 = !{!"", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !8, i64 88, !8, i64 96, !8, i64 104}
!231 = !{!230, !8, i64 48}
!232 = distinct !{!232, !13}
!233 = !{!230, !8, i64 8}
!234 = !{!230, !8, i64 96}
!235 = !{!230, !8, i64 104}
!236 = distinct !{!236, !13}
!237 = distinct !{!237, !13}
!238 = distinct !{!238, !13}
!239 = distinct !{!239, !13}
!240 = !{!26, !8, i64 8296}
!241 = distinct !{!241, !13}
!242 = distinct !{!242, !13}
!243 = distinct !{!243, !13}
!244 = distinct !{!244, !13}
!245 = distinct !{!245, !13}
!246 = distinct !{!246, !13}
!247 = distinct !{!247, !13}
!248 = distinct !{!248, !13}
!249 = distinct !{!249, !13}
!250 = distinct !{!250, !13}
!251 = distinct !{!251, !13}
!252 = distinct !{!252, !13}
!253 = distinct !{!253, !13}
!254 = distinct !{!254, !13}
!255 = distinct !{!255, !13}
!256 = distinct !{!256, !13}
!257 = distinct !{!257, !13}
!258 = distinct !{!258, !13}
!259 = distinct !{!259, !13}
!260 = distinct !{!260, !13}
!261 = distinct !{!261, !13}
!262 = distinct !{!262, !13}
!263 = distinct !{!263, !13}
!264 = distinct !{!264, !13}
!265 = distinct !{!265, !13}
!266 = distinct !{!266, !13}
!267 = distinct !{!267, !13}
!268 = distinct !{!268, !13}
!269 = distinct !{!269, !13}
!270 = distinct !{!270, !13}
!271 = distinct !{!271, !13}
!272 = distinct !{!272, !13}
!273 = distinct !{!273, !13}
!274 = distinct !{!274, !13}
!275 = distinct !{!275, !13}
!276 = distinct !{!276, !13}
!277 = distinct !{!277, !13}
!278 = distinct !{!278, !13}
!279 = distinct !{!279, !13}
!280 = distinct !{!280, !13}
!281 = distinct !{!281, !13}
!282 = distinct !{!282, !13}
!283 = distinct !{!283, !13}
!284 = distinct !{!284, !13}
!285 = distinct !{!285, !13}
!286 = distinct !{!286, !13}
!287 = distinct !{!287, !13}
!288 = distinct !{!288, !13}
!289 = distinct !{!289, !13}
!290 = distinct !{!290, !13}
!291 = distinct !{!291, !13}
!292 = distinct !{!292, !13}
!293 = distinct !{!293, !13}
!294 = distinct !{!294, !13}
!295 = distinct !{!295, !13}
!296 = distinct !{!296, !13}
!297 = distinct !{!297, !13}
!298 = distinct !{!298, !13}
!299 = distinct !{!299, !13}
!300 = distinct !{!300, !13}
!301 = distinct !{!301, !13}
!302 = distinct !{!302, !13}
!303 = distinct !{!303, !13}
!304 = distinct !{!304, !13}
!305 = distinct !{!305, !13}
!306 = distinct !{!306, !13}
!307 = distinct !{!307, !13}
!308 = distinct !{!308, !13}
!309 = distinct !{!309, !13}
!310 = distinct !{!310, !13}
!311 = distinct !{!311, !13}
!312 = distinct !{!312, !13}
!313 = distinct !{!313, !13}
!314 = distinct !{!314, !13}
!315 = distinct !{!315, !13}
!316 = distinct !{!316, !13}
!317 = distinct !{!317, !13}
!318 = distinct !{!318, !13}
!319 = distinct !{!319, !13}
!320 = distinct !{!320, !13}
!321 = distinct !{!321, !13}
!322 = distinct !{!322, !13}
!323 = distinct !{!323, !13}
!324 = !{!230, !8, i64 16}
!325 = !{!230, !8, i64 24}
!326 = distinct !{!326, !13}
!327 = !{!230, !8, i64 88}
!328 = distinct !{!328, !13}
!329 = !{!230, !8, i64 64}
!330 = !{!230, !8, i64 56}
!331 = distinct !{!331, !13}
!332 = !{!230, !8, i64 40}
!333 = !{!230, !8, i64 80}
!334 = distinct !{!334, !13}
!335 = distinct !{!335, !13}
!336 = distinct !{!336, !13}
!337 = !{!230, !8, i64 32}
!338 = distinct !{!338, !13}
!339 = distinct !{!339, !13}
!340 = distinct !{!340, !13}
!341 = !{!230, !8, i64 72}
!342 = distinct !{!342, !13}
!343 = distinct !{!343, !13}
!344 = distinct !{!344, !13}
!345 = distinct !{!345, !13}
!346 = distinct !{!346, !13}
!347 = distinct !{!347, !13}
!348 = distinct !{!348, !13}
!349 = distinct !{!349, !13}
!350 = distinct !{!350, !13}
!351 = distinct !{!351, !13}
!352 = distinct !{!352, !13}
!353 = distinct !{!353, !13}
!354 = distinct !{!354, !13}
!355 = distinct !{!355, !13}
!356 = distinct !{!356, !13}
!357 = distinct !{!357, !13}
!358 = distinct !{!358, !13}
!359 = distinct !{!359, !13}
!360 = distinct !{!360, !13}
!361 = distinct !{!361, !13}
!362 = distinct !{!362, !13}
!363 = distinct !{!363, !13}
!364 = distinct !{!364, !13}
!365 = distinct !{!365, !13}
!366 = distinct !{!366, !13}
!367 = !{!16, !18, i64 60}
!368 = !{!369, !8, i64 0}
!369 = !{!"", !8, i64 0, !9, i64 8}
!370 = !{!369, !9, i64 8}
!371 = distinct !{!371, !13}
!372 = !{!41, !8, i64 24}
!373 = !{!41, !8, i64 16}
!374 = distinct !{!374, !13}
!375 = distinct !{!375, !13}
!376 = distinct !{!376, !13}
!377 = distinct !{!377, !13}
!378 = distinct !{!378, !13}
!379 = !{!89, !8, i64 64}
!380 = distinct !{!380, !13}
!381 = distinct !{!381, !13}
!382 = distinct !{!382, !13}
!383 = distinct !{!383, !13}
