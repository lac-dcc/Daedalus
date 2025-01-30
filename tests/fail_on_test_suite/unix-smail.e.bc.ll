; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/unix-smail/unix-smail.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alias_node = type { ptr, ptr, ptr }
%struct.reqheaders = type { ptr, ptr, i8 }
%struct.stat = type { i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, %struct.timespec, %struct.timespec, %struct.timespec, [3 x i64] }
%struct.timespec = type { i64, i64 }
%struct.tm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, ptr }
%struct.utsname = type { [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8], [65 x i8] }
%struct.pw_node = type { ptr, ptr, i32, ptr, ptr }

@nargc = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c":include:\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.3 = private unnamed_addr constant [9 x i8] c".forward\00", align 1
@alias.t_dom = internal global [512 x i8] zeroinitializer, align 16
@alias.t_unam = internal global [512 x i8] zeroinitializer, align 16
@nargv = internal global [500 x ptr] zeroinitializer, align 16
@v_search.loaded = internal unnamed_addr global i1 false, align 4
@aliases = internal global %struct.alias_node { ptr @.str.7, ptr null, ptr null }, align 8
@.str.4 = private unnamed_addr constant [30 x i8] c"load_alias open('%s') failed\0A\00", align 1
@.str.5 = private unnamed_addr constant [36 x i8] c"load_alias '%s' includes file '%s'\0A\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"load_alias for '%s' failed\0A\00", align 1
@.str.7 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.8 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.1.3 = private unnamed_addr constant [3 x i8] c"-r\00", align 1
@stderrfile = internal global [20 x i8] zeroinitializer, align 16
@.str.2.1 = private unnamed_addr constant [18 x i8] c"/tmp/stderrXXXXXX\00", align 1
@.str.3.2 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4.9 = private unnamed_addr constant [3 x i8] c"-R\00", align 1
@.str.5.10 = private unnamed_addr constant [11 x i8] c"/bin/lmail\00", align 1
@.str.6.11 = private unnamed_addr constant [22 x i8] c"%s -a%s %s - %s!rmail\00", align 1
@.str.7.12 = private unnamed_addr constant [13 x i8] c"/usr/bin/uux\00", align 1
@.str.8.13 = private unnamed_addr constant [16 x i8] c"%s %s %s -f %s \00", align 1
@.str.9 = private unnamed_addr constant [11 x i8] c"/bin/smail\00", align 1
@.str.10 = private unnamed_addr constant [3 x i8] c"-v\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c" '%s'\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c" '%s!%s'\00", align 1
@.str.13 = private unnamed_addr constant [8 x i8] c" '(%s)'\00", align 1
@deliver.errbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.14 = private unnamed_addr constant [40 x i8] c"address resolution ('%s' @ '%s') failed\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"COMMAND: %s\0A\00", align 1
@.str.16 = private unnamed_addr constant [22 x i8] c"couldn't execute %s.\0A\00", align 1
@.str.17 = private unnamed_addr constant [15 x i8] c"From %s %.24s\0A\00", align 1
@.str.18 = private unnamed_addr constant [31 x i8] c"From %s  %.24s remote from %s\0A\00", align 1
@.str.19 = private unnamed_addr constant [37 x i8] c"Received: by %s (%s)\0A\09id AA%05d; %s\0A\00", align 1
@.str.20 = private unnamed_addr constant [9 x i8] c"smail2.5\00", align 1
@.str.21 = private unnamed_addr constant [26 x i8] c"%s failed (%d)\0Atrying %s\0A\00", align 1
@.str.22 = private unnamed_addr constant [16 x i8] c"%s failed (%d)\0A\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.24 = private unnamed_addr constant [10 x i8] c"Date: %s\0A\00", align 1
@.str.25 = private unnamed_addr constant [24 x i8] c"From: MAILER-DAEMON@%s\0A\00", align 1
@.str.26 = private unnamed_addr constant [22 x i8] c"Subject: failed mail\0A\00", align 1
@.str.27 = private unnamed_addr constant [8 x i8] c"To: %s\0A\00", align 1
@.str.29 = private unnamed_addr constant [42 x i8] c"=======     command failed      =======\0A\0A\00", align 1
@.str.30 = private unnamed_addr constant [15 x i8] c" COMMAND: %s\0A\0A\00", align 1
@.str.31 = private unnamed_addr constant [41 x i8] c"======= standard error follows  =======\0A\00", align 1
@.str.32 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.33 = private unnamed_addr constant [41 x i8] c"======= text of message follows =======\0A\00", align 1
@.str.34 = private unnamed_addr constant [9 x i8] c"From %s\0A\00", align 1
@unix_smail_opterr = internal global i32 1, align 4
@unix_smail_getopt.sp = internal unnamed_addr global i32 1, align 4
@.str.28 = private unnamed_addr constant [3 x i8] c"--\00", align 1
@unix_smail_optopt = internal global i32 0, align 4
@.str.1.29 = private unnamed_addr constant [21 x i8] c": illegal option -- \00", align 1
@.str.2.30 = private unnamed_addr constant [34 x i8] c": option requires an argument -- \00", align 1
@getpath.pathlength = internal unnamed_addr global i64 0, align 8
@getpath.file = internal unnamed_addr global ptr null, align 8
@.str.35 = private unnamed_addr constant [27 x i8] c"getpath: looking for '%s'\0A\00", align 1
@.str.1.36 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.37 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@.str.3.38 = private unnamed_addr constant [6 x i8] c"%s!%s\00", align 1
@.str.4.39 = private unnamed_addr constant [6 x i8] c"%s@%s\00", align 1
@.str.5.42 = private unnamed_addr constant [14 x i8] c"/tmp/rmXXXXXX\00", align 1
@spool.splbuf = internal global [512 x i8] zeroinitializer, align 16
@.str.6.43 = private unnamed_addr constant [27 x i8] c"spool: bad file name '%s'\0A\00", align 1
@.str.7.44 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.8.45 = private unnamed_addr constant [18 x i8] c"can't create %s.\0A\00", align 1
@.str.9.46 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@ieof = internal unnamed_addr global ptr @.str.29.49, align 8
@stdin = external local_unnamed_addr global ptr, align 8
@.str.10.47 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.11.48 = private unnamed_addr constant [16 x i8] c"can't open %s.\0A\00", align 1
@.str.12.64 = private unnamed_addr constant [6 x i8] c"From \00", align 1
@.str.13.65 = private unnamed_addr constant [7 x i8] c">From \00", align 1
@.str.14.66 = private unnamed_addr constant [13 x i8] c"remote from \00", align 1
@.str.15.67 = private unnamed_addr constant [7 x i8] c"nobody\00", align 1
@.str.16.50 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@reqtab = internal unnamed_addr global [5 x %struct.reqheaders] [%struct.reqheaders { ptr @.str.30.51, ptr @midline, i8 78 }, %struct.reqheaders { ptr @.str.31.52, ptr @dateline, i8 78 }, %struct.reqheaders { ptr @.str.17.53, ptr @fromline, i8 78 }, %struct.reqheaders { ptr @.str.32.54, ptr @toline, i8 78 }, %struct.reqheaders { ptr null, ptr null, i8 78 }], align 16
@.str.17.53 = private unnamed_addr constant [6 x i8] c"From:\00", align 1
@.str.18.55 = private unnamed_addr constant [10 x i8] c"From: %s\0A\00", align 1
@dateline = internal global [512 x i8] zeroinitializer, align 16
@.str.19.56 = private unnamed_addr constant [7 x i8] c"Date: \00", align 1
@midline = internal global [512 x i8] zeroinitializer, align 16
@.str.20.57 = private unnamed_addr constant [45 x i8] c"Message-Id: <%02d%02d%02d%02d%02d.AA%05d@%s>\00", align 1
@fromline = internal global [512 x i8] zeroinitializer, align 16
@.str.21.58 = private unnamed_addr constant [9 x i8] c"From: %s\00", align 1
@.str.22.59 = private unnamed_addr constant [5 x i8] c"NAME\00", align 1
@.str.23.60 = private unnamed_addr constant [17 x i8] c"From: %s@%s (%s)\00", align 1
@.str.24.61 = private unnamed_addr constant [12 x i8] c"From: %s@%s\00", align 1
@toline = internal global [512 x i8] zeroinitializer, align 16
@.str.25.62 = private unnamed_addr constant [5 x i8] c"To: \00", align 1
@.str.28.63 = private unnamed_addr constant [3 x i8] c", \00", align 1
@.str.29.49 = private unnamed_addr constant [8 x i8] c"NOTNULL\00", align 1
@.str.30.51 = private unnamed_addr constant [12 x i8] c"Message-Id:\00", align 1
@.str.31.52 = private unnamed_addr constant [6 x i8] c"Date:\00", align 1
@.str.32.54 = private unnamed_addr constant [4 x i8] c"To:\00", align 1
@.str.98 = private unnamed_addr constant [20 x i8] c"/usr/lib/uucp/paths\00", align 1
@pathfile = internal global ptr @.str.98, align 8
@uuxargs = internal global ptr null, align 8
@.str.1.97 = private unnamed_addr constant [17 x i8] c"/usr/lib/aliases\00", align 1
@aliasfile = internal global ptr @.str.1.97, align 8
@.str.2.96 = private unnamed_addr constant [19 x i8] c"/usr/lib/fullnames\00", align 1
@from_addr = internal global ptr null, align 8
@maxnoqueue = internal global i32 2, align 4
@spoolfile = internal global ptr null, align 8
@spoolmaster = internal global i32 0, align 4
@.str.3.68 = private unnamed_addr constant [29 x i8] c"cdvArRlLH:h:p:u:q:a:n:m:f:F:\00", align 1
@optarg = dso_local global ptr null, align 8
@.str.4.91 = private unnamed_addr constant [20 x i8] c"valid flags are %s\0A\00", align 1
@unix_smail_optind = internal global i32 1, align 4
@.str.5.92 = private unnamed_addr constant [30 x i8] c"usage: %s [flags] address...\0A\00", align 1
@.str.6.93 = private unnamed_addr constant [6 x i8] c"smail\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@spoolfp = internal global ptr null, align 8
@map.userbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.userz = internal unnamed_addr global ptr null, align 8
@map.hostbuf = internal global [4096 x i8] zeroinitializer, align 16
@map.hostz = internal unnamed_addr global ptr null, align 8
@queuecost = internal global i32 100, align 4
@now = internal global i64 0, align 8
@nows = internal global [50 x i8] zeroinitializer, align 16
@gmt = internal global ptr null, align 8
@loc = internal global ptr null, align 8
@arpanows = internal global [50 x i8] zeroinitializer, align 16
@arpadate.b = internal global [40 x i8] zeroinitializer, align 16
@tzname = external local_unnamed_addr global [2 x ptr], align 16
@.str.117 = private unnamed_addr constant [11 x i8] c"postmaster\00", align 1
@.str.1.118 = private unnamed_addr constant [5 x i8] c"UUCP\00", align 1
@.str.2.120 = private unnamed_addr constant [6 x i8] c"ERROR\00", align 1
@.str.3.121 = private unnamed_addr constant [6 x i8] c"LOCAL\00", align 1
@.str.4.122 = private unnamed_addr constant [7 x i8] c"DOMAIN\00", align 1
@.str.5.123 = private unnamed_addr constant [6 x i8] c"ROUTE\00", align 1
@.str.6.119 = private unnamed_addr constant [8 x i8] c"UNKNOWN\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.7.126 = private unnamed_addr constant [20 x i8] c"uname() call failed\00", align 1
@.str.8.127 = private unnamed_addr constant [27 x i8] c"can't determine hostname.\0A\00", align 1
@.str.9.128 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@hostuucp = internal global [512 x i8] zeroinitializer, align 16
@switch.table.sform = private unnamed_addr constant [5 x ptr] [ptr @.str.2.120, ptr @.str.3.121, ptr @.str.4.122, ptr @.str.1.118, ptr @.str.5.123], align 8
@pwhead = internal global ptr null, align 8
@res_fname.pathlength = internal unnamed_addr global i64 0, align 8
@res_fname.file = internal unnamed_addr global ptr null, align 8
@.str.137 = private unnamed_addr constant [29 x i8] c"res_fname: looking for '%s'\0A\00", align 1
@fnlist = internal global ptr @.str.2.96, align 8
@.str.1.138 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2.139 = private unnamed_addr constant [18 x i8] c"can't access %s.\0A\00", align 1
@table = internal global [5 x [3 x i32]] [[3 x i32] zeroinitializer, [3 x i32] [i32 1, i32 1, i32 1], [3 x i32] [i32 4, i32 1, i32 1], [3 x i32] [i32 3, i32 3, i32 1], [3 x i32] zeroinitializer], align 16
@routing = internal global i32 0, align 4
@handle = internal global i32 0, align 4
@debug = internal global i32 0, align 4
@.str.142 = private unnamed_addr constant [48 x i8] c"resolve: parse address '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.1.143 = private unnamed_addr constant [46 x i8] c"resolve: parse route '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@getcost = internal global i32 1, align 4
@exitstat = internal global i32 0, align 4
@.str.3.144 = private unnamed_addr constant [40 x i8] c"resolve failed '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@.str.4.145 = private unnamed_addr constant [33 x i8] c"resolve '%s' = '%s' @ '%s' (%s)\0A\00", align 1
@hostname = internal global [512 x i8] zeroinitializer, align 16
@hostdomain = internal global [512 x i8] zeroinitializer, align 16
@.str.5.146 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.6.147 = private unnamed_addr constant [22 x i8] c"route: '%s' is local\0A\00", align 1
@.str.7.148 = private unnamed_addr constant [6 x i8] c".UUCP\00", align 1
@.str.8.149 = private unnamed_addr constant [11 x i8] c"smart-host\00", align 1
@.str.9.150 = private unnamed_addr constant [19 x i8] c"route '%s' failed\0A\00", align 1
@.str.10.152 = private unnamed_addr constant [31 x i8] c"route:  '%s' (%s) = '%s' (%d)\0A\00", align 1
@.str.11.151 = private unnamed_addr constant [5 x i8] c"NULL\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal ptr @alias(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca %struct.alias_node, align 8
  %6 = alloca %struct.alias_node, align 8
  %7 = getelementptr inbounds %struct.alias_node, ptr %6, i64 0, i32 1
  %8 = alloca [512 x i8], align 16
  %9 = alloca %struct.stat, align 8
  %10 = alloca [512 x i8], align 16
  %11 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %9) #24
  %12 = getelementptr inbounds %struct.alias_node, ptr %5, i64 0, i32 1
  store ptr null, ptr %12, align 8, !tbaa !7
  store ptr null, ptr %7, align 8, !tbaa !7
  %13 = load i32, ptr %0, align 4, !tbaa !12
  %14 = icmp sgt i32 %13, 0
  br i1 %14, label %22, label %15

15:                                               ; preds = %22, %2
  %16 = load i32, ptr @nargc, align 4, !tbaa !12
  %17 = icmp slt i32 %16, 500
  br i1 %17, label %18, label %189

18:                                               ; preds = %15
  %19 = getelementptr inbounds %struct.stat, ptr %9, i64 0, i32 3
  %20 = load ptr, ptr %12, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %189, label %30

22:                                               ; preds = %22, %2
  %23 = phi i64 [ %26, %22 ], [ 0, %2 ]
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !14
  call void @add_horz(ptr noundef nonnull %5, ptr noundef %25) #25
  %26 = add nuw nsw i64 %23, 1
  %27 = load i32, ptr %0, align 4, !tbaa !12
  %28 = sext i32 %27 to i64
  %29 = icmp slt i64 %26, %28
  br i1 %29, label %22, label %15, !llvm.loop !15

30:                                               ; preds = %70, %18
  %31 = phi ptr [ %73, %70 ], [ %20, %18 ]
  %32 = getelementptr inbounds %struct.alias_node, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  store ptr %33, ptr %12, align 8, !tbaa !7
  %34 = load ptr, ptr %31, align 8, !tbaa !17
  %35 = call i32 (ptr, ptr, i32, ...) @strncmpic(ptr noundef %34, ptr noundef nonnull @.str, i32 noundef 9) #26
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %31, align 8, !tbaa !17
  br i1 %36, label %38, label %76

38:                                               ; preds = %30
  %39 = getelementptr inbounds i8, ptr %37, i64 9
  %40 = load i8, ptr %39, align 1, !tbaa !18
  %41 = icmp eq i8 %40, 47
  br i1 %41, label %42, label %68

42:                                               ; preds = %46, %38
  %43 = phi ptr [ %47, %46 ], [ %7, %38 ]
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = icmp eq ptr %44, null
  br i1 %45, label %51, label %46

46:                                               ; preds = %42
  %47 = getelementptr inbounds %struct.alias_node, ptr %44, i64 0, i32 1
  %48 = load ptr, ptr %44, align 8, !tbaa !17
  %49 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %48, ptr noundef nonnull %39) #26
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %68, label %42, !llvm.loop !19

51:                                               ; preds = %42
  call void @add_horz(ptr noundef nonnull %6, ptr noundef nonnull %39) #25
  %52 = call i32 @stat(ptr noundef nonnull %39, ptr noundef nonnull %9) #26
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %68

54:                                               ; preds = %51
  %55 = load i32, ptr %19, align 8, !tbaa !20
  %56 = and i32 %55, 61440
  %57 = icmp eq i32 %56, 32768
  br i1 %57, label %58, label %68

58:                                               ; preds = %54
  %59 = call noalias ptr @fopen(ptr noundef nonnull %39, ptr noundef nonnull @.str.1) #25
  %60 = icmp eq ptr %59, null
  br i1 %60, label %68, label %61

61:                                               ; preds = %64, %58
  %62 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %59) #25
  %63 = icmp eq ptr %62, null
  br i1 %63, label %66, label %64

64:                                               ; preds = %61
  %65 = call i32 @recipients(ptr noundef nonnull %5, ptr noundef nonnull %8) #25, !range !24
  br label %61, !llvm.loop !25

66:                                               ; preds = %61
  %67 = call i32 @fclose(ptr noundef nonnull %59) #25
  br label %68

68:                                               ; preds = %181, %158, %154, %145, %122, %113, %92, %66, %58, %54, %51, %46, %38
  %69 = load i32, ptr @nargc, align 4, !tbaa !12
  br label %70

70:                                               ; preds = %185, %68
  %71 = phi i32 [ %69, %68 ], [ %186, %185 ]
  %72 = icmp sgt i32 %71, 499
  %73 = load ptr, ptr %12, align 8
  %74 = icmp eq ptr %73, null
  %75 = select i1 %72, i1 true, i1 %74
  br i1 %75, label %189, label %30, !llvm.loop !26

76:                                               ; preds = %30
  %77 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef %37, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %159, label %79

79:                                               ; preds = %76
  %80 = load i8, ptr %4, align 16, !tbaa !18
  %81 = icmp eq i8 %80, 92
  %82 = zext i1 %81 to i64
  %83 = getelementptr inbounds i8, ptr %4, i64 %82
  %84 = load ptr, ptr %31, align 8, !tbaa !17
  %85 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %84, ptr noundef nonnull dereferenceable(1) %83) #26
  %86 = call ptr @v_search(ptr noundef nonnull %83) #25
  %87 = icmp eq ptr %86, null
  br i1 %87, label %115, label %88

88:                                               ; preds = %79
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %11) #24
  %89 = getelementptr inbounds %struct.alias_node, ptr %86, i64 0, i32 1
  %90 = load ptr, ptr %89, align 8, !tbaa !7
  %91 = icmp eq ptr %90, null
  br i1 %91, label %92, label %93

92:                                               ; preds = %88
  store ptr null, ptr %89, align 8, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #24
  br label %68

93:                                               ; preds = %108, %88
  %94 = phi ptr [ %111, %108 ], [ %90, %88 ]
  %95 = phi i32 [ %109, %108 ], [ 0, %88 ]
  %96 = load ptr, ptr %94, align 8, !tbaa !17
  %97 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef %96, ptr noundef nonnull %10, ptr noundef nonnull %11) #26
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %106, label %99

99:                                               ; preds = %93
  %100 = load i8, ptr %11, align 16, !tbaa !18
  %101 = icmp eq i8 %100, 92
  %102 = zext i1 %101 to i64
  %103 = getelementptr inbounds i8, ptr %11, i64 %102
  %104 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef nonnull %103, ptr noundef nonnull %83) #26
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %108, label %106

106:                                              ; preds = %99, %93
  %107 = load ptr, ptr %94, align 8, !tbaa !17
  call void @add_horz(ptr noundef nonnull %5, ptr noundef %107) #25
  br label %108

108:                                              ; preds = %106, %99
  %109 = phi i32 [ 1, %99 ], [ %95, %106 ]
  %110 = getelementptr inbounds %struct.alias_node, ptr %94, i64 0, i32 1
  %111 = load ptr, ptr %110, align 8, !tbaa !7
  %112 = icmp eq ptr %111, null
  br i1 %112, label %113, label %93, !llvm.loop !27

113:                                              ; preds = %108
  %.lcssa = phi i32 [ %109, %108 ]
  store ptr null, ptr %89, align 8, !tbaa !7
  %114 = icmp eq i32 %.lcssa, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #24
  br i1 %114, label %68, label %115

115:                                              ; preds = %113, %79
  %116 = call ptr (ptr, ...) @tilde(ptr noundef nonnull %83) #26
  %117 = icmp eq ptr %116, null
  br i1 %117, label %148, label %118

118:                                              ; preds = %122, %115
  %119 = phi ptr [ %123, %122 ], [ %7, %115 ]
  %120 = load ptr, ptr %119, align 8, !tbaa !7
  %121 = icmp eq ptr %120, null
  br i1 %121, label %127, label %122

122:                                              ; preds = %118
  %123 = getelementptr inbounds %struct.alias_node, ptr %120, i64 0, i32 1
  %124 = load ptr, ptr %120, align 8, !tbaa !17
  %125 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %124, ptr noundef nonnull %116) #26
  %126 = icmp eq i32 %125, 0
  br i1 %126, label %68, label %118, !llvm.loop !19

127:                                              ; preds = %118
  call void @add_horz(ptr noundef nonnull %6, ptr noundef nonnull %116) #25
  %128 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.2, ptr noundef nonnull %116, ptr noundef nonnull @.str.3) #26
  %129 = call i32 @stat(ptr noundef nonnull %8, ptr noundef nonnull %9) #26
  %130 = icmp sgt i32 %129, -1
  br i1 %130, label %131, label %148

131:                                              ; preds = %127
  %132 = load i32, ptr %19, align 8, !tbaa !20
  %133 = and i32 %132, 61732
  %134 = icmp eq i32 %133, 33060
  br i1 %134, label %135, label %148

135:                                              ; preds = %131
  %136 = call noalias ptr @fopen(ptr noundef nonnull %8, ptr noundef nonnull @.str.1) #25
  %137 = icmp eq ptr %136, null
  br i1 %137, label %148, label %138

138:                                              ; preds = %142, %135
  %139 = phi i32 [ %144, %142 ], [ 0, %135 ]
  %140 = call ptr @fgets(ptr noundef nonnull %8, i32 noundef 512, ptr noundef nonnull %136) #25
  %141 = icmp eq ptr %140, null
  br i1 %141, label %145, label %142

142:                                              ; preds = %138
  %143 = call i32 @recipients(ptr noundef nonnull %5, ptr noundef nonnull %8) #25, !range !24
  %144 = or i32 %143, %139
  br label %138, !llvm.loop !28

145:                                              ; preds = %138
  %.lcssa1 = phi i32 [ %139, %138 ]
  %146 = call i32 @fclose(ptr noundef nonnull %136) #25
  %147 = icmp eq i32 %.lcssa1, 0
  br i1 %147, label %148, label %68

148:                                              ; preds = %145, %135, %131, %127, %115
  %149 = call ptr (ptr, ...) @res_fname(ptr noundef nonnull %83) #26
  %150 = icmp eq ptr %149, null
  br i1 %150, label %159, label %151

151:                                              ; preds = %148
  %152 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef nonnull %149, ptr noundef nonnull @alias.t_dom, ptr noundef nonnull @alias.t_unam) #26
  %153 = icmp eq i32 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %151
  call void @add_horz(ptr noundef nonnull %5, ptr noundef nonnull %149) #25
  br label %68, !llvm.loop !26

155:                                              ; preds = %151
  %156 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) @alias.t_unam, ptr noundef nonnull dereferenceable(1) %83) #27
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call void @add_horz(ptr noundef nonnull %5, ptr noundef nonnull @alias.t_unam) #25
  br label %68, !llvm.loop !26

159:                                              ; preds = %155, %148, %76
  %160 = load ptr, ptr %31, align 8, !tbaa !17
  %161 = load i8, ptr %160, align 1, !tbaa !18
  %162 = icmp eq i8 %161, 92
  %163 = zext i1 %162 to i64
  %164 = getelementptr inbounds i8, ptr %160, i64 %163
  %165 = load i32, ptr @nargc, align 4, !tbaa !12
  %166 = icmp sgt i32 %165, 0
  br i1 %166, label %167, label %181

167:                                              ; preds = %174, %159
  %168 = phi i64 [ %175, %174 ], [ 0, %159 ]
  %169 = getelementptr inbounds [500 x ptr], ptr @nargv, i64 0, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !14
  %171 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %170, ptr noundef nonnull %164) #26
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr @nargc, align 4, !tbaa !12
  br i1 %172, label %178, label %174

174:                                              ; preds = %167
  %175 = add nuw nsw i64 %168, 1
  %176 = sext i32 %173 to i64
  %177 = icmp slt i64 %175, %176
  br i1 %177, label %167, label %178, !llvm.loop !29

178:                                              ; preds = %174, %167
  %.lcssa2 = phi i32 [ %173, %174 ], [ %173, %167 ]
  %179 = phi i64 [ %175, %174 ], [ %168, %167 ]
  %180 = trunc i64 %179 to i32
  br label %181

181:                                              ; preds = %178, %159
  %182 = phi i32 [ %165, %159 ], [ %.lcssa2, %178 ]
  %183 = phi i32 [ 0, %159 ], [ %180, %178 ]
  %184 = icmp eq i32 %183, %182
  br i1 %184, label %185, label %68

185:                                              ; preds = %181
  %186 = add nsw i32 %182, 1
  store i32 %186, ptr @nargc, align 4, !tbaa !12
  %187 = sext i32 %182 to i64
  %188 = getelementptr inbounds [500 x ptr], ptr @nargv, i64 0, i64 %187
  store ptr %164, ptr %188, align 8, !tbaa !14
  br label %70

189:                                              ; preds = %70, %18, %15
  %190 = phi i32 [ %16, %15 ], [ %16, %18 ], [ %71, %70 ]
  store i32 %190, ptr %0, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #24
  ret ptr @nargv
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @add_horz(ptr nocapture noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28
  %4 = icmp eq ptr %3, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %7 = add i64 %6, 1
  %8 = and i64 %7, 4294967295
  %9 = tail call noalias ptr @malloc(i64 noundef %8) #28
  store ptr %9, ptr %3, align 8, !tbaa !17
  %10 = icmp eq ptr %9, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %5
  tail call void @free(ptr noundef nonnull %3) #26
  br label %18

12:                                               ; preds = %5
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %1) #26
  %14 = getelementptr inbounds %struct.alias_node, ptr %0, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = getelementptr inbounds %struct.alias_node, ptr %3, i64 0, i32 1
  store ptr %15, ptr %16, align 8, !tbaa !7
  %17 = getelementptr inbounds %struct.alias_node, ptr %3, i64 0, i32 2
  store ptr null, ptr %17, align 8, !tbaa !30
  store ptr %3, ptr %14, align 8, !tbaa !7
  br label %18

18:                                               ; preds = %12, %11, %2
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @stat(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @recipients(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  tail call void @strip_comments(ptr noundef %1) #25
  br label %5

5:                                                ; preds = %8, %2
  %6 = phi ptr [ %1, %2 ], [ %9, %8 ]
  %7 = load i8, ptr %6, align 1, !tbaa !18
  switch i8 %7, label %10 [
    i8 32, label %8
    i8 9, label %8
    i8 10, label %8
    i8 44, label %8
  ]

8:                                                ; preds = %5, %5, %5, %5
  %9 = getelementptr inbounds i8, ptr %6, i64 1
  br label %5, !llvm.loop !31

10:                                               ; preds = %43, %5
  %11 = phi i8 [ %7, %5 ], [ %45, %43 ]
  %12 = phi ptr [ %6, %5 ], [ %44, %43 ]
  %13 = phi i32 [ 0, %5 ], [ %42, %43 ]
  switch i8 %11, label %18 [
    i8 0, label %48
    i8 35, label %48
    i8 34, label %14
  ]

14:                                               ; preds = %10
  %15 = getelementptr inbounds i8, ptr %12, i64 1
  %16 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %15, i32 noundef 34) #27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %48, label %24

18:                                               ; preds = %21, %10
  %19 = phi i8 [ %23, %21 ], [ %11, %10 ]
  %20 = phi ptr [ %22, %21 ], [ %12, %10 ]
  switch i8 %19, label %21 [
    i8 32, label %27
    i8 9, label %27
    i8 10, label %27
    i8 44, label %27
  ]

21:                                               ; preds = %18
  %22 = getelementptr inbounds i8, ptr %20, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !18
  br label %18, !llvm.loop !32

24:                                               ; preds = %14
  %25 = load i8, ptr %16, align 1, !tbaa !18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24, %18, %18, %18, %18
  %28 = phi ptr [ %15, %24 ], [ %12, %18 ], [ %12, %18 ], [ %12, %18 ], [ %12, %18 ]
  %29 = phi ptr [ %16, %24 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ], [ %20, %18 ]
  %30 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 0, ptr %29, align 1, !tbaa !18
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi ptr [ %28, %27 ], [ %15, %24 ]
  %33 = phi ptr [ %30, %27 ], [ %16, %24 ]
  %34 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef nonnull %32, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %40, label %36

36:                                               ; preds = %31
  %37 = load ptr, ptr %0, align 8, !tbaa !17
  %38 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %37, ptr noundef nonnull %4) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %36, %31
  call void @add_horz(ptr noundef %0, ptr noundef nonnull %32) #25
  br label %41

41:                                               ; preds = %40, %36
  %42 = phi i32 [ 1, %40 ], [ %13, %36 ]
  br label %43

43:                                               ; preds = %46, %41
  %44 = phi ptr [ %33, %41 ], [ %47, %46 ]
  %45 = load i8, ptr %44, align 1, !tbaa !18
  switch i8 %45, label %10 [
    i8 32, label %46
    i8 9, label %46
    i8 10, label %46
    i8 44, label %46
  ]

46:                                               ; preds = %43, %43, %43, %43
  %47 = getelementptr inbounds i8, ptr %44, i64 1
  br label %43, !llvm.loop !33

48:                                               ; preds = %14, %10, %10
  %.lcssa = phi i32 [ %13, %14 ], [ %13, %10 ], [ %13, %10 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #24
  ret i32 %.lcssa
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nounwind optsize uwtable
define internal ptr @v_search(ptr noundef %0) #0 {
  %2 = load i1, ptr @v_search.loaded, align 4
  br i1 %2, label %5, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr @aliasfile, align 8, !tbaa !14
  tail call void @load_alias(ptr noundef nonnull @aliases, ptr noundef %4) #25
  store i1 true, ptr @v_search.loaded, align 4
  br label %5

5:                                                ; preds = %3, %1
  %6 = load ptr, ptr getelementptr inbounds (%struct.alias_node, ptr @aliases, i64 0, i32 2), align 8, !tbaa !30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %17, label %8

8:                                                ; preds = %13, %5
  %9 = phi ptr [ %15, %13 ], [ %6, %5 ]
  %10 = load ptr, ptr %9, align 8, !tbaa !17
  %11 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %10, ptr noundef %0) #26
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %17, label %13

13:                                               ; preds = %8
  %14 = getelementptr inbounds %struct.alias_node, ptr %9, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %8, !llvm.loop !34

17:                                               ; preds = %13, %8, %5
  %18 = phi ptr [ null, %5 ], [ %9, %8 ], [ null, %13 ]
  ret ptr %18
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal void @load_alias(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #24
  %6 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.1) #25
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds i8, ptr %5, i64 9
  br label %57

10:                                               ; preds = %2
  %11 = load i32, ptr @debug, align 4, !tbaa !18
  %12 = icmp eq i32 %11, 2
  br i1 %12, label %13, label %79

13:                                               ; preds = %10
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, ptr noundef %1) #25
  br label %79

15:                                               ; preds = %57, %20
  %16 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 512, ptr noundef nonnull %6) #25
  %17 = icmp eq ptr %16, null
  br i1 %17, label %59, label %18

18:                                               ; preds = %15
  %19 = load i8, ptr %5, align 16, !tbaa !18
  switch i8 %19, label %21 [
    i8 35, label %20
    i8 10, label %20
  ]

20:                                               ; preds = %41, %33, %18, %18
  br label %15, !llvm.loop !35

21:                                               ; preds = %18
  %22 = call i32 @bcmp(ptr noundef nonnull dereferenceable(9) %5, ptr noundef nonnull dereferenceable(9) @.str, i64 9)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %21
  %25 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 10) #27
  %26 = icmp eq ptr %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %24
  store i8 0, ptr %25, align 1, !tbaa !18
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, ptr @debug, align 4, !tbaa !18
  %30 = icmp eq i32 %29, 2
  br i1 %30, label %31, label %33

31:                                               ; preds = %28
  %32 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, ptr noundef %1, ptr noundef nonnull %9) #25
  br label %33

33:                                               ; preds = %31, %28
  call void @load_alias(ptr noundef %0, ptr noundef nonnull %9) #25
  br label %20

34:                                               ; preds = %21
  switch i8 %19, label %35 [
    i8 32, label %53
    i8 9, label %53
  ]

35:                                               ; preds = %38, %34
  %36 = phi i8 [ %40, %38 ], [ %19, %34 ]
  %37 = phi ptr [ %39, %38 ], [ %5, %34 ]
  switch i8 %36, label %38 [
    i8 32, label %41
    i8 9, label %41
    i8 10, label %41
    i8 44, label %41
  ]

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %37, i64 1
  %40 = load i8, ptr %39, align 1, !tbaa !18
  br label %35, !llvm.loop !36

41:                                               ; preds = %35, %35, %35, %35
  %.lcssa = phi ptr [ %37, %35 ], [ %37, %35 ], [ %37, %35 ], [ %37, %35 ]
  store i8 0, ptr %.lcssa, align 1, !tbaa !18
  %42 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #26
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %20, label %44

44:                                               ; preds = %41
  %.lcssa.lcssa = phi ptr [ %.lcssa, %41 ]
  %45 = getelementptr inbounds i8, ptr %.lcssa.lcssa, i64 1
  %46 = call ptr @add_vert(ptr noundef %0, ptr noundef nonnull %4) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, ptr @debug, align 4, !tbaa !18
  %50 = icmp eq i32 %49, 2
  br i1 %50, label %51, label %79

51:                                               ; preds = %48
  %52 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, ptr noundef nonnull %5) #25
  br label %79

53:                                               ; preds = %44, %34, %34
  %54 = phi ptr [ %45, %44 ], [ %5, %34 ], [ %5, %34 ]
  %55 = phi ptr [ %46, %44 ], [ %58, %34 ], [ %58, %34 ]
  %56 = call i32 @recipients(ptr noundef %55, ptr noundef nonnull %54) #25, !range !24
  br label %57, !llvm.loop !35

57:                                               ; preds = %53, %8
  %58 = phi ptr [ undef, %8 ], [ %55, %53 ]
  br label %15

59:                                               ; preds = %15
  %60 = call i32 @fclose(ptr noundef nonnull %6) #25
  %61 = getelementptr inbounds %struct.alias_node, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !30
  %63 = icmp eq ptr %62, null
  br i1 %63, label %79, label %64

64:                                               ; preds = %74, %59
  %65 = phi ptr [ %77, %74 ], [ %62, %59 ]
  %66 = phi ptr [ %76, %74 ], [ %61, %59 ]
  %67 = phi ptr [ %75, %74 ], [ %0, %59 ]
  %68 = getelementptr inbounds %struct.alias_node, ptr %65, i64 0, i32 1
  %69 = load ptr, ptr %68, align 8, !tbaa !7
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %74

71:                                               ; preds = %64
  %72 = getelementptr inbounds %struct.alias_node, ptr %65, i64 0, i32 2
  %73 = load ptr, ptr %72, align 8, !tbaa !30
  store ptr %73, ptr %66, align 8, !tbaa !30
  br label %74

74:                                               ; preds = %71, %64
  %75 = phi ptr [ %67, %71 ], [ %65, %64 ]
  %76 = getelementptr inbounds %struct.alias_node, ptr %75, i64 0, i32 2
  %77 = load ptr, ptr %76, align 8, !tbaa !30
  %78 = icmp eq ptr %77, null
  br i1 %78, label %79, label %64, !llvm.loop !37

79:                                               ; preds = %74, %59, %51, %48, %13, %10
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal ptr @add_vert(ptr nocapture noundef %0, ptr noundef %1) #2 {
  %3 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %1, i32 noundef 58) #27
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %2
  store i8 0, ptr %3, align 1, !tbaa !18
  br label %6

6:                                                ; preds = %5, %2
  %7 = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #28
  %8 = icmp eq ptr %7, null
  br i1 %8, label %22, label %9

9:                                                ; preds = %6
  %10 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #27
  %11 = add i64 %10, 1
  %12 = and i64 %11, 4294967295
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #28
  store ptr %13, ptr %7, align 8, !tbaa !17
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %9
  tail call void @free(ptr noundef nonnull %7) #26
  br label %22

16:                                               ; preds = %9
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %1) #26
  %18 = getelementptr inbounds %struct.alias_node, ptr %0, i64 0, i32 2
  %19 = load ptr, ptr %18, align 8, !tbaa !30
  %20 = getelementptr inbounds %struct.alias_node, ptr %7, i64 0, i32 2
  store ptr %19, ptr %20, align 8, !tbaa !30
  %21 = getelementptr inbounds %struct.alias_node, ptr %7, i64 0, i32 1
  store ptr null, ptr %21, align 8, !tbaa !7
  store ptr %7, ptr %18, align 8, !tbaa !30
  br label %22

22:                                               ; preds = %16, %15, %6
  %23 = phi ptr [ null, %15 ], [ %7, %16 ], [ null, %6 ]
  ret ptr %23
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @strip_comments(ptr noundef %0) #9 {
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi ptr [ %0, %1 ], [ %11, %10 ]
  %4 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %3, i32 noundef 40) #27
  %5 = icmp eq ptr %4, null
  br i1 %5, label %14, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds i8, ptr %4, i64 1
  %8 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 41) #27
  %9 = icmp eq ptr %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) %11) #26
  br label %2, !llvm.loop !38

13:                                               ; preds = %6
  %.lcssa1 = phi ptr [ %4, %6 ]
  store i8 0, ptr %.lcssa1, align 1, !tbaa !18
  br label %14

14:                                               ; preds = %13, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @deliver(i32 noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [512 x i8], align 16
  %10 = alloca [512 x i8], align 16
  %11 = alloca %struct.stat, align 8
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %9) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %10) #24
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %11) #24
  %12 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %13 = tail call i32 @fseek(ptr noundef %12, i64 noundef 0, i32 noundef 0) #25
  %14 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %15 = call ptr @fgets(ptr noundef nonnull %6, i32 noundef 512, ptr noundef %14) #25
  %16 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 10) #27
  %17 = icmp eq ptr %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %5
  store i8 0, ptr %16, align 1, !tbaa !18
  br label %19

19:                                               ; preds = %18, %5
  %20 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %21 = call i64 @ftell(ptr noundef %20) #25
  store i8 0, ptr @stderrfile, align 16, !tbaa !18
  %22 = icmp sgt i32 %0, 0
  br i1 %22, label %23, label %252

23:                                               ; preds = %19
  %24 = ptrtoint ptr %7 to i64
  %25 = ptrtoint ptr %8 to i64
  %26 = zext i32 %0 to i64
  br label %27

27:                                               ; preds = %248, %23
  %28 = phi i64 [ 0, %23 ], [ %250, %248 ]
  %29 = phi i32 [ 0, %23 ], [ %249, %248 ]
  %30 = call i32 @unlink(ptr noundef nonnull @stderrfile) #26
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(18) @stderrfile, ptr noundef nonnull align 1 dereferenceable(18) @.str.2.1, i64 18, i1 false) #26
  %31 = call ptr (ptr, ...) @mktemp(ptr noundef nonnull @stderrfile) #26
  %32 = load ptr, ptr @stderr, align 8, !tbaa !14
  %33 = call ptr @freopen(ptr noundef nonnull @stderrfile, ptr noundef nonnull @.str.3.2, ptr noundef %32) #26
  %34 = load i32, ptr @debug, align 4, !tbaa !18
  %35 = icmp eq i32 %34, 2
  br i1 %35, label %39, label %36

36:                                               ; preds = %27
  %37 = load ptr, ptr @stdout, align 8, !tbaa !14
  %38 = call ptr @freopen(ptr noundef nonnull @stderrfile, ptr noundef nonnull @.str.3.2, ptr noundef %37) #26
  br label %39

39:                                               ; preds = %36, %27
  store i8 0, ptr %9, align 16, !tbaa !18
  store i8 0, ptr %8, align 16, !tbaa !18
  store i8 0, ptr %7, align 16, !tbaa !18
  %40 = getelementptr inbounds i32, ptr %3, i64 %28
  %41 = load i32, ptr %40, align 4, !tbaa !18
  %42 = icmp eq i32 %41, 5
  br i1 %42, label %248, label %43

43:                                               ; preds = %39
  %44 = load ptr, ptr @uuxargs, align 8, !tbaa !14
  %45 = icmp eq ptr %44, null
  br i1 %45, label %46, label %55

46:                                               ; preds = %43
  %47 = load i32, ptr @maxnoqueue, align 4, !tbaa !12
  %48 = icmp slt i32 %29, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %46
  %50 = getelementptr inbounds i32, ptr %4, i64 %28
  %51 = load i32, ptr %50, align 4, !tbaa !12
  %52 = load i32, ptr @queuecost, align 4, !tbaa !12
  %53 = icmp sgt i32 %51, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %49, %46
  br label %55

55:                                               ; preds = %54, %49, %43
  %56 = phi ptr [ @.str.1.3, %54 ], [ @.str.8, %49 ], [ %44, %43 ]
  %57 = load i32, ptr @routing, align 4, !tbaa !18
  %58 = icmp eq i32 %57, 1
  %59 = select i1 %58, ptr @.str.4.9, ptr @.str.8
  %60 = icmp eq i32 %57, 0
  %61 = select i1 %60, ptr @.str.1.3, ptr %59
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(11) %7, ptr noundef nonnull align 1 dereferenceable(11) @.str.5.10, i64 11, i1 false)
  %62 = getelementptr inbounds ptr, ptr %1, i64 %28
  %63 = load ptr, ptr %62, align 8, !tbaa !14
  %64 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) @.str.6.11, ptr noundef nonnull @.str.7.12, ptr noundef nonnull %6, ptr noundef nonnull %56, ptr noundef %63) #26
  %65 = icmp eq i32 %41, 1
  br label %69

66:                                               ; preds = %132
  %67 = icmp eq ptr %56, @.str.8
  %68 = getelementptr inbounds ptr, ptr %2, i64 %28
  br label %138

69:                                               ; preds = %132, %55
  %70 = phi i64 [ %28, %55 ], [ %136, %132 ]
  %71 = phi ptr [ %9, %55 ], [ %135, %132 ]
  %72 = phi ptr [ %8, %55 ], [ %134, %132 ]
  %73 = phi ptr [ %7, %55 ], [ %133, %132 ]
  %74 = getelementptr inbounds i32, ptr %3, i64 %70
  %75 = load i32, ptr %74, align 4, !tbaa !18
  %76 = icmp eq i32 %75, %41
  br i1 %76, label %77, label %132

77:                                               ; preds = %69
  %78 = load ptr, ptr %62, align 8, !tbaa !14
  %79 = getelementptr inbounds ptr, ptr %1, i64 %70
  %80 = load ptr, ptr %79, align 8, !tbaa !14
  %81 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %78, ptr noundef %80) #26
  %82 = icmp ne i32 %81, 0
  %83 = ptrtoint ptr %73 to i64
  %84 = sub i64 %83, %24
  %85 = trunc i64 %84 to i32
  %86 = icmp sgt i32 %85, 128
  %87 = select i1 %82, i1 true, i1 %86
  %88 = ptrtoint ptr %72 to i64
  %89 = sub i64 %88, %25
  %90 = trunc i64 %89 to i32
  %91 = icmp sgt i32 %90, 128
  %92 = select i1 %87, i1 true, i1 %91
  br i1 %92, label %132, label %93

93:                                               ; preds = %77
  %94 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %71) #27
  %95 = getelementptr inbounds i8, ptr %71, i64 %94
  %96 = icmp eq ptr %95, %9
  br i1 %96, label %99, label %97

97:                                               ; preds = %93
  %98 = getelementptr inbounds i8, ptr %95, i64 1
  store i8 59, ptr %95, align 1, !tbaa !18
  br label %99

99:                                               ; preds = %97, %93
  %100 = phi ptr [ %98, %97 ], [ %9, %93 ]
  %101 = load i32, ptr @debug, align 4, !tbaa !18
  %102 = icmp eq i32 %101, 1
  %103 = select i1 %102, ptr @.str.10, ptr @.str.8
  %104 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %105 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %100, ptr noundef nonnull dereferenceable(1) @.str.8.13, ptr noundef nonnull @.str.9, ptr noundef nonnull %103, ptr noundef nonnull %61, ptr noundef %104) #26
  %106 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %100) #27
  %107 = getelementptr inbounds i8, ptr %100, i64 %106
  %108 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %73) #27
  %109 = getelementptr inbounds i8, ptr %73, i64 %108
  %110 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %72) #27
  %111 = getelementptr inbounds i8, ptr %72, i64 %110
  br i1 %65, label %112, label %120

112:                                              ; preds = %99
  %113 = getelementptr inbounds ptr, ptr %2, i64 %70
  %114 = load ptr, ptr %113, align 8, !tbaa !14
  %115 = call ptr @postmaster(ptr noundef %114) #26
  %116 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %115) #26
  %117 = load ptr, ptr %113, align 8, !tbaa !14
  %118 = call ptr @postmaster(ptr noundef %117) #26
  %119 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %118) #26
  br label %128

120:                                              ; preds = %99
  %121 = load ptr, ptr %62, align 8, !tbaa !14
  %122 = getelementptr inbounds ptr, ptr %2, i64 %70
  %123 = load ptr, ptr %122, align 8, !tbaa !14
  %124 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %109, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %121, ptr noundef %123) #26
  %125 = load ptr, ptr %62, align 8, !tbaa !14
  %126 = load ptr, ptr %122, align 8, !tbaa !14
  %127 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %107, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef %125, ptr noundef %126) #26
  br label %128

128:                                              ; preds = %120, %112
  %129 = getelementptr inbounds ptr, ptr %2, i64 %70
  %130 = load ptr, ptr %129, align 8, !tbaa !14
  %131 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %111, ptr noundef nonnull dereferenceable(1) @.str.13, ptr noundef %130) #26
  store i32 5, ptr %74, align 4, !tbaa !18
  br label %132

132:                                              ; preds = %128, %77, %69
  %133 = phi ptr [ %109, %128 ], [ %73, %77 ], [ %73, %69 ]
  %134 = phi ptr [ %111, %128 ], [ %72, %77 ], [ %72, %69 ]
  %135 = phi ptr [ %107, %128 ], [ %71, %77 ], [ %71, %69 ]
  %136 = add nuw nsw i64 %70, 1
  %137 = icmp eq i64 %136, %26
  br i1 %137, label %66, label %69, !llvm.loop !39

138:                                              ; preds = %235, %66
  %139 = phi i1 [ false, %235 ], [ true, %66 ]
  %140 = phi i32 [ %223, %235 ], [ %29, %66 ]
  %141 = phi i32 [ 5, %235 ], [ %41, %66 ]
  %142 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %143 = call i32 @fseek(ptr noundef %142, i64 noundef %21, i32 noundef 0) #25
  %144 = icmp eq i32 %141, 0
  br i1 %144, label %204, label %145

145:                                              ; preds = %138
  %146 = icmp ne i32 %141, 1
  %147 = and i1 %146, %67
  %148 = select i1 %146, ptr %8, ptr %7
  %149 = and i1 %139, %147
  %150 = zext i1 %149 to i32
  %151 = add nsw i32 %140, %150
  %152 = select i1 %139, ptr %148, ptr %9
  %153 = load i32, ptr @debug, align 4, !tbaa !18
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %157, label %155

155:                                              ; preds = %145
  %156 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, ptr noundef nonnull %152) #25
  br label %157

157:                                              ; preds = %155, %145
  %158 = call ptr @signal(i32 noundef 13, ptr noundef nonnull inttoptr (i64 1 to ptr)) #26
  %159 = load i32, ptr @debug, align 4, !tbaa !18
  %160 = icmp eq i32 %159, 2
  br i1 %160, label %169, label %161

161:                                              ; preds = %165, %157
  %162 = phi i32 [ %167, %165 ], [ 0, %157 ]
  %163 = call noalias ptr @popen(ptr noundef nonnull %152, ptr noundef nonnull @.str.3.2) #25
  %164 = icmp eq ptr %163, null
  br i1 %164, label %165, label %174

165:                                              ; preds = %161
  %166 = call i32 @sleep(i32 noundef 60) #26
  %167 = add nuw nsw i32 %162, 1
  %168 = icmp eq i32 %167, 10
  br i1 %168, label %172, label %161, !llvm.loop !40

169:                                              ; preds = %157
  %170 = load ptr, ptr @stdout, align 8, !tbaa !14
  %171 = icmp eq ptr %170, null
  br i1 %171, label %172, label %174

172:                                              ; preds = %169, %165
  %.lcssa1 = phi i32 [ %151, %169 ], [ %151, %165 ]
  %.lcssa = phi ptr [ %152, %169 ], [ %152, %165 ]
  store i32 69, ptr @exitstat, align 4, !tbaa !12
  %173 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %.lcssa) #25
  br label %248

174:                                              ; preds = %169, %161
  %175 = phi ptr [ %170, %169 ], [ %163, %161 ]
  %176 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %177 = call i32 @fileno(ptr noundef %176) #26
  %178 = call i32 @fstat(i32 noundef %177, ptr noundef nonnull %11) #26
  %179 = icmp eq i32 %141, 1
  br i1 %179, label %180, label %190

180:                                              ; preds = %174
  %181 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %6, i32 noundef 33) #27
  %182 = icmp eq ptr %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.17, ptr noundef nonnull %6, ptr noundef nonnull @nows) #26
  %185 = call i32 @fputs(ptr noundef nonnull %10, ptr noundef nonnull %175) #25
  br label %193

186:                                              ; preds = %180
  store i8 0, ptr %181, align 1, !tbaa !18
  %187 = getelementptr inbounds i8, ptr %181, i64 1
  %188 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %187, ptr noundef nonnull @nows, ptr noundef nonnull %6) #26
  %189 = call i32 @fputs(ptr noundef nonnull %10, ptr noundef nonnull %175) #25
  store i8 33, ptr %181, align 1, !tbaa !18
  br label %193

190:                                              ; preds = %174
  %191 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.18, ptr noundef nonnull %6, ptr noundef nonnull @nows, ptr noundef nonnull @hostname) #26
  %192 = call i32 @fputs(ptr noundef nonnull %10, ptr noundef nonnull %175) #25
  br label %193

193:                                              ; preds = %190, %186, %183
  %194 = call i32 @getpid() #26
  %195 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) @.str.19, ptr noundef nonnull @hostdomain, ptr noundef nonnull @.str.20, i32 noundef %194, ptr noundef nonnull @arpanows) #26
  br label %196

196:                                              ; preds = %196, %193
  %197 = call i32 @fputs(ptr noundef nonnull %10, ptr noundef nonnull %175) #25
  %198 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %199 = call ptr @fgets(ptr noundef nonnull %10, i32 noundef 512, ptr noundef %198) #25
  %200 = icmp eq ptr %199, null
  br i1 %200, label %201, label %196, !llvm.loop !41

201:                                              ; preds = %196
  %202 = load i32, ptr @debug, align 4, !tbaa !18
  %203 = icmp eq i32 %202, 2
  br i1 %203, label %248, label %211

204:                                              ; preds = %138
  %205 = load ptr, ptr %68, align 8, !tbaa !14
  %206 = load ptr, ptr %62, align 8, !tbaa !14
  %207 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @deliver.errbuf, ptr noundef nonnull dereferenceable(1) @.str.14, ptr noundef %205, ptr noundef %206) #26
  %208 = load i32, ptr @debug, align 4, !tbaa !18
  %209 = icmp eq i32 %208, 2
  br i1 %209, label %248, label %210

210:                                              ; preds = %204
  store i32 68, ptr @exitstat, align 4, !tbaa !12
  br label %221

211:                                              ; preds = %201
  %212 = call i32 @pclose(ptr noundef %175) #25
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %216, label %214

214:                                              ; preds = %211
  %215 = ashr i32 %212, 8
  store i32 %215, ptr @exitstat, align 4, !tbaa !12
  br label %218

216:                                              ; preds = %211
  %217 = load i32, ptr @exitstat, align 4, !tbaa !12
  br label %218

218:                                              ; preds = %216, %214
  %219 = phi i32 [ %217, %216 ], [ %215, %214 ]
  %220 = icmp eq i32 %219, 0
  br i1 %220, label %248, label %221

221:                                              ; preds = %218, %210
  %222 = phi ptr [ @deliver.errbuf, %210 ], [ %152, %218 ]
  %223 = phi i32 [ %140, %210 ], [ %151, %218 ]
  %224 = phi i32 [ 68, %210 ], [ %219, %218 ]
  %225 = load i32, ptr @routing, align 4
  %226 = icmp ne i32 %225, 2
  %227 = select i1 %139, i1 %226, i1 false
  %228 = icmp ne i32 %141, 1
  %229 = and i1 %228, %227
  br i1 %229, label %230, label %236

230:                                              ; preds = %221
  %231 = load i32, ptr @debug, align 4, !tbaa !18
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %235, label %233

233:                                              ; preds = %230
  %234 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, ptr noundef %222, i32 noundef %224, ptr noundef nonnull %9) #25
  br label %235

235:                                              ; preds = %233, %230
  store i32 0, ptr @exitstat, align 4, !tbaa !12
  br label %138

236:                                              ; preds = %221
  %.lcssa7 = phi ptr [ %222, %221 ]
  %.lcssa6 = phi i32 [ %223, %221 ]
  %.lcssa5 = phi i32 [ %224, %221 ]
  %.lcssa4 = phi i32 [ %225, %221 ]
  %.lcssa3 = phi i32 [ %141, %221 ]
  %237 = icmp eq i32 %.lcssa4, 2
  %238 = icmp eq i32 %.lcssa3, 1
  %239 = or i1 %238, %237
  br i1 %239, label %240, label %248

240:                                              ; preds = %236
  %241 = load i32, ptr @debug, align 4, !tbaa !18
  %242 = icmp eq i32 %241, 0
  br i1 %242, label %245, label %243

243:                                              ; preds = %240
  %244 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.22, ptr noundef %.lcssa7, i32 noundef %.lcssa5) #25
  br label %245

245:                                              ; preds = %243, %240
  %246 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %247 = call i32 @fseek(ptr noundef %246, i64 noundef %21, i32 noundef 0) #25
  call void @return_mail(ptr noundef nonnull %6, ptr noundef %.lcssa7) #25
  store i32 0, ptr @exitstat, align 4, !tbaa !12
  br label %248

248:                                              ; preds = %245, %236, %218, %204, %201, %172, %39
  %249 = phi i32 [ %.lcssa1, %172 ], [ %29, %39 ], [ %.lcssa6, %236 ], [ %.lcssa6, %245 ], [ %140, %204 ], [ %151, %201 ], [ %151, %218 ]
  %250 = add nuw nsw i64 %28, 1
  %251 = icmp eq i64 %250, %26
  br i1 %251, label %252, label %27, !llvm.loop !42

252:                                              ; preds = %248, %19
  %253 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %254 = call i32 @fclose(ptr noundef %253) #25
  %255 = load i32, ptr @spoolmaster, align 4, !tbaa !12
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %260, label %257

257:                                              ; preds = %252
  %258 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %259 = call i32 @unlink(ptr noundef %258) #26
  br label %260

260:                                              ; preds = %257, %252
  %261 = call i32 @unlink(ptr noundef nonnull @stderrfile) #26
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %11) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %10) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fseek(ptr nocapture noundef, i64 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i64 @ftell(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @unlink(ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #10

; Function Attrs: optsize
declare ptr @mktemp(...) local_unnamed_addr #11

; Function Attrs: optsize
declare ptr @freopen(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare ptr @signal(i32 noundef, ptr noundef) local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @popen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #3

; Function Attrs: optsize
declare i32 @sleep(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fileno(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fstat(i32 noundef, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fputs(ptr nocapture noundef readonly, ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize
declare i32 @getpid() local_unnamed_addr #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @pclose(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @return_mail(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #24
  %6 = load i32, ptr @debug, align 4, !tbaa !18
  %7 = icmp eq i32 %6, 1
  %8 = select i1 %7, ptr @.str.10, ptr @.str.8
  %9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.23, ptr noundef nonnull @.str.9, ptr noundef nonnull %8) #26
  %10 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #27
  %11 = getelementptr inbounds i8, ptr %3, i64 %10
  %12 = call i32 (ptr, ptr, ptr, ...) @islocal(ptr noundef %0, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = call ptr @postmaster(ptr noundef nonnull %5) #26
  %16 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.11, ptr noundef %15) #26
  br label %19

17:                                               ; preds = %2
  %18 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %11, ptr noundef nonnull dereferenceable(1) @.str.12, ptr noundef nonnull %4, ptr noundef nonnull %5) #26
  br label %19

19:                                               ; preds = %17, %14
  br label %20

20:                                               ; preds = %24, %19
  %21 = phi i32 [ %26, %24 ], [ 0, %19 ]
  %22 = call noalias ptr @popen(ptr noundef nonnull %3, ptr noundef nonnull @.str.3.2) #25
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %30

24:                                               ; preds = %20
  %25 = call i32 @sleep(i32 noundef 60) #26
  %26 = add nuw nsw i32 %21, 1
  %27 = icmp eq i32 %26, 10
  br i1 %27, label %28, label %20, !llvm.loop !43

28:                                               ; preds = %24
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, ptr noundef nonnull %3) #25
  br label %60

30:                                               ; preds = %20
  %.lcssa = phi ptr [ %22, %20 ]
  %31 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.24, ptr noundef nonnull @arpanows) #25
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.25, ptr noundef nonnull @hostdomain) #25
  %33 = call i64 @fwrite(ptr nonnull @.str.26, i64 21, i64 1, ptr nonnull %.lcssa)
  %34 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.27, ptr noundef %0) #25
  %35 = call i32 @fputc(i32 10, ptr nonnull %.lcssa)
  %36 = call i64 @fwrite(ptr nonnull @.str.29, i64 41, i64 1, ptr nonnull %.lcssa)
  %37 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.30, ptr noundef %1) #25
  %38 = call i64 @fwrite(ptr nonnull @.str.31, i64 40, i64 1, ptr nonnull %.lcssa)
  %39 = load ptr, ptr @stderr, align 8, !tbaa !14
  %40 = call i32 @fflush(ptr noundef %39) #25
  %41 = call noalias ptr @fopen(ptr noundef nonnull @stderrfile, ptr noundef nonnull @.str.32) #25
  %42 = icmp eq ptr %41, null
  br i1 %42, label %48, label %43

43:                                               ; preds = %46, %30
  %44 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 512, ptr noundef nonnull %41) #25
  %45 = icmp eq ptr %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %43
  %47 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef nonnull %.lcssa) #25
  br label %43, !llvm.loop !44

48:                                               ; preds = %43, %30
  %49 = call i32 @fclose(ptr noundef %41) #25
  %50 = call i64 @fwrite(ptr nonnull @.str.33, i64 40, i64 1, ptr nonnull %.lcssa)
  %51 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %.lcssa, ptr noundef nonnull @.str.34, ptr noundef %0) #25
  br label %52

52:                                               ; preds = %56, %48
  %53 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %54 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 512, ptr noundef %53) #25
  %55 = icmp eq ptr %54, null
  br i1 %55, label %58, label %56

56:                                               ; preds = %52
  %57 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef nonnull %.lcssa) #25
  br label %52, !llvm.loop !45

58:                                               ; preds = %52
  %59 = call i32 @pclose(ptr noundef nonnull %.lcssa) #25
  br label %60

60:                                               ; preds = %58, %28
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal i32 @unix_smail_getopt(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef readonly %2) #0 {
  %4 = alloca [2 x i8], align 1
  %5 = alloca [2 x i8], align 1
  %6 = load i32, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  %7 = icmp eq i32 %6, 1
  %8 = load i32, ptr @unix_smail_optind, align 4, !tbaa !12
  br i1 %7, label %13, label %9

9:                                                ; preds = %3
  %10 = sext i32 %8 to i64
  %11 = getelementptr inbounds ptr, ptr %1, i64 %10
  %12 = load ptr, ptr %11, align 8, !tbaa !14
  br label %30

13:                                               ; preds = %3
  %14 = icmp slt i32 %8, %0
  br i1 %14, label %15, label %107

15:                                               ; preds = %13
  %16 = sext i32 %8 to i64
  %17 = getelementptr inbounds ptr, ptr %1, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !14
  %19 = load i8, ptr %18, align 1, !tbaa !18
  %20 = icmp eq i8 %19, 45
  br i1 %20, label %21, label %107

21:                                               ; preds = %15
  %22 = getelementptr inbounds i8, ptr %18, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !18
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %107, label %25

25:                                               ; preds = %21
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %18, ptr noundef nonnull dereferenceable(3) @.str.28) #27
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %25
  %29 = add nsw i32 %8, 1
  store i32 %29, ptr @unix_smail_optind, align 4, !tbaa !12
  br label %107

30:                                               ; preds = %25, %9
  %31 = phi ptr [ %12, %9 ], [ %18, %25 ]
  %32 = sext i32 %6 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !18
  %35 = sext i8 %34 to i32
  store i32 %35, ptr @unix_smail_optopt, align 4, !tbaa !12
  %36 = icmp eq i8 %34, 58
  br i1 %36, label %40, label %37

37:                                               ; preds = %30
  %38 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %2, i32 noundef %35) #27
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %67

40:                                               ; preds = %37, %30
  %41 = load i32, ptr @unix_smail_opterr, align 4, !tbaa !12
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %56, label %43

43:                                               ; preds = %40
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %4) #24
  store i8 %34, ptr %4, align 1, !tbaa !18
  %44 = getelementptr inbounds [2 x i8], ptr %4, i64 0, i64 1
  store i8 10, ptr %44, align 1, !tbaa !18
  %45 = load ptr, ptr %1, align 8, !tbaa !14
  %46 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %45) #27
  %47 = trunc i64 %46 to i32
  %48 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef %45, i32 noundef %47) #26
  %49 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef nonnull @.str.1.29, i32 noundef 20) #26
  %50 = call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef nonnull %4, i32 noundef 2) #26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %4) #24
  %51 = load i32, ptr @unix_smail_optind, align 4, !tbaa !12
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds ptr, ptr %1, i64 %52
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = load i32, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  br label %56

56:                                               ; preds = %43, %40
  %57 = phi i32 [ %55, %43 ], [ %6, %40 ]
  %58 = phi ptr [ %54, %43 ], [ %31, %40 ]
  %59 = phi i32 [ %51, %43 ], [ %8, %40 ]
  %60 = add nsw i32 %57, 1
  store i32 %60, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %58, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !18
  %64 = icmp eq i8 %63, 0
  br i1 %64, label %65, label %107

65:                                               ; preds = %56
  %66 = add nsw i32 %59, 1
  store i32 %66, ptr @unix_smail_optind, align 4, !tbaa !12
  store i32 1, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  br label %107

67:                                               ; preds = %37
  %68 = getelementptr inbounds i8, ptr %38, i64 1
  %69 = load i8, ptr %68, align 1, !tbaa !18
  %70 = icmp eq i8 %69, 58
  %71 = add nsw i32 %6, 1
  br i1 %70, label %72, label %99

72:                                               ; preds = %67
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds i8, ptr %31, i64 %73
  %75 = load i8, ptr %74, align 1, !tbaa !18
  %76 = icmp eq i8 %75, 0
  %77 = add nsw i32 %8, 1
  store i32 %77, ptr @unix_smail_optind, align 4, !tbaa !12
  br i1 %76, label %78, label %97

78:                                               ; preds = %72
  %79 = icmp slt i32 %77, %0
  br i1 %79, label %92, label %80

80:                                               ; preds = %78
  %81 = load i32, ptr @unix_smail_opterr, align 4, !tbaa !12
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %91, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 2, ptr nonnull %5) #24
  store i8 %34, ptr %5, align 1, !tbaa !18
  %84 = getelementptr inbounds [2 x i8], ptr %5, i64 0, i64 1
  store i8 10, ptr %84, align 1, !tbaa !18
  %85 = load ptr, ptr %1, align 8, !tbaa !14
  %86 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %85) #27
  %87 = trunc i64 %86 to i32
  %88 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef %85, i32 noundef %87) #26
  %89 = tail call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef nonnull @.str.2.30, i32 noundef 33) #26
  %90 = call i32 (i32, ptr, i32, ...) @write(i32 noundef 2, ptr noundef nonnull %5, i32 noundef 2) #26
  call void @llvm.lifetime.end.p0(i64 2, ptr nonnull %5) #24
  br label %91

91:                                               ; preds = %83, %80
  store i32 1, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  br label %107

92:                                               ; preds = %78
  %93 = add nsw i32 %8, 2
  store i32 %93, ptr @unix_smail_optind, align 4, !tbaa !12
  %94 = sext i32 %77 to i64
  %95 = getelementptr inbounds ptr, ptr %1, i64 %94
  %96 = load ptr, ptr %95, align 8, !tbaa !14
  br label %97

97:                                               ; preds = %92, %72
  %98 = phi ptr [ %96, %92 ], [ %74, %72 ]
  store ptr %98, ptr @optarg, align 8, !tbaa !14
  store i32 1, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  br label %107

99:                                               ; preds = %67
  store i32 %71, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  %100 = sext i32 %71 to i64
  %101 = getelementptr inbounds i8, ptr %31, i64 %100
  %102 = load i8, ptr %101, align 1, !tbaa !18
  %103 = icmp eq i8 %102, 0
  br i1 %103, label %104, label %106

104:                                              ; preds = %99
  store i32 1, ptr @unix_smail_getopt.sp, align 4, !tbaa !12
  %105 = add nsw i32 %8, 1
  store i32 %105, ptr @unix_smail_optind, align 4, !tbaa !12
  br label %106

106:                                              ; preds = %104, %99
  store ptr null, ptr @optarg, align 8, !tbaa !14
  br label %107

107:                                              ; preds = %106, %97, %91, %65, %56, %28, %21, %15, %13
  %108 = phi i32 [ -1, %28 ], [ 63, %91 ], [ -1, %21 ], [ -1, %15 ], [ -1, %13 ], [ 63, %65 ], [ 63, %56 ], [ %35, %106 ], [ %35, %97 ]
  ret i32 %108
}

; Function Attrs: optsize
declare i32 @write(...) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @getpath(ptr noundef %0, ptr noundef %1, ptr nocapture noundef writeonly %2) #14 {
  %4 = load i32, ptr @debug, align 4, !tbaa !18
  %5 = icmp eq i32 %4, 2
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.35, ptr noundef %0) #25
  br label %8

8:                                                ; preds = %6, %3
  %9 = load i64, ptr @getpath.pathlength, align 8, !tbaa !46
  %10 = icmp eq i64 %9, 0
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = load ptr, ptr @pathfile, align 8, !tbaa !14
  %13 = tail call noalias ptr @fopen(ptr noundef %12, ptr noundef nonnull @.str.1.36) #25
  store ptr %13, ptr @getpath.file, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %11
  %16 = load ptr, ptr @pathfile, align 8, !tbaa !14
  %17 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.37, ptr noundef %16) #25
  store i64 -1, ptr @getpath.pathlength, align 8, !tbaa !46
  br label %109

18:                                               ; preds = %11
  %19 = tail call i32 @fseek(ptr noundef nonnull %13, i64 noundef 0, i32 noundef 2) #25
  %20 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %21 = tail call i64 @ftell(ptr noundef %20) #25
  store i64 %21, ptr @getpath.pathlength, align 8, !tbaa !46
  br label %22

22:                                               ; preds = %18, %8
  %23 = phi i64 [ %21, %18 ], [ %9, %8 ]
  %24 = icmp eq i64 %23, -1
  br i1 %24, label %109, label %25

25:                                               ; preds = %22
  %26 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %0) #26
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1)
  %28 = getelementptr inbounds i8, ptr %1, i64 %27
  store i16 9, ptr %28, align 1
  br label %29

29:                                               ; preds = %74, %25
  %30 = phi i64 [ %23, %25 ], [ %77, %74 ]
  %31 = phi i64 [ 0, %25 ], [ %78, %74 ]
  %32 = add nsw i64 %31, %30
  %33 = add nsw i64 %32, 1
  %34 = sdiv i64 %33, 2
  %35 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %36 = tail call i32 @fseek(ptr noundef %35, i64 noundef %34, i32 noundef 0) #25
  %37 = add i64 %32, 2
  %38 = icmp ult i64 %37, 3
  br i1 %38, label %42, label %39

39:                                               ; preds = %39, %29
  %40 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %41 = tail call i32 @getc(ptr noundef %40) #25
  switch i32 %41, label %39 [
    i32 -1, label %109
    i32 10, label %42
  ]

42:                                               ; preds = %39, %29
  br label %43

43:                                               ; preds = %51, %42
  %44 = phi ptr [ %70, %51 ], [ %1, %42 ]
  %45 = load i8, ptr %44, align 1, !tbaa !18
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %79, label %47

47:                                               ; preds = %43
  %48 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %49 = tail call i32 @getc(ptr noundef %48) #25
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %109, label %51

51:                                               ; preds = %47
  %52 = tail call ptr @__ctype_b_loc() #29
  %53 = load ptr, ptr %52, align 8, !tbaa !14
  %54 = sext i32 %49 to i64
  %55 = getelementptr inbounds i16, ptr %53, i64 %54
  %56 = load i16, ptr %55, align 2, !tbaa !47
  %57 = and i16 %56, 256
  %58 = icmp eq i16 %57, 0
  %59 = add nsw i32 %49, 32
  %60 = select i1 %58, i32 %49, i32 %59
  %61 = load i8, ptr %44, align 1, !tbaa !18
  %62 = sext i8 %61 to i32
  %63 = sext i8 %61 to i64
  %64 = getelementptr inbounds i16, ptr %53, i64 %63
  %65 = load i16, ptr %64, align 2, !tbaa !47
  %66 = and i16 %65, 256
  %67 = icmp eq i16 %66, 0
  %68 = add nsw i32 %62, 32
  %69 = select i1 %67, i32 %62, i32 %68
  %70 = getelementptr inbounds i8, ptr %44, i64 1
  %71 = icmp eq i32 %60, %69
  br i1 %71, label %43, label %72, !llvm.loop !49

72:                                               ; preds = %51
  %.lcssa4 = phi i32 [ %60, %51 ]
  %.lcssa3 = phi i32 [ %69, %51 ]
  %73 = icmp slt i64 %31, %34
  br i1 %73, label %74, label %109

74:                                               ; preds = %72
  %75 = icmp slt i32 %.lcssa4, %.lcssa3
  %76 = add nsw i64 %34, -1
  %77 = select i1 %75, i64 %30, i64 %76
  %78 = select i1 %75, i64 %34, i64 %31
  br label %29

79:                                               ; preds = %83, %43
  %80 = phi ptr [ %85, %83 ], [ %1, %43 ]
  %81 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %82 = tail call i32 @getc(ptr noundef %81) #25
  switch i32 %82, label %83 [
    i32 -1, label %86
    i32 10, label %86
    i32 9, label %86
  ]

83:                                               ; preds = %79
  %84 = trunc i32 %82 to i8
  %85 = getelementptr inbounds i8, ptr %80, i64 1
  store i8 %84, ptr %80, align 1, !tbaa !18
  br label %79, !llvm.loop !50

86:                                               ; preds = %79, %79, %79
  %.lcssa2 = phi ptr [ %80, %79 ], [ %80, %79 ], [ %80, %79 ]
  %.lcssa1 = phi i32 [ %82, %79 ], [ %82, %79 ], [ %82, %79 ]
  store i8 0, ptr %.lcssa2, align 1, !tbaa !18
  %87 = icmp eq i32 %.lcssa1, 9
  br i1 %87, label %88, label %109

88:                                               ; preds = %101, %86
  %89 = phi i32 [ %105, %101 ], [ -1, %86 ]
  %90 = load ptr, ptr @getpath.file, align 8, !tbaa !14
  %91 = tail call i32 @getc(ptr noundef %90) #25
  %92 = icmp eq i32 %91, -1
  br i1 %92, label %106, label %93

93:                                               ; preds = %88
  %94 = tail call ptr @__ctype_b_loc() #29
  %95 = load ptr, ptr %94, align 8, !tbaa !14
  %96 = sext i32 %91 to i64
  %97 = getelementptr inbounds i16, ptr %95, i64 %96
  %98 = load i16, ptr %97, align 2, !tbaa !47
  %99 = and i16 %98, 2048
  %100 = icmp eq i16 %99, 0
  br i1 %100, label %106, label %101

101:                                              ; preds = %93
  %102 = tail call i32 @llvm.smax.i32(i32 %89, i32 0)
  %103 = mul nsw i32 %102, 10
  %104 = add nsw i32 %91, -48
  %105 = add nsw i32 %104, %103
  br label %88, !llvm.loop !51

106:                                              ; preds = %93, %88
  %.lcssa = phi i32 [ %89, %93 ], [ %89, %88 ]
  %107 = icmp sgt i32 %.lcssa, -1
  br i1 %107, label %108, label %109

108:                                              ; preds = %106
  store i32 %.lcssa, ptr %2, align 4, !tbaa !12
  br label %109

109:                                              ; preds = %108, %106, %86, %72, %47, %39, %22, %15
  %110 = phi i32 [ 72, %22 ], [ 0, %106 ], [ 0, %108 ], [ 0, %86 ], [ 72, %15 ], [ 68, %47 ], [ 68, %39 ], [ 68, %72 ]
  ret i32 %110
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #15

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #9 {
  %4 = alloca [32 x ptr], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %4) #24
  %8 = load i8, ptr %0, align 1, !tbaa !18
  switch i8 %8, label %40 [
    i8 64, label %9
    i8 0, label %61
  ]

9:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #24
  %10 = getelementptr inbounds i8, ptr %0, i64 1
  %11 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %10) #26
  br label %12

12:                                               ; preds = %23, %9
  %13 = phi ptr [ %5, %9 ], [ %24, %23 ]
  %14 = load i8, ptr %13, align 1, !tbaa !18
  switch i8 %14, label %19 [
    i8 44, label %15
    i8 58, label %25
    i8 0, label %39
  ]

15:                                               ; preds = %12
  %16 = getelementptr inbounds i8, ptr %13, i64 1
  %17 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %16) #26
  %18 = load i8, ptr %13, align 1, !tbaa !18
  br label %19

19:                                               ; preds = %15, %12
  %20 = phi i8 [ %14, %12 ], [ %18, %15 ]
  %21 = icmp eq i8 %20, 64
  br i1 %21, label %22, label %23

22:                                               ; preds = %19
  store i8 33, ptr %13, align 1, !tbaa !18
  br label %23

23:                                               ; preds = %22, %19
  %24 = getelementptr inbounds i8, ptr %13, i64 1
  br label %12, !llvm.loop !52

25:                                               ; preds = %12
  %.lcssa12 = phi ptr [ %13, %12 ]
  store i8 0, ptr %.lcssa12, align 1, !tbaa !18
  %26 = getelementptr inbounds i8, ptr %.lcssa12, i64 1
  %27 = call i32 @parse(ptr noundef nonnull %26, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %33, label %29

29:                                               ; preds = %25
  %30 = call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %31 = getelementptr inbounds i8, ptr %5, i64 %30
  store i16 33, ptr %31, align 1
  %32 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %6) #26
  br label %33

33:                                               ; preds = %29, %25
  %34 = call i64 @strlen(ptr nonnull dereferenceable(1) %5)
  %35 = getelementptr inbounds i8, ptr %5, i64 %34
  store i16 33, ptr %35, align 1
  %36 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) %7) #26
  %37 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %5) #26
  %38 = call i32 @parse(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2) #25
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  br label %177

39:                                               ; preds = %12
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  br label %175

40:                                               ; preds = %51, %3
  %41 = phi i8 [ %58, %51 ], [ %8, %3 ]
  %42 = phi i32 [ %56, %51 ], [ 0, %3 ]
  %43 = phi i32 [ %54, %51 ], [ 0, %3 ]
  %44 = phi ptr [ %53, %51 ], [ %4, %3 ]
  %45 = phi ptr [ %57, %51 ], [ %0, %3 ]
  %46 = icmp eq i32 %42, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %40
  %48 = add nsw i32 %43, 1
  %49 = getelementptr inbounds ptr, ptr %44, i64 1
  store ptr %45, ptr %44, align 8, !tbaa !14
  %50 = load i8, ptr %45, align 1, !tbaa !18
  br label %51

51:                                               ; preds = %47, %40
  %52 = phi i8 [ %41, %40 ], [ %50, %47 ]
  %53 = phi ptr [ %44, %40 ], [ %49, %47 ]
  %54 = phi i32 [ %43, %40 ], [ %48, %47 ]
  %55 = icmp ne i8 %52, 64
  %56 = zext i1 %55 to i32
  %57 = getelementptr inbounds i8, ptr %45, i64 1
  %58 = load i8, ptr %57, align 1, !tbaa !18
  %59 = icmp eq i8 %58, 0
  br i1 %59, label %60, label %40, !llvm.loop !53

60:                                               ; preds = %51
  %.lcssa11 = phi ptr [ %53, %51 ]
  %.lcssa10 = phi i32 [ %54, %51 ]
  %.lcssa9 = phi i1 [ %55, %51 ]
  %.lcssa8 = phi ptr [ %57, %51 ]
  br i1 %.lcssa9, label %67, label %61

61:                                               ; preds = %60, %3
  %62 = phi i32 [ %.lcssa10, %60 ], [ 0, %3 ]
  %63 = phi ptr [ %.lcssa11, %60 ], [ %4, %3 ]
  %64 = phi ptr [ %.lcssa8, %60 ], [ %0, %3 ]
  %65 = add nsw i32 %62, 1
  %66 = getelementptr inbounds ptr, ptr %63, i64 1
  store ptr %64, ptr %63, align 8, !tbaa !14
  br label %67

67:                                               ; preds = %61, %60
  %68 = phi ptr [ %.lcssa11, %60 ], [ %66, %61 ]
  %69 = phi i32 [ %.lcssa10, %60 ], [ %65, %61 ]
  store ptr null, ptr %68, align 8, !tbaa !14
  %70 = icmp sgt i32 %69, 1
  br i1 %70, label %71, label %86

71:                                               ; preds = %67
  %72 = add nsw i32 %69, -1
  %73 = zext i32 %72 to i64
  %74 = getelementptr inbounds [32 x ptr], ptr %4, i64 0, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !14
  %76 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %75) #26
  %77 = load ptr, ptr %4, align 16, !tbaa !14
  %78 = ptrtoint ptr %75 to i64
  %79 = ptrtoint ptr %77 to i64
  %80 = xor i64 %79, -1
  %81 = add i64 %80, %78
  %82 = shl i64 %81, 32
  %83 = ashr exact i64 %82, 32
  %84 = tail call ptr @strncpy(ptr noundef %2, ptr noundef %77, i64 noundef %83) #26
  %85 = getelementptr inbounds i8, ptr %2, i64 %83
  store i8 0, ptr %85, align 1, !tbaa !18
  br label %177

86:                                               ; preds = %67
  %87 = load i8, ptr %0, align 1, !tbaa !18
  %88 = icmp eq i8 %87, 0
  br i1 %88, label %110, label %89

89:                                               ; preds = %100, %86
  %90 = phi i8 [ %107, %100 ], [ %87, %86 ]
  %91 = phi i32 [ %105, %100 ], [ 0, %86 ]
  %92 = phi i32 [ %103, %100 ], [ 0, %86 ]
  %93 = phi ptr [ %102, %100 ], [ %4, %86 ]
  %94 = phi ptr [ %106, %100 ], [ %0, %86 ]
  %95 = icmp eq i32 %91, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %89
  %97 = add nsw i32 %92, 1
  %98 = getelementptr inbounds ptr, ptr %93, i64 1
  store ptr %94, ptr %93, align 8, !tbaa !14
  %99 = load i8, ptr %94, align 1, !tbaa !18
  br label %100

100:                                              ; preds = %96, %89
  %101 = phi i8 [ %90, %89 ], [ %99, %96 ]
  %102 = phi ptr [ %93, %89 ], [ %98, %96 ]
  %103 = phi i32 [ %92, %89 ], [ %97, %96 ]
  %104 = icmp ne i8 %101, 33
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds i8, ptr %94, i64 1
  %107 = load i8, ptr %106, align 1, !tbaa !18
  %108 = icmp eq i8 %107, 0
  br i1 %108, label %109, label %89, !llvm.loop !53

109:                                              ; preds = %100
  %.lcssa7 = phi ptr [ %102, %100 ]
  %.lcssa6 = phi i32 [ %103, %100 ]
  %.lcssa5 = phi i1 [ %104, %100 ]
  %.lcssa4 = phi ptr [ %106, %100 ]
  br i1 %.lcssa5, label %116, label %110

110:                                              ; preds = %109, %86
  %111 = phi i32 [ %.lcssa6, %109 ], [ 0, %86 ]
  %112 = phi ptr [ %.lcssa7, %109 ], [ %4, %86 ]
  %113 = phi ptr [ %.lcssa4, %109 ], [ %0, %86 ]
  %114 = add nsw i32 %111, 1
  %115 = getelementptr inbounds ptr, ptr %112, i64 1
  store ptr %113, ptr %112, align 8, !tbaa !14
  br label %116

116:                                              ; preds = %110, %109
  %117 = phi ptr [ %.lcssa7, %109 ], [ %115, %110 ]
  %118 = phi i32 [ %.lcssa6, %109 ], [ %114, %110 ]
  store ptr null, ptr %117, align 8, !tbaa !14
  %119 = icmp sgt i32 %118, 1
  br i1 %119, label %120, label %175

120:                                              ; preds = %116
  %121 = getelementptr inbounds [32 x ptr], ptr %4, i64 0, i64 1
  %122 = load ptr, ptr %121, align 8, !tbaa !14
  %123 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %122) #26
  %124 = load ptr, ptr %4, align 16, !tbaa !14
  %125 = ptrtoint ptr %122 to i64
  %126 = ptrtoint ptr %124 to i64
  %127 = xor i64 %126, -1
  %128 = add i64 %127, %125
  %129 = shl i64 %128, 32
  %130 = ashr exact i64 %129, 32
  %131 = tail call ptr @strncpy(ptr noundef %1, ptr noundef %124, i64 noundef %130) #26
  %132 = getelementptr inbounds i8, ptr %1, i64 %130
  store i8 0, ptr %132, align 1, !tbaa !18
  %133 = load i8, ptr %1, align 1, !tbaa !18
  %134 = icmp eq i8 %133, 0
  br i1 %134, label %156, label %135

135:                                              ; preds = %146, %120
  %136 = phi i8 [ %153, %146 ], [ %133, %120 ]
  %137 = phi i32 [ %151, %146 ], [ 0, %120 ]
  %138 = phi i32 [ %149, %146 ], [ 0, %120 ]
  %139 = phi ptr [ %148, %146 ], [ %4, %120 ]
  %140 = phi ptr [ %152, %146 ], [ %1, %120 ]
  %141 = icmp eq i32 %137, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %135
  %143 = add nsw i32 %138, 1
  %144 = getelementptr inbounds ptr, ptr %139, i64 1
  store ptr %140, ptr %139, align 8, !tbaa !14
  %145 = load i8, ptr %140, align 1, !tbaa !18
  br label %146

146:                                              ; preds = %142, %135
  %147 = phi i8 [ %136, %135 ], [ %145, %142 ]
  %148 = phi ptr [ %139, %135 ], [ %144, %142 ]
  %149 = phi i32 [ %138, %135 ], [ %143, %142 ]
  %150 = icmp ne i8 %147, 46
  %151 = zext i1 %150 to i32
  %152 = getelementptr inbounds i8, ptr %140, i64 1
  %153 = load i8, ptr %152, align 1, !tbaa !18
  %154 = icmp eq i8 %153, 0
  br i1 %154, label %155, label %135, !llvm.loop !53

155:                                              ; preds = %146
  %.lcssa3 = phi ptr [ %148, %146 ]
  %.lcssa2 = phi i32 [ %149, %146 ]
  %.lcssa1 = phi i1 [ %150, %146 ]
  %.lcssa = phi ptr [ %152, %146 ]
  br i1 %.lcssa1, label %162, label %156

156:                                              ; preds = %155, %120
  %157 = phi i32 [ %.lcssa2, %155 ], [ 0, %120 ]
  %158 = phi ptr [ %.lcssa3, %155 ], [ %4, %120 ]
  %159 = phi ptr [ %.lcssa, %155 ], [ %1, %120 ]
  %160 = add nsw i32 %157, 1
  %161 = getelementptr inbounds ptr, ptr %158, i64 1
  store ptr %159, ptr %158, align 8, !tbaa !14
  br label %162

162:                                              ; preds = %156, %155
  %163 = phi ptr [ %.lcssa3, %155 ], [ %161, %156 ]
  %164 = phi i32 [ %.lcssa2, %155 ], [ %160, %156 ]
  store ptr null, ptr %163, align 8, !tbaa !14
  %165 = icmp slt i32 %164, 2
  br i1 %165, label %177, label %166

166:                                              ; preds = %162
  %167 = add nsw i32 %164, -1
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds [32 x ptr], ptr %4, i64 0, i64 %168
  %170 = load ptr, ptr %169, align 8, !tbaa !14
  %171 = load i8, ptr %170, align 1, !tbaa !18
  %172 = icmp eq i8 %171, 0
  br i1 %172, label %173, label %177

173:                                              ; preds = %166
  %174 = getelementptr inbounds i8, ptr %170, i64 -1
  store i8 0, ptr %174, align 1, !tbaa !18
  br label %177

175:                                              ; preds = %116, %39
  %176 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #26
  store i8 0, ptr %1, align 1
  br label %177

177:                                              ; preds = %175, %173, %166, %162, %71, %33
  %178 = phi i32 [ 1, %175 ], [ 2, %71 ], [ 3, %162 ], [ 2, %173 ], [ 2, %166 ], [ %38, %33 ]
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %4) #24
  ret i32 %178
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @ssplit(ptr noundef %0, i8 noundef signext %1, ptr nocapture noundef writeonly %2) #17 {
  %4 = load i8, ptr %0, align 1, !tbaa !18
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %27, label %6

6:                                                ; preds = %17, %3
  %7 = phi i8 [ %24, %17 ], [ %4, %3 ]
  %8 = phi i32 [ %22, %17 ], [ 0, %3 ]
  %9 = phi i32 [ %20, %17 ], [ 0, %3 ]
  %10 = phi ptr [ %19, %17 ], [ %2, %3 ]
  %11 = phi ptr [ %23, %17 ], [ %0, %3 ]
  %12 = icmp eq i32 %8, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %6
  %14 = add nsw i32 %9, 1
  %15 = getelementptr inbounds ptr, ptr %10, i64 1
  store ptr %11, ptr %10, align 8, !tbaa !14
  %16 = load i8, ptr %11, align 1, !tbaa !18
  br label %17

17:                                               ; preds = %13, %6
  %18 = phi i8 [ %7, %6 ], [ %16, %13 ]
  %19 = phi ptr [ %10, %6 ], [ %15, %13 ]
  %20 = phi i32 [ %9, %6 ], [ %14, %13 ]
  %21 = icmp ne i8 %18, %1
  %22 = zext i1 %21 to i32
  %23 = getelementptr inbounds i8, ptr %11, i64 1
  %24 = load i8, ptr %23, align 1, !tbaa !18
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %6, !llvm.loop !53

26:                                               ; preds = %17
  %.lcssa3 = phi ptr [ %19, %17 ]
  %.lcssa2 = phi i32 [ %20, %17 ]
  %.lcssa1 = phi i1 [ %21, %17 ]
  %.lcssa = phi ptr [ %23, %17 ]
  br i1 %.lcssa1, label %33, label %27

27:                                               ; preds = %26, %3
  %28 = phi i32 [ %.lcssa2, %26 ], [ 0, %3 ]
  %29 = phi ptr [ %.lcssa3, %26 ], [ %2, %3 ]
  %30 = phi ptr [ %.lcssa, %26 ], [ %0, %3 ]
  %31 = add nsw i32 %28, 1
  %32 = getelementptr inbounds ptr, ptr %29, i64 1
  store ptr %30, ptr %29, align 8, !tbaa !14
  br label %33

33:                                               ; preds = %27, %26
  %34 = phi ptr [ %.lcssa3, %26 ], [ %32, %27 ]
  %35 = phi i32 [ %.lcssa2, %26 ], [ %31, %27 ]
  store ptr null, ptr %34, align 8, !tbaa !14
  ret i32 %35
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @build(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #14 {
  switch i32 %2, label %11 [
    i32 1, label %5
    i32 3, label %7
    i32 2, label %9
  ]

5:                                                ; preds = %4
  %6 = tail call ptr @strcpy(ptr nonnull dereferenceable(1) %3, ptr nonnull dereferenceable(1) %1)
  br label %11

7:                                                ; preds = %4
  %8 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.3.38, ptr noundef %0, ptr noundef %1) #26
  br label %11

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) @.str.4.39, ptr noundef %1, ptr noundef %0) #26
  br label %11

11:                                               ; preds = %9, %7, %5, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @islocal(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = tail call i32 @parse(ptr noundef %0, ptr noundef %1, ptr noundef %2) #25
  %5 = icmp eq i32 %4, 1
  br i1 %5, label %16, label %6

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %1, ptr noundef nonnull @hostdomain) #26
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9

9:                                                ; preds = %6
  %10 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %1, ptr noundef nonnull @hostname) #26
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %16, label %12

12:                                               ; preds = %9
  %13 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %1, ptr noundef nonnull @hostuucp) #26
  %14 = icmp eq i32 %13, 0
  %15 = zext i1 %14 to i32
  br label %16

16:                                               ; preds = %12, %9, %6, %3
  %17 = phi i32 [ 1, %9 ], [ 1, %6 ], [ 1, %3 ], [ %15, %12 ]
  ret i32 %17
}

; Function Attrs: nounwind optsize uwtable
define internal void @spool(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [512 x i8], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #24
  %7 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %8 = icmp eq ptr %7, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %2
  %10 = tail call i32 @strncmp(ptr noundef nonnull dereferenceable(1) %7, ptr noundef nonnull dereferenceable(14) @.str.5.42, i64 noundef 7) #27
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %9
  %13 = load ptr, ptr @stderr, align 8, !tbaa !14
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull @.str.6.43, ptr noundef nonnull %7) #30
  tail call void @exit(i32 noundef 75) #31
  unreachable

15:                                               ; preds = %9, %2
  %16 = tail call i32 (...) @setdates() #26
  %17 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %67

19:                                               ; preds = %15
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @spool.splbuf, ptr noundef nonnull align 1 dereferenceable(14) @.str.5.42, i64 14, i1 false) #26
  store ptr @spool.splbuf, ptr @spoolfile, align 8, !tbaa !14
  %20 = tail call ptr (ptr, ...) @mktemp(ptr noundef nonnull @spool.splbuf) #26
  %21 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %22 = tail call noalias ptr @fopen(ptr noundef %21, ptr noundef nonnull @.str.7.44) #25
  store ptr %22, ptr @spoolfp, align 8, !tbaa !14
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %19
  %25 = load ptr, ptr @stderr, align 8, !tbaa !14
  %26 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %25, ptr noundef nonnull @.str.8.45, ptr noundef %26) #30
  tail call void @exit(i32 noundef 73) #31
  unreachable

28:                                               ; preds = %19
  store i32 1, ptr @spoolmaster, align 4, !tbaa !12
  call void @rline(ptr noundef nonnull %4, ptr noundef nonnull %3) #25
  %29 = call i32 @islocal(ptr noundef nonnull %4, ptr noundef nonnull %5, ptr noundef nonnull %6) #25, !range !24
  %30 = icmp ne i32 %29, 0
  %31 = load ptr, ptr @from_addr, align 8
  %32 = icmp ne ptr %31, null
  %33 = select i1 %30, i1 true, i1 %32
  br i1 %33, label %34, label %40

34:                                               ; preds = %28
  call void @def_headers(i32 noundef %0, ptr noundef %1, ptr noundef nonnull %4) #25
  call void @scanheaders(ptr noundef nonnull %3) #25
  call void @compheaders() #25
  %35 = load i8, ptr %3, align 16, !tbaa !18
  %36 = icmp eq i8 %35, 10
  br i1 %36, label %40, label %37

37:                                               ; preds = %34
  %38 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %39 = call i32 @fputs(ptr noundef nonnull @.str.9.46, ptr noundef %38) #25
  br label %40

40:                                               ; preds = %37, %34, %28
  %41 = load ptr, ptr @ieof, align 8, !tbaa !14
  %42 = icmp eq ptr %41, null
  br i1 %42, label %61, label %43

43:                                               ; preds = %40
  %44 = getelementptr inbounds [512 x i8], ptr %3, i64 0, i64 1
  br label %45

45:                                               ; preds = %58, %43
  %46 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %47 = call i32 @fputs(ptr noundef nonnull %3, ptr noundef %46) #25
  %48 = load ptr, ptr @stdin, align 8, !tbaa !14
  %49 = call ptr @fgets(ptr noundef nonnull %3, i32 noundef 512, ptr noundef %48) #25
  %50 = icmp eq ptr %49, null
  br i1 %50, label %57, label %51

51:                                               ; preds = %45
  %52 = load i8, ptr %3, align 16, !tbaa !18
  %53 = icmp eq i8 %52, 46
  %54 = load i8, ptr %44, align 1
  %55 = icmp eq i8 %54, 10
  %56 = select i1 %53, i1 %55, i1 false
  br i1 %56, label %57, label %58

57:                                               ; preds = %51, %45
  store ptr null, ptr @ieof, align 8, !tbaa !14
  br label %61

58:                                               ; preds = %51
  %59 = load ptr, ptr @ieof, align 8, !tbaa !14
  %60 = icmp eq ptr %59, null
  br i1 %60, label %61, label %45, !llvm.loop !54

61:                                               ; preds = %58, %57, %40
  %62 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %63 = call i32 @fclose(ptr noundef %62) #25
  %64 = load ptr, ptr @stdin, align 8, !tbaa !14
  %65 = call i32 @fclose(ptr noundef %64) #25
  %66 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  br label %67

67:                                               ; preds = %61, %15
  %68 = phi ptr [ %66, %61 ], [ %17, %15 ]
  %69 = call noalias ptr @fopen(ptr noundef %68, ptr noundef nonnull @.str.10.47) #25
  store ptr %69, ptr @spoolfp, align 8, !tbaa !14
  %70 = icmp eq ptr %69, null
  br i1 %70, label %71, label %75

71:                                               ; preds = %67
  %72 = load ptr, ptr @stderr, align 8, !tbaa !14
  %73 = load ptr, ptr @spoolfile, align 8, !tbaa !14
  %74 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %72, ptr noundef nonnull @.str.11.48, ptr noundef %73) #30
  call void @exit(i32 noundef 75) #31
  unreachable

75:                                               ; preds = %67
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %3) #24
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: noreturn optsize
declare void @exit(i32 noundef) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal void @rline(ptr noundef %0, ptr noundef %1) #0 {
  %3 = alloca [16 x ptr], align 16
  %4 = alloca [512 x i8], align 16
  %5 = alloca [512 x i8], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  %9 = alloca [128 x ptr], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %9) #24
  %10 = load i32, ptr @spoolmaster, align 4, !tbaa !12
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %220, label %12

12:                                               ; preds = %2
  store i8 0, ptr %6, align 16, !tbaa !18
  store i8 0, ptr %0, align 1, !tbaa !18
  store i8 0, ptr %7, align 16, !tbaa !18
  %13 = getelementptr inbounds [512 x i8], ptr %7, i64 0, i64 1
  %14 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 1
  br label %15

15:                                               ; preds = %97, %12
  %16 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #26
  %17 = load ptr, ptr @ieof, align 8, !tbaa !14
  %18 = icmp eq ptr %17, null
  br i1 %18, label %103, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr @stdin, align 8, !tbaa !14
  %21 = call ptr @fgets(ptr noundef nonnull %7, i32 noundef 512, ptr noundef %20) #25
  %22 = icmp eq ptr %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %19
  %24 = load i8, ptr %7, align 16, !tbaa !18
  %25 = icmp eq i8 %24, 46
  %26 = load i8, ptr %13, align 1
  %27 = icmp eq i8 %26, 10
  %28 = select i1 %25, i1 %27, i1 false
  br i1 %28, label %29, label %30

29:                                               ; preds = %23, %19
  store ptr null, ptr @ieof, align 8, !tbaa !14
  br label %103

30:                                               ; preds = %23
  %31 = call i32 @bcmp(ptr noundef nonnull dereferenceable(5) @.str.12.64, ptr noundef nonnull dereferenceable(5) %7, i64 5)
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %36, label %33

33:                                               ; preds = %30
  %34 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) @.str.13.65, ptr noundef nonnull dereferenceable(6) %7, i64 6)
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %103

36:                                               ; preds = %33, %30
  %37 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %7, i32 noundef 10) #27
  %38 = icmp eq ptr %37, null
  br i1 %38, label %41, label %39

39:                                               ; preds = %36
  store i8 0, ptr %37, align 1, !tbaa !18
  %40 = load i8, ptr %7, align 16, !tbaa !18
  br label %41

41:                                               ; preds = %39, %36
  %42 = phi i8 [ %40, %39 ], [ %24, %36 ]
  %43 = icmp eq i8 %42, 0
  br i1 %43, label %65, label %44

44:                                               ; preds = %55, %41
  %45 = phi i8 [ %62, %55 ], [ %42, %41 ]
  %46 = phi i32 [ %60, %55 ], [ 0, %41 ]
  %47 = phi i32 [ %58, %55 ], [ 0, %41 ]
  %48 = phi ptr [ %57, %55 ], [ %3, %41 ]
  %49 = phi ptr [ %61, %55 ], [ %7, %41 ]
  %50 = icmp eq i32 %46, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %44
  %52 = add nsw i32 %47, 1
  %53 = getelementptr inbounds ptr, ptr %48, i64 1
  store ptr %49, ptr %48, align 8, !tbaa !14
  %54 = load i8, ptr %49, align 1, !tbaa !18
  br label %55

55:                                               ; preds = %51, %44
  %56 = phi i8 [ %45, %44 ], [ %54, %51 ]
  %57 = phi ptr [ %48, %44 ], [ %53, %51 ]
  %58 = phi i32 [ %47, %44 ], [ %52, %51 ]
  %59 = icmp ne i8 %56, 32
  %60 = zext i1 %59 to i32
  %61 = getelementptr inbounds i8, ptr %49, i64 1
  %62 = load i8, ptr %61, align 1, !tbaa !18
  %63 = icmp eq i8 %62, 0
  br i1 %63, label %64, label %44, !llvm.loop !53

64:                                               ; preds = %55
  %.lcssa7 = phi ptr [ %57, %55 ]
  %.lcssa6 = phi i32 [ %58, %55 ]
  %.lcssa5 = phi i1 [ %59, %55 ]
  %.lcssa4 = phi ptr [ %61, %55 ]
  br i1 %.lcssa5, label %71, label %65

65:                                               ; preds = %64, %41
  %66 = phi i32 [ %.lcssa6, %64 ], [ 0, %41 ]
  %67 = phi ptr [ %.lcssa7, %64 ], [ %3, %41 ]
  %68 = phi ptr [ %.lcssa4, %64 ], [ %7, %41 ]
  %69 = add nsw i32 %66, 1
  %70 = getelementptr inbounds ptr, ptr %67, i64 1
  store ptr %68, ptr %67, align 8, !tbaa !14
  br label %71

71:                                               ; preds = %65, %64
  %72 = phi ptr [ %.lcssa7, %64 ], [ %70, %65 ]
  %73 = phi i32 [ %.lcssa6, %64 ], [ %69, %65 ]
  store ptr null, ptr %72, align 8, !tbaa !14
  %74 = icmp sgt i32 %73, 3
  br i1 %74, label %75, label %90

75:                                               ; preds = %71
  %76 = add nsw i32 %73, -3
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !14
  %80 = call i32 @strncmp(ptr noundef nonnull dereferenceable(13) @.str.14.66, ptr noundef nonnull dereferenceable(1) %79, i64 noundef 12) #27
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %82, label %92

82:                                               ; preds = %75
  %83 = add nsw i32 %73, -1
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds [16 x ptr], ptr %3, i64 0, i64 %84
  %86 = load ptr, ptr %85, align 8, !tbaa !14
  %87 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %86) #26
  %88 = call i64 @strlen(ptr nonnull dereferenceable(1) %0)
  %89 = getelementptr inbounds i8, ptr %0, i64 %88
  store i16 33, ptr %89, align 1
  br label %92

90:                                               ; preds = %71
  %91 = icmp slt i32 %73, 2
  br i1 %91, label %103, label %92

92:                                               ; preds = %90, %82, %75
  %93 = load ptr, ptr %14, align 8, !tbaa !14
  %94 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %93, i32 noundef 32) #27
  %95 = icmp eq ptr %94, null
  br i1 %95, label %97, label %96

96:                                               ; preds = %92
  store i8 0, ptr %94, align 1, !tbaa !18
  br label %97

97:                                               ; preds = %96, %92
  %98 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %93) #26
  %99 = call i32 @parse(ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %4) #25
  %100 = load i8, ptr %5, align 16, !tbaa !18
  %101 = icmp eq i8 %100, 0
  %102 = select i1 %101, i32 1, i32 3
  call void @build(ptr noundef nonnull %5, ptr noundef nonnull %4, i32 noundef %102, ptr noundef nonnull %6) #25
  br label %15

103:                                              ; preds = %90, %33, %29, %15
  %104 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %6) #26
  %105 = load i8, ptr %0, align 1, !tbaa !18
  %106 = icmp eq i8 %105, 0
  br i1 %106, label %107, label %116

107:                                              ; preds = %103
  %108 = call i32 @getuid() #26
  %109 = call ptr (i32, ...) @pwuid(i32 noundef %108) #26
  %110 = icmp eq ptr %109, null
  br i1 %110, label %111, label %112

111:                                              ; preds = %107
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %0, ptr noundef nonnull align 1 dereferenceable(7) @.str.15.67, i64 7, i1 false) #26
  br label %116

112:                                              ; preds = %107
  %113 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %109) #26
  %114 = load i8, ptr %0, align 1, !tbaa !18
  %115 = icmp eq i8 %114, 0
  br i1 %115, label %139, label %116

116:                                              ; preds = %112, %111, %103
  %117 = phi i8 [ %105, %103 ], [ 110, %111 ], [ %114, %112 ]
  br label %118

118:                                              ; preds = %129, %116
  %119 = phi i8 [ %136, %129 ], [ %117, %116 ]
  %120 = phi i32 [ %134, %129 ], [ 0, %116 ]
  %121 = phi i32 [ %132, %129 ], [ 0, %116 ]
  %122 = phi ptr [ %131, %129 ], [ %9, %116 ]
  %123 = phi ptr [ %135, %129 ], [ %0, %116 ]
  %124 = icmp eq i32 %120, 0
  br i1 %124, label %125, label %129

125:                                              ; preds = %118
  %126 = add nsw i32 %121, 1
  %127 = getelementptr inbounds ptr, ptr %122, i64 1
  store ptr %123, ptr %122, align 8, !tbaa !14
  %128 = load i8, ptr %123, align 1, !tbaa !18
  br label %129

129:                                              ; preds = %125, %118
  %130 = phi i8 [ %119, %118 ], [ %128, %125 ]
  %131 = phi ptr [ %122, %118 ], [ %127, %125 ]
  %132 = phi i32 [ %121, %118 ], [ %126, %125 ]
  %133 = icmp ne i8 %130, 33
  %134 = zext i1 %133 to i32
  %135 = getelementptr inbounds i8, ptr %123, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !18
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %118, !llvm.loop !53

138:                                              ; preds = %129
  %.lcssa3 = phi ptr [ %131, %129 ]
  %.lcssa2 = phi i32 [ %132, %129 ]
  %.lcssa1 = phi i1 [ %133, %129 ]
  %.lcssa = phi ptr [ %135, %129 ]
  br i1 %.lcssa1, label %145, label %139

139:                                              ; preds = %138, %112
  %140 = phi i32 [ %.lcssa2, %138 ], [ 0, %112 ]
  %141 = phi ptr [ %.lcssa3, %138 ], [ %9, %112 ]
  %142 = phi ptr [ %.lcssa, %138 ], [ %0, %112 ]
  %143 = add nsw i32 %140, 1
  %144 = getelementptr inbounds ptr, ptr %141, i64 1
  store ptr %142, ptr %141, align 8, !tbaa !14
  br label %145

145:                                              ; preds = %139, %138
  %146 = phi ptr [ %.lcssa3, %138 ], [ %144, %139 ]
  %147 = phi i32 [ %.lcssa2, %138 ], [ %143, %139 ]
  store ptr null, ptr %146, align 8, !tbaa !14
  %148 = add i32 %147, -1
  %149 = icmp sgt i32 %147, 1
  br i1 %149, label %151, label %150

150:                                              ; preds = %145
  store i8 0, ptr %8, align 16, !tbaa !18
  br label %211

151:                                              ; preds = %145
  %152 = zext i32 %148 to i64
  br label %159

153:                                              ; preds = %174
  %154 = icmp sgt i32 %147, 2
  br i1 %154, label %155, label %187

155:                                              ; preds = %153
  %156 = add nsw i32 %147, -2
  %157 = zext i32 %156 to i64
  %158 = load ptr, ptr %9, align 16, !tbaa !14
  br label %176

159:                                              ; preds = %174, %151
  %160 = phi i64 [ 0, %151 ], [ %165, %174 ]
  %161 = getelementptr inbounds [128 x ptr], ptr %9, i64 0, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !14
  %163 = load i8, ptr %162, align 1, !tbaa !18
  %164 = icmp eq i8 %163, 0
  %165 = add nuw nsw i64 %160, 1
  br i1 %164, label %174, label %166

166:                                              ; preds = %159
  %167 = getelementptr inbounds [128 x ptr], ptr %9, i64 0, i64 %165
  %168 = load ptr, ptr %167, align 8, !tbaa !14
  %169 = getelementptr inbounds i8, ptr %168, i64 -1
  store i8 0, ptr %169, align 1, !tbaa !18
  %170 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef nonnull %162, ptr noundef nonnull @hostdomain) #26
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %174

172:                                              ; preds = %166
  %173 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %162, ptr noundef nonnull dereferenceable(1) @hostname) #26
  br label %174

174:                                              ; preds = %172, %166, %159
  %175 = icmp eq i64 %165, %152
  br i1 %175, label %153, label %159, !llvm.loop !55

176:                                              ; preds = %185, %155
  %177 = phi ptr [ %158, %155 ], [ %181, %185 ]
  %178 = phi i64 [ 0, %155 ], [ %179, %185 ]
  %179 = add nuw nsw i64 %178, 1
  %180 = getelementptr inbounds [128 x ptr], ptr %9, i64 0, i64 %179
  %181 = load ptr, ptr %180, align 8, !tbaa !14
  %182 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %177, ptr noundef %181) #26
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %185

184:                                              ; preds = %176
  store i8 0, ptr %177, align 1, !tbaa !18
  br label %185

185:                                              ; preds = %184, %176
  %186 = icmp eq i64 %179, %157
  br i1 %186, label %187, label %176, !llvm.loop !56

187:                                              ; preds = %185, %153
  store i8 0, ptr %8, align 16, !tbaa !18
  br i1 %149, label %188, label %211

188:                                              ; preds = %187
  %189 = zext i32 %148 to i64
  br label %190

190:                                              ; preds = %206, %188
  %191 = phi i64 [ 0, %188 ], [ %207, %206 ]
  %192 = getelementptr inbounds [128 x ptr], ptr %9, i64 0, i64 %191
  %193 = load ptr, ptr %192, align 8, !tbaa !14
  %194 = load i8, ptr %193, align 1, !tbaa !18
  %195 = icmp eq i8 %194, 0
  br i1 %195, label %206, label %196

196:                                              ; preds = %190
  %197 = load i8, ptr %8, align 16, !tbaa !18
  %198 = icmp eq i8 %197, 0
  br i1 %198, label %199, label %202

199:                                              ; preds = %196
  %200 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef nonnull %193, ptr noundef nonnull @hostname) #26
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %206, label %202

202:                                              ; preds = %199, %196
  %203 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %193) #26
  %204 = call i64 @strlen(ptr nonnull dereferenceable(1) %8)
  %205 = getelementptr inbounds i8, ptr %8, i64 %204
  store i16 33, ptr %205, align 1
  br label %206

206:                                              ; preds = %202, %199, %190
  %207 = add nuw nsw i64 %191, 1
  %208 = icmp eq i64 %207, %189
  br i1 %208, label %209, label %190, !llvm.loop !57

209:                                              ; preds = %206
  %210 = zext i32 %148 to i64
  br label %211

211:                                              ; preds = %209, %187, %150
  %212 = phi i64 [ %210, %209 ], [ 0, %150 ], [ 0, %187 ]
  %213 = getelementptr inbounds [128 x ptr], ptr %9, i64 0, i64 %212
  %214 = load ptr, ptr %213, align 8, !tbaa !14
  %215 = call ptr @strcat(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %214) #26
  %216 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %8) #26
  %217 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %7) #26
  %218 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %218, ptr noundef nonnull @.str.16.50, ptr noundef nonnull %0) #25
  br label %220

220:                                              ; preds = %211, %2
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %9) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %3) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @def_headers(i32 noundef %0, ptr nocapture noundef readonly %1, ptr noundef %2) #0 {
  tail call void @def_to(i32 noundef %0, ptr noundef %1) #25
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(7) @dateline, ptr noundef nonnull align 1 dereferenceable(7) @.str.19.56, i64 7, i1 false) #26
  %4 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @dateline, ptr noundef nonnull dereferenceable(1) @arpanows) #26
  tail call void @def_from(ptr noundef %2) #25
  tail call void @def_mid() #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @scanheaders(ptr noundef %0) #0 {
  %2 = load ptr, ptr @ieof, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %32, label %4

4:                                                ; preds = %1
  %5 = getelementptr inbounds i8, ptr %0, i64 1
  br label %6

6:                                                ; preds = %29, %4
  %7 = phi i1 [ true, %4 ], [ false, %29 ]
  %8 = load i8, ptr %0, align 1, !tbaa !18
  %9 = icmp eq i8 %8, 10
  br i1 %9, label %32, label %10

10:                                               ; preds = %6
  br i1 %7, label %12, label %11

11:                                               ; preds = %10
  switch i8 %8, label %12 [
    i8 32, label %16
    i8 9, label %16
  ]

12:                                               ; preds = %11, %10
  %13 = tail call i32 @isheader(ptr noundef nonnull %0) #25, !range !24
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %32, label %15

15:                                               ; preds = %12
  tail call void @haveheaders(ptr noundef nonnull %0) #25
  br label %16

16:                                               ; preds = %15, %11, %11
  %17 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %18 = tail call i32 @fputs(ptr noundef nonnull %0, ptr noundef %17) #25
  %19 = load ptr, ptr @stdin, align 8, !tbaa !14
  %20 = tail call ptr @fgets(ptr noundef nonnull %0, i32 noundef 512, ptr noundef %19) #25
  %21 = icmp eq ptr %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %16
  %23 = load i8, ptr %0, align 1, !tbaa !18
  %24 = icmp eq i8 %23, 46
  br i1 %24, label %25, label %29

25:                                               ; preds = %22
  %26 = load i8, ptr %5, align 1, !tbaa !18
  %27 = icmp eq i8 %26, 10
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %16
  store ptr null, ptr @ieof, align 8, !tbaa !14
  br label %32

29:                                               ; preds = %25, %22
  %30 = load ptr, ptr @ieof, align 8, !tbaa !14
  %31 = icmp eq ptr %30, null
  br i1 %31, label %32, label %6, !llvm.loop !58

32:                                               ; preds = %29, %28, %12, %6, %1
  %33 = tail call i32 @isheader(ptr noundef %0) #25, !range !24
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %32
  store i8 0, ptr %0, align 1, !tbaa !18
  br label %36

36:                                               ; preds = %35, %32
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @compheaders() #14 {
  %1 = load ptr, ptr @reqtab, align 16, !tbaa !59
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %13, %0
  %4 = phi ptr [ %14, %13 ], [ @reqtab, %0 ]
  %5 = getelementptr inbounds %struct.reqheaders, ptr %4, i64 0, i32 2
  %6 = load i8, ptr %5, align 8, !tbaa !61
  %7 = icmp eq i8 %6, 89
  br i1 %7, label %13, label %8

8:                                                ; preds = %3
  %9 = load ptr, ptr @spoolfp, align 8, !tbaa !14
  %10 = getelementptr inbounds %struct.reqheaders, ptr %4, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !62
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.16.50, ptr noundef %11) #25
  br label %13

13:                                               ; preds = %8, %3
  %14 = getelementptr inbounds %struct.reqheaders, ptr %4, i64 1
  %15 = load ptr, ptr %14, align 8, !tbaa !59
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %3, !llvm.loop !63

17:                                               ; preds = %13, %0
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @isheader(ptr noundef readonly %0) #19 {
  %2 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %0, i32 noundef 58) #27
  %3 = icmp eq ptr %2, null
  %4 = icmp eq ptr %2, %0
  %5 = or i1 %3, %4
  br i1 %5, label %14, label %9

6:                                                ; preds = %9
  %7 = getelementptr inbounds i8, ptr %10, i64 1
  %8 = icmp eq ptr %7, %2
  br i1 %8, label %14, label %9, !llvm.loop !64

9:                                                ; preds = %6, %1
  %10 = phi ptr [ %7, %6 ], [ %0, %1 ]
  %11 = load i8, ptr %10, align 1, !tbaa !18
  %12 = add i8 %11, -127
  %13 = icmp ult i8 %12, -94
  br i1 %13, label %14, label %6

14:                                               ; preds = %9, %6, %1
  %15 = phi i32 [ 0, %1 ], [ 1, %6 ], [ 0, %9 ]
  ret i32 %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @haveheaders(ptr noundef %0) #0 {
  %2 = load ptr, ptr @reqtab, align 16, !tbaa !59
  %3 = icmp eq ptr %2, null
  br i1 %3, label %24, label %4

4:                                                ; preds = %20, %1
  %5 = phi ptr [ %22, %20 ], [ %2, %1 ]
  %6 = phi ptr [ %21, %20 ], [ @reqtab, %1 ]
  %7 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #27
  %8 = tail call i32 (ptr, ptr, i64, ...) @strncmpic(ptr noundef nonnull %5, ptr noundef %0, i64 noundef %7) #26
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %4
  %.lcssa = phi ptr [ %6, %4 ]
  %11 = tail call i32 (ptr, ptr, i32, ...) @strncmpic(ptr noundef nonnull @.str.17.53, ptr noundef %0, i32 noundef 5) #26
  %12 = icmp eq i32 %11, 0
  %13 = load ptr, ptr @from_addr, align 8
  %14 = icmp ne ptr %13, null
  %15 = select i1 %12, i1 %14, i1 false
  br i1 %15, label %16, label %18

16:                                               ; preds = %10
  %17 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) @.str.18.55, ptr noundef nonnull %13) #26
  br label %18

18:                                               ; preds = %16, %10
  %19 = getelementptr inbounds %struct.reqheaders, ptr %.lcssa, i64 0, i32 2
  store i8 89, ptr %19, align 8, !tbaa !61
  br label %24

20:                                               ; preds = %4
  %21 = getelementptr inbounds %struct.reqheaders, ptr %6, i64 1
  %22 = load ptr, ptr %21, align 8, !tbaa !59
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %4, !llvm.loop !65

24:                                               ; preds = %20, %18, %1
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @def_to(i32 noundef %0, ptr nocapture noundef readonly %1) #9 {
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(5) @toline, ptr noundef nonnull align 1 dereferenceable(5) @.str.25.62, i64 5, i1 false) #26
  %3 = icmp sgt i32 %0, 0
  br i1 %3, label %4, label %39

4:                                                ; preds = %2
  %5 = zext i32 %0 to i64
  %6 = zext i32 %0 to i64
  br label %7

7:                                                ; preds = %36, %4
  %8 = phi i64 [ 0, %4 ], [ %24, %36 ]
  %9 = phi ptr [ @toline, %4 ], [ %37, %36 ]
  %10 = getelementptr inbounds ptr, ptr %1, i64 %8
  %11 = load ptr, ptr %10, align 8, !tbaa !14
  %12 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %11) #26
  %13 = load ptr, ptr %10, align 8, !tbaa !14
  %14 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 33) #27
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %7
  %17 = tail call ptr @strchr(ptr noundef nonnull dereferenceable(1) %13, i32 noundef 64) #27
  %18 = icmp eq ptr %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %9)
  %21 = getelementptr inbounds i8, ptr %9, i64 %20
  store i16 64, ptr %21, align 1
  %22 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) @hostdomain) #26
  br label %23

23:                                               ; preds = %19, %16, %7
  %24 = add nuw nsw i64 %8, 1
  %25 = icmp ult i64 %24, %5
  br i1 %25, label %26, label %36

26:                                               ; preds = %23
  %27 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #27
  %28 = trunc i64 %27 to i32
  %29 = icmp sgt i32 %28, 50
  %30 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %9)
  %31 = getelementptr inbounds i8, ptr %9, i64 %30
  br i1 %29, label %32, label %35

32:                                               ; preds = %26
  store i32 592428, ptr %31, align 1
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #27
  %34 = getelementptr inbounds i8, ptr %9, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !18
  br label %36

35:                                               ; preds = %26
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %31, ptr noundef nonnull align 1 dereferenceable(3) @.str.28.63, i64 3, i1 false)
  br label %36

36:                                               ; preds = %35, %32, %23
  %37 = phi ptr [ %34, %32 ], [ %9, %35 ], [ %9, %23 ]
  %38 = icmp eq i64 %24, %6
  br i1 %38, label %39, label %7, !llvm.loop !66

39:                                               ; preds = %36, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @def_from(ptr noundef %0) #0 {
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #24
  %3 = load ptr, ptr @from_addr, align 8, !tbaa !14
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fromline, ptr noundef nonnull dereferenceable(1) @.str.21.58, ptr noundef nonnull %3) #26
  br label %27

7:                                                ; preds = %1
  store i8 0, ptr %2, align 16, !tbaa !18
  %8 = tail call ptr (ptr, ...) @getenv(ptr noundef nonnull @.str.22.59) #26
  %9 = icmp eq ptr %8, null
  br i1 %9, label %10, label %17

10:                                               ; preds = %7
  %11 = tail call i32 @getuid() #26
  %12 = tail call ptr (i32, ...) @pwuid(i32 noundef %11) #26
  %13 = icmp eq ptr %12, null
  br i1 %13, label %20, label %14

14:                                               ; preds = %10
  %15 = tail call ptr (ptr, ...) @pwfnam(ptr noundef nonnull %12) #26
  %16 = icmp eq ptr %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %14, %7
  %18 = phi ptr [ %8, %7 ], [ %15, %14 ]
  %19 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %18) #26
  br label %20

20:                                               ; preds = %17, %14, %10
  %21 = load i8, ptr %2, align 16, !tbaa !18
  %22 = icmp eq i8 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20
  %24 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fromline, ptr noundef nonnull dereferenceable(1) @.str.23.60, ptr noundef %0, ptr noundef nonnull @hostdomain, ptr noundef nonnull %2) #26
  br label %27

25:                                               ; preds = %20
  %26 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @fromline, ptr noundef nonnull dereferenceable(1) @.str.24.61, ptr noundef %0, ptr noundef nonnull @hostdomain) #26
  br label %27

27:                                               ; preds = %25, %23, %5
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @def_mid() #0 {
  %1 = load ptr, ptr @gmt, align 8, !tbaa !14
  %2 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 5
  %3 = load i32, ptr %2, align 4, !tbaa !67
  %4 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 4
  %5 = load i32, ptr %4, align 8, !tbaa !69
  %6 = add nsw i32 %5, 1
  %7 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 3
  %8 = load i32, ptr %7, align 4, !tbaa !70
  %9 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !71
  %11 = getelementptr inbounds %struct.tm, ptr %1, i64 0, i32 1
  %12 = load i32, ptr %11, align 4, !tbaa !72
  %13 = tail call i32 @getpid() #26
  %14 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) @midline, ptr noundef nonnull dereferenceable(1) @.str.20.57, i32 noundef %3, i32 noundef %6, i32 noundef %8, i32 noundef %10, i32 noundef %12, i32 noundef %13, ptr noundef nonnull @hostdomain) #26
  ret void
}

; Function Attrs: optsize
declare ptr @getenv(...) local_unnamed_addr #11

; Function Attrs: nounwind optsize
declare i32 @getuid() local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca [500 x ptr], align 16
  %4 = alloca [500 x ptr], align 16
  %5 = alloca [500 x i32], align 16
  %6 = alloca [500 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %3) #24
  call void @llvm.lifetime.start.p0(i64 4000, ptr nonnull %4) #24
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 2000, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  %9 = load ptr, ptr %1, align 8, !tbaa !14
  %10 = tail call ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 47) #27
  %11 = icmp eq ptr %10, null
  %12 = getelementptr inbounds i8, ptr %10, i64 1
  %13 = select i1 %11, ptr %9, ptr %12
  %14 = load i8, ptr %13, align 1, !tbaa !18
  %15 = icmp eq i8 %14, 114
  br i1 %15, label %17, label %16

16:                                               ; preds = %2
  store i32 0, ptr @handle, align 4, !tbaa !18
  br label %17

17:                                               ; preds = %16, %2
  br label %18

18:                                               ; preds = %21, %17
  %19 = phi i32 [ 0, %17 ], [ %22, %21 ]
  %20 = tail call i32 (i32, ptr, ptr, ...) @unix_smail_getopt(i32 noundef %0, ptr noundef nonnull %1, ptr noundef nonnull @.str.3.68) #26
  switch i32 %20, label %72 [
    i32 -1, label %75
    i32 100, label %23
    i32 118, label %24
    i32 65, label %21
    i32 70, label %25
    i32 114, label %27
    i32 82, label %28
    i32 108, label %29
    i32 76, label %30
    i32 102, label %31
    i32 112, label %33
    i32 117, label %35
    i32 97, label %37
    i32 110, label %39
    i32 72, label %41
    i32 104, label %44
    i32 109, label %47
    i32 99, label %59
    i32 113, label %60
  ]

21:                                               ; preds = %70, %60, %59, %57, %47, %44, %41, %39, %37, %35, %33, %31, %30, %29, %28, %27, %25, %24, %23, %18
  %22 = phi i32 [ %19, %70 ], [ %19, %60 ], [ %19, %59 ], [ %19, %57 ], [ %19, %47 ], [ %19, %44 ], [ %19, %41 ], [ %19, %39 ], [ %19, %37 ], [ %19, %35 ], [ %19, %33 ], [ %19, %31 ], [ %19, %30 ], [ %19, %29 ], [ %19, %28 ], [ %19, %27 ], [ %19, %25 ], [ %19, %24 ], [ %19, %23 ], [ 1, %18 ]
  br label %18, !llvm.loop !73

23:                                               ; preds = %18
  store i32 2, ptr @debug, align 4, !tbaa !18
  br label %21

24:                                               ; preds = %18
  store i32 1, ptr @debug, align 4, !tbaa !18
  br label %21

25:                                               ; preds = %18
  %26 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %26, ptr @from_addr, align 8, !tbaa !14
  br label %21

27:                                               ; preds = %18
  store i32 1, ptr @routing, align 4, !tbaa !18
  br label %21

28:                                               ; preds = %18
  store i32 2, ptr @routing, align 4, !tbaa !18
  br label %21

29:                                               ; preds = %18
  store i32 1, ptr @handle, align 4, !tbaa !18
  br label %21

30:                                               ; preds = %18
  store i32 2, ptr @handle, align 4, !tbaa !18
  br label %21

31:                                               ; preds = %18
  %32 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %32, ptr @spoolfile, align 8, !tbaa !14
  br label %21

33:                                               ; preds = %18
  %34 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %34, ptr @pathfile, align 8, !tbaa !14
  br label %21

35:                                               ; preds = %18
  %36 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %36, ptr @uuxargs, align 8, !tbaa !14
  br label %21

37:                                               ; preds = %18
  %38 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %38, ptr @aliasfile, align 8, !tbaa !14
  br label %21

39:                                               ; preds = %18
  %40 = load ptr, ptr @optarg, align 8, !tbaa !14
  store ptr %40, ptr @fnlist, align 8, !tbaa !14
  br label %21

41:                                               ; preds = %18
  %42 = load ptr, ptr @optarg, align 8, !tbaa !14
  %43 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostdomain, ptr noundef nonnull dereferenceable(1) %42) #26
  br label %21

44:                                               ; preds = %18
  %45 = load ptr, ptr @optarg, align 8, !tbaa !14
  %46 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostname, ptr noundef nonnull dereferenceable(1) %45) #26
  br label %21

47:                                               ; preds = %18
  %48 = tail call ptr @__ctype_b_loc() #29
  %49 = load ptr, ptr %48, align 8, !tbaa !14
  %50 = load ptr, ptr @optarg, align 8, !tbaa !14
  %51 = load i8, ptr %50, align 1, !tbaa !18
  %52 = sext i8 %51 to i64
  %53 = getelementptr inbounds i16, ptr %49, i64 %52
  %54 = load i16, ptr %53, align 2, !tbaa !47
  %55 = and i16 %54, 2048
  %56 = icmp eq i16 %55, 0
  br i1 %56, label %21, label %57

57:                                               ; preds = %47
  %58 = tail call i32 @atoi(ptr nocapture noundef nonnull %50) #27
  store i32 %58, ptr @maxnoqueue, align 4, !tbaa !12
  br label %21

59:                                               ; preds = %18
  store i32 1, ptr @getcost, align 4, !tbaa !12
  br label %21

60:                                               ; preds = %18
  %61 = tail call ptr @__ctype_b_loc() #29
  %62 = load ptr, ptr %61, align 8, !tbaa !14
  %63 = load ptr, ptr @optarg, align 8, !tbaa !14
  %64 = load i8, ptr %63, align 1, !tbaa !18
  %65 = sext i8 %64 to i64
  %66 = getelementptr inbounds i16, ptr %62, i64 %65
  %67 = load i16, ptr %66, align 2, !tbaa !47
  %68 = and i16 %67, 2048
  %69 = icmp eq i16 %68, 0
  br i1 %69, label %21, label %70

70:                                               ; preds = %60
  %71 = tail call i32 @atoi(ptr nocapture noundef nonnull %63) #27
  store i32 %71, ptr @queuecost, align 4, !tbaa !12
  br label %21

72:                                               ; preds = %18
  %73 = load ptr, ptr @stderr, align 8, !tbaa !14
  %74 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %73, ptr noundef nonnull @.str.4.91, ptr noundef nonnull @.str.3.68) #30
  tail call void @exit(i32 noundef 64) #31
  unreachable

75:                                               ; preds = %18
  %.lcssa1 = phi i32 [ %19, %18 ]
  %76 = load i32, ptr @unix_smail_optind, align 4, !tbaa !12
  %77 = icmp slt i32 %76, %0
  br i1 %77, label %81, label %78

78:                                               ; preds = %75
  %79 = load ptr, ptr @stderr, align 8, !tbaa !14
  %80 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %79, ptr noundef nonnull @.str.5.92, ptr noundef nonnull @.str.6.93) #30
  tail call void @exit(i32 noundef 64) #31
  unreachable

81:                                               ; preds = %75
  %82 = tail call i32 (...) @getmynames() #26
  %83 = load i32, ptr @unix_smail_optind, align 4, !tbaa !12
  %84 = sub nsw i32 %0, %83
  store i32 %84, ptr %7, align 4, !tbaa !12
  %85 = icmp eq i32 %.lcssa1, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %81
  %87 = sext i32 %83 to i64
  %88 = getelementptr inbounds ptr, ptr %1, i64 %87
  tail call void (i32, ptr, ...) @spool(i32 noundef %84, ptr noundef nonnull %88) #26
  %89 = load i32, ptr @unix_smail_optind, align 4, !tbaa !12
  br label %90

90:                                               ; preds = %86, %81
  %91 = phi i32 [ %89, %86 ], [ %83, %81 ]
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds ptr, ptr %1, i64 %92
  %94 = call ptr (ptr, ptr, ...) @alias(ptr noundef nonnull %7, ptr noundef nonnull %93) #26
  %95 = load i32, ptr %7, align 4, !tbaa !12
  %96 = call i32 (i32, ptr, ptr, ptr, ptr, ptr, ...) @map(i32 noundef %95, ptr noundef %94, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #26
  br i1 %85, label %130, label %97

97:                                               ; preds = %90
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #24
  %98 = load i32, ptr %7, align 4, !tbaa !12
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %128

100:                                              ; preds = %97
  %101 = zext i32 %98 to i64
  br label %102

102:                                              ; preds = %126, %100
  %103 = phi i64 [ %101, %100 ], [ %104, %126 ]
  %104 = add nsw i64 %103, -1
  %105 = and i64 %104, 4294967295
  %106 = getelementptr inbounds [500 x i32], ptr %6, i64 0, i64 %105
  %107 = load i32, ptr %106, align 4, !tbaa !18
  %108 = icmp eq i32 %107, 0
  br i1 %108, label %109, label %113

109:                                              ; preds = %102
  %110 = getelementptr inbounds ptr, ptr %94, i64 %105
  %111 = load ptr, ptr %110, align 8, !tbaa !14
  %112 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %111) #26
  br label %119

113:                                              ; preds = %102
  %114 = getelementptr inbounds [500 x ptr], ptr %3, i64 0, i64 %105
  %115 = load ptr, ptr %114, align 8, !tbaa !14
  %116 = getelementptr inbounds [500 x ptr], ptr %4, i64 0, i64 %105
  %117 = load ptr, ptr %116, align 8, !tbaa !14
  %118 = call i32 (ptr, ptr, i32, ptr, ...) @build(ptr noundef %115, ptr noundef %117, i32 noundef %107, ptr noundef nonnull %8) #26
  br label %119

119:                                              ; preds = %113, %109
  %120 = load ptr, ptr @stdout, align 8, !tbaa !14
  %121 = call i32 @fputs(ptr noundef nonnull %8, ptr noundef %120) #25
  %122 = and i64 %104, 4294967295
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %126, label %124

124:                                              ; preds = %119
  %125 = call i32 @putchar(i32 noundef 32) #25
  br label %126

126:                                              ; preds = %124, %119
  %127 = icmp ugt i64 %103, 1
  br i1 %127, label %102, label %128, !llvm.loop !74

128:                                              ; preds = %126, %97
  %129 = call i32 @putchar(i32 noundef 10) #25
  call void @exit(i32 noundef 0) #31
  unreachable

130:                                              ; preds = %90
  %131 = load i32, ptr %7, align 4, !tbaa !12
  %132 = call i32 (i32, ptr, ptr, ptr, ptr, ...) @deliver(i32 noundef %131, ptr noundef nonnull %3, ptr noundef nonnull %4, ptr noundef nonnull %6, ptr noundef nonnull %5) #26
  %133 = load i32, ptr @exitstat, align 4, !tbaa !12
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 2000, ptr nonnull %5) #24
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %4) #24
  call void @llvm.lifetime.end.p0(i64 4000, ptr nonnull %3) #24
  ret i32 %133
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @map(i32 noundef %0, ptr nocapture noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3, ptr nocapture noundef writeonly %4, ptr nocapture noundef writeonly %5) #0 {
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #24
  store ptr @map.userbuf, ptr @map.userz, align 8, !tbaa !14
  store ptr @map.hostbuf, ptr @map.hostz, align 8, !tbaa !14
  %8 = icmp sgt i32 %0, 0
  br i1 %8, label %9, label %46

9:                                                ; preds = %6
  %10 = zext i32 %0 to i64
  br label %11

11:                                               ; preds = %29, %9
  %12 = phi ptr [ @map.hostbuf, %9 ], [ %43, %29 ]
  %13 = phi ptr [ @map.userbuf, %9 ], [ %39, %29 ]
  %14 = phi i64 [ 0, %9 ], [ %44, %29 ]
  %15 = phi ptr [ %1, %9 ], [ %31, %29 ]
  %16 = load i32, ptr @queuecost, align 4, !tbaa !12
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %7, align 4, !tbaa !12
  %18 = getelementptr inbounds ptr, ptr %3, i64 %14
  store ptr %13, ptr %18, align 8, !tbaa !14
  %19 = getelementptr inbounds ptr, ptr %2, i64 %14
  store ptr %12, ptr %19, align 8, !tbaa !14
  %20 = load ptr, ptr %15, align 8, !tbaa !14
  %21 = load i8, ptr %20, align 1, !tbaa !18
  %22 = icmp eq i8 %21, 40
  br i1 %22, label %23, label %29

23:                                               ; preds = %11
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %24, ptr %15, align 8, !tbaa !14
  %25 = call ptr @strchr(ptr noundef nonnull dereferenceable(1) %24, i32 noundef 41) #27
  %26 = icmp eq ptr %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %23
  store i8 0, ptr %25, align 1, !tbaa !18
  %28 = load ptr, ptr %15, align 8, !tbaa !14
  br label %29

29:                                               ; preds = %27, %23, %11
  %30 = phi ptr [ %24, %23 ], [ %28, %27 ], [ %20, %11 ]
  %31 = getelementptr inbounds ptr, ptr %15, i64 1
  %32 = call i32 (ptr, ptr, ptr, ptr, ...) @resolve(ptr noundef %30, ptr noundef %12, ptr noundef %13, ptr noundef nonnull %7) #26
  %33 = getelementptr inbounds i32, ptr %4, i64 %14
  store i32 %32, ptr %33, align 4, !tbaa !18
  %34 = load i32, ptr %7, align 4, !tbaa !12
  %35 = getelementptr inbounds i32, ptr %5, i64 %14
  store i32 %34, ptr %35, align 4, !tbaa !12
  %36 = load ptr, ptr @map.userz, align 8, !tbaa !14
  %37 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %36) #27
  %38 = add i64 %37, 1
  %39 = getelementptr inbounds i8, ptr %36, i64 %38
  store ptr %39, ptr @map.userz, align 8, !tbaa !14
  %40 = load ptr, ptr @map.hostz, align 8, !tbaa !14
  %41 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %40) #27
  %42 = add i64 %41, 1
  %43 = getelementptr inbounds i8, ptr %40, i64 %42
  store ptr %43, ptr @map.hostz, align 8, !tbaa !14
  %44 = add nuw nsw i64 %14, 1
  %45 = icmp eq i64 %44, %10
  br i1 %45, label %46, label %11, !llvm.loop !75

46:                                               ; preds = %29, %6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #24
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @setdates() #0 {
  %1 = tail call i64 @time(ptr noundef nonnull @now) #26
  %2 = tail call ptr @ctime(ptr noundef nonnull @now) #26
  %3 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @nows, ptr noundef nonnull dereferenceable(1) %2) #26
  %4 = tail call ptr @gmtime(ptr noundef nonnull @now) #26
  store ptr %4, ptr @gmt, align 8, !tbaa !14
  %5 = tail call ptr @localtime(ptr noundef nonnull @now) #26
  store ptr %5, ptr @loc, align 8, !tbaa !14
  %6 = tail call ptr @arpadate(ptr noundef nonnull @nows) #25
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @arpanows, ptr noundef nonnull dereferenceable(1) @arpadate.b) #26
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare ptr @ctime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare ptr @gmtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize
declare ptr @localtime(ptr noundef) local_unnamed_addr #12

; Function Attrs: nounwind optsize uwtable
define internal nonnull ptr @arpadate(ptr noundef readonly %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #24
  %3 = call i64 @time(ptr noundef nonnull %2) #26
  %4 = icmp eq ptr %0, null
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = call ptr @ctime(ptr noundef nonnull %2) #26
  br label %7

7:                                                ; preds = %5, %1
  %8 = phi ptr [ %6, %5 ], [ %0, %1 ]
  %9 = getelementptr inbounds i8, ptr %8, i64 8
  %10 = load i8, ptr %9, align 1, !tbaa !18
  %11 = icmp eq i8 %10, 32
  br i1 %11, label %13, label %12

12:                                               ; preds = %7
  store i8 %10, ptr @arpadate.b, align 16, !tbaa !18
  br label %13

13:                                               ; preds = %12, %7
  %14 = phi ptr [ getelementptr inbounds ([40 x i8], ptr @arpadate.b, i64 0, i64 1), %12 ], [ @arpadate.b, %7 ]
  %15 = getelementptr inbounds i8, ptr %8, i64 9
  %16 = load i8, ptr %15, align 1, !tbaa !18
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !18
  %18 = getelementptr inbounds i8, ptr %14, i64 2
  store i8 32, ptr %17, align 1, !tbaa !18
  %19 = getelementptr inbounds i8, ptr %8, i64 4
  %20 = getelementptr inbounds i8, ptr %8, i64 5
  %21 = load i8, ptr %19, align 1, !tbaa !18
  %22 = getelementptr inbounds i8, ptr %14, i64 3
  store i8 %21, ptr %18, align 1, !tbaa !18
  %23 = getelementptr inbounds i8, ptr %8, i64 6
  %24 = load i8, ptr %20, align 1, !tbaa !18
  %25 = getelementptr inbounds i8, ptr %14, i64 4
  store i8 %24, ptr %22, align 1, !tbaa !18
  %26 = load i8, ptr %23, align 1, !tbaa !18
  %27 = getelementptr inbounds i8, ptr %14, i64 5
  store i8 %26, ptr %25, align 1, !tbaa !18
  %28 = getelementptr inbounds i8, ptr %14, i64 6
  store i8 32, ptr %27, align 1, !tbaa !18
  %29 = getelementptr inbounds i8, ptr %8, i64 22
  %30 = getelementptr inbounds i8, ptr %8, i64 23
  %31 = load i8, ptr %29, align 1, !tbaa !18
  %32 = getelementptr inbounds i8, ptr %14, i64 7
  store i8 %31, ptr %28, align 1, !tbaa !18
  %33 = load i8, ptr %30, align 1, !tbaa !18
  %34 = getelementptr inbounds i8, ptr %14, i64 8
  store i8 %33, ptr %32, align 1, !tbaa !18
  %35 = getelementptr i8, ptr %14, i64 9
  store i8 32, ptr %34, align 1, !tbaa !18
  %36 = getelementptr i8, ptr %8, i64 11
  %37 = getelementptr i8, ptr %14, i64 16
  br label %38

38:                                               ; preds = %38, %13
  %39 = phi ptr [ %35, %13 ], [ %43, %38 ]
  %40 = phi ptr [ %36, %13 ], [ %41, %38 ]
  %41 = getelementptr inbounds i8, ptr %40, i64 1
  %42 = load i8, ptr %40, align 1, !tbaa !18
  %43 = getelementptr inbounds i8, ptr %39, i64 1
  store i8 %42, ptr %39, align 1, !tbaa !18
  %44 = icmp eq ptr %39, %37
  br i1 %44, label %45, label %38, !llvm.loop !76

45:                                               ; preds = %38
  %.lcssa = phi ptr [ %43, %38 ]
  %46 = call ptr @localtime(ptr noundef nonnull %2) #26
  %47 = getelementptr inbounds %struct.tm, ptr %46, i64 0, i32 8
  %48 = load i32, ptr %47, align 8, !tbaa !77
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds [2 x ptr], ptr @tzname, i64 0, i64 %49
  %51 = load ptr, ptr %50, align 8, !tbaa !14
  %52 = getelementptr inbounds i8, ptr %51, i64 3
  %53 = load i8, ptr %52, align 1, !tbaa !18
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %71, label %55

55:                                               ; preds = %45
  %56 = getelementptr inbounds i8, ptr %51, i64 4
  %57 = getelementptr i8, ptr %14, i64 18
  store i8 %53, ptr %.lcssa, align 1, !tbaa !18
  %58 = getelementptr inbounds i8, ptr %51, i64 5
  %59 = load i8, ptr %58, align 1, !tbaa !18
  %60 = icmp eq i8 %59, 58
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = load i8, ptr %56, align 1, !tbaa !18
  br label %63

63:                                               ; preds = %61, %55
  %64 = phi i8 [ %62, %61 ], [ 48, %55 ]
  %65 = phi ptr [ %58, %61 ], [ %56, %55 ]
  %66 = getelementptr i8, ptr %14, i64 19
  store i8 %64, ptr %57, align 1, !tbaa !18
  %67 = load i8, ptr %65, align 1, !tbaa !18
  %68 = getelementptr i8, ptr %14, i64 20
  store i8 %67, ptr %66, align 1, !tbaa !18
  %69 = getelementptr inbounds i8, ptr %65, i64 2
  %70 = getelementptr inbounds i8, ptr %65, i64 3
  br label %77

71:                                               ; preds = %45
  %72 = getelementptr i8, ptr %14, i64 18
  store i8 32, ptr %.lcssa, align 1, !tbaa !18
  %73 = getelementptr inbounds i8, ptr %51, i64 1
  %74 = load i8, ptr %51, align 1, !tbaa !18
  %75 = getelementptr i8, ptr %14, i64 19
  store i8 %74, ptr %72, align 1, !tbaa !18
  %76 = getelementptr inbounds i8, ptr %51, i64 2
  br label %77

77:                                               ; preds = %71, %63
  %78 = phi ptr [ %73, %71 ], [ %69, %63 ]
  %79 = phi i64 [ 20, %71 ], [ 21, %63 ]
  %80 = phi ptr [ %75, %71 ], [ %68, %63 ]
  %81 = phi ptr [ %76, %71 ], [ %70, %63 ]
  %82 = phi i64 [ 21, %71 ], [ 22, %63 ]
  %83 = load i8, ptr %78, align 1, !tbaa !18
  %84 = getelementptr i8, ptr %14, i64 %79
  store i8 %83, ptr %80, align 1, !tbaa !18
  %85 = load i8, ptr %81, align 1, !tbaa !18
  %86 = getelementptr i8, ptr %14, i64 %82
  store i8 %85, ptr %84, align 1, !tbaa !18
  %87 = getelementptr inbounds i8, ptr %86, i64 1
  store i8 32, ptr %86, align 1, !tbaa !18
  %88 = getelementptr inbounds i8, ptr %86, i64 2
  store i8 40, ptr %87, align 1, !tbaa !18
  %89 = getelementptr inbounds i8, ptr %8, i64 1
  %90 = load i8, ptr %8, align 1, !tbaa !18
  %91 = getelementptr inbounds i8, ptr %86, i64 3
  store i8 %90, ptr %88, align 1, !tbaa !18
  %92 = getelementptr inbounds i8, ptr %8, i64 2
  %93 = load i8, ptr %89, align 1, !tbaa !18
  %94 = getelementptr inbounds i8, ptr %86, i64 4
  store i8 %93, ptr %91, align 1, !tbaa !18
  %95 = load i8, ptr %92, align 1, !tbaa !18
  %96 = getelementptr inbounds i8, ptr %86, i64 5
  store i8 %95, ptr %94, align 1, !tbaa !18
  %97 = getelementptr inbounds i8, ptr %86, i64 6
  store i8 41, ptr %96, align 1, !tbaa !18
  store i8 0, ptr %97, align 1, !tbaa !18
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #24
  ret ptr @arpadate.b
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @postmaster(ptr noundef %0) #0 {
  %2 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %0, ptr noundef nonnull @.str.117) #26
  %3 = icmp eq i32 %2, 0
  %4 = select i1 %3, ptr @.str.117, ptr %0
  ret ptr %4
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @isuucp(ptr noundef %0) #0 {
  %2 = tail call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %0, ptr noundef nonnull @.str.1.118) #26
  %3 = icmp eq i32 %2, 0
  %4 = zext i1 %3 to i32
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal nonnull ptr @sform(i32 noundef %0) #21 {
  %2 = icmp ult i32 %0, 5
  br i1 %2, label %3, label %7

3:                                                ; preds = %1
  %4 = sext i32 %0 to i64
  %5 = getelementptr inbounds [5 x ptr], ptr @switch.table.sform, i64 0, i64 %4
  %6 = load ptr, ptr %5, align 8
  br label %7

7:                                                ; preds = %3, %1
  %8 = phi ptr [ %6, %3 ], [ @.str.6.119, %1 ]
  ret ptr %8
}

; Function Attrs: nounwind optsize uwtable
define internal void @getmynames() #0 {
  %1 = alloca %struct.utsname, align 1
  %2 = load i8, ptr @hostname, align 1, !tbaa !18
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %4, label %18

4:                                                ; preds = %0
  call void @llvm.lifetime.start.p0(i64 390, ptr nonnull %1) #24
  %5 = call i32 @uname(ptr noundef nonnull %1) #26
  %6 = icmp slt i32 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %4
  %8 = load ptr, ptr @stderr, align 8, !tbaa !14
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.7.126, i32 noundef 0) #30
  tail call void @exit(i32 noundef 70) #31
  unreachable

10:                                               ; preds = %4
  %11 = getelementptr inbounds %struct.utsname, ptr %1, i64 0, i32 1
  %12 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostname, ptr noundef nonnull dereferenceable(1) %11) #26
  call void @llvm.lifetime.end.p0(i64 390, ptr nonnull %1) #24
  %13 = load i8, ptr @hostname, align 1, !tbaa !18
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load ptr, ptr @stderr, align 8, !tbaa !14
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %16, ptr noundef nonnull @.str.8.127, i32 noundef 0) #30
  tail call void @exit(i32 noundef 70) #31
  unreachable

18:                                               ; preds = %10, %0
  %19 = load i8, ptr @hostdomain, align 1, !tbaa !18
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %18
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostdomain, ptr noundef nonnull dereferenceable(1) @hostname) #26
  %23 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @hostdomain)
  %24 = getelementptr inbounds i8, ptr @hostdomain, i64 %23
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %24, ptr noundef nonnull align 1 dereferenceable(6) @.str.9.128, i64 6, i1 false)
  %25 = load i8, ptr @hostdomain, align 1, !tbaa !18
  %26 = icmp eq i8 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %21
  %28 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostdomain, ptr noundef nonnull dereferenceable(1) @hostname) #26
  br label %29

29:                                               ; preds = %27, %21, %18
  %30 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) @hostuucp, ptr noundef nonnull dereferenceable(1) @hostname) #26
  %31 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @hostuucp)
  %32 = getelementptr inbounds i8, ptr @hostuucp, i64 %31
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(6) %32, ptr noundef nonnull align 1 dereferenceable(6) @.str.9.128, i64 6, i1 false)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @uname(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @pwfnam(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr @pwhead, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %14, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %6) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  %10 = getelementptr inbounds %struct.pw_node, ptr %.lcssa, i64 0, i32 1
  %11 = load ptr, ptr %10, align 8, !tbaa !80
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.pw_node, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !81

16:                                               ; preds = %12, %9, %1
  %17 = phi ptr [ %11, %9 ], [ null, %1 ], [ null, %12 ]
  ret ptr %17
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @pwuid(i32 noundef %0) #22 {
  %2 = load ptr, ptr @pwhead, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %15, label %4

4:                                                ; preds = %11, %1
  %5 = phi ptr [ %13, %11 ], [ %2, %1 ]
  %6 = getelementptr inbounds %struct.pw_node, ptr %5, i64 0, i32 2
  %7 = load i32, ptr %6, align 8, !tbaa !82
  %8 = icmp eq i32 %7, %0
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  %10 = load ptr, ptr %.lcssa, align 8, !tbaa !78
  br label %15

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.pw_node, ptr %5, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !14
  %14 = icmp eq ptr %13, null
  br i1 %14, label %15, label %4, !llvm.loop !83

15:                                               ; preds = %11, %9, %1
  %16 = phi ptr [ %10, %9 ], [ null, %1 ], [ null, %11 ]
  ret ptr %16
}

; Function Attrs: nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal ptr @tilde(ptr nocapture noundef readonly %0) #19 {
  %2 = load ptr, ptr @pwhead, align 8, !tbaa !14
  %3 = icmp eq ptr %2, null
  br i1 %3, label %16, label %4

4:                                                ; preds = %12, %1
  %5 = phi ptr [ %14, %12 ], [ %2, %1 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !78
  %7 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %0, ptr noundef nonnull dereferenceable(1) %6) #27
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %9, label %12

9:                                                ; preds = %4
  %.lcssa = phi ptr [ %5, %4 ]
  %10 = getelementptr inbounds %struct.pw_node, ptr %.lcssa, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !84
  br label %16

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.pw_node, ptr %5, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !14
  %15 = icmp eq ptr %14, null
  br i1 %15, label %16, label %4, !llvm.loop !85

16:                                               ; preds = %12, %9, %1
  %17 = phi ptr [ %11, %9 ], [ null, %1 ], [ null, %12 ]
  ret ptr %17
}

; Function Attrs: nofree nounwind optsize uwtable
define internal ptr @res_fname(ptr noundef %0) #14 {
  %2 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %2) #24
  %3 = load i32, ptr @debug, align 4, !tbaa !18
  %4 = icmp eq i32 %3, 2
  br i1 %4, label %5, label %7

5:                                                ; preds = %1
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, ptr noundef %0) #25
  br label %7

7:                                                ; preds = %5, %1
  %8 = load i64, ptr @res_fname.pathlength, align 8, !tbaa !46
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %10, label %25

10:                                               ; preds = %7
  %11 = load ptr, ptr @fnlist, align 8, !tbaa !14
  %12 = tail call noalias ptr @fopen(ptr noundef %11, ptr noundef nonnull @.str.1.138) #25
  store ptr %12, ptr @res_fname.file, align 8, !tbaa !14
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %21

14:                                               ; preds = %10
  %15 = load i32, ptr @debug, align 4, !tbaa !18
  %16 = icmp eq i32 %15, 2
  br i1 %16, label %17, label %20

17:                                               ; preds = %14
  %18 = load ptr, ptr @fnlist, align 8, !tbaa !14
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.139, ptr noundef %18) #25
  br label %20

20:                                               ; preds = %17, %14
  store i64 -1, ptr @res_fname.pathlength, align 8, !tbaa !46
  br label %99

21:                                               ; preds = %10
  %22 = tail call i32 @fseek(ptr noundef nonnull %12, i64 noundef 0, i32 noundef 2) #25
  %23 = load ptr, ptr @res_fname.file, align 8, !tbaa !14
  %24 = tail call i64 @ftell(ptr noundef %23) #25
  store i64 %24, ptr @res_fname.pathlength, align 8, !tbaa !46
  br label %25

25:                                               ; preds = %21, %7
  %26 = phi i64 [ %24, %21 ], [ %8, %7 ]
  %27 = icmp eq i64 %26, -1
  br i1 %27, label %99, label %28

28:                                               ; preds = %25
  %29 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %0) #26
  %30 = call i64 @strlen(ptr nonnull dereferenceable(1) %2)
  %31 = getelementptr inbounds i8, ptr %2, i64 %30
  store i16 9, ptr %31, align 1
  br label %32

32:                                               ; preds = %75, %28
  %33 = phi i64 [ %26, %28 ], [ %80, %75 ]
  %34 = phi i64 [ 0, %28 ], [ %81, %75 ]
  %35 = add nsw i64 %34, %33
  %36 = add nsw i64 %35, 1
  %37 = sdiv i64 %36, 2
  %38 = load ptr, ptr @res_fname.file, align 8, !tbaa !14
  %39 = call i32 @fseek(ptr noundef %38, i64 noundef %37, i32 noundef 0) #25
  %40 = add i64 %35, 2
  %41 = icmp ult i64 %40, 3
  br i1 %41, label %45, label %42

42:                                               ; preds = %42, %32
  %43 = load ptr, ptr @res_fname.file, align 8, !tbaa !14
  %44 = call i32 @getc(ptr noundef %43) #25
  switch i32 %44, label %42 [
    i32 -1, label %45
    i32 10, label %45
  ]

45:                                               ; preds = %42, %42, %32
  br label %46

46:                                               ; preds = %50, %45
  %47 = phi ptr [ %71, %50 ], [ %2, %45 ]
  %48 = load i8, ptr %47, align 1, !tbaa !18
  %49 = icmp eq i8 %48, 0
  br i1 %49, label %82, label %50

50:                                               ; preds = %46
  %51 = load ptr, ptr @res_fname.file, align 8, !tbaa !14
  %52 = call i32 @getc(ptr noundef %51) #25
  %53 = tail call ptr @__ctype_b_loc() #29
  %54 = load ptr, ptr %53, align 8, !tbaa !14
  %55 = sext i32 %52 to i64
  %56 = getelementptr inbounds i16, ptr %54, i64 %55
  %57 = load i16, ptr %56, align 2, !tbaa !47
  %58 = and i16 %57, 256
  %59 = icmp eq i16 %58, 0
  %60 = add nsw i32 %52, 32
  %61 = select i1 %59, i32 %52, i32 %60
  %62 = load i8, ptr %47, align 1, !tbaa !18
  %63 = sext i8 %62 to i32
  %64 = sext i8 %62 to i64
  %65 = getelementptr inbounds i16, ptr %54, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !47
  %67 = and i16 %66, 256
  %68 = icmp eq i16 %67, 0
  %69 = add nsw i32 %63, 32
  %70 = select i1 %68, i32 %63, i32 %69
  %71 = getelementptr inbounds i8, ptr %47, i64 1
  %72 = icmp eq i32 %61, %70
  br i1 %72, label %46, label %73, !llvm.loop !86

73:                                               ; preds = %50
  %.lcssa3 = phi i32 [ %52, %50 ]
  %.lcssa2 = phi i32 [ %61, %50 ]
  %.lcssa1 = phi i32 [ %70, %50 ]
  %74 = icmp slt i64 %34, %37
  br i1 %74, label %75, label %99

75:                                               ; preds = %73
  %76 = icmp ne i32 %.lcssa3, -1
  %77 = icmp slt i32 %.lcssa2, %.lcssa1
  %78 = and i1 %76, %77
  %79 = add nsw i64 %37, -1
  %80 = select i1 %78, i64 %33, i64 %79
  %81 = select i1 %78, i64 %37, i64 %34
  br label %32

82:                                               ; preds = %86, %46
  %83 = phi ptr [ %88, %86 ], [ %2, %46 ]
  %84 = load ptr, ptr @res_fname.file, align 8, !tbaa !14
  %85 = call i32 @getc(ptr noundef %84) #25
  switch i32 %85, label %86 [
    i32 -1, label %89
    i32 10, label %89
    i32 9, label %89
  ]

86:                                               ; preds = %82
  %87 = trunc i32 %85 to i8
  %88 = getelementptr inbounds i8, ptr %83, i64 1
  store i8 %87, ptr %83, align 1, !tbaa !18
  br label %82, !llvm.loop !87

89:                                               ; preds = %82, %82, %82
  %.lcssa = phi ptr [ %83, %82 ], [ %83, %82 ], [ %83, %82 ]
  %90 = icmp eq ptr %.lcssa, %2
  br i1 %90, label %99, label %91

91:                                               ; preds = %89
  store i8 0, ptr %.lcssa, align 1, !tbaa !18
  %92 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #27
  %93 = add i64 %92, 1
  %94 = and i64 %93, 4294967295
  %95 = call noalias ptr @malloc(i64 noundef %94) #28
  %96 = icmp eq ptr %95, null
  br i1 %96, label %99, label %97

97:                                               ; preds = %91
  %98 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %95, ptr noundef nonnull dereferenceable(1) %2) #26
  br label %99

99:                                               ; preds = %97, %91, %89, %73, %25, %20
  %100 = phi ptr [ %95, %97 ], [ null, %25 ], [ null, %89 ], [ null, %91 ], [ null, %20 ], [ null, %73 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %2) #24
  ret ptr %100
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @resolve(ptr noundef %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) #0 {
  %5 = alloca [32 x ptr], align 16
  %6 = alloca [512 x i8], align 16
  %7 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %5) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %6) #24
  %8 = load i32, ptr @routing, align 4, !tbaa !18
  %9 = icmp eq i32 %8, 2
  br i1 %9, label %10, label %16

10:                                               ; preds = %4
  %11 = load i32, ptr @handle, align 4, !tbaa !18
  %12 = sext i32 %11 to i64
  %13 = getelementptr inbounds [5 x [3 x i32]], ptr @table, i64 0, i64 3, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !18
  %15 = icmp eq i32 %14, 3
  br i1 %15, label %17, label %16

16:                                               ; preds = %10, %4
  store ptr %0, ptr %5, align 16, !tbaa !14
  br label %21

17:                                               ; preds = %10
  %18 = call i32 (ptr, i32, ptr, ...) @ssplit(ptr noundef %0, i32 noundef 33, ptr noundef nonnull %5) #26
  %19 = add nsw i32 %18, -1
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %21, label %76

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 0, %16 ], [ %19, %17 ]
  %23 = zext i32 %22 to i64
  br label %24

24:                                               ; preds = %72, %21
  %25 = phi i64 [ %23, %21 ], [ %74, %72 ]
  %26 = getelementptr inbounds [32 x ptr], ptr %5, i64 0, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !14
  %28 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %27) #26
  %29 = call i32 (ptr, ptr, ptr, ...) @parse(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #26
  %30 = load i32, ptr @debug, align 4, !tbaa !18
  %31 = icmp eq i32 %30, 2
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = call ptr (i32, ...) @sform(i32 noundef %29) #26
  %34 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1, ptr noundef %33) #25
  br label %35

35:                                               ; preds = %32, %24
  %36 = icmp ne i64 %25, 0
  %37 = icmp eq i32 %29, 1
  %38 = select i1 %36, i1 %37, i1 false
  br i1 %38, label %72, label %39

39:                                               ; preds = %35
  %40 = sext i32 %29 to i64
  %41 = load i32, ptr @handle, align 4, !tbaa !18
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [5 x [3 x i32]], ptr @table, i64 0, i64 %40, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !18
  %45 = icmp eq i32 %44, 4
  %46 = load i32, ptr @routing, align 4
  br i1 %45, label %51, label %47

47:                                               ; preds = %39
  %48 = icmp eq i32 %44, 3
  %49 = icmp ne i32 %46, 0
  %50 = select i1 %48, i1 %49, i1 false
  br i1 %50, label %51, label %65

51:                                               ; preds = %47, %39
  %52 = icmp eq i32 %46, 2
  %53 = icmp eq i64 %25, 0
  %54 = and i1 %53, %52
  %55 = zext i1 %54 to i32
  %56 = call i32 @route(ptr noundef %1, ptr noundef %2, i32 noundef %55, ptr noundef nonnull %6, ptr noundef %3) #25, !range !88
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %72

58:                                               ; preds = %51
  %59 = call i32 (ptr, ptr, ptr, ...) @parse(ptr noundef nonnull %6, ptr noundef %1, ptr noundef %2) #26
  %60 = load i32, ptr @debug, align 4, !tbaa !18
  %61 = icmp eq i32 %60, 2
  br i1 %61, label %62, label %76

62:                                               ; preds = %58
  %63 = call ptr (i32, ...) @sform(i32 noundef %59) #26
  %64 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.143, ptr noundef nonnull %6, ptr noundef %2, ptr noundef %1, ptr noundef %63) #25
  br label %76

65:                                               ; preds = %47
  %66 = load i32, ptr @getcost, align 4, !tbaa !12
  %67 = icmp ne i32 %66, 0
  %68 = and i1 %48, %67
  br i1 %68, label %69, label %76

69:                                               ; preds = %65
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #24
  %70 = call i32 @route(ptr noundef %1, ptr noundef %2, i32 noundef 0, ptr noundef nonnull %7, ptr noundef %3) #25, !range !88
  %71 = icmp eq i32 %70, 0
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  br i1 %71, label %76, label %72

72:                                               ; preds = %69, %51, %35
  %73 = phi i32 [ 1, %35 ], [ %29, %69 ], [ %29, %51 ]
  %74 = add nsw i64 %25, -1
  %75 = icmp sgt i64 %25, 0
  br i1 %75, label %24, label %76, !llvm.loop !89

76:                                               ; preds = %72, %69, %65, %62, %58, %17
  %77 = phi i32 [ %59, %62 ], [ %59, %58 ], [ undef, %17 ], [ %73, %72 ], [ %29, %65 ], [ %29, %69 ]
  %78 = sext i32 %77 to i64
  %79 = load i32, ptr @handle, align 4, !tbaa !18
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [5 x [3 x i32]], ptr @table, i64 0, i64 %78, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !18
  %83 = icmp eq i32 %82, 1
  %84 = icmp ne i32 %77, 1
  %85 = and i1 %84, %83
  br i1 %85, label %86, label %94

86:                                               ; preds = %76
  %87 = call i32 (ptr, ptr, i32, ptr, ...) @build(ptr noundef %1, ptr noundef %2, i32 noundef %77, ptr noundef nonnull %6) #26
  %88 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %6) #26
  store i8 0, ptr %1, align 1
  %89 = load i32, ptr @handle, align 4, !tbaa !18
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds [5 x [3 x i32]], ptr @table, i64 0, i64 1, i64 %90
  %92 = load i32, ptr %91, align 4, !tbaa !18
  %93 = load i32, ptr @debug, align 4, !tbaa !18
  br label %97

94:                                               ; preds = %76
  %95 = icmp eq i32 %77, 0
  %96 = load i32, ptr @debug, align 4, !tbaa !18
  br i1 %95, label %102, label %97

97:                                               ; preds = %94, %86
  %98 = phi i32 [ %93, %86 ], [ %96, %94 ]
  %99 = phi i32 [ %92, %86 ], [ %82, %94 ]
  %100 = phi i32 [ 1, %86 ], [ %77, %94 ]
  %101 = icmp eq i32 %99, 4
  br i1 %101, label %102, label %106

102:                                              ; preds = %97, %94
  %103 = phi i32 [ %98, %97 ], [ %96, %94 ]
  %104 = phi i32 [ %100, %97 ], [ 0, %94 ]
  store i32 68, ptr @exitstat, align 4, !tbaa !12
  %105 = icmp eq i32 %103, 0
  br i1 %105, label %114, label %108

106:                                              ; preds = %97
  %107 = icmp eq i32 %98, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %106, %102
  %109 = phi i32 [ %104, %102 ], [ %100, %106 ]
  %110 = phi ptr [ @.str.3.144, %102 ], [ @.str.4.145, %106 ]
  %111 = phi i32 [ 0, %102 ], [ %100, %106 ]
  %112 = call ptr (i32, ...) @sform(i32 noundef %109) #26
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %110, ptr noundef %0, ptr noundef %2, ptr noundef %1, ptr noundef %112) #25
  br label %114

114:                                              ; preds = %108, %106, %102
  %115 = phi i32 [ %100, %106 ], [ 0, %102 ], [ %111, %108 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %6) #24
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %5) #24
  ret i32 %115
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @route(ptr noundef %0, ptr noundef %1, i32 noundef %2, ptr nocapture noundef writeonly %3, ptr noundef %4) #0 {
  %6 = alloca [16 x ptr], align 16
  %7 = alloca [512 x i8], align 16
  %8 = alloca [512 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %6) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.start.p0(i64 512, ptr nonnull %8) #24
  store i8 46, ptr %7, align 16, !tbaa !18
  %9 = getelementptr inbounds i8, ptr %7, i64 1
  %10 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(1) %0) #26
  %11 = call i32 (ptr, i32, ptr, ...) @ssplit(ptr noundef nonnull %9, i32 noundef 46, ptr noundef nonnull %6) #26
  %12 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %0, ptr noundef nonnull @hostname) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %5
  %15 = call i32 (ptr, ptr, ...) @strcmpic(ptr noundef %0, ptr noundef nonnull @hostdomain) #26
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %14, %5
  store i32 0, ptr %4, align 4, !tbaa !12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %8, ptr noundef nonnull align 1 dereferenceable(3) @.str.5.146, i64 3, i1 false) #26
  %18 = load i32, ptr @debug, align 4, !tbaa !18
  %19 = icmp eq i32 %18, 2
  br i1 %19, label %20, label %91

20:                                               ; preds = %17
  %21 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6.147, ptr noundef %0) #25
  br label %76

22:                                               ; preds = %14
  %23 = icmp sgt i32 %11, 0
  br i1 %23, label %24, label %55

24:                                               ; preds = %22
  %25 = add nsw i32 %11, -1
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !14
  %29 = call i32 (ptr, ...) @isuucp(ptr noundef %28) #26
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %35, label %31

31:                                               ; preds = %24
  %32 = load ptr, ptr %27, align 8, !tbaa !14
  %33 = getelementptr inbounds i8, ptr %32, i64 -1
  store i8 0, ptr %33, align 1, !tbaa !18
  %34 = icmp eq i32 %25, 0
  br i1 %34, label %55, label %35

35:                                               ; preds = %31, %24
  %36 = phi i32 [ %25, %31 ], [ %11, %24 ]
  %37 = zext i32 %36 to i64
  br label %38

38:                                               ; preds = %49, %35
  %39 = phi i64 [ 0, %35 ], [ %50, %49 ]
  %40 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !14
  %42 = getelementptr inbounds i8, ptr %41, i64 -1
  %43 = call i32 (ptr, ptr, ptr, ...) @getpath(ptr noundef nonnull %42, ptr noundef nonnull %8, ptr noundef %4) #26
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %53, label %45

45:                                               ; preds = %38
  %46 = load ptr, ptr %40, align 8, !tbaa !14
  %47 = call i32 (ptr, ptr, ptr, ...) @getpath(ptr noundef %46, ptr noundef nonnull %8, ptr noundef %4) #26
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %53, label %49

49:                                               ; preds = %45
  %50 = add nuw nsw i64 %39, 1
  %51 = icmp eq i64 %50, %37
  br i1 %51, label %52, label %38, !llvm.loop !90

52:                                               ; preds = %49
  br i1 %30, label %65, label %61

53:                                               ; preds = %45, %38
  %.lcssa = phi i64 [ %39, %45 ], [ %39, %38 ]
  %54 = trunc i64 %.lcssa to i32
  br label %55

55:                                               ; preds = %53, %31, %22
  %56 = phi i32 [ 0, %31 ], [ %11, %22 ], [ %36, %53 ]
  %57 = phi i1 [ false, %31 ], [ true, %22 ], [ %30, %53 ]
  %58 = phi i32 [ 0, %31 ], [ 0, %22 ], [ %54, %53 ]
  %59 = icmp eq i32 %58, %56
  br i1 %59, label %60, label %76

60:                                               ; preds = %55
  br i1 %57, label %65, label %61

61:                                               ; preds = %60, %52
  %62 = phi i32 [ %36, %52 ], [ %56, %60 ]
  %63 = call i32 (ptr, ptr, ptr, ...) @getpath(ptr noundef nonnull @.str.7.148, ptr noundef nonnull %8, ptr noundef %4) #26
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %76, label %65

65:                                               ; preds = %61, %60, %52
  %66 = phi i32 [ %36, %52 ], [ %62, %61 ], [ %56, %60 ]
  %67 = icmp eq i32 %2, 0
  br i1 %67, label %71, label %68

68:                                               ; preds = %65
  %69 = call i32 (ptr, ptr, ptr, ...) @getpath(ptr noundef nonnull @.str.8.149, ptr noundef nonnull %8, ptr noundef %4) #26
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %76, label %71

71:                                               ; preds = %68, %65
  %72 = load i32, ptr @debug, align 4, !tbaa !18
  %73 = icmp eq i32 %72, 2
  br i1 %73, label %74, label %96

74:                                               ; preds = %71
  %75 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9.150, ptr noundef %0) #25
  br label %96

76:                                               ; preds = %68, %61, %55, %20
  %77 = phi i32 [ %58, %55 ], [ %62, %61 ], [ %66, %68 ], [ 0, %20 ]
  %78 = freeze i32 %77
  %79 = load i32, ptr @debug, align 4, !tbaa !18
  %80 = icmp eq i32 %79, 2
  br i1 %80, label %81, label %89

81:                                               ; preds = %76
  %82 = zext i32 %78 to i64
  %83 = getelementptr inbounds [16 x ptr], ptr %6, i64 0, i64 %82
  %84 = load ptr, ptr %83, align 8, !tbaa !14
  %85 = icmp eq ptr %84, null
  %86 = select i1 %85, ptr @.str.11.151, ptr %84
  %87 = load i32, ptr %4, align 4, !tbaa !12
  %88 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10.152, ptr noundef %0, ptr noundef nonnull %86, ptr noundef nonnull %8, i32 noundef %87) #25
  br label %89

89:                                               ; preds = %81, %76
  %90 = icmp eq i32 %78, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %89, %17
  br label %92

92:                                               ; preds = %91, %89
  %93 = phi i32 [ 1, %91 ], [ 3, %89 ]
  %94 = call i32 (ptr, ptr, i32, ptr, ...) @build(ptr noundef %0, ptr noundef %1, i32 noundef %93, ptr noundef nonnull %7) #26
  %95 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull %7) #26
  br label %96

96:                                               ; preds = %92, %74, %71
  %97 = phi i32 [ 0, %92 ], [ 68, %74 ], [ 68, %71 ]
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %8) #24
  call void @llvm.lifetime.end.p0(i64 512, ptr nonnull %7) #24
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %6) #24
  ret i32 %97
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @strncmpic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #23 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %61

5:                                                ; preds = %3
  %6 = tail call ptr @__ctype_b_loc() #29
  br label %7

7:                                                ; preds = %37, %5
  %8 = phi ptr [ %38, %37 ], [ %1, %5 ]
  %9 = phi ptr [ %39, %37 ], [ %0, %5 ]
  %10 = phi i32 [ %40, %37 ], [ %2, %5 ]
  %11 = load i8, ptr %8, align 1, !tbaa !18
  %12 = icmp eq i8 %11, 0
  %13 = load i8, ptr %9, align 1, !tbaa !18
  br i1 %12, label %14, label %18

14:                                               ; preds = %7
  %.lcssa2 = phi i8 [ %11, %7 ]
  %.lcssa = phi i8 [ %13, %7 ]
  %15 = sext i8 %.lcssa to i32
  %16 = sext i8 %.lcssa to i64
  %17 = add nsw i32 %15, 32
  br label %42

18:                                               ; preds = %7
  %19 = load ptr, ptr %6, align 8, !tbaa !14
  %20 = sext i8 %13 to i32
  %21 = sext i8 %13 to i64
  %22 = getelementptr inbounds i16, ptr %19, i64 %21
  %23 = load i16, ptr %22, align 2, !tbaa !47
  %24 = and i16 %23, 256
  %25 = icmp eq i16 %24, 0
  %26 = add nsw i32 %20, 32
  %27 = select i1 %25, i32 %20, i32 %26
  %28 = sext i8 %11 to i32
  %29 = sext i8 %11 to i64
  %30 = getelementptr inbounds i16, ptr %19, i64 %29
  %31 = load i16, ptr %30, align 2, !tbaa !47
  %32 = and i16 %31, 256
  %33 = icmp eq i16 %32, 0
  %34 = add nsw i32 %28, 32
  %35 = select i1 %33, i32 %28, i32 %34
  %36 = icmp eq i32 %27, %35
  br i1 %36, label %37, label %42

37:                                               ; preds = %18
  %38 = getelementptr inbounds i8, ptr %8, i64 1
  %39 = getelementptr inbounds i8, ptr %9, i64 1
  %40 = add nsw i32 %10, -1
  %41 = icmp sgt i32 %10, 1
  br i1 %41, label %7, label %61, !llvm.loop !91

42:                                               ; preds = %18, %14
  %.lcssa3 = phi i8 [ %11, %18 ], [ %.lcssa2, %14 ]
  %43 = phi i32 [ %17, %14 ], [ %26, %18 ]
  %44 = phi i64 [ %16, %14 ], [ %21, %18 ]
  %45 = phi i32 [ %15, %14 ], [ %20, %18 ]
  %46 = load ptr, ptr %6, align 8, !tbaa !14
  %47 = getelementptr inbounds i16, ptr %46, i64 %44
  %48 = load i16, ptr %47, align 2, !tbaa !47
  %49 = and i16 %48, 256
  %50 = icmp eq i16 %49, 0
  %51 = select i1 %50, i32 %45, i32 %43
  %52 = sext i8 %.lcssa3 to i32
  %53 = sext i8 %.lcssa3 to i64
  %54 = getelementptr inbounds i16, ptr %46, i64 %53
  %55 = load i16, ptr %54, align 2, !tbaa !47
  %56 = and i16 %55, 256
  %57 = icmp eq i16 %56, 0
  %58 = add nsw i32 %52, 32
  %59 = select i1 %57, i32 %52, i32 %58
  %60 = sub nsw i32 %51, %59
  br label %61

61:                                               ; preds = %42, %37, %3
  %62 = phi i32 [ %60, %42 ], [ 0, %3 ], [ 0, %37 ]
  ret i32 %62
}

; Function Attrs: nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @strcmpic(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #23 {
  %3 = load i8, ptr %1, align 1, !tbaa !18
  %4 = icmp eq i8 %3, 0
  %5 = tail call ptr @__ctype_b_loc() #29
  br i1 %4, label %35, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %5, align 8, !tbaa !14
  br label %8

8:                                                ; preds = %30, %6
  %9 = phi i8 [ %3, %6 ], [ %33, %30 ]
  %10 = phi ptr [ %1, %6 ], [ %31, %30 ]
  %11 = phi ptr [ %0, %6 ], [ %32, %30 ]
  %12 = load i8, ptr %11, align 1, !tbaa !18
  %13 = sext i8 %12 to i32
  %14 = sext i8 %12 to i64
  %15 = getelementptr inbounds i16, ptr %7, i64 %14
  %16 = load i16, ptr %15, align 2, !tbaa !47
  %17 = and i16 %16, 256
  %18 = icmp eq i16 %17, 0
  %19 = add nsw i32 %13, 32
  %20 = select i1 %18, i32 %13, i32 %19
  %21 = sext i8 %9 to i32
  %22 = sext i8 %9 to i64
  %23 = getelementptr inbounds i16, ptr %7, i64 %22
  %24 = load i16, ptr %23, align 2, !tbaa !47
  %25 = and i16 %24, 256
  %26 = icmp eq i16 %25, 0
  %27 = add nsw i32 %21, 32
  %28 = select i1 %26, i32 %21, i32 %27
  %29 = icmp eq i32 %20, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %8
  %31 = getelementptr inbounds i8, ptr %10, i64 1
  %32 = getelementptr inbounds i8, ptr %11, i64 1
  %33 = load i8, ptr %31, align 1, !tbaa !18
  %34 = icmp eq i8 %33, 0
  br i1 %34, label %35, label %8, !llvm.loop !92

35:                                               ; preds = %30, %8, %2
  %36 = phi ptr [ %0, %2 ], [ %11, %8 ], [ %32, %30 ]
  %37 = phi i8 [ 0, %2 ], [ %9, %8 ], [ 0, %30 ]
  %38 = load ptr, ptr %5, align 8, !tbaa !14
  %39 = load i8, ptr %36, align 1, !tbaa !18
  %40 = sext i8 %39 to i32
  %41 = sext i8 %39 to i64
  %42 = getelementptr inbounds i16, ptr %38, i64 %41
  %43 = load i16, ptr %42, align 2, !tbaa !47
  %44 = and i16 %43, 256
  %45 = icmp eq i16 %44, 0
  %46 = add nsw i32 %40, 32
  %47 = select i1 %45, i32 %40, i32 %46
  %48 = sext i8 %37 to i32
  %49 = sext i8 %37 to i64
  %50 = getelementptr inbounds i16, ptr %38, i64 %49
  %51 = load i16, ptr %50, align 2, !tbaa !47
  %52 = and i16 %51, 256
  %53 = icmp eq i16 %52, 0
  %54 = add nsw i32 %48, 32
  %55 = select i1 %53, i32 %48, i32 %54
  %56 = sub nsw i32 %47, %55
  ret i32 %56
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #11 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nofree nounwind }
attributes #14 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { noreturn optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nounwind }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize }
attributes #27 = { nounwind optsize willreturn memory(read) }
attributes #28 = { nounwind optsize allocsize(0) }
attributes #29 = { nounwind optsize willreturn memory(none) }
attributes #30 = { cold optsize }
attributes #31 = { noreturn nounwind optsize }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !9, i64 8}
!8 = !{!"alias_node", !9, i64 0, !9, i64 8, !9, i64 16}
!9 = !{!"any pointer", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C/C++ TBAA"}
!12 = !{!13, !13, i64 0}
!13 = !{!"int", !10, i64 0}
!14 = !{!9, !9, i64 0}
!15 = distinct !{!15, !16}
!16 = !{!"llvm.loop.mustprogress"}
!17 = !{!8, !9, i64 0}
!18 = !{!10, !10, i64 0}
!19 = distinct !{!19, !16}
!20 = !{!21, !13, i64 24}
!21 = !{!"stat", !22, i64 0, !22, i64 8, !22, i64 16, !13, i64 24, !13, i64 28, !13, i64 32, !13, i64 36, !22, i64 40, !22, i64 48, !22, i64 56, !22, i64 64, !23, i64 72, !23, i64 88, !23, i64 104, !10, i64 120}
!22 = !{!"long", !10, i64 0}
!23 = !{!"timespec", !22, i64 0, !22, i64 8}
!24 = !{i32 0, i32 2}
!25 = distinct !{!25, !16}
!26 = distinct !{!26, !16}
!27 = distinct !{!27, !16}
!28 = distinct !{!28, !16}
!29 = distinct !{!29, !16}
!30 = !{!8, !9, i64 16}
!31 = distinct !{!31, !16}
!32 = distinct !{!32, !16}
!33 = distinct !{!33, !16}
!34 = distinct !{!34, !16}
!35 = distinct !{!35, !16}
!36 = distinct !{!36, !16}
!37 = distinct !{!37, !16}
!38 = distinct !{!38, !16}
!39 = distinct !{!39, !16}
!40 = distinct !{!40, !16}
!41 = distinct !{!41, !16}
!42 = distinct !{!42, !16}
!43 = distinct !{!43, !16}
!44 = distinct !{!44, !16}
!45 = distinct !{!45, !16}
!46 = !{!22, !22, i64 0}
!47 = !{!48, !48, i64 0}
!48 = !{!"short", !10, i64 0}
!49 = distinct !{!49, !16}
!50 = distinct !{!50, !16}
!51 = distinct !{!51, !16}
!52 = distinct !{!52, !16}
!53 = distinct !{!53, !16}
!54 = distinct !{!54, !16}
!55 = distinct !{!55, !16}
!56 = distinct !{!56, !16}
!57 = distinct !{!57, !16}
!58 = distinct !{!58, !16}
!59 = !{!60, !9, i64 0}
!60 = !{!"reqheaders", !9, i64 0, !9, i64 8, !10, i64 16}
!61 = !{!60, !10, i64 16}
!62 = !{!60, !9, i64 8}
!63 = distinct !{!63, !16}
!64 = distinct !{!64, !16}
!65 = distinct !{!65, !16}
!66 = distinct !{!66, !16}
!67 = !{!68, !13, i64 20}
!68 = !{!"tm", !13, i64 0, !13, i64 4, !13, i64 8, !13, i64 12, !13, i64 16, !13, i64 20, !13, i64 24, !13, i64 28, !13, i64 32, !22, i64 40, !9, i64 48}
!69 = !{!68, !13, i64 16}
!70 = !{!68, !13, i64 12}
!71 = !{!68, !13, i64 8}
!72 = !{!68, !13, i64 4}
!73 = distinct !{!73, !16}
!74 = distinct !{!74, !16}
!75 = distinct !{!75, !16}
!76 = distinct !{!76, !16}
!77 = !{!68, !13, i64 32}
!78 = !{!79, !9, i64 0}
!79 = !{!"pw_node", !9, i64 0, !9, i64 8, !13, i64 16, !9, i64 24, !9, i64 32}
!80 = !{!79, !9, i64 8}
!81 = distinct !{!81, !16}
!82 = !{!79, !13, i64 16}
!83 = distinct !{!83, !16}
!84 = !{!79, !9, i64 24}
!85 = distinct !{!85, !16}
!86 = distinct !{!86, !16}
!87 = distinct !{!87, !16}
!88 = !{i32 0, i32 69}
!89 = distinct !{!89, !16}
!90 = distinct !{!90, !16}
!91 = distinct !{!91, !16}
!92 = distinct !{!92, !16}
