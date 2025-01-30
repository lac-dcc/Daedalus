; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/CoMD/CoMD.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TimersSt = type { i64, i64, i64, i64, i32, i32, double, double, double, double }
%struct.CommandSt = type { [1024 x i8], [1024 x i8], [1024 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, double, double, double, double }
%struct.SimFlatSt = type { i32, i32, double, ptr, ptr, ptr, ptr, double, double, ptr, ptr }
%struct.BasePotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, ptr, ptr, ptr }
%struct.SpeciesDataSt = type { [3 x i8], i32, double }
%struct.AtomsSt = type { i32, i32, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.DomainSt = type { [3 x i32], [3 x i32], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }
%struct.LinkCellSt = type { [3 x i32], i32, i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], ptr }
%struct.MyOptionSt = type { ptr, ptr, [2 x i8], i32, i8, i32, ptr, ptr }
%struct.option = type { ptr, i32, ptr, i32 }
%struct.anon = type { double, double, double, [8 x i8], [3 x i8], i32 }
%struct.EamPotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.ForceExchangeDataSt = type { ptr, ptr }
%struct.InterpolationObjectSt = type { i32, double, double, ptr }
%struct.anon.0 = type { i32, double, double }
%struct.HaloExchangeSt = type { [6 x i32], i32, ptr, ptr, ptr, ptr }
%struct.AtomExchangeParmsSt = type { [6 x i32], [6 x ptr], [6 x ptr] }
%struct.AtomMsgSt = type { i32, i32, double, double, double, double, double, double }
%struct.ForceMsgSt = type { double }
%struct.LjPotentialSt = type { double, double, double, [8 x i8], [3 x i8], i32, ptr, ptr, ptr, double, double }
%struct.timeval = type { i64, i64 }

@.str = private unnamed_addr constant [25 x i8] c"Starting Initialization\0A\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"Initialization Finished\0A\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"Starting simulation\0A\00", align 1
@.str.3 = private unnamed_addr constant [19 x i8] c"Ending simulation\0A\00", align 1
@.str.4 = private unnamed_addr constant [13 x i8] c"CoMD Ending\0A\00", align 1
@.str.5 = private unnamed_addr constant [55 x i8] c"\0ANumber of MPI ranks must match xproc * yproc * zproc\0A\00", align 1
@.str.6 = private unnamed_addr constant [135 x i8] c"\0ASimulation too small.\0A  Increase the number of unit cells to make the simulation\0A  at least (%3.2f, %3.2f. %3.2f) Ansgstroms in size\0A\00", align 1
@.str.7 = private unnamed_addr constant [4 x i8] c"FCC\00", align 1
@.str.8 = private unnamed_addr constant [56 x i8] c"\0AOnly FCC Lattice type supported, not %s. Fatal Error.\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"Initial energy : %14.12f, atom count : %d \0A\00", align 1
@.str.11 = private unnamed_addr constant [24 x i8] c"Simulation Validation:\0A\00", align 1
@.str.12 = private unnamed_addr constant [29 x i8] c"  Initial energy  : %14.12f\0A\00", align 1
@.str.13 = private unnamed_addr constant [29 x i8] c"  Final energy    : %14.12f\0A\00", align 1
@.str.14 = private unnamed_addr constant [24 x i8] c"  eFinal/eInitial : %f\0A\00", align 1
@.str.15 = private unnamed_addr constant [40 x i8] c"  Final atom count : %d, no atoms lost\0A\00", align 1
@.str.16 = private unnamed_addr constant [31 x i8] c"#############################\0A\00", align 1
@.str.17 = private unnamed_addr constant [29 x i8] c"# WARNING: %6d atoms lost #\0A\00", align 1
@printThings.firstCall = internal unnamed_addr global i1 false, align 4
@.str.18 = private unnamed_addr constant [216 x i8] c"#                                                                                         Performance\0A#  Loop   Time(fs)       Total Energy   Potential Energy     Kinetic Energy  Temperature   (us/atom)     # Atoms\0A\00", align 1
@.str.19 = private unnamed_addr constant [56 x i8] c" %6d %10.2f %18.12f %18.12f %18.12f %12.4f %10.4f %12d\0A\00", align 1
@.str.20 = private unnamed_addr constant [19 x i8] c"Simulation data: \0A\00", align 1
@.str.21 = private unnamed_addr constant [27 x i8] c"  Total atoms        : %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [54 x i8] c"  Min global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.23 = private unnamed_addr constant [54 x i8] c"  Max global bounds  : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"Decomposition data: \0A\00", align 1
@.str.25 = private unnamed_addr constant [36 x i8] c"  Processors         : %6d,%6d,%6d\0A\00", align 1
@.str.26 = private unnamed_addr constant [42 x i8] c"  Local boxes        : %6d,%6d,%6d = %8d\0A\00", align 1
@.str.27 = private unnamed_addr constant [54 x i8] c"  Box size           : [ %14.10f, %14.10f, %14.10f ]\0A\00", align 1
@.str.28 = private unnamed_addr constant [55 x i8] c"  Box factor         : [ %14.10f, %14.10f, %14.10f ] \0A\00", align 1
@.str.29 = private unnamed_addr constant [37 x i8] c"  Max Link Cell Occupancy: %d of %d\0A\00", align 1
@.str.30 = private unnamed_addr constant [18 x i8] c"Potential data: \0A\00", align 1
@.str.31 = private unnamed_addr constant [15 x i8] c"Memory data: \0A\00", align 1
@.str.32 = private unnamed_addr constant [42 x i8] c"  Intrinsic atom footprint = %4d B/atom \0A\00", align 1
@.str.33 = private unnamed_addr constant [55 x i8] c"  Total atom footprint     = %7.3f MB (%6.2f MB/node)\0A\00", align 1
@.str.34 = private unnamed_addr constant [44 x i8] c"  Link cell atom footprint = %7.3f MB/node\0A\00", align 1
@.str.35 = private unnamed_addr constant [70 x i8] c"  Link cell atom footprint = %7.3f MB/node (including halo cell data\0A\00", align 1
@myargs = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [20 x i8] c"\0A  Arguments are: \0A\00", align 1
@.str.1.10 = private unnamed_addr constant [12 x i8] c"   --%%-%ds\00", align 1
@longest = internal unnamed_addr global i32 1, align 4
@.str.3.11 = private unnamed_addr constant [27 x i8] c" -%c  arg=%1d type=%c  %s\0A\00", align 1
@.str.4.12 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.6.13 = private unnamed_addr constant [42 x i8] c"\0A\0A    invalid switch : -%c in getopt()\0A\0A\0A\00", align 1
@optarg = external local_unnamed_addr global ptr, align 8
@.str.7.14 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.8.15 = private unnamed_addr constant [3 x i8] c"%f\00", align 1
@.str.9.16 = private unnamed_addr constant [4 x i8] c"%lf\00", align 1
@.str.10.17 = private unnamed_addr constant [3 x i8] c"%c\00", align 1
@.str.11.18 = private unnamed_addr constant [95 x i8] c"\0A\0A    invalid type : %c in getopt()\0A    valid values are 'e', 'z'. 'i','d','f','s', and 'c'\0A\0A\0A\00", align 1
@myOptionAlloc.iBase = internal unnamed_addr global i32 129, align 4
@.str.12.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"setfl\00", align 1
@.str.1.46 = private unnamed_addr constant [7 x i8] c"funcfl\00", align 1
@.str.2.50 = private unnamed_addr constant [11 x i8] c"initEamPot\00", align 1
@.str.3.51 = private unnamed_addr constant [25 x i8] c"  Potential type  : EAM\0A\00", align 1
@.str.4.52 = private unnamed_addr constant [24 x i8] c"  Species name    : %s\0A\00", align 1
@.str.5.53 = private unnamed_addr constant [24 x i8] c"  Atomic number   : %d\0A\00", align 1
@.str.6.54 = private unnamed_addr constant [29 x i8] c"  Mass            : %lg amu\0A\00", align 1
@.str.7.55 = private unnamed_addr constant [24 x i8] c"  Lattice type    : %s\0A\00", align 1
@.str.8.56 = private unnamed_addr constant [35 x i8] c"  Lattice spacing : %lg Angstroms\0A\00", align 1
@.str.9.57 = private unnamed_addr constant [35 x i8] c"  Cutoff          : %lg Angstroms\0A\00", align 1
@.str.10.37 = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@.str.11.38 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.12.40 = private unnamed_addr constant [13 x i8] c"eamReadSetfl\00", align 1
@.str.13.41 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.14.43 = private unnamed_addr constant [18 x i8] c"%d %le %d %le %le\00", align 1
@.str.15.44 = private unnamed_addr constant [14 x i8] c"%d %le %le %s\00", align 1
@.str.16.45 = private unnamed_addr constant [4 x i8] c"%lg\00", align 1
@.str.17.39 = private unnamed_addr constant [39 x i8] c"%s: Can't open file %s.  Fatal Error.\0A\00", align 1
@.str.18.42 = private unnamed_addr constant [106 x i8] c"%s: CoMD 1.1 does not support alloys and cannot\0A   read setfl files with multiple species.  Fatal Error.\0A\00", align 1
@.str.19.47 = private unnamed_addr constant [14 x i8] c"eamReadFuncfl\00", align 1
@.str.20.48 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.21.49 = private unnamed_addr constant [51 x i8] c"%s: Potential type %s not supported. Fatal Error.\0A\00", align 1
@__const.createFccLattice.basis = private unnamed_addr constant [4 x [3 x double]] [[3 x double] [double 2.500000e-01, double 2.500000e-01, double 2.500000e-01], [3 x double] [double 2.500000e-01, double 7.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 2.500000e-01, double 7.500000e-01], [3 x double] [double 7.500000e-01, double 7.500000e-01, double 2.500000e-01]], align 16
@.str.1.90 = private unnamed_addr constant [3 x i8] c"Cu\00", align 1
@.str.2.91 = private unnamed_addr constant [36 x i8] c"  Potential type   : Lennard-Jones\0A\00", align 1
@.str.3.92 = private unnamed_addr constant [25 x i8] c"  Species name     : %s\0A\00", align 1
@.str.4.93 = private unnamed_addr constant [25 x i8] c"  Atomic number    : %d\0A\00", align 1
@.str.5.94 = private unnamed_addr constant [30 x i8] c"  Mass             : %lg amu\0A\00", align 1
@.str.6.95 = private unnamed_addr constant [25 x i8] c"  Lattice Type     : %s\0A\00", align 1
@.str.7.96 = private unnamed_addr constant [36 x i8] c"  Lattice spacing  : %lg Angstroms\0A\00", align 1
@.str.8.97 = private unnamed_addr constant [36 x i8] c"  Cutoff           : %lg Angstroms\0A\00", align 1
@.str.9.98 = private unnamed_addr constant [29 x i8] c"  Epsilon          : %lg eV\0A\00", align 1
@.str.10.99 = private unnamed_addr constant [36 x i8] c"  Sigma            : %lg Angstroms\0A\00", align 1
@.str.102 = private unnamed_addr constant [5 x i8] c"pots\00", align 1
@.str.2.103 = private unnamed_addr constant [7 x i8] c"funcfl\00", align 1
@.str.3.104 = private unnamed_addr constant [5 x i8] c"help\00", align 1
@.str.4.105 = private unnamed_addr constant [19 x i8] c"print this message\00", align 1
@.str.5.106 = private unnamed_addr constant [7 x i8] c"potDir\00", align 1
@.str.6.107 = private unnamed_addr constant [20 x i8] c"potential directory\00", align 1
@.str.7.108 = private unnamed_addr constant [8 x i8] c"potName\00", align 1
@.str.8.109 = private unnamed_addr constant [15 x i8] c"potential name\00", align 1
@.str.9.110 = private unnamed_addr constant [8 x i8] c"potType\00", align 1
@.str.10.111 = private unnamed_addr constant [33 x i8] c"potential type (funcfl or setfl)\00", align 1
@.str.11.112 = private unnamed_addr constant [6 x i8] c"doeam\00", align 1
@.str.12.113 = private unnamed_addr constant [23 x i8] c"compute eam potentials\00", align 1
@.str.13.114 = private unnamed_addr constant [3 x i8] c"nx\00", align 1
@.str.14.115 = private unnamed_addr constant [26 x i8] c"number of unit cells in x\00", align 1
@.str.15.116 = private unnamed_addr constant [3 x i8] c"ny\00", align 1
@.str.16.117 = private unnamed_addr constant [26 x i8] c"number of unit cells in y\00", align 1
@.str.17.118 = private unnamed_addr constant [3 x i8] c"nz\00", align 1
@.str.18.119 = private unnamed_addr constant [26 x i8] c"number of unit cells in z\00", align 1
@.str.19.120 = private unnamed_addr constant [6 x i8] c"xproc\00", align 1
@.str.20.121 = private unnamed_addr constant [26 x i8] c"processors in x direction\00", align 1
@.str.21.122 = private unnamed_addr constant [6 x i8] c"yproc\00", align 1
@.str.22.123 = private unnamed_addr constant [26 x i8] c"processors in y direction\00", align 1
@.str.23.124 = private unnamed_addr constant [6 x i8] c"zproc\00", align 1
@.str.24.125 = private unnamed_addr constant [26 x i8] c"processors in z direction\00", align 1
@.str.25.126 = private unnamed_addr constant [7 x i8] c"nSteps\00", align 1
@.str.26.127 = private unnamed_addr constant [21 x i8] c"number of time steps\00", align 1
@.str.27.128 = private unnamed_addr constant [10 x i8] c"printRate\00", align 1
@.str.28.129 = private unnamed_addr constant [31 x i8] c"number of steps between output\00", align 1
@.str.29.130 = private unnamed_addr constant [3 x i8] c"dt\00", align 1
@.str.30.131 = private unnamed_addr constant [18 x i8] c"time step (in fs)\00", align 1
@.str.31.132 = private unnamed_addr constant [4 x i8] c"lat\00", align 1
@.str.32.133 = private unnamed_addr constant [30 x i8] c"lattice parameter (Angstroms)\00", align 1
@.str.33.134 = private unnamed_addr constant [5 x i8] c"temp\00", align 1
@.str.34.135 = private unnamed_addr constant [24 x i8] c"initial temperature (K)\00", align 1
@.str.35.136 = private unnamed_addr constant [6 x i8] c"delta\00", align 1
@.str.36.137 = private unnamed_addr constant [26 x i8] c"initial delta (Angstroms)\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"setfl\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"Cu01.eam.alloy\00", align 1
@.str.39 = private unnamed_addr constant [10 x i8] c"Cu_u6.eam\00", align 1
@.str.40 = private unnamed_addr constant [282 x i8] c"Command Line Parameters:\0A  doeam: %d\0A  potDir: %s\0A  potName: %s\0A  potType: %s\0A  nx: %d\0A  ny: %d\0A  nz: %d\0A  xproc: %d\0A  yproc: %d\0A  zproc: %d\0A  Lattice constant: %g Angstroms\0A  nSteps: %d\0A  printRate: %d\0A  Time step: %g fs\0A  Initial Temperature: %g K\0A  Initial Delta: %g Angstroms\0A\0A\00", align 1
@.str.41 = private unnamed_addr constant [2 x i8] c".\00", align 1
@.str.148 = private unnamed_addr constant [8 x i8] c"%s: %s\0A\00", align 1
@perfTimer = internal unnamed_addr global [11 x %struct.TimersSt] zeroinitializer, align 16
@stdout = external local_unnamed_addr global ptr, align 8
@.str.3.185 = private unnamed_addr constant [31 x i8] c"Mini-Application Name    : %s\0A\00", align 1
@.str.4.187 = private unnamed_addr constant [31 x i8] c"Mini-Application Version : %s\0A\00", align 1
@.str.5.189 = private unnamed_addr constant [11 x i8] c"Platform:\0A\00", align 1
@.str.6.190 = private unnamed_addr constant [16 x i8] c"  hostname: %s\0A\00", align 1
@.str.7.191 = private unnamed_addr constant [11 x i8] c"test-suite\00", align 1
@.str.8.192 = private unnamed_addr constant [19 x i8] c"  kernel name: %s\0A\00", align 1
@.str.9.193 = private unnamed_addr constant [13 x i8] c"'test-suite'\00", align 1
@.str.10.194 = private unnamed_addr constant [22 x i8] c"  kernel release: %s\0A\00", align 1
@.str.11.195 = private unnamed_addr constant [17 x i8] c"  processor: %s\0A\00", align 1
@.str.12.196 = private unnamed_addr constant [8 x i8] c"Build:\0A\00", align 1
@.str.13.197 = private unnamed_addr constant [10 x i8] c"  CC: %s\0A\00", align 1
@.str.14.198 = private unnamed_addr constant [24 x i8] c"  compiler version: %s\0A\00", align 1
@.str.15.199 = private unnamed_addr constant [14 x i8] c"  CFLAGS: %s\0A\00", align 1
@.str.16.200 = private unnamed_addr constant [20 x i8] c"'-std=c99 -DDOUBLE'\00", align 1
@.str.17.201 = private unnamed_addr constant [15 x i8] c"  LDFLAGS: %s\0A\00", align 1
@.str.18.202 = private unnamed_addr constant [6 x i8] c"'-lm'\00", align 1
@.str.19.205 = private unnamed_addr constant [17 x i8] c"  using MPI: %s\0A\00", align 1
@.str.20.204 = private unnamed_addr constant [5 x i8] c"true\00", align 1
@.str.21.203 = private unnamed_addr constant [6 x i8] c"false\00", align 1
@.str.22.206 = private unnamed_addr constant [19 x i8] c"  Threading: none\0A\00", align 1
@.str.23.207 = private unnamed_addr constant [24 x i8] c"  Double Precision: %s\0A\00", align 1
@.str.24.208 = private unnamed_addr constant [19 x i8] c"Run Date/Time: %s\0A\00", align 1
@.str.26.186 = private unnamed_addr constant [12 x i8] c"CoMD-serial\00", align 1
@.str.27.188 = private unnamed_addr constant [4 x i8] c"1.1\00", align 1

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca ptr, align 8
  %4 = alloca i32, align 4
  %5 = alloca [3 x double], align 16
  %6 = alloca %struct.CommandSt, align 8
  %7 = alloca i32, align 4
  %8 = alloca ptr, align 8
  %9 = alloca %struct.CommandSt, align 8
  store i32 %0, ptr %7, align 4, !tbaa !7
  store ptr %1, ptr %8, align 8, !tbaa !11
  call void @initParallel(ptr noundef nonnull %7, ptr noundef nonnull %8) #39
  call void @profileStart(i32 noundef 0) #39
  call void @timestampBarrier(ptr noundef nonnull @.str) #39
  %10 = load ptr, ptr @stdout, align 8, !tbaa !11
  call void @yamlAppInfo(ptr noundef %10) #39
  call void @llvm.lifetime.start.p0(i64 3144, ptr nonnull %9) #40
  %11 = load i32, ptr %7, align 4, !tbaa !7
  %12 = load ptr, ptr %8, align 8, !tbaa !11
  call void @parseCommandLine(ptr nonnull sret(%struct.CommandSt) align 8 %9, i32 noundef %11, ptr noundef %12) #39
  %13 = load ptr, ptr @stdout, align 8, !tbaa !11
  call void @printCmdYaml(ptr noundef %13, ptr noundef nonnull %9) #39
  call void @llvm.lifetime.start.p0(i64 3144, ptr nonnull %6)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(3144) %6, ptr noundef nonnull align 8 dereferenceable(3144) %9, i64 3144, i1 false)
  %14 = call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #41
  %15 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 10
  %16 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 1
  %17 = load <2 x i32>, ptr %15, align 4, !tbaa !7
  store <2 x i32> %17, ptr %14, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 12
  %19 = load double, ptr %18, align 8, !tbaa !13
  %20 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 2
  store double %19, ptr %20, align 8, !tbaa !16
  %21 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 3
  %22 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 7
  %23 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 10
  store ptr null, ptr %23, align 8, !tbaa !18
  %24 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 3
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %21, i8 0, i64 24, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %22, i8 0, i64 16, i1 false)
  %25 = load i32, ptr %24, align 8, !tbaa !19
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %2
  %28 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 2
  %29 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 1
  %30 = call ptr @initEamPot(ptr noundef nonnull %6, ptr noundef nonnull %29, ptr noundef nonnull %28) #39
  br label %33

31:                                               ; preds = %2
  %32 = call ptr @initLjPot() #39
  br label %33

33:                                               ; preds = %31, %27
  %34 = phi ptr [ %30, %27 ], [ %32, %31 ]
  %35 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 9
  store ptr %34, ptr %35, align 8, !tbaa !20
  %36 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 13
  %37 = load double, ptr %36, align 8, !tbaa !21
  %38 = fcmp olt double %37, 0.000000e+00
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = getelementptr inbounds %struct.BasePotentialSt, ptr %34, i64 0, i32 2
  %41 = load double, ptr %40, align 8, !tbaa !22
  br label %42

42:                                               ; preds = %39, %33
  %43 = phi double [ %41, %39 ], [ %37, %33 ]
  %44 = load double, ptr %34, align 8, !tbaa !24
  %45 = getelementptr inbounds %struct.BasePotentialSt, ptr %34, i64 0, i32 3
  %46 = getelementptr inbounds i8, ptr %6, i64 3076
  %47 = load i32, ptr %46, align 4
  %48 = getelementptr inbounds i8, ptr %6, i64 3080
  %49 = getelementptr inbounds i8, ptr %6, i64 3084
  %50 = getelementptr inbounds i8, ptr %6, i64 3088
  %51 = load i32, ptr %50, align 8
  %52 = getelementptr inbounds i8, ptr %6, i64 3092
  %53 = getelementptr inbounds i8, ptr %6, i64 3096
  %54 = load <2 x i32>, ptr %48, align 8
  %55 = load <2 x i32>, ptr %52, align 4
  %56 = extractelement <2 x i32> %55, i64 0
  %57 = mul nsw i32 %56, %51
  %58 = extractelement <2 x i32> %55, i64 1
  %59 = mul nsw i32 %57, %58
  %60 = call i32 @getNRanks() #39
  %61 = icmp eq i32 %59, %60
  br i1 %61, label %68, label %62

62:                                               ; preds = %42
  %63 = call i32 @printRank() #39
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %62
  %66 = load ptr, ptr @stdout, align 8, !tbaa !11
  %67 = call i64 @fwrite(ptr nonnull @.str.5, i64 54, i64 1, ptr %66)
  br label %68

68:                                               ; preds = %65, %62, %42
  %69 = phi i32 [ 1, %65 ], [ 1, %62 ], [ 0, %42 ]
  %70 = fmul double %44, 2.000000e+00
  %71 = sitofp i32 %51 to double
  %72 = fmul double %70, %71
  %73 = sitofp <2 x i32> %55 to <2 x double>
  %74 = insertelement <2 x double> poison, double %70, i64 0
  %75 = shufflevector <2 x double> %74, <2 x double> poison, <2 x i32> zeroinitializer
  %76 = fmul <2 x double> %75, %73
  %77 = sitofp i32 %47 to double
  %78 = fmul double %43, %77
  %79 = fcmp olt double %78, %72
  br i1 %79, label %89, label %80

80:                                               ; preds = %68
  %81 = sitofp <2 x i32> %54 to <2 x double>
  %82 = insertelement <2 x double> poison, double %43, i64 0
  %83 = shufflevector <2 x double> %82, <2 x double> poison, <2 x i32> zeroinitializer
  %84 = fmul <2 x double> %83, %81
  %85 = fcmp olt <2 x double> %84, %76
  %86 = extractelement <2 x i1> %85, i64 0
  %87 = extractelement <2 x i1> %85, i64 1
  %88 = select i1 %86, i1 true, i1 %87
  br i1 %88, label %89, label %98

89:                                               ; preds = %80, %68
  %90 = or i32 %69, 2
  %91 = call i32 @printRank() #39
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %98, label %93

93:                                               ; preds = %89
  %94 = load ptr, ptr @stdout, align 8, !tbaa !11
  %95 = extractelement <2 x double> %76, i64 0
  %96 = extractelement <2 x double> %76, i64 1
  %97 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %94, ptr noundef nonnull @.str.6, double noundef %72, double noundef %95, double noundef %96) #42
  br label %98

98:                                               ; preds = %93, %89, %80
  %99 = phi i32 [ %90, %93 ], [ %90, %89 ], [ %69, %80 ]
  %100 = call i32 @strcasecmp(ptr noundef nonnull %45, ptr noundef nonnull @.str.7) #43
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %110, label %102

102:                                              ; preds = %98
  %103 = or i32 %99, 4
  %104 = call i32 @printRank() #39
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %109, label %106

106:                                              ; preds = %102
  %107 = load ptr, ptr @stdout, align 8, !tbaa !11
  %108 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %107, ptr noundef nonnull @.str.8, ptr noundef nonnull %45) #42
  br label %109

109:                                              ; preds = %106, %102
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40
  store i32 %103, ptr %4, align 4, !tbaa !7
  call void @bcastParallel(ptr noundef nonnull %4, i32 noundef 4, i32 noundef 0) #39
  br label %112

110:                                              ; preds = %98
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40
  store i32 %99, ptr %4, align 4, !tbaa !7
  call void @bcastParallel(ptr noundef nonnull %4, i32 noundef 4, i32 noundef 0) #39
  %111 = icmp eq i32 %99, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %110, %109
  %113 = phi i32 [ %103, %109 ], [ %99, %110 ]
  call void @exit(i32 noundef %113) #44
  unreachable

114:                                              ; preds = %110
  %115 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 5
  %116 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40
  %117 = load ptr, ptr %35, align 8, !tbaa !20
  %118 = call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41
  %119 = getelementptr inbounds %struct.BasePotentialSt, ptr %117, i64 0, i32 4
  %120 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %118, ptr noundef nonnull dereferenceable(1) %119) #39
  %121 = getelementptr inbounds %struct.BasePotentialSt, ptr %117, i64 0, i32 5
  %122 = load i32, ptr %121, align 4, !tbaa !25
  %123 = getelementptr inbounds %struct.SpeciesDataSt, ptr %118, i64 0, i32 1
  store i32 %122, ptr %123, align 4, !tbaa !26
  %124 = getelementptr inbounds %struct.BasePotentialSt, ptr %117, i64 0, i32 1
  %125 = load double, ptr %124, align 8, !tbaa !28
  %126 = getelementptr inbounds %struct.SpeciesDataSt, ptr %118, i64 0, i32 2
  store double %125, ptr %126, align 8, !tbaa !29
  %127 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 6
  store ptr %118, ptr %127, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %5) #40
  %128 = load <2 x i32>, ptr %46, align 4, !tbaa !7
  %129 = sitofp <2 x i32> %128 to <2 x double>
  %130 = insertelement <2 x double> poison, double %43, i64 0
  %131 = shufflevector <2 x double> %130, <2 x double> poison, <2 x i32> zeroinitializer
  %132 = fmul <2 x double> %131, %129
  store <2 x double> %132, ptr %5, align 16, !tbaa !31
  %133 = load i32, ptr %49, align 4, !tbaa !32
  %134 = sitofp i32 %133 to double
  %135 = fmul double %43, %134
  %136 = getelementptr inbounds [3 x double], ptr %5, i64 0, i64 2
  store double %135, ptr %136, align 16, !tbaa !31
  %137 = load i32, ptr %50, align 8, !tbaa !33
  %138 = load i32, ptr %52, align 4, !tbaa !34
  %139 = load i32, ptr %53, align 8, !tbaa !35
  %140 = call ptr @initDecomposition(i32 noundef %137, i32 noundef %138, i32 noundef %139, ptr noundef nonnull %5) #39
  store ptr %140, ptr %21, align 8, !tbaa !36
  %141 = load double, ptr %117, align 8, !tbaa !24
  %142 = call ptr @initLinkCells(ptr noundef %140, double noundef %141) #39
  store ptr %142, ptr %116, align 8, !tbaa !37
  %143 = call ptr @initAtoms(ptr noundef %142) #39
  store ptr %143, ptr %115, align 8, !tbaa !38
  %144 = load i32, ptr %46, align 4, !tbaa !39
  %145 = load i32, ptr %48, align 8, !tbaa !40
  %146 = load i32, ptr %49, align 4, !tbaa !32
  call void @createFccLattice(i32 noundef %144, i32 noundef %145, i32 noundef %146, double noundef %43, ptr noundef nonnull %14) #39
  %147 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 14
  %148 = load double, ptr %147, align 8, !tbaa !41
  call void @setTemperature(ptr noundef nonnull %14, double noundef %148) #39
  %149 = getelementptr inbounds %struct.CommandSt, ptr %6, i64 0, i32 15
  %150 = load double, ptr %149, align 8, !tbaa !42
  call void @randomDisplacements(ptr noundef nonnull %14, double noundef %150) #39
  %151 = load ptr, ptr %21, align 8, !tbaa !36
  %152 = load ptr, ptr %116, align 8, !tbaa !37
  %153 = call ptr @initAtomHaloExchange(ptr noundef %151, ptr noundef %152) #39
  store ptr %153, ptr %23, align 8, !tbaa !18
  call void @profileStart(i32 noundef 5) #39
  call void @redistributeAtoms(ptr noundef nonnull %14) #39
  call void @profileStop(i32 noundef 5) #39
  call void @profileStart(i32 noundef 7) #39
  call void @computeForce(ptr noundef nonnull %14) #39
  call void @profileStop(i32 noundef 7) #39
  call void @kineticEnergy(ptr noundef nonnull %14) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 3144, ptr nonnull %6)
  %154 = load ptr, ptr @stdout, align 8, !tbaa !11
  %155 = load ptr, ptr %116, align 8, !tbaa !37
  %156 = call i32 @maxOccupancy(ptr noundef %155) #39
  %157 = call i32 @printRank() #39
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %267, label %159

159:                                              ; preds = %114
  %160 = call i64 @fwrite(ptr nonnull @.str.20, i64 18, i64 1, ptr %154)
  %161 = load ptr, ptr %115, align 8, !tbaa !38
  %162 = getelementptr inbounds %struct.AtomsSt, ptr %161, i64 0, i32 1
  %163 = load i32, ptr %162, align 4, !tbaa !43
  %164 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.21, i32 noundef %163) #42
  %165 = load ptr, ptr %21, align 8, !tbaa !36
  %166 = getelementptr inbounds %struct.DomainSt, ptr %165, i64 0, i32 2
  %167 = load double, ptr %166, align 8, !tbaa !31
  %168 = getelementptr inbounds %struct.DomainSt, ptr %165, i64 0, i32 2, i64 1
  %169 = load double, ptr %168, align 8, !tbaa !31
  %170 = getelementptr inbounds %struct.DomainSt, ptr %165, i64 0, i32 2, i64 2
  %171 = load double, ptr %170, align 8, !tbaa !31
  %172 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.22, double noundef %167, double noundef %169, double noundef %171) #42
  %173 = load ptr, ptr %21, align 8, !tbaa !36
  %174 = getelementptr inbounds %struct.DomainSt, ptr %173, i64 0, i32 3
  %175 = load double, ptr %174, align 8, !tbaa !31
  %176 = getelementptr inbounds %struct.DomainSt, ptr %173, i64 0, i32 3, i64 1
  %177 = load double, ptr %176, align 8, !tbaa !31
  %178 = getelementptr inbounds %struct.DomainSt, ptr %173, i64 0, i32 3, i64 2
  %179 = load double, ptr %178, align 8, !tbaa !31
  %180 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.23, double noundef %175, double noundef %177, double noundef %179) #42
  call void @printSeparator(ptr noundef %154) #39
  %181 = call i64 @fwrite(ptr nonnull @.str.24, i64 21, i64 1, ptr %154)
  %182 = load ptr, ptr %21, align 8, !tbaa !36
  %183 = load i32, ptr %182, align 8, !tbaa !7
  %184 = getelementptr inbounds [3 x i32], ptr %182, i64 0, i64 1
  %185 = load i32, ptr %184, align 4, !tbaa !7
  %186 = getelementptr inbounds [3 x i32], ptr %182, i64 0, i64 2
  %187 = load i32, ptr %186, align 8, !tbaa !7
  %188 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.25, i32 noundef %183, i32 noundef %185, i32 noundef %187) #42
  %189 = load ptr, ptr %116, align 8, !tbaa !37
  %190 = load i32, ptr %189, align 8, !tbaa !7
  %191 = getelementptr inbounds [3 x i32], ptr %189, i64 0, i64 1
  %192 = load i32, ptr %191, align 4, !tbaa !7
  %193 = getelementptr inbounds [3 x i32], ptr %189, i64 0, i64 2
  %194 = load i32, ptr %193, align 8, !tbaa !7
  %195 = mul nsw i32 %192, %190
  %196 = mul nsw i32 %195, %194
  %197 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.26, i32 noundef %190, i32 noundef %192, i32 noundef %194, i32 noundef %196) #42
  %198 = load ptr, ptr %116, align 8, !tbaa !37
  %199 = getelementptr inbounds %struct.LinkCellSt, ptr %198, i64 0, i32 6
  %200 = load double, ptr %199, align 8, !tbaa !31
  %201 = getelementptr inbounds %struct.LinkCellSt, ptr %198, i64 0, i32 6, i64 1
  %202 = load double, ptr %201, align 8, !tbaa !31
  %203 = getelementptr inbounds %struct.LinkCellSt, ptr %198, i64 0, i32 6, i64 2
  %204 = load double, ptr %203, align 8, !tbaa !31
  %205 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.27, double noundef %200, double noundef %202, double noundef %204) #42
  %206 = load ptr, ptr %116, align 8, !tbaa !37
  %207 = getelementptr inbounds %struct.LinkCellSt, ptr %206, i64 0, i32 6
  %208 = load double, ptr %207, align 8, !tbaa !31
  %209 = load ptr, ptr %35, align 8, !tbaa !20
  %210 = load double, ptr %209, align 8, !tbaa !24
  %211 = fdiv double %208, %210
  %212 = getelementptr inbounds %struct.LinkCellSt, ptr %206, i64 0, i32 6, i64 1
  %213 = load double, ptr %212, align 8, !tbaa !31
  %214 = fdiv double %213, %210
  %215 = getelementptr inbounds %struct.LinkCellSt, ptr %206, i64 0, i32 6, i64 2
  %216 = load double, ptr %215, align 8, !tbaa !31
  %217 = fdiv double %216, %210
  %218 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.28, double noundef %211, double noundef %214, double noundef %217) #42
  %219 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.29, i32 noundef %156, i32 noundef 64) #42
  call void @printSeparator(ptr noundef %154) #39
  %220 = call i64 @fwrite(ptr nonnull @.str.30, i64 17, i64 1, ptr %154)
  %221 = load ptr, ptr %35, align 8, !tbaa !20
  %222 = getelementptr inbounds %struct.BasePotentialSt, ptr %221, i64 0, i32 7
  %223 = load ptr, ptr %222, align 8, !tbaa !45
  call void %223(ptr noundef %154, ptr noundef %221) #39
  %224 = load ptr, ptr %115, align 8, !tbaa !38
  %225 = load i32, ptr %224, align 8, !tbaa !46
  %226 = mul nsw i32 %225, 88
  %227 = sitofp i32 %226 to float
  %228 = fmul float %227, 0x3F50000000000000
  %229 = fmul float %228, 0x3F50000000000000
  %230 = getelementptr inbounds %struct.AtomsSt, ptr %224, i64 0, i32 1
  %231 = load i32, ptr %230, align 4, !tbaa !43
  %232 = mul nsw i32 %231, 88
  %233 = sitofp i32 %232 to float
  %234 = fmul float %233, 0x3F50000000000000
  %235 = fmul float %234, 0x3F50000000000000
  %236 = load ptr, ptr %116, align 8, !tbaa !37
  %237 = load i32, ptr %236, align 8, !tbaa !7
  %238 = getelementptr inbounds [3 x i32], ptr %236, i64 0, i64 1
  %239 = load i32, ptr %238, align 4, !tbaa !7
  %240 = mul nsw i32 %239, %237
  %241 = getelementptr inbounds [3 x i32], ptr %236, i64 0, i64 2
  %242 = load i32, ptr %241, align 8, !tbaa !7
  %243 = mul nsw i32 %240, %242
  %244 = add nsw i32 %237, 2
  %245 = add nsw i32 %239, 2
  %246 = mul nsw i32 %245, %244
  %247 = add nsw i32 %242, 2
  %248 = mul nsw i32 %246, %247
  %249 = sitofp i32 %243 to float
  %250 = fmul float %249, 5.632000e+03
  %251 = fmul float %250, 0x3F50000000000000
  %252 = fmul float %251, 0x3F50000000000000
  %253 = sitofp i32 %248 to float
  %254 = fmul float %253, 5.632000e+03
  %255 = fmul float %254, 0x3F50000000000000
  %256 = fmul float %255, 0x3F50000000000000
  call void @printSeparator(ptr noundef %154) #39
  %257 = call i64 @fwrite(ptr nonnull @.str.31, i64 14, i64 1, ptr %154)
  %258 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.32, i32 noundef 88) #42
  %259 = fpext float %235 to double
  %260 = fpext float %229 to double
  %261 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.33, double noundef %259, double noundef %260) #42
  %262 = fpext float %252 to double
  %263 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.34, double noundef %262) #42
  %264 = fpext float %256 to double
  %265 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %154, ptr noundef nonnull @.str.35, double noundef %264) #42
  %266 = call i32 @fflush(ptr noundef %154) #42
  br label %267

267:                                              ; preds = %159, %114
  call fastcc void @sumAtoms(ptr noundef nonnull %14) #42
  %268 = load double, ptr %22, align 8, !tbaa !47
  %269 = getelementptr inbounds %struct.SimFlatSt, ptr %14, i64 0, i32 8
  %270 = load double, ptr %269, align 8, !tbaa !48
  %271 = fadd double %268, %270
  %272 = load ptr, ptr %115, align 8, !tbaa !38
  %273 = getelementptr inbounds %struct.AtomsSt, ptr %272, i64 0, i32 1
  %274 = load i32, ptr %273, align 4, !tbaa !43
  %275 = sitofp i32 %274 to double
  %276 = fdiv double %271, %275
  %277 = call i32 @printRank() #39
  %278 = icmp eq i32 %277, 0
  br i1 %278, label %287, label %279

279:                                              ; preds = %267
  %280 = load ptr, ptr @stdout, align 8, !tbaa !11
  %281 = call i32 @fputc(i32 10, ptr %280)
  %282 = load ptr, ptr @stdout, align 8, !tbaa !11
  call void @printSeparator(ptr noundef %282) #39
  %283 = load ptr, ptr @stdout, align 8, !tbaa !11
  %284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %283, ptr noundef nonnull @.str.10, double noundef %276, i32 noundef %274) #42
  %285 = load ptr, ptr @stdout, align 8, !tbaa !11
  %286 = call i32 @fputc(i32 10, ptr %285)
  br label %287

287:                                              ; preds = %279, %267
  call void @timestampBarrier(ptr noundef nonnull @.str.1) #39
  call void @timestampBarrier(ptr noundef nonnull @.str.2) #39
  %288 = load i32, ptr %14, align 8, !tbaa !49
  %289 = load i32, ptr %16, align 4, !tbaa !50
  call void @profileStart(i32 noundef 1) #39
  %290 = icmp sgt i32 %288, 0
  br i1 %290, label %291, label %298

291:                                              ; preds = %291, %287
  %292 = phi i32 [ %296, %291 ], [ 0, %287 ]
  call void @profileStart(i32 noundef 10) #39
  call fastcc void @sumAtoms(ptr noundef nonnull %14) #42
  call void @profileStop(i32 noundef 10) #39
  %293 = call double @getElapsedTime(i32 noundef 2) #39
  call fastcc void @printThings(ptr noundef nonnull %14, i32 noundef %292) #42
  call void @profileStart(i32 noundef 2) #39
  %294 = load double, ptr %20, align 8, !tbaa !16
  %295 = call double @timestep(ptr noundef nonnull %14, i32 noundef %289, double noundef %294) #39
  call void @profileStop(i32 noundef 2) #39
  %296 = add nsw i32 %292, %289
  %297 = icmp slt i32 %296, %288
  br i1 %297, label %291, label %298

298:                                              ; preds = %291, %287
  %299 = phi i32 [ 0, %287 ], [ %296, %291 ]
  call void @profileStop(i32 noundef 1) #39
  call fastcc void @sumAtoms(ptr noundef nonnull %14) #42
  %300 = call double @getElapsedTime(i32 noundef 2) #39
  call fastcc void @printThings(ptr noundef nonnull %14, i32 noundef %299) #42
  call void @timestampBarrier(ptr noundef nonnull @.str.3) #39
  %301 = call i32 @printRank() #39
  %302 = icmp eq i32 %301, 0
  br i1 %302, label %340, label %303

303:                                              ; preds = %298
  %304 = load double, ptr %22, align 8, !tbaa !47
  %305 = load double, ptr %269, align 8, !tbaa !48
  %306 = fadd double %304, %305
  %307 = load ptr, ptr %115, align 8, !tbaa !38
  %308 = getelementptr inbounds %struct.AtomsSt, ptr %307, i64 0, i32 1
  %309 = load i32, ptr %308, align 4, !tbaa !43
  %310 = sitofp i32 %309 to double
  %311 = fdiv double %306, %310
  %312 = load ptr, ptr @stdout, align 8, !tbaa !11
  %313 = call i32 @fputc(i32 10, ptr %312)
  %314 = load ptr, ptr @stdout, align 8, !tbaa !11
  %315 = call i32 @fputc(i32 10, ptr %314)
  %316 = load ptr, ptr @stdout, align 8, !tbaa !11
  %317 = call i64 @fwrite(ptr nonnull @.str.11, i64 23, i64 1, ptr %316)
  %318 = load ptr, ptr @stdout, align 8, !tbaa !11
  %319 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %318, ptr noundef nonnull @.str.12, double noundef %276) #42
  %320 = load ptr, ptr @stdout, align 8, !tbaa !11
  %321 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %320, ptr noundef nonnull @.str.13, double noundef %311) #42
  %322 = load ptr, ptr @stdout, align 8, !tbaa !11
  %323 = fdiv double %311, %276
  %324 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %322, ptr noundef nonnull @.str.14, double noundef %323) #42
  %325 = icmp eq i32 %309, %274
  br i1 %325, label %326, label %332

326:                                              ; preds = %303
  %327 = load ptr, ptr @stdout, align 8, !tbaa !11
  %328 = load ptr, ptr %115, align 8, !tbaa !38
  %329 = getelementptr inbounds %struct.AtomsSt, ptr %328, i64 0, i32 1
  %330 = load i32, ptr %329, align 4, !tbaa !43
  %331 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %327, ptr noundef nonnull @.str.15, i32 noundef %330) #42
  br label %340

332:                                              ; preds = %303
  %333 = sub nsw i32 %309, %274
  %334 = load ptr, ptr @stdout, align 8, !tbaa !11
  %335 = call i64 @fwrite(ptr nonnull @.str.16, i64 30, i64 1, ptr %334)
  %336 = load ptr, ptr @stdout, align 8, !tbaa !11
  %337 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %336, ptr noundef nonnull @.str.17, i32 noundef %333) #42
  %338 = load ptr, ptr @stdout, align 8, !tbaa !11
  %339 = call i64 @fwrite(ptr nonnull @.str.16, i64 30, i64 1, ptr %338)
  br label %340

340:                                              ; preds = %332, %326, %298
  call void @profileStop(i32 noundef 0) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40
  %341 = load ptr, ptr %35, align 8, !tbaa !20
  store ptr %341, ptr %3, align 8, !tbaa !11
  %342 = icmp eq ptr %341, null
  br i1 %342, label %346, label %343

343:                                              ; preds = %340
  %344 = getelementptr inbounds %struct.BasePotentialSt, ptr %341, i64 0, i32 8
  %345 = load ptr, ptr %344, align 8, !tbaa !51
  call void %345(ptr noundef nonnull %3) #39
  br label %346

346:                                              ; preds = %343, %340
  call void @destroyLinkCells(ptr noundef nonnull %116) #39
  %347 = load ptr, ptr %115, align 8, !tbaa !38
  call void @destroyAtoms(ptr noundef %347) #39
  call void @destroyHaloExchange(ptr noundef nonnull %23) #39
  %348 = load ptr, ptr %127, align 8, !tbaa !30
  call void @free(ptr noundef %348) #39
  %349 = load ptr, ptr %21, align 8, !tbaa !36
  call void @free(ptr noundef %349) #39
  call void @free(ptr noundef nonnull %14) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40
  call void @timestampBarrier(ptr noundef nonnull @.str.4) #39
  call void @destroyParallel() #39
  call void @llvm.lifetime.end.p0(i64 3144, ptr nonnull %9) #40
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #4

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sumAtoms(ptr nocapture noundef readonly %0) unnamed_addr #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !38
  store i32 0, ptr %3, align 8, !tbaa !46
  %4 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.LinkCellSt, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.LinkCellSt, ptr %5, i64 0, i32 8
  %11 = load ptr, ptr %10, align 8, !tbaa !54
  %12 = zext i32 %7 to i64
  br label %16

13:                                               ; preds = %16, %1
  tail call void @profileStart(i32 noundef 10) #39
  %14 = load ptr, ptr %2, align 8, !tbaa !38
  %15 = getelementptr inbounds %struct.AtomsSt, ptr %14, i64 0, i32 1
  tail call void @addIntParallel(ptr noundef %14, ptr noundef nonnull %15, i32 noundef 1) #39
  tail call void @profileStop(i32 noundef 10) #39
  ret void

16:                                               ; preds = %16, %9
  %17 = phi i64 [ 0, %9 ], [ %22, %16 ]
  %18 = phi i32 [ 0, %9 ], [ %21, %16 ]
  %19 = getelementptr inbounds i32, ptr %11, i64 %17
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = add nsw i32 %18, %20
  store i32 %21, ptr %3, align 8, !tbaa !46
  %22 = add nuw nsw i64 %17, 1
  %23 = icmp eq i64 %22, %12
  br i1 %23, label %13, label %16
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @printThings(ptr nocapture noundef readonly %0, i32 noundef %1) unnamed_addr #0 {
  %3 = tail call i32 @printRank() #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %33, label %5

5:                                                ; preds = %2
  %6 = load i1, ptr @printThings.firstCall, align 4
  br i1 %6, label %12, label %7

7:                                                ; preds = %5
  store i1 true, ptr @printThings.firstCall, align 4
  %8 = load ptr, ptr @stdout, align 8, !tbaa !11
  %9 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 215, i64 1, ptr %8)
  %10 = load ptr, ptr @stdout, align 8, !tbaa !11
  %11 = tail call i32 @fflush(ptr noundef %10) #42
  br label %12

12:                                               ; preds = %7, %5
  %13 = sitofp i32 %1 to double
  %14 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 2
  %15 = load double, ptr %14, align 8, !tbaa !16
  %16 = fmul double %15, %13
  %17 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 7
  %18 = load double, ptr %17, align 8, !tbaa !47
  %19 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 8
  %20 = load double, ptr %19, align 8, !tbaa !48
  %21 = fadd double %18, %20
  %22 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %23 = load ptr, ptr %22, align 8, !tbaa !38
  %24 = getelementptr inbounds %struct.AtomsSt, ptr %23, i64 0, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !43
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %21, %26
  %28 = fdiv double %20, %26
  %29 = fdiv double %18, %26
  %30 = fdiv double %28, 0x3F20F13ED339F07F
  %31 = load ptr, ptr @stdout, align 8, !tbaa !11
  %32 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %31, ptr noundef nonnull @.str.19, i32 noundef %1, double noundef %16, double noundef %27, double noundef %29, double noundef %28, double noundef %30, double noundef 0.000000e+00, i32 noundef %25) #42
  br label %33

33:                                               ; preds = %12, %2
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @addArg(ptr noundef %0, i8 noundef signext %1, i32 noundef %2, i8 noundef signext %3, ptr noundef %4, i32 noundef %5, ptr noundef %6) #11 {
  %8 = tail call noalias dereferenceable_or_null(48) ptr @calloc(i64 noundef 1, i64 noundef 48) #45
  %9 = tail call fastcc ptr @dupString(ptr noundef %6) #42
  store ptr %9, ptr %8, align 8, !tbaa !55
  %10 = tail call fastcc ptr @dupString(ptr noundef %0) #42
  %11 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !57
  %12 = icmp eq i8 %1, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = load i32, ptr @myOptionAlloc.iBase, align 4, !tbaa !7
  %15 = trunc i32 %14 to i8
  %16 = add nsw i32 %14, 1
  store i32 %16, ptr @myOptionAlloc.iBase, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi i8 [ %15, %13 ], [ %1, %7 ]
  %19 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 2
  store i8 %18, ptr %19, align 8
  %20 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 3
  store i32 %2, ptr %20, align 4, !tbaa !58
  %21 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 4
  store i8 %3, ptr %21, align 8, !tbaa !59
  %22 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 6
  store ptr %4, ptr %22, align 8, !tbaa !60
  %23 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 5
  store i32 %5, ptr %23, align 4, !tbaa !61
  %24 = icmp eq ptr %0, null
  br i1 %24, label %32, label %25

25:                                               ; preds = %17
  %26 = load i32, ptr @longest, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #43
  %29 = icmp ult i64 %28, %27
  %30 = trunc i64 %28 to i32
  %31 = select i1 %29, i32 %26, i32 %30
  store i32 %31, ptr @longest, align 4, !tbaa !7
  br label %32

32:                                               ; preds = %25, %17
  %33 = load ptr, ptr @myargs, align 8, !tbaa !11
  %34 = icmp eq ptr %33, null
  br i1 %34, label %42, label %35

35:                                               ; preds = %35, %32
  %36 = phi ptr [ %38, %35 ], [ %33, %32 ]
  %37 = getelementptr inbounds %struct.MyOptionSt, ptr %36, i64 0, i32 7
  %38 = load ptr, ptr %37, align 8, !tbaa !62
  %39 = icmp eq ptr %38, null
  br i1 %39, label %40, label %35

40:                                               ; preds = %35
  %.lcssa = phi ptr [ %36, %35 ]
  %41 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 7
  br label %42

42:                                               ; preds = %40, %32
  %43 = phi ptr [ %41, %40 ], [ @myargs, %32 ]
  store ptr %8, ptr %43, align 8, !tbaa !11
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @calloc(i64 noundef, i64 noundef) local_unnamed_addr #12

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc ptr @dupString(ptr noundef readonly %0) unnamed_addr #13 {
  %2 = icmp eq ptr %0, null
  %3 = select i1 %2, ptr @.str.12.1, ptr %0
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %3) #43
  %5 = add i64 %4, 1
  %6 = tail call noalias ptr @calloc(i64 noundef %5, i64 noundef 1) #45
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %3) #39
  ret ptr %6
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nounwind optsize uwtable
define internal void @freeArgs() #0 {
  %1 = load ptr, ptr @myargs, align 8, !tbaa !11
  %2 = icmp eq ptr %1, null
  br i1 %2, label %17, label %3

3:                                                ; preds = %15, %0
  %4 = phi ptr [ %6, %15 ], [ %1, %0 ]
  %5 = getelementptr inbounds %struct.MyOptionSt, ptr %4, i64 0, i32 7
  %6 = load ptr, ptr %5, align 8, !tbaa !62
  %7 = getelementptr inbounds %struct.MyOptionSt, ptr %4, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !57
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %3
  tail call void @free(ptr noundef nonnull %8) #39
  br label %11

11:                                               ; preds = %10, %3
  %12 = load ptr, ptr %4, align 8, !tbaa !55
  %13 = icmp eq ptr %12, null
  br i1 %13, label %15, label %14

14:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %12) #39
  br label %15

15:                                               ; preds = %14, %11
  tail call void @free(ptr noundef nonnull %4) #39
  store ptr %6, ptr @myargs, align 8, !tbaa !11
  %16 = icmp eq ptr %6, null
  br i1 %16, label %17, label %3

17:                                               ; preds = %15, %0
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @printArgs() #11 {
  %1 = alloca [4096 x i8], align 16
  %2 = load ptr, ptr @myargs, align 8, !tbaa !11
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %1) #40
  %3 = load ptr, ptr @stdout, align 8, !tbaa !11
  %4 = tail call i64 @fwrite(ptr nonnull @.str.9, i64 19, i64 1, ptr %3)
  %5 = load i32, ptr @longest, align 4, !tbaa !7
  %6 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) @.str.1.10, i32 noundef %5) #39
  %7 = icmp eq ptr %2, null
  br i1 %7, label %31, label %8

8:                                                ; preds = %8, %0
  %9 = phi ptr [ %29, %8 ], [ %2, %0 ]
  %10 = getelementptr inbounds %struct.MyOptionSt, ptr %9, i64 0, i32 2
  %11 = load i8, ptr %10, align 8, !tbaa !63
  %12 = icmp eq i8 %11, -1
  %13 = load ptr, ptr @stdout, align 8, !tbaa !11
  %14 = getelementptr inbounds %struct.MyOptionSt, ptr %9, i64 0, i32 1
  %15 = load ptr, ptr %14, align 8, !tbaa !57
  %16 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %13, ptr noundef nonnull %1, ptr noundef %15) #42
  %17 = load ptr, ptr @stdout, align 8, !tbaa !11
  %18 = load i8, ptr %10, align 1
  %19 = select i1 %12, i8 45, i8 %18
  %20 = zext i8 %19 to i32
  %21 = getelementptr inbounds %struct.MyOptionSt, ptr %9, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !58
  %23 = getelementptr inbounds %struct.MyOptionSt, ptr %9, i64 0, i32 4
  %24 = load i8, ptr %23, align 8, !tbaa !59
  %25 = sext i8 %24 to i32
  %26 = load ptr, ptr %9, align 8, !tbaa !55
  %27 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %17, ptr noundef nonnull @.str.3.11, i32 noundef %20, i32 noundef %22, i32 noundef %25, ptr noundef %26) #42
  %28 = getelementptr inbounds %struct.MyOptionSt, ptr %9, i64 0, i32 7
  %29 = load ptr, ptr %28, align 8, !tbaa !62
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %8

31:                                               ; preds = %8, %0
  %32 = load ptr, ptr @stdout, align 8, !tbaa !11
  %33 = tail call i64 @fwrite(ptr nonnull @.str.4.12, i64 2, i64 1, ptr %32)
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %1) #40
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal void @processArgs(i32 noundef %0, ptr noundef %1) #0 {
  %3 = alloca i32, align 4
  %4 = load ptr, ptr @myargs, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %116, label %6

6:                                                ; preds = %6, %2
  %7 = phi i32 [ %14, %6 ], [ 1, %2 ]
  %8 = phi ptr [ %12, %6 ], [ %4, %2 ]
  %9 = phi i32 [ %10, %6 ], [ 0, %2 ]
  %10 = add nuw nsw i32 %9, 1
  %11 = getelementptr inbounds %struct.MyOptionSt, ptr %8, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !62
  %13 = icmp eq ptr %12, null
  %14 = add nuw i32 %7, 1
  br i1 %13, label %15, label %6

15:                                               ; preds = %6
  %.lcssa4 = phi i32 [ %7, %6 ]
  %.lcssa3 = phi i32 [ %10, %6 ]
  %16 = shl nuw i32 %.lcssa3, 1
  %17 = add i32 %16, 4
  %18 = sext i32 %17 to i64
  %19 = tail call noalias ptr @calloc(i64 noundef %18, i64 noundef 1) #45
  %20 = zext i32 %.lcssa3 to i64
  %21 = tail call noalias ptr @calloc(i64 noundef %20, i64 noundef 32) #45
  %22 = zext i32 %.lcssa4 to i64
  br label %23

23:                                               ; preds = %43, %15
  %24 = phi i64 [ 0, %15 ], [ %46, %43 ]
  %25 = phi ptr [ %4, %15 ], [ %45, %43 ]
  %26 = getelementptr inbounds %struct.MyOptionSt, ptr %25, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !57
  %28 = getelementptr inbounds %struct.option, ptr %21, i64 %24
  store ptr %27, ptr %28, align 8, !tbaa !64
  %29 = getelementptr inbounds %struct.MyOptionSt, ptr %25, i64 0, i32 3
  %30 = load i32, ptr %29, align 4, !tbaa !58
  %31 = getelementptr inbounds %struct.option, ptr %21, i64 %24, i32 1
  store i32 %30, ptr %31, align 8, !tbaa !66
  %32 = getelementptr inbounds %struct.option, ptr %21, i64 %24, i32 2
  store ptr null, ptr %32, align 8, !tbaa !67
  %33 = getelementptr inbounds %struct.MyOptionSt, ptr %25, i64 0, i32 2
  %34 = load i8, ptr %33, align 8, !tbaa !63
  %35 = zext i8 %34 to i32
  %36 = getelementptr inbounds %struct.option, ptr %21, i64 %24, i32 3
  store i32 %35, ptr %36, align 8, !tbaa !68
  %37 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) %19, ptr noundef nonnull dereferenceable(1) %33) #39
  %38 = load i32, ptr %29, align 4, !tbaa !58
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %43, label %40

40:                                               ; preds = %23
  %41 = tail call i64 @strlen(ptr nonnull dereferenceable(1) %19)
  %42 = getelementptr inbounds i8, ptr %19, i64 %41
  store i16 58, ptr %42, align 1
  br label %43

43:                                               ; preds = %40, %23
  %44 = getelementptr inbounds %struct.MyOptionSt, ptr %25, i64 0, i32 7
  %45 = load ptr, ptr %44, align 8, !tbaa !62
  %46 = add nuw nsw i64 %24, 1
  %47 = icmp eq i64 %46, %22
  br i1 %47, label %48, label %23

48:                                               ; preds = %114, %43
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40
  store i32 0, ptr %3, align 4, !tbaa !7
  %49 = call i32 @getopt_long(i32 noundef %0, ptr noundef %1, ptr noundef %19, ptr noundef %21, ptr noundef nonnull %3) #39
  %50 = icmp eq i32 %49, -1
  br i1 %50, label %115, label %51

51:                                               ; preds = %48
  %52 = load ptr, ptr @myargs, align 8, !tbaa !11
  %53 = trunc i32 %49 to i8
  %54 = icmp eq ptr %52, null
  br i1 %54, label %64, label %55

55:                                               ; preds = %60, %51
  %56 = phi ptr [ %62, %60 ], [ %52, %51 ]
  %57 = getelementptr inbounds %struct.MyOptionSt, ptr %56, i64 0, i32 2
  %58 = load i8, ptr %57, align 8, !tbaa !63
  %59 = icmp eq i8 %58, %53
  br i1 %59, label %67, label %60

60:                                               ; preds = %55
  %61 = getelementptr inbounds %struct.MyOptionSt, ptr %56, i64 0, i32 7
  %62 = load ptr, ptr %61, align 8, !tbaa !62
  %63 = icmp eq ptr %62, null
  br i1 %63, label %64, label %55

64:                                               ; preds = %60, %51
  %.lcssa2 = phi i32 [ %49, %60 ], [ %49, %51 ]
  %65 = load ptr, ptr @stdout, align 8, !tbaa !11
  %66 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %65, ptr noundef nonnull @.str.6.13, i32 noundef %.lcssa2) #42
  br label %115

67:                                               ; preds = %55
  %.lcssa = phi ptr [ %56, %55 ]
  %68 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !58
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %71, label %74

71:                                               ; preds = %67
  %72 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %73 = load ptr, ptr %72, align 8, !tbaa !60
  store i32 1, ptr %73, align 4, !tbaa !7
  br label %114

74:                                               ; preds = %67
  %75 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 4
  %76 = load i8, ptr %75, align 8, !tbaa !59
  %77 = sext i8 %76 to i32
  switch i32 %77, label %111 [
    i32 105, label %78
    i32 102, label %83
    i32 100, label %88
    i32 115, label %93
    i32 99, label %106
  ]

78:                                               ; preds = %74
  %79 = load ptr, ptr @optarg, align 8, !tbaa !11
  %80 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %81 = load ptr, ptr %80, align 8, !tbaa !60
  %82 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %79, ptr noundef nonnull @.str.7.14, ptr noundef %81) #39
  br label %114

83:                                               ; preds = %74
  %84 = load ptr, ptr @optarg, align 8, !tbaa !11
  %85 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %86 = load ptr, ptr %85, align 8, !tbaa !60
  %87 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %84, ptr noundef nonnull @.str.8.15, ptr noundef %86) #39
  br label %114

88:                                               ; preds = %74
  %89 = load ptr, ptr @optarg, align 8, !tbaa !11
  %90 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %91 = load ptr, ptr %90, align 8, !tbaa !60
  %92 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %89, ptr noundef nonnull @.str.9.16, ptr noundef %91) #39
  br label %114

93:                                               ; preds = %74
  %94 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %95 = load ptr, ptr %94, align 8, !tbaa !60
  %96 = load ptr, ptr @optarg, align 8, !tbaa !11
  %97 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 5
  %98 = load i32, ptr %97, align 4, !tbaa !61
  %99 = sext i32 %98 to i64
  %100 = call ptr @strncpy(ptr noundef %95, ptr noundef %96, i64 noundef %99) #39
  %101 = load ptr, ptr %94, align 8, !tbaa !60
  %102 = load i32, ptr %97, align 4, !tbaa !61
  %103 = add nsw i32 %102, -1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i8, ptr %101, i64 %104
  store i8 0, ptr %105, align 1, !tbaa !63
  br label %114

106:                                              ; preds = %74
  %107 = load ptr, ptr @optarg, align 8, !tbaa !11
  %108 = getelementptr inbounds %struct.MyOptionSt, ptr %.lcssa, i64 0, i32 6
  %109 = load ptr, ptr %108, align 8, !tbaa !60
  %110 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %107, ptr noundef nonnull @.str.10.17, ptr noundef %109) #39
  br label %114

111:                                              ; preds = %74
  %112 = load ptr, ptr @stdout, align 8, !tbaa !11
  %113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %112, ptr noundef nonnull @.str.11.18, i32 noundef %49) #42
  br label %114

114:                                              ; preds = %111, %106, %93, %88, %83, %78, %71
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40
  br label %48

115:                                              ; preds = %64, %48
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40
  call void @free(ptr noundef %21) #39
  call void @free(ptr noundef %19) #39
  br label %116

116:                                              ; preds = %115, %2
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nounwind optsize
declare i32 @getopt_long(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #15

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @initDecomposition(i32 noundef %0, i32 noundef %1, i32 noundef %2, ptr nocapture noundef readonly %3) #0 {
  %5 = tail call noalias dereferenceable_or_null(168) ptr @malloc(i64 noundef 168) #41
  store i32 %0, ptr %5, align 8, !tbaa !7
  %6 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 1
  store i32 %1, ptr %6, align 4, !tbaa !7
  %7 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 2
  store i32 %2, ptr %7, align 8, !tbaa !7
  %8 = tail call i32 @getMyRank() #39
  %9 = srem i32 %8, %0
  %10 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 1
  store i32 %9, ptr %10, align 4, !tbaa !7
  %11 = sdiv i32 %8, %0
  %12 = srem i32 %11, %1
  %13 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 1, i64 1
  store i32 %12, ptr %13, align 4, !tbaa !7
  %14 = sdiv i32 %11, %1
  %15 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 1, i64 2
  store i32 %14, ptr %15, align 4, !tbaa !7
  %16 = getelementptr i8, ptr %5, i64 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %16, i8 0, i64 24, i1 false), !tbaa !31
  %17 = getelementptr i8, ptr %5, i64 48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa !31
  %18 = getelementptr i8, ptr %5, i64 72
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %18, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false), !tbaa !31
  br label %20

19:                                               ; preds = %20
  ret ptr %5

20:                                               ; preds = %20, %4
  %21 = phi i64 [ 0, %4 ], [ %40, %20 ]
  %22 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 4, i64 %21
  %23 = load double, ptr %22, align 8, !tbaa !31
  %24 = getelementptr inbounds [3 x i32], ptr %5, i64 0, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = sitofp i32 %25 to double
  %27 = fdiv double %23, %26
  %28 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 7, i64 %21
  store double %27, ptr %28, align 8, !tbaa !31
  %29 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 2, i64 %21
  %30 = load double, ptr %29, align 8, !tbaa !31
  %31 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 1, i64 %21
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = sitofp i32 %32 to double
  %34 = tail call double @llvm.fmuladd.f64(double %33, double %27, double %30)
  %35 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 5, i64 %21
  store double %34, ptr %35, align 8, !tbaa !31
  %36 = add nsw i32 %32, 1
  %37 = sitofp i32 %36 to double
  %38 = tail call double @llvm.fmuladd.f64(double %37, double %27, double %30)
  %39 = getelementptr inbounds %struct.DomainSt, ptr %5, i64 0, i32 6, i64 %21
  store double %38, ptr %39, align 8, !tbaa !31
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, 3
  br i1 %41, label %19, label %20
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #16

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @processorNum(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #17 {
  %5 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = add nsw i32 %6, %1
  %8 = load i32, ptr %0, align 4, !tbaa !7
  %9 = add nsw i32 %7, %8
  %10 = srem i32 %9, %8
  %11 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = add nsw i32 %12, %2
  %14 = getelementptr inbounds i32, ptr %0, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = add nsw i32 %13, %15
  %17 = srem i32 %16, %15
  %18 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = add nsw i32 %19, %3
  %21 = getelementptr inbounds i32, ptr %0, i64 2
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = add nsw i32 %20, %22
  %24 = srem i32 %23, %22
  %25 = mul nsw i32 %24, %15
  %26 = add nsw i32 %25, %17
  %27 = mul nsw i32 %26, %8
  %28 = add nsw i32 %27, %10
  ret i32 %28
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @initEamPot(ptr noundef %0, ptr noundef %1, ptr noundef %2) #0 {
  %4 = alloca %struct.anon, align 16
  %5 = alloca [4096 x i8], align 16
  %6 = alloca [3 x i8], align 1
  %7 = alloca i32, align 4
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [8 x i8], align 1
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca double, align 8
  %14 = alloca double, align 8
  %15 = alloca double, align 8
  %16 = alloca [4096 x i8], align 16
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca double, align 8
  %21 = alloca double, align 8
  %22 = alloca double, align 8
  %23 = alloca i32, align 4
  %24 = alloca double, align 8
  %25 = alloca double, align 8
  %26 = alloca [8 x i8], align 1
  %27 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #41
  %28 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 6
  store ptr @eamForce, ptr %28, align 8, !tbaa !69
  %29 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 7
  store ptr @eamPrint, ptr %29, align 8, !tbaa !71
  %30 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 8
  store ptr @eamDestroy, ptr %30, align 8, !tbaa !72
  %31 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 9
  %32 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 10
  %33 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %31, i8 0, i64 48, i1 false)
  %34 = tail call i32 @getMyRank() #39
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %246

36:                                               ; preds = %3
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(6) @.str.36) #43
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %142

39:                                               ; preds = %36
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %16) #40
  %40 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %16, ptr noundef nonnull dereferenceable(1) @.str.10.37, ptr noundef %0, ptr noundef %1) #39
  %41 = call noalias ptr @fopen(ptr noundef nonnull %16, ptr noundef nonnull @.str.11.38) #42
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load ptr, ptr @stdout, align 8, !tbaa !11
  %45 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %44, ptr noundef nonnull @.str.17.39, ptr noundef nonnull @.str.12.40, ptr noundef nonnull %16) #42
  call void @exit(i32 noundef -1) #44
  unreachable

46:                                               ; preds = %39
  %47 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  %48 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  %49 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  %50 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #40
  %51 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.13.41, ptr noundef nonnull %17) #39
  %52 = load i32, ptr %17, align 4, !tbaa !7
  %53 = icmp eq i32 %52, 1
  br i1 %53, label %57, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr @stdout, align 8, !tbaa !11
  %56 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.18.42, ptr noundef nonnull @.str.12.40) #42
  call void @exit(i32 noundef -1) #44
  unreachable

57:                                               ; preds = %46
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %18) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %19) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %21) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %22) #40
  %58 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  %59 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.14.43, ptr noundef nonnull %18, ptr noundef nonnull %20, ptr noundef nonnull %19, ptr noundef nonnull %21, ptr noundef nonnull %22) #39
  %60 = load double, ptr %22, align 8, !tbaa !31
  store double %60, ptr %27, align 8, !tbaa !73
  %61 = call ptr @fgets(ptr noundef nonnull %16, i32 noundef 4096, ptr noundef nonnull %41) #42
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %23) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %24) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %25) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %26) #40
  %62 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %16, ptr noundef nonnull @.str.15.44, ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25, ptr noundef nonnull %26) #39
  %63 = load i32, ptr %23, align 4, !tbaa !7
  %64 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 5
  store i32 %63, ptr %64, align 4, !tbaa !74
  %65 = load double, ptr %25, align 8, !tbaa !31
  %66 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 2
  store double %65, ptr %66, align 8, !tbaa !75
  %67 = load double, ptr %24, align 8, !tbaa !31
  %68 = fmul double %67, 0x4059E921DD37DC65
  %69 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 1
  store double %68, ptr %69, align 8, !tbaa !76
  %70 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 3
  %71 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %70, ptr noundef nonnull dereferenceable(1) %26) #39
  %72 = load i32, ptr %18, align 4
  %73 = load i32, ptr %19, align 4
  %74 = call i32 @llvm.smax.i32(i32 %72, i32 %73)
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 3
  %77 = call noalias ptr @malloc(i64 noundef %76) #41
  %78 = icmp sgt i32 %72, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %85, %57
  %80 = phi i32 [ %72, %57 ], [ %90, %85 ]
  %81 = load double, ptr %20, align 8, !tbaa !31
  %82 = call fastcc ptr @initInterpolationObject(i32 noundef %80, double noundef %81, ptr noundef %77) #42
  store ptr %82, ptr %33, align 8, !tbaa !77
  %83 = load i32, ptr %19, align 4, !tbaa !7
  %84 = icmp sgt i32 %83, 0
  br i1 %84, label %101, label %93

85:                                               ; preds = %85, %57
  %86 = phi i64 [ %89, %85 ], [ 0, %57 ]
  %87 = getelementptr inbounds double, ptr %77, i64 %86
  %88 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %41, ptr noundef nonnull @.str.16.45, ptr noundef %87) #39
  %89 = add nuw nsw i64 %86, 1
  %90 = load i32, ptr %18, align 4, !tbaa !7
  %91 = sext i32 %90 to i64
  %92 = icmp slt i64 %89, %91
  br i1 %92, label %85, label %79

93:                                               ; preds = %101, %79
  %94 = phi i32 [ %83, %79 ], [ %106, %101 ]
  %95 = load double, ptr %21, align 8, !tbaa !31
  %96 = call fastcc ptr @initInterpolationObject(i32 noundef %94, double noundef %95, ptr noundef %77) #42
  store ptr %96, ptr %32, align 8, !tbaa !78
  %97 = load i32, ptr %19, align 4, !tbaa !7
  %98 = icmp sgt i32 %97, 0
  br i1 %98, label %114, label %99

99:                                               ; preds = %93
  %100 = load double, ptr %21, align 8, !tbaa !31
  br label %132

101:                                              ; preds = %101, %79
  %102 = phi i64 [ %105, %101 ], [ 0, %79 ]
  %103 = getelementptr inbounds double, ptr %77, i64 %102
  %104 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %41, ptr noundef nonnull @.str.16.45, ptr noundef %103) #39
  %105 = add nuw nsw i64 %102, 1
  %106 = load i32, ptr %19, align 4, !tbaa !7
  %107 = sext i32 %106 to i64
  %108 = icmp slt i64 %105, %107
  br i1 %108, label %101, label %93

109:                                              ; preds = %114
  %.lcssa = phi i32 [ %119, %114 ]
  %110 = icmp sgt i32 %.lcssa, 1
  %111 = load double, ptr %21, align 8, !tbaa !31
  br i1 %110, label %112, label %132

112:                                              ; preds = %109
  %113 = zext i32 %.lcssa to i64
  br label %122

114:                                              ; preds = %114, %93
  %115 = phi i64 [ %118, %114 ], [ 0, %93 ]
  %116 = getelementptr inbounds double, ptr %77, i64 %115
  %117 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %41, ptr noundef nonnull @.str.16.45, ptr noundef %116) #39
  %118 = add nuw nsw i64 %115, 1
  %119 = load i32, ptr %19, align 4, !tbaa !7
  %120 = sext i32 %119 to i64
  %121 = icmp slt i64 %118, %120
  br i1 %121, label %114, label %109

122:                                              ; preds = %122, %112
  %123 = phi i64 [ 1, %112 ], [ %130, %122 ]
  %124 = trunc i64 %123 to i32
  %125 = sitofp i32 %124 to double
  %126 = call double @llvm.fmuladd.f64(double %125, double %111, double 0.000000e+00)
  %127 = getelementptr inbounds double, ptr %77, i64 %123
  %128 = load double, ptr %127, align 8, !tbaa !31
  %129 = fdiv double %128, %126
  store double %129, ptr %127, align 8, !tbaa !31
  %130 = add nuw nsw i64 %123, 1
  %131 = icmp eq i64 %130, %113
  br i1 %131, label %132, label %122

132:                                              ; preds = %122, %109, %99
  %133 = phi double [ %100, %99 ], [ %111, %109 ], [ %111, %122 ]
  %134 = phi i32 [ %97, %99 ], [ %.lcssa, %109 ], [ %.lcssa, %122 ]
  %135 = getelementptr inbounds double, ptr %77, i64 1
  %136 = load double, ptr %135, align 8, !tbaa !31
  %137 = getelementptr inbounds double, ptr %77, i64 2
  %138 = load double, ptr %137, align 8, !tbaa !31
  %139 = fsub double %136, %138
  %140 = fadd double %136, %139
  store double %140, ptr %77, align 8, !tbaa !31
  %141 = call fastcc ptr @initInterpolationObject(i32 noundef %134, double noundef %133, ptr noundef nonnull %77) #42
  store ptr %141, ptr %31, align 8, !tbaa !79
  call void @free(ptr noundef %77) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %26) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %25) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %24) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %23) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %22) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %21) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %19) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %18) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #40
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %16) #40
  br label %246

142:                                              ; preds = %36
  %143 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(7) @.str.1.46) #43
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %145, label %243

145:                                              ; preds = %142
  call void @llvm.lifetime.start.p0(i64 4096, ptr nonnull %5) #40
  %146 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %5, ptr noundef nonnull dereferenceable(1) @.str.10.37, ptr noundef %0, ptr noundef %1) #39
  %147 = call noalias ptr @fopen(ptr noundef nonnull %5, ptr noundef nonnull @.str.11.38) #42
  %148 = icmp eq ptr %147, null
  br i1 %148, label %149, label %152

149:                                              ; preds = %145
  %150 = load ptr, ptr @stdout, align 8, !tbaa !11
  %151 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %150, ptr noundef nonnull @.str.17.39, ptr noundef nonnull @.str.19.47, ptr noundef nonnull %5) #42
  call void @exit(i32 noundef -1) #44
  unreachable

152:                                              ; preds = %145
  %153 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef nonnull %147) #42
  call void @llvm.lifetime.start.p0(i64 3, ptr nonnull %6) #40
  %154 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.20.48, ptr noundef nonnull %6) #39
  %155 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 4
  %156 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %155, ptr noundef nonnull dereferenceable(1) %6) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %10) #40
  %157 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef nonnull %147) #42
  %158 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.15.44, ptr noundef nonnull %7, ptr noundef nonnull %8, ptr noundef nonnull %9, ptr noundef nonnull %10) #39
  %159 = load i32, ptr %7, align 4, !tbaa !7
  %160 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 5
  store i32 %159, ptr %160, align 4, !tbaa !74
  %161 = load double, ptr %9, align 8, !tbaa !31
  %162 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 2
  store double %161, ptr %162, align 8, !tbaa !75
  %163 = load double, ptr %8, align 8, !tbaa !31
  %164 = fmul double %163, 0x4059E921DD37DC65
  %165 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 1
  store double %164, ptr %165, align 8, !tbaa !76
  %166 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 3
  %167 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %166, ptr noundef nonnull dereferenceable(1) %10) #39
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %13) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %14) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #40
  %168 = call ptr @fgets(ptr noundef nonnull %5, i32 noundef 4096, ptr noundef nonnull %147) #42
  %169 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %5, ptr noundef nonnull @.str.14.43, ptr noundef nonnull %11, ptr noundef nonnull %13, ptr noundef nonnull %12, ptr noundef nonnull %14, ptr noundef nonnull %15) #39
  %170 = load double, ptr %15, align 8, !tbaa !31
  store double %170, ptr %27, align 8, !tbaa !73
  %171 = load i32, ptr %11, align 4
  %172 = load i32, ptr %12, align 4
  %173 = call i32 @llvm.smax.i32(i32 %171, i32 %172)
  %174 = sext i32 %173 to i64
  %175 = shl nsw i64 %174, 3
  %176 = call noalias ptr @malloc(i64 noundef %175) #41
  %177 = icmp sgt i32 %171, 0
  br i1 %177, label %186, label %178

178:                                              ; preds = %186, %152
  %179 = phi i32 [ %171, %152 ], [ %191, %186 ]
  %180 = load double, ptr %13, align 8, !tbaa !31
  %181 = call fastcc ptr @initInterpolationObject(i32 noundef %179, double noundef %180, ptr noundef %176) #42
  store ptr %181, ptr %33, align 8, !tbaa !77
  %182 = load i32, ptr %12, align 4, !tbaa !7
  %183 = icmp sgt i32 %182, 0
  br i1 %183, label %199, label %184

184:                                              ; preds = %178
  %185 = load double, ptr %14, align 8, !tbaa !31
  br label %207

186:                                              ; preds = %186, %152
  %187 = phi i64 [ %190, %186 ], [ 0, %152 ]
  %188 = getelementptr inbounds double, ptr %176, i64 %187
  %189 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %147, ptr noundef nonnull @.str.16.45, ptr noundef %188) #39
  %190 = add nuw nsw i64 %187, 1
  %191 = load i32, ptr %11, align 4, !tbaa !7
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %190, %192
  br i1 %193, label %186, label %178

194:                                              ; preds = %199
  %.lcssa1 = phi i32 [ %204, %199 ]
  %195 = icmp sgt i32 %.lcssa1, 1
  %196 = load double, ptr %14, align 8, !tbaa !31
  br i1 %195, label %197, label %207

197:                                              ; preds = %194
  %198 = zext i32 %.lcssa1 to i64
  br label %219

199:                                              ; preds = %199, %178
  %200 = phi i64 [ %203, %199 ], [ 0, %178 ]
  %201 = getelementptr inbounds double, ptr %176, i64 %200
  %202 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %147, ptr noundef nonnull @.str.16.45, ptr noundef %201) #39
  %203 = add nuw nsw i64 %200, 1
  %204 = load i32, ptr %12, align 4, !tbaa !7
  %205 = sext i32 %204 to i64
  %206 = icmp slt i64 %203, %205
  br i1 %206, label %199, label %194

207:                                              ; preds = %219, %194, %184
  %208 = phi double [ %185, %184 ], [ %196, %194 ], [ %196, %219 ]
  %209 = phi i32 [ %182, %184 ], [ %.lcssa1, %194 ], [ %.lcssa1, %219 ]
  %210 = getelementptr inbounds double, ptr %176, i64 1
  %211 = load double, ptr %210, align 8, !tbaa !31
  %212 = getelementptr inbounds double, ptr %176, i64 2
  %213 = load double, ptr %212, align 8, !tbaa !31
  %214 = fsub double %211, %213
  %215 = fadd double %211, %214
  store double %215, ptr %176, align 8, !tbaa !31
  %216 = call fastcc ptr @initInterpolationObject(i32 noundef %209, double noundef %208, ptr noundef nonnull %176) #42
  store ptr %216, ptr %31, align 8, !tbaa !79
  %217 = load i32, ptr %12, align 4, !tbaa !7
  %218 = icmp sgt i32 %217, 0
  br i1 %218, label %231, label %239

219:                                              ; preds = %219, %197
  %220 = phi i64 [ 1, %197 ], [ %229, %219 ]
  %221 = trunc i64 %220 to i32
  %222 = sitofp i32 %221 to double
  %223 = call double @llvm.fmuladd.f64(double %222, double %196, double 0.000000e+00)
  %224 = getelementptr inbounds double, ptr %176, i64 %220
  %225 = load double, ptr %224, align 8, !tbaa !31
  %226 = fdiv double %225, %223
  %227 = fmul double %225, %226
  %228 = fmul double %227, 0x402CCC9E3FCF6BAE
  store double %228, ptr %224, align 8, !tbaa !31
  %229 = add nuw nsw i64 %220, 1
  %230 = icmp eq i64 %229, %198
  br i1 %230, label %207, label %219

231:                                              ; preds = %231, %207
  %232 = phi i64 [ %235, %231 ], [ 0, %207 ]
  %233 = getelementptr inbounds double, ptr %176, i64 %232
  %234 = call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef nonnull %147, ptr noundef nonnull @.str.16.45, ptr noundef nonnull %233) #39
  %235 = add nuw nsw i64 %232, 1
  %236 = load i32, ptr %12, align 4, !tbaa !7
  %237 = sext i32 %236 to i64
  %238 = icmp slt i64 %235, %237
  br i1 %238, label %231, label %239

239:                                              ; preds = %231, %207
  %240 = phi i32 [ %217, %207 ], [ %236, %231 ]
  %241 = load double, ptr %14, align 8, !tbaa !31
  %242 = call fastcc ptr @initInterpolationObject(i32 noundef %240, double noundef %241, ptr noundef nonnull %176) #42
  store ptr %242, ptr %32, align 8, !tbaa !78
  call void @free(ptr noundef %176) #39
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %14) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %13) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %11) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %10) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(i64 3, ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(i64 4096, ptr nonnull %5) #40
  br label %246

243:                                              ; preds = %142
  %244 = load ptr, ptr @stdout, align 8, !tbaa !11
  %245 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %244, ptr noundef nonnull @.str.21.49, ptr noundef nonnull @.str.2.50, ptr noundef %2) #42
  tail call void @exit(i32 noundef -1) #44
  unreachable

246:                                              ; preds = %239, %132, %3
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #40
  %247 = call i32 @getMyRank() #39
  %248 = icmp eq i32 %247, 0
  br i1 %248, label %249, label %263

249:                                              ; preds = %246
  %250 = load <2 x double>, ptr %27, align 8, !tbaa !31
  store <2 x double> %250, ptr %4, align 16, !tbaa !31
  %251 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 2
  %252 = load double, ptr %251, align 8, !tbaa !75
  %253 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 2
  store double %252, ptr %253, align 16, !tbaa !80
  %254 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 5
  %255 = load i32, ptr %254, align 4, !tbaa !74
  %256 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 5
  store i32 %255, ptr %256, align 4, !tbaa !82
  %257 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 3
  %258 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 3
  %259 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %257, ptr noundef nonnull dereferenceable(1) %258) #39
  %260 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 4
  %261 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 4
  %262 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %260, ptr noundef nonnull dereferenceable(1) %261) #39
  br label %263

263:                                              ; preds = %249, %246
  call void @bcastParallel(ptr noundef nonnull %4, i32 noundef 40, i32 noundef 0) #39
  %264 = load <2 x double>, ptr %4, align 16, !tbaa !31
  store <2 x double> %264, ptr %27, align 8, !tbaa !31
  %265 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 2
  %266 = load double, ptr %265, align 16, !tbaa !80
  %267 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 2
  store double %266, ptr %267, align 8, !tbaa !75
  %268 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 5
  %269 = load i32, ptr %268, align 4, !tbaa !82
  %270 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 5
  store i32 %269, ptr %270, align 4, !tbaa !74
  %271 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 3
  %272 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 3
  %273 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %271, ptr noundef nonnull dereferenceable(1) %272) #39
  %274 = getelementptr inbounds %struct.EamPotentialSt, ptr %27, i64 0, i32 4
  %275 = getelementptr inbounds %struct.anon, ptr %4, i64 0, i32 4
  %276 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %274, ptr noundef nonnull dereferenceable(1) %275) #39
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %31) #42
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %32) #42
  call fastcc void @bcastInterpolationObject(ptr noundef nonnull %33) #42
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #40
  ret ptr %27
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @eamForce(ptr nocapture noundef %0) #0 {
  %2 = alloca [27 x i32], align 16
  %3 = alloca [3 x double], align 16
  %4 = alloca double, align 8
  %5 = alloca double, align 8
  %6 = alloca double, align 8
  %7 = alloca double, align 8
  %8 = alloca double, align 8
  %9 = alloca double, align 8
  %10 = alloca [3 x double], align 16
  %11 = alloca double, align 8
  %12 = alloca double, align 8
  %13 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 9
  %14 = load ptr, ptr %13, align 8, !tbaa !20
  %15 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 14
  %16 = load ptr, ptr %15, align 8, !tbaa !83
  %17 = icmp eq ptr %16, null
  %18 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %19 = load ptr, ptr %18, align 8, !tbaa !37
  br i1 %17, label %20, label %38

20:                                               ; preds = %1
  %21 = getelementptr inbounds %struct.LinkCellSt, ptr %19, i64 0, i32 3
  %22 = load i32, ptr %21, align 4, !tbaa !84
  %23 = shl nsw i32 %22, 6
  %24 = sext i32 %23 to i64
  %25 = shl nsw i64 %24, 3
  %26 = tail call noalias ptr @malloc(i64 noundef %25) #41
  %27 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 13
  store ptr %26, ptr %27, align 8, !tbaa !85
  %28 = tail call noalias ptr @malloc(i64 noundef %25) #41
  %29 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 12
  store ptr %28, ptr %29, align 8, !tbaa !86
  %30 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !36
  %32 = tail call ptr @initForceHaloExchange(ptr noundef %31, ptr noundef %19) #39
  store ptr %32, ptr %15, align 8, !tbaa !83
  %33 = tail call noalias dereferenceable_or_null(16) ptr @malloc(i64 noundef 16) #41
  %34 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 15
  store ptr %33, ptr %34, align 8, !tbaa !87
  %35 = load ptr, ptr %27, align 8, !tbaa !85
  store ptr %35, ptr %33, align 8, !tbaa !88
  %36 = load ptr, ptr %18, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.ForceExchangeDataSt, ptr %33, i64 0, i32 1
  store ptr %36, ptr %37, align 8, !tbaa !90
  br label %38

38:                                               ; preds = %20, %1
  %39 = phi ptr [ %36, %20 ], [ %19, %1 ]
  %40 = load double, ptr %14, align 8, !tbaa !73
  %41 = fmul double %40, %40
  %42 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %43 = load ptr, ptr %42, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.AtomsSt, ptr %43, i64 0, i32 6
  %45 = load ptr, ptr %44, align 8, !tbaa !91
  %46 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %47 = getelementptr inbounds %struct.LinkCellSt, ptr %39, i64 0, i32 3
  %48 = load i32, ptr %47, align 4, !tbaa !84
  %49 = shl nsw i32 %48, 6
  %50 = sext i32 %49 to i64
  %51 = mul nsw i64 %50, 24
  tail call void @llvm.memset.p0.i64(ptr align 8 %45, i8 0, i64 %51, i1 false)
  %52 = load ptr, ptr %42, align 8, !tbaa !38
  %53 = getelementptr inbounds %struct.AtomsSt, ptr %52, i64 0, i32 7
  %54 = load ptr, ptr %53, align 8, !tbaa !92
  %55 = load ptr, ptr %46, align 8, !tbaa !37
  %56 = getelementptr inbounds %struct.LinkCellSt, ptr %55, i64 0, i32 3
  %57 = load i32, ptr %56, align 4, !tbaa !84
  %58 = shl nsw i32 %57, 6
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %54, i8 0, i64 %60, i1 false)
  %61 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 13
  %62 = load ptr, ptr %61, align 8, !tbaa !85
  %63 = load ptr, ptr %46, align 8, !tbaa !37
  %64 = getelementptr inbounds %struct.LinkCellSt, ptr %63, i64 0, i32 3
  %65 = load i32, ptr %64, align 4, !tbaa !84
  %66 = shl nsw i32 %65, 6
  %67 = sext i32 %66 to i64
  %68 = shl nsw i64 %67, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %62, i8 0, i64 %68, i1 false)
  %69 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 12
  %70 = load ptr, ptr %69, align 8, !tbaa !86
  %71 = load ptr, ptr %46, align 8, !tbaa !37
  %72 = getelementptr inbounds %struct.LinkCellSt, ptr %71, i64 0, i32 3
  %73 = load i32, ptr %72, align 4, !tbaa !84
  %74 = shl nsw i32 %73, 6
  %75 = sext i32 %74 to i64
  %76 = shl nsw i64 %75, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %70, i8 0, i64 %76, i1 false)
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #40
  %77 = load ptr, ptr %46, align 8, !tbaa !37
  %78 = getelementptr inbounds %struct.LinkCellSt, ptr %77, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !52
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %226

81:                                               ; preds = %38
  %82 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 9
  %83 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 10
  br label %91

84:                                               ; preds = %107
  %.lcssa4 = phi double [ %108, %107 ]
  %.lcssa3 = phi ptr [ %110, %107 ]
  %.lcssa2 = phi i32 [ %112, %107 ]
  %85 = icmp sgt i32 %.lcssa2, 0
  br i1 %85, label %86, label %226

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.LinkCellSt, ptr %.lcssa3, i64 0, i32 8
  %88 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 11
  %89 = zext i32 %.lcssa2 to i64
  %90 = load ptr, ptr %87, align 8, !tbaa !54
  br label %237

91:                                               ; preds = %107, %81
  %92 = phi i64 [ 0, %81 ], [ %109, %107 ]
  %93 = phi i32 [ 0, %81 ], [ %115, %107 ]
  %94 = phi ptr [ %77, %81 ], [ %110, %107 ]
  %95 = phi double [ 0.000000e+00, %81 ], [ %108, %107 ]
  %96 = zext i32 %93 to i64
  %97 = getelementptr inbounds %struct.LinkCellSt, ptr %94, i64 0, i32 8
  %98 = load ptr, ptr %97, align 8, !tbaa !54
  %99 = getelementptr inbounds i32, ptr %98, i64 %92
  %100 = load i32, ptr %99, align 4, !tbaa !7
  %101 = trunc i64 %92 to i32
  %102 = call i32 @getNeighborBoxes(ptr noundef nonnull %94, i32 noundef %101, ptr noundef nonnull %2) #39
  %103 = icmp sgt i32 %102, 0
  br i1 %103, label %104, label %107

104:                                              ; preds = %91
  %105 = icmp sgt i32 %100, 0
  %106 = zext i32 %102 to i64
  br label %116

107:                                              ; preds = %222, %91
  %108 = phi double [ %95, %91 ], [ %223, %222 ]
  %109 = add nuw nsw i64 %92, 1
  %110 = load ptr, ptr %46, align 8, !tbaa !37
  %111 = getelementptr inbounds %struct.LinkCellSt, ptr %110, i64 0, i32 1
  %112 = load i32, ptr %111, align 4, !tbaa !52
  %113 = sext i32 %112 to i64
  %114 = icmp slt i64 %109, %113
  %115 = add i32 %93, 64
  br i1 %114, label %91, label %84

116:                                              ; preds = %222, %104
  %117 = phi i64 [ 0, %104 ], [ %224, %222 ]
  %118 = phi double [ %95, %104 ], [ %223, %222 ]
  %119 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %117
  %120 = load i32, ptr %119, align 4, !tbaa !7
  %121 = sext i32 %120 to i64
  %122 = icmp sgt i64 %92, %121
  br i1 %122, label %222, label %123

123:                                              ; preds = %116
  %124 = load ptr, ptr %46, align 8, !tbaa !37
  %125 = getelementptr inbounds %struct.LinkCellSt, ptr %124, i64 0, i32 8
  %126 = load ptr, ptr %125, align 8, !tbaa !54
  %127 = getelementptr inbounds i32, ptr %126, i64 %121
  %128 = load i32, ptr %127, align 4, !tbaa !7
  br i1 %105, label %129, label %222

129:                                              ; preds = %123
  %130 = shl i32 %120, 6
  %131 = icmp sgt i32 %128, 0
  %132 = zext i32 %120 to i64
  %133 = icmp ne i64 %92, %132
  %134 = sext i32 %130 to i64
  br label %135

135:                                              ; preds = %139, %129
  %136 = phi i64 [ %96, %129 ], [ %142, %139 ]
  %137 = phi double [ %118, %129 ], [ %140, %139 ]
  %138 = phi i32 [ 0, %129 ], [ %141, %139 ]
  br i1 %131, label %144, label %139

139:                                              ; preds = %217, %135
  %140 = phi double [ %137, %135 ], [ %218, %217 ]
  %141 = add nuw nsw i32 %138, 1
  %142 = add nuw nsw i64 %136, 1
  %143 = icmp eq i32 %141, %100
  br i1 %143, label %222, label %135

144:                                              ; preds = %217, %135
  %145 = phi i64 [ %220, %217 ], [ %134, %135 ]
  %146 = phi double [ %218, %217 ], [ %137, %135 ]
  %147 = phi i32 [ %219, %217 ], [ 0, %135 ]
  %148 = icmp ugt i32 %147, %138
  %149 = or i1 %133, %148
  br i1 %149, label %150, label %217

150:                                              ; preds = %144
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40
  %151 = load ptr, ptr %42, align 8, !tbaa !38
  %152 = getelementptr inbounds %struct.AtomsSt, ptr %151, i64 0, i32 4
  %153 = load ptr, ptr %152, align 8, !tbaa !93
  br label %156

154:                                              ; preds = %156
  %.lcssa1 = phi double [ %165, %156 ]
  %155 = fcmp ogt double %.lcssa1, %41
  br i1 %155, label %215, label %168

156:                                              ; preds = %156, %150
  %157 = phi i64 [ 0, %150 ], [ %166, %156 ]
  %158 = phi double [ 0.000000e+00, %150 ], [ %165, %156 ]
  %159 = getelementptr inbounds [3 x double], ptr %153, i64 %136, i64 %157
  %160 = load double, ptr %159, align 8, !tbaa !31
  %161 = getelementptr inbounds [3 x double], ptr %153, i64 %145, i64 %157
  %162 = load double, ptr %161, align 8, !tbaa !31
  %163 = fsub double %160, %162
  %164 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %157
  store double %163, ptr %164, align 8, !tbaa !31
  %165 = call double @llvm.fmuladd.f64(double %163, double %163, double %158)
  %166 = add nuw nsw i64 %157, 1
  %167 = icmp eq i64 %166, 3
  br i1 %167, label %154, label %156

168:                                              ; preds = %154
  %169 = call double @sqrt(double noundef %.lcssa1) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #40
  %170 = load ptr, ptr %82, align 8, !tbaa !79
  call fastcc void @interpolate(ptr noundef %170, double noundef %169, ptr noundef nonnull %4, ptr noundef nonnull %5) #42
  %171 = load ptr, ptr %83, align 8, !tbaa !78
  call fastcc void @interpolate(ptr noundef %171, double noundef %169, ptr noundef nonnull %6, ptr noundef nonnull %7) #42
  %172 = load double, ptr %5, align 8, !tbaa !31
  %173 = load ptr, ptr %42, align 8, !tbaa !38
  %174 = getelementptr inbounds %struct.AtomsSt, ptr %173, i64 0, i32 6
  %175 = load ptr, ptr %174, align 8, !tbaa !91
  br label %201

176:                                              ; preds = %201
  %177 = load ptr, ptr %46, align 8, !tbaa !37
  %178 = getelementptr inbounds %struct.LinkCellSt, ptr %177, i64 0, i32 1
  %179 = load i32, ptr %178, align 4, !tbaa !52
  %180 = icmp slt i32 %120, %179
  %181 = load double, ptr %4, align 8, !tbaa !31
  %182 = fadd double %146, %181
  %183 = call double @llvm.fmuladd.f64(double %181, double 5.000000e-01, double %146)
  %184 = select i1 %180, double %182, double %183
  %185 = getelementptr inbounds %struct.AtomsSt, ptr %173, i64 0, i32 7
  %186 = load ptr, ptr %185, align 8, !tbaa !92
  %187 = getelementptr inbounds double, ptr %186, i64 %136
  %188 = load double, ptr %187, align 8, !tbaa !31
  %189 = call double @llvm.fmuladd.f64(double %181, double 5.000000e-01, double %188)
  store double %189, ptr %187, align 8, !tbaa !31
  %190 = getelementptr inbounds double, ptr %186, i64 %145
  %191 = load double, ptr %190, align 8, !tbaa !31
  %192 = call double @llvm.fmuladd.f64(double %181, double 5.000000e-01, double %191)
  store double %192, ptr %190, align 8, !tbaa !31
  %193 = load double, ptr %6, align 8, !tbaa !31
  %194 = load ptr, ptr %69, align 8, !tbaa !86
  %195 = getelementptr inbounds double, ptr %194, i64 %136
  %196 = load double, ptr %195, align 8, !tbaa !31
  %197 = fadd double %193, %196
  store double %197, ptr %195, align 8, !tbaa !31
  %198 = getelementptr inbounds double, ptr %194, i64 %145
  %199 = load double, ptr %198, align 8, !tbaa !31
  %200 = fadd double %193, %199
  store double %200, ptr %198, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #40
  br label %215

201:                                              ; preds = %201, %168
  %202 = phi i64 [ 0, %168 ], [ %213, %201 ]
  %203 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %202
  %204 = load double, ptr %203, align 8, !tbaa !31
  %205 = fmul double %172, %204
  %206 = fdiv double %205, %169
  %207 = getelementptr inbounds [3 x double], ptr %175, i64 %136, i64 %202
  %208 = load double, ptr %207, align 8, !tbaa !31
  %209 = fsub double %208, %206
  store double %209, ptr %207, align 8, !tbaa !31
  %210 = getelementptr inbounds [3 x double], ptr %175, i64 %145, i64 %202
  %211 = load double, ptr %210, align 8, !tbaa !31
  %212 = fadd double %206, %211
  store double %212, ptr %210, align 8, !tbaa !31
  %213 = add nuw nsw i64 %202, 1
  %214 = icmp eq i64 %213, 3
  br i1 %214, label %176, label %201

215:                                              ; preds = %176, %154
  %216 = phi double [ %184, %176 ], [ %146, %154 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40
  br label %217

217:                                              ; preds = %215, %144
  %218 = phi double [ %216, %215 ], [ %146, %144 ]
  %219 = add nuw nsw i32 %147, 1
  %220 = add nsw i64 %145, 1
  %221 = icmp eq i32 %219, %128
  br i1 %221, label %139, label %144

222:                                              ; preds = %139, %123, %116
  %223 = phi double [ %118, %116 ], [ %118, %123 ], [ %140, %139 ]
  %224 = add nuw nsw i64 %117, 1
  %225 = icmp eq i64 %224, %106
  br i1 %225, label %107, label %116

226:                                              ; preds = %253, %84, %38
  %227 = phi double [ %.lcssa4, %84 ], [ 0.000000e+00, %38 ], [ %254, %253 ]
  call void @profileStart(i32 noundef 8) #39
  %228 = load ptr, ptr %15, align 8, !tbaa !83
  %229 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 15
  %230 = load ptr, ptr %229, align 8, !tbaa !87
  call void @haloExchange(ptr noundef %228, ptr noundef %230) #39
  call void @profileStop(i32 noundef 8) #39
  %231 = load ptr, ptr %46, align 8, !tbaa !37
  %232 = getelementptr inbounds %struct.LinkCellSt, ptr %231, i64 0, i32 1
  %233 = load i32, ptr %232, align 4, !tbaa !52
  %234 = icmp sgt i32 %233, 0
  br i1 %234, label %235, label %273

235:                                              ; preds = %226
  %236 = getelementptr inbounds %struct.EamPotentialSt, ptr %14, i64 0, i32 10
  br label %275

237:                                              ; preds = %253, %86
  %238 = phi i64 [ 0, %86 ], [ %255, %253 ]
  %239 = phi i32 [ 0, %86 ], [ %256, %253 ]
  %240 = phi double [ %.lcssa4, %86 ], [ %254, %253 ]
  %241 = getelementptr inbounds i32, ptr %90, i64 %238
  %242 = load i32, ptr %241, align 4, !tbaa !7
  %243 = icmp sgt i32 %242, 0
  br i1 %243, label %244, label %253

244:                                              ; preds = %237
  %245 = zext i32 %239 to i64
  %246 = load ptr, ptr %88, align 8, !tbaa !77
  %247 = load ptr, ptr %69, align 8, !tbaa !86
  %248 = load ptr, ptr %61, align 8, !tbaa !85
  %249 = load ptr, ptr %42, align 8, !tbaa !38
  %250 = getelementptr inbounds %struct.AtomsSt, ptr %249, i64 0, i32 7
  %251 = load ptr, ptr %250, align 8, !tbaa !92
  %252 = add i32 %242, %239
  br label %258

253:                                              ; preds = %258, %237
  %254 = phi double [ %240, %237 ], [ %266, %258 ]
  %255 = add nuw nsw i64 %238, 1
  %256 = add i32 %239, 64
  %257 = icmp eq i64 %255, %89
  br i1 %257, label %226, label %237

258:                                              ; preds = %258, %244
  %259 = phi i64 [ %245, %244 ], [ %270, %258 ]
  %260 = phi double [ %240, %244 ], [ %266, %258 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %8) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %9) #40
  %261 = getelementptr inbounds double, ptr %247, i64 %259
  %262 = load double, ptr %261, align 8, !tbaa !31
  call fastcc void @interpolate(ptr noundef %246, double noundef %262, ptr noundef nonnull %8, ptr noundef nonnull %9) #42
  %263 = load double, ptr %9, align 8, !tbaa !31
  %264 = getelementptr inbounds double, ptr %248, i64 %259
  store double %263, ptr %264, align 8, !tbaa !31
  %265 = load double, ptr %8, align 8, !tbaa !31
  %266 = fadd double %260, %265
  %267 = getelementptr inbounds double, ptr %251, i64 %259
  %268 = load double, ptr %267, align 8, !tbaa !31
  %269 = fadd double %265, %268
  store double %269, ptr %267, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %9) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %8) #40
  %270 = add nuw nsw i64 %259, 1
  %271 = trunc i64 %270 to i32
  %272 = icmp eq i32 %252, %271
  br i1 %272, label %253, label %258

273:                                              ; preds = %290, %226
  %274 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 7
  store double %227, ptr %274, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #40
  ret i32 0

275:                                              ; preds = %290, %235
  %276 = phi i64 [ 0, %235 ], [ %291, %290 ]
  %277 = phi i32 [ 0, %235 ], [ %297, %290 ]
  %278 = phi ptr [ %231, %235 ], [ %292, %290 ]
  %279 = zext i32 %277 to i64
  %280 = getelementptr inbounds %struct.LinkCellSt, ptr %278, i64 0, i32 8
  %281 = load ptr, ptr %280, align 8, !tbaa !54
  %282 = getelementptr inbounds i32, ptr %281, i64 %276
  %283 = load i32, ptr %282, align 4, !tbaa !7
  %284 = trunc i64 %276 to i32
  %285 = call i32 @getNeighborBoxes(ptr noundef nonnull %278, i32 noundef %284, ptr noundef nonnull %2) #39
  %286 = icmp sgt i32 %285, 0
  br i1 %286, label %287, label %290

287:                                              ; preds = %275
  %288 = icmp sgt i32 %283, 0
  %289 = zext i32 %285 to i64
  br label %298

290:                                              ; preds = %386, %275
  %291 = add nuw nsw i64 %276, 1
  %292 = load ptr, ptr %46, align 8, !tbaa !37
  %293 = getelementptr inbounds %struct.LinkCellSt, ptr %292, i64 0, i32 1
  %294 = load i32, ptr %293, align 4, !tbaa !52
  %295 = sext i32 %294 to i64
  %296 = icmp slt i64 %291, %295
  %297 = add i32 %277, 64
  br i1 %296, label %275, label %273

298:                                              ; preds = %386, %287
  %299 = phi i64 [ 0, %287 ], [ %387, %386 ]
  %300 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !7
  %302 = sext i32 %301 to i64
  %303 = icmp sgt i64 %276, %302
  br i1 %303, label %386, label %304

304:                                              ; preds = %298
  %305 = load ptr, ptr %46, align 8, !tbaa !37
  %306 = getelementptr inbounds %struct.LinkCellSt, ptr %305, i64 0, i32 8
  %307 = load ptr, ptr %306, align 8, !tbaa !54
  %308 = getelementptr inbounds i32, ptr %307, i64 %302
  %309 = load i32, ptr %308, align 4, !tbaa !7
  br i1 %288, label %310, label %386

310:                                              ; preds = %304
  %311 = shl i32 %301, 6
  %312 = icmp sgt i32 %309, 0
  %313 = zext i32 %301 to i64
  %314 = icmp ne i64 %276, %313
  %315 = sext i32 %311 to i64
  br label %316

316:                                              ; preds = %319, %310
  %317 = phi i64 [ %279, %310 ], [ %321, %319 ]
  %318 = phi i32 [ 0, %310 ], [ %320, %319 ]
  br i1 %312, label %323, label %319

319:                                              ; preds = %382, %316
  %320 = add nuw nsw i32 %318, 1
  %321 = add nuw nsw i64 %317, 1
  %322 = icmp eq i32 %320, %283
  br i1 %322, label %386, label %316

323:                                              ; preds = %382, %316
  %324 = phi i64 [ %384, %382 ], [ %315, %316 ]
  %325 = phi i32 [ %383, %382 ], [ 0, %316 ]
  %326 = icmp ugt i32 %325, %318
  %327 = or i1 %314, %326
  br i1 %327, label %328, label %382

328:                                              ; preds = %323
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %10) #40
  %329 = load ptr, ptr %42, align 8, !tbaa !38
  %330 = getelementptr inbounds %struct.AtomsSt, ptr %329, i64 0, i32 4
  %331 = load ptr, ptr %330, align 8, !tbaa !93
  br label %334

332:                                              ; preds = %334
  %.lcssa = phi double [ %343, %334 ]
  %333 = fcmp ult double %.lcssa, %41
  br i1 %333, label %346, label %381

334:                                              ; preds = %334, %328
  %335 = phi i64 [ 0, %328 ], [ %344, %334 ]
  %336 = phi double [ 0.000000e+00, %328 ], [ %343, %334 ]
  %337 = getelementptr inbounds [3 x double], ptr %331, i64 %317, i64 %335
  %338 = load double, ptr %337, align 8, !tbaa !31
  %339 = getelementptr inbounds [3 x double], ptr %331, i64 %324, i64 %335
  %340 = load double, ptr %339, align 8, !tbaa !31
  %341 = fsub double %338, %340
  %342 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %335
  store double %341, ptr %342, align 8, !tbaa !31
  %343 = call double @llvm.fmuladd.f64(double %341, double %341, double %336)
  %344 = add nuw nsw i64 %335, 1
  %345 = icmp eq i64 %344, 3
  br i1 %345, label %332, label %334

346:                                              ; preds = %332
  %347 = call double @sqrt(double noundef %.lcssa) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %11) #40
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %12) #40
  %348 = load ptr, ptr %236, align 8, !tbaa !78
  call fastcc void @interpolate(ptr noundef %348, double noundef %347, ptr noundef nonnull %11, ptr noundef nonnull %12) #42
  %349 = load ptr, ptr %61, align 8, !tbaa !85
  %350 = getelementptr inbounds double, ptr %349, i64 %317
  %351 = getelementptr inbounds double, ptr %349, i64 %324
  %352 = load double, ptr %12, align 8, !tbaa !31
  %353 = load ptr, ptr %42, align 8, !tbaa !38
  %354 = getelementptr inbounds %struct.AtomsSt, ptr %353, i64 0, i32 6
  %355 = load ptr, ptr %354, align 8, !tbaa !91
  br label %357

356:                                              ; preds = %357
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %12) #40
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %11) #40
  br label %381

357:                                              ; preds = %357, %346
  %358 = phi i64 [ 0, %346 ], [ %379, %357 ]
  %359 = load double, ptr %350, align 8, !tbaa !31
  %360 = load double, ptr %351, align 8, !tbaa !31
  %361 = fadd double %359, %360
  %362 = fmul double %361, %352
  %363 = getelementptr inbounds [3 x double], ptr %10, i64 0, i64 %358
  %364 = load double, ptr %363, align 8, !tbaa !31
  %365 = fmul double %362, %364
  %366 = fdiv double %365, %347
  %367 = getelementptr inbounds [3 x double], ptr %355, i64 %317, i64 %358
  %368 = load double, ptr %367, align 8, !tbaa !31
  %369 = fsub double %368, %366
  store double %369, ptr %367, align 8, !tbaa !31
  %370 = load double, ptr %350, align 8, !tbaa !31
  %371 = load double, ptr %351, align 8, !tbaa !31
  %372 = fadd double %370, %371
  %373 = fmul double %352, %372
  %374 = fmul double %364, %373
  %375 = fdiv double %374, %347
  %376 = getelementptr inbounds [3 x double], ptr %355, i64 %324, i64 %358
  %377 = load double, ptr %376, align 8, !tbaa !31
  %378 = fadd double %377, %375
  store double %378, ptr %376, align 8, !tbaa !31
  %379 = add nuw nsw i64 %358, 1
  %380 = icmp eq i64 %379, 3
  br i1 %380, label %356, label %357

381:                                              ; preds = %356, %332
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %10) #40
  br label %382

382:                                              ; preds = %381, %323
  %383 = add nuw nsw i32 %325, 1
  %384 = add nsw i64 %324, 1
  %385 = icmp eq i32 %383, %309
  br i1 %385, label %319, label %323

386:                                              ; preds = %319, %304, %298
  %387 = add nuw nsw i64 %299, 1
  %388 = icmp eq i64 %387, %289
  br i1 %388, label %290, label %298
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @eamPrint(ptr nocapture noundef %0, ptr noundef %1) #11 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.3.51, i64 24, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.EamPotentialSt, ptr %1, i64 0, i32 4
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4.52, ptr noundef nonnull %4) #42
  %6 = getelementptr inbounds %struct.EamPotentialSt, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !74
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5.53, i32 noundef %7) #42
  %9 = getelementptr inbounds %struct.EamPotentialSt, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !76
  %11 = fdiv double %10, 0x4059E921DD37DC65
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6.54, double noundef %11) #42
  %13 = getelementptr inbounds %struct.EamPotentialSt, ptr %1, i64 0, i32 3
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7.55, ptr noundef nonnull %13) #42
  %15 = getelementptr inbounds %struct.EamPotentialSt, ptr %1, i64 0, i32 2
  %16 = load double, ptr %15, align 8, !tbaa !75
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8.56, double noundef %16) #42
  %18 = load double, ptr %1, align 8, !tbaa !73
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9.57, double noundef %18) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @eamDestroy(ptr noundef %0) #0 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %11, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %11, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.EamPotentialSt, ptr %4, i64 0, i32 9
  tail call fastcc void @destroyInterpolationObject(ptr noundef nonnull %7) #42
  %8 = getelementptr inbounds %struct.EamPotentialSt, ptr %4, i64 0, i32 10
  tail call fastcc void @destroyInterpolationObject(ptr noundef nonnull %8) #42
  %9 = getelementptr inbounds %struct.EamPotentialSt, ptr %4, i64 0, i32 11
  tail call fastcc void @destroyInterpolationObject(ptr noundef nonnull %9) #42
  %10 = getelementptr inbounds %struct.EamPotentialSt, ptr %4, i64 0, i32 14
  tail call void @destroyHaloExchange(ptr noundef nonnull %10) #39
  tail call void @free(ptr noundef nonnull %4) #39
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #14

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #16

; Function Attrs: mustprogress nofree nounwind optsize willreturn uwtable
define internal fastcc noalias ptr @initInterpolationObject(i32 noundef %0, double noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #13 {
  %4 = tail call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #41
  %5 = add nsw i32 %0, 3
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 3
  %8 = tail call noalias ptr @calloc(i64 noundef 1, i64 noundef %7) #45
  %9 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %4, i64 0, i32 3
  %10 = getelementptr double, ptr %8, i64 1
  store ptr %10, ptr %9, align 8, !tbaa !94
  store i32 %0, ptr %4, align 8, !tbaa !96
  %11 = fdiv double 1.000000e+00, %1
  %12 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %4, i64 0, i32 2
  store double %11, ptr %12, align 8, !tbaa !97
  %13 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %4, i64 0, i32 1
  store double 0.000000e+00, ptr %13, align 8, !tbaa !98
  %14 = icmp sgt i32 %0, 0
  br i1 %14, label %15, label %19

15:                                               ; preds = %3
  %16 = zext i32 %0 to i64
  %17 = shl nuw nsw i64 %16, 3
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 8 %10, ptr align 8 %2, i64 %17, i1 false), !tbaa !31
  %18 = load double, ptr %10, align 8, !tbaa !31
  br label %19

19:                                               ; preds = %15, %3
  %20 = phi double [ %18, %15 ], [ 0.000000e+00, %3 ]
  store double %20, ptr %8, align 8, !tbaa !31
  %21 = add nsw i32 %0, -1
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds double, ptr %10, i64 %22
  %24 = load double, ptr %23, align 8, !tbaa !31
  %25 = sext i32 %0 to i64
  %26 = getelementptr inbounds double, ptr %10, i64 %25
  store double %24, ptr %26, align 8, !tbaa !31
  %27 = add nsw i32 %0, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds double, ptr %10, i64 %28
  store double %24, ptr %29, align 8, !tbaa !31
  ret ptr %4
}

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #18

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @bcastInterpolationObject(ptr nocapture noundef %0) unnamed_addr #0 {
  %2 = alloca %struct.anon.0, align 8
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %2) #40
  %3 = tail call i32 @getMyRank() #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %1
  %6 = load ptr, ptr %0, align 8, !tbaa !11
  %7 = load i32, ptr %6, align 8, !tbaa !96
  store i32 %7, ptr %2, align 8, !tbaa !99
  %8 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %6, i64 0, i32 1
  %9 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %10 = load <2 x double>, ptr %8, align 8, !tbaa !31
  store <2 x double> %10, ptr %9, align 8, !tbaa !31
  br label %11

11:                                               ; preds = %5, %1
  call void @bcastParallel(ptr noundef nonnull %2, i32 noundef 24, i32 noundef 0) #39
  %12 = call i32 @getMyRank() #39
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %19

14:                                               ; preds = %11
  %15 = load ptr, ptr %0, align 8, !tbaa !11
  %16 = load i32, ptr %15, align 8, !tbaa !96
  %17 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %15, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !94
  br label %31

19:                                               ; preds = %11
  %20 = call noalias dereferenceable_or_null(32) ptr @malloc(i64 noundef 32) #41
  store ptr %20, ptr %0, align 8, !tbaa !11
  %21 = load i32, ptr %2, align 8, !tbaa !99
  store i32 %21, ptr %20, align 8, !tbaa !96
  %22 = getelementptr inbounds %struct.anon.0, ptr %2, i64 0, i32 1
  %23 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %20, i64 0, i32 1
  %24 = load <2 x double>, ptr %22, align 8, !tbaa !31
  store <2 x double> %24, ptr %23, align 8, !tbaa !31
  %25 = add nsw i32 %21, 3
  %26 = sext i32 %25 to i64
  %27 = shl nsw i64 %26, 3
  %28 = call noalias ptr @malloc(i64 noundef %27) #41
  %29 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %20, i64 0, i32 3
  %30 = getelementptr inbounds double, ptr %28, i64 1
  store ptr %30, ptr %29, align 8, !tbaa !94
  br label %31

31:                                               ; preds = %19, %14
  %32 = phi ptr [ %18, %14 ], [ %30, %19 ]
  %33 = phi i32 [ %16, %14 ], [ %21, %19 ]
  %34 = shl i32 %33, 3
  %35 = add i32 %34, 24
  %36 = getelementptr inbounds double, ptr %32, i64 -1
  call void @bcastParallel(ptr noundef nonnull %36, i32 noundef %35, i32 noundef 0) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %2) #40
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal fastcc void @destroyInterpolationObject(ptr noundef %0) unnamed_addr #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %18, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %18, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %4, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !94
  %9 = icmp eq ptr %8, null
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds double, ptr %8, i64 -1
  store ptr %11, ptr %7, align 8, !tbaa !94
  %12 = load ptr, ptr %0, align 8, !tbaa !11
  %13 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %12, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !94
  tail call void @free(ptr noundef %14) #39
  %15 = load ptr, ptr %0, align 8, !tbaa !11
  br label %16

16:                                               ; preds = %10, %6
  %17 = phi ptr [ %15, %10 ], [ %4, %6 ]
  tail call void @free(ptr noundef %17) #39
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %18

18:                                               ; preds = %16, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @sqrt(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @interpolate(ptr nocapture noundef readonly %0, double noundef %1, ptr nocapture noundef writeonly %2, ptr nocapture noundef writeonly %3) unnamed_addr #21 {
  %5 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !94
  %7 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %0, i64 0, i32 1
  %8 = load double, ptr %7, align 8, !tbaa !98
  %9 = fcmp ogt double %8, %1
  %10 = select i1 %9, double %8, double %1
  %11 = fsub double %10, %8
  %12 = getelementptr inbounds %struct.InterpolationObjectSt, ptr %0, i64 0, i32 2
  %13 = load double, ptr %12, align 8, !tbaa !97
  %14 = fmul double %13, %11
  %15 = tail call double @llvm.floor.f64(double %14)
  %16 = fptosi double %15 to i32
  %17 = load i32, ptr %0, align 8, !tbaa !96
  %18 = icmp slt i32 %17, %16
  %19 = sitofp i32 %17 to double
  %20 = fdiv double %19, %13
  %21 = tail call i32 @llvm.smin.i32(i32 %17, i32 %16)
  %22 = select i1 %18, double %20, double %14
  %23 = tail call double @llvm.floor.f64(double %22)
  %24 = fsub double %22, %23
  %25 = add nsw i32 %21, 1
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds double, ptr %6, i64 %26
  %28 = add nsw i32 %21, -1
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds double, ptr %6, i64 %29
  %31 = load <2 x double>, ptr %27, align 8, !tbaa !31
  %32 = load <2 x double>, ptr %30, align 8, !tbaa !31
  %33 = fsub <2 x double> %31, %32
  %34 = fmul double %24, 5.000000e-01
  %35 = fadd <2 x double> %31, %32
  %36 = extractelement <2 x double> %35, i64 0
  %37 = extractelement <2 x double> %32, i64 1
  %38 = tail call double @llvm.fmuladd.f64(double %37, double -2.000000e+00, double %36)
  %39 = extractelement <2 x double> %33, i64 0
  %40 = tail call double @llvm.fmuladd.f64(double %24, double %38, double %39)
  %41 = tail call double @llvm.fmuladd.f64(double %34, double %40, double %37)
  store double %41, ptr %2, align 8, !tbaa !31
  %42 = shufflevector <2 x double> %33, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %43 = fsub <2 x double> %42, %33
  %44 = extractelement <2 x double> %43, i64 0
  %45 = tail call double @llvm.fmuladd.f64(double %24, double %44, double %39)
  %46 = fmul double %45, 5.000000e-01
  %47 = load double, ptr %12, align 8, !tbaa !97
  %48 = fmul double %47, %46
  store double %48, ptr %3, align 8, !tbaa !31
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.floor.f64(double) #16

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #16

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @initAtomHaloExchange(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @initHaloExchange(ptr noundef %0) #42
  %4 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 1
  %5 = load i32, ptr %4, align 4, !tbaa !7
  %6 = add nsw i32 %5, 2
  %7 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 2
  %8 = load i32, ptr %7, align 8, !tbaa !7
  %9 = add nsw i32 %8, 2
  %10 = load i32, ptr %1, align 8, !tbaa !7
  %11 = add nsw i32 %10, 2
  %12 = mul nsw i32 %11, %9
  %13 = mul nsw i32 %11, %6
  %14 = tail call i32 @llvm.smax.i32(i32 %12, i32 %13)
  %15 = mul i32 %14, 7168
  %16 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 1
  store i32 %15, ptr %16, align 8, !tbaa !101
  %17 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 2
  store ptr @loadAtomsBuffer, ptr %17, align 8, !tbaa !103
  %18 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 3
  store ptr @unloadAtomsBuffer, ptr %18, align 8, !tbaa !104
  %19 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 4
  store ptr @destroyAtomsExchange, ptr %19, align 8, !tbaa !105
  %20 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #41
  %21 = shl i32 %5, 1
  %22 = add i32 %21, 4
  %23 = mul nsw i32 %22, %9
  store i32 %23, ptr %20, align 8, !tbaa !7
  %24 = shl i32 %10, 1
  %25 = add i32 %24, 4
  %26 = mul nsw i32 %25, %9
  %27 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 2
  store i32 %26, ptr %27, align 8, !tbaa !7
  %28 = mul nsw i32 %25, %6
  %29 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 4
  store i32 %28, ptr %29, align 8, !tbaa !7
  %30 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 1
  store i32 %23, ptr %30, align 4, !tbaa !7
  %31 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 3
  store i32 %26, ptr %31, align 4, !tbaa !7
  %32 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 5
  store i32 %28, ptr %32, align 4, !tbaa !7
  br label %33

33:                                               ; preds = %91, %2
  %34 = phi i64 [ 0, %2 ], [ %93, %91 ]
  %35 = getelementptr inbounds [6 x i32], ptr %20, i64 0, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 2
  %39 = tail call noalias ptr @malloc(i64 noundef %38) #41
  %40 = load i32, ptr %1, align 8, !tbaa !7
  %41 = add nsw i32 %40, 1
  %42 = load i32, ptr %4, align 4, !tbaa !7
  %43 = add nsw i32 %42, 1
  %44 = load i32, ptr %7, align 8, !tbaa !7
  %45 = add nsw i32 %44, 1
  %46 = icmp eq i64 %34, 0
  %47 = select i1 %46, i32 1, i32 %41
  %48 = icmp eq i64 %34, 1
  %49 = add nsw i32 %47, -2
  %50 = select i1 %48, i32 %49, i32 -1
  %51 = icmp eq i64 %34, 2
  %52 = select i1 %51, i32 1, i32 %43
  %53 = icmp eq i64 %34, 3
  %54 = add nsw i32 %52, -2
  %55 = select i1 %53, i32 %54, i32 -1
  %56 = icmp eq i64 %34, 4
  %57 = select i1 %56, i32 1, i32 %45
  %58 = icmp eq i64 %34, 5
  %59 = add nsw i32 %57, -2
  %60 = select i1 %58, i32 %59, i32 -1
  %61 = icmp slt i32 %50, %47
  br i1 %61, label %62, label %91

62:                                               ; preds = %33
  %63 = icmp slt i32 %55, %52
  %64 = icmp slt i32 %60, %57
  br label %65

65:                                               ; preds = %73, %62
  %66 = phi i32 [ %50, %62 ], [ %75, %73 ]
  %67 = phi i32 [ 0, %62 ], [ %74, %73 ]
  br i1 %63, label %68, label %73

68:                                               ; preds = %79, %65
  %69 = phi i32 [ %81, %79 ], [ %55, %65 ]
  %70 = phi i32 [ %80, %79 ], [ %67, %65 ]
  br i1 %64, label %71, label %79

71:                                               ; preds = %68
  %72 = sext i32 %70 to i64
  br label %83

73:                                               ; preds = %79, %65
  %74 = phi i32 [ %67, %65 ], [ %80, %79 ]
  %75 = add i32 %66, 1
  %76 = icmp eq i32 %75, %47
  br i1 %76, label %91, label %65

77:                                               ; preds = %83
  %.lcssa = phi i64 [ %87, %83 ]
  %78 = trunc i64 %.lcssa to i32
  br label %79

79:                                               ; preds = %77, %68
  %80 = phi i32 [ %70, %68 ], [ %78, %77 ]
  %81 = add i32 %69, 1
  %82 = icmp eq i32 %81, %52
  br i1 %82, label %73, label %68

83:                                               ; preds = %83, %71
  %84 = phi i64 [ %72, %71 ], [ %87, %83 ]
  %85 = phi i32 [ %60, %71 ], [ %89, %83 ]
  %86 = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %66, i32 noundef %69, i32 noundef %85) #39
  %87 = add nsw i64 %84, 1
  %88 = getelementptr inbounds i32, ptr %39, i64 %84
  store i32 %86, ptr %88, align 4, !tbaa !7
  %89 = add i32 %85, 1
  %90 = icmp eq i32 %89, %57
  br i1 %90, label %77, label %83

91:                                               ; preds = %73, %33
  %92 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 1, i64 %34
  store ptr %39, ptr %92, align 8, !tbaa !11
  %93 = add nuw nsw i64 %34, 1
  %94 = icmp eq i64 %93, 6
  br i1 %94, label %99, label %33

95:                                               ; preds = %99
  %96 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1
  %97 = load i32, ptr %96, align 4, !tbaa !7
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %105, label %108

99:                                               ; preds = %99, %91
  %100 = phi i64 [ %103, %99 ], [ 0, %91 ]
  %101 = tail call dereferenceable_or_null(24) ptr @calloc(i64 1, i64 24)
  %102 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 %100
  store ptr %101, ptr %102, align 8, !tbaa !11
  %103 = add nuw nsw i64 %100, 1
  %104 = icmp eq i64 %103, 6
  br i1 %104, label %95, label %99

105:                                              ; preds = %95
  %106 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2
  %107 = load ptr, ptr %106, align 8, !tbaa !11
  store double 1.000000e+00, ptr %107, align 8, !tbaa !31
  br label %108

108:                                              ; preds = %105, %95
  %109 = load i32, ptr %0, align 4, !tbaa !7
  %110 = add nsw i32 %109, -1
  %111 = icmp eq i32 %97, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %108
  %113 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 1
  %114 = load ptr, ptr %113, align 8, !tbaa !11
  store double -1.000000e+00, ptr %114, align 8, !tbaa !31
  br label %115

115:                                              ; preds = %112, %108
  %116 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1, i64 1
  %117 = load i32, ptr %116, align 4, !tbaa !7
  %118 = icmp eq i32 %117, 0
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 2
  %121 = load ptr, ptr %120, align 8, !tbaa !11
  %122 = getelementptr inbounds double, ptr %121, i64 1
  store double 1.000000e+00, ptr %122, align 8, !tbaa !31
  br label %123

123:                                              ; preds = %119, %115
  %124 = getelementptr inbounds i32, ptr %0, i64 1
  %125 = load i32, ptr %124, align 4, !tbaa !7
  %126 = add nsw i32 %125, -1
  %127 = icmp eq i32 %117, %126
  br i1 %127, label %128, label %132

128:                                              ; preds = %123
  %129 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 3
  %130 = load ptr, ptr %129, align 8, !tbaa !11
  %131 = getelementptr inbounds double, ptr %130, i64 1
  store double -1.000000e+00, ptr %131, align 8, !tbaa !31
  br label %132

132:                                              ; preds = %128, %123
  %133 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 1, i64 2
  %134 = load i32, ptr %133, align 4, !tbaa !7
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %136, label %140

136:                                              ; preds = %132
  %137 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 4
  %138 = load ptr, ptr %137, align 8, !tbaa !11
  %139 = getelementptr inbounds double, ptr %138, i64 2
  store double 1.000000e+00, ptr %139, align 8, !tbaa !31
  br label %140

140:                                              ; preds = %136, %132
  %141 = getelementptr inbounds i32, ptr %0, i64 2
  %142 = load i32, ptr %141, align 4, !tbaa !7
  %143 = add nsw i32 %142, -1
  %144 = icmp eq i32 %134, %143
  br i1 %144, label %145, label %149

145:                                              ; preds = %140
  %146 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %20, i64 0, i32 2, i64 5
  %147 = load ptr, ptr %146, align 8, !tbaa !11
  %148 = getelementptr inbounds double, ptr %147, i64 2
  store double -1.000000e+00, ptr %148, align 8, !tbaa !31
  br label %149

149:                                              ; preds = %145, %140
  %150 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 5
  store ptr %20, ptr %150, align 8, !tbaa !106
  ret ptr %3
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc noalias ptr @initHaloExchange(ptr noundef %0) unnamed_addr #0 {
  %2 = tail call noalias dereferenceable_or_null(64) ptr @malloc(i64 noundef 64) #41
  %3 = tail call i32 @processorNum(ptr noundef %0, i32 noundef -1, i32 noundef 0, i32 noundef 0) #39
  store i32 %3, ptr %2, align 8, !tbaa !7
  %4 = tail call i32 @processorNum(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef 0) #39
  %5 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 1
  store i32 %4, ptr %5, align 4, !tbaa !7
  %6 = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef -1, i32 noundef 0) #39
  %7 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 2
  store i32 %6, ptr %7, align 8, !tbaa !7
  %8 = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 1, i32 noundef 0) #39
  %9 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 3
  store i32 %8, ptr %9, align 4, !tbaa !7
  %10 = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef -1) #39
  %11 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 4
  store i32 %10, ptr %11, align 8, !tbaa !7
  %12 = tail call i32 @processorNum(ptr noundef %0, i32 noundef 0, i32 noundef 0, i32 noundef 1) #39
  %13 = getelementptr inbounds [6 x i32], ptr %2, i64 0, i64 5
  store i32 %12, ptr %13, align 4, !tbaa !7
  %14 = getelementptr inbounds %struct.HaloExchangeSt, ptr %2, i64 0, i32 1
  store i32 0, ptr %14, align 8, !tbaa !101
  ret ptr %2
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @loadAtomsBuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #22 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 2, i64 %5
  %7 = load ptr, ptr %6, align 8, !tbaa !11
  %8 = load double, ptr %7, align 8, !tbaa !31
  %9 = getelementptr inbounds %struct.SimFlatSt, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !36
  %11 = getelementptr inbounds %struct.DomainSt, ptr %10, i64 0, i32 4
  %12 = load double, ptr %11, align 8, !tbaa !31
  %13 = fmul double %8, %12
  %14 = getelementptr inbounds double, ptr %7, i64 1
  %15 = load double, ptr %14, align 8, !tbaa !31
  %16 = getelementptr inbounds %struct.DomainSt, ptr %10, i64 0, i32 4, i64 1
  %17 = load double, ptr %16, align 8, !tbaa !31
  %18 = fmul double %15, %17
  %19 = getelementptr inbounds double, ptr %7, i64 2
  %20 = load double, ptr %19, align 8, !tbaa !31
  %21 = getelementptr inbounds %struct.DomainSt, ptr %10, i64 0, i32 4, i64 2
  %22 = load double, ptr %21, align 8, !tbaa !31
  %23 = fmul double %20, %22
  %24 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 %5
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 1, i64 %5
  %27 = load ptr, ptr %26, align 8, !tbaa !11
  %28 = icmp sgt i32 %25, 0
  br i1 %28, label %29, label %36

29:                                               ; preds = %4
  %30 = getelementptr inbounds %struct.SimFlatSt, ptr %1, i64 0, i32 4
  %31 = load ptr, ptr %30, align 8, !tbaa !37
  %32 = getelementptr inbounds %struct.LinkCellSt, ptr %31, i64 0, i32 8
  %33 = load ptr, ptr %32, align 8, !tbaa !54
  %34 = getelementptr inbounds %struct.SimFlatSt, ptr %1, i64 0, i32 5
  %35 = zext i32 %25 to i64
  br label %39

36:                                               ; preds = %63, %4
  %37 = phi i32 [ 0, %4 ], [ %64, %63 ]
  %38 = mul i32 %37, 56
  ret i32 %38

39:                                               ; preds = %63, %29
  %40 = phi i64 [ 0, %29 ], [ %65, %63 ]
  %41 = phi i32 [ 0, %29 ], [ %64, %63 ]
  %42 = getelementptr inbounds i32, ptr %27, i64 %40
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = shl i32 %43, 6
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds i32, ptr %33, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %63

49:                                               ; preds = %39
  %50 = load ptr, ptr %34, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.AtomsSt, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !107
  %53 = getelementptr inbounds %struct.AtomsSt, ptr %50, i64 0, i32 3
  %54 = load ptr, ptr %53, align 8, !tbaa !108
  %55 = getelementptr inbounds %struct.AtomsSt, ptr %50, i64 0, i32 4
  %56 = load ptr, ptr %55, align 8, !tbaa !93
  %57 = getelementptr inbounds %struct.AtomsSt, ptr %50, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !109
  %59 = sext i32 %44 to i64
  %60 = sext i32 %41 to i64
  br label %67

61:                                               ; preds = %67
  %.lcssa = phi i64 [ %97, %67 ]
  %62 = trunc i64 %.lcssa to i32
  br label %63

63:                                               ; preds = %61, %39
  %64 = phi i32 [ %41, %39 ], [ %62, %61 ]
  %65 = add nuw nsw i64 %40, 1
  %66 = icmp eq i64 %65, %35
  br i1 %66, label %36, label %39

67:                                               ; preds = %67, %49
  %68 = phi i64 [ %60, %49 ], [ %97, %67 ]
  %69 = phi i64 [ %59, %49 ], [ %98, %67 ]
  %70 = getelementptr inbounds i32, ptr %52, i64 %69
  %71 = load i32, ptr %70, align 4, !tbaa !7
  %72 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68
  store i32 %71, ptr %72, align 8, !tbaa !110
  %73 = getelementptr inbounds i32, ptr %54, i64 %69
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 1
  store i32 %74, ptr %75, align 4, !tbaa !112
  %76 = getelementptr inbounds [3 x double], ptr %56, i64 %69
  %77 = load double, ptr %76, align 8, !tbaa !31
  %78 = fadd double %13, %77
  %79 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 2
  store double %78, ptr %79, align 8, !tbaa !113
  %80 = getelementptr inbounds [3 x double], ptr %56, i64 %69, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !31
  %82 = fadd double %18, %81
  %83 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 3
  store double %82, ptr %83, align 8, !tbaa !114
  %84 = getelementptr inbounds [3 x double], ptr %56, i64 %69, i64 2
  %85 = load double, ptr %84, align 8, !tbaa !31
  %86 = fadd double %23, %85
  %87 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 4
  store double %86, ptr %87, align 8, !tbaa !115
  %88 = getelementptr inbounds [3 x double], ptr %58, i64 %69
  %89 = load double, ptr %88, align 8, !tbaa !31
  %90 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 5
  store double %89, ptr %90, align 8, !tbaa !116
  %91 = getelementptr inbounds [3 x double], ptr %58, i64 %69, i64 1
  %92 = load double, ptr %91, align 8, !tbaa !31
  %93 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 6
  store double %92, ptr %93, align 8, !tbaa !117
  %94 = getelementptr inbounds [3 x double], ptr %58, i64 %69, i64 2
  %95 = load double, ptr %94, align 8, !tbaa !31
  %96 = getelementptr inbounds %struct.AtomMsgSt, ptr %3, i64 %68, i32 7
  store double %95, ptr %96, align 8, !tbaa !118
  %97 = add nsw i64 %68, 1
  %98 = add nsw i64 %69, 1
  %99 = load i32, ptr %46, align 4, !tbaa !7
  %100 = add nsw i32 %99, %44
  %101 = sext i32 %100 to i64
  %102 = icmp slt i64 %98, %101
  br i1 %102, label %67, label %61
}

; Function Attrs: nounwind optsize uwtable
define internal void @unloadAtomsBuffer(ptr nocapture readnone %0, ptr nocapture noundef readonly %1, i32 %2, i32 noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = sext i32 %3 to i64
  %7 = udiv i64 %6, 56
  %8 = trunc i64 %7 to i32
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.SimFlatSt, ptr %1, i64 0, i32 4
  %12 = getelementptr inbounds %struct.SimFlatSt, ptr %1, i64 0, i32 5
  %13 = and i64 %7, 4294967295
  br label %15

14:                                               ; preds = %15, %5
  ret void

15:                                               ; preds = %15, %10
  %16 = phi i64 [ 0, %10 ], [ %35, %15 ]
  %17 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16
  %18 = load i32, ptr %17, align 8, !tbaa !110
  %19 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !112
  %21 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 2
  %22 = load double, ptr %21, align 8, !tbaa !113
  %23 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 3
  %24 = load double, ptr %23, align 8, !tbaa !114
  %25 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 4
  %26 = load double, ptr %25, align 8, !tbaa !115
  %27 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 5
  %28 = load double, ptr %27, align 8, !tbaa !116
  %29 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 6
  %30 = load double, ptr %29, align 8, !tbaa !117
  %31 = getelementptr inbounds %struct.AtomMsgSt, ptr %4, i64 %16, i32 7
  %32 = load double, ptr %31, align 8, !tbaa !118
  %33 = load ptr, ptr %11, align 8, !tbaa !37
  %34 = load ptr, ptr %12, align 8, !tbaa !38
  tail call void @putAtomInBox(ptr noundef %33, ptr noundef %34, i32 noundef %18, i32 noundef %20, double noundef %22, double noundef %24, double noundef %26, double noundef %28, double noundef %30, double noundef %32) #39
  %35 = add nuw nsw i64 %16, 1
  %36 = icmp eq i64 %35, %13
  br i1 %36, label %14, label %15
}

; Function Attrs: nounwind optsize uwtable
define internal void @destroyAtomsExchange(ptr nocapture noundef readonly %0) #0 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 2, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  tail call void @free(ptr noundef %6) #39
  %7 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 1, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  tail call void @free(ptr noundef %8) #39
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 6
  br i1 %10, label %2, label %3
}

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @initForceHaloExchange(ptr noundef %0, ptr noundef %1) #0 {
  %3 = tail call fastcc ptr @initHaloExchange(ptr noundef %0) #42
  %4 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 2
  store ptr @loadForceBuffer, ptr %4, align 8, !tbaa !103
  %5 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 3
  store ptr @unloadForceBuffer, ptr %5, align 8, !tbaa !104
  %6 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 4
  store ptr @destroyForceExchange, ptr %6, align 8, !tbaa !105
  %7 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 1
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = getelementptr inbounds [3 x i32], ptr %1, i64 0, i64 2
  %10 = load i32, ptr %9, align 8, !tbaa !7
  %11 = load i32, ptr %1, align 8, !tbaa !7
  %12 = add nsw i32 %11, 2
  %13 = mul nsw i32 %12, %10
  %14 = add nsw i32 %8, 2
  %15 = mul nsw i32 %12, %14
  %16 = tail call i32 @llvm.smax.i32(i32 %13, i32 %15)
  %17 = shl i32 %16, 9
  %18 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 1
  store i32 %17, ptr %18, align 8, !tbaa !101
  %19 = tail call noalias dereferenceable_or_null(120) ptr @malloc(i64 noundef 120) #41
  %20 = mul nsw i32 %10, %8
  store i32 %20, ptr %19, align 8, !tbaa !7
  %21 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 2
  store i32 %13, ptr %21, align 8, !tbaa !7
  %22 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 4
  store i32 %15, ptr %22, align 8, !tbaa !7
  %23 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 1
  store i32 %20, ptr %23, align 4, !tbaa !7
  %24 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 3
  store i32 %13, ptr %24, align 4, !tbaa !7
  %25 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 5
  store i32 %15, ptr %25, align 4, !tbaa !7
  br label %28

26:                                               ; preds = %151
  %27 = getelementptr inbounds %struct.HaloExchangeSt, ptr %3, i64 0, i32 5
  store ptr %19, ptr %27, align 8, !tbaa !106
  ret ptr %3

28:                                               ; preds = %151, %2
  %29 = phi i64 [ 0, %2 ], [ %153, %151 ]
  %30 = getelementptr inbounds [6 x i32], ptr %19, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = shl nsw i64 %32, 2
  %34 = tail call noalias ptr @malloc(i64 noundef %33) #41
  %35 = load i32, ptr %1, align 8, !tbaa !7
  %36 = load i32, ptr %7, align 4, !tbaa !7
  %37 = load i32, ptr %9, align 8, !tbaa !7
  %38 = trunc i64 %29 to i32
  switch i32 %38, label %55 [
    i32 5, label %45
    i32 1, label %39
    i32 2, label %48
    i32 3, label %41
    i32 4, label %43
  ]

39:                                               ; preds = %28
  %40 = add nsw i32 %35, -1
  br label %55

41:                                               ; preds = %28
  %42 = add nsw i32 %36, -1
  br label %48

43:                                               ; preds = %28
  %44 = add nsw i32 %36, 1
  br label %48

45:                                               ; preds = %28
  %46 = add nsw i32 %36, 1
  %47 = add nsw i32 %37, -1
  br label %48

48:                                               ; preds = %45, %43, %41, %28
  %49 = phi i32 [ %46, %45 ], [ %44, %43 ], [ %36, %41 ], [ 1, %28 ]
  %50 = phi i32 [ %47, %45 ], [ 0, %43 ], [ 0, %41 ], [ 0, %28 ]
  %51 = phi i32 [ %37, %45 ], [ 1, %43 ], [ %37, %41 ], [ %37, %28 ]
  %52 = phi i32 [ -1, %45 ], [ -1, %43 ], [ %42, %41 ], [ 0, %28 ]
  %53 = add nsw i32 %35, 1
  %54 = icmp sgt i32 %35, -2
  br i1 %54, label %55, label %94

55:                                               ; preds = %48, %39, %28
  %56 = phi i32 [ -1, %48 ], [ 0, %28 ], [ %40, %39 ]
  %57 = phi i32 [ %53, %48 ], [ 1, %28 ], [ %35, %39 ]
  %58 = phi i32 [ %52, %48 ], [ 0, %28 ], [ 0, %39 ]
  %59 = phi i32 [ %51, %48 ], [ %37, %28 ], [ %37, %39 ]
  %60 = phi i32 [ %50, %48 ], [ 0, %28 ], [ 0, %39 ]
  %61 = phi i32 [ %49, %48 ], [ %36, %28 ], [ %36, %39 ]
  %62 = icmp slt i32 %58, %61
  %63 = icmp slt i32 %60, %59
  br label %64

64:                                               ; preds = %72, %55
  %65 = phi i32 [ %56, %55 ], [ %74, %72 ]
  %66 = phi i32 [ 0, %55 ], [ %73, %72 ]
  br i1 %62, label %67, label %72

67:                                               ; preds = %78, %64
  %68 = phi i32 [ %80, %78 ], [ %58, %64 ]
  %69 = phi i32 [ %79, %78 ], [ %66, %64 ]
  br i1 %63, label %70, label %78

70:                                               ; preds = %67
  %71 = sext i32 %69 to i64
  br label %82

72:                                               ; preds = %78, %64
  %73 = phi i32 [ %66, %64 ], [ %79, %78 ]
  %74 = add i32 %65, 1
  %75 = icmp eq i32 %74, %57
  br i1 %75, label %90, label %64

76:                                               ; preds = %82
  %.lcssa = phi i64 [ %86, %82 ]
  %77 = trunc i64 %.lcssa to i32
  br label %78

78:                                               ; preds = %76, %67
  %79 = phi i32 [ %69, %67 ], [ %77, %76 ]
  %80 = add i32 %68, 1
  %81 = icmp eq i32 %80, %61
  br i1 %81, label %72, label %67

82:                                               ; preds = %82, %70
  %83 = phi i64 [ %71, %70 ], [ %86, %82 ]
  %84 = phi i32 [ %60, %70 ], [ %88, %82 ]
  %85 = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %65, i32 noundef %68, i32 noundef %84) #39
  %86 = add nsw i64 %83, 1
  %87 = getelementptr inbounds i32, ptr %34, i64 %83
  store i32 %85, ptr %87, align 4, !tbaa !7
  %88 = add i32 %84, 1
  %89 = icmp eq i32 %88, %59
  br i1 %89, label %76, label %82

90:                                               ; preds = %72
  %91 = load i32, ptr %1, align 8, !tbaa !7
  %92 = load i32, ptr %7, align 4, !tbaa !7
  %93 = load i32, ptr %9, align 8, !tbaa !7
  br label %94

94:                                               ; preds = %90, %48
  %95 = phi i32 [ %93, %90 ], [ %37, %48 ]
  %96 = phi i32 [ %92, %90 ], [ %36, %48 ]
  %97 = phi i32 [ %91, %90 ], [ %35, %48 ]
  %98 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %19, i64 0, i32 1, i64 %29
  store ptr %34, ptr %98, align 8, !tbaa !11
  %99 = tail call noalias ptr @malloc(i64 noundef %33) #41
  switch i32 %38, label %116 [
    i32 5, label %106
    i32 1, label %100
    i32 2, label %109
    i32 3, label %102
    i32 4, label %104
  ]

100:                                              ; preds = %94
  %101 = add nsw i32 %97, 1
  br label %116

102:                                              ; preds = %94
  %103 = add nsw i32 %96, 1
  br label %109

104:                                              ; preds = %94
  %105 = add nsw i32 %96, 1
  br label %109

106:                                              ; preds = %94
  %107 = add nsw i32 %96, 1
  %108 = add nsw i32 %95, 1
  br label %109

109:                                              ; preds = %106, %104, %102, %94
  %110 = phi i32 [ %107, %106 ], [ %105, %104 ], [ %103, %102 ], [ 0, %94 ]
  %111 = phi i32 [ %95, %106 ], [ -1, %104 ], [ 0, %102 ], [ 0, %94 ]
  %112 = phi i32 [ %108, %106 ], [ 0, %104 ], [ %95, %102 ], [ %95, %94 ]
  %113 = phi i32 [ -1, %106 ], [ -1, %104 ], [ %96, %102 ], [ -1, %94 ]
  %114 = add nsw i32 %97, 1
  %115 = icmp sgt i32 %97, -2
  br i1 %115, label %116, label %151

116:                                              ; preds = %109, %100, %94
  %117 = phi i32 [ -1, %109 ], [ -1, %94 ], [ %97, %100 ]
  %118 = phi i32 [ %114, %109 ], [ 0, %94 ], [ %101, %100 ]
  %119 = phi i32 [ %113, %109 ], [ 0, %94 ], [ 0, %100 ]
  %120 = phi i32 [ %112, %109 ], [ %95, %94 ], [ %95, %100 ]
  %121 = phi i32 [ %111, %109 ], [ 0, %94 ], [ 0, %100 ]
  %122 = phi i32 [ %110, %109 ], [ %96, %94 ], [ %96, %100 ]
  %123 = icmp slt i32 %119, %122
  %124 = icmp slt i32 %121, %120
  br label %125

125:                                              ; preds = %133, %116
  %126 = phi i32 [ %117, %116 ], [ %135, %133 ]
  %127 = phi i32 [ 0, %116 ], [ %134, %133 ]
  br i1 %123, label %128, label %133

128:                                              ; preds = %139, %125
  %129 = phi i32 [ %141, %139 ], [ %119, %125 ]
  %130 = phi i32 [ %140, %139 ], [ %127, %125 ]
  br i1 %124, label %131, label %139

131:                                              ; preds = %128
  %132 = sext i32 %130 to i64
  br label %143

133:                                              ; preds = %139, %125
  %134 = phi i32 [ %127, %125 ], [ %140, %139 ]
  %135 = add i32 %126, 1
  %136 = icmp eq i32 %135, %118
  br i1 %136, label %151, label %125

137:                                              ; preds = %143
  %.lcssa1 = phi i64 [ %147, %143 ]
  %138 = trunc i64 %.lcssa1 to i32
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi i32 [ %130, %128 ], [ %138, %137 ]
  %141 = add i32 %129, 1
  %142 = icmp eq i32 %141, %122
  br i1 %142, label %133, label %128

143:                                              ; preds = %143, %131
  %144 = phi i64 [ %132, %131 ], [ %147, %143 ]
  %145 = phi i32 [ %121, %131 ], [ %149, %143 ]
  %146 = tail call i32 @getBoxFromTuple(ptr noundef nonnull %1, i32 noundef %126, i32 noundef %129, i32 noundef %145) #39
  %147 = add nsw i64 %144, 1
  %148 = getelementptr inbounds i32, ptr %99, i64 %144
  store i32 %146, ptr %148, align 4, !tbaa !7
  %149 = add i32 %145, 1
  %150 = icmp eq i32 %149, %120
  br i1 %150, label %137, label %143

151:                                              ; preds = %133, %109
  %152 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %19, i64 0, i32 2, i64 %29
  store ptr %99, ptr %152, align 8, !tbaa !11
  %153 = add nuw nsw i64 %29, 1
  %154 = icmp eq i64 %153, 6
  br i1 %154, label %26, label %28
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @loadForceBuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef writeonly %3) #22 {
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 1, i64 %5
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = icmp sgt i32 %7, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %4
  %12 = getelementptr inbounds %struct.ForceExchangeDataSt, ptr %1, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !90
  %14 = getelementptr inbounds %struct.LinkCellSt, ptr %13, i64 0, i32 8
  %15 = load ptr, ptr %14, align 8, !tbaa !54
  %16 = zext i32 %7 to i64
  br label %20

17:                                               ; preds = %38, %4
  %18 = phi i32 [ 0, %4 ], [ %39, %38 ]
  %19 = shl i32 %18, 3
  ret i32 %19

20:                                               ; preds = %38, %11
  %21 = phi i64 [ 0, %11 ], [ %40, %38 ]
  %22 = phi i32 [ 0, %11 ], [ %39, %38 ]
  %23 = getelementptr inbounds i32, ptr %9, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, ptr %15, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %20
  %30 = shl i32 %24, 6
  %31 = add nsw i32 %27, %30
  %32 = load ptr, ptr %1, align 8, !tbaa !88
  %33 = sext i32 %30 to i64
  %34 = sext i32 %31 to i64
  %35 = sext i32 %22 to i64
  br label %42

36:                                               ; preds = %42
  %.lcssa = phi i64 [ %48, %42 ]
  %37 = trunc i64 %.lcssa to i32
  br label %38

38:                                               ; preds = %36, %20
  %39 = phi i32 [ %22, %20 ], [ %37, %36 ]
  %40 = add nuw nsw i64 %21, 1
  %41 = icmp eq i64 %40, %16
  br i1 %41, label %17, label %20

42:                                               ; preds = %42, %29
  %43 = phi i64 [ %35, %29 ], [ %48, %42 ]
  %44 = phi i64 [ %33, %29 ], [ %49, %42 ]
  %45 = getelementptr inbounds double, ptr %32, i64 %44
  %46 = load double, ptr %45, align 8, !tbaa !31
  %47 = getelementptr inbounds %struct.ForceMsgSt, ptr %3, i64 %43
  store double %46, ptr %47, align 8, !tbaa !119
  %48 = add nsw i64 %43, 1
  %49 = add nsw i64 %44, 1
  %50 = icmp slt i64 %49, %34
  br i1 %50, label %42, label %36
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @unloadForceBuffer(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 %3, ptr nocapture noundef readonly %4) #23 {
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 2, i64 %6
  %10 = load ptr, ptr %9, align 8, !tbaa !11
  %11 = icmp sgt i32 %8, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %5
  %13 = getelementptr inbounds %struct.ForceExchangeDataSt, ptr %1, i64 0, i32 1
  %14 = load ptr, ptr %13, align 8, !tbaa !90
  %15 = getelementptr inbounds %struct.LinkCellSt, ptr %14, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = zext i32 %8 to i64
  br label %19

18:                                               ; preds = %37, %5
  ret void

19:                                               ; preds = %37, %12
  %20 = phi i64 [ 0, %12 ], [ %39, %37 ]
  %21 = phi i32 [ 0, %12 ], [ %38, %37 ]
  %22 = getelementptr inbounds i32, ptr %10, i64 %20
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, ptr %16, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %37

28:                                               ; preds = %19
  %29 = shl i32 %23, 6
  %30 = add nsw i32 %26, %29
  %31 = load ptr, ptr %1, align 8, !tbaa !88
  %32 = sext i32 %29 to i64
  %33 = sext i32 %30 to i64
  %34 = sext i32 %21 to i64
  br label %41

35:                                               ; preds = %41
  %.lcssa = phi i64 [ %47, %41 ]
  %36 = trunc i64 %.lcssa to i32
  br label %37

37:                                               ; preds = %35, %19
  %38 = phi i32 [ %21, %19 ], [ %36, %35 ]
  %39 = add nuw nsw i64 %20, 1
  %40 = icmp eq i64 %39, %17
  br i1 %40, label %18, label %19

41:                                               ; preds = %41, %28
  %42 = phi i64 [ %34, %28 ], [ %47, %41 ]
  %43 = phi i64 [ %32, %28 ], [ %48, %41 ]
  %44 = getelementptr inbounds %struct.ForceMsgSt, ptr %4, i64 %42
  %45 = load double, ptr %44, align 8, !tbaa !119
  %46 = getelementptr inbounds double, ptr %31, i64 %43
  store double %45, ptr %46, align 8, !tbaa !31
  %47 = add nsw i64 %42, 1
  %48 = add nsw i64 %43, 1
  %49 = icmp slt i64 %48, %33
  br i1 %49, label %41, label %35
}

; Function Attrs: nounwind optsize uwtable
define internal void @destroyForceExchange(ptr nocapture noundef readonly %0) #0 {
  br label %3

2:                                                ; preds = %3
  ret void

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 0, %1 ], [ %9, %3 ]
  %5 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 1, i64 %4
  %6 = load ptr, ptr %5, align 8, !tbaa !11
  tail call void @free(ptr noundef %6) #39
  %7 = getelementptr inbounds %struct.AtomExchangeParmsSt, ptr %0, i64 0, i32 2, i64 %4
  %8 = load ptr, ptr %7, align 8, !tbaa !11
  tail call void @free(ptr noundef %8) #39
  %9 = add nuw nsw i64 %4, 1
  %10 = icmp eq i64 %9, 6
  br i1 %10, label %2, label %3
}

; Function Attrs: nounwind optsize uwtable
define internal void @destroyHaloExchange(ptr nocapture noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !11
  %3 = getelementptr inbounds %struct.HaloExchangeSt, ptr %2, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !105
  %5 = getelementptr inbounds %struct.HaloExchangeSt, ptr %2, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !106
  tail call void %4(ptr noundef %6) #39
  %7 = load ptr, ptr %0, align 8, !tbaa !11
  %8 = getelementptr inbounds %struct.HaloExchangeSt, ptr %7, i64 0, i32 5
  %9 = load ptr, ptr %8, align 8, !tbaa !106
  tail call void @free(ptr noundef %9) #39
  %10 = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @free(ptr noundef %10) #39
  store ptr null, ptr %0, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @haloExchange(ptr nocapture noundef readonly %0, ptr noundef %1) #0 {
  %3 = getelementptr inbounds %struct.HaloExchangeSt, ptr %0, i64 0, i32 1
  %4 = getelementptr inbounds %struct.HaloExchangeSt, ptr %0, i64 0, i32 2
  %5 = getelementptr inbounds %struct.HaloExchangeSt, ptr %0, i64 0, i32 5
  %6 = getelementptr inbounds %struct.HaloExchangeSt, ptr %0, i64 0, i32 3
  br label %8

7:                                                ; preds = %8
  ret void

8:                                                ; preds = %8, %2
  %9 = phi i64 [ 0, %2 ], [ %38, %8 ]
  %10 = shl nuw nsw i64 %9, 1
  %11 = or i64 %10, 1
  %12 = load i32, ptr %3, align 8, !tbaa !101
  %13 = sext i32 %12 to i64
  %14 = tail call noalias ptr @malloc(i64 noundef %13) #41
  %15 = tail call noalias ptr @malloc(i64 noundef %13) #41
  %16 = tail call noalias ptr @malloc(i64 noundef %13) #41
  %17 = tail call noalias ptr @malloc(i64 noundef %13) #41
  %18 = load ptr, ptr %4, align 8, !tbaa !103
  %19 = load ptr, ptr %5, align 8, !tbaa !106
  %20 = trunc i64 %10 to i32
  %21 = tail call i32 %18(ptr noundef %19, ptr noundef %1, i32 noundef %20, ptr noundef %14) #39
  %22 = load ptr, ptr %4, align 8, !tbaa !103
  %23 = load ptr, ptr %5, align 8, !tbaa !106
  %24 = trunc i64 %11 to i32
  %25 = tail call i32 %22(ptr noundef %23, ptr noundef %1, i32 noundef %24, ptr noundef %15) #39
  %26 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 %10
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = getelementptr inbounds [6 x i32], ptr %0, i64 0, i64 %11
  %29 = load i32, ptr %28, align 4, !tbaa !7
  tail call void @profileStart(i32 noundef 9) #39
  %30 = load i32, ptr %3, align 8, !tbaa !101
  %31 = tail call i32 @sendReceiveParallel(ptr noundef %14, i32 noundef %21, i32 noundef %27, ptr noundef %17, i32 noundef %30, i32 noundef %29) #39
  %32 = load i32, ptr %3, align 8, !tbaa !101
  %33 = tail call i32 @sendReceiveParallel(ptr noundef %15, i32 noundef %25, i32 noundef %29, ptr noundef %16, i32 noundef %32, i32 noundef %27) #39
  tail call void @profileStop(i32 noundef 9) #39
  %34 = load ptr, ptr %6, align 8, !tbaa !104
  %35 = load ptr, ptr %5, align 8, !tbaa !106
  tail call void %34(ptr noundef %35, ptr noundef %1, i32 noundef %20, i32 noundef %33, ptr noundef %16) #39
  %36 = load ptr, ptr %6, align 8, !tbaa !104
  %37 = load ptr, ptr %5, align 8, !tbaa !106
  tail call void %36(ptr noundef %37, ptr noundef %1, i32 noundef %24, i32 noundef %31, ptr noundef %17) #39
  tail call void @free(ptr noundef %17) #39
  tail call void @free(ptr noundef %16) #39
  tail call void @free(ptr noundef %15) #39
  tail call void @free(ptr noundef %14) #39
  %38 = add nuw nsw i64 %9, 1
  %39 = icmp eq i64 %38, 3
  br i1 %39, label %7, label %8
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @sortAtomsInCell(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #11 {
  %4 = getelementptr inbounds %struct.LinkCellSt, ptr %1, i64 0, i32 8
  %5 = load ptr, ptr %4, align 8, !tbaa !54
  %6 = sext i32 %2 to i64
  %7 = getelementptr inbounds i32, ptr %5, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = zext i32 %8 to i64
  %10 = alloca %struct.AtomMsgSt, i64 %9, align 16
  %11 = shl i32 %2, 6
  %12 = add nsw i32 %8, %11
  %13 = icmp sgt i32 %8, 0
  br i1 %13, label %16, label %14

14:                                               ; preds = %3
  %15 = sext i32 %8 to i64
  call void @qsort(ptr noundef nonnull %10, i64 noundef %15, i64 noundef 56, ptr noundef nonnull @sortAtomsById) #39
  br label %70

16:                                               ; preds = %3
  %17 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !107
  %19 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 3
  %20 = load ptr, ptr %19, align 8, !tbaa !108
  %21 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 4
  %22 = load ptr, ptr %21, align 8, !tbaa !93
  %23 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 5
  %24 = load ptr, ptr %23, align 8, !tbaa !109
  %25 = sext i32 %11 to i64
  %26 = sext i32 %12 to i64
  br label %40

27:                                               ; preds = %40
  %28 = sext i32 %8 to i64
  call void @qsort(ptr noundef nonnull %10, i64 noundef %28, i64 noundef 56, ptr noundef nonnull @sortAtomsById) #39
  br i1 %13, label %29, label %70

29:                                               ; preds = %27
  %30 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 2
  %31 = load ptr, ptr %30, align 8, !tbaa !107
  %32 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 3
  %33 = load ptr, ptr %32, align 8, !tbaa !108
  %34 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 4
  %35 = load ptr, ptr %34, align 8, !tbaa !93
  %36 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 5
  %37 = load ptr, ptr %36, align 8, !tbaa !109
  %38 = sext i32 %11 to i64
  %39 = sext i32 %12 to i64
  br label %71

40:                                               ; preds = %40, %16
  %41 = phi i64 [ %25, %16 ], [ %67, %40 ]
  %42 = phi i64 [ 0, %16 ], [ %68, %40 ]
  %43 = getelementptr inbounds i32, ptr %18, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !7
  %45 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42
  store i32 %44, ptr %45, align 8, !tbaa !110
  %46 = getelementptr inbounds i32, ptr %20, i64 %41
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 1
  store i32 %47, ptr %48, align 4, !tbaa !112
  %49 = getelementptr inbounds [3 x double], ptr %22, i64 %41
  %50 = load double, ptr %49, align 8, !tbaa !31
  %51 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 2
  store double %50, ptr %51, align 8, !tbaa !113
  %52 = getelementptr inbounds [3 x double], ptr %22, i64 %41, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !31
  %54 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 3
  store double %53, ptr %54, align 8, !tbaa !114
  %55 = getelementptr inbounds [3 x double], ptr %22, i64 %41, i64 2
  %56 = load double, ptr %55, align 8, !tbaa !31
  %57 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 4
  store double %56, ptr %57, align 8, !tbaa !115
  %58 = getelementptr inbounds [3 x double], ptr %24, i64 %41
  %59 = load double, ptr %58, align 8, !tbaa !31
  %60 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 5
  store double %59, ptr %60, align 8, !tbaa !116
  %61 = getelementptr inbounds [3 x double], ptr %24, i64 %41, i64 1
  %62 = load double, ptr %61, align 8, !tbaa !31
  %63 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 6
  store double %62, ptr %63, align 8, !tbaa !117
  %64 = getelementptr inbounds [3 x double], ptr %24, i64 %41, i64 2
  %65 = load double, ptr %64, align 8, !tbaa !31
  %66 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %42, i32 7
  store double %65, ptr %66, align 8, !tbaa !118
  %67 = add nsw i64 %41, 1
  %68 = add nuw nsw i64 %42, 1
  %69 = icmp slt i64 %67, %26
  br i1 %69, label %40, label %27

70:                                               ; preds = %71, %27, %14
  ret void

71:                                               ; preds = %71, %29
  %72 = phi i64 [ %38, %29 ], [ %98, %71 ]
  %73 = phi i64 [ 0, %29 ], [ %99, %71 ]
  %74 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73
  %75 = load i32, ptr %74, align 8, !tbaa !110
  %76 = getelementptr inbounds i32, ptr %31, i64 %72
  store i32 %75, ptr %76, align 4, !tbaa !7
  %77 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 1
  %78 = load i32, ptr %77, align 4, !tbaa !112
  %79 = getelementptr inbounds i32, ptr %33, i64 %72
  store i32 %78, ptr %79, align 4, !tbaa !7
  %80 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 2
  %81 = load double, ptr %80, align 8, !tbaa !113
  %82 = getelementptr inbounds [3 x double], ptr %35, i64 %72
  store double %81, ptr %82, align 8, !tbaa !31
  %83 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 3
  %84 = load double, ptr %83, align 8, !tbaa !114
  %85 = getelementptr inbounds [3 x double], ptr %35, i64 %72, i64 1
  store double %84, ptr %85, align 8, !tbaa !31
  %86 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 4
  %87 = load double, ptr %86, align 8, !tbaa !115
  %88 = getelementptr inbounds [3 x double], ptr %35, i64 %72, i64 2
  store double %87, ptr %88, align 8, !tbaa !31
  %89 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 5
  %90 = load double, ptr %89, align 8, !tbaa !116
  %91 = getelementptr inbounds [3 x double], ptr %37, i64 %72
  store double %90, ptr %91, align 8, !tbaa !31
  %92 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 6
  %93 = load double, ptr %92, align 8, !tbaa !117
  %94 = getelementptr inbounds [3 x double], ptr %37, i64 %72, i64 1
  store double %93, ptr %94, align 8, !tbaa !31
  %95 = getelementptr inbounds %struct.AtomMsgSt, ptr %10, i64 %73, i32 7
  %96 = load double, ptr %95, align 8, !tbaa !118
  %97 = getelementptr inbounds [3 x double], ptr %37, i64 %72, i64 2
  store double %96, ptr %97, align 8, !tbaa !31
  %98 = add nsw i64 %72, 1
  %99 = add nuw nsw i64 %73, 1
  %100 = icmp slt i64 %98, %39
  br i1 %100, label %71, label %70
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @sortAtomsById(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #17 {
  %3 = load i32, ptr %0, align 8, !tbaa !110
  %4 = load i32, ptr %1, align 8, !tbaa !110
  %5 = icmp slt i32 %3, %4
  %6 = select i1 %5, i32 -1, i32 1
  ret i32 %6
}

; Function Attrs: nofree optsize
declare void @qsort(ptr noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: readwrite) uwtable
define internal noalias ptr @initAtoms(ptr nocapture noundef readonly %0) #25 {
  %2 = tail call noalias dereferenceable_or_null(56) ptr @malloc(i64 noundef 56) #41
  %3 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 3
  %4 = load i32, ptr %3, align 4, !tbaa !84
  %5 = shl nsw i32 %4, 6
  %6 = sext i32 %5 to i64
  %7 = shl nsw i64 %6, 2
  %8 = tail call noalias ptr @malloc(i64 noundef %7) #41
  %9 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 2
  store ptr %8, ptr %9, align 8, !tbaa !107
  %10 = tail call noalias ptr @malloc(i64 noundef %7) #41
  %11 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 3
  store ptr %10, ptr %11, align 8, !tbaa !108
  %12 = mul nsw i64 %6, 24
  %13 = tail call noalias ptr @malloc(i64 noundef %12) #41
  %14 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 4
  store ptr %13, ptr %14, align 8, !tbaa !93
  %15 = tail call noalias ptr @malloc(i64 noundef %12) #41
  %16 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 5
  store ptr %15, ptr %16, align 8, !tbaa !109
  %17 = tail call noalias ptr @malloc(i64 noundef %12) #41
  %18 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 6
  store ptr %17, ptr %18, align 8, !tbaa !91
  %19 = shl nsw i64 %6, 3
  %20 = tail call noalias ptr @malloc(i64 noundef %19) #41
  %21 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 7
  store ptr %20, ptr %21, align 8, !tbaa !92
  store i32 0, ptr %2, align 8, !tbaa !46
  %22 = getelementptr inbounds %struct.AtomsSt, ptr %2, i64 0, i32 1
  store i32 0, ptr %22, align 4, !tbaa !43
  %23 = icmp sgt i32 %4, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %1
  %25 = tail call i32 @llvm.smax.i32(i32 %5, i32 1)
  %26 = zext i32 %25 to i64
  %27 = shl nuw nsw i64 %26, 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %8, i8 0, i64 %27, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(1) %10, i8 0, i64 %27, i1 false), !tbaa !7
  %28 = shl nuw nsw i64 %26, 3
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %20, i8 0, i64 %28, i1 false), !tbaa !31
  %29 = mul nuw nsw i64 %26, 24
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %13, i8 0, i64 %29, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %15, i8 0, i64 %29, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(1) %17, i8 0, i64 %29, i1 false)
  br label %30

30:                                               ; preds = %24, %1
  ret ptr %2
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @destroyAtoms(ptr nocapture noundef %0) #19 {
  %2 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !107
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @free(ptr noundef nonnull %3) #39
  br label %6

6:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !107
  %7 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !108
  %9 = icmp eq ptr %8, null
  br i1 %9, label %11, label %10

10:                                               ; preds = %6
  tail call void @free(ptr noundef nonnull %8) #39
  br label %11

11:                                               ; preds = %10, %6
  store ptr null, ptr %7, align 8, !tbaa !108
  %12 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 4
  %13 = load ptr, ptr %12, align 8, !tbaa !93
  %14 = icmp eq ptr %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %11
  tail call void @free(ptr noundef nonnull %13) #39
  br label %16

16:                                               ; preds = %15, %11
  store ptr null, ptr %12, align 8, !tbaa !93
  %17 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 5
  %18 = load ptr, ptr %17, align 8, !tbaa !109
  %19 = icmp eq ptr %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %16
  tail call void @free(ptr noundef nonnull %18) #39
  br label %21

21:                                               ; preds = %20, %16
  store ptr null, ptr %17, align 8, !tbaa !109
  %22 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = icmp eq ptr %23, null
  br i1 %24, label %26, label %25

25:                                               ; preds = %21
  tail call void @free(ptr noundef nonnull %23) #39
  br label %26

26:                                               ; preds = %25, %21
  store ptr null, ptr %22, align 8, !tbaa !91
  %27 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 7
  %28 = load ptr, ptr %27, align 8, !tbaa !92
  %29 = icmp eq ptr %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  tail call void @free(ptr noundef nonnull %28) #39
  br label %31

31:                                               ; preds = %30, %26
  tail call void @free(ptr noundef nonnull %0) #39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @createFccLattice(i32 noundef %0, i32 noundef %1, i32 noundef %2, double noundef %3, ptr nocapture noundef readonly %4) #0 {
  %6 = alloca [3 x i32], align 4
  %7 = alloca [3 x i32], align 4
  %8 = getelementptr inbounds %struct.SimFlatSt, ptr %4, i64 0, i32 3
  %9 = load ptr, ptr %8, align 8, !tbaa !36
  %10 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 5
  %11 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 6
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %6) #40
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %7) #40
  br label %33

12:                                               ; preds = %33
  %13 = load i32, ptr %6, align 4, !tbaa !7
  %14 = load i32, ptr %7, align 4, !tbaa !7
  %15 = icmp slt i32 %13, %14
  br i1 %15, label %16, label %49

16:                                               ; preds = %12
  %17 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 1
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = icmp slt i32 %18, %20
  %22 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 2
  %23 = load i32, ptr %22, align 4
  %24 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 2
  %25 = load i32, ptr %24, align 4
  %26 = icmp slt i32 %23, %25
  %27 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 5, i64 1
  %28 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 6, i64 1
  %29 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 5, i64 2
  %30 = getelementptr inbounds %struct.DomainSt, ptr %9, i64 0, i32 6, i64 2
  %31 = getelementptr inbounds %struct.SimFlatSt, ptr %4, i64 0, i32 4
  %32 = getelementptr inbounds %struct.SimFlatSt, ptr %4, i64 0, i32 5
  br label %53

33:                                               ; preds = %33, %5
  %34 = phi i64 [ 0, %5 ], [ %47, %33 ]
  %35 = getelementptr inbounds double, ptr %10, i64 %34
  %36 = load double, ptr %35, align 8, !tbaa !31
  %37 = fdiv double %36, %3
  %38 = tail call double @llvm.floor.f64(double %37)
  %39 = fptosi double %38 to i32
  %40 = getelementptr inbounds [3 x i32], ptr %6, i64 0, i64 %34
  store i32 %39, ptr %40, align 4, !tbaa !7
  %41 = getelementptr inbounds double, ptr %11, i64 %34
  %42 = load double, ptr %41, align 8, !tbaa !31
  %43 = fdiv double %42, %3
  %44 = tail call double @llvm.ceil.f64(double %43)
  %45 = fptosi double %44 to i32
  %46 = getelementptr inbounds [3 x i32], ptr %7, i64 0, i64 %34
  store i32 %45, ptr %46, align 4, !tbaa !7
  %47 = add nuw nsw i64 %34, 1
  %48 = icmp eq i64 %47, 3
  br i1 %48, label %12, label %33

49:                                               ; preds = %58, %12
  tail call void @profileStart(i32 noundef 10) #39
  %50 = getelementptr inbounds %struct.SimFlatSt, ptr %4, i64 0, i32 5
  %51 = load ptr, ptr %50, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.AtomsSt, ptr %51, i64 0, i32 1
  tail call void @addIntParallel(ptr noundef %51, ptr noundef nonnull %52, i32 noundef 1) #39
  tail call void @profileStop(i32 noundef 10) #39
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %7) #40
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %6) #40
  ret void

53:                                               ; preds = %58, %16
  %54 = phi i32 [ %13, %16 ], [ %59, %58 ]
  br i1 %21, label %55, label %58

55:                                               ; preds = %53
  %56 = sitofp i32 %54 to double
  %57 = mul nsw i32 %54, %1
  br label %61

58:                                               ; preds = %72, %53
  %59 = add i32 %54, 1
  %60 = icmp eq i32 %59, %14
  br i1 %60, label %49, label %53

61:                                               ; preds = %72, %55
  %62 = phi i32 [ %18, %55 ], [ %73, %72 ]
  br i1 %26, label %63, label %72

63:                                               ; preds = %61
  %64 = sitofp i32 %62 to double
  %65 = add nsw i32 %62, %57
  %66 = mul nsw i32 %65, %2
  br label %67

67:                                               ; preds = %75, %63
  %68 = phi i32 [ %23, %63 ], [ %76, %75 ]
  %69 = sitofp i32 %68 to double
  %70 = add nsw i32 %68, %66
  %71 = shl nsw i32 %70, 2
  br label %78

72:                                               ; preds = %75, %61
  %73 = add i32 %62, 1
  %74 = icmp eq i32 %73, %20
  br i1 %74, label %58, label %61

75:                                               ; preds = %114
  %76 = add nsw i32 %68, 1
  %77 = icmp eq i32 %76, %25
  br i1 %77, label %72, label %67

78:                                               ; preds = %114, %67
  %79 = phi i64 [ 0, %67 ], [ %115, %114 ]
  %80 = getelementptr inbounds [4 x [3 x double]], ptr @__const.createFccLattice.basis, i64 0, i64 %79
  %81 = load double, ptr %80, align 8, !tbaa !31
  %82 = fadd double %81, %56
  %83 = fmul double %82, %3
  %84 = getelementptr inbounds [4 x [3 x double]], ptr @__const.createFccLattice.basis, i64 0, i64 %79, i64 1
  %85 = load double, ptr %84, align 8, !tbaa !31
  %86 = fadd double %85, %64
  %87 = fmul double %86, %3
  %88 = getelementptr inbounds [4 x [3 x double]], ptr @__const.createFccLattice.basis, i64 0, i64 %79, i64 2
  %89 = load double, ptr %88, align 8, !tbaa !31
  %90 = fadd double %89, %69
  %91 = fmul double %90, %3
  %92 = load double, ptr %10, align 8, !tbaa !31
  %93 = fcmp olt double %83, %92
  br i1 %93, label %114, label %94

94:                                               ; preds = %78
  %95 = load double, ptr %11, align 8, !tbaa !31
  %96 = fcmp ult double %83, %95
  br i1 %96, label %97, label %114

97:                                               ; preds = %94
  %98 = load double, ptr %27, align 8, !tbaa !31
  %99 = fcmp olt double %87, %98
  br i1 %99, label %114, label %100

100:                                              ; preds = %97
  %101 = load double, ptr %28, align 8, !tbaa !31
  %102 = fcmp ult double %87, %101
  br i1 %102, label %103, label %114

103:                                              ; preds = %100
  %104 = load double, ptr %29, align 8, !tbaa !31
  %105 = fcmp olt double %91, %104
  br i1 %105, label %114, label %106

106:                                              ; preds = %103
  %107 = load double, ptr %30, align 8, !tbaa !31
  %108 = fcmp ult double %91, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %106
  %110 = load ptr, ptr %31, align 8, !tbaa !37
  %111 = load ptr, ptr %32, align 8, !tbaa !38
  %112 = trunc i64 %79 to i32
  %113 = add i32 %71, %112
  tail call void @putAtomInBox(ptr noundef %110, ptr noundef %111, i32 noundef %113, i32 noundef 0, double noundef %83, double noundef %87, double noundef %91, double noundef 0.000000e+00, double noundef 0.000000e+00, double noundef 0.000000e+00) #39
  br label %114

114:                                              ; preds = %109, %106, %103, %100, %97, %94, %78
  %115 = add nuw nsw i64 %79, 1
  %116 = icmp eq i64 %115, 4
  br i1 %116, label %75, label %78
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.ceil.f64(double) #16

; Function Attrs: nounwind optsize uwtable
define internal void @setVcm(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [4 x double], align 16
  %4 = alloca [4 x double], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %3, i8 0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(32) %4, i8 0, i64 32, i1 false)
  %5 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.LinkCellSt, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %70

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.LinkCellSt, ptr %6, i64 0, i32 8
  %12 = load ptr, ptr %11, align 8, !tbaa !54
  %13 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %14 = getelementptr inbounds [4 x double], ptr %3, i64 0, i64 1
  %15 = getelementptr inbounds [4 x double], ptr %3, i64 0, i64 2
  %16 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds [4 x double], ptr %3, i64 0, i64 3
  %18 = zext i32 %8 to i64
  br label %19

19:                                               ; preds = %38, %10
  %20 = phi i64 [ 0, %10 ], [ %43, %38 ]
  %21 = phi i32 [ 0, %10 ], [ %44, %38 ]
  %22 = phi double [ 0.000000e+00, %10 ], [ %39, %38 ]
  %23 = phi double [ 0.000000e+00, %10 ], [ %40, %38 ]
  %24 = phi double [ 0.000000e+00, %10 ], [ %41, %38 ]
  %25 = phi double [ 0.000000e+00, %10 ], [ %42, %38 ]
  %26 = getelementptr inbounds i32, ptr %12, i64 %20
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp sgt i32 %27, 0
  br i1 %28, label %29, label %38

29:                                               ; preds = %19
  %30 = zext i32 %21 to i64
  %31 = load ptr, ptr %13, align 8, !tbaa !38
  %32 = getelementptr inbounds %struct.AtomsSt, ptr %31, i64 0, i32 5
  %33 = load ptr, ptr %32, align 8, !tbaa !109
  %34 = getelementptr inbounds %struct.AtomsSt, ptr %31, i64 0, i32 3
  %35 = load ptr, ptr %34, align 8, !tbaa !108
  %36 = load ptr, ptr %16, align 8, !tbaa !30
  %37 = add i32 %27, %21
  br label %46

38:                                               ; preds = %46, %19
  %39 = phi double [ %22, %19 ], [ %66, %46 ]
  %40 = phi double [ %23, %19 ], [ %60, %46 ]
  %41 = phi double [ %24, %19 ], [ %57, %46 ]
  %42 = phi double [ %25, %19 ], [ %54, %46 ]
  %43 = add nuw nsw i64 %20, 1
  %44 = add i32 %21, 64
  %45 = icmp eq i64 %43, %18
  br i1 %45, label %70, label %19

46:                                               ; preds = %46, %29
  %47 = phi i64 [ %30, %29 ], [ %67, %46 ]
  %48 = phi double [ %22, %29 ], [ %66, %46 ]
  %49 = phi double [ %23, %29 ], [ %60, %46 ]
  %50 = phi double [ %24, %29 ], [ %57, %46 ]
  %51 = phi double [ %25, %29 ], [ %54, %46 ]
  %52 = getelementptr inbounds [3 x double], ptr %33, i64 %47
  %53 = load double, ptr %52, align 8, !tbaa !31
  %54 = fadd double %51, %53
  store double %54, ptr %3, align 16, !tbaa !31
  %55 = getelementptr inbounds [3 x double], ptr %33, i64 %47, i64 1
  %56 = load double, ptr %55, align 8, !tbaa !31
  %57 = fadd double %50, %56
  store double %57, ptr %14, align 8, !tbaa !31
  %58 = getelementptr inbounds [3 x double], ptr %33, i64 %47, i64 2
  %59 = load double, ptr %58, align 8, !tbaa !31
  %60 = fadd double %49, %59
  store double %60, ptr %15, align 16, !tbaa !31
  %61 = getelementptr inbounds i32, ptr %35, i64 %47
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.SpeciesDataSt, ptr %36, i64 %63, i32 2
  %65 = load double, ptr %64, align 8, !tbaa !29
  %66 = fadd double %48, %65
  store double %66, ptr %17, align 8, !tbaa !31
  %67 = add nuw nsw i64 %47, 1
  %68 = trunc i64 %67 to i32
  %69 = icmp eq i32 %37, %68
  br i1 %69, label %38, label %46

70:                                               ; preds = %38, %2
  tail call void @profileStart(i32 noundef 10) #39
  call void @addRealParallel(ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 4) #39
  call void @profileStop(i32 noundef 10) #39
  %71 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 3
  %72 = load double, ptr %71, align 8, !tbaa !31
  %73 = getelementptr inbounds [4 x double], ptr %4, i64 0, i64 2
  %74 = load double, ptr %73, align 16, !tbaa !31
  %75 = fdiv double %74, %72
  %76 = load <2 x double>, ptr %4, align 16, !tbaa !31
  %77 = insertelement <2 x double> poison, double %72, i64 0
  %78 = shufflevector <2 x double> %77, <2 x double> poison, <2 x i32> zeroinitializer
  %79 = fdiv <2 x double> %76, %78
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #40
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #40
  %80 = load <2 x double>, ptr %1, align 8, !tbaa !31
  %81 = fsub <2 x double> %80, %79
  %82 = getelementptr inbounds double, ptr %1, i64 2
  %83 = load double, ptr %82, align 8, !tbaa !31
  %84 = fsub double %83, %75
  %85 = load ptr, ptr %5, align 8, !tbaa !37
  %86 = getelementptr inbounds %struct.LinkCellSt, ptr %85, i64 0, i32 1
  %87 = load i32, ptr %86, align 4, !tbaa !52
  %88 = icmp sgt i32 %87, 0
  br i1 %88, label %89, label %95

89:                                               ; preds = %70
  %90 = getelementptr inbounds %struct.LinkCellSt, ptr %85, i64 0, i32 8
  %91 = load ptr, ptr %90, align 8, !tbaa !54
  %92 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %93 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 6
  %94 = zext i32 %87 to i64
  br label %96

95:                                               ; preds = %111, %70
  ret void

96:                                               ; preds = %111, %89
  %97 = phi i64 [ 0, %89 ], [ %112, %111 ]
  %98 = phi i32 [ 0, %89 ], [ %113, %111 ]
  %99 = getelementptr inbounds i32, ptr %91, i64 %97
  %100 = load i32, ptr %99, align 4, !tbaa !7
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %96
  %103 = zext i32 %98 to i64
  %104 = load ptr, ptr %92, align 8, !tbaa !38
  %105 = getelementptr inbounds %struct.AtomsSt, ptr %104, i64 0, i32 3
  %106 = load ptr, ptr %105, align 8, !tbaa !108
  %107 = load ptr, ptr %93, align 8, !tbaa !30
  %108 = getelementptr inbounds %struct.AtomsSt, ptr %104, i64 0, i32 5
  %109 = load ptr, ptr %108, align 8, !tbaa !109
  %110 = add i32 %100, %98
  br label %115

111:                                              ; preds = %115, %96
  %112 = add nuw nsw i64 %97, 1
  %113 = add i32 %98, 64
  %114 = icmp eq i64 %112, %94
  br i1 %114, label %95, label %96

115:                                              ; preds = %115, %102
  %116 = phi i64 [ %103, %102 ], [ %130, %115 ]
  %117 = getelementptr inbounds i32, ptr %106, i64 %116
  %118 = load i32, ptr %117, align 4, !tbaa !7
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.SpeciesDataSt, ptr %107, i64 %119, i32 2
  %121 = load double, ptr %120, align 8, !tbaa !29
  %122 = getelementptr inbounds [3 x double], ptr %109, i64 %116
  %123 = load <2 x double>, ptr %122, align 8, !tbaa !31
  %124 = insertelement <2 x double> poison, double %121, i64 0
  %125 = shufflevector <2 x double> %124, <2 x double> poison, <2 x i32> zeroinitializer
  %126 = call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %125, <2 x double> %81, <2 x double> %123)
  store <2 x double> %126, ptr %122, align 8, !tbaa !31
  %127 = getelementptr inbounds [3 x double], ptr %109, i64 %116, i64 2
  %128 = load double, ptr %127, align 8, !tbaa !31
  %129 = call double @llvm.fmuladd.f64(double %121, double %84, double %128)
  store double %129, ptr %127, align 8, !tbaa !31
  %130 = add nuw nsw i64 %116, 1
  %131 = trunc i64 %130 to i32
  %132 = icmp eq i32 %110, %131
  br i1 %132, label %111, label %115
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #16

; Function Attrs: nounwind optsize uwtable
define internal void @setTemperature(ptr noundef %0, double noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca [3 x double], align 16
  %5 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !37
  %7 = getelementptr inbounds %struct.LinkCellSt, ptr %6, i64 0, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !52
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %12 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 6
  %13 = fmul double %1, 0x3F1696FE6EF7EB54
  br label %16

14:                                               ; preds = %28, %2
  %15 = fcmp oeq double %1, 0.000000e+00
  br i1 %15, label %134, label %83

16:                                               ; preds = %28, %10
  %17 = phi ptr [ %6, %10 ], [ %29, %28 ]
  %18 = phi i64 [ 0, %10 ], [ %30, %28 ]
  %19 = phi i32 [ 0, %10 ], [ %35, %28 ]
  %20 = getelementptr inbounds %struct.LinkCellSt, ptr %17, i64 0, i32 8
  %21 = load ptr, ptr %20, align 8, !tbaa !54
  %22 = getelementptr inbounds i32, ptr %21, i64 %18
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = icmp sgt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = zext i32 %19 to i64
  %27 = load ptr, ptr %11, align 8, !tbaa !38
  br label %36

28:                                               ; preds = %36, %16
  %29 = phi ptr [ %17, %16 ], [ %77, %36 ]
  %30 = add nuw nsw i64 %18, 1
  %31 = getelementptr inbounds %struct.LinkCellSt, ptr %29, i64 0, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !52
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  %35 = add i32 %19, 64
  br i1 %34, label %16, label %14

36:                                               ; preds = %36, %25
  %37 = phi ptr [ %27, %25 ], [ %71, %36 ]
  %38 = phi i64 [ %26, %25 ], [ %76, %36 ]
  %39 = phi i32 [ 0, %25 ], [ %75, %36 ]
  %40 = getelementptr inbounds %struct.AtomsSt, ptr %37, i64 0, i32 3
  %41 = load ptr, ptr %40, align 8, !tbaa !108
  %42 = getelementptr inbounds i32, ptr %41, i64 %38
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = load ptr, ptr %12, align 8, !tbaa !30
  %45 = sext i32 %43 to i64
  %46 = getelementptr inbounds %struct.SpeciesDataSt, ptr %44, i64 %45, i32 2
  %47 = load double, ptr %46, align 8, !tbaa !29
  %48 = fdiv double %13, %47
  %49 = call double @sqrt(double noundef %48) #39
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40
  %50 = load ptr, ptr %11, align 8, !tbaa !38
  %51 = getelementptr inbounds %struct.AtomsSt, ptr %50, i64 0, i32 2
  %52 = load ptr, ptr %51, align 8, !tbaa !107
  %53 = getelementptr inbounds i32, ptr %52, i64 %38
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = call i64 @mkSeed(i32 noundef %54, i32 noundef 123) #39
  store i64 %55, ptr %3, align 8, !tbaa !121
  %56 = fmul double %47, %49
  %57 = call double @gasdev(ptr noundef nonnull %3) #39
  %58 = fmul double %56, %57
  %59 = load ptr, ptr %11, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.AtomsSt, ptr %59, i64 0, i32 5
  %61 = load ptr, ptr %60, align 8, !tbaa !109
  %62 = getelementptr inbounds [3 x double], ptr %61, i64 %38
  store double %58, ptr %62, align 8, !tbaa !31
  %63 = call double @gasdev(ptr noundef nonnull %3) #39
  %64 = fmul double %56, %63
  %65 = load ptr, ptr %11, align 8, !tbaa !38
  %66 = getelementptr inbounds %struct.AtomsSt, ptr %65, i64 0, i32 5
  %67 = load ptr, ptr %66, align 8, !tbaa !109
  %68 = getelementptr inbounds [3 x double], ptr %67, i64 %38, i64 1
  store double %64, ptr %68, align 8, !tbaa !31
  %69 = call double @gasdev(ptr noundef nonnull %3) #39
  %70 = fmul double %56, %69
  %71 = load ptr, ptr %11, align 8, !tbaa !38
  %72 = getelementptr inbounds %struct.AtomsSt, ptr %71, i64 0, i32 5
  %73 = load ptr, ptr %72, align 8, !tbaa !109
  %74 = getelementptr inbounds [3 x double], ptr %73, i64 %38, i64 2
  store double %70, ptr %74, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40
  %75 = add nuw nsw i32 %39, 1
  %76 = add nuw nsw i64 %38, 1
  %77 = load ptr, ptr %5, align 8, !tbaa !37
  %78 = getelementptr inbounds %struct.LinkCellSt, ptr %77, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  %80 = getelementptr inbounds i32, ptr %79, i64 %18
  %81 = load i32, ptr %80, align 4, !tbaa !7
  %82 = icmp slt i32 %75, %81
  br i1 %82, label %36, label %28

83:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %4) #40
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %4, i8 0, i64 24, i1 false)
  call void @setVcm(ptr noundef nonnull %0, ptr noundef nonnull %4) #42
  call void @kineticEnergy(ptr noundef nonnull %0) #39
  %84 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 8
  %85 = load double, ptr %84, align 8, !tbaa !48
  %86 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %87 = load ptr, ptr %86, align 8, !tbaa !38
  %88 = getelementptr inbounds %struct.AtomsSt, ptr %87, i64 0, i32 1
  %89 = load i32, ptr %88, align 4, !tbaa !43
  %90 = sitofp i32 %89 to double
  %91 = fdiv double %85, %90
  %92 = fdiv double %91, 0x3F1696FE6EF7EB54
  %93 = fdiv double %92, 1.500000e+00
  %94 = fdiv double %1, %93
  %95 = call double @sqrt(double noundef %94) #39
  %96 = load ptr, ptr %5, align 8, !tbaa !37
  %97 = getelementptr inbounds %struct.LinkCellSt, ptr %96, i64 0, i32 1
  %98 = load i32, ptr %97, align 4, !tbaa !52
  %99 = icmp sgt i32 %98, 0
  br i1 %99, label %100, label %106

100:                                              ; preds = %83
  %101 = getelementptr inbounds %struct.LinkCellSt, ptr %96, i64 0, i32 8
  %102 = load ptr, ptr %101, align 8, !tbaa !54
  %103 = zext i32 %98 to i64
  %104 = insertelement <2 x double> poison, double %95, i64 0
  %105 = shufflevector <2 x double> %104, <2 x double> poison, <2 x i32> zeroinitializer
  br label %107

106:                                              ; preds = %119, %83
  call void @kineticEnergy(ptr noundef nonnull %0) #39
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %4) #40
  br label %134

107:                                              ; preds = %119, %100
  %108 = phi i64 [ 0, %100 ], [ %120, %119 ]
  %109 = phi i32 [ 0, %100 ], [ %121, %119 ]
  %110 = getelementptr inbounds i32, ptr %102, i64 %108
  %111 = load i32, ptr %110, align 4, !tbaa !7
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %107
  %114 = zext i32 %109 to i64
  %115 = load ptr, ptr %86, align 8, !tbaa !38
  %116 = getelementptr inbounds %struct.AtomsSt, ptr %115, i64 0, i32 5
  %117 = load ptr, ptr %116, align 8, !tbaa !109
  %118 = add i32 %111, %109
  br label %123

119:                                              ; preds = %123, %107
  %120 = add nuw nsw i64 %108, 1
  %121 = add i32 %109, 64
  %122 = icmp eq i64 %120, %103
  br i1 %122, label %106, label %107

123:                                              ; preds = %123, %113
  %124 = phi i64 [ %114, %113 ], [ %131, %123 ]
  %125 = getelementptr inbounds [3 x double], ptr %117, i64 %124
  %126 = load <2 x double>, ptr %125, align 8, !tbaa !31
  %127 = fmul <2 x double> %105, %126
  store <2 x double> %127, ptr %125, align 8, !tbaa !31
  %128 = getelementptr inbounds [3 x double], ptr %117, i64 %124, i64 2
  %129 = load double, ptr %128, align 8, !tbaa !31
  %130 = fmul double %95, %129
  store double %130, ptr %128, align 8, !tbaa !31
  %131 = add nuw nsw i64 %124, 1
  %132 = trunc i64 %131 to i32
  %133 = icmp eq i32 %118, %132
  br i1 %133, label %119, label %123

134:                                              ; preds = %106, %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @randomDisplacements(ptr nocapture noundef readonly %0, double noundef %1) #0 {
  %3 = alloca i64, align 8
  %4 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %5 = load ptr, ptr %4, align 8, !tbaa !37
  %6 = getelementptr inbounds %struct.LinkCellSt, ptr %5, i64 0, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !52
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %11

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  br label %12

11:                                               ; preds = %24, %2
  ret void

12:                                               ; preds = %24, %9
  %13 = phi ptr [ %5, %9 ], [ %25, %24 ]
  %14 = phi i64 [ 0, %9 ], [ %26, %24 ]
  %15 = phi i32 [ 0, %9 ], [ %31, %24 ]
  %16 = getelementptr inbounds %struct.LinkCellSt, ptr %13, i64 0, i32 8
  %17 = load ptr, ptr %16, align 8, !tbaa !54
  %18 = getelementptr inbounds i32, ptr %17, i64 %14
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = icmp sgt i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %12
  %22 = zext i32 %15 to i64
  %23 = load ptr, ptr %10, align 8, !tbaa !38
  br label %32

24:                                               ; preds = %32, %12
  %25 = phi ptr [ %13, %12 ], [ %67, %32 ]
  %26 = add nuw nsw i64 %14, 1
  %27 = getelementptr inbounds %struct.LinkCellSt, ptr %25, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !52
  %29 = sext i32 %28 to i64
  %30 = icmp slt i64 %26, %29
  %31 = add i32 %15, 64
  br i1 %30, label %12, label %11

32:                                               ; preds = %32, %21
  %33 = phi ptr [ %23, %21 ], [ %59, %32 ]
  %34 = phi i64 [ %22, %21 ], [ %66, %32 ]
  %35 = phi i32 [ 0, %21 ], [ %65, %32 ]
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #40
  %36 = getelementptr inbounds %struct.AtomsSt, ptr %33, i64 0, i32 2
  %37 = load ptr, ptr %36, align 8, !tbaa !107
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  %39 = load i32, ptr %38, align 4, !tbaa !7
  %40 = call i64 @mkSeed(i32 noundef %39, i32 noundef 457) #39
  store i64 %40, ptr %3, align 8, !tbaa !121
  %41 = call double @lcg61(ptr noundef nonnull %3) #39
  %42 = call double @llvm.fmuladd.f64(double %41, double 2.000000e+00, double -1.000000e+00)
  %43 = load ptr, ptr %10, align 8, !tbaa !38
  %44 = getelementptr inbounds %struct.AtomsSt, ptr %43, i64 0, i32 4
  %45 = load ptr, ptr %44, align 8, !tbaa !93
  %46 = getelementptr inbounds [3 x double], ptr %45, i64 %34
  %47 = load double, ptr %46, align 8, !tbaa !31
  %48 = call double @llvm.fmuladd.f64(double %42, double %1, double %47)
  store double %48, ptr %46, align 8, !tbaa !31
  %49 = call double @lcg61(ptr noundef nonnull %3) #39
  %50 = call double @llvm.fmuladd.f64(double %49, double 2.000000e+00, double -1.000000e+00)
  %51 = load ptr, ptr %10, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.AtomsSt, ptr %51, i64 0, i32 4
  %53 = load ptr, ptr %52, align 8, !tbaa !93
  %54 = getelementptr inbounds [3 x double], ptr %53, i64 %34, i64 1
  %55 = load double, ptr %54, align 8, !tbaa !31
  %56 = call double @llvm.fmuladd.f64(double %50, double %1, double %55)
  store double %56, ptr %54, align 8, !tbaa !31
  %57 = call double @lcg61(ptr noundef nonnull %3) #39
  %58 = call double @llvm.fmuladd.f64(double %57, double 2.000000e+00, double -1.000000e+00)
  %59 = load ptr, ptr %10, align 8, !tbaa !38
  %60 = getelementptr inbounds %struct.AtomsSt, ptr %59, i64 0, i32 4
  %61 = load ptr, ptr %60, align 8, !tbaa !93
  %62 = getelementptr inbounds [3 x double], ptr %61, i64 %34, i64 2
  %63 = load double, ptr %62, align 8, !tbaa !31
  %64 = call double @llvm.fmuladd.f64(double %58, double %1, double %63)
  store double %64, ptr %62, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #40
  %65 = add nuw nsw i32 %35, 1
  %66 = add nuw nsw i64 %34, 1
  %67 = load ptr, ptr %4, align 8, !tbaa !37
  %68 = getelementptr inbounds %struct.LinkCellSt, ptr %67, i64 0, i32 8
  %69 = load ptr, ptr %68, align 8, !tbaa !54
  %70 = getelementptr inbounds i32, ptr %69, i64 %14
  %71 = load i32, ptr %70, align 4, !tbaa !7
  %72 = icmp slt i32 %65, %71
  br i1 %72, label %32, label %24
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read) uwtable
define internal noalias ptr @initLinkCells(ptr nocapture noundef readonly %0, double noundef %1) #26 {
  %3 = tail call noalias dereferenceable_or_null(128) ptr @malloc(i64 noundef 128) #41
  br label %30

4:                                                ; preds = %30
  %5 = load i32, ptr %3, align 8, !tbaa !7
  %6 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 1
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 2
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = mul i32 %9, %7
  %11 = mul i32 %10, %5
  %12 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 1
  store i32 %11, ptr %12, align 4, !tbaa !52
  %13 = add nsw i32 %5, 2
  %14 = add i32 %7, 2
  %15 = add i32 %14, %9
  %16 = mul nsw i32 %15, %13
  %17 = add nsw i32 %16, %10
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 2
  store i32 %18, ptr %19, align 8, !tbaa !123
  %20 = add nsw i32 %18, %11
  %21 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 3
  store i32 %20, ptr %21, align 4, !tbaa !84
  %22 = sext i32 %20 to i64
  %23 = shl nsw i64 %22, 2
  %24 = tail call noalias ptr @malloc(i64 noundef %23) #41
  %25 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 8
  store ptr %24, ptr %25, align 8, !tbaa !54
  %26 = icmp sgt i32 %20, 0
  br i1 %26, label %27, label %50

27:                                               ; preds = %4
  %28 = zext i32 %20 to i64
  %29 = shl nuw nsw i64 %28, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %24, i8 0, i64 %29, i1 false), !tbaa !7
  br label %50

30:                                               ; preds = %30, %2
  %31 = phi i64 [ 0, %2 ], [ %48, %30 ]
  %32 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 5, i64 %31
  %33 = load double, ptr %32, align 8, !tbaa !31
  %34 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 4, i64 %31
  store double %33, ptr %34, align 8, !tbaa !31
  %35 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 6, i64 %31
  %36 = load double, ptr %35, align 8, !tbaa !31
  %37 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 5, i64 %31
  store double %36, ptr %37, align 8, !tbaa !31
  %38 = getelementptr inbounds %struct.DomainSt, ptr %0, i64 0, i32 7, i64 %31
  %39 = load double, ptr %38, align 8, !tbaa !31
  %40 = fdiv double %39, %1
  %41 = fptosi double %40 to i32
  %42 = getelementptr inbounds [3 x i32], ptr %3, i64 0, i64 %31
  store i32 %41, ptr %42, align 4, !tbaa !7
  %43 = sitofp i32 %41 to double
  %44 = fdiv double %39, %43
  %45 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 6, i64 %31
  store double %44, ptr %45, align 8, !tbaa !31
  %46 = fdiv double 1.000000e+00, %44
  %47 = getelementptr inbounds %struct.LinkCellSt, ptr %3, i64 0, i32 7, i64 %31
  store double %46, ptr %47, align 8, !tbaa !31
  %48 = add nuw nsw i64 %31, 1
  %49 = icmp eq i64 %48, 3
  br i1 %49, label %4, label %30

50:                                               ; preds = %27, %4
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @destroyLinkCells(ptr noundef %0) #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %10, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = getelementptr inbounds %struct.LinkCellSt, ptr %4, i64 0, i32 8
  %8 = load ptr, ptr %7, align 8, !tbaa !54
  tail call void @free(ptr noundef %8) #39
  %9 = load ptr, ptr %0, align 8, !tbaa !11
  tail call void @free(ptr noundef %9) #39
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %10

10:                                               ; preds = %6, %3, %1
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal i32 @getNeighborBoxes(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef writeonly %2) #27 {
  %4 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp sgt i32 %5, %1
  br i1 %6, label %7, label %15

7:                                                ; preds = %3
  %8 = load i32, ptr %0, align 4, !tbaa !7
  %9 = srem i32 %1, %8
  %10 = sdiv i32 %1, %8
  %11 = getelementptr inbounds i32, ptr %0, i64 1
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = srem i32 %10, %12
  %14 = sdiv i32 %10, %12
  br label %72

15:                                               ; preds = %3
  %16 = sub nsw i32 %1, %5
  %17 = getelementptr inbounds i32, ptr %0, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = shl nsw i32 %18, 1
  %20 = getelementptr inbounds i32, ptr %0, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = mul nsw i32 %19, %21
  %23 = icmp slt i32 %16, %22
  br i1 %23, label %24, label %37

24:                                               ; preds = %15
  %25 = mul nsw i32 %21, %18
  %26 = icmp slt i32 %16, %25
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = sub nsw i32 %16, %25
  %29 = load i32, ptr %0, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  br label %31

31:                                               ; preds = %27, %24
  %32 = phi i32 [ %30, %27 ], [ 0, %24 ]
  %33 = phi i32 [ %28, %27 ], [ %16, %24 ]
  %34 = srem i32 %33, %18
  %35 = add nsw i32 %34, 1
  %36 = sdiv i32 %33, %18
  br label %66

37:                                               ; preds = %15
  %38 = shl nsw i32 %21, 1
  %39 = load i32, ptr %0, align 4, !tbaa !7
  %40 = add i32 %18, 2
  %41 = add i32 %39, %40
  %42 = mul nsw i32 %41, %38
  %43 = icmp slt i32 %16, %42
  br i1 %43, label %44, label %56

44:                                               ; preds = %37
  %45 = mul nsw i32 %38, %18
  %46 = sub nsw i32 %16, %45
  %47 = add nsw i32 %39, 2
  %48 = mul nsw i32 %47, %21
  %49 = icmp slt i32 %46, %48
  %50 = add nsw i32 %18, 1
  %51 = select i1 %49, i32 0, i32 %50
  %52 = select i1 %49, i32 0, i32 %48
  %53 = sub nsw i32 %46, %52
  %54 = srem i32 %53, %47
  %55 = sdiv i32 %53, %47
  br label %66

56:                                               ; preds = %37
  %57 = sub nsw i32 %16, %42
  %58 = add nsw i32 %39, 2
  %59 = mul nsw i32 %58, %40
  %60 = icmp slt i32 %57, %59
  %61 = select i1 %60, i32 0, i32 %59
  %62 = sub nsw i32 %57, %61
  %63 = srem i32 %62, %58
  %64 = sdiv i32 %62, %58
  %65 = select i1 %60, i32 -1, i32 %21
  br label %66

66:                                               ; preds = %56, %44, %31
  %67 = phi i32 [ %32, %31 ], [ %54, %44 ], [ %63, %56 ]
  %68 = phi i32 [ %35, %31 ], [ %51, %44 ], [ %64, %56 ]
  %69 = phi i32 [ %36, %31 ], [ %55, %44 ], [ %65, %56 ]
  %70 = add nsw i32 %67, -1
  %71 = add nsw i32 %68, -1
  br label %72

72:                                               ; preds = %66, %7
  %73 = phi i32 [ %9, %7 ], [ %70, %66 ]
  %74 = phi i32 [ %13, %7 ], [ %71, %66 ]
  %75 = phi i32 [ %14, %7 ], [ %69, %66 ]
  %76 = add nsw i32 %73, -1
  %77 = add nsw i32 %74, -1
  %78 = add nsw i32 %75, -1
  br label %81

79:                                               ; preds = %84
  %.lcssa.lcssa.lcssa = phi i64 [ %.lcssa.lcssa, %84 ]
  %80 = trunc i64 %.lcssa.lcssa.lcssa to i32
  ret i32 %80

81:                                               ; preds = %84, %72
  %82 = phi i32 [ %76, %72 ], [ %85, %84 ]
  %83 = phi i64 [ 0, %72 ], [ %.lcssa.lcssa, %84 ]
  br label %87

84:                                               ; preds = %92
  %.lcssa.lcssa = phi i64 [ %.lcssa, %92 ]
  %85 = add nsw i32 %82, 1
  %86 = icmp sgt i32 %82, %73
  br i1 %86, label %79, label %81

87:                                               ; preds = %92, %81
  %88 = phi i32 [ %77, %81 ], [ %93, %92 ]
  %89 = phi i64 [ %83, %81 ], [ %.lcssa, %92 ]
  %90 = shl i64 %89, 32
  %91 = ashr exact i64 %90, 32
  br label %95

92:                                               ; preds = %95
  %.lcssa = phi i64 [ %99, %95 ]
  %93 = add nsw i32 %88, 1
  %94 = icmp sgt i32 %88, %74
  br i1 %94, label %84, label %87

95:                                               ; preds = %95, %87
  %96 = phi i64 [ %91, %87 ], [ %99, %95 ]
  %97 = phi i32 [ %78, %87 ], [ %101, %95 ]
  %98 = tail call i32 @getBoxFromTuple(ptr noundef %0, i32 noundef %82, i32 noundef %88, i32 noundef %97) #42
  %99 = add i64 %96, 1
  %100 = getelementptr inbounds i32, ptr %2, i64 %96
  store i32 %98, ptr %100, align 4, !tbaa !7
  %101 = add nsw i32 %97, 1
  %102 = icmp sgt i32 %97, %75
  br i1 %102, label %92, label %95
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @getBoxFromTuple(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #17 {
  %5 = getelementptr inbounds i32, ptr %0, i64 2
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = icmp eq i32 %6, %3
  br i1 %7, label %8, label %25

8:                                                ; preds = %4
  %9 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = shl nsw i32 %3, 1
  %12 = getelementptr inbounds i32, ptr %0, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = mul nsw i32 %13, %11
  %15 = load i32, ptr %0, align 4, !tbaa !7
  %16 = add nsw i32 %15, 2
  %17 = add i32 %2, 3
  %18 = add i32 %17, %11
  %19 = add i32 %18, %13
  %20 = mul i32 %19, %16
  %21 = add i32 %1, 1
  %22 = add i32 %21, %10
  %23 = add i32 %22, %14
  %24 = add i32 %23, %20
  br label %97

25:                                               ; preds = %4
  %26 = icmp eq i32 %3, -1
  br i1 %26, label %27, label %43

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !52
  %30 = shl nsw i32 %6, 1
  %31 = getelementptr inbounds i32, ptr %0, i64 1
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = mul nsw i32 %32, %30
  %34 = load i32, ptr %0, align 4, !tbaa !7
  %35 = add nsw i32 %34, 2
  %36 = add nsw i32 %2, 1
  %37 = add i32 %36, %30
  %38 = mul i32 %35, %37
  %39 = add i32 %1, 1
  %40 = add i32 %39, %29
  %41 = add i32 %40, %33
  %42 = add i32 %41, %38
  br label %97

43:                                               ; preds = %25
  %44 = getelementptr inbounds i32, ptr %0, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = icmp eq i32 %45, %2
  br i1 %46, label %47, label %60

47:                                               ; preds = %43
  %48 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %49 = load i32, ptr %48, align 4, !tbaa !52
  %50 = shl nsw i32 %6, 1
  %51 = mul nsw i32 %50, %2
  %52 = load i32, ptr %0, align 4, !tbaa !7
  %53 = add nsw i32 %52, 2
  %54 = add i32 %6, %3
  %55 = mul i32 %53, %54
  %56 = add i32 %1, 1
  %57 = add i32 %56, %51
  %58 = add i32 %57, %49
  %59 = add i32 %58, %55
  br label %97

60:                                               ; preds = %43
  %61 = icmp eq i32 %2, -1
  br i1 %61, label %62, label %74

62:                                               ; preds = %60
  %63 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %64 = load i32, ptr %63, align 4, !tbaa !52
  %65 = shl nsw i32 %6, 1
  %66 = mul nsw i32 %65, %45
  %67 = load i32, ptr %0, align 4, !tbaa !7
  %68 = add nsw i32 %67, 2
  %69 = mul nsw i32 %68, %3
  %70 = add i32 %1, 1
  %71 = add i32 %70, %66
  %72 = add i32 %71, %64
  %73 = add i32 %72, %69
  br label %97

74:                                               ; preds = %60
  %75 = load i32, ptr %0, align 4, !tbaa !7
  %76 = icmp eq i32 %75, %1
  br i1 %76, label %77, label %84

77:                                               ; preds = %74
  %78 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !52
  %80 = add i32 %6, %3
  %81 = mul i32 %45, %80
  %82 = add i32 %81, %2
  %83 = add i32 %82, %79
  br label %97

84:                                               ; preds = %74
  %85 = icmp eq i32 %1, -1
  br i1 %85, label %86, label %92

86:                                               ; preds = %84
  %87 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %88 = load i32, ptr %87, align 4, !tbaa !52
  %89 = mul nsw i32 %45, %3
  %90 = add i32 %89, %2
  %91 = add i32 %90, %88
  br label %97

92:                                               ; preds = %84
  %93 = mul i32 %45, %3
  %94 = add i32 %93, %2
  %95 = mul i32 %94, %75
  %96 = add i32 %95, %1
  br label %97

97:                                               ; preds = %92, %86, %77, %62, %47, %27, %8
  %98 = phi i32 [ %24, %8 ], [ %42, %27 ], [ %59, %47 ], [ %73, %62 ], [ %83, %77 ], [ %91, %86 ], [ %96, %92 ]
  ret i32 %98
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @putAtomInBox(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, double noundef %7, double noundef %8, double noundef %9) #28 {
  %11 = alloca [3 x double], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %11) #40
  store double %4, ptr %11, align 16, !tbaa !31
  %12 = getelementptr inbounds double, ptr %11, i64 1
  store double %5, ptr %12, align 8, !tbaa !31
  %13 = getelementptr inbounds double, ptr %11, i64 2
  store double %6, ptr %13, align 16, !tbaa !31
  %14 = call fastcc i32 @getBoxFromCoord(ptr noundef %0, ptr noundef nonnull %11) #42
  %15 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 8
  %16 = load ptr, ptr %15, align 8, !tbaa !54
  %17 = sext i32 %14 to i64
  %18 = getelementptr inbounds i32, ptr %16, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = icmp slt i32 %14, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %10
  %24 = load i32, ptr %1, align 8, !tbaa !46
  %25 = add nsw i32 %24, 1
  store i32 %25, ptr %1, align 8, !tbaa !46
  %26 = load i32, ptr %18, align 4, !tbaa !7
  br label %27

27:                                               ; preds = %23, %10
  %28 = phi i32 [ %26, %23 ], [ %19, %10 ]
  %29 = shl nsw i32 %14, 6
  %30 = add nsw i32 %19, %29
  %31 = add nsw i32 %28, 1
  store i32 %31, ptr %18, align 4, !tbaa !7
  %32 = getelementptr inbounds %struct.AtomsSt, ptr %1, i64 0, i32 2
  %33 = load ptr, ptr %32, align 8, !tbaa !107
  %34 = sext i32 %30 to i64
  %35 = getelementptr inbounds i32, ptr %33, i64 %34
  store i32 %2, ptr %35, align 4, !tbaa !7
  %36 = getelementptr inbounds %struct.AtomsSt, ptr %1, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = getelementptr inbounds i32, ptr %37, i64 %34
  store i32 %3, ptr %38, align 4, !tbaa !7
  %39 = getelementptr inbounds %struct.AtomsSt, ptr %1, i64 0, i32 4
  %40 = load ptr, ptr %39, align 8, !tbaa !93
  %41 = getelementptr inbounds [3 x double], ptr %40, i64 %34
  store double %4, ptr %41, align 8, !tbaa !31
  %42 = getelementptr inbounds [3 x double], ptr %40, i64 %34, i64 1
  store double %5, ptr %42, align 8, !tbaa !31
  %43 = getelementptr inbounds [3 x double], ptr %40, i64 %34, i64 2
  store double %6, ptr %43, align 8, !tbaa !31
  %44 = getelementptr inbounds %struct.AtomsSt, ptr %1, i64 0, i32 5
  %45 = load ptr, ptr %44, align 8, !tbaa !109
  %46 = getelementptr inbounds [3 x double], ptr %45, i64 %34
  store double %7, ptr %46, align 8, !tbaa !31
  %47 = getelementptr inbounds [3 x double], ptr %45, i64 %34, i64 1
  store double %8, ptr %47, align 8, !tbaa !31
  %48 = getelementptr inbounds [3 x double], ptr %45, i64 %34, i64 2
  store double %9, ptr %48, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %11) #40
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal fastcc i32 @getBoxFromCoord(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) unnamed_addr #29 {
  %3 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 5
  %4 = load double, ptr %1, align 8, !tbaa !31
  %5 = getelementptr inbounds double, ptr %1, i64 1
  %6 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 4, i64 1
  %7 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 7, i64 1
  %8 = load <2 x double>, ptr %5, align 8, !tbaa !31
  %9 = load <2 x double>, ptr %6, align 8, !tbaa !31
  %10 = load <2 x double>, ptr %7, align 8, !tbaa !31
  %11 = load double, ptr %3, align 8, !tbaa !31
  %12 = fcmp olt double %4, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 7
  %15 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 4
  %16 = load double, ptr %15, align 8, !tbaa !31
  %17 = fsub double %4, %16
  %18 = load double, ptr %14, align 8, !tbaa !31
  %19 = fmul double %17, %18
  %20 = tail call double @llvm.floor.f64(double %19)
  %21 = fptosi double %20 to i32
  %22 = load i32, ptr %0, align 4, !tbaa !7
  %23 = icmp eq i32 %22, %21
  %24 = add nsw i32 %22, -1
  %25 = select i1 %23, i32 %24, i32 %21
  br label %28

26:                                               ; preds = %2
  %27 = load i32, ptr %0, align 4, !tbaa !7
  br label %28

28:                                               ; preds = %26, %13
  %29 = phi i32 [ %27, %26 ], [ %25, %13 ]
  %30 = fsub <2 x double> %8, %9
  %31 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 5, i64 1
  %32 = load double, ptr %31, align 8, !tbaa !31
  %33 = extractelement <2 x double> %8, i64 0
  %34 = fcmp olt double %33, %32
  %35 = getelementptr inbounds i32, ptr %0, i64 1
  %36 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 5, i64 2
  %37 = load double, ptr %36, align 8, !tbaa !31
  %38 = extractelement <2 x double> %8, i64 1
  %39 = fcmp olt double %38, %37
  %40 = fmul <2 x double> %30, %10
  %41 = tail call <2 x double> @llvm.floor.v2f64(<2 x double> %40)
  %42 = fptosi <2 x double> %41 to <2 x i32>
  %43 = load <2 x i32>, ptr %35, align 4, !tbaa !7
  %44 = extractelement <2 x i32> %43, i64 0
  %45 = add nsw i32 %44, -1
  %46 = icmp eq <2 x i32> %43, %42
  %47 = extractelement <2 x i1> %46, i64 0
  %48 = extractelement <2 x i32> %42, i64 0
  %49 = select i1 %47, i32 %45, i32 %48
  %50 = select i1 %34, i32 %49, i32 %44
  %51 = extractelement <2 x i32> %43, i64 1
  %52 = add nsw i32 %51, -1
  %53 = extractelement <2 x i1> %46, i64 1
  %54 = extractelement <2 x i32> %42, i64 1
  %55 = select i1 %53, i32 %52, i32 %54
  %56 = select i1 %39, i32 %55, i32 %51
  %57 = tail call i32 @getBoxFromTuple(ptr noundef nonnull %0, i32 noundef %29, i32 noundef %50, i32 noundef %56) #42
  ret i32 %57
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.floor.v2f64(<2 x double>) #16

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal void @moveAtom(ptr nocapture noundef readonly %0, ptr nocapture noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #28 {
  %6 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 8
  %7 = load ptr, ptr %6, align 8, !tbaa !54
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds i32, ptr %7, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  tail call fastcc void @copyAtom(ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %10, i32 noundef %4) #42
  %11 = load ptr, ptr %6, align 8, !tbaa !54
  %12 = getelementptr inbounds i32, ptr %11, i64 %8
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = add nsw i32 %13, 1
  store i32 %14, ptr %12, align 4, !tbaa !7
  %15 = sext i32 %3 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = add nsw i32 %17, -1
  store i32 %18, ptr %16, align 4, !tbaa !7
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  tail call fastcc void @copyAtom(ptr noundef %1, i32 noundef %18, i32 noundef %3, i32 noundef %2, i32 noundef %3) #42
  br label %21

21:                                               ; preds = %20, %5
  %22 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !52
  %24 = icmp slt i32 %23, %4
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, ptr %1, align 8, !tbaa !46
  %27 = add nsw i32 %26, -1
  store i32 %27, ptr %1, align 8, !tbaa !46
  br label %28

28:                                               ; preds = %25, %21
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @copyAtom(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) unnamed_addr #28 {
  %6 = shl nsw i32 %2, 6
  %7 = add nsw i32 %6, %1
  %8 = shl nsw i32 %4, 6
  %9 = add nsw i32 %8, %3
  %10 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !107
  %12 = sext i32 %7 to i64
  %13 = getelementptr inbounds i32, ptr %11, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = sext i32 %9 to i64
  %16 = getelementptr inbounds i32, ptr %11, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !7
  %17 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 3
  %18 = load ptr, ptr %17, align 8, !tbaa !108
  %19 = getelementptr inbounds i32, ptr %18, i64 %12
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = getelementptr inbounds i32, ptr %18, i64 %15
  store i32 %20, ptr %21, align 4, !tbaa !7
  %22 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 4
  %23 = load ptr, ptr %22, align 8, !tbaa !93
  %24 = getelementptr inbounds [3 x double], ptr %23, i64 %15
  %25 = getelementptr inbounds [3 x double], ptr %23, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull align 8 dereferenceable(24) %25, i64 24, i1 false)
  %26 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 5
  %27 = load ptr, ptr %26, align 8, !tbaa !109
  %28 = getelementptr inbounds [3 x double], ptr %27, i64 %15
  %29 = getelementptr inbounds [3 x double], ptr %27, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %28, ptr noundef nonnull align 8 dereferenceable(24) %29, i64 24, i1 false)
  %30 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 6
  %31 = load ptr, ptr %30, align 8, !tbaa !91
  %32 = getelementptr inbounds [3 x double], ptr %31, i64 %15
  %33 = getelementptr inbounds [3 x double], ptr %31, i64 %12
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %32, ptr noundef nonnull align 8 dereferenceable(24) %33, i64 24, i1 false)
  %34 = getelementptr inbounds %struct.AtomsSt, ptr %0, i64 0, i32 7
  %35 = load ptr, ptr %34, align 8, !tbaa !92
  %36 = getelementptr inbounds double, ptr %35, i64 %15
  %37 = getelementptr inbounds double, ptr %35, i64 %12
  %38 = load i64, ptr %37, align 8
  store i64 %38, ptr %36, align 8
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @updateLinkCells(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #30 {
  %3 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 4, !tbaa !52
  %5 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 3
  %6 = load i32, ptr %5, align 4, !tbaa !84
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 8
  %10 = load ptr, ptr %9, align 8, !tbaa !54
  %11 = sext i32 %4 to i64
  br label %12

12:                                               ; preds = %12, %8
  %13 = phi i64 [ %11, %8 ], [ %15, %12 ]
  %14 = getelementptr inbounds i32, ptr %10, i64 %13
  store i32 0, ptr %14, align 4, !tbaa !7
  %15 = add nsw i64 %13, 1
  %16 = load i32, ptr %5, align 4, !tbaa !84
  %17 = sext i32 %16 to i64
  %18 = icmp slt i64 %15, %17
  br i1 %18, label %12, label %19

19:                                               ; preds = %12
  %20 = load i32, ptr %3, align 4, !tbaa !52
  br label %21

21:                                               ; preds = %19, %2
  %22 = phi i32 [ %20, %19 ], [ %4, %2 ]
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %21
  %25 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 8
  %26 = getelementptr inbounds %struct.AtomsSt, ptr %1, i64 0, i32 4
  %27 = load ptr, ptr %25, align 8, !tbaa !54
  br label %29

28:                                               ; preds = %61, %21
  ret void

29:                                               ; preds = %61, %24
  %30 = phi i32 [ %22, %24 ], [ %62, %61 ]
  %31 = phi ptr [ %27, %24 ], [ %63, %61 ]
  %32 = phi ptr [ %27, %24 ], [ %64, %61 ]
  %33 = phi i64 [ 0, %24 ], [ %65, %61 ]
  %34 = trunc i64 %33 to i32
  %35 = shl nsw i32 %34, 6
  %36 = getelementptr inbounds i32, ptr %32, i64 %33
  %37 = load i32, ptr %36, align 4, !tbaa !7
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %61

39:                                               ; preds = %53, %29
  %40 = phi ptr [ %54, %53 ], [ %31, %29 ]
  %41 = phi i32 [ %55, %53 ], [ 0, %29 ]
  %42 = load ptr, ptr %26, align 8, !tbaa !93
  %43 = add nsw i32 %41, %35
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [3 x double], ptr %42, i64 %44
  %46 = tail call fastcc i32 @getBoxFromCoord(ptr noundef nonnull %0, ptr noundef %45) #42
  %47 = zext i32 %46 to i64
  %48 = icmp eq i64 %33, %47
  br i1 %48, label %51, label %49

49:                                               ; preds = %39
  tail call void @moveAtom(ptr noundef %0, ptr noundef nonnull %1, i32 noundef %41, i32 noundef %34, i32 noundef %46) #42
  %50 = load ptr, ptr %25, align 8, !tbaa !54
  br label %53

51:                                               ; preds = %39
  %52 = add nsw i32 %41, 1
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi ptr [ %50, %49 ], [ %40, %51 ]
  %55 = phi i32 [ %41, %49 ], [ %52, %51 ]
  %56 = getelementptr inbounds i32, ptr %54, i64 %33
  %57 = load i32, ptr %56, align 4, !tbaa !7
  %58 = icmp slt i32 %55, %57
  br i1 %58, label %39, label %59

59:                                               ; preds = %53
  %.lcssa = phi ptr [ %54, %53 ]
  %60 = load i32, ptr %3, align 4, !tbaa !52
  br label %61

61:                                               ; preds = %59, %29
  %62 = phi i32 [ %60, %59 ], [ %30, %29 ]
  %63 = phi ptr [ %.lcssa, %59 ], [ %31, %29 ]
  %64 = phi ptr [ %.lcssa, %59 ], [ %32, %29 ]
  %65 = add nuw nsw i64 %33, 1
  %66 = sext i32 %62 to i64
  %67 = icmp slt i64 %65, %66
  br i1 %67, label %29, label %28
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @maxOccupancy(ptr nocapture noundef readonly %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %2) #40
  store i32 0, ptr %2, align 4, !tbaa !7
  %4 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 4, !tbaa !52
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.LinkCellSt, ptr %0, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = zext i32 %5 to i64
  br label %13

11:                                               ; preds = %13, %1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #40
  tail call void @profileStart(i32 noundef 10) #39
  call void @maxIntParallel(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 1) #39
  call void @profileStop(i32 noundef 10) #39
  %12 = load i32, ptr %3, align 4, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %2) #40
  ret i32 %12

13:                                               ; preds = %13, %7
  %14 = phi i64 [ 0, %7 ], [ %19, %13 ]
  %15 = phi i32 [ 0, %7 ], [ %18, %13 ]
  %16 = getelementptr inbounds i32, ptr %9, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = tail call i32 @llvm.smax.i32(i32 %15, i32 %17)
  store i32 %18, ptr %2, align 4, !tbaa !7
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, %10
  br i1 %20, label %11, label %13
}

; Function Attrs: mustprogress nounwind optsize willreturn uwtable
define internal void @ljDestroy(ptr noundef %0) #19 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %7, label %3

3:                                                ; preds = %1
  %4 = load ptr, ptr %0, align 8, !tbaa !11
  %5 = icmp eq ptr %4, null
  br i1 %5, label %7, label %6

6:                                                ; preds = %3
  tail call void @free(ptr noundef nonnull %4) #39
  store ptr null, ptr %0, align 8, !tbaa !11
  br label %7

7:                                                ; preds = %6, %3, %1
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable
define internal noalias ptr @initLjPot() #31 {
  %1 = tail call noalias dereferenceable_or_null(80) ptr @malloc(i64 noundef 80) #41
  %2 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 6
  store ptr @ljForce, ptr %2, align 8, !tbaa !124
  %3 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 7
  store ptr @ljPrint, ptr %3, align 8, !tbaa !126
  %4 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 8
  store ptr @ljDestroy, ptr %4, align 8, !tbaa !127
  %5 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 9
  store <2 x double> <double 2.315000e+00, double 1.670000e-01>, ptr %5, align 8, !tbaa !31
  %6 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 2
  store double 3.615000e+00, ptr %6, align 8, !tbaa !128
  %7 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 3
  store i32 4408134, ptr %7, align 1
  store <2 x double> <double 5.787500e+00, double 0x40B9BA7E39DCDE3E>, ptr %1, align 8, !tbaa !31
  %8 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 4
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(3) %8, ptr noundef nonnull align 1 dereferenceable(3) @.str.1.90, i64 3, i1 false) #39
  %9 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 5
  store i32 29, ptr %9, align 4, !tbaa !129
  ret ptr %1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @ljForce(ptr nocapture noundef %0) #0 {
  %2 = alloca [27 x i32], align 16
  %3 = alloca [3 x double], align 16
  %4 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 9
  %5 = load ptr, ptr %4, align 8, !tbaa !20
  %6 = getelementptr inbounds %struct.LjPotentialSt, ptr %5, i64 0, i32 9
  %7 = load double, ptr %6, align 8, !tbaa !130
  %8 = getelementptr inbounds %struct.LjPotentialSt, ptr %5, i64 0, i32 10
  %9 = load double, ptr %8, align 8, !tbaa !131
  %10 = load double, ptr %5, align 8, !tbaa !132
  %11 = fmul double %10, %10
  %12 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 7
  store double 0.000000e+00, ptr %12, align 8, !tbaa !47
  %13 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %14 = load ptr, ptr %13, align 8, !tbaa !37
  %15 = getelementptr inbounds %struct.LinkCellSt, ptr %14, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !84
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %18, label %26

18:                                               ; preds = %1
  %19 = shl i32 %16, 6
  %20 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %21 = tail call i32 @llvm.smax.i32(i32 %19, i32 1)
  %22 = zext i32 %21 to i64
  %23 = load ptr, ptr %20, align 8, !tbaa !38
  br label %45

24:                                               ; preds = %45
  %25 = load ptr, ptr %13, align 8, !tbaa !37
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi ptr [ %25, %24 ], [ %14, %1 ]
  %28 = fmul double %7, %7
  %29 = fmul double %7, %28
  %30 = fmul double %7, %29
  %31 = fmul double %7, %30
  %32 = fmul double %7, %31
  call void @llvm.lifetime.start.p0(i64 108, ptr nonnull %2) #40
  %33 = getelementptr inbounds %struct.LinkCellSt, ptr %27, i64 0, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !52
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %57

36:                                               ; preds = %26
  %37 = fmul double %11, %11
  %38 = fmul double %11, %37
  %39 = fdiv double %32, %38
  %40 = fadd double %39, -1.000000e+00
  %41 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %42 = fneg double %39
  %43 = fmul double %40, %42
  %44 = fmul double %9, -4.000000e+00
  br label %61

45:                                               ; preds = %45, %18
  %46 = phi ptr [ %23, %18 ], [ %51, %45 ]
  %47 = phi i64 [ 0, %18 ], [ %55, %45 ]
  %48 = getelementptr inbounds %struct.AtomsSt, ptr %46, i64 0, i32 6
  %49 = load ptr, ptr %48, align 8, !tbaa !91
  %50 = getelementptr inbounds [3 x double], ptr %49, i64 %47
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %50, i8 0, i64 24, i1 false)
  %51 = load ptr, ptr %20, align 8, !tbaa !38
  %52 = getelementptr inbounds %struct.AtomsSt, ptr %51, i64 0, i32 7
  %53 = load ptr, ptr %52, align 8, !tbaa !92
  %54 = getelementptr inbounds double, ptr %53, i64 %47
  store double 0.000000e+00, ptr %54, align 8, !tbaa !31
  %55 = add nuw nsw i64 %47, 1
  %56 = icmp eq i64 %55, %22
  br i1 %56, label %24, label %45

57:                                               ; preds = %186, %26
  %58 = phi double [ 0.000000e+00, %26 ], [ %188, %186 ]
  %59 = fmul double %58, 4.000000e+00
  %60 = fmul double %9, %59
  store double %60, ptr %12, align 8, !tbaa !47
  call void @llvm.lifetime.end.p0(i64 108, ptr nonnull %2) #40
  ret i32 0

61:                                               ; preds = %186, %36
  %62 = phi ptr [ %27, %36 ], [ %187, %186 ]
  %63 = phi i64 [ 0, %36 ], [ %189, %186 ]
  %64 = phi i32 [ 0, %36 ], [ %194, %186 ]
  %65 = phi double [ 0.000000e+00, %36 ], [ %188, %186 ]
  %66 = zext i32 %64 to i64
  %67 = getelementptr inbounds %struct.LinkCellSt, ptr %62, i64 0, i32 8
  %68 = load ptr, ptr %67, align 8, !tbaa !54
  %69 = getelementptr inbounds i32, ptr %68, i64 %63
  %70 = load i32, ptr %69, align 4, !tbaa !7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %186, label %72

72:                                               ; preds = %61
  %73 = trunc i64 %63 to i32
  %74 = call i32 @getNeighborBoxes(ptr noundef nonnull %62, i32 noundef %73, ptr noundef nonnull %2) #39
  %75 = icmp sgt i32 %74, 0
  %76 = load ptr, ptr %13, align 8, !tbaa !37
  br i1 %75, label %77, label %186

77:                                               ; preds = %72
  %78 = getelementptr inbounds %struct.LinkCellSt, ptr %76, i64 0, i32 8
  %79 = load ptr, ptr %78, align 8, !tbaa !54
  %80 = icmp slt i32 %70, 1
  %81 = getelementptr inbounds %struct.LinkCellSt, ptr %76, i64 0, i32 1
  %82 = add i32 %70, %64
  %83 = zext i32 %74 to i64
  br label %84

84:                                               ; preds = %182, %77
  %85 = phi i64 [ 0, %77 ], [ %184, %182 ]
  %86 = phi double [ %65, %77 ], [ %183, %182 ]
  %87 = getelementptr inbounds [27 x i32], ptr %2, i64 0, i64 %85
  %88 = load i32, ptr %87, align 4, !tbaa !7
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds i32, ptr %79, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = icmp eq i32 %91, 0
  %93 = or i1 %92, %80
  br i1 %93, label %182, label %94

94:                                               ; preds = %84
  %95 = load ptr, ptr %41, align 8, !tbaa !38
  %96 = getelementptr inbounds %struct.AtomsSt, ptr %95, i64 0, i32 2
  %97 = load ptr, ptr %96, align 8, !tbaa !107
  %98 = shl i32 %88, 6
  %99 = icmp sgt i32 %91, 0
  %100 = getelementptr inbounds %struct.AtomsSt, ptr %95, i64 0, i32 4
  %101 = getelementptr inbounds %struct.AtomsSt, ptr %95, i64 0, i32 7
  %102 = getelementptr inbounds %struct.AtomsSt, ptr %95, i64 0, i32 6
  %103 = sext i32 %98 to i64
  br label %104

104:                                              ; preds = %112, %94
  %105 = phi i64 [ %66, %94 ], [ %114, %112 ]
  %106 = phi double [ %86, %94 ], [ %113, %112 ]
  %107 = getelementptr inbounds i32, ptr %97, i64 %105
  %108 = load i32, ptr %107, align 4, !tbaa !7
  br i1 %99, label %109, label %112

109:                                              ; preds = %104
  %110 = load i32, ptr %81, align 4, !tbaa !52
  %111 = icmp slt i32 %88, %110
  br label %117

112:                                              ; preds = %177, %104
  %113 = phi double [ %106, %104 ], [ %178, %177 ]
  %114 = add nuw nsw i64 %105, 1
  %115 = trunc i64 %114 to i32
  %116 = icmp eq i32 %82, %115
  br i1 %116, label %182, label %104

117:                                              ; preds = %177, %109
  %118 = phi i64 [ %103, %109 ], [ %180, %177 ]
  %119 = phi double [ %106, %109 ], [ %178, %177 ]
  %120 = phi i32 [ 0, %109 ], [ %179, %177 ]
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #40
  br i1 %111, label %121, label %125

121:                                              ; preds = %117
  %122 = getelementptr inbounds i32, ptr %97, i64 %118
  %123 = load i32, ptr %122, align 4, !tbaa !7
  %124 = icmp sgt i32 %123, %108
  br i1 %124, label %125, label %177

125:                                              ; preds = %121, %117
  %126 = load ptr, ptr %100, align 8, !tbaa !93
  br label %129

127:                                              ; preds = %129
  %.lcssa = phi double [ %138, %129 ]
  %128 = fcmp ogt double %.lcssa, %11
  br i1 %128, label %177, label %141

129:                                              ; preds = %129, %125
  %130 = phi i64 [ 0, %125 ], [ %139, %129 ]
  %131 = phi double [ 0.000000e+00, %125 ], [ %138, %129 ]
  %132 = getelementptr inbounds [3 x double], ptr %126, i64 %105, i64 %130
  %133 = load double, ptr %132, align 8, !tbaa !31
  %134 = getelementptr inbounds [3 x double], ptr %126, i64 %118, i64 %130
  %135 = load double, ptr %134, align 8, !tbaa !31
  %136 = fsub double %133, %135
  %137 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %130
  store double %136, ptr %137, align 8, !tbaa !31
  %138 = call double @llvm.fmuladd.f64(double %136, double %136, double %131)
  %139 = add nuw nsw i64 %130, 1
  %140 = icmp eq i64 %139, 3
  br i1 %140, label %127, label %129

141:                                              ; preds = %127
  %142 = fdiv double 1.000000e+00, %.lcssa
  %143 = fmul double %142, %142
  %144 = fmul double %142, %143
  %145 = fmul double %32, %144
  %146 = fadd double %145, -1.000000e+00
  %147 = call double @llvm.fmuladd.f64(double %145, double %146, double %43)
  %148 = load ptr, ptr %101, align 8, !tbaa !92
  %149 = getelementptr inbounds double, ptr %148, i64 %105
  %150 = load double, ptr %149, align 8, !tbaa !31
  %151 = call double @llvm.fmuladd.f64(double %147, double 5.000000e-01, double %150)
  store double %151, ptr %149, align 8, !tbaa !31
  %152 = getelementptr inbounds double, ptr %148, i64 %118
  %153 = load double, ptr %152, align 8, !tbaa !31
  %154 = call double @llvm.fmuladd.f64(double %147, double 5.000000e-01, double %153)
  store double %154, ptr %152, align 8, !tbaa !31
  %155 = call double @llvm.fmuladd.f64(double %147, double 5.000000e-01, double %119)
  %156 = fmul double %44, %145
  %157 = fmul double %142, %156
  %158 = call double @llvm.fmuladd.f64(double %145, double 1.200000e+01, double -6.000000e+00)
  %159 = fmul double %158, %157
  %160 = load ptr, ptr %102, align 8, !tbaa !91
  br label %161

161:                                              ; preds = %161, %141
  %162 = phi i64 [ 0, %141 ], [ %172, %161 ]
  %163 = getelementptr inbounds [3 x double], ptr %3, i64 0, i64 %162
  %164 = load double, ptr %163, align 8, !tbaa !31
  %165 = getelementptr inbounds [3 x double], ptr %160, i64 %105, i64 %162
  %166 = load double, ptr %165, align 8, !tbaa !31
  %167 = fneg double %164
  %168 = call double @llvm.fmuladd.f64(double %167, double %159, double %166)
  store double %168, ptr %165, align 8, !tbaa !31
  %169 = getelementptr inbounds [3 x double], ptr %160, i64 %118, i64 %162
  %170 = load double, ptr %169, align 8, !tbaa !31
  %171 = call double @llvm.fmuladd.f64(double %164, double %159, double %170)
  store double %171, ptr %169, align 8, !tbaa !31
  %172 = add nuw nsw i64 %162, 1
  %173 = icmp eq i64 %172, 3
  br i1 %173, label %174, label %161

174:                                              ; preds = %161
  %175 = fadd double %119, %147
  %176 = select i1 %111, double %175, double %155
  br label %177

177:                                              ; preds = %174, %127, %121
  %178 = phi double [ %119, %121 ], [ %119, %127 ], [ %176, %174 ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #40
  %179 = add nuw nsw i32 %120, 1
  %180 = add nsw i64 %118, 1
  %181 = icmp eq i32 %179, %91
  br i1 %181, label %112, label %117

182:                                              ; preds = %112, %84
  %183 = phi double [ %86, %84 ], [ %113, %112 ]
  %184 = add nuw nsw i64 %85, 1
  %185 = icmp eq i64 %184, %83
  br i1 %185, label %186, label %84

186:                                              ; preds = %182, %72, %61
  %187 = phi ptr [ %62, %61 ], [ %76, %72 ], [ %76, %182 ]
  %188 = phi double [ %65, %61 ], [ %65, %72 ], [ %183, %182 ]
  %189 = add nuw nsw i64 %63, 1
  %190 = getelementptr inbounds %struct.LinkCellSt, ptr %187, i64 0, i32 1
  %191 = load i32, ptr %190, align 4, !tbaa !52
  %192 = sext i32 %191 to i64
  %193 = icmp slt i64 %189, %192
  %194 = add i32 %64, 64
  br i1 %193, label %61, label %57
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @ljPrint(ptr nocapture noundef %0, ptr noundef %1) #11 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.2.91, i64 35, i64 1, ptr %0)
  %4 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 4
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3.92, ptr noundef nonnull %4) #42
  %6 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 5
  %7 = load i32, ptr %6, align 4, !tbaa !129
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4.93, i32 noundef %7) #42
  %9 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 1
  %10 = load double, ptr %9, align 8, !tbaa !133
  %11 = fdiv double %10, 0x4059E921DD37DC65
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.5.94, double noundef %11) #42
  %13 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 3
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6.95, ptr noundef nonnull %13) #42
  %15 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 2
  %16 = load double, ptr %15, align 8, !tbaa !128
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.7.96, double noundef %16) #42
  %18 = load double, ptr %1, align 8, !tbaa !132
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8.97, double noundef %18) #42
  %20 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 10
  %21 = load double, ptr %20, align 8, !tbaa !131
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9.98, double noundef %21) #42
  %23 = getelementptr inbounds %struct.LjPotentialSt, ptr %1, i64 0, i32 9
  %24 = load double, ptr %23, align 8, !tbaa !130
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10.99, double noundef %24) #42
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @parseCommandLine(ptr noalias sret(%struct.CommandSt) align 8 %0, i32 noundef %1, ptr noundef %2) #0 {
  %4 = alloca i32, align 4
  %5 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 2
  %7 = getelementptr inbounds i8, ptr %0, i64 5
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(3067) %7, i8 0, i64 3067, i1 false)
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(5) %0, ptr noundef nonnull align 1 dereferenceable(5) @.str.102, i64 5, i1 false) #39
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(7) %6, ptr noundef nonnull align 1 dereferenceable(7) @.str.2.103, i64 7, i1 false) #39
  %8 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 3
  %9 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 4
  %10 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 6
  store <4 x i32> <i32 0, i32 20, i32 20, i32 20>, ptr %8, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 7
  %13 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 8
  %14 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 9
  %15 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 10
  store <4 x i32> <i32 1, i32 1, i32 1, i32 100>, ptr %12, align 8, !tbaa !7
  %16 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 11
  store i32 10, ptr %16, align 8, !tbaa !134
  %17 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 12
  %18 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 13
  store <2 x double> <double 1.000000e+00, double -1.000000e+00>, ptr %17, align 8, !tbaa !31
  %19 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 14
  %20 = getelementptr inbounds %struct.CommandSt, ptr %0, i64 0, i32 15
  store <2 x double> <double 6.000000e+02, double 0.000000e+00>, ptr %19, align 8, !tbaa !31
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #40
  store i32 0, ptr %4, align 4, !tbaa !7
  %21 = call i32 @addArg(ptr noundef nonnull @.str.3.104, i8 noundef signext 104, i32 noundef 0, i8 noundef signext 105, ptr noundef nonnull %4, i32 noundef 0, ptr noundef nonnull @.str.4.105) #39
  %22 = call i32 @addArg(ptr noundef nonnull @.str.5.106, i8 noundef signext 100, i32 noundef 1, i8 noundef signext 115, ptr noundef %0, i32 noundef 1024, ptr noundef nonnull @.str.6.107) #39
  %23 = call i32 @addArg(ptr noundef nonnull @.str.7.108, i8 noundef signext 112, i32 noundef 1, i8 noundef signext 115, ptr noundef nonnull %5, i32 noundef 1024, ptr noundef nonnull @.str.8.109) #39
  %24 = call i32 @addArg(ptr noundef nonnull @.str.9.110, i8 noundef signext 116, i32 noundef 1, i8 noundef signext 115, ptr noundef nonnull %6, i32 noundef 1024, ptr noundef nonnull @.str.10.111) #39
  %25 = call i32 @addArg(ptr noundef nonnull @.str.11.112, i8 noundef signext 101, i32 noundef 0, i8 noundef signext 105, ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @.str.12.113) #39
  %26 = call i32 @addArg(ptr noundef nonnull @.str.13.114, i8 noundef signext 120, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %9, i32 noundef 0, ptr noundef nonnull @.str.14.115) #39
  %27 = call i32 @addArg(ptr noundef nonnull @.str.15.116, i8 noundef signext 121, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %10, i32 noundef 0, ptr noundef nonnull @.str.16.117) #39
  %28 = call i32 @addArg(ptr noundef nonnull @.str.17.118, i8 noundef signext 122, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %11, i32 noundef 0, ptr noundef nonnull @.str.18.119) #39
  %29 = call i32 @addArg(ptr noundef nonnull @.str.19.120, i8 noundef signext 105, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %12, i32 noundef 0, ptr noundef nonnull @.str.20.121) #39
  %30 = call i32 @addArg(ptr noundef nonnull @.str.21.122, i8 noundef signext 106, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %13, i32 noundef 0, ptr noundef nonnull @.str.22.123) #39
  %31 = call i32 @addArg(ptr noundef nonnull @.str.23.124, i8 noundef signext 107, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %14, i32 noundef 0, ptr noundef nonnull @.str.24.125) #39
  %32 = call i32 @addArg(ptr noundef nonnull @.str.25.126, i8 noundef signext 78, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %15, i32 noundef 0, ptr noundef nonnull @.str.26.127) #39
  %33 = call i32 @addArg(ptr noundef nonnull @.str.27.128, i8 noundef signext 110, i32 noundef 1, i8 noundef signext 105, ptr noundef nonnull %16, i32 noundef 0, ptr noundef nonnull @.str.28.129) #39
  %34 = call i32 @addArg(ptr noundef nonnull @.str.29.130, i8 noundef signext 68, i32 noundef 1, i8 noundef signext 100, ptr noundef nonnull %17, i32 noundef 0, ptr noundef nonnull @.str.30.131) #39
  %35 = call i32 @addArg(ptr noundef nonnull @.str.31.132, i8 noundef signext 108, i32 noundef 1, i8 noundef signext 100, ptr noundef nonnull %18, i32 noundef 0, ptr noundef nonnull @.str.32.133) #39
  %36 = call i32 @addArg(ptr noundef nonnull @.str.33.134, i8 noundef signext 84, i32 noundef 1, i8 noundef signext 100, ptr noundef nonnull %19, i32 noundef 0, ptr noundef nonnull @.str.34.135) #39
  %37 = call i32 @addArg(ptr noundef nonnull @.str.35.136, i8 noundef signext 114, i32 noundef 1, i8 noundef signext 100, ptr noundef nonnull %20, i32 noundef 0, ptr noundef nonnull @.str.36.137) #39
  call void @processArgs(i32 noundef %1, ptr noundef %2) #39
  %38 = load i8, ptr %5, align 8
  %39 = icmp eq i8 %38, 0
  br i1 %39, label %40, label %48

40:                                               ; preds = %3
  %41 = call i32 @bcmp(ptr noundef nonnull dereferenceable(6) %6, ptr noundef nonnull dereferenceable(6) @.str.37, i64 6)
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %5, ptr noundef nonnull align 1 dereferenceable(15) @.str.38, i64 15, i1 false) #39
  br label %44

44:                                               ; preds = %43, %40
  %45 = call i32 @bcmp(ptr noundef nonnull dereferenceable(7) %6, ptr noundef nonnull dereferenceable(7) @.str.2.103, i64 7)
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(10) %5, ptr noundef nonnull align 1 dereferenceable(10) @.str.39, i64 10, i1 false) #39
  br label %48

48:                                               ; preds = %47, %44, %3
  %49 = load i32, ptr %4, align 4, !tbaa !7
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %52, label %51

51:                                               ; preds = %48
  call void @printArgs() #39
  call void @freeArgs() #39
  call void @exit(i32 noundef 2) #44
  unreachable

52:                                               ; preds = %48
  call void @freeArgs() #39
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #40
  ret void
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #32

; Function Attrs: nounwind optsize uwtable
define internal void @printCmdYaml(ptr nocapture noundef %0, ptr noundef %1) #0 {
  %3 = tail call i32 @printRank() #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %36, label %5

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 3
  %7 = load i32, ptr %6, align 8, !tbaa !19
  %8 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 1
  %9 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 2
  %10 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !39
  %12 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 5
  %13 = load i32, ptr %12, align 8, !tbaa !40
  %14 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 6
  %15 = load i32, ptr %14, align 4, !tbaa !32
  %16 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 7
  %17 = load i32, ptr %16, align 8, !tbaa !33
  %18 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 8
  %19 = load i32, ptr %18, align 4, !tbaa !34
  %20 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 9
  %21 = load i32, ptr %20, align 8, !tbaa !35
  %22 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 13
  %23 = load double, ptr %22, align 8, !tbaa !21
  %24 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 10
  %25 = load i32, ptr %24, align 4, !tbaa !135
  %26 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 11
  %27 = load i32, ptr %26, align 8, !tbaa !134
  %28 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 12
  %29 = load double, ptr %28, align 8, !tbaa !13
  %30 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 14
  %31 = load double, ptr %30, align 8, !tbaa !41
  %32 = getelementptr inbounds %struct.CommandSt, ptr %1, i64 0, i32 15
  %33 = load double, ptr %32, align 8, !tbaa !42
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.40, i32 noundef %7, ptr noundef nonnull @.str.41, ptr noundef nonnull %8, ptr noundef nonnull %9, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17, i32 noundef %19, i32 noundef %21, double noundef %23, i32 noundef %25, i32 noundef %27, double noundef %29, double noundef %31, double noundef %33) #42
  %35 = tail call i32 @fflush(ptr noundef %0) #42
  br label %36

36:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @getNRanks() #33 {
  ret i32 1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @getMyRank() #33 {
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @printRank() #33 {
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @timestampBarrier(ptr noundef %0) #0 {
  %2 = alloca i64, align 8
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #40
  %3 = tail call i64 @time(ptr noundef null) #39
  store i64 %3, ptr %2, align 8, !tbaa !121
  %4 = call ptr @ctime(ptr noundef nonnull %2) #39
  %5 = getelementptr inbounds i8, ptr %4, i64 24
  store i8 0, ptr %5, align 1, !tbaa !63
  store i8 0, ptr %4, align 1, !tbaa !63
  %6 = load ptr, ptr @stdout, align 8, !tbaa !11
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.148, ptr noundef nonnull %4, ptr noundef %0) #42
  %8 = load ptr, ptr @stdout, align 8, !tbaa !11
  %9 = call i32 @fflush(ptr noundef %8) #42
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #40
  ret void
}

; Function Attrs: nounwind optsize
declare i64 @time(ptr noundef) local_unnamed_addr #15

; Function Attrs: nounwind optsize
declare ptr @ctime(ptr noundef) local_unnamed_addr #15

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @initParallel(ptr nocapture noundef %0, ptr nocapture noundef %1) #33 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @destroyParallel() #33 {
  ret void
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal i32 @sendReceiveParallel(ptr nocapture noundef readonly %0, i32 noundef returned %1, i32 noundef %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5) #34 {
  %7 = sext i32 %1 to i64
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %3, ptr align 1 %0, i64 %7, i1 false)
  ret i32 %1
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @addIntParallel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #27 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %11, ptr %12, align 4, !tbaa !7
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @addRealParallel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #27 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds double, ptr %0, i64 %9
  %11 = load double, ptr %10, align 8, !tbaa !31
  %12 = getelementptr inbounds double, ptr %1, i64 %9
  store double %11, ptr %12, align 8, !tbaa !31
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @maxIntParallel(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i32 noundef %2) #27 {
  %4 = icmp sgt i32 %2, 0
  br i1 %4, label %5, label %7

5:                                                ; preds = %3
  %6 = zext i32 %2 to i64
  br label %8

7:                                                ; preds = %8, %3
  ret void

8:                                                ; preds = %8, %5
  %9 = phi i64 [ 0, %5 ], [ %13, %8 ]
  %10 = getelementptr inbounds i32, ptr %0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = getelementptr inbounds i32, ptr %1, i64 %9
  store i32 %11, ptr %12, align 4, !tbaa !7
  %13 = add nuw nsw i64 %9, 1
  %14 = icmp eq i64 %13, %6
  br i1 %14, label %7, label %8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @bcastParallel(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #33 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal i32 @builtWithMpi() #33 {
  ret i32 0
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @profileStart(i32 noundef %0) #11 {
  %2 = alloca %struct.timeval, align 8
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #40
  %3 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #39
  %4 = load i64, ptr %2, align 8, !tbaa !136
  %5 = mul i64 %4, 1000000
  %6 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %7 = load i64, ptr %6, align 8, !tbaa !138
  %8 = add i64 %5, %7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #40
  %9 = zext i32 %0 to i64
  %10 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %9
  store i64 %8, ptr %10, align 8, !tbaa !139
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @gettimeofday(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @profileStop(i32 noundef %0) #11 {
  %2 = alloca %struct.timeval, align 8
  %3 = zext i32 %0 to i64
  %4 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %3
  %5 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %3, i32 2
  %6 = load i64, ptr %5, align 8, !tbaa !141
  %7 = add i64 %6, 1
  store i64 %7, ptr %5, align 8, !tbaa !141
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #40
  %8 = call i32 @gettimeofday(ptr noundef nonnull %2, ptr noundef null) #39
  %9 = load i64, ptr %2, align 8, !tbaa !136
  %10 = mul i64 %9, 1000000
  %11 = getelementptr inbounds %struct.timeval, ptr %2, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !138
  %13 = add i64 %10, %12
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #40
  %14 = load i64, ptr %4, align 8, !tbaa !139
  %15 = sub i64 %13, %14
  %16 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %3, i32 1
  %17 = load i64, ptr %16, align 8, !tbaa !142
  %18 = add i64 %17, %15
  store i64 %18, ptr %16, align 8, !tbaa !142
  %19 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %3, i32 3
  %20 = load i64, ptr %19, align 8, !tbaa !143
  %21 = add i64 %20, %15
  store i64 %21, ptr %19, align 8, !tbaa !143
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal double @getElapsedTime(i32 noundef %0) #35 {
  %2 = zext i32 %0 to i64
  %3 = getelementptr inbounds [11 x %struct.TimersSt], ptr @perfTimer, i64 0, i64 %2, i32 3
  %4 = load i64, ptr %3, align 8, !tbaa !143
  %5 = uitofp i64 %4 to double
  %6 = fmul double %5, 0x3EB0C6F7A0B5ED8D
  store i64 0, ptr %3, align 8, !tbaa !143
  ret double %6
}

; Function Attrs: nofree nounwind optsize memory(write, argmem: readwrite) uwtable
define internal double @gasdev(ptr nocapture noundef %0) #36 {
  %2 = load i64, ptr %0, align 8, !tbaa !121
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ %11, %3 ], [ %2, %1 ]
  %5 = mul i64 %4, 437799614237992725
  %6 = urem i64 %5, 2305843009213693951
  %7 = uitofp i64 %6 to double
  %8 = fmul double %7, 0x3C20000000000000
  %9 = tail call double @llvm.fmuladd.f64(double %8, double 2.000000e+00, double -1.000000e+00)
  %10 = mul i64 %6, 437799614237992725
  %11 = urem i64 %10, 2305843009213693951
  %12 = uitofp i64 %11 to double
  %13 = fmul double %12, 0x3C20000000000000
  %14 = tail call double @llvm.fmuladd.f64(double %13, double 2.000000e+00, double -1.000000e+00)
  %15 = fmul double %14, %14
  %16 = tail call double @llvm.fmuladd.f64(double %9, double %9, double %15)
  %17 = fcmp oge double %16, 1.000000e+00
  %18 = fcmp oeq double %16, 0.000000e+00
  %19 = or i1 %17, %18
  br i1 %19, label %3, label %20

20:                                               ; preds = %3
  %.lcssa2 = phi i64 [ %11, %3 ]
  %.lcssa1 = phi double [ %14, %3 ]
  %.lcssa = phi double [ %16, %3 ]
  store i64 %.lcssa2, ptr %0, align 8, !tbaa !121
  %21 = tail call double @log(double noundef %.lcssa) #39
  %22 = fmul double %21, -2.000000e+00
  %23 = fdiv double %22, %.lcssa
  %24 = tail call double @sqrt(double noundef %23) #39
  %25 = fmul double %.lcssa1, %24
  ret double %25
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @log(double noundef) local_unnamed_addr #20

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal double @lcg61(ptr nocapture noundef %0) #37 {
  %2 = load i64, ptr %0, align 8, !tbaa !121
  %3 = mul i64 %2, 437799614237992725
  %4 = urem i64 %3, 2305843009213693951
  store i64 %4, ptr %0, align 8, !tbaa !121
  %5 = uitofp i64 %4 to double
  %6 = fmul double %5, 0x3C20000000000000
  ret double %6
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(none) uwtable
define internal i64 @mkSeed(i32 noundef %0, i32 noundef %1) #38 {
  %3 = mul i32 %0, -1640531535
  %4 = add i32 %1, %0
  %5 = mul i32 %4, -1640531535
  %6 = zext i32 %3 to i64
  %7 = shl nuw i64 %6, 32
  %8 = zext i32 %5 to i64
  %9 = or i64 %7, %8
  br label %11

10:                                               ; preds = %11
  %.lcssa = phi i64 [ %15, %11 ]
  ret i64 %.lcssa

11:                                               ; preds = %11, %2
  %12 = phi i32 [ 0, %2 ], [ %16, %11 ]
  %13 = phi i64 [ %9, %2 ], [ %15, %11 ]
  %14 = mul i64 %13, 437799614237992725
  %15 = urem i64 %14, 2305843009213693951
  %16 = add nuw nsw i32 %12, 1
  %17 = icmp eq i32 %16, 10
  br i1 %17, label %10, label %11
}

; Function Attrs: nounwind optsize uwtable
define internal double @timestep(ptr noundef %0, i32 noundef %1, double noundef %2) #0 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %11

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %7 = fmul double %2, 5.000000e-01
  %8 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %9 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 6
  %10 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 9
  br label %14

11:                                               ; preds = %77, %3
  tail call void @kineticEnergy(ptr noundef %0) #42
  %12 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 7
  %13 = load double, ptr %12, align 8, !tbaa !47
  ret double %13

14:                                               ; preds = %77, %5
  %15 = phi i32 [ 0, %5 ], [ %85, %77 ]
  tail call void @profileStart(i32 noundef 4) #39
  %16 = load ptr, ptr %6, align 8, !tbaa !37
  %17 = getelementptr inbounds %struct.LinkCellSt, ptr %16, i64 0, i32 1
  %18 = load i32, ptr %17, align 4, !tbaa !52
  tail call fastcc void @advanceVelocity(ptr noundef %0, i32 noundef %18, double noundef %7) #42
  tail call void @profileStop(i32 noundef 4) #39
  tail call void @profileStart(i32 noundef 3) #39
  %19 = load ptr, ptr %6, align 8, !tbaa !37
  %20 = getelementptr inbounds %struct.LinkCellSt, ptr %19, i64 0, i32 1
  %21 = load i32, ptr %20, align 4, !tbaa !52
  %22 = icmp sgt i32 %21, 0
  br i1 %22, label %23, label %77

23:                                               ; preds = %14
  %24 = getelementptr inbounds %struct.LinkCellSt, ptr %19, i64 0, i32 8
  %25 = load ptr, ptr %24, align 8, !tbaa !54
  %26 = zext i32 %21 to i64
  br label %27

27:                                               ; preds = %44, %23
  %28 = phi i64 [ 0, %23 ], [ %45, %44 ]
  %29 = phi i32 [ 0, %23 ], [ %46, %44 ]
  %30 = getelementptr inbounds i32, ptr %25, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = icmp sgt i32 %31, 0
  br i1 %32, label %33, label %44

33:                                               ; preds = %27
  %34 = zext i32 %29 to i64
  %35 = load ptr, ptr %8, align 8, !tbaa !38
  %36 = getelementptr inbounds %struct.AtomsSt, ptr %35, i64 0, i32 3
  %37 = load ptr, ptr %36, align 8, !tbaa !108
  %38 = load ptr, ptr %9, align 8, !tbaa !30
  %39 = getelementptr inbounds %struct.AtomsSt, ptr %35, i64 0, i32 5
  %40 = load ptr, ptr %39, align 8, !tbaa !109
  %41 = getelementptr inbounds %struct.AtomsSt, ptr %35, i64 0, i32 4
  %42 = load ptr, ptr %41, align 8, !tbaa !93
  %43 = add i32 %31, %29
  br label %48

44:                                               ; preds = %48, %27
  %45 = add nuw nsw i64 %28, 1
  %46 = add i32 %29, 64
  %47 = icmp eq i64 %45, %26
  br i1 %47, label %77, label %27

48:                                               ; preds = %48, %33
  %49 = phi i64 [ %34, %33 ], [ %74, %48 ]
  %50 = getelementptr inbounds i32, ptr %37, i64 %49
  %51 = load i32, ptr %50, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.SpeciesDataSt, ptr %38, i64 %52, i32 2
  %54 = load double, ptr %53, align 8, !tbaa !29
  %55 = fdiv double 1.000000e+00, %54
  %56 = getelementptr inbounds [3 x double], ptr %40, i64 %49
  %57 = load double, ptr %56, align 8, !tbaa !31
  %58 = fmul double %57, %2
  %59 = getelementptr inbounds [3 x double], ptr %42, i64 %49
  %60 = load double, ptr %59, align 8, !tbaa !31
  %61 = tail call double @llvm.fmuladd.f64(double %58, double %55, double %60)
  store double %61, ptr %59, align 8, !tbaa !31
  %62 = getelementptr inbounds [3 x double], ptr %40, i64 %49, i64 1
  %63 = load double, ptr %62, align 8, !tbaa !31
  %64 = fmul double %63, %2
  %65 = getelementptr inbounds [3 x double], ptr %42, i64 %49, i64 1
  %66 = load double, ptr %65, align 8, !tbaa !31
  %67 = tail call double @llvm.fmuladd.f64(double %64, double %55, double %66)
  store double %67, ptr %65, align 8, !tbaa !31
  %68 = getelementptr inbounds [3 x double], ptr %40, i64 %49, i64 2
  %69 = load double, ptr %68, align 8, !tbaa !31
  %70 = fmul double %69, %2
  %71 = getelementptr inbounds [3 x double], ptr %42, i64 %49, i64 2
  %72 = load double, ptr %71, align 8, !tbaa !31
  %73 = tail call double @llvm.fmuladd.f64(double %70, double %55, double %72)
  store double %73, ptr %71, align 8, !tbaa !31
  %74 = add nuw nsw i64 %49, 1
  %75 = trunc i64 %74 to i32
  %76 = icmp eq i32 %43, %75
  br i1 %76, label %44, label %48

77:                                               ; preds = %44, %14
  tail call void @profileStop(i32 noundef 3) #39
  tail call void @profileStart(i32 noundef 5) #39
  tail call void @redistributeAtoms(ptr noundef %0) #42
  tail call void @profileStop(i32 noundef 5) #39
  tail call void @profileStart(i32 noundef 7) #39
  %78 = load ptr, ptr %10, align 8, !tbaa !20
  %79 = getelementptr inbounds %struct.BasePotentialSt, ptr %78, i64 0, i32 6
  %80 = load ptr, ptr %79, align 8, !tbaa !144
  %81 = tail call i32 %80(ptr noundef %0) #39
  tail call void @profileStop(i32 noundef 7) #39
  tail call void @profileStart(i32 noundef 4) #39
  %82 = load ptr, ptr %6, align 8, !tbaa !37
  %83 = getelementptr inbounds %struct.LinkCellSt, ptr %82, i64 0, i32 1
  %84 = load i32, ptr %83, align 4, !tbaa !52
  tail call fastcc void @advanceVelocity(ptr noundef %0, i32 noundef %84, double noundef %7) #42
  tail call void @profileStop(i32 noundef 4) #39
  %85 = add nuw nsw i32 %15, 1
  %86 = icmp eq i32 %85, %1
  br i1 %86, label %11, label %14
}

; Function Attrs: nounwind optsize uwtable
define internal void @kineticEnergy(ptr nocapture noundef %0) #0 {
  %2 = alloca [2 x double], align 16
  %3 = alloca [2 x double], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #40
  %4 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 7
  %5 = load double, ptr %4, align 8, !tbaa !47
  store double %5, ptr %2, align 16, !tbaa !31
  %6 = getelementptr inbounds [2 x double], ptr %2, i64 0, i64 1
  store double 0.000000e+00, ptr %6, align 8, !tbaa !31
  %7 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.LinkCellSt, ptr %8, i64 0, i32 1
  %10 = load i32, ptr %9, align 4, !tbaa !52
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %1
  %13 = getelementptr inbounds %struct.LinkCellSt, ptr %8, i64 0, i32 8
  %14 = load ptr, ptr %13, align 8, !tbaa !54
  %15 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %16 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 6
  %17 = zext i32 %10 to i64
  br label %20

18:                                               ; preds = %36, %1
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #40
  tail call void @profileStart(i32 noundef 10) #39
  call void @addRealParallel(ptr noundef nonnull %2, ptr noundef nonnull %3, i32 noundef 2) #39
  call void @profileStop(i32 noundef 10) #39
  %19 = load <2 x double>, ptr %3, align 16, !tbaa !31
  store <2 x double> %19, ptr %4, align 8, !tbaa !31
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #40
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #40
  ret void

20:                                               ; preds = %36, %12
  %21 = phi i64 [ 0, %12 ], [ %38, %36 ]
  %22 = phi i32 [ 0, %12 ], [ %39, %36 ]
  %23 = phi double [ 0.000000e+00, %12 ], [ %37, %36 ]
  %24 = getelementptr inbounds i32, ptr %14, i64 %21
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %36

27:                                               ; preds = %20
  %28 = zext i32 %22 to i64
  %29 = load ptr, ptr %15, align 8, !tbaa !38
  %30 = getelementptr inbounds %struct.AtomsSt, ptr %29, i64 0, i32 3
  %31 = load ptr, ptr %30, align 8, !tbaa !108
  %32 = load ptr, ptr %16, align 8, !tbaa !30
  %33 = getelementptr inbounds %struct.AtomsSt, ptr %29, i64 0, i32 5
  %34 = load ptr, ptr %33, align 8, !tbaa !109
  %35 = add i32 %25, %22
  br label %41

36:                                               ; preds = %41, %20
  %37 = phi double [ %23, %20 ], [ %59, %41 ]
  %38 = add nuw nsw i64 %21, 1
  %39 = add i32 %22, 64
  %40 = icmp eq i64 %38, %17
  br i1 %40, label %18, label %20

41:                                               ; preds = %41, %27
  %42 = phi i64 [ %28, %27 ], [ %60, %41 ]
  %43 = phi double [ %23, %27 ], [ %59, %41 ]
  %44 = getelementptr inbounds i32, ptr %31, i64 %42
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.SpeciesDataSt, ptr %32, i64 %46, i32 2
  %48 = load double, ptr %47, align 8, !tbaa !29
  %49 = fdiv double 5.000000e-01, %48
  %50 = getelementptr inbounds [3 x double], ptr %34, i64 %42
  %51 = load double, ptr %50, align 8, !tbaa !31
  %52 = getelementptr inbounds [3 x double], ptr %34, i64 %42, i64 1
  %53 = load double, ptr %52, align 8, !tbaa !31
  %54 = fmul double %53, %53
  %55 = tail call double @llvm.fmuladd.f64(double %51, double %51, double %54)
  %56 = getelementptr inbounds [3 x double], ptr %34, i64 %42, i64 2
  %57 = load double, ptr %56, align 8, !tbaa !31
  %58 = tail call double @llvm.fmuladd.f64(double %57, double %57, double %55)
  %59 = tail call double @llvm.fmuladd.f64(double %58, double %49, double %43)
  store double %59, ptr %6, align 8, !tbaa !31
  %60 = add nuw nsw i64 %42, 1
  %61 = trunc i64 %60 to i32
  %62 = icmp eq i32 %35, %61
  br i1 %62, label %36, label %41
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @advanceVelocity(ptr nocapture noundef readonly %0, i32 noundef %1, double noundef %2) unnamed_addr #30 {
  %4 = icmp sgt i32 %1, 0
  br i1 %4, label %5, label %12

5:                                                ; preds = %3
  %6 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %7 = load ptr, ptr %6, align 8, !tbaa !37
  %8 = getelementptr inbounds %struct.LinkCellSt, ptr %7, i64 0, i32 8
  %9 = load ptr, ptr %8, align 8, !tbaa !54
  %10 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %11 = zext i32 %1 to i64
  br label %13

12:                                               ; preds = %27, %3
  ret void

13:                                               ; preds = %27, %5
  %14 = phi i64 [ 0, %5 ], [ %28, %27 ]
  %15 = phi i32 [ 0, %5 ], [ %29, %27 ]
  %16 = getelementptr inbounds i32, ptr %9, i64 %14
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = icmp sgt i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = zext i32 %15 to i64
  %21 = load ptr, ptr %10, align 8, !tbaa !38
  %22 = getelementptr inbounds %struct.AtomsSt, ptr %21, i64 0, i32 6
  %23 = load ptr, ptr %22, align 8, !tbaa !91
  %24 = getelementptr inbounds %struct.AtomsSt, ptr %21, i64 0, i32 5
  %25 = load ptr, ptr %24, align 8, !tbaa !109
  %26 = add i32 %17, %15
  br label %31

27:                                               ; preds = %31, %13
  %28 = add nuw nsw i64 %14, 1
  %29 = add i32 %15, 64
  %30 = icmp eq i64 %28, %11
  br i1 %30, label %12, label %13

31:                                               ; preds = %31, %19
  %32 = phi i64 [ %20, %19 ], [ %48, %31 ]
  %33 = getelementptr inbounds [3 x double], ptr %23, i64 %32
  %34 = load double, ptr %33, align 8, !tbaa !31
  %35 = getelementptr inbounds [3 x double], ptr %25, i64 %32
  %36 = load double, ptr %35, align 8, !tbaa !31
  %37 = tail call double @llvm.fmuladd.f64(double %2, double %34, double %36)
  store double %37, ptr %35, align 8, !tbaa !31
  %38 = getelementptr inbounds [3 x double], ptr %23, i64 %32, i64 1
  %39 = load double, ptr %38, align 8, !tbaa !31
  %40 = getelementptr inbounds [3 x double], ptr %25, i64 %32, i64 1
  %41 = load double, ptr %40, align 8, !tbaa !31
  %42 = tail call double @llvm.fmuladd.f64(double %2, double %39, double %41)
  store double %42, ptr %40, align 8, !tbaa !31
  %43 = getelementptr inbounds [3 x double], ptr %23, i64 %32, i64 2
  %44 = load double, ptr %43, align 8, !tbaa !31
  %45 = getelementptr inbounds [3 x double], ptr %25, i64 %32, i64 2
  %46 = load double, ptr %45, align 8, !tbaa !31
  %47 = tail call double @llvm.fmuladd.f64(double %2, double %44, double %46)
  store double %47, ptr %45, align 8, !tbaa !31
  %48 = add nuw nsw i64 %32, 1
  %49 = trunc i64 %48 to i32
  %50 = icmp eq i32 %26, %49
  br i1 %50, label %27, label %31
}

; Function Attrs: nounwind optsize uwtable
define internal void @redistributeAtoms(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 4
  %3 = load ptr, ptr %2, align 8, !tbaa !37
  %4 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @updateLinkCells(ptr noundef %3, ptr noundef %5) #39
  tail call void @profileStart(i32 noundef 6) #39
  %6 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !18
  tail call void @haloExchange(ptr noundef %7, ptr noundef %0) #39
  tail call void @profileStop(i32 noundef 6) #39
  %8 = load ptr, ptr %2, align 8, !tbaa !37
  %9 = getelementptr inbounds %struct.LinkCellSt, ptr %8, i64 0, i32 3
  %10 = load i32, ptr %9, align 4, !tbaa !84
  %11 = icmp sgt i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %13, %1
  ret void

13:                                               ; preds = %13, %1
  %14 = phi ptr [ %18, %13 ], [ %8, %1 ]
  %15 = phi i32 [ %17, %13 ], [ 0, %1 ]
  %16 = load ptr, ptr %4, align 8, !tbaa !38
  tail call void @sortAtomsInCell(ptr noundef %16, ptr noundef nonnull %14, i32 noundef %15) #39
  %17 = add nuw nsw i32 %15, 1
  %18 = load ptr, ptr %2, align 8, !tbaa !37
  %19 = getelementptr inbounds %struct.LinkCellSt, ptr %18, i64 0, i32 3
  %20 = load i32, ptr %19, align 4, !tbaa !84
  %21 = icmp slt i32 %17, %20
  br i1 %21, label %13, label %12
}

; Function Attrs: nounwind optsize uwtable
define internal void @computeForce(ptr noundef %0) #0 {
  %2 = getelementptr inbounds %struct.SimFlatSt, ptr %0, i64 0, i32 9
  %3 = load ptr, ptr %2, align 8, !tbaa !20
  %4 = getelementptr inbounds %struct.BasePotentialSt, ptr %3, i64 0, i32 6
  %5 = load ptr, ptr %4, align 8, !tbaa !144
  %6 = tail call i32 %5(ptr noundef %0) #39
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @yamlAppInfo(ptr nocapture noundef %0) #0 {
  %2 = alloca [32 x i8], align 16
  %3 = tail call i32 @printRank() #39
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %28, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fputc(i32 10, ptr %0)
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3.185, ptr noundef nonnull @.str.26.186) #42
  %8 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.4.187, ptr noundef nonnull @.str.27.188) #42
  %9 = tail call i64 @fwrite(ptr nonnull @.str.5.189, i64 10, i64 1, ptr %0)
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6.190, ptr noundef nonnull @.str.7.191) #42
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.8.192, ptr noundef nonnull @.str.9.193) #42
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.10.194, ptr noundef nonnull @.str.9.193) #42
  %13 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11.195, ptr noundef nonnull @.str.9.193) #42
  %14 = tail call i64 @fwrite(ptr nonnull @.str.12.196, i64 7, i64 1, ptr %0)
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.13.197, ptr noundef nonnull @.str.9.193) #42
  %16 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14.198, ptr noundef nonnull @.str.9.193) #42
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.15.199, ptr noundef nonnull @.str.16.200) #42
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.17.201, ptr noundef nonnull @.str.18.202) #42
  %19 = tail call i32 @builtWithMpi() #39
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.21.203, ptr @.str.20.204
  %22 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19.205, ptr noundef nonnull %21) #42
  %23 = tail call i64 @fwrite(ptr nonnull @.str.22.206, i64 18, i64 1, ptr %0)
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.23.207, ptr noundef nonnull @.str.20.204) #42
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %2) #40
  store i8 0, ptr %2, align 16, !tbaa !63
  %25 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24.208, ptr noundef nonnull %2) #42
  %26 = call i32 @fputc(i32 10, ptr %0)
  %27 = call i32 @fflush(ptr noundef %0) #42
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %2) #40
  br label %28

28:                                               ; preds = %5, %1
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @printSeparator(ptr nocapture noundef %0) #11 {
  %2 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #5 = { nofree nounwind }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,zeroed") allocsize(0,1) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nounwind optsize willreturn uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(write, argmem: read, inaccessiblemem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind optsize memory(readwrite, argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #27 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #28 = { mustprogress nofree nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #29 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #30 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #31 = { mustprogress nofree nounwind optsize willreturn memory(readwrite, argmem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #32 = { nofree nounwind willreturn memory(argmem: read) }
attributes #33 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #34 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #35 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #36 = { nofree nounwind optsize memory(write, argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #37 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #38 = { nofree norecurse nosync nounwind optsize memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #39 = { nounwind optsize }
attributes #40 = { nounwind }
attributes #41 = { nounwind optsize allocsize(0) }
attributes #42 = { optsize }
attributes #43 = { nounwind optsize willreturn memory(read) }
attributes #44 = { noreturn nounwind optsize }
attributes #45 = { nounwind optsize allocsize(0,1) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!14, !15, i64 3112}
!14 = !{!"CommandSt", !9, i64 0, !9, i64 1024, !9, i64 2048, !8, i64 3072, !8, i64 3076, !8, i64 3080, !8, i64 3084, !8, i64 3088, !8, i64 3092, !8, i64 3096, !8, i64 3100, !8, i64 3104, !15, i64 3112, !15, i64 3120, !15, i64 3128, !15, i64 3136}
!15 = !{!"double", !9, i64 0}
!16 = !{!17, !15, i64 8}
!17 = !{!"SimFlatSt", !8, i64 0, !8, i64 4, !15, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !15, i64 48, !15, i64 56, !12, i64 64, !12, i64 72}
!18 = !{!17, !12, i64 72}
!19 = !{!14, !8, i64 3072}
!20 = !{!17, !12, i64 64}
!21 = !{!14, !15, i64 3120}
!22 = !{!23, !15, i64 16}
!23 = !{!"BasePotentialSt", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 32, !8, i64 36, !12, i64 40, !12, i64 48, !12, i64 56}
!24 = !{!23, !15, i64 0}
!25 = !{!23, !8, i64 36}
!26 = !{!27, !8, i64 4}
!27 = !{!"SpeciesDataSt", !9, i64 0, !8, i64 4, !15, i64 8}
!28 = !{!23, !15, i64 8}
!29 = !{!27, !15, i64 8}
!30 = !{!17, !12, i64 40}
!31 = !{!15, !15, i64 0}
!32 = !{!14, !8, i64 3084}
!33 = !{!14, !8, i64 3088}
!34 = !{!14, !8, i64 3092}
!35 = !{!14, !8, i64 3096}
!36 = !{!17, !12, i64 16}
!37 = !{!17, !12, i64 24}
!38 = !{!17, !12, i64 32}
!39 = !{!14, !8, i64 3076}
!40 = !{!14, !8, i64 3080}
!41 = !{!14, !15, i64 3128}
!42 = !{!14, !15, i64 3136}
!43 = !{!44, !8, i64 4}
!44 = !{!"AtomsSt", !8, i64 0, !8, i64 4, !12, i64 8, !12, i64 16, !12, i64 24, !12, i64 32, !12, i64 40, !12, i64 48}
!45 = !{!23, !12, i64 48}
!46 = !{!44, !8, i64 0}
!47 = !{!17, !15, i64 48}
!48 = !{!17, !15, i64 56}
!49 = !{!17, !8, i64 0}
!50 = !{!17, !8, i64 4}
!51 = !{!23, !12, i64 56}
!52 = !{!53, !8, i64 12}
!53 = !{!"LinkCellSt", !9, i64 0, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !9, i64 48, !9, i64 72, !9, i64 96, !12, i64 120}
!54 = !{!53, !12, i64 120}
!55 = !{!56, !12, i64 0}
!56 = !{!"MyOptionSt", !12, i64 0, !12, i64 8, !9, i64 16, !8, i64 20, !9, i64 24, !8, i64 28, !12, i64 32, !12, i64 40}
!57 = !{!56, !12, i64 8}
!58 = !{!56, !8, i64 20}
!59 = !{!56, !9, i64 24}
!60 = !{!56, !12, i64 32}
!61 = !{!56, !8, i64 28}
!62 = !{!56, !12, i64 40}
!63 = !{!9, !9, i64 0}
!64 = !{!65, !12, i64 0}
!65 = !{!"option", !12, i64 0, !8, i64 8, !12, i64 16, !8, i64 24}
!66 = !{!65, !8, i64 8}
!67 = !{!65, !12, i64 16}
!68 = !{!65, !8, i64 24}
!69 = !{!70, !12, i64 40}
!70 = !{!"EamPotentialSt", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 32, !8, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !12, i64 64, !12, i64 72, !12, i64 80, !12, i64 88, !12, i64 96, !12, i64 104, !12, i64 112}
!71 = !{!70, !12, i64 48}
!72 = !{!70, !12, i64 56}
!73 = !{!70, !15, i64 0}
!74 = !{!70, !8, i64 36}
!75 = !{!70, !15, i64 16}
!76 = !{!70, !15, i64 8}
!77 = !{!70, !12, i64 80}
!78 = !{!70, !12, i64 72}
!79 = !{!70, !12, i64 64}
!80 = !{!81, !15, i64 16}
!81 = !{!"", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 32, !8, i64 36}
!82 = !{!81, !8, i64 36}
!83 = !{!70, !12, i64 104}
!84 = !{!53, !8, i64 20}
!85 = !{!70, !12, i64 96}
!86 = !{!70, !12, i64 88}
!87 = !{!70, !12, i64 112}
!88 = !{!89, !12, i64 0}
!89 = !{!"ForceExchangeDataSt", !12, i64 0, !12, i64 8}
!90 = !{!89, !12, i64 8}
!91 = !{!44, !12, i64 40}
!92 = !{!44, !12, i64 48}
!93 = !{!44, !12, i64 24}
!94 = !{!95, !12, i64 24}
!95 = !{!"InterpolationObjectSt", !8, i64 0, !15, i64 8, !15, i64 16, !12, i64 24}
!96 = !{!95, !8, i64 0}
!97 = !{!95, !15, i64 16}
!98 = !{!95, !15, i64 8}
!99 = !{!100, !8, i64 0}
!100 = !{!"", !8, i64 0, !15, i64 8, !15, i64 16}
!101 = !{!102, !8, i64 24}
!102 = !{!"HaloExchangeSt", !9, i64 0, !8, i64 24, !12, i64 32, !12, i64 40, !12, i64 48, !12, i64 56}
!103 = !{!102, !12, i64 32}
!104 = !{!102, !12, i64 40}
!105 = !{!102, !12, i64 48}
!106 = !{!102, !12, i64 56}
!107 = !{!44, !12, i64 8}
!108 = !{!44, !12, i64 16}
!109 = !{!44, !12, i64 32}
!110 = !{!111, !8, i64 0}
!111 = !{!"AtomMsgSt", !8, i64 0, !8, i64 4, !15, i64 8, !15, i64 16, !15, i64 24, !15, i64 32, !15, i64 40, !15, i64 48}
!112 = !{!111, !8, i64 4}
!113 = !{!111, !15, i64 8}
!114 = !{!111, !15, i64 16}
!115 = !{!111, !15, i64 24}
!116 = !{!111, !15, i64 32}
!117 = !{!111, !15, i64 40}
!118 = !{!111, !15, i64 48}
!119 = !{!120, !15, i64 0}
!120 = !{!"ForceMsgSt", !15, i64 0}
!121 = !{!122, !122, i64 0}
!122 = !{!"long", !9, i64 0}
!123 = !{!53, !8, i64 16}
!124 = !{!125, !12, i64 40}
!125 = !{!"LjPotentialSt", !15, i64 0, !15, i64 8, !15, i64 16, !9, i64 24, !9, i64 32, !8, i64 36, !12, i64 40, !12, i64 48, !12, i64 56, !15, i64 64, !15, i64 72}
!126 = !{!125, !12, i64 48}
!127 = !{!125, !12, i64 56}
!128 = !{!125, !15, i64 16}
!129 = !{!125, !8, i64 36}
!130 = !{!125, !15, i64 64}
!131 = !{!125, !15, i64 72}
!132 = !{!125, !15, i64 0}
!133 = !{!125, !15, i64 8}
!134 = !{!14, !8, i64 3104}
!135 = !{!14, !8, i64 3100}
!136 = !{!137, !122, i64 0}
!137 = !{!"timeval", !122, i64 0, !122, i64 8}
!138 = !{!137, !122, i64 8}
!139 = !{!140, !122, i64 0}
!140 = !{!"TimersSt", !122, i64 0, !122, i64 8, !122, i64 16, !122, i64 24, !8, i64 32, !8, i64 36, !15, i64 40, !15, i64 48, !15, i64 56, !15, i64 64}
!141 = !{!140, !122, i64 16}
!142 = !{!140, !122, i64 8}
!143 = !{!140, !122, i64 24}
!144 = !{!23, !12, i64 40}
