; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/miniAMR.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.block = type { i32, i32, i32, i32, i32, i32, i32, [6 x i32], [6 x i32], [6 x [2 x [2 x i32]]], [3 x i32], ptr }
%struct.parent = type { i32, i32, i32, i32, i32, i32, [8 x i32], [8 x i32], [3 x i32] }
%struct.sorted_block = type { i32, i32 }
%struct.object = type { i32, i32, [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double], [3 x double] }

@split_blocks.off = internal unnamed_addr constant [6 x i32] [i32 1, i32 -1, i32 2, i32 -2, i32 4, i32 -4], align 16
@.str = private unnamed_addr constant [37 x i8] c"ERROR: Need more blocks %d %d on %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [46 x i8] c"Error: No inactive blocks available %d %d %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [55 x i8] c"%d ERROR: internal misconnect block %d num %d c %d %d\0A\00", align 1
@.str.4 = private unnamed_addr constant [48 x i8] c"%d ERROR: misconnected b %d %d l %d nei[%d] %d\0A\00", align 1
@consolidate_blocks.side = internal unnamed_addr constant [6 x [2 x [2 x i32]]] [[2 x [2 x i32]] [[2 x i32] [i32 0, i32 2], [2 x i32] [i32 4, i32 6]], [2 x [2 x i32]] [[2 x i32] [i32 1, i32 3], [2 x i32] [i32 5, i32 7]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 4, i32 5]], [2 x [2 x i32]] [[2 x i32] [i32 2, i32 3], [2 x i32] [i32 6, i32 7]], [2 x [2 x i32]] [[2 x i32] [i32 0, i32 1], [2 x i32] [i32 2, i32 3]], [2 x [2 x i32]] [[2 x i32] [i32 4, i32 5], [2 x i32] [i32 6, i32 7]]], align 16
@.str.5 = private unnamed_addr constant [45 x i8] c"Out of free blocks in consolidate_blocks %d\0A\00", align 1
@.str.6 = private unnamed_addr constant [50 x i8] c"%d ERROR: %d con %d block %d c %d wrong level %d\0A\00", align 1
@.str.7 = private unnamed_addr constant [52 x i8] c"ERROR: del_sorted_list on %d - number %d not found\0A\00", align 1
@str = private unnamed_addr constant [25 x i8] c"ERROR: Need more parents\00", align 1
@__const.comm.permutations = private unnamed_addr constant [6 x [3 x i32]] [[3 x i32] [i32 0, i32 1, i32 2], [3 x i32] [i32 1, i32 2, i32 0], [3 x i32] [i32 2, i32 0, i32 1], [3 x i32] [i32 0, i32 2, i32 1], [3 x i32] [i32 1, i32 0, i32 2], [3 x i32] [i32 2, i32 1, i32 0]], align 16
@str.1 = private unnamed_addr constant [26 x i8] c"ERROR: misconnected block\00", align 1
@.str.8 = private unnamed_addr constant [44 x i8] c"%d var %d sum %lf old %lf diff %lf tol %lf\0A\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Time step %d sum %lf (old %lf) variable %d difference too large\0A\00", align 1
@next = internal unnamed_addr global i32 0, align 4
@table = internal unnamed_addr global [344 x i32] zeroinitializer, align 16
@.str.11 = private unnamed_addr constant [13 x i8] c"--max_blocks\00", align 1
@.str.1.12 = private unnamed_addr constant [16 x i8] c"--target_active\00", align 1
@.str.2.13 = private unnamed_addr constant [13 x i8] c"--target_max\00", align 1
@.str.3.14 = private unnamed_addr constant [13 x i8] c"--target_min\00", align 1
@.str.4.15 = private unnamed_addr constant [13 x i8] c"--num_refine\00", align 1
@.str.5.16 = private unnamed_addr constant [15 x i8] c"--block_change\00", align 1
@.str.6.17 = private unnamed_addr constant [17 x i8] c"--uniform_refine\00", align 1
@.str.7.18 = private unnamed_addr constant [5 x i8] c"--nx\00", align 1
@.str.8.19 = private unnamed_addr constant [5 x i8] c"--ny\00", align 1
@.str.9 = private unnamed_addr constant [5 x i8] c"--nz\00", align 1
@.str.10 = private unnamed_addr constant [11 x i8] c"--num_vars\00", align 1
@.str.11.20 = private unnamed_addr constant [12 x i8] c"--comm_vars\00", align 1
@.str.12 = private unnamed_addr constant [9 x i8] c"--init_x\00", align 1
@.str.13 = private unnamed_addr constant [9 x i8] c"--init_y\00", align 1
@.str.14 = private unnamed_addr constant [9 x i8] c"--init_z\00", align 1
@.str.15 = private unnamed_addr constant [14 x i8] c"--refine_freq\00", align 1
@.str.16 = private unnamed_addr constant [19 x i8] c"--report_diffusion\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"--error_tol\00", align 1
@.str.18 = private unnamed_addr constant [13 x i8] c"--num_tsteps\00", align 1
@.str.19 = private unnamed_addr constant [16 x i8] c"--stages_per_ts\00", align 1
@.str.20 = private unnamed_addr constant [16 x i8] c"--checksum_freq\00", align 1
@.str.21 = private unnamed_addr constant [10 x i8] c"--stencil\00", align 1
@.str.22 = private unnamed_addr constant [10 x i8] c"--permute\00", align 1
@.str.23 = private unnamed_addr constant [14 x i8] c"--report_perf\00", align 1
@.str.24 = private unnamed_addr constant [12 x i8] c"--plot_freq\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"--code\00", align 1
@.str.26 = private unnamed_addr constant [15 x i8] c"--refine_ghost\00", align 1
@.str.27 = private unnamed_addr constant [14 x i8] c"--num_objects\00", align 1
@.str.28 = private unnamed_addr constant [75 x i8] c"/src/llvm-test-suite/MultiSource/Benchmarks/DOE-ProxyApps-C/miniAMR/main.c\00", align 1
@.str.29 = private unnamed_addr constant [9 x i8] c"--object\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"--help\00", align 1
@.str.32 = private unnamed_addr constant [40 x i8] c"** Error ** Unknown input parameter %s\0A\00", align 1
@str.21 = private unnamed_addr constant [39 x i8] c"object number greater than num_objects\00", align 1
@str.83 = private unnamed_addr constant [48 x i8] c"(Optional) command line input is of the form: \0A\00", align 1
@str.84 = private unnamed_addr constant [34 x i8] c"--nx - block size x (even && > 0)\00", align 1
@str.85 = private unnamed_addr constant [34 x i8] c"--ny - block size y (even && > 0)\00", align 1
@str.86 = private unnamed_addr constant [34 x i8] c"--nz - block size z (even && > 0)\00", align 1
@str.87 = private unnamed_addr constant [37 x i8] c"--init_x - initial blocks in x (> 0)\00", align 1
@str.88 = private unnamed_addr constant [37 x i8] c"--init_y - initial blocks in y (> 0)\00", align 1
@str.89 = private unnamed_addr constant [37 x i8] c"--init_z - initial blocks in z (> 0)\00", align 1
@str.90 = private unnamed_addr constant [53 x i8] c"--reorder - ordering of blocks if initial number > 1\00", align 1
@str.91 = private unnamed_addr constant [49 x i8] c"--max_blocks - maximun number of blocks per core\00", align 1
@str.92 = private unnamed_addr constant [53 x i8] c"--num_refine - (>= 0) number of levels of refinement\00", align 1
@str.93 = private unnamed_addr constant [74 x i8] c"--block_change - (>= 0) number of levels a block can change in a timestep\00", align 1
@str.94 = private unnamed_addr constant [56 x i8] c"--uniform_refine - if 1, then grid is uniformly refined\00", align 1
@str.95 = private unnamed_addr constant [68 x i8] c"--refine_freq - frequency (in timesteps) of checking for refinement\00", align 1
@str.96 = private unnamed_addr constant [69 x i8] c"--target_active - (>= 0) target number of blocks per core, none if 0\00", align 1
@str.97 = private unnamed_addr constant [63 x i8] c"--target_max - (>= 0) max number of blocks per core, none if 0\00", align 1
@str.98 = private unnamed_addr constant [63 x i8] c"--target_min - (>= 0) min number of blocks per core, none if 0\00", align 1
@str.99 = private unnamed_addr constant [39 x i8] c"--num_vars - number of variables (> 0)\00", align 1
@str.100 = private unnamed_addr constant [53 x i8] c"--comm_vars - number of vars to communicate together\00", align 1
@str.101 = private unnamed_addr constant [41 x i8] c"--num_tsteps - number of timesteps (> 0)\00", align 1
@str.102 = private unnamed_addr constant [58 x i8] c"--stages_per_ts - number of comm/calc stages per timestep\00", align 1
@str.103 = private unnamed_addr constant [53 x i8] c"--checksum_freq - number of stages between checksums\00", align 1
@str.104 = private unnamed_addr constant [78 x i8] c"--stencil - 7 or 27 point (27 will not work with refinement (except uniform))\00", align 1
@str.105 = private unnamed_addr constant [39 x i8] c"--error_tol - (e^{-error_tol} ; >= 0) \00", align 1
@str.106 = private unnamed_addr constant [38 x i8] c"--report_diffusion - (>= 0) none if 0\00", align 1
@str.107 = private unnamed_addr constant [24 x i8] c"--report_perf - 0, 1, 2\00", align 1
@str.108 = private unnamed_addr constant [63 x i8] c"--refine_freq - frequency (timesteps) of plotting (0 for none)\00", align 1
@str.109 = private unnamed_addr constant [56 x i8] c"--code - closely minic communication of different codes\00", align 1
@str.110 = private unnamed_addr constant [75 x i8] c"         0 minimal sends, 1 send ghosts, 2 send ghosts and process on send\00", align 1
@str.111 = private unnamed_addr constant [50 x i8] c"--permute - altenates directions in communication\00", align 1
@str.112 = private unnamed_addr constant [94 x i8] c"--refine_ghost - use full extent of block (including ghosts) to determine if block is refined\00", align 1
@str.113 = private unnamed_addr constant [61 x i8] c"--num_objects - (>= 0) number of objects to cause refinement\00", align 1
@str.114 = private unnamed_addr constant [63 x i8] c"--object - type, position, movement, size, size rate of change\00", align 1
@str.115 = private unnamed_addr constant [56 x i8] c"All associated settings are integers except for objects\00", align 1
@str.116 = private unnamed_addr constant [75 x i8] c"WARNING: 27 point stencil with non-uniform refinement: answers may diverge\00", align 1
@str.117 = private unnamed_addr constant [24 x i8] c"code must be 0, 1, or 2\00", align 1
@str.118 = private unnamed_addr constant [26 x i8] c"illegal value for stencil\00", align 1
@str.119 = private unnamed_addr constant [58 x i8] c"number of processors used does not match number allocated\00", align 1
@str.120 = private unnamed_addr constant [37 x i8] c"number of variables must be positive\00", align 1
@str.122 = private unnamed_addr constant [49 x i8] c"number of refinement levels must be non-negative\00", align 1
@str.123 = private unnamed_addr constant [29 x i8] c"illegal value for target_min\00", align 1
@str.124 = private unnamed_addr constant [29 x i8] c"illegal value for target_max\00", align 1
@str.125 = private unnamed_addr constant [32 x i8] c"illegal value for target_active\00", align 1
@str.126 = private unnamed_addr constant [53 x i8] c"Only one of target_active and target_min can be used\00", align 1
@str.127 = private unnamed_addr constant [53 x i8] c"Only one of target_active and target_max can be used\00", align 1
@str.128 = private unnamed_addr constant [39 x i8] c"block size in z direction must be even\00", align 1
@str.129 = private unnamed_addr constant [39 x i8] c"block size in y direction must be even\00", align 1
@str.130 = private unnamed_addr constant [39 x i8] c"block size in x direction must be even\00", align 1
@str.131 = private unnamed_addr constant [28 x i8] c"block size must be positive\00", align 1
@str.132 = private unnamed_addr constant [32 x i8] c"max_num_blocks not large enough\00", align 1
@str.133 = private unnamed_addr constant [45 x i8] c"initial blocks on processor must be positive\00", align 1
@.str.30 = private unnamed_addr constant [21 x i8] c"undefined object %d\0A\00", align 1
@.str.33 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.1.34 = private unnamed_addr constant [16 x i8] c"%d %d %d %d %d\0A\00", align 1
@.str.2.35 = private unnamed_addr constant [4 x i8] c"%d\0A\00", align 1
@.str.3.36 = private unnamed_addr constant [13 x i8] c"%d %d %d %d\0A\00", align 1
@.str.43 = private unnamed_addr constant [16 x i8] c"1.0 provisional\00", align 1
@.str.1.39 = private unnamed_addr constant [13 x i8] c"results.yaml\00", align 1
@.str.2.40 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.3.41 = private unnamed_addr constant [15 x i8] c"code: miniAMR\0A\00", align 1
@.str.4.42 = private unnamed_addr constant [13 x i8] c"version: %s\0A\00", align 1
@.str.5.44 = private unnamed_addr constant [11 x i8] c"ranks: %d\0A\00", align 1
@.str.6.45 = private unnamed_addr constant [18 x i8] c"init_block_x: %d\0A\00", align 1
@.str.7.46 = private unnamed_addr constant [18 x i8] c"init_block_y: %d\0A\00", align 1
@.str.8.47 = private unnamed_addr constant [18 x i8] c"init_block_z: %d\0A\00", align 1
@.str.9.48 = private unnamed_addr constant [18 x i8] c"x_block_size: %d\0A\00", align 1
@.str.10.49 = private unnamed_addr constant [18 x i8] c"y_block_size: %d\0A\00", align 1
@.str.11.50 = private unnamed_addr constant [18 x i8] c"z_block_size: %d\0A\00", align 1
@.str.12.51 = private unnamed_addr constant [13 x i8] c"permute: %d\0A\00", align 1
@.str.13.52 = private unnamed_addr constant [24 x i8] c"max_blocks_allowed: %d\0A\00", align 1
@.str.14.53 = private unnamed_addr constant [10 x i8] c"code: %d\0A\00", align 1
@.str.15.54 = private unnamed_addr constant [16 x i8] c"num_refine: %d\0A\00", align 1
@.str.16.55 = private unnamed_addr constant [18 x i8] c"block_change: %d\0A\00", align 1
@.str.17.56 = private unnamed_addr constant [18 x i8] c"refine_ghost: %d\0A\00", align 1
@.str.18.57 = private unnamed_addr constant [20 x i8] c"uniform_refine: %d\0A\00", align 1
@.str.19.58 = private unnamed_addr constant [17 x i8] c"num_objects: %d\0A\00", align 1
@.str.20.59 = private unnamed_addr constant [15 x i8] c"obj%dtype: %d\0A\00", align 1
@.str.21.60 = private unnamed_addr constant [17 x i8] c"obj%dbounce: %d\0A\00", align 1
@.str.22.61 = private unnamed_addr constant [20 x i8] c"obj%dcenter_x: %lf\0A\00", align 1
@.str.23.62 = private unnamed_addr constant [20 x i8] c"obj%dcenter_y: %lf\0A\00", align 1
@.str.24.63 = private unnamed_addr constant [20 x i8] c"obj%dcenter_z: %lf\0A\00", align 1
@.str.25.64 = private unnamed_addr constant [18 x i8] c"obj%dmove_x: %lf\0A\00", align 1
@.str.26.65 = private unnamed_addr constant [18 x i8] c"obj%dmove_y: %lf\0A\00", align 1
@.str.27.66 = private unnamed_addr constant [18 x i8] c"obj%dmove_z: %lf\0A\00", align 1
@.str.28.67 = private unnamed_addr constant [18 x i8] c"obj%dsize_x: %lf\0A\00", align 1
@.str.29.68 = private unnamed_addr constant [18 x i8] c"obj%dsize_y: %lf\0A\00", align 1
@.str.30.69 = private unnamed_addr constant [18 x i8] c"obj%dsize_z: %lf\0A\00", align 1
@.str.31.70 = private unnamed_addr constant [17 x i8] c"obj%dinc_x: %lf\0A\00", align 1
@.str.32.71 = private unnamed_addr constant [17 x i8] c"obj%dinc_y: %lf\0A\00", align 1
@.str.33.72 = private unnamed_addr constant [17 x i8] c"obj%dinc_z: %lf\0A\00", align 1
@.str.34 = private unnamed_addr constant [16 x i8] c"num_tsteps: %d\0A\00", align 1
@.str.35 = private unnamed_addr constant [25 x i8] c"stages_per_timestep: %d\0A\00", align 1
@.str.36 = private unnamed_addr constant [19 x i8] c"checksum_freq: %d\0A\00", align 1
@.str.37 = private unnamed_addr constant [17 x i8] c"refine_freq: %d\0A\00", align 1
@.str.38 = private unnamed_addr constant [15 x i8] c"plot_freq: %d\0A\00", align 1
@.str.39 = private unnamed_addr constant [14 x i8] c"num_vars: %d\0A\00", align 1
@.str.40 = private unnamed_addr constant [13 x i8] c"stencil: %d\0A\00", align 1
@.str.41 = private unnamed_addr constant [15 x i8] c"comm_vars: %d\0A\00", align 1
@.str.42 = private unnamed_addr constant [15 x i8] c"error_tol: %d\0A\00", align 1
@.str.43.73 = private unnamed_addr constant [17 x i8] c"total_time: %lf\0A\00", align 1
@.str.44 = private unnamed_addr constant [18 x i8] c"memory_used: %lf\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"compute_time: %lf\0A\00", align 1
@.str.46 = private unnamed_addr constant [19 x i8] c"total_gflops: %lf\0A\00", align 1
@.str.47 = private unnamed_addr constant [17 x i8] c"ave_gflops: %lf\0A\00", align 1
@.str.48 = private unnamed_addr constant [17 x i8] c"total_comm: %lf\0A\00", align 1
@.str.49 = private unnamed_addr constant [25 x i8] c"   total_exch_same: %lf\0A\00", align 1
@.str.50 = private unnamed_addr constant [25 x i8] c"   total_exch_diff: %lf\0A\00", align 1
@.str.51 = private unnamed_addr constant [24 x i8] c"   total_apply_bc: %lf\0A\00", align 1
@.str.52 = private unnamed_addr constant [30 x i8] c"   total_face_exch_same: %lf\0A\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"   total_face_exch_diff: %lf\0A\00", align 1
@.str.54 = private unnamed_addr constant [29 x i8] c"   total_face_bc_apply: %lf\0A\00", align 1
@.str.55 = private unnamed_addr constant [16 x i8] c"   x_comm: %lf\0A\00", align 1
@.str.56 = private unnamed_addr constant [24 x i8] c"      x_exch_same: %lf\0A\00", align 1
@.str.57 = private unnamed_addr constant [24 x i8] c"      x_exch_diff: %lf\0A\00", align 1
@.str.58 = private unnamed_addr constant [23 x i8] c"      x_apply_bc: %lf\0A\00", align 1
@.str.59 = private unnamed_addr constant [29 x i8] c"      x_face_exch_same: %lf\0A\00", align 1
@.str.60 = private unnamed_addr constant [29 x i8] c"      x_face_exch_diff: %lf\0A\00", align 1
@.str.61 = private unnamed_addr constant [28 x i8] c"      x_face_bc_apply: %lf\0A\00", align 1
@.str.62 = private unnamed_addr constant [16 x i8] c"   y_comm: %lf\0A\00", align 1
@.str.63 = private unnamed_addr constant [24 x i8] c"      y_exch_same: %lf\0A\00", align 1
@.str.64 = private unnamed_addr constant [24 x i8] c"      y_exch_diff: %lf\0A\00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"      y_apply_bc: %lf\0A\00", align 1
@.str.66 = private unnamed_addr constant [29 x i8] c"      y_face_exch_same: %lf\0A\00", align 1
@.str.67 = private unnamed_addr constant [29 x i8] c"      y_face_exch_diff: %lf\0A\00", align 1
@.str.68 = private unnamed_addr constant [28 x i8] c"      y_face_bc_apply: %lf\0A\00", align 1
@.str.69 = private unnamed_addr constant [16 x i8] c"   z_comm: %lf\0A\00", align 1
@.str.70 = private unnamed_addr constant [24 x i8] c"      z_exch_same: %lf\0A\00", align 1
@.str.71 = private unnamed_addr constant [24 x i8] c"      z_exch_diff: %lf\0A\00", align 1
@.str.72 = private unnamed_addr constant [23 x i8] c"      z_apply_bc: %lf\0A\00", align 1
@.str.73 = private unnamed_addr constant [29 x i8] c"      z_face_exch_same: %lf\0A\00", align 1
@.str.74 = private unnamed_addr constant [29 x i8] c"      z_face_exch_diff: %lf\0A\00", align 1
@.str.75 = private unnamed_addr constant [28 x i8] c"      z_face_bc_apply: %lf\0A\00", align 1
@.str.76 = private unnamed_addr constant [19 x i8] c"gridsum_time: %lf\0A\00", align 1
@.str.77 = private unnamed_addr constant [22 x i8] c"   gridsum_calc: %lf\0A\00", align 1
@.str.78 = private unnamed_addr constant [18 x i8] c"refine_time: %lf\0A\00", align 1
@.str.79 = private unnamed_addr constant [25 x i8] c"   total_blocks_ts: %lf\0A\00", align 1
@.str.80 = private unnamed_addr constant [28 x i8] c"   total_blocks_ts_min: %d\0A\00", align 1
@.str.81 = private unnamed_addr constant [28 x i8] c"   total_blocks_ts_max: %d\0A\00", align 1
@.str.82 = private unnamed_addr constant [22 x i8] c"   blocks_split: %lf\0A\00", align 1
@.str.83 = private unnamed_addr constant [25 x i8] c"   blocks_reformed: %lf\0A\00", align 1
@.str.84 = private unnamed_addr constant [26 x i8] c"   time_compare_obj: %lf\0A\00", align 1
@.str.85 = private unnamed_addr constant [26 x i8] c"   time_mark_refine: %lf\0A\00", align 1
@.str.86 = private unnamed_addr constant [26 x i8] c"   time_split_block: %lf\0A\00", align 1
@.str.87 = private unnamed_addr constant [28 x i8] c"   time_total_coarsen: %lf\0A\00", align 1
@.str.88 = private unnamed_addr constant [19 x i8] c"   time_misc: %lf\0A\00", align 1
@.str.89 = private unnamed_addr constant [16 x i8] c"plot_time: %lf\0A\00", align 1
@.str.90 = private unnamed_addr constant [12 x i8] c"results.txt\00", align 1
@.str.91 = private unnamed_addr constant [54 x i8] c"\0A ================ Start report ===================\0A\0A\00", align 1
@.str.92 = private unnamed_addr constant [27 x i8] c"          Mantevo miniAMR\0A\00", align 1
@.str.93 = private unnamed_addr constant [23 x i8] c"          version %s\0A\0A\00", align 1
@.str.94 = private unnamed_addr constant [22 x i8] c"serial run on 1 rank\0A\00", align 1
@.str.95 = private unnamed_addr constant [38 x i8] c"initial blocks per rank %d x %d x %d\0A\00", align 1
@.str.96 = private unnamed_addr constant [25 x i8] c"block size %d x %d x %d\0A\00", align 1
@.str.97 = private unnamed_addr constant [29 x i8] c"Order of exchanges permuted\0A\00", align 1
@.str.98 = private unnamed_addr constant [41 x i8] c"Maximum number of blocks per rank is %d\0A\00", align 1
@.str.99 = private unnamed_addr constant [40 x i8] c"Target number of blocks per rank is %d\0A\00", align 1
@.str.100 = private unnamed_addr constant [44 x i8] c"Target max number of blocks per rank is %d\0A\00", align 1
@.str.101 = private unnamed_addr constant [44 x i8] c"Target min number of blocks per rank is %d\0A\00", align 1
@.str.102 = private unnamed_addr constant [21 x i8] c"Code set to code %d\0A\00", align 1
@.str.103 = private unnamed_addr constant [38 x i8] c"Number of levels of refinement is %d\0A\00", align 1
@.str.104 = private unnamed_addr constant [52 x i8] c"Blocks can change by %d levels per refinement step\0A\00", align 1
@.str.105 = private unnamed_addr constant [56 x i8] c"Ghost cells will be used determine is block is refined\0A\00", align 1
@.str.106 = private unnamed_addr constant [35 x i8] c"\0ABlocks will be uniformly refined\0A\00", align 1
@.str.107 = private unnamed_addr constant [40 x i8] c"\0ABlocks will be refined by %d objects\0A\0A\00", align 1
@.str.108 = private unnamed_addr constant [41 x i8] c"Object %d is the surface of a rectangle\0A\00", align 1
@.str.109 = private unnamed_addr constant [40 x i8] c"Object %d is the volume of a rectangle\0A\00", align 1
@.str.110 = private unnamed_addr constant [40 x i8] c"Object %d is the surface of a spheroid\0A\00", align 1
@.str.111 = private unnamed_addr constant [39 x i8] c"Object %d is the volume of a spheroid\0A\00", align 1
@.str.112 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of x+ hemispheroid\0A\00", align 1
@.str.113 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of x+ hemispheroid\0A\00", align 1
@.str.114 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of x- hemispheroid\0A\00", align 1
@.str.115 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of x- hemispheroid\0A\00", align 1
@.str.116 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of y+ hemispheroid\0A\00", align 1
@.str.117 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of y+ hemispheroid\0A\00", align 1
@.str.118 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of y- hemispheroid\0A\00", align 1
@.str.119 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of y- hemispheroid\0A\00", align 1
@.str.120 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of z+ hemispheroid\0A\00", align 1
@.str.121 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of z+ hemispheroid\0A\00", align 1
@.str.122 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of z- hemispheroid\0A\00", align 1
@.str.123 = private unnamed_addr constant [44 x i8] c"Object %d is the volume of z- hemispheroid\0A\00", align 1
@.str.124 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of x axis cylinder\0A\00", align 1
@.str.125 = private unnamed_addr constant [44 x i8] c"Object %d is the volune of x axis cylinder\0A\00", align 1
@.str.126 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of y axis cylinder\0A\00", align 1
@.str.127 = private unnamed_addr constant [44 x i8] c"Object %d is the volune of y axis cylinder\0A\00", align 1
@.str.128 = private unnamed_addr constant [45 x i8] c"Object %d is the surface of z axis cylinder\0A\00", align 1
@.str.129 = private unnamed_addr constant [44 x i8] c"Object %d is the volune of z axis cylinder\0A\00", align 1
@.str.130 = private unnamed_addr constant [22 x i8] c"Oject may leave mesh\0A\00", align 1
@.str.131 = private unnamed_addr constant [39 x i8] c"Oject center will bounce off of walls\0A\00", align 1
@.str.132 = private unnamed_addr constant [32 x i8] c"Center starting at %lf %lf %lf\0A\00", align 1
@.str.133 = private unnamed_addr constant [27 x i8] c"Center end at %lf %lf %lf\0A\00", align 1
@.str.134 = private unnamed_addr constant [36 x i8] c"Moving at %lf %lf %lf per timestep\0A\00", align 1
@.str.135 = private unnamed_addr constant [52 x i8] c"   Rate relative to smallest cell size %lf %lf %lf\0A\00", align 1
@.str.136 = private unnamed_addr constant [26 x i8] c"Initial size %lf %lf %lf\0A\00", align 1
@.str.137 = private unnamed_addr constant [24 x i8] c"Final size %lf %lf %lf\0A\00", align 1
@.str.138 = private unnamed_addr constant [42 x i8] c"Size increasing %lf %lf %lf per timestep\0A\00", align 1
@.str.139 = private unnamed_addr constant [53 x i8] c"   Rate relative to smallest cell size %lf %lf %lf\0A\0A\00", align 1
@.str.140 = private unnamed_addr constant [28 x i8] c"\0ANumber of timesteps is %d\0A\00", align 1
@.str.141 = private unnamed_addr constant [52 x i8] c"Communicaion/computation stages per timestep is %d\0A\00", align 1
@.str.142 = private unnamed_addr constant [40 x i8] c"Will perform checksums every %d stages\0A\00", align 1
@.str.143 = private unnamed_addr constant [32 x i8] c"Will refine every %d timesteps\0A\00", align 1
@.str.144 = private unnamed_addr constant [38 x i8] c"Will plot results every %d timesteps\0A\00", align 1
@.str.145 = private unnamed_addr constant [23 x i8] c"Will not plot results\0A\00", align 1
@.str.146 = private unnamed_addr constant [49 x i8] c"Calculate on %d variables with %d point stencil\0A\00", align 1
@.str.147 = private unnamed_addr constant [36 x i8] c"Communicate %d variables at a time\0A\00", align 1
@.str.148 = private unnamed_addr constant [47 x i8] c"Error tolorance for variable sums is 10^(-%d)\0A\00", align 1
@.str.149 = private unnamed_addr constant [35 x i8] c"\0ATotal time for test: (sec): %lf\0A\0A\00", align 1
@.str.150 = private unnamed_addr constant [30 x i8] c"\0ANumber of malloc calls: %lf\0A\00", align 1
@.str.151 = private unnamed_addr constant [23 x i8] c"\0AAmount malloced: %lf\0A\00", align 1
@.str.152 = private unnamed_addr constant [47 x i8] c"---------------------------------------------\0A\00", align 1
@.str.153 = private unnamed_addr constant [37 x i8] c"          Computational Performance\0A\00", align 1
@.str.154 = private unnamed_addr constant [48 x i8] c"---------------------------------------------\0A\0A\00", align 1
@.str.155 = private unnamed_addr constant [46 x i8] c"     Time: ave, stddev, min, max (sec): %lf\0A\0A\00", align 1
@.str.156 = private unnamed_addr constant [36 x i8] c"     total GFLOPS:             %lf\0A\00", align 1
@.str.157 = private unnamed_addr constant [37 x i8] c"     Average GFLOPS per rank:  %lf\0A\0A\00", align 1
@.str.158 = private unnamed_addr constant [37 x i8] c"     Total floating point ops: %lf\0A\0A\00", align 1
@.str.159 = private unnamed_addr constant [36 x i8] c"        Adds:                  %lf\0A\00", align 1
@.str.160 = private unnamed_addr constant [37 x i8] c"        Divides:               %lf\0A\0A\00", align 1
@.str.161 = private unnamed_addr constant [37 x i8] c"           Interblock communication\0A\00", align 1
@.str.162 = private unnamed_addr constant [24 x i8] c"\0ATotal communication:\0A\0A\00", align 1
@.str.163 = private unnamed_addr constant [41 x i8] c"\0AX direction communication statistics:\0A\0A\00", align 1
@.str.164 = private unnamed_addr constant [41 x i8] c"\0AY direction communication statistics:\0A\0A\00", align 1
@.str.165 = private unnamed_addr constant [41 x i8] c"\0AZ direction communication statistics:\0A\0A\00", align 1
@.str.166 = private unnamed_addr constant [67 x i8] c"                              average    stddev  minimum  maximum\0A\00", align 1
@.str.167 = private unnamed_addr constant [35 x i8] c"     Total time             : %lf\0A\00", align 1
@.str.168 = private unnamed_addr constant [35 x i8] c"     Exchange same level    : %lf\0A\00", align 1
@.str.169 = private unnamed_addr constant [35 x i8] c"     Exchange diff level    : %lf\0A\00", align 1
@.str.170 = private unnamed_addr constant [35 x i8] c"     Apply BC               : %lf\0A\00", align 1
@.str.171 = private unnamed_addr constant [35 x i8] c"     Faces exchanged same   : %lf\0A\00", align 1
@.str.172 = private unnamed_addr constant [35 x i8] c"     Faces exchanged diff   : %lf\0A\00", align 1
@.str.173 = private unnamed_addr constant [35 x i8] c"     Faces with BC applied  : %lf\0A\00", align 1
@.str.174 = private unnamed_addr constant [48 x i8] c"\0A---------------------------------------------\0A\00", align 1
@.str.175 = private unnamed_addr constant [34 x i8] c"             Gridsum performance\0A\00", align 1
@.str.176 = private unnamed_addr constant [49 x i8] c"        calc: ave, stddev, min, max (sec): %lf\0A\0A\00", align 1
@.str.177 = private unnamed_addr constant [35 x i8] c"     total number:             %d\0A\00", align 1
@.str.178 = private unnamed_addr constant [36 x i8] c"     number per timestep:      %d\0A\0A\00", align 1
@.str.179 = private unnamed_addr constant [32 x i8] c"               Mesh Refinement\0A\00", align 1
@.str.180 = private unnamed_addr constant [38 x i8] c"     Number of refinement steps: %d\0A\0A\00", align 1
@.str.181 = private unnamed_addr constant [35 x i8] c"     Total blocks           : %ld\0A\00", align 1
@.str.182 = private unnamed_addr constant [48 x i8] c"     Blocks/timestep ave, min, max : %lf %d %d\0A\00", align 1
@.str.183 = private unnamed_addr constant [48 x i8] c"     Max blocks on a processor at any time: %d\0A\00", align 1
@.str.184 = private unnamed_addr constant [35 x i8] c"     total blocks split     : %lf\0A\00", align 1
@.str.185 = private unnamed_addr constant [36 x i8] c"     total blocks reformed  : %lf\0A\0A\00", align 1
@.str.186 = private unnamed_addr constant [12 x i8] c"     Time:\0A\00", align 1
@.str.187 = private unnamed_addr constant [35 x i8] c"        compare objects     : %lf\0A\00", align 1
@.str.188 = private unnamed_addr constant [35 x i8] c"        mark refine/coarsen : %lf\0A\00", align 1
@.str.189 = private unnamed_addr constant [35 x i8] c"        split blocks        : %lf\0A\00", align 1
@.str.190 = private unnamed_addr constant [35 x i8] c"        total coarsen blocks: %lf\0A\00", align 1
@.str.191 = private unnamed_addr constant [35 x i8] c"        misc time           : %lf\0A\00", align 1
@.str.192 = private unnamed_addr constant [35 x i8] c"        total target active : %lf\0A\00", align 1
@.str.193 = private unnamed_addr constant [35 x i8] c"          reduce blocks     : %lf\0A\00", align 1
@.str.194 = private unnamed_addr constant [35 x i8] c"            decide and comm : %lf\0A\00", align 1
@.str.195 = private unnamed_addr constant [35 x i8] c"            coarsen blocks  : %lf\0A\00", align 1
@.str.196 = private unnamed_addr constant [35 x i8] c"          add blocks        : %lf\0A\00", align 1
@.str.197 = private unnamed_addr constant [35 x i8] c"            split blocks    : %lf\0A\00", align 1
@.str.198 = private unnamed_addr constant [25 x i8] c"                   Plot\0A\00", align 1
@.str.199 = private unnamed_addr constant [31 x i8] c"     Number of plot steps: %d\0A\00", align 1
@.str.200 = private unnamed_addr constant [53 x i8] c"\0A ================== End report ===================\0A\00", align 1
@str.74 = private unnamed_addr constant [53 x i8] c"\0A ================ Start report ===================\0A\00", align 1
@str.201 = private unnamed_addr constant [26 x i8] c"          Mantevo miniAMR\00", align 1
@str.202 = private unnamed_addr constant [21 x i8] c"serial run on 1 rank\00", align 1
@str.203 = private unnamed_addr constant [22 x i8] c"Will not plot results\00", align 1
@str.204 = private unnamed_addr constant [38 x i8] c"Oject center will bounce off of walls\00", align 1
@str.205 = private unnamed_addr constant [21 x i8] c"Oject may leave mesh\00", align 1
@str.206 = private unnamed_addr constant [34 x i8] c"\0ABlocks will be uniformly refined\00", align 1
@str.207 = private unnamed_addr constant [55 x i8] c"Ghost cells will be used determine is block is refined\00", align 1
@str.208 = private unnamed_addr constant [28 x i8] c"Order of exchanges permuted\00", align 1
@switch.table.profile.209 = private unnamed_addr constant [26 x ptr] [ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr @.str.120, ptr @.str.121, ptr @.str.122, ptr @.str.123, ptr @.str.108, ptr @.str.108, ptr @.str.108, ptr @.str.108, ptr @.str.124, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129], align 8
@.str.201 = private unnamed_addr constant [53 x i8] c"Number of blocks at level %d before target %d is %d\0A\00", align 1
@.str.2.202 = private unnamed_addr constant [51 x i8] c"Number of blocks at level %d at timestep %d is %d\0A\00", align 1
@.str.213 = private unnamed_addr constant [43 x i8] c"NULL pointer from malloc call in %s at %d\0A\00", align 1
@counter_malloc = internal global i32 0, align 4
@size_malloc = internal global double 0.000000e+00, align 8
@blocks = internal global ptr null, align 8
@parents = internal global ptr null, align 8
@sorted_list = internal global ptr null, align 8
@sorted_index = internal global ptr null, align 8
@my_pe = internal global i32 0, align 4
@num_pes = internal global i32 0, align 4
@max_num_blocks = internal global i32 0, align 4
@target_active = internal global i32 0, align 4
@target_max = internal global i32 0, align 4
@target_min = internal global i32 0, align 4
@num_refine = internal global i32 0, align 4
@uniform_refine = internal global i32 0, align 4
@x_block_size = internal global i32 0, align 4
@y_block_size = internal global i32 0, align 4
@z_block_size = internal global i32 0, align 4
@num_vars = internal global i32 0, align 4
@comm_vars = internal global i32 0, align 4
@init_block_x = internal global i32 0, align 4
@init_block_y = internal global i32 0, align 4
@init_block_z = internal global i32 0, align 4
@reorder = internal global i32 0, align 4
@npx = internal global i32 0, align 4
@npy = internal global i32 0, align 4
@npz = internal global i32 0, align 4
@inbalance = internal global i32 0, align 4
@refine_freq = internal global i32 0, align 4
@report_diffusion = internal global i32 0, align 4
@checksum_freq = internal global i32 0, align 4
@stages_per_ts = internal global i32 0, align 4
@error_tol = internal global i32 0, align 4
@num_tsteps = internal global i32 0, align 4
@stencil = internal global i32 0, align 4
@report_perf = internal global i32 0, align 4
@plot_freq = internal global i32 0, align 4
@lb_opt = internal global i32 0, align 4
@block_change = internal global i32 0, align 4
@code = internal global i32 0, align 4
@permute = internal global i32 0, align 4
@nonblocking = internal global i32 0, align 4
@refine_ghost = internal global i32 0, align 4
@max_num_parents = internal global i32 0, align 4
@num_parents = internal global i32 0, align 4
@max_active_parent = internal global i32 0, align 4
@cur_max_level = internal global i32 0, align 4
@num_blocks = internal global ptr null, align 8
@block_start = internal global ptr null, align 8
@num_active = internal global i32 0, align 4
@max_active_block = internal global i32 0, align 4
@global_active = internal global i32 0, align 4
@x_block_half = internal global i32 0, align 4
@y_block_half = internal global i32 0, align 4
@z_block_half = internal global i32 0, align 4
@tol = internal global double 0.000000e+00, align 8
@grid_sum = internal global ptr null, align 8
@p8 = internal global ptr null, align 8
@p2 = internal global ptr null, align 8
@mesh_size = internal global [3 x i32] zeroinitializer, align 4
@local_max_b = internal global i32 0, align 4
@global_max_b = internal global i32 0, align 4
@num_objects = internal global i32 0, align 4
@objects = internal global ptr null, align 8
@average = internal global [128 x double] zeroinitializer, align 16
@timer_all = internal global double 0.000000e+00, align 8
@timer_comm_all = internal global double 0.000000e+00, align 8
@timer_comm_dir = internal global [3 x double] zeroinitializer, align 16
@timer_comm_same = internal global [3 x double] zeroinitializer, align 16
@timer_comm_diff = internal global [3 x double] zeroinitializer, align 16
@timer_comm_bc = internal global [3 x double] zeroinitializer, align 16
@timer_calc_all = internal global double 0.000000e+00, align 8
@timer_cs_all = internal global double 0.000000e+00, align 8
@timer_cs_calc = internal global double 0.000000e+00, align 8
@timer_refine_all = internal global double 0.000000e+00, align 8
@timer_refine_co = internal global double 0.000000e+00, align 8
@timer_refine_mr = internal global double 0.000000e+00, align 8
@timer_refine_sb = internal global double 0.000000e+00, align 8
@timer_refine_cc = internal global double 0.000000e+00, align 8
@timer_cb_all = internal global double 0.000000e+00, align 8
@timer_target_all = internal global double 0.000000e+00, align 8
@timer_target_rb = internal global double 0.000000e+00, align 8
@timer_target_dc = internal global double 0.000000e+00, align 8
@timer_target_cb = internal global double 0.000000e+00, align 8
@timer_target_ab = internal global double 0.000000e+00, align 8
@timer_target_da = internal global double 0.000000e+00, align 8
@timer_target_sb = internal global double 0.000000e+00, align 8
@timer_plot = internal global double 0.000000e+00, align 8
@total_blocks = internal global i64 0, align 8
@nb_min = internal global i32 0, align 4
@nb_max = internal global i32 0, align 4
@nrs = internal global i32 0, align 4
@nps = internal global i32 0, align 4
@num_refined = internal global i32 0, align 4
@num_reformed = internal global i32 0, align 4
@counter_bc = internal global [3 x i32] zeroinitializer, align 4
@counter_same = internal global [3 x i32] zeroinitializer, align 4
@counter_diff = internal global [3 x i32] zeroinitializer, align 4
@counter_malloc_init = internal global i32 0, align 4
@size_malloc_init = internal global double 0.000000e+00, align 8
@total_red = internal global i32 0, align 4
@from = internal global [8 x i8] zeroinitializer, align 8
@max_mesh_size = internal global [4 x i8] zeroinitializer, align 4
@maximum = internal global [1024 x i8] zeroinitializer, align 16
@minimum = internal global [1024 x i8] zeroinitializer, align 16
@msg_len = internal global [48 x i8] zeroinitializer, align 16
@stddev = internal global [1024 x i8] zeroinitializer, align 16
@to = internal global [8 x i8] zeroinitializer, align 8

; Function Attrs: nounwind optsize uwtable
define internal void @split_blocks() #0 {
  %1 = alloca [8 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %1) #21
  %2 = load i32, ptr @cur_max_level, align 4, !tbaa !7
  %3 = icmp slt i32 %2, 0
  br i1 %3, label %483, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @max_active_block, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %476, %4
  %7 = phi i32 [ %2, %4 ], [ %477, %476 ]
  %8 = phi i32 [ %5, %4 ], [ %478, %476 ]
  %9 = phi i32 [ %5, %4 ], [ %479, %476 ]
  %10 = phi i64 [ 0, %4 ], [ %14, %476 ]
  %11 = phi i32 [ 0, %4 ], [ %480, %476 ]
  %12 = trunc i64 %10 to i32
  %13 = icmp sgt i32 %9, 0
  %14 = add nuw nsw i64 %10, 1
  br i1 %13, label %15, label %476

15:                                               ; preds = %6
  %16 = xor i32 %12, -1
  %17 = load ptr, ptr @blocks, align 8, !tbaa !11
  %18 = trunc i64 %14 to i32
  %19 = trunc i64 %10 to i32
  %20 = add i32 %19, -1
  br label %21

21:                                               ; preds = %467, %15
  %22 = phi i32 [ %8, %15 ], [ %468, %467 ]
  %23 = phi ptr [ %17, %15 ], [ %469, %467 ]
  %24 = phi i64 [ 0, %15 ], [ %471, %467 ]
  %25 = phi i32 [ %11, %15 ], [ %470, %467 ]
  %26 = getelementptr inbounds %struct.block, ptr %23, i64 %24
  %27 = load i32, ptr %26, align 8, !tbaa !13
  %28 = icmp sgt i32 %27, -1
  br i1 %28, label %29, label %467

29:                                               ; preds = %21
  %30 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !15
  %32 = zext i32 %31 to i64
  %33 = icmp eq i64 %10, %32
  br i1 %33, label %34, label %467

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 2
  %36 = load i32, ptr %35, align 8, !tbaa !16
  %37 = icmp eq i32 %36, 1
  br i1 %37, label %38, label %467

38:                                               ; preds = %34
  %39 = load ptr, ptr @block_start, align 8, !tbaa !11
  %40 = getelementptr inbounds i32, ptr %39, i64 %10
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = sub nsw i32 %27, %41
  %43 = load ptr, ptr @p2, align 8, !tbaa !11
  %44 = getelementptr inbounds i32, ptr %43, i64 %10
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = load i32, ptr @npx, align 4, !tbaa !7
  %47 = mul nsw i32 %46, %45
  %48 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %49 = mul nsw i32 %47, %48
  %50 = load i32, ptr @npy, align 4, !tbaa !7
  %51 = mul nsw i32 %50, %45
  %52 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %53 = mul i32 %51, %49
  %54 = mul i32 %53, %52
  %55 = sdiv i32 %42, %54
  %56 = srem i32 %42, %54
  %57 = sdiv i32 %56, %49
  %58 = srem i32 %42, %49
  %59 = load i32, ptr @num_active, align 4, !tbaa !7
  %60 = add nsw i32 %59, 8
  %61 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %62 = icmp sgt i32 %60, %61
  br i1 %62, label %63, label %66

63:                                               ; preds = %38
  %.lcssa18 = phi i32 [ %59, %38 ]
  %.lcssa13 = phi i32 [ %61, %38 ]
  %64 = load i32, ptr @my_pe, align 4, !tbaa !7
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %.lcssa18, i32 noundef %.lcssa13, i32 noundef %64) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

66:                                               ; preds = %38
  %67 = load i32, ptr @local_max_b, align 4, !tbaa !7
  %68 = icmp sgt i32 %60, %67
  br i1 %68, label %69, label %71

69:                                               ; preds = %66
  store i32 %60, ptr @local_max_b, align 4, !tbaa !7
  %70 = load i32, ptr %26, align 8, !tbaa !13
  br label %71

71:                                               ; preds = %69, %66
  %72 = phi i32 [ %70, %69 ], [ %27, %66 ]
  tail call void @del_sorted_list(i32 noundef %72, i32 noundef %12) #22
  %73 = load i32, ptr @num_active, align 4, !tbaa !7
  %74 = add nsw i32 %73, 7
  store i32 %74, ptr @num_active, align 4, !tbaa !7
  %75 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  %76 = getelementptr inbounds i32, ptr %75, i64 %10
  %77 = load <2 x i32>, ptr %76, align 4, !tbaa !7
  %78 = add nsw <2 x i32> %77, <i32 -1, i32 8>
  store <2 x i32> %78, ptr %76, align 4, !tbaa !7
  %79 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %80 = icmp sgt i32 %79, 0
  br i1 %80, label %81, label %94

81:                                               ; preds = %71
  %82 = load ptr, ptr @parents, align 8, !tbaa !11
  %83 = zext i32 %79 to i64
  br label %84

84:                                               ; preds = %89, %81
  %85 = phi i64 [ 0, %81 ], [ %90, %89 ]
  %86 = getelementptr inbounds %struct.parent, ptr %82, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !17
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = add nuw nsw i64 %85, 1
  %91 = icmp eq i64 %90, %83
  br i1 %91, label %94, label %84, !llvm.loop !19

92:                                               ; preds = %84
  %.lcssa = phi i64 [ %85, %84 ]
  %93 = trunc i64 %.lcssa to i32
  br label %94

94:                                               ; preds = %92, %89, %71
  %95 = phi i32 [ 0, %71 ], [ %93, %92 ], [ %79, %89 ]
  %96 = load i32, ptr @max_num_parents, align 4, !tbaa !7
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %100

98:                                               ; preds = %94
  %99 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef -1) #23
  unreachable

100:                                              ; preds = %94
  %101 = icmp eq i32 %95, %79
  br i1 %101, label %102, label %104

102:                                              ; preds = %100
  %103 = add nsw i32 %79, 1
  store i32 %103, ptr @max_active_parent, align 4, !tbaa !7
  br label %104

104:                                              ; preds = %102, %100
  %105 = load i32, ptr @num_parents, align 4, !tbaa !7
  %106 = add nsw i32 %105, 1
  store i32 %106, ptr @num_parents, align 4, !tbaa !7
  %107 = load i32, ptr @num_refined, align 4, !tbaa !7
  %108 = add nsw i32 %107, 1
  store i32 %108, ptr @num_refined, align 4, !tbaa !7
  %109 = load ptr, ptr @parents, align 8, !tbaa !11
  %110 = zext i32 %95 to i64
  %111 = getelementptr inbounds %struct.parent, ptr %109, i64 %110
  %112 = load <2 x i32>, ptr %26, align 8, !tbaa !7
  %113 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 4
  %114 = load <2 x i32>, ptr %113, align 8, !tbaa !7
  %115 = shufflevector <2 x i32> %112, <2 x i32> %114, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x i32> %115, ptr %111, align 4, !tbaa !7
  %116 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 6
  %117 = load i32, ptr %116, align 8, !tbaa !21
  %118 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 4
  store i32 %117, ptr %118, align 4, !tbaa !22
  %119 = xor i32 %95, -1
  %120 = extractelement <2 x i32> %114, i64 0
  %121 = sext i32 %120 to i64
  %122 = sext i32 %117 to i64
  %123 = getelementptr inbounds %struct.parent, ptr %109, i64 %121, i32 6, i64 %122
  store i32 %119, ptr %123, align 4, !tbaa !7
  %124 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 5
  store i32 0, ptr %124, align 4, !tbaa !23
  %125 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 10
  %126 = load i32, ptr %125, align 4, !tbaa !7
  %127 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 8
  store i32 %126, ptr %127, align 4, !tbaa !7
  %128 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 10, i64 1
  %129 = load i32, ptr %128, align 4, !tbaa !7
  %130 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 8, i64 1
  store i32 %129, ptr %130, align 4, !tbaa !7
  %131 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 10, i64 2
  %132 = load i32, ptr %131, align 4, !tbaa !7
  %133 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 8, i64 2
  store i32 %132, ptr %133, align 4, !tbaa !7
  %134 = shl nsw i32 %55, 1
  %135 = shl nsw i32 %57, 1
  %136 = shl nsw i32 %58, 1
  %137 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 11
  br label %140

138:                                              ; preds = %334
  %.lcssa4 = phi i32 [ %160, %334 ]
  %139 = load ptr, ptr @blocks, align 8
  br label %337

140:                                              ; preds = %334, %104
  %141 = phi i64 [ 0, %104 ], [ %335, %334 ]
  %142 = phi i32 [ %25, %104 ], [ %160, %334 ]
  %143 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %144 = icmp slt i32 %142, %143
  br i1 %144, label %145, label %159

145:                                              ; preds = %140
  %146 = load ptr, ptr @blocks, align 8, !tbaa !11
  %147 = sext i32 %142 to i64
  %148 = sext i32 %143 to i64
  br label %149

149:                                              ; preds = %154, %145
  %150 = phi i64 [ %147, %145 ], [ %155, %154 ]
  %151 = getelementptr inbounds %struct.block, ptr %146, i64 %150
  %152 = load i32, ptr %151, align 8, !tbaa !13
  %153 = icmp slt i32 %152, 0
  br i1 %153, label %157, label %154

154:                                              ; preds = %149
  %155 = add nsw i64 %150, 1
  %156 = icmp eq i64 %155, %148
  br i1 %156, label %162, label %149, !llvm.loop !24

157:                                              ; preds = %149
  %.lcssa1 = phi i64 [ %150, %149 ]
  %158 = trunc i64 %.lcssa1 to i32
  br label %159

159:                                              ; preds = %157, %140
  %160 = phi i32 [ %142, %140 ], [ %158, %157 ]
  %161 = icmp eq i32 %160, %143
  br i1 %161, label %162, label %165

162:                                              ; preds = %159, %154
  %.lcssa2 = phi i32 [ %143, %159 ], [ %143, %154 ]
  %163 = load i32, ptr @num_active, align 4, !tbaa !7
  %164 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, i32 noundef %.lcssa2, i32 noundef %163, i32 noundef %.lcssa2) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

165:                                              ; preds = %159
  %166 = load i32, ptr @max_active_block, align 4, !tbaa !7
  %167 = icmp slt i32 %160, %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %165
  %169 = add nsw i32 %160, 1
  store i32 %169, ptr @max_active_block, align 4, !tbaa !7
  br label %170

170:                                              ; preds = %168, %165
  %171 = load ptr, ptr @blocks, align 8, !tbaa !11
  %172 = sext i32 %160 to i64
  %173 = getelementptr inbounds %struct.block, ptr %171, i64 %172
  %174 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %141
  store i32 %160, ptr %174, align 4, !tbaa !7
  %175 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 6, i64 %141
  store i32 %160, ptr %175, align 4, !tbaa !7
  %176 = load i32, ptr @my_pe, align 4, !tbaa !7
  %177 = getelementptr inbounds %struct.parent, ptr %109, i64 %110, i32 7, i64 %141
  store i32 %176, ptr %177, align 4, !tbaa !7
  %178 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 2
  store i32 0, ptr %178, align 8, !tbaa !16
  %179 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 1
  store i32 %18, ptr %179, align 4, !tbaa !15
  %180 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 4
  store i32 %95, ptr %180, align 8, !tbaa !25
  %181 = load i32, ptr @my_pe, align 4, !tbaa !7
  %182 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 5
  store i32 %181, ptr %182, align 4, !tbaa !26
  %183 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 6
  %184 = trunc i64 %141 to i32
  store i32 %184, ptr %183, align 8, !tbaa !21
  %185 = and i32 %184, 1
  %186 = lshr i32 %184, 1
  %187 = and i32 %186, 1
  %188 = lshr i32 %184, 2
  %189 = add nsw i32 %188, %134
  %190 = load ptr, ptr @p2, align 8, !tbaa !11
  %191 = getelementptr inbounds i32, ptr %190, i64 %14
  %192 = load i32, ptr %191, align 4, !tbaa !7
  %193 = load i32, ptr @npy, align 4, !tbaa !7
  %194 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %195 = mul i32 %192, %189
  %196 = mul i32 %195, %193
  %197 = mul i32 %196, %194
  %198 = or i32 %187, %135
  %199 = add nsw i32 %198, %197
  %200 = load i32, ptr @npx, align 4, !tbaa !7
  %201 = mul nsw i32 %200, %192
  %202 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %203 = mul nsw i32 %201, %202
  %204 = mul nsw i32 %203, %199
  %205 = load ptr, ptr @block_start, align 8, !tbaa !11
  %206 = getelementptr inbounds i32, ptr %205, i64 %14
  %207 = load i32, ptr %206, align 4, !tbaa !7
  %208 = or i32 %185, %136
  %209 = add i32 %208, %204
  %210 = add nsw i32 %209, %207
  store i32 %210, ptr %173, align 8, !tbaa !13
  tail call void @add_sorted_list(i32 noundef %160, i32 noundef %210, i32 noundef %18) #22
  %211 = load i32, ptr %125, align 4, !tbaa !7
  %212 = shl nuw nsw i32 %185, 1
  %213 = add nsw i32 %212, -1
  %214 = load ptr, ptr @p2, align 8, !tbaa !11
  %215 = load i32, ptr @num_refine, align 4, !tbaa !7
  %216 = add i32 %215, %16
  %217 = sext i32 %216 to i64
  %218 = getelementptr inbounds i32, ptr %214, i64 %217
  %219 = load i32, ptr %218, align 4, !tbaa !7
  %220 = mul nsw i32 %219, %213
  %221 = add nsw i32 %220, %211
  %222 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 10
  store i32 %221, ptr %222, align 4, !tbaa !7
  %223 = load i32, ptr %128, align 4, !tbaa !7
  %224 = shl nuw nsw i32 %187, 1
  %225 = add nsw i32 %224, -1
  %226 = load i32, ptr @num_refine, align 4, !tbaa !7
  %227 = add i32 %226, %16
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds i32, ptr %214, i64 %228
  %230 = load i32, ptr %229, align 4, !tbaa !7
  %231 = mul nsw i32 %230, %225
  %232 = add nsw i32 %231, %223
  %233 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 10, i64 1
  store i32 %232, ptr %233, align 4, !tbaa !7
  %234 = load i32, ptr %131, align 4, !tbaa !7
  %235 = shl nuw nsw i32 %188, 1
  %236 = add nsw i32 %235, -1
  %237 = load i32, ptr @num_refine, align 4, !tbaa !7
  %238 = add i32 %237, %16
  %239 = sext i32 %238 to i64
  %240 = getelementptr inbounds i32, ptr %214, i64 %239
  %241 = load i32, ptr %240, align 4, !tbaa !7
  %242 = mul nsw i32 %241, %236
  %243 = add nsw i32 %242, %234
  %244 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 10, i64 2
  store i32 %243, ptr %244, align 4, !tbaa !7
  %245 = load i32, ptr @num_vars, align 4, !tbaa !7
  %246 = icmp sgt i32 %245, 0
  br i1 %246, label %247, label %334

247:                                              ; preds = %170
  %248 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %249 = mul nsw i32 %248, %188
  %250 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %251 = mul nuw nsw i32 %250, %187
  %252 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %253 = mul nuw nsw i32 %252, %185
  %254 = icmp slt i32 %252, 1
  %255 = icmp slt i32 %250, 1
  %256 = icmp slt i32 %248, 1
  %257 = getelementptr inbounds %struct.block, ptr %171, i64 %172, i32 11
  %258 = sext i32 %249 to i64
  %259 = add i32 %248, 1
  %260 = sext i32 %251 to i64
  %261 = add i32 %250, 1
  %262 = sext i32 %253 to i64
  %263 = add i32 %252, 1
  %264 = zext i32 %245 to i64
  %265 = zext i32 %263 to i64
  %266 = zext i32 %261 to i64
  %267 = zext i32 %259 to i64
  br label %268

268:                                              ; preds = %331, %247
  %269 = phi i64 [ 0, %247 ], [ %332, %331 ]
  br i1 %254, label %331, label %270

270:                                              ; preds = %327, %268
  %271 = phi i64 [ %329, %327 ], [ 1, %268 ]
  %272 = phi i64 [ %328, %327 ], [ 1, %268 ]
  br i1 %255, label %327, label %273

273:                                              ; preds = %270
  %274 = add nsw i64 %272, %262
  %275 = add nuw nsw i64 %271, 1
  br label %276

276:                                              ; preds = %323, %273
  %277 = phi i64 [ 1, %273 ], [ %325, %323 ]
  %278 = phi i64 [ 1, %273 ], [ %324, %323 ]
  br i1 %256, label %323, label %279

279:                                              ; preds = %276
  %280 = load ptr, ptr %137, align 8, !tbaa !27
  %281 = getelementptr inbounds ptr, ptr %280, i64 %269
  %282 = load ptr, ptr %281, align 8, !tbaa !11
  %283 = getelementptr inbounds ptr, ptr %282, i64 %274
  %284 = load ptr, ptr %283, align 8, !tbaa !11
  %285 = add nsw i64 %278, %260
  %286 = getelementptr inbounds ptr, ptr %284, i64 %285
  %287 = load ptr, ptr %286, align 8, !tbaa !11
  %288 = load ptr, ptr %257, align 8, !tbaa !27
  %289 = getelementptr inbounds ptr, ptr %288, i64 %269
  %290 = load ptr, ptr %289, align 8, !tbaa !11
  %291 = getelementptr inbounds ptr, ptr %290, i64 %275
  %292 = load ptr, ptr %291, align 8, !tbaa !11
  %293 = add nuw nsw i64 %277, 1
  %294 = getelementptr inbounds ptr, ptr %292, i64 %293
  %295 = load ptr, ptr %294, align 8, !tbaa !11
  %296 = getelementptr inbounds ptr, ptr %290, i64 %271
  %297 = load ptr, ptr %296, align 8, !tbaa !11
  %298 = getelementptr inbounds ptr, ptr %297, i64 %293
  %299 = load ptr, ptr %298, align 8, !tbaa !11
  %300 = getelementptr inbounds ptr, ptr %292, i64 %277
  %301 = load ptr, ptr %300, align 8, !tbaa !11
  %302 = getelementptr inbounds ptr, ptr %297, i64 %277
  %303 = load ptr, ptr %302, align 8, !tbaa !11
  br label %304

304:                                              ; preds = %304, %279
  %305 = phi i64 [ 1, %279 ], [ %321, %304 ]
  %306 = phi i64 [ 1, %279 ], [ %320, %304 ]
  %307 = add nsw i64 %306, %258
  %308 = getelementptr inbounds double, ptr %287, i64 %307
  %309 = load double, ptr %308, align 8, !tbaa !28
  %310 = fmul double %309, 1.250000e-01
  %311 = add nuw nsw i64 %305, 1
  %312 = getelementptr inbounds double, ptr %295, i64 %311
  store double %310, ptr %312, align 8, !tbaa !28
  %313 = getelementptr inbounds double, ptr %299, i64 %311
  store double %310, ptr %313, align 8, !tbaa !28
  %314 = getelementptr inbounds double, ptr %301, i64 %311
  store double %310, ptr %314, align 8, !tbaa !28
  %315 = getelementptr inbounds double, ptr %303, i64 %311
  store double %310, ptr %315, align 8, !tbaa !28
  %316 = getelementptr inbounds double, ptr %295, i64 %305
  store double %310, ptr %316, align 8, !tbaa !28
  %317 = getelementptr inbounds double, ptr %299, i64 %305
  store double %310, ptr %317, align 8, !tbaa !28
  %318 = getelementptr inbounds double, ptr %301, i64 %305
  store double %310, ptr %318, align 8, !tbaa !28
  %319 = getelementptr inbounds double, ptr %303, i64 %305
  store double %310, ptr %319, align 8, !tbaa !28
  %320 = add nuw nsw i64 %306, 1
  %321 = add nuw nsw i64 %305, 2
  %322 = icmp eq i64 %320, %267
  br i1 %322, label %323, label %304, !llvm.loop !30

323:                                              ; preds = %304, %276
  %324 = add nuw nsw i64 %278, 1
  %325 = add nuw nsw i64 %277, 2
  %326 = icmp eq i64 %324, %266
  br i1 %326, label %327, label %276, !llvm.loop !31

327:                                              ; preds = %323, %270
  %328 = add nuw nsw i64 %272, 1
  %329 = add nuw nsw i64 %271, 2
  %330 = icmp eq i64 %328, %265
  br i1 %330, label %331, label %270, !llvm.loop !32

331:                                              ; preds = %327, %268
  %332 = add nuw nsw i64 %269, 1
  %333 = icmp eq i64 %332, %264
  br i1 %333, label %334, label %268, !llvm.loop !33

334:                                              ; preds = %331, %170
  %335 = add nuw nsw i64 %141, 1
  %336 = icmp eq i64 %335, 8
  br i1 %336, label %138, label %140, !llvm.loop !34

337:                                              ; preds = %459, %138
  %338 = phi ptr [ %139, %138 ], [ %460, %459 ]
  %339 = phi i64 [ 0, %138 ], [ %461, %459 ]
  %340 = getelementptr inbounds [6 x i32], ptr @split_blocks.off, i64 0, i64 %339
  %341 = load i32, ptr %340, align 4, !tbaa !7
  br label %342

342:                                              ; preds = %360, %337
  %343 = phi i1 [ true, %337 ], [ false, %360 ]
  %344 = phi i64 [ 0, %337 ], [ 1, %360 ]
  br label %345

345:                                              ; preds = %345, %342
  %346 = phi i1 [ true, %342 ], [ false, %345 ]
  %347 = phi i64 [ 0, %342 ], [ 1, %345 ]
  %348 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %339, i64 %344, i64 %347
  %349 = load i32, ptr %348, align 4, !tbaa !7
  %350 = add nsw i32 %341, %349
  %351 = sext i32 %350 to i64
  %352 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %351
  %353 = load i32, ptr %352, align 4, !tbaa !7
  %354 = sext i32 %353 to i64
  %355 = getelementptr inbounds %struct.block, ptr %139, i64 %354, i32 8, i64 %339
  store i32 %18, ptr %355, align 4, !tbaa !7
  %356 = sext i32 %349 to i64
  %357 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %356
  %358 = load i32, ptr %357, align 4, !tbaa !7
  %359 = getelementptr inbounds %struct.block, ptr %139, i64 %354, i32 9, i64 %339
  store i32 %358, ptr %359, align 4, !tbaa !7
  br i1 %346, label %345, label %360, !llvm.loop !35

360:                                              ; preds = %345
  br i1 %343, label %342, label %361, !llvm.loop !36

361:                                              ; preds = %360
  %362 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 8, i64 %339
  %363 = load i32, ptr %362, align 4, !tbaa !7
  %364 = icmp eq i32 %363, -2
  br i1 %364, label %365, label %384

365:                                              ; preds = %365, %361
  %366 = phi i1 [ false, %365 ], [ true, %361 ]
  %367 = phi i64 [ 1, %365 ], [ 0, %361 ]
  %368 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %339, i64 %367, i64 0
  %369 = load i32, ptr %368, align 8, !tbaa !7
  %370 = sext i32 %369 to i64
  %371 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %370
  %372 = load i32, ptr %371, align 4, !tbaa !7
  %373 = sext i32 %372 to i64
  %374 = getelementptr inbounds %struct.block, ptr %139, i64 %373, i32 8, i64 %339
  store i32 -2, ptr %374, align 4, !tbaa !7
  %375 = getelementptr inbounds %struct.block, ptr %139, i64 %373, i32 9, i64 %339
  store i32 0, ptr %375, align 4, !tbaa !7
  %376 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %339, i64 %367, i64 1
  %377 = load i32, ptr %376, align 4, !tbaa !7
  %378 = sext i32 %377 to i64
  %379 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %378
  %380 = load i32, ptr %379, align 4, !tbaa !7
  %381 = sext i32 %380 to i64
  %382 = getelementptr inbounds %struct.block, ptr %139, i64 %381, i32 8, i64 %339
  store i32 -2, ptr %382, align 4, !tbaa !7
  %383 = getelementptr inbounds %struct.block, ptr %139, i64 %381, i32 9, i64 %339
  store i32 0, ptr %383, align 4, !tbaa !7
  br i1 %366, label %365, label %459, !llvm.loop !37

384:                                              ; preds = %361
  %385 = icmp eq i32 %363, %20
  br i1 %385, label %386, label %396

386:                                              ; preds = %384
  %387 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 9, i64 %339
  %388 = load i32, ptr %387, align 4, !tbaa !7
  %389 = icmp sgt i32 %388, -1
  br i1 %389, label %390, label %459

390:                                              ; preds = %386
  %.lcssa33 = phi i64 [ %24, %386 ]
  %.lcssa27 = phi ptr [ %26, %386 ]
  %.lcssa7 = phi i64 [ %339, %386 ]
  %.lcssa5 = phi i32 [ %388, %386 ]
  %391 = trunc i64 %.lcssa33 to i32
  %392 = trunc i64 %.lcssa7 to i32
  %393 = load i32, ptr @my_pe, align 4, !tbaa !7
  %394 = load i32, ptr %.lcssa27, align 8, !tbaa !13
  %395 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, i32 noundef %393, i32 noundef %391, i32 noundef %394, i32 noundef %392, i32 noundef %.lcssa5) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

396:                                              ; preds = %384
  %397 = zext i32 %363 to i64
  %398 = icmp eq i64 %10, %397
  br i1 %398, label %399, label %424

399:                                              ; preds = %396
  %400 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 9, i64 %339
  %401 = load i32, ptr %400, align 4, !tbaa !7
  %402 = icmp sgt i32 %401, -1
  br i1 %402, label %403, label %459

403:                                              ; preds = %399
  %404 = zext i32 %401 to i64
  %405 = and i64 %339, 4294967295
  %406 = xor i64 %405, 1
  %407 = getelementptr inbounds %struct.block, ptr %139, i64 %404, i32 8, i64 %406
  store i32 %18, ptr %407, align 4, !tbaa !7
  br label %408

408:                                              ; preds = %423, %403
  %409 = phi i1 [ true, %403 ], [ false, %423 ]
  %410 = phi i64 [ 0, %403 ], [ 1, %423 ]
  br label %411

411:                                              ; preds = %411, %408
  %412 = phi i1 [ true, %408 ], [ false, %411 ]
  %413 = phi i64 [ 0, %408 ], [ 1, %411 ]
  %414 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %339, i64 %410, i64 %413
  %415 = load i32, ptr %414, align 4, !tbaa !7
  %416 = sext i32 %415 to i64
  %417 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %416
  %418 = load i32, ptr %417, align 4, !tbaa !7
  %419 = sext i32 %418 to i64
  %420 = getelementptr inbounds %struct.block, ptr %139, i64 %419, i32 8, i64 %339
  store i32 %12, ptr %420, align 4, !tbaa !7
  %421 = getelementptr inbounds %struct.block, ptr %139, i64 %419, i32 9, i64 %339
  store i32 %401, ptr %421, align 4, !tbaa !7
  %422 = getelementptr inbounds %struct.block, ptr %139, i64 %404, i32 9, i64 %406, i64 %410, i64 %413
  store i32 %418, ptr %422, align 4, !tbaa !7
  br i1 %412, label %411, label %423, !llvm.loop !38

423:                                              ; preds = %411
  br i1 %409, label %408, label %459, !llvm.loop !39

424:                                              ; preds = %396
  %425 = icmp eq i64 %14, %397
  br i1 %425, label %426, label %453

426:                                              ; preds = %424
  %427 = and i64 %339, 4294967295
  %428 = xor i64 %427, 1
  br label %429

429:                                              ; preds = %452, %426
  %430 = phi i1 [ true, %426 ], [ false, %452 ]
  %431 = phi i64 [ 0, %426 ], [ 1, %452 ]
  %432 = load ptr, ptr @blocks, align 8
  br label %433

433:                                              ; preds = %451, %429
  %434 = phi i1 [ true, %429 ], [ false, %451 ]
  %435 = phi i64 [ 0, %429 ], [ 1, %451 ]
  %436 = getelementptr inbounds %struct.block, ptr %23, i64 %24, i32 9, i64 %339, i64 %431, i64 %435
  %437 = load i32, ptr %436, align 4, !tbaa !7
  %438 = icmp sgt i32 %437, -1
  br i1 %438, label %439, label %451

439:                                              ; preds = %433
  %440 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %339, i64 %431, i64 %435
  %441 = load i32, ptr %440, align 4, !tbaa !7
  %442 = sext i32 %441 to i64
  %443 = getelementptr inbounds [8 x i32], ptr %1, i64 0, i64 %442
  %444 = load i32, ptr %443, align 4, !tbaa !7
  %445 = sext i32 %444 to i64
  %446 = getelementptr inbounds %struct.block, ptr %432, i64 %445, i32 8, i64 %339
  store i32 %18, ptr %446, align 4, !tbaa !7
  %447 = getelementptr inbounds %struct.block, ptr %432, i64 %445, i32 9, i64 %339
  store i32 %437, ptr %447, align 4, !tbaa !7
  %448 = zext i32 %437 to i64
  %449 = getelementptr inbounds %struct.block, ptr %432, i64 %448, i32 8, i64 %428
  store i32 %18, ptr %449, align 4, !tbaa !7
  %450 = getelementptr inbounds %struct.block, ptr %432, i64 %448, i32 9, i64 %428
  store i32 %444, ptr %450, align 4, !tbaa !7
  br label %451

451:                                              ; preds = %439, %433
  br i1 %434, label %433, label %452, !llvm.loop !40

452:                                              ; preds = %451
  br i1 %430, label %429, label %459, !llvm.loop !41

453:                                              ; preds = %424
  %.lcssa40 = phi i32 [ %12, %424 ]
  %.lcssa32 = phi i64 [ %24, %424 ]
  %.lcssa26 = phi ptr [ %26, %424 ]
  %.lcssa9 = phi i32 [ %363, %424 ]
  %.lcssa6 = phi i64 [ %339, %424 ]
  %454 = trunc i64 %.lcssa32 to i32
  %455 = trunc i64 %.lcssa6 to i32
  %456 = load i32, ptr @my_pe, align 4, !tbaa !7
  %457 = load i32, ptr %.lcssa26, align 8, !tbaa !13
  %458 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %456, i32 noundef %454, i32 noundef %457, i32 noundef %.lcssa40, i32 noundef %455, i32 noundef %.lcssa9) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

459:                                              ; preds = %452, %423, %399, %386, %365
  %460 = phi ptr [ %338, %399 ], [ %338, %386 ], [ %338, %365 ], [ %338, %423 ], [ %432, %452 ]
  %461 = add nuw nsw i64 %339, 1
  %462 = icmp eq i64 %461, 6
  br i1 %462, label %463, label %337, !llvm.loop !42

463:                                              ; preds = %459
  %.lcssa12 = phi ptr [ %460, %459 ]
  store i32 -1, ptr %26, align 8, !tbaa !13
  %464 = trunc i64 %24 to i32
  %465 = tail call i32 @llvm.smin.i32(i32 %464, i32 %.lcssa4)
  %466 = load i32, ptr @max_active_block, align 4, !tbaa !7
  br label %467

467:                                              ; preds = %463, %34, %29, %21
  %468 = phi i32 [ %22, %34 ], [ %22, %29 ], [ %22, %21 ], [ %466, %463 ]
  %469 = phi ptr [ %23, %34 ], [ %23, %29 ], [ %23, %21 ], [ %.lcssa12, %463 ]
  %470 = phi i32 [ %25, %34 ], [ %25, %29 ], [ %25, %21 ], [ %465, %463 ]
  %471 = add nuw nsw i64 %24, 1
  %472 = sext i32 %468 to i64
  %473 = icmp slt i64 %471, %472
  br i1 %473, label %21, label %474, !llvm.loop !43

474:                                              ; preds = %467
  %.lcssa36 = phi i32 [ %468, %467 ]
  %.lcssa35 = phi i32 [ %470, %467 ]
  %475 = load i32, ptr @cur_max_level, align 4, !tbaa !7
  br label %476

476:                                              ; preds = %474, %6
  %477 = phi i32 [ %475, %474 ], [ %7, %6 ]
  %478 = phi i32 [ %.lcssa36, %474 ], [ %8, %6 ]
  %479 = phi i32 [ %.lcssa36, %474 ], [ %9, %6 ]
  %480 = phi i32 [ %.lcssa35, %474 ], [ %11, %6 ]
  %481 = sext i32 %477 to i64
  %482 = icmp slt i64 %10, %481
  br i1 %482, label %6, label %483, !llvm.loop !44

483:                                              ; preds = %476, %0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind optsize uwtable
define internal void @del_sorted_list(i32 noundef %0, i32 noundef %1) #0 {
  %3 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds i32, ptr %3, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = add nsw i32 %1, 1
  %8 = sext i32 %7 to i64
  %9 = getelementptr inbounds i32, ptr %3, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = icmp slt i32 %6, %10
  %12 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  br i1 %11, label %13, label %26

13:                                               ; preds = %2
  %14 = sext i32 %6 to i64
  br label %15

15:                                               ; preds = %20, %13
  %16 = phi i64 [ %14, %13 ], [ %21, %20 ]
  %17 = getelementptr inbounds %struct.sorted_block, ptr %12, i64 %16
  %18 = load i32, ptr %17, align 4, !tbaa !45
  %19 = icmp eq i32 %18, %0
  br i1 %19, label %24, label %20

20:                                               ; preds = %15
  %21 = add nsw i64 %16, 1
  %22 = trunc i64 %21 to i32
  %23 = icmp eq i32 %10, %22
  br i1 %23, label %26, label %15, !llvm.loop !47

24:                                               ; preds = %15
  %.lcssa = phi i64 [ %16, %15 ]
  %25 = trunc i64 %.lcssa to i32
  br label %26

26:                                               ; preds = %24, %20, %2
  %27 = phi i32 [ %6, %2 ], [ %25, %24 ], [ %10, %20 ]
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds %struct.sorted_block, ptr %12, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !45
  %31 = icmp eq i32 %30, %0
  br i1 %31, label %32, label %35

32:                                               ; preds = %26
  %33 = load i32, ptr @num_refine, align 4, !tbaa !7
  %34 = icmp slt i32 %33, %1
  br i1 %34, label %38, label %45

35:                                               ; preds = %26
  %36 = load i32, ptr @my_pe, align 4, !tbaa !7
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, i32 noundef %36, i32 noundef %0) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

38:                                               ; preds = %45, %32
  %39 = phi i32 [ %33, %32 ], [ %51, %45 ]
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds i32, ptr %3, i64 %41
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = icmp slt i32 %27, %43
  br i1 %44, label %54, label %67

45:                                               ; preds = %45, %32
  %46 = phi i64 [ %50, %45 ], [ %8, %32 ]
  %47 = getelementptr inbounds i32, ptr %3, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = add nsw i32 %48, -1
  store i32 %49, ptr %47, align 4, !tbaa !7
  %50 = add nsw i64 %46, 1
  %51 = load i32, ptr @num_refine, align 4, !tbaa !7
  %52 = sext i32 %51 to i64
  %53 = icmp sgt i64 %46, %52
  br i1 %53, label %38, label %45, !llvm.loop !48

54:                                               ; preds = %54, %38
  %55 = phi i64 [ %56, %54 ], [ %28, %38 ]
  %56 = add nsw i64 %55, 1
  %57 = getelementptr inbounds %struct.sorted_block, ptr %12, i64 %56
  %58 = getelementptr inbounds %struct.sorted_block, ptr %12, i64 %55
  %59 = load <2 x i32>, ptr %57, align 4, !tbaa !7
  store <2 x i32> %59, ptr %58, align 4, !tbaa !7
  %60 = load i32, ptr @num_refine, align 4, !tbaa !7
  %61 = add nsw i32 %60, 1
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, ptr %3, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !7
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %56, %65
  br i1 %66, label %54, label %67, !llvm.loop !49

67:                                               ; preds = %54, %38
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #4

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @add_sorted_list(i32 noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %5 = sext i32 %2 to i64
  %6 = getelementptr inbounds i32, ptr %4, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = add nsw i32 %2, 1
  %9 = sext i32 %8 to i64
  %10 = getelementptr inbounds i32, ptr %4, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = icmp slt i32 %7, %11
  %13 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  br i1 %12, label %14, label %27

14:                                               ; preds = %3
  %15 = sext i32 %7 to i64
  br label %16

16:                                               ; preds = %21, %14
  %17 = phi i64 [ %15, %14 ], [ %22, %21 ]
  %18 = getelementptr inbounds %struct.sorted_block, ptr %13, i64 %17
  %19 = load i32, ptr %18, align 4, !tbaa !45
  %20 = icmp slt i32 %19, %1
  br i1 %20, label %25, label %21

21:                                               ; preds = %16
  %22 = add nsw i64 %17, 1
  %23 = trunc i64 %22 to i32
  %24 = icmp eq i32 %11, %23
  br i1 %24, label %27, label %16, !llvm.loop !50

25:                                               ; preds = %16
  %.lcssa = phi i64 [ %17, %16 ]
  %26 = trunc i64 %.lcssa to i32
  br label %27

27:                                               ; preds = %25, %21, %3
  %28 = phi i32 [ %7, %3 ], [ %26, %25 ], [ %11, %21 ]
  %29 = load i32, ptr @num_refine, align 4, !tbaa !7
  %30 = add nsw i32 %29, 1
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %4, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = icmp sgt i32 %33, %28
  br i1 %34, label %37, label %35

35:                                               ; preds = %27
  %36 = sext i32 %28 to i64
  br label %47

37:                                               ; preds = %27
  %38 = sext i32 %33 to i64
  %39 = sext i32 %28 to i64
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi i64 [ %38, %37 ], [ %42, %40 ]
  %42 = add nsw i64 %41, -1
  %43 = getelementptr inbounds %struct.sorted_block, ptr %13, i64 %42
  %44 = getelementptr inbounds %struct.sorted_block, ptr %13, i64 %41
  %45 = load <2 x i32>, ptr %43, align 4, !tbaa !7
  store <2 x i32> %45, ptr %44, align 4, !tbaa !7
  %46 = icmp sgt i64 %42, %39
  br i1 %46, label %40, label %47, !llvm.loop !51

47:                                               ; preds = %40, %35
  %48 = phi i64 [ %36, %35 ], [ %39, %40 ]
  %49 = getelementptr inbounds %struct.sorted_block, ptr %13, i64 %48
  store i32 %1, ptr %49, align 4, !tbaa !45
  %50 = getelementptr inbounds %struct.sorted_block, ptr %13, i64 %48, i32 1
  store i32 %0, ptr %50, align 4, !tbaa !52
  %51 = load i32, ptr @num_refine, align 4, !tbaa !7
  %52 = icmp slt i32 %51, %2
  br i1 %52, label %62, label %53

53:                                               ; preds = %53, %47
  %54 = phi i64 [ %58, %53 ], [ %9, %47 ]
  %55 = getelementptr inbounds i32, ptr %4, i64 %54
  %56 = load i32, ptr %55, align 4, !tbaa !7
  %57 = add nsw i32 %56, 1
  store i32 %57, ptr %55, align 4, !tbaa !7
  %58 = add nsw i64 %54, 1
  %59 = load i32, ptr @num_refine, align 4, !tbaa !7
  %60 = sext i32 %59 to i64
  %61 = icmp sgt i64 %54, %60
  br i1 %61, label %62, label %53, !llvm.loop !53

62:                                               ; preds = %53, %47
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @consolidate_blocks() #0 {
  %1 = load i32, ptr @cur_max_level, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, -1
  br i1 %2, label %3, label %316

3:                                                ; preds = %0
  %4 = zext i32 %1 to i64
  %5 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  br label %6

6:                                                ; preds = %311, %3
  %7 = phi i32 [ %5, %3 ], [ %312, %311 ]
  %8 = phi i32 [ %5, %3 ], [ %313, %311 ]
  %9 = phi i64 [ %4, %3 ], [ %314, %311 ]
  %10 = icmp sgt i32 %8, 0
  br i1 %10, label %11, label %311

11:                                               ; preds = %6
  %12 = trunc i64 %9 to i32
  %13 = trunc i64 %9 to i32
  %14 = add i32 %13, 1
  %15 = trunc i64 %9 to i32
  %16 = add i32 %15, 2
  br label %17

17:                                               ; preds = %306, %11
  %18 = phi i32 [ %7, %11 ], [ %307, %306 ]
  %19 = phi i64 [ 0, %11 ], [ %308, %306 ]
  %20 = load ptr, ptr @parents, align 8, !tbaa !11
  %21 = getelementptr inbounds %struct.parent, ptr %20, i64 %19
  %22 = load i32, ptr %21, align 4, !tbaa !17
  %23 = icmp sgt i32 %22, -1
  br i1 %23, label %24, label %306

24:                                               ; preds = %17
  %25 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !54
  %27 = zext i32 %26 to i64
  %28 = icmp eq i64 %9, %27
  br i1 %28, label %29, label %306

29:                                               ; preds = %24
  %30 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 5
  %31 = load i32, ptr %30, align 4, !tbaa !23
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %306

33:                                               ; preds = %29
  %34 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %49

36:                                               ; preds = %33
  %37 = load ptr, ptr @blocks, align 8, !tbaa !11
  %38 = zext i32 %34 to i64
  br label %39

39:                                               ; preds = %44, %36
  %40 = phi i64 [ 0, %36 ], [ %45, %44 ]
  %41 = getelementptr inbounds %struct.block, ptr %37, i64 %40
  %42 = load i32, ptr %41, align 8, !tbaa !13
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %39
  %45 = add nuw nsw i64 %40, 1
  %46 = icmp eq i64 %45, %38
  br i1 %46, label %52, label %39, !llvm.loop !55

47:                                               ; preds = %39
  %.lcssa = phi i64 [ %40, %39 ]
  %48 = trunc i64 %.lcssa to i32
  br label %49

49:                                               ; preds = %47, %33
  %50 = phi i32 [ 0, %33 ], [ %48, %47 ]
  %51 = icmp eq i32 %50, %34
  br i1 %51, label %52, label %55

52:                                               ; preds = %49, %44
  %53 = load i32, ptr @my_pe, align 4, !tbaa !7
  %54 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5, i32 noundef %53) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

55:                                               ; preds = %49
  %56 = load ptr, ptr @blocks, align 8, !tbaa !11
  %57 = zext i32 %50 to i64
  %58 = getelementptr inbounds %struct.block, ptr %56, i64 %57
  %59 = load i32, ptr @max_active_block, align 4, !tbaa !7
  %60 = icmp slt i32 %50, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %55
  %62 = add nuw nsw i32 %50, 1
  store i32 %62, ptr @max_active_block, align 4, !tbaa !7
  br label %63

63:                                               ; preds = %61, %55
  %64 = load i32, ptr @num_active, align 4, !tbaa !7
  %65 = load i32, ptr @local_max_b, align 4, !tbaa !7
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %69, label %67

67:                                               ; preds = %63
  %68 = add nsw i32 %64, 1
  store i32 %68, ptr @local_max_b, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %67, %63
  %70 = add nsw i32 %64, -7
  store i32 %70, ptr @num_active, align 4, !tbaa !7
  %71 = load i32, ptr @num_reformed, align 4, !tbaa !7
  %72 = add nsw i32 %71, 1
  store i32 %72, ptr @num_reformed, align 4, !tbaa !7
  %73 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  %74 = getelementptr inbounds i32, ptr %73, i64 %9
  %75 = load <2 x i32>, ptr %74, align 4, !tbaa !7
  %76 = add nsw <2 x i32> %75, <i32 1, i32 -8>
  store <2 x i32> %76, ptr %74, align 4, !tbaa !7
  %77 = load <2 x i32>, ptr %21, align 4, !tbaa !7
  store i32 -1, ptr %21, align 4, !tbaa !17
  store <2 x i32> %77, ptr %58, align 8, !tbaa !7
  %78 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 2
  %79 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 4
  %80 = load <2 x i32>, ptr %78, align 4, !tbaa !7
  store <2 x i32> %80, ptr %79, align 8, !tbaa !7
  %81 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 4
  %82 = load i32, ptr %81, align 4, !tbaa !22
  %83 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 6
  store i32 %82, ptr %83, align 8, !tbaa !21
  %84 = extractelement <2 x i32> %80, i64 0
  %85 = sext i32 %84 to i64
  %86 = sext i32 %82 to i64
  %87 = getelementptr inbounds %struct.parent, ptr %20, i64 %85, i32 6, i64 %86
  store i32 %50, ptr %87, align 4, !tbaa !7
  %88 = load i32, ptr %58, align 8, !tbaa !13
  tail call void @add_sorted_list(i32 noundef %50, i32 noundef %88, i32 noundef %12) #22
  %89 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 2
  store i32 0, ptr %89, align 8, !tbaa !16
  %90 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 8
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 10
  store i32 %91, ptr %92, align 4, !tbaa !7
  %93 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 8, i64 1
  %94 = load i32, ptr %93, align 4, !tbaa !7
  %95 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 10, i64 1
  store i32 %94, ptr %95, align 4, !tbaa !7
  %96 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 8, i64 2
  %97 = load i32, ptr %96, align 4, !tbaa !7
  %98 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 10, i64 2
  store i32 %97, ptr %98, align 4, !tbaa !7
  %99 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 11
  br label %102

100:                                              ; preds = %218
  %101 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %221

102:                                              ; preds = %218, %69
  %103 = phi i64 [ 0, %69 ], [ %219, %218 ]
  %104 = load ptr, ptr @blocks, align 8, !tbaa !11
  %105 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 6, i64 %103
  %106 = load i32, ptr %105, align 4, !tbaa !7
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.block, ptr %104, i64 %107
  %109 = load i32, ptr %108, align 8, !tbaa !13
  tail call void @del_sorted_list(i32 noundef %109, i32 noundef %14) #22
  store i32 -1, ptr %108, align 8, !tbaa !13
  %110 = load i32, ptr @num_vars, align 4, !tbaa !7
  %111 = icmp sgt i32 %110, 0
  br i1 %111, label %112, label %218

112:                                              ; preds = %102
  %113 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %114 = trunc i64 %103 to i32
  %115 = lshr i32 %114, 2
  %116 = mul nuw nsw i32 %113, %115
  %117 = and i32 %114, 2
  %118 = icmp eq i32 %117, 0
  %119 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %120 = select i1 %118, i32 0, i32 %119
  %121 = and i32 %114, 1
  %122 = icmp eq i32 %121, 0
  %123 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %124 = select i1 %122, i32 0, i32 %123
  %125 = icmp slt i32 %123, 1
  %126 = icmp slt i32 %119, 1
  %127 = icmp slt i32 %113, 1
  %128 = getelementptr inbounds %struct.block, ptr %104, i64 %107, i32 11
  %129 = sext i32 %116 to i64
  %130 = add i32 %113, 1
  %131 = sext i32 %120 to i64
  %132 = add i32 %119, 1
  %133 = sext i32 %124 to i64
  %134 = add i32 %123, 1
  %135 = zext i32 %110 to i64
  %136 = zext i32 %134 to i64
  %137 = zext i32 %132 to i64
  %138 = zext i32 %130 to i64
  br label %139

139:                                              ; preds = %215, %112
  %140 = phi i64 [ 0, %112 ], [ %216, %215 ]
  br i1 %125, label %215, label %141

141:                                              ; preds = %211, %139
  %142 = phi i64 [ %213, %211 ], [ 1, %139 ]
  %143 = phi i64 [ %212, %211 ], [ 1, %139 ]
  br i1 %126, label %211, label %144

144:                                              ; preds = %141
  %145 = add nuw nsw i64 %142, 1
  %146 = add nsw i64 %143, %133
  br label %147

147:                                              ; preds = %207, %144
  %148 = phi i64 [ 1, %144 ], [ %209, %207 ]
  %149 = phi i64 [ 1, %144 ], [ %208, %207 ]
  br i1 %127, label %207, label %150

150:                                              ; preds = %147
  %151 = load ptr, ptr %128, align 8, !tbaa !27
  %152 = getelementptr inbounds ptr, ptr %151, i64 %140
  %153 = load ptr, ptr %152, align 8, !tbaa !11
  %154 = getelementptr inbounds ptr, ptr %153, i64 %142
  %155 = load ptr, ptr %154, align 8, !tbaa !11
  %156 = getelementptr inbounds ptr, ptr %155, i64 %148
  %157 = load ptr, ptr %156, align 8, !tbaa !11
  %158 = getelementptr inbounds ptr, ptr %153, i64 %145
  %159 = load ptr, ptr %158, align 8, !tbaa !11
  %160 = getelementptr inbounds ptr, ptr %159, i64 %148
  %161 = load ptr, ptr %160, align 8, !tbaa !11
  %162 = add nuw nsw i64 %148, 1
  %163 = getelementptr inbounds ptr, ptr %155, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !11
  %165 = getelementptr inbounds ptr, ptr %159, i64 %162
  %166 = load ptr, ptr %165, align 8, !tbaa !11
  %167 = load ptr, ptr %99, align 8, !tbaa !27
  %168 = getelementptr inbounds ptr, ptr %167, i64 %140
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = getelementptr inbounds ptr, ptr %169, i64 %146
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  %172 = add nsw i64 %149, %131
  %173 = getelementptr inbounds ptr, ptr %171, i64 %172
  %174 = load ptr, ptr %173, align 8, !tbaa !11
  br label %175

175:                                              ; preds = %175, %150
  %176 = phi i64 [ 1, %150 ], [ %205, %175 ]
  %177 = phi i64 [ 1, %150 ], [ %204, %175 ]
  %178 = getelementptr inbounds double, ptr %157, i64 %176
  %179 = load double, ptr %178, align 8, !tbaa !28
  %180 = getelementptr inbounds double, ptr %161, i64 %176
  %181 = load double, ptr %180, align 8, !tbaa !28
  %182 = fadd double %179, %181
  %183 = getelementptr inbounds double, ptr %164, i64 %176
  %184 = load double, ptr %183, align 8, !tbaa !28
  %185 = fadd double %182, %184
  %186 = getelementptr inbounds double, ptr %166, i64 %176
  %187 = load double, ptr %186, align 8, !tbaa !28
  %188 = fadd double %185, %187
  %189 = add nuw nsw i64 %176, 1
  %190 = getelementptr inbounds double, ptr %157, i64 %189
  %191 = load double, ptr %190, align 8, !tbaa !28
  %192 = fadd double %188, %191
  %193 = getelementptr inbounds double, ptr %161, i64 %189
  %194 = load double, ptr %193, align 8, !tbaa !28
  %195 = fadd double %192, %194
  %196 = getelementptr inbounds double, ptr %164, i64 %189
  %197 = load double, ptr %196, align 8, !tbaa !28
  %198 = fadd double %195, %197
  %199 = getelementptr inbounds double, ptr %166, i64 %189
  %200 = load double, ptr %199, align 8, !tbaa !28
  %201 = fadd double %198, %200
  %202 = add nsw i64 %177, %129
  %203 = getelementptr inbounds double, ptr %174, i64 %202
  store double %201, ptr %203, align 8, !tbaa !28
  %204 = add nuw nsw i64 %177, 1
  %205 = add nuw nsw i64 %176, 2
  %206 = icmp eq i64 %204, %138
  br i1 %206, label %207, label %175, !llvm.loop !56

207:                                              ; preds = %175, %147
  %208 = add nuw nsw i64 %149, 1
  %209 = add nuw nsw i64 %148, 2
  %210 = icmp eq i64 %208, %137
  br i1 %210, label %211, label %147, !llvm.loop !57

211:                                              ; preds = %207, %141
  %212 = add nuw nsw i64 %143, 1
  %213 = add nuw nsw i64 %142, 2
  %214 = icmp eq i64 %212, %136
  br i1 %214, label %215, label %141, !llvm.loop !58

215:                                              ; preds = %211, %139
  %216 = add nuw nsw i64 %140, 1
  %217 = icmp eq i64 %216, %135
  br i1 %217, label %218, label %139, !llvm.loop !59

218:                                              ; preds = %215, %102
  %219 = add nuw nsw i64 %103, 1
  %220 = icmp eq i64 %219, 8
  br i1 %220, label %100, label %102, !llvm.loop !60

221:                                              ; preds = %301, %100
  %222 = phi i64 [ 0, %100 ], [ %302, %301 ]
  %223 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %222
  %224 = load i32, ptr %223, align 16, !tbaa !7
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 6, i64 %225
  %227 = load i32, ptr %226, align 4, !tbaa !7
  %228 = sext i32 %227 to i64
  %229 = getelementptr inbounds %struct.block, ptr %101, i64 %228, i32 8, i64 %222
  %230 = load i32, ptr %229, align 4, !tbaa !7
  %231 = icmp eq i32 %230, -2
  br i1 %231, label %232, label %235

232:                                              ; preds = %221
  %233 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 8, i64 %222
  store i32 -2, ptr %233, align 4, !tbaa !7
  %234 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 7, i64 %222
  br label %299

235:                                              ; preds = %221
  %236 = zext i32 %230 to i64
  %237 = icmp eq i64 %9, %236
  br i1 %237, label %238, label %257

238:                                              ; preds = %235
  %239 = getelementptr inbounds %struct.block, ptr %101, i64 %228, i32 9, i64 %222
  %240 = load i32, ptr %239, align 4, !tbaa !7
  %241 = icmp sgt i32 %240, -1
  br i1 %241, label %242, label %301

242:                                              ; preds = %238
  %243 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 9, i64 %222
  store i32 %240, ptr %243, align 4, !tbaa !7
  %244 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 8, i64 %222
  store i32 %12, ptr %244, align 4, !tbaa !7
  %245 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 7, i64 %222
  store i32 0, ptr %245, align 4, !tbaa !7
  %246 = load i32, ptr %239, align 4, !tbaa !7
  %247 = sext i32 %246 to i64
  %248 = and i64 %222, 4294967295
  %249 = xor i64 %248, 1
  %250 = getelementptr inbounds %struct.block, ptr %101, i64 %247, i32 9, i64 %249
  store i32 %50, ptr %250, align 4, !tbaa !7
  %251 = load i32, ptr %239, align 4, !tbaa !7
  %252 = sext i32 %251 to i64
  %253 = getelementptr inbounds %struct.block, ptr %101, i64 %252, i32 8, i64 %249
  store i32 %12, ptr %253, align 4, !tbaa !7
  %254 = load i32, ptr %239, align 4, !tbaa !7
  %255 = sext i32 %254 to i64
  %256 = getelementptr inbounds %struct.block, ptr %101, i64 %255, i32 7, i64 %249
  br label %299

257:                                              ; preds = %235
  %258 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 8, i64 %222
  %259 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 7, i64 %222
  %260 = and i64 %222, 4294967295
  %261 = xor i64 %260, 1
  br label %262

262:                                              ; preds = %298, %257
  %263 = phi i1 [ true, %257 ], [ false, %298 ]
  %264 = phi i64 [ 0, %257 ], [ 1, %298 ]
  br label %265

265:                                              ; preds = %297, %262
  %266 = phi i1 [ true, %262 ], [ false, %297 ]
  %267 = phi i64 [ 0, %262 ], [ 1, %297 ]
  %268 = getelementptr inbounds [6 x [2 x [2 x i32]]], ptr @consolidate_blocks.side, i64 0, i64 %222, i64 %264, i64 %267
  %269 = load i32, ptr %268, align 4, !tbaa !7
  %270 = sext i32 %269 to i64
  %271 = getelementptr inbounds %struct.parent, ptr %20, i64 %19, i32 6, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !7
  %273 = sext i32 %272 to i64
  %274 = getelementptr inbounds %struct.block, ptr %101, i64 %273, i32 9, i64 %222
  %275 = load i32, ptr %274, align 4, !tbaa !7
  %276 = icmp sgt i32 %275, -1
  br i1 %276, label %277, label %297

277:                                              ; preds = %265
  %278 = getelementptr inbounds %struct.block, ptr %101, i64 %273, i32 8, i64 %222
  %279 = load i32, ptr %278, align 4, !tbaa !7
  %280 = icmp eq i32 %279, %16
  br i1 %280, label %281, label %286

281:                                              ; preds = %277
  %.lcssa9 = phi i32 [ %12, %277 ]
  %.lcssa7 = phi i32 [ %50, %277 ]
  %.lcssa6 = phi i64 [ %19, %277 ]
  %.lcssa3 = phi i64 [ %222, %277 ]
  %.lcssa1 = phi i32 [ %272, %277 ]
  %282 = trunc i64 %.lcssa3 to i32
  %283 = trunc i64 %.lcssa6 to i32
  %284 = load i32, ptr @my_pe, align 4, !tbaa !7
  %285 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, i32 noundef %284, i32 noundef %283, i32 noundef %.lcssa7, i32 noundef %.lcssa1, i32 noundef %282, i32 noundef %.lcssa9) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

286:                                              ; preds = %277
  %287 = getelementptr inbounds %struct.block, ptr %56, i64 %57, i32 9, i64 %222, i64 %264, i64 %267
  store i32 %275, ptr %287, align 4, !tbaa !7
  store i32 %14, ptr %258, align 4, !tbaa !7
  store i32 0, ptr %259, align 4, !tbaa !7
  %288 = load i32, ptr %274, align 4, !tbaa !7
  %289 = sext i32 %288 to i64
  %290 = getelementptr inbounds %struct.block, ptr %101, i64 %289, i32 9, i64 %261
  store i32 %50, ptr %290, align 4, !tbaa !7
  %291 = load i32, ptr %274, align 4, !tbaa !7
  %292 = sext i32 %291 to i64
  %293 = getelementptr inbounds %struct.block, ptr %101, i64 %292, i32 8, i64 %261
  store i32 %12, ptr %293, align 4, !tbaa !7
  %294 = load i32, ptr %274, align 4, !tbaa !7
  %295 = sext i32 %294 to i64
  %296 = getelementptr inbounds %struct.block, ptr %101, i64 %295, i32 7, i64 %261
  store i32 0, ptr %296, align 4, !tbaa !7
  br label %297

297:                                              ; preds = %286, %265
  br i1 %266, label %265, label %298, !llvm.loop !61

298:                                              ; preds = %297
  br i1 %263, label %262, label %301, !llvm.loop !62

299:                                              ; preds = %242, %232
  %300 = phi ptr [ %234, %232 ], [ %256, %242 ]
  store i32 0, ptr %300, align 4, !tbaa !7
  br label %301

301:                                              ; preds = %299, %298, %238
  %302 = add nuw nsw i64 %222, 1
  %303 = icmp eq i64 %302, 6
  br i1 %303, label %304, label %221, !llvm.loop !63

304:                                              ; preds = %301
  %305 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  br label %306

306:                                              ; preds = %304, %29, %24, %17
  %307 = phi i32 [ %305, %304 ], [ %18, %17 ], [ %18, %24 ], [ %18, %29 ]
  %308 = add nuw nsw i64 %19, 1
  %309 = sext i32 %307 to i64
  %310 = icmp slt i64 %308, %309
  br i1 %310, label %17, label %311, !llvm.loop !64

311:                                              ; preds = %306, %6
  %312 = phi i32 [ %7, %6 ], [ %307, %306 ]
  %313 = phi i32 [ %8, %6 ], [ %307, %306 ]
  %314 = add nsw i64 %9, -1
  %315 = icmp sgt i64 %9, 0
  br i1 %315, label %6, label %316, !llvm.loop !65

316:                                              ; preds = %311, %0
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal double @check_sum(i32 noundef %0) #0 {
  %2 = tail call double @timer() #24
  %3 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %4 = load i32, ptr @num_refine, align 4, !tbaa !7
  %5 = add nsw i32 %4, 1
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i32, ptr %3, i64 %6
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = icmp sgt i32 %8, 0
  br i1 %9, label %10, label %76

10:                                               ; preds = %1
  %11 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %12 = load ptr, ptr @blocks, align 8, !tbaa !11
  %13 = load i32, ptr @x_block_size, align 4
  %14 = icmp slt i32 %13, 1
  %15 = load i32, ptr @y_block_size, align 4
  %16 = icmp slt i32 %15, 1
  %17 = load i32, ptr @z_block_size, align 4
  %18 = icmp slt i32 %17, 1
  %19 = sext i32 %0 to i64
  %20 = add i32 %17, 1
  %21 = add i32 %15, 1
  %22 = add i32 %13, 1
  %23 = zext i32 %8 to i64
  %24 = zext i32 %22 to i64
  %25 = zext i32 %21 to i64
  %26 = zext i32 %20 to i64
  br label %27

27:                                               ; preds = %72, %10
  %28 = phi i64 [ 0, %10 ], [ %74, %72 ]
  %29 = phi double [ 0.000000e+00, %10 ], [ %73, %72 ]
  %30 = getelementptr inbounds %struct.sorted_block, ptr %11, i64 %28, i32 1
  %31 = load i32, ptr %30, align 4, !tbaa !52
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds %struct.block, ptr %12, i64 %32
  %34 = load i32, ptr %33, align 8, !tbaa !13
  %35 = icmp sgt i32 %34, -1
  br i1 %35, label %36, label %72

36:                                               ; preds = %27
  br i1 %14, label %69, label %37

37:                                               ; preds = %36
  %38 = getelementptr inbounds %struct.block, ptr %12, i64 %32, i32 11
  br label %39

39:                                               ; preds = %65, %37
  %40 = phi i64 [ 1, %37 ], [ %67, %65 ]
  %41 = phi double [ 0.000000e+00, %37 ], [ %66, %65 ]
  br i1 %16, label %65, label %42

42:                                               ; preds = %61, %39
  %43 = phi i64 [ %63, %61 ], [ 1, %39 ]
  %44 = phi double [ %62, %61 ], [ %41, %39 ]
  br i1 %18, label %61, label %45

45:                                               ; preds = %42
  %46 = load ptr, ptr %38, align 8, !tbaa !27
  %47 = getelementptr inbounds ptr, ptr %46, i64 %19
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds ptr, ptr %48, i64 %40
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds ptr, ptr %50, i64 %43
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  br label %53

53:                                               ; preds = %53, %45
  %54 = phi i64 [ 1, %45 ], [ %59, %53 ]
  %55 = phi double [ %44, %45 ], [ %58, %53 ]
  %56 = getelementptr inbounds double, ptr %52, i64 %54
  %57 = load double, ptr %56, align 8, !tbaa !28
  %58 = fadd double %55, %57
  %59 = add nuw nsw i64 %54, 1
  %60 = icmp eq i64 %59, %26
  br i1 %60, label %61, label %53, !llvm.loop !66

61:                                               ; preds = %53, %42
  %62 = phi double [ %44, %42 ], [ %58, %53 ]
  %63 = add nuw nsw i64 %43, 1
  %64 = icmp eq i64 %63, %25
  br i1 %64, label %65, label %42, !llvm.loop !67

65:                                               ; preds = %61, %39
  %66 = phi double [ %41, %39 ], [ %62, %61 ]
  %67 = add nuw nsw i64 %40, 1
  %68 = icmp eq i64 %67, %24
  br i1 %68, label %69, label %39, !llvm.loop !68

69:                                               ; preds = %65, %36
  %70 = phi double [ 0.000000e+00, %36 ], [ %66, %65 ]
  %71 = fadd double %29, %70
  br label %72

72:                                               ; preds = %69, %27
  %73 = phi double [ %71, %69 ], [ %29, %27 ]
  %74 = add nuw nsw i64 %28, 1
  %75 = icmp eq i64 %74, %23
  br i1 %75, label %76, label %27, !llvm.loop !69

76:                                               ; preds = %72, %1
  %77 = phi double [ 0.000000e+00, %1 ], [ %73, %72 ]
  %78 = tail call double @timer() #24
  %79 = fsub double %78, %2
  %80 = load double, ptr @timer_cs_calc, align 8, !tbaa !28
  %81 = fadd double %80, %79
  store double %81, ptr @timer_cs_calc, align 8, !tbaa !28
  %82 = load i32, ptr @total_red, align 4, !tbaa !7
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr @total_red, align 4, !tbaa !7
  ret double %77
}

; Function Attrs: nounwind optsize uwtable
define internal void @comm(i32 noundef %0, i32 noundef %1, i32 noundef %2) #0 {
  %4 = srem i32 %2, 6
  %5 = sext i32 %4 to i64
  br label %6

6:                                                ; preds = %160, %3
  %7 = phi i64 [ 0, %3 ], [ %167, %160 ]
  %8 = load i32, ptr @permute, align 4, !tbaa !7
  %9 = icmp eq i32 %8, 0
  %10 = trunc i64 %7 to i32
  br i1 %9, label %14, label %11

11:                                               ; preds = %6
  %12 = getelementptr inbounds [6 x [3 x i32]], ptr @__const.comm.permutations, i64 0, i64 %5, i64 %7
  %13 = load i32, ptr %12, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %11, %6
  %15 = phi i32 [ %13, %11 ], [ %10, %6 ]
  %16 = tail call double @timer() #24
  %17 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %18 = load i32, ptr @num_refine, align 4, !tbaa !7
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %17, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %14
  %25 = sext i32 %15 to i64
  br label %160

26:                                               ; preds = %14
  %27 = shl i32 %15, 1
  %28 = sext i32 %15 to i64
  %29 = getelementptr inbounds [3 x double], ptr @timer_comm_bc, i64 0, i64 %28
  %30 = or i32 %27, 1
  %31 = getelementptr inbounds [3 x i32], ptr @counter_diff, i64 0, i64 %28
  %32 = getelementptr inbounds [3 x double], ptr @timer_comm_diff, i64 0, i64 %28
  %33 = getelementptr inbounds [3 x double], ptr @timer_comm_same, i64 0, i64 %28
  %34 = sext i32 %27 to i64
  %35 = add i32 %27, 2
  br label %36

36:                                               ; preds = %150, %26
  %37 = phi i32 [ %18, %26 ], [ %151, %150 ]
  %38 = phi ptr [ %17, %26 ], [ %152, %150 ]
  %39 = phi i64 [ 0, %26 ], [ %153, %150 ]
  %40 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.sorted_block, ptr %40, i64 %39, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !52
  %43 = load ptr, ptr @blocks, align 8, !tbaa !11
  %44 = sext i32 %42 to i64
  %45 = getelementptr inbounds %struct.block, ptr %43, i64 %44
  %46 = load i32, ptr %45, align 8, !tbaa !13
  %47 = icmp sgt i32 %46, -1
  br i1 %47, label %48, label %150

48:                                               ; preds = %36
  %49 = getelementptr inbounds %struct.block, ptr %43, i64 %44, i32 1
  br label %50

50:                                               ; preds = %137, %48
  %51 = phi i64 [ %34, %48 ], [ %144, %137 ]
  %52 = getelementptr inbounds %struct.block, ptr %43, i64 %44, i32 8, i64 %51
  %53 = load i32, ptr %52, align 4, !tbaa !7
  %54 = load i32, ptr %49, align 4, !tbaa !15
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %50
  %57 = tail call double @timer() #24
  %58 = getelementptr inbounds %struct.block, ptr %43, i64 %44, i32 9, i64 %51
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = icmp sgt i32 %59, %42
  br i1 %60, label %61, label %137

61:                                               ; preds = %56
  %62 = trunc i64 %51 to i32
  tail call void @on_proc_comm(i32 noundef %42, i32 noundef %59, i32 noundef %62, i32 noundef %0, i32 noundef %1) #22
  br label %129

63:                                               ; preds = %50
  %64 = add nsw i32 %54, 1
  %65 = icmp eq i32 %53, %64
  br i1 %65, label %66, label %85

66:                                               ; preds = %63
  %67 = tail call double @timer() #24
  %68 = trunc i64 %51 to i32
  br label %69

69:                                               ; preds = %84, %66
  %70 = phi i1 [ true, %66 ], [ false, %84 ]
  %71 = phi i64 [ 0, %66 ], [ 1, %84 ]
  %72 = trunc i64 %71 to i32
  br label %73

73:                                               ; preds = %83, %69
  %74 = phi i1 [ true, %69 ], [ false, %83 ]
  %75 = phi i64 [ 0, %69 ], [ 1, %83 ]
  %76 = getelementptr inbounds %struct.block, ptr %43, i64 %44, i32 9, i64 %51, i64 %71, i64 %75
  %77 = load i32, ptr %76, align 4, !tbaa !7
  %78 = icmp sgt i32 %77, %42
  br i1 %78, label %79, label %83

79:                                               ; preds = %73
  %80 = trunc i64 %75 to i32
  tail call void @on_proc_comm_diff(i32 noundef %42, i32 noundef %77, i32 noundef %68, i32 noundef %72, i32 noundef %80, i32 noundef %0, i32 noundef %1) #22
  %81 = load i32, ptr %31, align 4, !tbaa !7
  %82 = add nsw i32 %81, 2
  store i32 %82, ptr %31, align 4, !tbaa !7
  br label %83

83:                                               ; preds = %79, %73
  br i1 %74, label %73, label %84, !llvm.loop !70

84:                                               ; preds = %83
  br i1 %70, label %69, label %137, !llvm.loop !71

85:                                               ; preds = %63
  %86 = add nsw i32 %54, -1
  %87 = icmp eq i32 %53, %86
  br i1 %87, label %88, label %122

88:                                               ; preds = %85
  %89 = tail call double @timer() #24
  %90 = getelementptr inbounds %struct.block, ptr %43, i64 %44, i32 9, i64 %51
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = icmp sgt i32 %91, %42
  br i1 %92, label %93, label %137

93:                                               ; preds = %88
  %94 = trunc i64 %51 to i32
  %95 = srem i32 %94, 2
  %96 = sub nsw i32 %30, %95
  %97 = sext i32 %91 to i64
  %98 = sext i32 %96 to i64
  %99 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %100

100:                                              ; preds = %121, %93
  %101 = phi ptr [ %99, %93 ], [ %.lcssa, %121 ]
  %102 = phi i1 [ true, %93 ], [ false, %121 ]
  %103 = phi i64 [ 0, %93 ], [ 1, %121 ]
  %104 = trunc i64 %103 to i32
  br label %105

105:                                              ; preds = %118, %100
  %106 = phi ptr [ %101, %100 ], [ %119, %118 ]
  %107 = phi ptr [ %101, %100 ], [ %120, %118 ]
  %108 = phi i1 [ true, %100 ], [ false, %118 ]
  %109 = phi i64 [ 0, %100 ], [ 1, %118 ]
  %110 = getelementptr inbounds %struct.block, ptr %107, i64 %97, i32 9, i64 %98, i64 %103, i64 %109
  %111 = load i32, ptr %110, align 4, !tbaa !7
  %112 = icmp eq i32 %111, %42
  br i1 %112, label %113, label %118

113:                                              ; preds = %105
  %114 = trunc i64 %109 to i32
  tail call void @on_proc_comm_diff(i32 noundef %91, i32 noundef %42, i32 noundef %96, i32 noundef %104, i32 noundef %114, i32 noundef %0, i32 noundef %1) #22
  %115 = load i32, ptr %31, align 4, !tbaa !7
  %116 = add nsw i32 %115, 2
  store i32 %116, ptr %31, align 4, !tbaa !7
  %117 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %118

118:                                              ; preds = %113, %105
  %119 = phi ptr [ %106, %105 ], [ %117, %113 ]
  %120 = phi ptr [ %107, %105 ], [ %117, %113 ]
  br i1 %108, label %105, label %121, !llvm.loop !72

121:                                              ; preds = %118
  %.lcssa = phi ptr [ %119, %118 ]
  br i1 %102, label %100, label %137, !llvm.loop !73

122:                                              ; preds = %85
  %123 = icmp eq i32 %53, -2
  br i1 %123, label %124, label %127

124:                                              ; preds = %122
  %125 = tail call double @timer() #24
  %126 = trunc i64 %51 to i32
  tail call void @apply_bc(i32 noundef %126, ptr noundef nonnull %45, i32 noundef %0, i32 noundef %1) #22
  br label %129

127:                                              ; preds = %122
  %128 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.1)
  tail call void @exit(i32 noundef -1) #23
  unreachable

129:                                              ; preds = %124, %61
  %130 = phi ptr [ @counter_same, %61 ], [ @counter_bc, %124 ]
  %131 = phi i32 [ 2, %61 ], [ 1, %124 ]
  %132 = phi double [ %57, %61 ], [ %125, %124 ]
  %133 = phi ptr [ %33, %61 ], [ %29, %124 ]
  %134 = getelementptr inbounds [3 x i32], ptr %130, i64 0, i64 %28
  %135 = load i32, ptr %134, align 4, !tbaa !7
  %136 = add nsw i32 %135, %131
  store i32 %136, ptr %134, align 4, !tbaa !7
  br label %137

137:                                              ; preds = %129, %121, %88, %84, %56
  %138 = phi double [ %57, %56 ], [ %89, %88 ], [ %132, %129 ], [ %67, %84 ], [ %89, %121 ]
  %139 = phi ptr [ %33, %56 ], [ %32, %88 ], [ %133, %129 ], [ %32, %84 ], [ %32, %121 ]
  %140 = tail call double @timer() #24
  %141 = fsub double %140, %138
  %142 = load double, ptr %139, align 8, !tbaa !28
  %143 = fadd double %142, %141
  store double %143, ptr %139, align 8, !tbaa !28
  %144 = add nsw i64 %51, 1
  %145 = trunc i64 %144 to i32
  %146 = icmp eq i32 %35, %145
  br i1 %146, label %147, label %50, !llvm.loop !74

147:                                              ; preds = %137
  %148 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %149 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %150

150:                                              ; preds = %147, %36
  %151 = phi i32 [ %149, %147 ], [ %37, %36 ]
  %152 = phi ptr [ %148, %147 ], [ %38, %36 ]
  %153 = add nuw nsw i64 %39, 1
  %154 = add nsw i32 %151, 1
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds i32, ptr %152, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !7
  %158 = sext i32 %157 to i64
  %159 = icmp slt i64 %153, %158
  br i1 %159, label %36, label %160, !llvm.loop !75

160:                                              ; preds = %150, %24
  %161 = phi i64 [ %25, %24 ], [ %28, %150 ]
  %162 = tail call double @timer() #24
  %163 = fsub double %162, %16
  %164 = getelementptr inbounds [3 x double], ptr @timer_comm_dir, i64 0, i64 %161
  %165 = load double, ptr %164, align 8, !tbaa !28
  %166 = fadd double %165, %163
  store double %166, ptr %164, align 8, !tbaa !28
  %167 = add nuw nsw i64 %7, 1
  %168 = icmp eq i64 %167, 3
  br i1 %168, label %169, label %6, !llvm.loop !76

169:                                              ; preds = %160
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @on_proc_comm(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #5 {
  %6 = load i32, ptr @code, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  %8 = add i32 %2, 1
  %9 = icmp ult i32 %8, 3
  br i1 %7, label %10, label %233

10:                                               ; preds = %5
  br i1 %9, label %11, label %83

11:                                               ; preds = %10
  %12 = icmp sgt i32 %4, 0
  br i1 %12, label %13, label %440

13:                                               ; preds = %11
  %14 = and i32 %2, 1
  %15 = icmp eq i32 %14, 0
  %16 = load ptr, ptr @blocks, align 8, !tbaa !11
  %17 = sext i32 %1 to i64
  %18 = getelementptr inbounds %struct.block, ptr %16, i64 %17
  %19 = sext i32 %0 to i64
  %20 = getelementptr inbounds %struct.block, ptr %16, i64 %19
  %21 = select i1 %15, ptr %18, ptr %20
  %22 = select i1 %15, ptr %20, ptr %18
  %23 = add nsw i32 %4, %3
  %24 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %25 = icmp slt i32 %24, 1
  %26 = load i32, ptr @z_block_size, align 4
  %27 = icmp slt i32 %26, 1
  %28 = getelementptr inbounds %struct.block, ptr %22, i64 0, i32 11
  %29 = getelementptr inbounds %struct.block, ptr %21, i64 0, i32 11
  %30 = add i32 %26, 1
  %31 = add i32 %24, 1
  %32 = sext i32 %3 to i64
  %33 = sext i32 %23 to i64
  %34 = zext i32 %31 to i64
  %35 = zext i32 %30 to i64
  br label %36

36:                                               ; preds = %80, %13
  %37 = phi i64 [ %32, %13 ], [ %81, %80 ]
  br i1 %25, label %80, label %38

38:                                               ; preds = %36
  %39 = load i32, ptr @x_block_size, align 4
  %40 = add nsw i32 %39, 1
  %41 = sext i32 %40 to i64
  %42 = sext i32 %39 to i64
  br label %43

43:                                               ; preds = %77, %38
  %44 = phi i64 [ 1, %38 ], [ %78, %77 ]
  br i1 %27, label %77, label %45

45:                                               ; preds = %43
  %46 = load ptr, ptr %28, align 8, !tbaa !27
  %47 = getelementptr inbounds ptr, ptr %46, i64 %37
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  %49 = getelementptr inbounds ptr, ptr %48, i64 1
  %50 = load ptr, ptr %49, align 8, !tbaa !11
  %51 = getelementptr inbounds ptr, ptr %50, i64 %44
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = load ptr, ptr %29, align 8, !tbaa !27
  %54 = getelementptr inbounds ptr, ptr %53, i64 %37
  %55 = load ptr, ptr %54, align 8, !tbaa !11
  %56 = getelementptr inbounds ptr, ptr %55, i64 %41
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds ptr, ptr %57, i64 %44
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = getelementptr inbounds ptr, ptr %55, i64 %42
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = getelementptr inbounds ptr, ptr %61, i64 %44
  %63 = load ptr, ptr %62, align 8, !tbaa !11
  %64 = load ptr, ptr %48, align 8, !tbaa !11
  %65 = getelementptr inbounds ptr, ptr %64, i64 %44
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  br label %67

67:                                               ; preds = %67, %45
  %68 = phi i64 [ 1, %45 ], [ %75, %67 ]
  %69 = getelementptr inbounds double, ptr %52, i64 %68
  %70 = load double, ptr %69, align 8, !tbaa !28
  %71 = getelementptr inbounds double, ptr %59, i64 %68
  store double %70, ptr %71, align 8, !tbaa !28
  %72 = getelementptr inbounds double, ptr %63, i64 %68
  %73 = load double, ptr %72, align 8, !tbaa !28
  %74 = getelementptr inbounds double, ptr %66, i64 %68
  store double %73, ptr %74, align 8, !tbaa !28
  %75 = add nuw nsw i64 %68, 1
  %76 = icmp eq i64 %75, %35
  br i1 %76, label %77, label %67, !llvm.loop !77

77:                                               ; preds = %67, %43
  %78 = add nuw nsw i64 %44, 1
  %79 = icmp eq i64 %78, %34
  br i1 %79, label %80, label %43, !llvm.loop !78

80:                                               ; preds = %77, %36
  %81 = add nsw i64 %37, 1
  %82 = icmp slt i64 %81, %33
  br i1 %82, label %36, label %440, !llvm.loop !79

83:                                               ; preds = %10
  %84 = and i32 %2, -2
  switch i32 %84, label %440 [
    i32 2, label %85
    i32 4, label %160
  ]

85:                                               ; preds = %83
  %86 = icmp sgt i32 %4, 0
  br i1 %86, label %87, label %440

87:                                               ; preds = %85
  %88 = and i32 %2, 1
  %89 = icmp eq i32 %88, 0
  %90 = load ptr, ptr @blocks, align 8, !tbaa !11
  %91 = sext i32 %1 to i64
  %92 = getelementptr inbounds %struct.block, ptr %90, i64 %91
  %93 = sext i32 %0 to i64
  %94 = getelementptr inbounds %struct.block, ptr %90, i64 %93
  %95 = select i1 %89, ptr %92, ptr %94
  %96 = select i1 %89, ptr %94, ptr %92
  %97 = add nsw i32 %4, %3
  %98 = load i32, ptr @x_block_size, align 4
  %99 = load i32, ptr @stencil, align 4, !tbaa !7
  %100 = icmp eq i32 %99, 7
  %101 = xor i1 %100, true
  %102 = zext i1 %101 to i32
  %103 = add i32 %98, %102
  %104 = zext i1 %100 to i32
  %105 = icmp slt i32 %103, %104
  %106 = load i32, ptr @z_block_size, align 4
  %107 = icmp slt i32 %106, 1
  %108 = getelementptr inbounds %struct.block, ptr %96, i64 0, i32 11
  %109 = getelementptr inbounds %struct.block, ptr %95, i64 0, i32 11
  %110 = add i32 %106, 1
  %111 = zext i1 %100 to i64
  %112 = add i32 %103, 1
  %113 = sext i32 %3 to i64
  %114 = sext i32 %97 to i64
  %115 = zext i32 %112 to i64
  %116 = zext i32 %110 to i64
  br label %117

117:                                              ; preds = %157, %87
  %118 = phi i64 [ %113, %87 ], [ %158, %157 ]
  br i1 %105, label %157, label %119

119:                                              ; preds = %117
  %120 = load i32, ptr @y_block_size, align 4
  %121 = add nsw i32 %120, 1
  %122 = sext i32 %121 to i64
  %123 = sext i32 %120 to i64
  br label %124

124:                                              ; preds = %154, %119
  %125 = phi i64 [ %111, %119 ], [ %155, %154 ]
  br i1 %107, label %154, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %108, align 8, !tbaa !27
  %128 = getelementptr inbounds ptr, ptr %127, i64 %118
  %129 = load ptr, ptr %128, align 8, !tbaa !11
  %130 = getelementptr inbounds ptr, ptr %129, i64 %125
  %131 = load ptr, ptr %130, align 8, !tbaa !11
  %132 = getelementptr inbounds ptr, ptr %131, i64 1
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  %134 = load ptr, ptr %109, align 8, !tbaa !27
  %135 = getelementptr inbounds ptr, ptr %134, i64 %118
  %136 = load ptr, ptr %135, align 8, !tbaa !11
  %137 = getelementptr inbounds ptr, ptr %136, i64 %125
  %138 = load ptr, ptr %137, align 8, !tbaa !11
  %139 = getelementptr inbounds ptr, ptr %138, i64 %122
  %140 = load ptr, ptr %139, align 8, !tbaa !11
  %141 = getelementptr inbounds ptr, ptr %138, i64 %123
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  %143 = load ptr, ptr %131, align 8, !tbaa !11
  br label %144

144:                                              ; preds = %144, %126
  %145 = phi i64 [ 1, %126 ], [ %152, %144 ]
  %146 = getelementptr inbounds double, ptr %133, i64 %145
  %147 = load double, ptr %146, align 8, !tbaa !28
  %148 = getelementptr inbounds double, ptr %140, i64 %145
  store double %147, ptr %148, align 8, !tbaa !28
  %149 = getelementptr inbounds double, ptr %142, i64 %145
  %150 = load double, ptr %149, align 8, !tbaa !28
  %151 = getelementptr inbounds double, ptr %143, i64 %145
  store double %150, ptr %151, align 8, !tbaa !28
  %152 = add nuw nsw i64 %145, 1
  %153 = icmp eq i64 %152, %116
  br i1 %153, label %154, label %144, !llvm.loop !80

154:                                              ; preds = %144, %124
  %155 = add nuw nsw i64 %125, 1
  %156 = icmp eq i64 %155, %115
  br i1 %156, label %157, label %124, !llvm.loop !81

157:                                              ; preds = %154, %117
  %158 = add nsw i64 %118, 1
  %159 = icmp slt i64 %158, %114
  br i1 %159, label %117, label %440, !llvm.loop !82

160:                                              ; preds = %83
  %161 = icmp sgt i32 %4, 0
  br i1 %161, label %162, label %440

162:                                              ; preds = %160
  %163 = load i32, ptr @stencil, align 4, !tbaa !7
  %164 = icmp ne i32 %163, 7
  %165 = load i32, ptr @y_block_size, align 4
  %166 = zext i1 %164 to i32
  %167 = add nsw i32 %165, %166
  %168 = xor i1 %164, true
  %169 = zext i1 %168 to i32
  %170 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %171 = zext i1 %164 to i32
  %172 = add nsw i32 %170, %171
  %173 = and i32 %2, 1
  %174 = icmp eq i32 %173, 0
  %175 = load ptr, ptr @blocks, align 8, !tbaa !11
  %176 = sext i32 %1 to i64
  %177 = getelementptr inbounds %struct.block, ptr %175, i64 %176
  %178 = sext i32 %0 to i64
  %179 = getelementptr inbounds %struct.block, ptr %175, i64 %178
  %180 = select i1 %174, ptr %177, ptr %179
  %181 = select i1 %174, ptr %179, ptr %177
  %182 = add nsw i32 %4, %3
  %183 = icmp slt i32 %172, %169
  %184 = icmp slt i32 %167, %169
  %185 = getelementptr inbounds %struct.block, ptr %181, i64 0, i32 11
  %186 = getelementptr inbounds %struct.block, ptr %180, i64 0, i32 11
  %187 = zext i1 %168 to i64
  %188 = add i32 %167, 1
  %189 = add i32 %172, 1
  %190 = sext i32 %3 to i64
  %191 = sext i32 %182 to i64
  %192 = zext i32 %189 to i64
  %193 = zext i32 %188 to i64
  br label %194

194:                                              ; preds = %230, %162
  %195 = phi i64 [ %190, %162 ], [ %231, %230 ]
  br i1 %183, label %230, label %196

196:                                              ; preds = %194
  %197 = load i32, ptr @z_block_size, align 4
  %198 = add nsw i32 %197, 1
  %199 = sext i32 %198 to i64
  %200 = sext i32 %197 to i64
  br label %201

201:                                              ; preds = %227, %196
  %202 = phi i64 [ %187, %196 ], [ %228, %227 ]
  br i1 %184, label %227, label %203

203:                                              ; preds = %201
  %204 = load ptr, ptr %185, align 8, !tbaa !27
  %205 = getelementptr inbounds ptr, ptr %204, i64 %195
  %206 = load ptr, ptr %205, align 8, !tbaa !11
  %207 = getelementptr inbounds ptr, ptr %206, i64 %202
  %208 = load ptr, ptr %207, align 8, !tbaa !11
  %209 = load ptr, ptr %186, align 8, !tbaa !27
  %210 = getelementptr inbounds ptr, ptr %209, i64 %195
  %211 = load ptr, ptr %210, align 8, !tbaa !11
  %212 = getelementptr inbounds ptr, ptr %211, i64 %202
  %213 = load ptr, ptr %212, align 8, !tbaa !11
  br label %214

214:                                              ; preds = %214, %203
  %215 = phi i64 [ %187, %203 ], [ %225, %214 ]
  %216 = getelementptr inbounds ptr, ptr %208, i64 %215
  %217 = load ptr, ptr %216, align 8, !tbaa !11
  %218 = getelementptr inbounds double, ptr %217, i64 1
  %219 = load double, ptr %218, align 8, !tbaa !28
  %220 = getelementptr inbounds ptr, ptr %213, i64 %215
  %221 = load ptr, ptr %220, align 8, !tbaa !11
  %222 = getelementptr inbounds double, ptr %221, i64 %199
  store double %219, ptr %222, align 8, !tbaa !28
  %223 = getelementptr inbounds double, ptr %221, i64 %200
  %224 = load double, ptr %223, align 8, !tbaa !28
  store double %224, ptr %217, align 8, !tbaa !28
  %225 = add nuw nsw i64 %215, 1
  %226 = icmp eq i64 %225, %193
  br i1 %226, label %227, label %214, !llvm.loop !83

227:                                              ; preds = %214, %201
  %228 = add nuw nsw i64 %202, 1
  %229 = icmp eq i64 %228, %192
  br i1 %229, label %230, label %201, !llvm.loop !84

230:                                              ; preds = %227, %194
  %231 = add nsw i64 %195, 1
  %232 = icmp slt i64 %231, %191
  br i1 %232, label %194, label %440, !llvm.loop !85

233:                                              ; preds = %5
  br i1 %9, label %234, label %306

234:                                              ; preds = %233
  %235 = icmp sgt i32 %4, 0
  br i1 %235, label %236, label %440

236:                                              ; preds = %234
  %237 = and i32 %2, 1
  %238 = icmp eq i32 %237, 0
  %239 = load ptr, ptr @blocks, align 8, !tbaa !11
  %240 = sext i32 %1 to i64
  %241 = getelementptr inbounds %struct.block, ptr %239, i64 %240
  %242 = sext i32 %0 to i64
  %243 = getelementptr inbounds %struct.block, ptr %239, i64 %242
  %244 = select i1 %238, ptr %241, ptr %243
  %245 = select i1 %238, ptr %243, ptr %241
  %246 = add nsw i32 %4, %3
  %247 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %248 = icmp slt i32 %247, -1
  %249 = load i32, ptr @z_block_size, align 4
  %250 = icmp slt i32 %249, -1
  %251 = getelementptr inbounds %struct.block, ptr %245, i64 0, i32 11
  %252 = getelementptr inbounds %struct.block, ptr %244, i64 0, i32 11
  %253 = add i32 %249, 2
  %254 = add i32 %247, 2
  %255 = sext i32 %3 to i64
  %256 = sext i32 %246 to i64
  %257 = zext i32 %254 to i64
  %258 = zext i32 %253 to i64
  br label %259

259:                                              ; preds = %303, %236
  %260 = phi i64 [ %255, %236 ], [ %304, %303 ]
  br i1 %248, label %303, label %261

261:                                              ; preds = %259
  %262 = load i32, ptr @x_block_size, align 4
  %263 = add nsw i32 %262, 1
  %264 = sext i32 %263 to i64
  %265 = sext i32 %262 to i64
  br label %266

266:                                              ; preds = %300, %261
  %267 = phi i64 [ 0, %261 ], [ %301, %300 ]
  br i1 %250, label %300, label %268

268:                                              ; preds = %266
  %269 = load ptr, ptr %251, align 8, !tbaa !27
  %270 = getelementptr inbounds ptr, ptr %269, i64 %260
  %271 = load ptr, ptr %270, align 8, !tbaa !11
  %272 = getelementptr inbounds ptr, ptr %271, i64 1
  %273 = load ptr, ptr %272, align 8, !tbaa !11
  %274 = getelementptr inbounds ptr, ptr %273, i64 %267
  %275 = load ptr, ptr %274, align 8, !tbaa !11
  %276 = load ptr, ptr %252, align 8, !tbaa !27
  %277 = getelementptr inbounds ptr, ptr %276, i64 %260
  %278 = load ptr, ptr %277, align 8, !tbaa !11
  %279 = getelementptr inbounds ptr, ptr %278, i64 %264
  %280 = load ptr, ptr %279, align 8, !tbaa !11
  %281 = getelementptr inbounds ptr, ptr %280, i64 %267
  %282 = load ptr, ptr %281, align 8, !tbaa !11
  %283 = getelementptr inbounds ptr, ptr %278, i64 %265
  %284 = load ptr, ptr %283, align 8, !tbaa !11
  %285 = getelementptr inbounds ptr, ptr %284, i64 %267
  %286 = load ptr, ptr %285, align 8, !tbaa !11
  %287 = load ptr, ptr %271, align 8, !tbaa !11
  %288 = getelementptr inbounds ptr, ptr %287, i64 %267
  %289 = load ptr, ptr %288, align 8, !tbaa !11
  br label %290

290:                                              ; preds = %290, %268
  %291 = phi i64 [ 0, %268 ], [ %298, %290 ]
  %292 = getelementptr inbounds double, ptr %275, i64 %291
  %293 = load double, ptr %292, align 8, !tbaa !28
  %294 = getelementptr inbounds double, ptr %282, i64 %291
  store double %293, ptr %294, align 8, !tbaa !28
  %295 = getelementptr inbounds double, ptr %286, i64 %291
  %296 = load double, ptr %295, align 8, !tbaa !28
  %297 = getelementptr inbounds double, ptr %289, i64 %291
  store double %296, ptr %297, align 8, !tbaa !28
  %298 = add nuw nsw i64 %291, 1
  %299 = icmp eq i64 %298, %258
  br i1 %299, label %300, label %290, !llvm.loop !86

300:                                              ; preds = %290, %266
  %301 = add nuw nsw i64 %267, 1
  %302 = icmp eq i64 %301, %257
  br i1 %302, label %303, label %266, !llvm.loop !87

303:                                              ; preds = %300, %259
  %304 = add nsw i64 %260, 1
  %305 = icmp slt i64 %304, %256
  br i1 %305, label %259, label %440, !llvm.loop !88

306:                                              ; preds = %233
  %307 = and i32 %2, -2
  switch i32 %307, label %440 [
    i32 2, label %308
    i32 4, label %376
  ]

308:                                              ; preds = %306
  %309 = icmp sgt i32 %4, 0
  br i1 %309, label %310, label %440

310:                                              ; preds = %308
  %311 = and i32 %2, 1
  %312 = icmp eq i32 %311, 0
  %313 = load ptr, ptr @blocks, align 8, !tbaa !11
  %314 = sext i32 %1 to i64
  %315 = getelementptr inbounds %struct.block, ptr %313, i64 %314
  %316 = sext i32 %0 to i64
  %317 = getelementptr inbounds %struct.block, ptr %313, i64 %316
  %318 = select i1 %312, ptr %315, ptr %317
  %319 = select i1 %312, ptr %317, ptr %315
  %320 = add nsw i32 %4, %3
  %321 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %322 = icmp slt i32 %321, -1
  %323 = load i32, ptr @z_block_size, align 4
  %324 = icmp slt i32 %323, -1
  %325 = getelementptr inbounds %struct.block, ptr %319, i64 0, i32 11
  %326 = getelementptr inbounds %struct.block, ptr %318, i64 0, i32 11
  %327 = add i32 %323, 2
  %328 = add i32 %321, 2
  %329 = sext i32 %3 to i64
  %330 = sext i32 %320 to i64
  %331 = zext i32 %328 to i64
  %332 = zext i32 %327 to i64
  br label %333

333:                                              ; preds = %373, %310
  %334 = phi i64 [ %329, %310 ], [ %374, %373 ]
  br i1 %322, label %373, label %335

335:                                              ; preds = %333
  %336 = load i32, ptr @y_block_size, align 4
  %337 = add nsw i32 %336, 1
  %338 = sext i32 %337 to i64
  %339 = sext i32 %336 to i64
  br label %340

340:                                              ; preds = %370, %335
  %341 = phi i64 [ 0, %335 ], [ %371, %370 ]
  br i1 %324, label %370, label %342

342:                                              ; preds = %340
  %343 = load ptr, ptr %325, align 8, !tbaa !27
  %344 = getelementptr inbounds ptr, ptr %343, i64 %334
  %345 = load ptr, ptr %344, align 8, !tbaa !11
  %346 = getelementptr inbounds ptr, ptr %345, i64 %341
  %347 = load ptr, ptr %346, align 8, !tbaa !11
  %348 = getelementptr inbounds ptr, ptr %347, i64 1
  %349 = load ptr, ptr %348, align 8, !tbaa !11
  %350 = load ptr, ptr %326, align 8, !tbaa !27
  %351 = getelementptr inbounds ptr, ptr %350, i64 %334
  %352 = load ptr, ptr %351, align 8, !tbaa !11
  %353 = getelementptr inbounds ptr, ptr %352, i64 %341
  %354 = load ptr, ptr %353, align 8, !tbaa !11
  %355 = getelementptr inbounds ptr, ptr %354, i64 %338
  %356 = load ptr, ptr %355, align 8, !tbaa !11
  %357 = getelementptr inbounds ptr, ptr %354, i64 %339
  %358 = load ptr, ptr %357, align 8, !tbaa !11
  %359 = load ptr, ptr %347, align 8, !tbaa !11
  br label %360

360:                                              ; preds = %360, %342
  %361 = phi i64 [ 0, %342 ], [ %368, %360 ]
  %362 = getelementptr inbounds double, ptr %349, i64 %361
  %363 = load double, ptr %362, align 8, !tbaa !28
  %364 = getelementptr inbounds double, ptr %356, i64 %361
  store double %363, ptr %364, align 8, !tbaa !28
  %365 = getelementptr inbounds double, ptr %358, i64 %361
  %366 = load double, ptr %365, align 8, !tbaa !28
  %367 = getelementptr inbounds double, ptr %359, i64 %361
  store double %366, ptr %367, align 8, !tbaa !28
  %368 = add nuw nsw i64 %361, 1
  %369 = icmp eq i64 %368, %332
  br i1 %369, label %370, label %360, !llvm.loop !89

370:                                              ; preds = %360, %340
  %371 = add nuw nsw i64 %341, 1
  %372 = icmp eq i64 %371, %331
  br i1 %372, label %373, label %340, !llvm.loop !90

373:                                              ; preds = %370, %333
  %374 = add nsw i64 %334, 1
  %375 = icmp slt i64 %374, %330
  br i1 %375, label %333, label %440, !llvm.loop !91

376:                                              ; preds = %306
  %377 = icmp sgt i32 %4, 0
  br i1 %377, label %378, label %440

378:                                              ; preds = %376
  %379 = and i32 %2, 1
  %380 = icmp eq i32 %379, 0
  %381 = load ptr, ptr @blocks, align 8, !tbaa !11
  %382 = sext i32 %1 to i64
  %383 = getelementptr inbounds %struct.block, ptr %381, i64 %382
  %384 = sext i32 %0 to i64
  %385 = getelementptr inbounds %struct.block, ptr %381, i64 %384
  %386 = select i1 %380, ptr %383, ptr %385
  %387 = select i1 %380, ptr %385, ptr %383
  %388 = add nsw i32 %4, %3
  %389 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %390 = icmp slt i32 %389, -1
  %391 = load i32, ptr @y_block_size, align 4
  %392 = icmp slt i32 %391, -1
  %393 = getelementptr inbounds %struct.block, ptr %387, i64 0, i32 11
  %394 = getelementptr inbounds %struct.block, ptr %386, i64 0, i32 11
  %395 = add i32 %391, 2
  %396 = add i32 %389, 2
  %397 = sext i32 %3 to i64
  %398 = sext i32 %388 to i64
  %399 = zext i32 %396 to i64
  %400 = zext i32 %395 to i64
  br label %401

401:                                              ; preds = %437, %378
  %402 = phi i64 [ %397, %378 ], [ %438, %437 ]
  br i1 %390, label %437, label %403

403:                                              ; preds = %401
  %404 = load i32, ptr @z_block_size, align 4
  %405 = add nsw i32 %404, 1
  %406 = sext i32 %405 to i64
  %407 = sext i32 %404 to i64
  br label %408

408:                                              ; preds = %434, %403
  %409 = phi i64 [ 0, %403 ], [ %435, %434 ]
  br i1 %392, label %434, label %410

410:                                              ; preds = %408
  %411 = load ptr, ptr %393, align 8, !tbaa !27
  %412 = getelementptr inbounds ptr, ptr %411, i64 %402
  %413 = load ptr, ptr %412, align 8, !tbaa !11
  %414 = getelementptr inbounds ptr, ptr %413, i64 %409
  %415 = load ptr, ptr %414, align 8, !tbaa !11
  %416 = load ptr, ptr %394, align 8, !tbaa !27
  %417 = getelementptr inbounds ptr, ptr %416, i64 %402
  %418 = load ptr, ptr %417, align 8, !tbaa !11
  %419 = getelementptr inbounds ptr, ptr %418, i64 %409
  %420 = load ptr, ptr %419, align 8, !tbaa !11
  br label %421

421:                                              ; preds = %421, %410
  %422 = phi i64 [ 0, %410 ], [ %432, %421 ]
  %423 = getelementptr inbounds ptr, ptr %415, i64 %422
  %424 = load ptr, ptr %423, align 8, !tbaa !11
  %425 = getelementptr inbounds double, ptr %424, i64 1
  %426 = load double, ptr %425, align 8, !tbaa !28
  %427 = getelementptr inbounds ptr, ptr %420, i64 %422
  %428 = load ptr, ptr %427, align 8, !tbaa !11
  %429 = getelementptr inbounds double, ptr %428, i64 %406
  store double %426, ptr %429, align 8, !tbaa !28
  %430 = getelementptr inbounds double, ptr %428, i64 %407
  %431 = load double, ptr %430, align 8, !tbaa !28
  store double %431, ptr %424, align 8, !tbaa !28
  %432 = add nuw nsw i64 %422, 1
  %433 = icmp eq i64 %432, %400
  br i1 %433, label %434, label %421, !llvm.loop !92

434:                                              ; preds = %421, %408
  %435 = add nuw nsw i64 %409, 1
  %436 = icmp eq i64 %435, %399
  br i1 %436, label %437, label %408, !llvm.loop !93

437:                                              ; preds = %434, %401
  %438 = add nsw i64 %402, 1
  %439 = icmp slt i64 %438, %398
  br i1 %439, label %401, label %440, !llvm.loop !94

440:                                              ; preds = %437, %376, %373, %308, %306, %303, %234, %230, %160, %157, %85, %83, %80, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @on_proc_comm_diff(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #5 {
  %8 = load ptr, ptr @blocks, align 8, !tbaa !11
  %9 = sext i32 %0 to i64
  %10 = sext i32 %1 to i64
  %11 = load i32, ptr @code, align 4, !tbaa !7
  %12 = icmp eq i32 %11, 0
  %13 = add i32 %2, 1
  %14 = icmp ult i32 %13, 3
  br i1 %12, label %15, label %318

15:                                               ; preds = %7
  br i1 %14, label %16, label %118

16:                                               ; preds = %15
  %17 = icmp eq i32 %2, 0
  %18 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %19 = add nsw i32 %18, 1
  br i1 %17, label %20, label %23

20:                                               ; preds = %16
  %21 = sext i32 %19 to i64
  %22 = sext i32 %18 to i64
  br label %26

23:                                               ; preds = %16
  %24 = sext i32 %18 to i64
  %25 = sext i32 %19 to i64
  br label %26

26:                                               ; preds = %23, %20
  %27 = phi i64 [ 0, %20 ], [ %25, %23 ]
  %28 = phi i64 [ 1, %20 ], [ %24, %23 ]
  %29 = phi i64 [ %21, %20 ], [ 0, %23 ]
  %30 = phi i64 [ %22, %20 ], [ 1, %23 ]
  %31 = icmp sgt i32 %6, 0
  br i1 %31, label %32, label %1126

32:                                               ; preds = %26
  %33 = add nsw i32 %6, %5
  %34 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %35 = mul nsw i32 %34, %3
  %36 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %37 = mul nsw i32 %36, %4
  %38 = icmp slt i32 %36, 1
  %39 = icmp slt i32 %34, 1
  %40 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %41 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %42 = sext i32 %35 to i64
  %43 = add i32 %34, 1
  %44 = sext i32 %37 to i64
  %45 = add i32 %36, 1
  %46 = sext i32 %5 to i64
  %47 = sext i32 %33 to i64
  %48 = zext i32 %45 to i64
  %49 = zext i32 %43 to i64
  br label %50

50:                                               ; preds = %115, %32
  %51 = phi i64 [ %46, %32 ], [ %116, %115 ]
  br i1 %38, label %115, label %52

52:                                               ; preds = %112, %50
  %53 = phi i64 [ %113, %112 ], [ 1, %50 ]
  br i1 %39, label %112, label %54

54:                                               ; preds = %52
  %55 = load ptr, ptr %40, align 8, !tbaa !27
  %56 = getelementptr inbounds ptr, ptr %55, i64 %51
  %57 = load ptr, ptr %56, align 8, !tbaa !11
  %58 = getelementptr inbounds ptr, ptr %57, i64 %28
  %59 = load ptr, ptr %58, align 8, !tbaa !11
  %60 = add nsw i64 %53, %44
  %61 = getelementptr inbounds ptr, ptr %59, i64 %60
  %62 = load ptr, ptr %61, align 8, !tbaa !11
  %63 = load ptr, ptr %41, align 8, !tbaa !27
  %64 = getelementptr inbounds ptr, ptr %63, i64 %51
  %65 = load ptr, ptr %64, align 8, !tbaa !11
  %66 = getelementptr inbounds ptr, ptr %65, i64 %29
  %67 = load ptr, ptr %66, align 8, !tbaa !11
  %68 = shl nuw nsw i64 %53, 1
  %69 = getelementptr inbounds ptr, ptr %67, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = shl i64 %53, 33
  %72 = add i64 %71, -4294967296
  %73 = ashr exact i64 %72, 32
  %74 = getelementptr inbounds ptr, ptr %67, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !11
  %76 = getelementptr inbounds ptr, ptr %65, i64 %30
  %77 = load ptr, ptr %76, align 8, !tbaa !11
  %78 = getelementptr inbounds ptr, ptr %77, i64 %73
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = getelementptr inbounds ptr, ptr %77, i64 %68
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = getelementptr inbounds ptr, ptr %57, i64 %27
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  %84 = getelementptr inbounds ptr, ptr %83, i64 %60
  %85 = load ptr, ptr %84, align 8, !tbaa !11
  br label %86

86:                                               ; preds = %86, %54
  %87 = phi i64 [ 1, %54 ], [ %110, %86 ]
  %88 = add nsw i64 %87, %42
  %89 = getelementptr inbounds double, ptr %62, i64 %88
  %90 = load double, ptr %89, align 8, !tbaa !28
  %91 = fmul double %90, 2.500000e-01
  %92 = shl nuw nsw i64 %87, 1
  %93 = getelementptr inbounds double, ptr %70, i64 %92
  store double %91, ptr %93, align 8, !tbaa !28
  %94 = add nsw i64 %92, -1
  %95 = getelementptr inbounds double, ptr %70, i64 %94
  store double %91, ptr %95, align 8, !tbaa !28
  %96 = getelementptr inbounds double, ptr %75, i64 %92
  store double %91, ptr %96, align 8, !tbaa !28
  %97 = getelementptr inbounds double, ptr %75, i64 %94
  store double %91, ptr %97, align 8, !tbaa !28
  %98 = getelementptr inbounds double, ptr %79, i64 %94
  %99 = load double, ptr %98, align 8, !tbaa !28
  %100 = getelementptr inbounds double, ptr %79, i64 %92
  %101 = load double, ptr %100, align 8, !tbaa !28
  %102 = fadd double %99, %101
  %103 = getelementptr inbounds double, ptr %81, i64 %94
  %104 = load double, ptr %103, align 8, !tbaa !28
  %105 = fadd double %102, %104
  %106 = getelementptr inbounds double, ptr %81, i64 %92
  %107 = load double, ptr %106, align 8, !tbaa !28
  %108 = fadd double %105, %107
  %109 = getelementptr inbounds double, ptr %85, i64 %88
  store double %108, ptr %109, align 8, !tbaa !28
  %110 = add nuw nsw i64 %87, 1
  %111 = icmp eq i64 %110, %49
  br i1 %111, label %112, label %86, !llvm.loop !95

112:                                              ; preds = %86, %52
  %113 = add nuw nsw i64 %53, 1
  %114 = icmp eq i64 %113, %48
  br i1 %114, label %115, label %52, !llvm.loop !96

115:                                              ; preds = %112, %50
  %116 = add nsw i64 %51, 1
  %117 = icmp slt i64 %116, %47
  br i1 %117, label %50, label %1126, !llvm.loop !97

118:                                              ; preds = %15
  %119 = and i32 %2, -2
  switch i32 %119, label %1126 [
    i32 2, label %120
    i32 4, label %220
  ]

120:                                              ; preds = %118
  %121 = icmp eq i32 %2, 2
  %122 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %123 = add nsw i32 %122, 1
  br i1 %121, label %124, label %127

124:                                              ; preds = %120
  %125 = sext i32 %123 to i64
  %126 = sext i32 %122 to i64
  br label %130

127:                                              ; preds = %120
  %128 = sext i32 %122 to i64
  %129 = sext i32 %123 to i64
  br label %130

130:                                              ; preds = %127, %124
  %131 = phi i64 [ 0, %124 ], [ %129, %127 ]
  %132 = phi i64 [ 1, %124 ], [ %128, %127 ]
  %133 = phi i64 [ %125, %124 ], [ 0, %127 ]
  %134 = phi i64 [ %126, %124 ], [ 1, %127 ]
  %135 = icmp sgt i32 %6, 0
  br i1 %135, label %136, label %1126

136:                                              ; preds = %130
  %137 = add nsw i32 %6, %5
  %138 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %139 = mul nsw i32 %138, %3
  %140 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %141 = mul nsw i32 %140, %4
  %142 = icmp slt i32 %140, 1
  %143 = icmp slt i32 %138, 1
  %144 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %145 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %146 = sext i32 %139 to i64
  %147 = add i32 %138, 1
  %148 = sext i32 %141 to i64
  %149 = add i32 %140, 1
  %150 = sext i32 %5 to i64
  %151 = sext i32 %137 to i64
  %152 = zext i32 %149 to i64
  %153 = zext i32 %147 to i64
  br label %154

154:                                              ; preds = %217, %136
  %155 = phi i64 [ %150, %136 ], [ %218, %217 ]
  br i1 %142, label %217, label %156

156:                                              ; preds = %214, %154
  %157 = phi i64 [ %215, %214 ], [ 1, %154 ]
  br i1 %143, label %214, label %158

158:                                              ; preds = %156
  %159 = load ptr, ptr %144, align 8, !tbaa !27
  %160 = getelementptr inbounds ptr, ptr %159, i64 %155
  %161 = load ptr, ptr %160, align 8, !tbaa !11
  %162 = add nsw i64 %157, %148
  %163 = getelementptr inbounds ptr, ptr %161, i64 %162
  %164 = load ptr, ptr %163, align 8, !tbaa !11
  %165 = getelementptr inbounds ptr, ptr %164, i64 %132
  %166 = load ptr, ptr %165, align 8, !tbaa !11
  %167 = load ptr, ptr %145, align 8, !tbaa !27
  %168 = getelementptr inbounds ptr, ptr %167, i64 %155
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = shl nuw nsw i64 %157, 1
  %171 = getelementptr inbounds ptr, ptr %169, i64 %170
  %172 = load ptr, ptr %171, align 8, !tbaa !11
  %173 = getelementptr inbounds ptr, ptr %172, i64 %133
  %174 = load ptr, ptr %173, align 8, !tbaa !11
  %175 = shl i64 %157, 33
  %176 = add i64 %175, -4294967296
  %177 = ashr exact i64 %176, 32
  %178 = getelementptr inbounds ptr, ptr %169, i64 %177
  %179 = load ptr, ptr %178, align 8, !tbaa !11
  %180 = getelementptr inbounds ptr, ptr %179, i64 %133
  %181 = load ptr, ptr %180, align 8, !tbaa !11
  %182 = getelementptr inbounds ptr, ptr %179, i64 %134
  %183 = load ptr, ptr %182, align 8, !tbaa !11
  %184 = getelementptr inbounds ptr, ptr %172, i64 %134
  %185 = load ptr, ptr %184, align 8, !tbaa !11
  %186 = getelementptr inbounds ptr, ptr %164, i64 %131
  %187 = load ptr, ptr %186, align 8, !tbaa !11
  br label %188

188:                                              ; preds = %188, %158
  %189 = phi i64 [ 1, %158 ], [ %212, %188 ]
  %190 = add nsw i64 %189, %146
  %191 = getelementptr inbounds double, ptr %166, i64 %190
  %192 = load double, ptr %191, align 8, !tbaa !28
  %193 = fmul double %192, 2.500000e-01
  %194 = shl nuw nsw i64 %189, 1
  %195 = getelementptr inbounds double, ptr %174, i64 %194
  store double %193, ptr %195, align 8, !tbaa !28
  %196 = add nsw i64 %194, -1
  %197 = getelementptr inbounds double, ptr %174, i64 %196
  store double %193, ptr %197, align 8, !tbaa !28
  %198 = getelementptr inbounds double, ptr %181, i64 %194
  store double %193, ptr %198, align 8, !tbaa !28
  %199 = getelementptr inbounds double, ptr %181, i64 %196
  store double %193, ptr %199, align 8, !tbaa !28
  %200 = getelementptr inbounds double, ptr %183, i64 %196
  %201 = load double, ptr %200, align 8, !tbaa !28
  %202 = getelementptr inbounds double, ptr %183, i64 %194
  %203 = load double, ptr %202, align 8, !tbaa !28
  %204 = fadd double %201, %203
  %205 = getelementptr inbounds double, ptr %185, i64 %196
  %206 = load double, ptr %205, align 8, !tbaa !28
  %207 = fadd double %204, %206
  %208 = getelementptr inbounds double, ptr %185, i64 %194
  %209 = load double, ptr %208, align 8, !tbaa !28
  %210 = fadd double %207, %209
  %211 = getelementptr inbounds double, ptr %187, i64 %190
  store double %210, ptr %211, align 8, !tbaa !28
  %212 = add nuw nsw i64 %189, 1
  %213 = icmp eq i64 %212, %153
  br i1 %213, label %214, label %188, !llvm.loop !98

214:                                              ; preds = %188, %156
  %215 = add nuw nsw i64 %157, 1
  %216 = icmp eq i64 %215, %152
  br i1 %216, label %217, label %156, !llvm.loop !99

217:                                              ; preds = %214, %154
  %218 = add nsw i64 %155, 1
  %219 = icmp slt i64 %218, %151
  br i1 %219, label %154, label %1126, !llvm.loop !100

220:                                              ; preds = %118
  %221 = icmp eq i32 %2, 4
  %222 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %223 = add nsw i32 %222, 1
  br i1 %221, label %224, label %227

224:                                              ; preds = %220
  %225 = sext i32 %223 to i64
  %226 = sext i32 %222 to i64
  br label %230

227:                                              ; preds = %220
  %228 = sext i32 %222 to i64
  %229 = sext i32 %223 to i64
  br label %230

230:                                              ; preds = %227, %224
  %231 = phi i64 [ 0, %224 ], [ %229, %227 ]
  %232 = phi i64 [ 1, %224 ], [ %228, %227 ]
  %233 = phi i64 [ %225, %224 ], [ 0, %227 ]
  %234 = phi i64 [ %226, %224 ], [ 1, %227 ]
  %235 = icmp sgt i32 %6, 0
  br i1 %235, label %236, label %1126

236:                                              ; preds = %230
  %237 = add nsw i32 %6, %5
  %238 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %239 = mul nsw i32 %238, %3
  %240 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %241 = mul nsw i32 %240, %4
  %242 = icmp slt i32 %240, 1
  %243 = icmp slt i32 %238, 1
  %244 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %245 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %246 = sext i32 %239 to i64
  %247 = add i32 %238, 1
  %248 = sext i32 %241 to i64
  %249 = add i32 %240, 1
  %250 = sext i32 %5 to i64
  %251 = sext i32 %237 to i64
  %252 = zext i32 %249 to i64
  %253 = zext i32 %247 to i64
  br label %254

254:                                              ; preds = %315, %236
  %255 = phi i64 [ %250, %236 ], [ %316, %315 ]
  br i1 %242, label %315, label %256

256:                                              ; preds = %312, %254
  %257 = phi i64 [ %313, %312 ], [ 1, %254 ]
  br i1 %243, label %312, label %258

258:                                              ; preds = %256
  %259 = load ptr, ptr %244, align 8, !tbaa !27
  %260 = getelementptr inbounds ptr, ptr %259, i64 %255
  %261 = load ptr, ptr %260, align 8, !tbaa !11
  %262 = add nsw i64 %257, %248
  %263 = getelementptr inbounds ptr, ptr %261, i64 %262
  %264 = load ptr, ptr %263, align 8, !tbaa !11
  %265 = load ptr, ptr %245, align 8, !tbaa !27
  %266 = getelementptr inbounds ptr, ptr %265, i64 %255
  %267 = load ptr, ptr %266, align 8, !tbaa !11
  %268 = shl nuw nsw i64 %257, 1
  %269 = getelementptr inbounds ptr, ptr %267, i64 %268
  %270 = load ptr, ptr %269, align 8, !tbaa !11
  %271 = shl i64 %257, 33
  %272 = add i64 %271, -4294967296
  %273 = ashr exact i64 %272, 32
  %274 = getelementptr inbounds ptr, ptr %267, i64 %273
  %275 = load ptr, ptr %274, align 8, !tbaa !11
  br label %276

276:                                              ; preds = %276, %258
  %277 = phi i64 [ 1, %258 ], [ %310, %276 ]
  %278 = add nsw i64 %277, %246
  %279 = getelementptr inbounds ptr, ptr %264, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !11
  %281 = getelementptr inbounds double, ptr %280, i64 %232
  %282 = load double, ptr %281, align 8, !tbaa !28
  %283 = fmul double %282, 2.500000e-01
  %284 = shl nuw nsw i64 %277, 1
  %285 = getelementptr inbounds ptr, ptr %270, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !11
  %287 = getelementptr inbounds double, ptr %286, i64 %233
  store double %283, ptr %287, align 8, !tbaa !28
  %288 = add nsw i64 %284, -1
  %289 = getelementptr inbounds ptr, ptr %270, i64 %288
  %290 = load ptr, ptr %289, align 8, !tbaa !11
  %291 = getelementptr inbounds double, ptr %290, i64 %233
  store double %283, ptr %291, align 8, !tbaa !28
  %292 = getelementptr inbounds ptr, ptr %275, i64 %284
  %293 = load ptr, ptr %292, align 8, !tbaa !11
  %294 = getelementptr inbounds double, ptr %293, i64 %233
  store double %283, ptr %294, align 8, !tbaa !28
  %295 = getelementptr inbounds ptr, ptr %275, i64 %288
  %296 = load ptr, ptr %295, align 8, !tbaa !11
  %297 = getelementptr inbounds double, ptr %296, i64 %233
  store double %283, ptr %297, align 8, !tbaa !28
  %298 = getelementptr inbounds double, ptr %296, i64 %234
  %299 = load double, ptr %298, align 8, !tbaa !28
  %300 = getelementptr inbounds double, ptr %293, i64 %234
  %301 = load double, ptr %300, align 8, !tbaa !28
  %302 = fadd double %299, %301
  %303 = getelementptr inbounds double, ptr %290, i64 %234
  %304 = load double, ptr %303, align 8, !tbaa !28
  %305 = fadd double %302, %304
  %306 = getelementptr inbounds double, ptr %286, i64 %234
  %307 = load double, ptr %306, align 8, !tbaa !28
  %308 = fadd double %305, %307
  %309 = getelementptr inbounds double, ptr %280, i64 %231
  store double %308, ptr %309, align 8, !tbaa !28
  %310 = add nuw nsw i64 %277, 1
  %311 = icmp eq i64 %310, %253
  br i1 %311, label %312, label %276, !llvm.loop !101

312:                                              ; preds = %276, %256
  %313 = add nuw nsw i64 %257, 1
  %314 = icmp eq i64 %313, %252
  br i1 %314, label %315, label %256, !llvm.loop !102

315:                                              ; preds = %312, %254
  %316 = add nsw i64 %255, 1
  %317 = icmp slt i64 %316, %251
  br i1 %317, label %254, label %1126, !llvm.loop !103

318:                                              ; preds = %7
  br i1 %14, label %319, label %577

319:                                              ; preds = %318
  %320 = icmp eq i32 %2, 0
  %321 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %322 = add nsw i32 %321, 1
  br i1 %320, label %323, label %326

323:                                              ; preds = %319
  %324 = sext i32 %322 to i64
  %325 = sext i32 %321 to i64
  br label %329

326:                                              ; preds = %319
  %327 = sext i32 %321 to i64
  %328 = sext i32 %322 to i64
  br label %329

329:                                              ; preds = %326, %323
  %330 = phi i64 [ 0, %323 ], [ %328, %326 ]
  %331 = phi i64 [ 1, %323 ], [ %327, %326 ]
  %332 = phi i64 [ %324, %323 ], [ 0, %326 ]
  %333 = phi i64 [ %325, %323 ], [ 1, %326 ]
  %334 = icmp sgt i32 %6, 0
  br i1 %334, label %335, label %1126

335:                                              ; preds = %329
  %336 = add nsw i32 %6, %5
  %337 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %338 = mul nsw i32 %337, %3
  %339 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %340 = mul nsw i32 %339, %4
  %341 = add i32 %337, 1
  %342 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %343 = add nsw i32 %342, 1
  %344 = add i32 %339, 1
  %345 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %346 = add nsw i32 %345, 1
  %347 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %348 = load ptr, ptr %347, align 8, !tbaa !27
  %349 = sext i32 %340 to i64
  %350 = sext i32 %338 to i64
  %351 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %352 = load ptr, ptr %351, align 8, !tbaa !27
  %353 = icmp slt i32 %337, 1
  %354 = add nsw i32 %341, %338
  %355 = sext i32 %354 to i64
  %356 = sext i32 %343 to i64
  %357 = icmp eq i32 %4, 0
  %358 = icmp eq i32 %3, 0
  %359 = icmp slt i32 %339, 1
  %360 = add nsw i32 %344, %340
  %361 = sext i32 %360 to i64
  %362 = sext i32 %346 to i64
  %363 = icmp eq i32 %4, 1
  %364 = sext i32 %5 to i64
  %365 = sext i32 %336 to i64
  %366 = zext i32 %341 to i64
  %367 = zext i32 %341 to i64
  %368 = zext i32 %344 to i64
  %369 = zext i32 %341 to i64
  %370 = zext i32 %341 to i64
  %371 = zext i32 %341 to i64
  br label %372

372:                                              ; preds = %574, %335
  %373 = phi i64 [ %364, %335 ], [ %575, %574 ]
  %374 = getelementptr inbounds ptr, ptr %348, i64 %373
  %375 = load ptr, ptr %374, align 8, !tbaa !11
  %376 = getelementptr inbounds ptr, ptr %375, i64 %331
  %377 = load ptr, ptr %376, align 8, !tbaa !11
  %378 = getelementptr inbounds ptr, ptr %377, i64 %349
  %379 = load ptr, ptr %378, align 8, !tbaa !11
  %380 = getelementptr inbounds double, ptr %379, i64 %350
  %381 = load double, ptr %380, align 8, !tbaa !28
  %382 = fmul double %381, 2.500000e-01
  %383 = getelementptr inbounds ptr, ptr %352, i64 %373
  %384 = load ptr, ptr %383, align 8, !tbaa !11
  %385 = getelementptr inbounds ptr, ptr %384, i64 %332
  %386 = load ptr, ptr %385, align 8, !tbaa !11
  %387 = load ptr, ptr %386, align 8, !tbaa !11
  store double %382, ptr %387, align 8, !tbaa !28
  br i1 %353, label %400, label %388

388:                                              ; preds = %388, %372
  %389 = phi i64 [ %398, %388 ], [ 1, %372 ]
  %390 = add nsw i64 %389, %350
  %391 = getelementptr inbounds double, ptr %379, i64 %390
  %392 = load double, ptr %391, align 8, !tbaa !28
  %393 = fmul double %392, 2.500000e-01
  %394 = shl nuw nsw i64 %389, 1
  %395 = getelementptr inbounds double, ptr %387, i64 %394
  store double %393, ptr %395, align 8, !tbaa !28
  %396 = add nsw i64 %394, -1
  %397 = getelementptr inbounds double, ptr %387, i64 %396
  store double %393, ptr %397, align 8, !tbaa !28
  %398 = add nuw nsw i64 %389, 1
  %399 = icmp eq i64 %398, %366
  br i1 %399, label %400, label %388, !llvm.loop !104

400:                                              ; preds = %388, %372
  %401 = getelementptr inbounds double, ptr %379, i64 %355
  %402 = load double, ptr %401, align 8, !tbaa !28
  %403 = fmul double %402, 2.500000e-01
  %404 = getelementptr inbounds double, ptr %387, i64 %356
  store double %403, ptr %404, align 8, !tbaa !28
  br i1 %357, label %405, label %436

405:                                              ; preds = %400
  %406 = getelementptr inbounds ptr, ptr %384, i64 %333
  %407 = load ptr, ptr %406, align 8, !tbaa !11
  %408 = load ptr, ptr %407, align 8, !tbaa !11
  br i1 %358, label %409, label %414

409:                                              ; preds = %405
  %410 = load double, ptr %408, align 8, !tbaa !28
  %411 = getelementptr inbounds ptr, ptr %375, i64 %330
  %412 = load ptr, ptr %411, align 8, !tbaa !11
  %413 = load ptr, ptr %412, align 8, !tbaa !11
  store double %410, ptr %413, align 8, !tbaa !28
  br label %421

414:                                              ; preds = %405
  %415 = getelementptr inbounds double, ptr %408, i64 %356
  %416 = load double, ptr %415, align 8, !tbaa !28
  %417 = getelementptr inbounds ptr, ptr %375, i64 %330
  %418 = load ptr, ptr %417, align 8, !tbaa !11
  %419 = load ptr, ptr %418, align 8, !tbaa !11
  %420 = getelementptr inbounds double, ptr %419, i64 %356
  store double %416, ptr %420, align 8, !tbaa !28
  br label %421

421:                                              ; preds = %414, %409
  %422 = phi ptr [ %419, %414 ], [ %413, %409 ]
  br i1 %353, label %436, label %423

423:                                              ; preds = %423, %421
  %424 = phi i64 [ %434, %423 ], [ 1, %421 ]
  %425 = shl nuw nsw i64 %424, 1
  %426 = add nsw i64 %425, -1
  %427 = getelementptr inbounds double, ptr %408, i64 %426
  %428 = load double, ptr %427, align 8, !tbaa !28
  %429 = getelementptr inbounds double, ptr %408, i64 %425
  %430 = load double, ptr %429, align 8, !tbaa !28
  %431 = fadd double %428, %430
  %432 = add nsw i64 %424, %350
  %433 = getelementptr inbounds double, ptr %422, i64 %432
  store double %431, ptr %433, align 8, !tbaa !28
  %434 = add nuw nsw i64 %424, 1
  %435 = icmp eq i64 %434, %367
  br i1 %435, label %436, label %423, !llvm.loop !105

436:                                              ; preds = %423, %421, %400
  br i1 %359, label %515, label %437

437:                                              ; preds = %436
  %438 = getelementptr inbounds ptr, ptr %384, i64 %333
  %439 = getelementptr inbounds ptr, ptr %375, i64 %330
  %440 = load ptr, ptr %438, align 8, !tbaa !11
  br label %441

441:                                              ; preds = %507, %437
  %442 = phi i64 [ 1, %437 ], [ %513, %507 ]
  %443 = add nsw i64 %442, %349
  %444 = getelementptr inbounds ptr, ptr %377, i64 %443
  %445 = load ptr, ptr %444, align 8, !tbaa !11
  %446 = getelementptr inbounds double, ptr %445, i64 %350
  %447 = load double, ptr %446, align 8, !tbaa !28
  %448 = fmul double %447, 2.500000e-01
  %449 = shl nuw nsw i64 %442, 1
  %450 = getelementptr inbounds ptr, ptr %386, i64 %449
  %451 = load ptr, ptr %450, align 8, !tbaa !11
  store double %448, ptr %451, align 8, !tbaa !28
  %452 = add nsw i64 %449, -1
  %453 = getelementptr inbounds ptr, ptr %386, i64 %452
  %454 = load ptr, ptr %453, align 8, !tbaa !11
  store double %448, ptr %454, align 8, !tbaa !28
  %455 = getelementptr inbounds ptr, ptr %440, i64 %452
  %456 = load ptr, ptr %455, align 8, !tbaa !11
  br i1 %358, label %457, label %466

457:                                              ; preds = %441
  %458 = load double, ptr %456, align 8, !tbaa !28
  %459 = getelementptr inbounds ptr, ptr %440, i64 %449
  %460 = load ptr, ptr %459, align 8, !tbaa !11
  %461 = load double, ptr %460, align 8, !tbaa !28
  %462 = fadd double %458, %461
  %463 = load ptr, ptr %439, align 8, !tbaa !11
  %464 = getelementptr inbounds ptr, ptr %463, i64 %443
  %465 = load ptr, ptr %464, align 8, !tbaa !11
  store double %462, ptr %465, align 8, !tbaa !28
  br label %478

466:                                              ; preds = %441
  %467 = getelementptr inbounds double, ptr %456, i64 %356
  %468 = load double, ptr %467, align 8, !tbaa !28
  %469 = getelementptr inbounds ptr, ptr %440, i64 %449
  %470 = load ptr, ptr %469, align 8, !tbaa !11
  %471 = getelementptr inbounds double, ptr %470, i64 %356
  %472 = load double, ptr %471, align 8, !tbaa !28
  %473 = fadd double %468, %472
  %474 = load ptr, ptr %439, align 8, !tbaa !11
  %475 = getelementptr inbounds ptr, ptr %474, i64 %443
  %476 = load ptr, ptr %475, align 8, !tbaa !11
  %477 = getelementptr inbounds double, ptr %476, i64 %356
  store double %473, ptr %477, align 8, !tbaa !28
  br label %478

478:                                              ; preds = %466, %457
  %479 = phi ptr [ %476, %466 ], [ %465, %457 ]
  %480 = phi ptr [ %470, %466 ], [ %460, %457 ]
  br i1 %353, label %507, label %481

481:                                              ; preds = %481, %478
  %482 = phi i64 [ %505, %481 ], [ 1, %478 ]
  %483 = add nsw i64 %482, %350
  %484 = getelementptr inbounds double, ptr %445, i64 %483
  %485 = load double, ptr %484, align 8, !tbaa !28
  %486 = fmul double %485, 2.500000e-01
  %487 = shl nuw nsw i64 %482, 1
  %488 = getelementptr inbounds double, ptr %451, i64 %487
  store double %486, ptr %488, align 8, !tbaa !28
  %489 = add nsw i64 %487, -1
  %490 = getelementptr inbounds double, ptr %451, i64 %489
  store double %486, ptr %490, align 8, !tbaa !28
  %491 = getelementptr inbounds double, ptr %454, i64 %487
  store double %486, ptr %491, align 8, !tbaa !28
  %492 = getelementptr inbounds double, ptr %454, i64 %489
  store double %486, ptr %492, align 8, !tbaa !28
  %493 = getelementptr inbounds double, ptr %456, i64 %489
  %494 = load double, ptr %493, align 8, !tbaa !28
  %495 = getelementptr inbounds double, ptr %456, i64 %487
  %496 = load double, ptr %495, align 8, !tbaa !28
  %497 = fadd double %494, %496
  %498 = getelementptr inbounds double, ptr %480, i64 %489
  %499 = load double, ptr %498, align 8, !tbaa !28
  %500 = fadd double %497, %499
  %501 = getelementptr inbounds double, ptr %480, i64 %487
  %502 = load double, ptr %501, align 8, !tbaa !28
  %503 = fadd double %500, %502
  %504 = getelementptr inbounds double, ptr %479, i64 %483
  store double %503, ptr %504, align 8, !tbaa !28
  %505 = add nuw nsw i64 %482, 1
  %506 = icmp eq i64 %505, %369
  br i1 %506, label %507, label %481, !llvm.loop !106

507:                                              ; preds = %481, %478
  %508 = getelementptr inbounds double, ptr %445, i64 %355
  %509 = load double, ptr %508, align 8, !tbaa !28
  %510 = fmul double %509, 2.500000e-01
  %511 = getelementptr inbounds double, ptr %451, i64 %356
  store double %510, ptr %511, align 8, !tbaa !28
  %512 = getelementptr inbounds double, ptr %454, i64 %356
  store double %510, ptr %512, align 8, !tbaa !28
  %513 = add nuw nsw i64 %442, 1
  %514 = icmp eq i64 %513, %368
  br i1 %514, label %515, label %441, !llvm.loop !107

515:                                              ; preds = %507, %436
  %516 = getelementptr inbounds ptr, ptr %377, i64 %361
  %517 = load ptr, ptr %516, align 8, !tbaa !11
  %518 = getelementptr inbounds double, ptr %517, i64 %350
  %519 = load double, ptr %518, align 8, !tbaa !28
  %520 = fmul double %519, 2.500000e-01
  %521 = getelementptr inbounds ptr, ptr %386, i64 %362
  %522 = load ptr, ptr %521, align 8, !tbaa !11
  store double %520, ptr %522, align 8, !tbaa !28
  br i1 %353, label %535, label %523

523:                                              ; preds = %523, %515
  %524 = phi i64 [ %533, %523 ], [ 1, %515 ]
  %525 = add nsw i64 %524, %350
  %526 = getelementptr inbounds double, ptr %517, i64 %525
  %527 = load double, ptr %526, align 8, !tbaa !28
  %528 = fmul double %527, 2.500000e-01
  %529 = shl nuw nsw i64 %524, 1
  %530 = getelementptr inbounds double, ptr %522, i64 %529
  store double %528, ptr %530, align 8, !tbaa !28
  %531 = add nsw i64 %529, -1
  %532 = getelementptr inbounds double, ptr %522, i64 %531
  store double %528, ptr %532, align 8, !tbaa !28
  %533 = add nuw nsw i64 %524, 1
  %534 = icmp eq i64 %533, %370
  br i1 %534, label %535, label %523, !llvm.loop !108

535:                                              ; preds = %523, %515
  %536 = getelementptr inbounds double, ptr %517, i64 %355
  %537 = load double, ptr %536, align 8, !tbaa !28
  %538 = fmul double %537, 2.500000e-01
  %539 = getelementptr inbounds double, ptr %522, i64 %356
  store double %538, ptr %539, align 8, !tbaa !28
  br i1 %363, label %540, label %574

540:                                              ; preds = %535
  %541 = getelementptr inbounds ptr, ptr %384, i64 %333
  %542 = load ptr, ptr %541, align 8, !tbaa !11
  %543 = getelementptr inbounds ptr, ptr %542, i64 %362
  %544 = load ptr, ptr %543, align 8, !tbaa !11
  br i1 %358, label %545, label %551

545:                                              ; preds = %540
  %546 = load double, ptr %544, align 8, !tbaa !28
  %547 = getelementptr inbounds ptr, ptr %375, i64 %330
  %548 = load ptr, ptr %547, align 8, !tbaa !11
  %549 = getelementptr inbounds ptr, ptr %548, i64 %362
  %550 = load ptr, ptr %549, align 8, !tbaa !11
  store double %546, ptr %550, align 8, !tbaa !28
  br label %559

551:                                              ; preds = %540
  %552 = getelementptr inbounds double, ptr %544, i64 %356
  %553 = load double, ptr %552, align 8, !tbaa !28
  %554 = getelementptr inbounds ptr, ptr %375, i64 %330
  %555 = load ptr, ptr %554, align 8, !tbaa !11
  %556 = getelementptr inbounds ptr, ptr %555, i64 %362
  %557 = load ptr, ptr %556, align 8, !tbaa !11
  %558 = getelementptr inbounds double, ptr %557, i64 %356
  store double %553, ptr %558, align 8, !tbaa !28
  br label %559

559:                                              ; preds = %551, %545
  %560 = phi ptr [ %557, %551 ], [ %550, %545 ]
  br i1 %353, label %574, label %561

561:                                              ; preds = %561, %559
  %562 = phi i64 [ %572, %561 ], [ 1, %559 ]
  %563 = shl nuw nsw i64 %562, 1
  %564 = add nsw i64 %563, -1
  %565 = getelementptr inbounds double, ptr %544, i64 %564
  %566 = load double, ptr %565, align 8, !tbaa !28
  %567 = getelementptr inbounds double, ptr %544, i64 %563
  %568 = load double, ptr %567, align 8, !tbaa !28
  %569 = fadd double %566, %568
  %570 = add nsw i64 %562, %350
  %571 = getelementptr inbounds double, ptr %560, i64 %570
  store double %569, ptr %571, align 8, !tbaa !28
  %572 = add nuw nsw i64 %562, 1
  %573 = icmp eq i64 %572, %371
  br i1 %573, label %574, label %561, !llvm.loop !109

574:                                              ; preds = %561, %559, %535
  %575 = add nsw i64 %373, 1
  %576 = icmp slt i64 %575, %365
  br i1 %576, label %372, label %1126, !llvm.loop !110

577:                                              ; preds = %318
  %578 = and i32 %2, -2
  switch i32 %578, label %1126 [
    i32 2, label %579
    i32 4, label %838
  ]

579:                                              ; preds = %577
  %580 = icmp eq i32 %2, 2
  %581 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %582 = add nsw i32 %581, 1
  br i1 %580, label %583, label %586

583:                                              ; preds = %579
  %584 = sext i32 %582 to i64
  %585 = sext i32 %581 to i64
  br label %589

586:                                              ; preds = %579
  %587 = sext i32 %581 to i64
  %588 = sext i32 %582 to i64
  br label %589

589:                                              ; preds = %586, %583
  %590 = phi i64 [ 0, %583 ], [ %588, %586 ]
  %591 = phi i64 [ 1, %583 ], [ %587, %586 ]
  %592 = phi i64 [ %584, %583 ], [ 0, %586 ]
  %593 = phi i64 [ %585, %583 ], [ 1, %586 ]
  %594 = icmp sgt i32 %6, 0
  br i1 %594, label %595, label %1126

595:                                              ; preds = %589
  %596 = add nsw i32 %6, %5
  %597 = load i32, ptr @z_block_half, align 4, !tbaa !7
  %598 = mul nsw i32 %597, %3
  %599 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %600 = mul nsw i32 %599, %4
  %601 = add i32 %597, 1
  %602 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %603 = add nsw i32 %602, 1
  %604 = add i32 %599, 1
  %605 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %606 = add nsw i32 %605, 1
  %607 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %608 = load ptr, ptr %607, align 8, !tbaa !27
  %609 = sext i32 %600 to i64
  %610 = sext i32 %598 to i64
  %611 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %612 = load ptr, ptr %611, align 8, !tbaa !27
  %613 = icmp slt i32 %597, 1
  %614 = add nsw i32 %601, %598
  %615 = sext i32 %614 to i64
  %616 = sext i32 %603 to i64
  %617 = icmp eq i32 %4, 0
  %618 = icmp eq i32 %3, 0
  %619 = icmp slt i32 %599, 1
  %620 = add nsw i32 %604, %600
  %621 = sext i32 %620 to i64
  %622 = sext i32 %606 to i64
  %623 = icmp eq i32 %4, 1
  %624 = sext i32 %5 to i64
  %625 = sext i32 %596 to i64
  %626 = zext i32 %601 to i64
  %627 = zext i32 %601 to i64
  %628 = zext i32 %604 to i64
  %629 = zext i32 %601 to i64
  %630 = zext i32 %601 to i64
  %631 = zext i32 %601 to i64
  br label %632

632:                                              ; preds = %835, %595
  %633 = phi i64 [ %624, %595 ], [ %836, %835 ]
  %634 = getelementptr inbounds ptr, ptr %608, i64 %633
  %635 = load ptr, ptr %634, align 8, !tbaa !11
  %636 = getelementptr inbounds ptr, ptr %635, i64 %609
  %637 = load ptr, ptr %636, align 8, !tbaa !11
  %638 = getelementptr inbounds ptr, ptr %637, i64 %591
  %639 = load ptr, ptr %638, align 8, !tbaa !11
  %640 = getelementptr inbounds double, ptr %639, i64 %610
  %641 = load double, ptr %640, align 8, !tbaa !28
  %642 = fmul double %641, 2.500000e-01
  %643 = getelementptr inbounds ptr, ptr %612, i64 %633
  %644 = load ptr, ptr %643, align 8, !tbaa !11
  %645 = load ptr, ptr %644, align 8, !tbaa !11
  %646 = getelementptr inbounds ptr, ptr %645, i64 %592
  %647 = load ptr, ptr %646, align 8, !tbaa !11
  store double %642, ptr %647, align 8, !tbaa !28
  br i1 %613, label %660, label %648

648:                                              ; preds = %648, %632
  %649 = phi i64 [ %658, %648 ], [ 1, %632 ]
  %650 = add nsw i64 %649, %610
  %651 = getelementptr inbounds double, ptr %639, i64 %650
  %652 = load double, ptr %651, align 8, !tbaa !28
  %653 = fmul double %652, 2.500000e-01
  %654 = shl nuw nsw i64 %649, 1
  %655 = getelementptr inbounds double, ptr %647, i64 %654
  store double %653, ptr %655, align 8, !tbaa !28
  %656 = add nsw i64 %654, -1
  %657 = getelementptr inbounds double, ptr %647, i64 %656
  store double %653, ptr %657, align 8, !tbaa !28
  %658 = add nuw nsw i64 %649, 1
  %659 = icmp eq i64 %658, %626
  br i1 %659, label %660, label %648, !llvm.loop !111

660:                                              ; preds = %648, %632
  %661 = getelementptr inbounds double, ptr %639, i64 %615
  %662 = load double, ptr %661, align 8, !tbaa !28
  %663 = fmul double %662, 2.500000e-01
  %664 = getelementptr inbounds double, ptr %647, i64 %616
  store double %663, ptr %664, align 8, !tbaa !28
  br i1 %617, label %665, label %695

665:                                              ; preds = %660
  %666 = getelementptr inbounds ptr, ptr %645, i64 %593
  %667 = load ptr, ptr %666, align 8, !tbaa !11
  br i1 %618, label %668, label %673

668:                                              ; preds = %665
  %669 = load double, ptr %667, align 8, !tbaa !28
  %670 = load ptr, ptr %635, align 8, !tbaa !11
  %671 = getelementptr inbounds ptr, ptr %670, i64 %590
  %672 = load ptr, ptr %671, align 8, !tbaa !11
  store double %669, ptr %672, align 8, !tbaa !28
  br label %680

673:                                              ; preds = %665
  %674 = getelementptr inbounds double, ptr %667, i64 %616
  %675 = load double, ptr %674, align 8, !tbaa !28
  %676 = load ptr, ptr %635, align 8, !tbaa !11
  %677 = getelementptr inbounds ptr, ptr %676, i64 %590
  %678 = load ptr, ptr %677, align 8, !tbaa !11
  %679 = getelementptr inbounds double, ptr %678, i64 %616
  store double %675, ptr %679, align 8, !tbaa !28
  br label %680

680:                                              ; preds = %673, %668
  %681 = phi ptr [ %678, %673 ], [ %672, %668 ]
  br i1 %613, label %695, label %682

682:                                              ; preds = %682, %680
  %683 = phi i64 [ %693, %682 ], [ 1, %680 ]
  %684 = shl nuw nsw i64 %683, 1
  %685 = add nsw i64 %684, -1
  %686 = getelementptr inbounds double, ptr %667, i64 %685
  %687 = load double, ptr %686, align 8, !tbaa !28
  %688 = getelementptr inbounds double, ptr %667, i64 %684
  %689 = load double, ptr %688, align 8, !tbaa !28
  %690 = fadd double %687, %689
  %691 = add nsw i64 %683, %610
  %692 = getelementptr inbounds double, ptr %681, i64 %691
  store double %690, ptr %692, align 8, !tbaa !28
  %693 = add nuw nsw i64 %683, 1
  %694 = icmp eq i64 %693, %627
  br i1 %694, label %695, label %682, !llvm.loop !112

695:                                              ; preds = %682, %680, %660
  br i1 %619, label %774, label %696

696:                                              ; preds = %766, %695
  %697 = phi i64 [ %772, %766 ], [ 1, %695 ]
  %698 = add nsw i64 %697, %609
  %699 = getelementptr inbounds ptr, ptr %635, i64 %698
  %700 = load ptr, ptr %699, align 8, !tbaa !11
  %701 = getelementptr inbounds ptr, ptr %700, i64 %591
  %702 = load ptr, ptr %701, align 8, !tbaa !11
  %703 = getelementptr inbounds double, ptr %702, i64 %610
  %704 = load double, ptr %703, align 8, !tbaa !28
  %705 = fmul double %704, 2.500000e-01
  %706 = shl nuw nsw i64 %697, 1
  %707 = getelementptr inbounds ptr, ptr %644, i64 %706
  %708 = load ptr, ptr %707, align 8, !tbaa !11
  %709 = getelementptr inbounds ptr, ptr %708, i64 %592
  %710 = load ptr, ptr %709, align 8, !tbaa !11
  store double %705, ptr %710, align 8, !tbaa !28
  %711 = add nsw i64 %706, -1
  %712 = getelementptr inbounds ptr, ptr %644, i64 %711
  %713 = load ptr, ptr %712, align 8, !tbaa !11
  %714 = getelementptr inbounds ptr, ptr %713, i64 %592
  %715 = load ptr, ptr %714, align 8, !tbaa !11
  store double %705, ptr %715, align 8, !tbaa !28
  %716 = getelementptr inbounds ptr, ptr %713, i64 %593
  %717 = load ptr, ptr %716, align 8, !tbaa !11
  br i1 %618, label %718, label %726

718:                                              ; preds = %696
  %719 = load double, ptr %717, align 8, !tbaa !28
  %720 = getelementptr inbounds ptr, ptr %708, i64 %593
  %721 = load ptr, ptr %720, align 8, !tbaa !11
  %722 = load double, ptr %721, align 8, !tbaa !28
  %723 = fadd double %719, %722
  %724 = getelementptr inbounds ptr, ptr %700, i64 %590
  %725 = load ptr, ptr %724, align 8, !tbaa !11
  store double %723, ptr %725, align 8, !tbaa !28
  br label %737

726:                                              ; preds = %696
  %727 = getelementptr inbounds double, ptr %717, i64 %616
  %728 = load double, ptr %727, align 8, !tbaa !28
  %729 = getelementptr inbounds ptr, ptr %708, i64 %593
  %730 = load ptr, ptr %729, align 8, !tbaa !11
  %731 = getelementptr inbounds double, ptr %730, i64 %616
  %732 = load double, ptr %731, align 8, !tbaa !28
  %733 = fadd double %728, %732
  %734 = getelementptr inbounds ptr, ptr %700, i64 %590
  %735 = load ptr, ptr %734, align 8, !tbaa !11
  %736 = getelementptr inbounds double, ptr %735, i64 %616
  store double %733, ptr %736, align 8, !tbaa !28
  br label %737

737:                                              ; preds = %726, %718
  %738 = phi ptr [ %735, %726 ], [ %725, %718 ]
  %739 = phi ptr [ %730, %726 ], [ %721, %718 ]
  br i1 %613, label %766, label %740

740:                                              ; preds = %740, %737
  %741 = phi i64 [ %764, %740 ], [ 1, %737 ]
  %742 = add nsw i64 %741, %610
  %743 = getelementptr inbounds double, ptr %702, i64 %742
  %744 = load double, ptr %743, align 8, !tbaa !28
  %745 = fmul double %744, 2.500000e-01
  %746 = shl nuw nsw i64 %741, 1
  %747 = getelementptr inbounds double, ptr %710, i64 %746
  store double %745, ptr %747, align 8, !tbaa !28
  %748 = add nsw i64 %746, -1
  %749 = getelementptr inbounds double, ptr %710, i64 %748
  store double %745, ptr %749, align 8, !tbaa !28
  %750 = getelementptr inbounds double, ptr %715, i64 %746
  store double %745, ptr %750, align 8, !tbaa !28
  %751 = getelementptr inbounds double, ptr %715, i64 %748
  store double %745, ptr %751, align 8, !tbaa !28
  %752 = getelementptr inbounds double, ptr %717, i64 %748
  %753 = load double, ptr %752, align 8, !tbaa !28
  %754 = getelementptr inbounds double, ptr %717, i64 %746
  %755 = load double, ptr %754, align 8, !tbaa !28
  %756 = fadd double %753, %755
  %757 = getelementptr inbounds double, ptr %739, i64 %748
  %758 = load double, ptr %757, align 8, !tbaa !28
  %759 = fadd double %756, %758
  %760 = getelementptr inbounds double, ptr %739, i64 %746
  %761 = load double, ptr %760, align 8, !tbaa !28
  %762 = fadd double %759, %761
  %763 = getelementptr inbounds double, ptr %738, i64 %742
  store double %762, ptr %763, align 8, !tbaa !28
  %764 = add nuw nsw i64 %741, 1
  %765 = icmp eq i64 %764, %629
  br i1 %765, label %766, label %740, !llvm.loop !113

766:                                              ; preds = %740, %737
  %767 = getelementptr inbounds double, ptr %702, i64 %615
  %768 = load double, ptr %767, align 8, !tbaa !28
  %769 = fmul double %768, 2.500000e-01
  %770 = getelementptr inbounds double, ptr %710, i64 %616
  store double %769, ptr %770, align 8, !tbaa !28
  %771 = getelementptr inbounds double, ptr %715, i64 %616
  store double %769, ptr %771, align 8, !tbaa !28
  %772 = add nuw nsw i64 %697, 1
  %773 = icmp eq i64 %772, %628
  br i1 %773, label %774, label %696, !llvm.loop !114

774:                                              ; preds = %766, %695
  %775 = getelementptr inbounds ptr, ptr %635, i64 %621
  %776 = load ptr, ptr %775, align 8, !tbaa !11
  %777 = getelementptr inbounds ptr, ptr %776, i64 %591
  %778 = load ptr, ptr %777, align 8, !tbaa !11
  %779 = getelementptr inbounds double, ptr %778, i64 %610
  %780 = load double, ptr %779, align 8, !tbaa !28
  %781 = fmul double %780, 2.500000e-01
  %782 = getelementptr inbounds ptr, ptr %644, i64 %622
  %783 = load ptr, ptr %782, align 8, !tbaa !11
  %784 = getelementptr inbounds ptr, ptr %783, i64 %592
  %785 = load ptr, ptr %784, align 8, !tbaa !11
  store double %781, ptr %785, align 8, !tbaa !28
  br i1 %613, label %798, label %786

786:                                              ; preds = %786, %774
  %787 = phi i64 [ %796, %786 ], [ 1, %774 ]
  %788 = add nsw i64 %787, %610
  %789 = getelementptr inbounds double, ptr %778, i64 %788
  %790 = load double, ptr %789, align 8, !tbaa !28
  %791 = fmul double %790, 2.500000e-01
  %792 = shl nuw nsw i64 %787, 1
  %793 = getelementptr inbounds double, ptr %785, i64 %792
  store double %791, ptr %793, align 8, !tbaa !28
  %794 = add nsw i64 %792, -1
  %795 = getelementptr inbounds double, ptr %785, i64 %794
  store double %791, ptr %795, align 8, !tbaa !28
  %796 = add nuw nsw i64 %787, 1
  %797 = icmp eq i64 %796, %630
  br i1 %797, label %798, label %786, !llvm.loop !115

798:                                              ; preds = %786, %774
  %799 = getelementptr inbounds double, ptr %778, i64 %615
  %800 = load double, ptr %799, align 8, !tbaa !28
  %801 = fmul double %800, 2.500000e-01
  %802 = getelementptr inbounds double, ptr %785, i64 %616
  store double %801, ptr %802, align 8, !tbaa !28
  br i1 %623, label %803, label %835

803:                                              ; preds = %798
  %804 = getelementptr inbounds ptr, ptr %783, i64 %593
  %805 = load ptr, ptr %804, align 8, !tbaa !11
  br i1 %618, label %806, label %812

806:                                              ; preds = %803
  %807 = load double, ptr %805, align 8, !tbaa !28
  %808 = getelementptr inbounds ptr, ptr %635, i64 %622
  %809 = load ptr, ptr %808, align 8, !tbaa !11
  %810 = getelementptr inbounds ptr, ptr %809, i64 %590
  %811 = load ptr, ptr %810, align 8, !tbaa !11
  store double %807, ptr %811, align 8, !tbaa !28
  br label %820

812:                                              ; preds = %803
  %813 = getelementptr inbounds double, ptr %805, i64 %616
  %814 = load double, ptr %813, align 8, !tbaa !28
  %815 = getelementptr inbounds ptr, ptr %635, i64 %622
  %816 = load ptr, ptr %815, align 8, !tbaa !11
  %817 = getelementptr inbounds ptr, ptr %816, i64 %590
  %818 = load ptr, ptr %817, align 8, !tbaa !11
  %819 = getelementptr inbounds double, ptr %818, i64 %616
  store double %814, ptr %819, align 8, !tbaa !28
  br label %820

820:                                              ; preds = %812, %806
  %821 = phi ptr [ %818, %812 ], [ %811, %806 ]
  br i1 %613, label %835, label %822

822:                                              ; preds = %822, %820
  %823 = phi i64 [ %833, %822 ], [ 1, %820 ]
  %824 = shl nuw nsw i64 %823, 1
  %825 = add nsw i64 %824, -1
  %826 = getelementptr inbounds double, ptr %805, i64 %825
  %827 = load double, ptr %826, align 8, !tbaa !28
  %828 = getelementptr inbounds double, ptr %805, i64 %824
  %829 = load double, ptr %828, align 8, !tbaa !28
  %830 = fadd double %827, %829
  %831 = add nsw i64 %823, %610
  %832 = getelementptr inbounds double, ptr %821, i64 %831
  store double %830, ptr %832, align 8, !tbaa !28
  %833 = add nuw nsw i64 %823, 1
  %834 = icmp eq i64 %833, %631
  br i1 %834, label %835, label %822, !llvm.loop !116

835:                                              ; preds = %822, %820, %798
  %836 = add nsw i64 %633, 1
  %837 = icmp slt i64 %836, %625
  br i1 %837, label %632, label %1126, !llvm.loop !117

838:                                              ; preds = %577
  %839 = icmp eq i32 %2, 4
  %840 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %841 = add nsw i32 %840, 1
  br i1 %839, label %842, label %845

842:                                              ; preds = %838
  %843 = sext i32 %841 to i64
  %844 = sext i32 %840 to i64
  br label %848

845:                                              ; preds = %838
  %846 = sext i32 %840 to i64
  %847 = sext i32 %841 to i64
  br label %848

848:                                              ; preds = %845, %842
  %849 = phi i64 [ 0, %842 ], [ %847, %845 ]
  %850 = phi i64 [ 1, %842 ], [ %846, %845 ]
  %851 = phi i64 [ %843, %842 ], [ 0, %845 ]
  %852 = phi i64 [ %844, %842 ], [ 1, %845 ]
  %853 = icmp sgt i32 %6, 0
  br i1 %853, label %854, label %1126

854:                                              ; preds = %848
  %855 = add nsw i32 %6, %5
  %856 = load i32, ptr @y_block_half, align 4, !tbaa !7
  %857 = mul nsw i32 %856, %3
  %858 = load i32, ptr @x_block_half, align 4, !tbaa !7
  %859 = mul nsw i32 %858, %4
  %860 = add i32 %856, 1
  %861 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %862 = add nsw i32 %861, 1
  %863 = add i32 %858, 1
  %864 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %865 = add nsw i32 %864, 1
  %866 = getelementptr inbounds %struct.block, ptr %8, i64 %9, i32 11
  %867 = load ptr, ptr %866, align 8, !tbaa !27
  %868 = sext i32 %859 to i64
  %869 = sext i32 %857 to i64
  %870 = getelementptr inbounds %struct.block, ptr %8, i64 %10, i32 11
  %871 = load ptr, ptr %870, align 8, !tbaa !27
  %872 = icmp slt i32 %856, 1
  %873 = add nsw i32 %860, %857
  %874 = sext i32 %873 to i64
  %875 = sext i32 %862 to i64
  %876 = icmp eq i32 %4, 0
  %877 = icmp eq i32 %3, 0
  %878 = icmp slt i32 %858, 1
  %879 = add nsw i32 %863, %859
  %880 = sext i32 %879 to i64
  %881 = sext i32 %865 to i64
  %882 = icmp eq i32 %4, 1
  %883 = sext i32 %5 to i64
  %884 = sext i32 %855 to i64
  %885 = zext i32 %860 to i64
  %886 = zext i32 %860 to i64
  %887 = zext i32 %863 to i64
  %888 = zext i32 %860 to i64
  %889 = zext i32 %860 to i64
  %890 = zext i32 %860 to i64
  %891 = select i1 %877, i64 0, i64 %875
  %892 = select i1 %877, i64 0, i64 %875
  br label %893

893:                                              ; preds = %1123, %854
  %894 = phi i64 [ %883, %854 ], [ %1124, %1123 ]
  %895 = getelementptr inbounds ptr, ptr %867, i64 %894
  %896 = load ptr, ptr %895, align 8, !tbaa !11
  %897 = getelementptr inbounds ptr, ptr %896, i64 %868
  %898 = load ptr, ptr %897, align 8, !tbaa !11
  %899 = getelementptr inbounds ptr, ptr %898, i64 %869
  %900 = load ptr, ptr %899, align 8, !tbaa !11
  %901 = getelementptr inbounds double, ptr %900, i64 %850
  %902 = load double, ptr %901, align 8, !tbaa !28
  %903 = fmul double %902, 2.500000e-01
  %904 = getelementptr inbounds ptr, ptr %871, i64 %894
  %905 = load ptr, ptr %904, align 8, !tbaa !11
  %906 = load ptr, ptr %905, align 8, !tbaa !11
  %907 = load ptr, ptr %906, align 8, !tbaa !11
  %908 = getelementptr inbounds double, ptr %907, i64 %851
  store double %903, ptr %908, align 8, !tbaa !28
  br i1 %872, label %927, label %909

909:                                              ; preds = %909, %893
  %910 = phi i64 [ %925, %909 ], [ 1, %893 ]
  %911 = add nsw i64 %910, %869
  %912 = getelementptr inbounds ptr, ptr %898, i64 %911
  %913 = load ptr, ptr %912, align 8, !tbaa !11
  %914 = getelementptr inbounds double, ptr %913, i64 %850
  %915 = load double, ptr %914, align 8, !tbaa !28
  %916 = fmul double %915, 2.500000e-01
  %917 = shl nuw nsw i64 %910, 1
  %918 = getelementptr inbounds ptr, ptr %906, i64 %917
  %919 = load ptr, ptr %918, align 8, !tbaa !11
  %920 = getelementptr inbounds double, ptr %919, i64 %851
  store double %916, ptr %920, align 8, !tbaa !28
  %921 = add nsw i64 %917, -1
  %922 = getelementptr inbounds ptr, ptr %906, i64 %921
  %923 = load ptr, ptr %922, align 8, !tbaa !11
  %924 = getelementptr inbounds double, ptr %923, i64 %851
  store double %916, ptr %924, align 8, !tbaa !28
  %925 = add nuw nsw i64 %910, 1
  %926 = icmp eq i64 %925, %885
  br i1 %926, label %927, label %909, !llvm.loop !118

927:                                              ; preds = %909, %893
  %928 = getelementptr inbounds ptr, ptr %898, i64 %874
  %929 = load ptr, ptr %928, align 8, !tbaa !11
  %930 = getelementptr inbounds double, ptr %929, i64 %850
  %931 = load double, ptr %930, align 8, !tbaa !28
  %932 = fmul double %931, 2.500000e-01
  %933 = getelementptr inbounds ptr, ptr %906, i64 %875
  %934 = load ptr, ptr %933, align 8, !tbaa !11
  %935 = getelementptr inbounds double, ptr %934, i64 %851
  store double %932, ptr %935, align 8, !tbaa !28
  br i1 %876, label %936, label %963

936:                                              ; preds = %927
  %937 = load ptr, ptr %896, align 8, !tbaa !11
  %938 = getelementptr inbounds ptr, ptr %937, i64 %891
  %939 = select i1 %877, ptr %907, ptr %934
  %940 = getelementptr inbounds double, ptr %939, i64 %852
  %941 = load double, ptr %940, align 8, !tbaa !28
  %942 = load ptr, ptr %938, align 8, !tbaa !11
  %943 = getelementptr inbounds double, ptr %942, i64 %849
  store double %941, ptr %943, align 8, !tbaa !28
  br i1 %872, label %963, label %944

944:                                              ; preds = %944, %936
  %945 = phi i64 [ %961, %944 ], [ 1, %936 ]
  %946 = shl nuw nsw i64 %945, 1
  %947 = add nsw i64 %946, -1
  %948 = getelementptr inbounds ptr, ptr %906, i64 %947
  %949 = load ptr, ptr %948, align 8, !tbaa !11
  %950 = getelementptr inbounds double, ptr %949, i64 %852
  %951 = load double, ptr %950, align 8, !tbaa !28
  %952 = getelementptr inbounds ptr, ptr %906, i64 %946
  %953 = load ptr, ptr %952, align 8, !tbaa !11
  %954 = getelementptr inbounds double, ptr %953, i64 %852
  %955 = load double, ptr %954, align 8, !tbaa !28
  %956 = fadd double %951, %955
  %957 = add nsw i64 %945, %869
  %958 = getelementptr inbounds ptr, ptr %937, i64 %957
  %959 = load ptr, ptr %958, align 8, !tbaa !11
  %960 = getelementptr inbounds double, ptr %959, i64 %849
  store double %956, ptr %960, align 8, !tbaa !28
  %961 = add nuw nsw i64 %945, 1
  %962 = icmp eq i64 %961, %886
  br i1 %962, label %963, label %944, !llvm.loop !119

963:                                              ; preds = %944, %936, %927
  br i1 %878, label %1056, label %964

964:                                              ; preds = %1042, %963
  %965 = phi i64 [ %1054, %1042 ], [ 1, %963 ]
  %966 = add nsw i64 %965, %868
  %967 = getelementptr inbounds ptr, ptr %896, i64 %966
  %968 = load ptr, ptr %967, align 8, !tbaa !11
  %969 = getelementptr inbounds ptr, ptr %968, i64 %869
  %970 = load ptr, ptr %969, align 8, !tbaa !11
  %971 = getelementptr inbounds double, ptr %970, i64 %850
  %972 = load double, ptr %971, align 8, !tbaa !28
  %973 = fmul double %972, 2.500000e-01
  %974 = shl nuw nsw i64 %965, 1
  %975 = getelementptr inbounds ptr, ptr %905, i64 %974
  %976 = load ptr, ptr %975, align 8, !tbaa !11
  %977 = load ptr, ptr %976, align 8, !tbaa !11
  %978 = getelementptr inbounds double, ptr %977, i64 %851
  store double %973, ptr %978, align 8, !tbaa !28
  %979 = add nsw i64 %974, -1
  %980 = getelementptr inbounds ptr, ptr %905, i64 %979
  %981 = load ptr, ptr %980, align 8, !tbaa !11
  %982 = load ptr, ptr %981, align 8, !tbaa !11
  %983 = getelementptr inbounds double, ptr %982, i64 %851
  store double %973, ptr %983, align 8, !tbaa !28
  br i1 %877, label %984, label %990

984:                                              ; preds = %964
  %985 = getelementptr inbounds double, ptr %982, i64 %852
  %986 = load double, ptr %985, align 8, !tbaa !28
  %987 = getelementptr inbounds double, ptr %977, i64 %852
  %988 = load double, ptr %987, align 8, !tbaa !28
  %989 = fadd double %986, %988
  br label %1001

990:                                              ; preds = %964
  %991 = getelementptr inbounds ptr, ptr %981, i64 %875
  %992 = load ptr, ptr %991, align 8, !tbaa !11
  %993 = getelementptr inbounds double, ptr %992, i64 %852
  %994 = load double, ptr %993, align 8, !tbaa !28
  %995 = getelementptr inbounds ptr, ptr %976, i64 %875
  %996 = load ptr, ptr %995, align 8, !tbaa !11
  %997 = getelementptr inbounds double, ptr %996, i64 %852
  %998 = load double, ptr %997, align 8, !tbaa !28
  %999 = fadd double %994, %998
  %1000 = getelementptr inbounds ptr, ptr %968, i64 %875
  br label %1001

1001:                                             ; preds = %990, %984
  %1002 = phi ptr [ %1000, %990 ], [ %968, %984 ]
  %1003 = phi double [ %999, %990 ], [ %989, %984 ]
  %1004 = load ptr, ptr %1002, align 8, !tbaa !11
  %1005 = getelementptr inbounds double, ptr %1004, i64 %849
  store double %1003, ptr %1005, align 8, !tbaa !28
  br i1 %872, label %1042, label %1006

1006:                                             ; preds = %1006, %1001
  %1007 = phi i64 [ %1040, %1006 ], [ 1, %1001 ]
  %1008 = add nsw i64 %1007, %869
  %1009 = getelementptr inbounds ptr, ptr %968, i64 %1008
  %1010 = load ptr, ptr %1009, align 8, !tbaa !11
  %1011 = getelementptr inbounds double, ptr %1010, i64 %850
  %1012 = load double, ptr %1011, align 8, !tbaa !28
  %1013 = fmul double %1012, 2.500000e-01
  %1014 = shl nuw nsw i64 %1007, 1
  %1015 = getelementptr inbounds ptr, ptr %976, i64 %1014
  %1016 = load ptr, ptr %1015, align 8, !tbaa !11
  %1017 = getelementptr inbounds double, ptr %1016, i64 %851
  store double %1013, ptr %1017, align 8, !tbaa !28
  %1018 = add nsw i64 %1014, -1
  %1019 = getelementptr inbounds ptr, ptr %976, i64 %1018
  %1020 = load ptr, ptr %1019, align 8, !tbaa !11
  %1021 = getelementptr inbounds double, ptr %1020, i64 %851
  store double %1013, ptr %1021, align 8, !tbaa !28
  %1022 = getelementptr inbounds ptr, ptr %981, i64 %1014
  %1023 = load ptr, ptr %1022, align 8, !tbaa !11
  %1024 = getelementptr inbounds double, ptr %1023, i64 %851
  store double %1013, ptr %1024, align 8, !tbaa !28
  %1025 = getelementptr inbounds ptr, ptr %981, i64 %1018
  %1026 = load ptr, ptr %1025, align 8, !tbaa !11
  %1027 = getelementptr inbounds double, ptr %1026, i64 %851
  store double %1013, ptr %1027, align 8, !tbaa !28
  %1028 = getelementptr inbounds double, ptr %1026, i64 %852
  %1029 = load double, ptr %1028, align 8, !tbaa !28
  %1030 = getelementptr inbounds double, ptr %1023, i64 %852
  %1031 = load double, ptr %1030, align 8, !tbaa !28
  %1032 = fadd double %1029, %1031
  %1033 = getelementptr inbounds double, ptr %1020, i64 %852
  %1034 = load double, ptr %1033, align 8, !tbaa !28
  %1035 = fadd double %1032, %1034
  %1036 = getelementptr inbounds double, ptr %1016, i64 %852
  %1037 = load double, ptr %1036, align 8, !tbaa !28
  %1038 = fadd double %1035, %1037
  %1039 = getelementptr inbounds double, ptr %1010, i64 %849
  store double %1038, ptr %1039, align 8, !tbaa !28
  %1040 = add nuw nsw i64 %1007, 1
  %1041 = icmp eq i64 %1040, %888
  br i1 %1041, label %1042, label %1006, !llvm.loop !120

1042:                                             ; preds = %1006, %1001
  %1043 = getelementptr inbounds ptr, ptr %968, i64 %874
  %1044 = load ptr, ptr %1043, align 8, !tbaa !11
  %1045 = getelementptr inbounds double, ptr %1044, i64 %850
  %1046 = load double, ptr %1045, align 8, !tbaa !28
  %1047 = fmul double %1046, 2.500000e-01
  %1048 = getelementptr inbounds ptr, ptr %976, i64 %875
  %1049 = load ptr, ptr %1048, align 8, !tbaa !11
  %1050 = getelementptr inbounds double, ptr %1049, i64 %851
  store double %1047, ptr %1050, align 8, !tbaa !28
  %1051 = getelementptr inbounds ptr, ptr %981, i64 %875
  %1052 = load ptr, ptr %1051, align 8, !tbaa !11
  %1053 = getelementptr inbounds double, ptr %1052, i64 %851
  store double %1047, ptr %1053, align 8, !tbaa !28
  %1054 = add nuw nsw i64 %965, 1
  %1055 = icmp eq i64 %1054, %887
  br i1 %1055, label %1056, label %964, !llvm.loop !121

1056:                                             ; preds = %1042, %963
  %1057 = getelementptr inbounds ptr, ptr %896, i64 %880
  %1058 = load ptr, ptr %1057, align 8, !tbaa !11
  %1059 = getelementptr inbounds ptr, ptr %1058, i64 %869
  %1060 = load ptr, ptr %1059, align 8, !tbaa !11
  %1061 = getelementptr inbounds double, ptr %1060, i64 %850
  %1062 = load double, ptr %1061, align 8, !tbaa !28
  %1063 = fmul double %1062, 2.500000e-01
  %1064 = getelementptr inbounds ptr, ptr %905, i64 %881
  %1065 = load ptr, ptr %1064, align 8, !tbaa !11
  %1066 = load ptr, ptr %1065, align 8, !tbaa !11
  %1067 = getelementptr inbounds double, ptr %1066, i64 %851
  store double %1063, ptr %1067, align 8, !tbaa !28
  br i1 %872, label %1086, label %1068

1068:                                             ; preds = %1068, %1056
  %1069 = phi i64 [ %1084, %1068 ], [ 1, %1056 ]
  %1070 = add nsw i64 %1069, %869
  %1071 = getelementptr inbounds ptr, ptr %1058, i64 %1070
  %1072 = load ptr, ptr %1071, align 8, !tbaa !11
  %1073 = getelementptr inbounds double, ptr %1072, i64 %850
  %1074 = load double, ptr %1073, align 8, !tbaa !28
  %1075 = fmul double %1074, 2.500000e-01
  %1076 = shl nuw nsw i64 %1069, 1
  %1077 = getelementptr inbounds ptr, ptr %1065, i64 %1076
  %1078 = load ptr, ptr %1077, align 8, !tbaa !11
  %1079 = getelementptr inbounds double, ptr %1078, i64 %851
  store double %1075, ptr %1079, align 8, !tbaa !28
  %1080 = add nsw i64 %1076, -1
  %1081 = getelementptr inbounds ptr, ptr %1065, i64 %1080
  %1082 = load ptr, ptr %1081, align 8, !tbaa !11
  %1083 = getelementptr inbounds double, ptr %1082, i64 %851
  store double %1075, ptr %1083, align 8, !tbaa !28
  %1084 = add nuw nsw i64 %1069, 1
  %1085 = icmp eq i64 %1084, %889
  br i1 %1085, label %1086, label %1068, !llvm.loop !122

1086:                                             ; preds = %1068, %1056
  %1087 = getelementptr inbounds ptr, ptr %1058, i64 %874
  %1088 = load ptr, ptr %1087, align 8, !tbaa !11
  %1089 = getelementptr inbounds double, ptr %1088, i64 %850
  %1090 = load double, ptr %1089, align 8, !tbaa !28
  %1091 = fmul double %1090, 2.500000e-01
  %1092 = getelementptr inbounds ptr, ptr %1065, i64 %875
  %1093 = load ptr, ptr %1092, align 8, !tbaa !11
  %1094 = getelementptr inbounds double, ptr %1093, i64 %851
  store double %1091, ptr %1094, align 8, !tbaa !28
  br i1 %882, label %1095, label %1123

1095:                                             ; preds = %1086
  %1096 = getelementptr inbounds ptr, ptr %896, i64 %881
  %1097 = load ptr, ptr %1096, align 8, !tbaa !11
  %1098 = getelementptr inbounds ptr, ptr %1097, i64 %892
  %1099 = select i1 %877, ptr %1066, ptr %1093
  %1100 = getelementptr inbounds double, ptr %1099, i64 %852
  %1101 = load double, ptr %1100, align 8, !tbaa !28
  %1102 = load ptr, ptr %1098, align 8, !tbaa !11
  %1103 = getelementptr inbounds double, ptr %1102, i64 %849
  store double %1101, ptr %1103, align 8, !tbaa !28
  br i1 %872, label %1123, label %1104

1104:                                             ; preds = %1104, %1095
  %1105 = phi i64 [ %1121, %1104 ], [ 1, %1095 ]
  %1106 = shl nuw nsw i64 %1105, 1
  %1107 = add nsw i64 %1106, -1
  %1108 = getelementptr inbounds ptr, ptr %1065, i64 %1107
  %1109 = load ptr, ptr %1108, align 8, !tbaa !11
  %1110 = getelementptr inbounds double, ptr %1109, i64 %852
  %1111 = load double, ptr %1110, align 8, !tbaa !28
  %1112 = getelementptr inbounds ptr, ptr %1065, i64 %1106
  %1113 = load ptr, ptr %1112, align 8, !tbaa !11
  %1114 = getelementptr inbounds double, ptr %1113, i64 %852
  %1115 = load double, ptr %1114, align 8, !tbaa !28
  %1116 = fadd double %1111, %1115
  %1117 = add nsw i64 %1105, %869
  %1118 = getelementptr inbounds ptr, ptr %1097, i64 %1117
  %1119 = load ptr, ptr %1118, align 8, !tbaa !11
  %1120 = getelementptr inbounds double, ptr %1119, i64 %849
  store double %1116, ptr %1120, align 8, !tbaa !28
  %1121 = add nuw nsw i64 %1105, 1
  %1122 = icmp eq i64 %1121, %890
  br i1 %1122, label %1123, label %1104, !llvm.loop !123

1123:                                             ; preds = %1104, %1095, %1086
  %1124 = add nsw i64 %894, 1
  %1125 = icmp slt i64 %1124, %884
  br i1 %1125, label %893, label %1126, !llvm.loop !124

1126:                                             ; preds = %1123, %848, %835, %589, %577, %574, %329, %315, %230, %217, %130, %118, %115, %26
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @apply_bc(i32 noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = load i32, ptr @code, align 4, !tbaa !7
  %6 = icmp eq i32 %5, 0
  %7 = load i32, ptr @stencil, align 4
  %8 = icmp eq i32 %7, 7
  %9 = select i1 %6, i1 %8, i1 false
  br i1 %9, label %10, label %158

10:                                               ; preds = %4
  switch i32 %0, label %306 [
    i32 1, label %11
    i32 0, label %16
    i32 3, label %62
    i32 2, label %67
    i32 5, label %111
    i32 4, label %116
  ]

11:                                               ; preds = %10
  %12 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %13 = add nsw i32 %12, 1
  %14 = sext i32 %12 to i64
  %15 = sext i32 %13 to i64
  br label %16

16:                                               ; preds = %11, %10
  %17 = phi i64 [ 1, %10 ], [ %14, %11 ]
  %18 = phi i64 [ 0, %10 ], [ %15, %11 ]
  %19 = icmp sgt i32 %3, 0
  br i1 %19, label %20, label %306

20:                                               ; preds = %16
  %21 = add nsw i32 %3, %2
  %22 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %23 = icmp slt i32 %22, 1
  %24 = load i32, ptr @z_block_size, align 4
  %25 = icmp slt i32 %24, 1
  %26 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %27 = add i32 %24, 1
  %28 = add i32 %22, 1
  %29 = sext i32 %2 to i64
  %30 = sext i32 %21 to i64
  %31 = zext i32 %28 to i64
  %32 = zext i32 %27 to i64
  br label %33

33:                                               ; preds = %59, %20
  %34 = phi i64 [ %29, %20 ], [ %60, %59 ]
  br i1 %23, label %59, label %35

35:                                               ; preds = %56, %33
  %36 = phi i64 [ %57, %56 ], [ 1, %33 ]
  br i1 %25, label %56, label %37

37:                                               ; preds = %35
  %38 = load ptr, ptr %26, align 8, !tbaa !27
  %39 = getelementptr inbounds ptr, ptr %38, i64 %34
  %40 = load ptr, ptr %39, align 8, !tbaa !11
  %41 = getelementptr inbounds ptr, ptr %40, i64 %17
  %42 = load ptr, ptr %41, align 8, !tbaa !11
  %43 = getelementptr inbounds ptr, ptr %42, i64 %36
  %44 = load ptr, ptr %43, align 8, !tbaa !11
  %45 = getelementptr inbounds ptr, ptr %40, i64 %18
  %46 = load ptr, ptr %45, align 8, !tbaa !11
  %47 = getelementptr inbounds ptr, ptr %46, i64 %36
  %48 = load ptr, ptr %47, align 8, !tbaa !11
  br label %49

49:                                               ; preds = %49, %37
  %50 = phi i64 [ 1, %37 ], [ %54, %49 ]
  %51 = getelementptr inbounds double, ptr %44, i64 %50
  %52 = load double, ptr %51, align 8, !tbaa !28
  %53 = getelementptr inbounds double, ptr %48, i64 %50
  store double %52, ptr %53, align 8, !tbaa !28
  %54 = add nuw nsw i64 %50, 1
  %55 = icmp eq i64 %54, %32
  br i1 %55, label %56, label %49, !llvm.loop !125

56:                                               ; preds = %49, %35
  %57 = add nuw nsw i64 %36, 1
  %58 = icmp eq i64 %57, %31
  br i1 %58, label %59, label %35, !llvm.loop !126

59:                                               ; preds = %56, %33
  %60 = add nsw i64 %34, 1
  %61 = icmp slt i64 %60, %30
  br i1 %61, label %33, label %306, !llvm.loop !127

62:                                               ; preds = %10
  %63 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %64 = add nsw i32 %63, 1
  %65 = sext i32 %63 to i64
  %66 = sext i32 %64 to i64
  br label %67

67:                                               ; preds = %62, %10
  %68 = phi i64 [ 1, %10 ], [ %65, %62 ]
  %69 = phi i64 [ 0, %10 ], [ %66, %62 ]
  %70 = icmp sgt i32 %3, 0
  br i1 %70, label %71, label %306

71:                                               ; preds = %67
  %72 = add nsw i32 %3, %2
  %73 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %74 = icmp slt i32 %73, 1
  %75 = load i32, ptr @z_block_size, align 4
  %76 = icmp slt i32 %75, 1
  %77 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %78 = add i32 %75, 1
  %79 = add i32 %73, 1
  %80 = sext i32 %2 to i64
  %81 = sext i32 %72 to i64
  %82 = zext i32 %79 to i64
  %83 = zext i32 %78 to i64
  br label %84

84:                                               ; preds = %108, %71
  %85 = phi i64 [ %80, %71 ], [ %109, %108 ]
  br i1 %74, label %108, label %86

86:                                               ; preds = %105, %84
  %87 = phi i64 [ %106, %105 ], [ 1, %84 ]
  br i1 %76, label %105, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %77, align 8, !tbaa !27
  %90 = getelementptr inbounds ptr, ptr %89, i64 %85
  %91 = load ptr, ptr %90, align 8, !tbaa !11
  %92 = getelementptr inbounds ptr, ptr %91, i64 %87
  %93 = load ptr, ptr %92, align 8, !tbaa !11
  %94 = getelementptr inbounds ptr, ptr %93, i64 %68
  %95 = load ptr, ptr %94, align 8, !tbaa !11
  %96 = getelementptr inbounds ptr, ptr %93, i64 %69
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  br label %98

98:                                               ; preds = %98, %88
  %99 = phi i64 [ 1, %88 ], [ %103, %98 ]
  %100 = getelementptr inbounds double, ptr %95, i64 %99
  %101 = load double, ptr %100, align 8, !tbaa !28
  %102 = getelementptr inbounds double, ptr %97, i64 %99
  store double %101, ptr %102, align 8, !tbaa !28
  %103 = add nuw nsw i64 %99, 1
  %104 = icmp eq i64 %103, %83
  br i1 %104, label %105, label %98, !llvm.loop !128

105:                                              ; preds = %98, %86
  %106 = add nuw nsw i64 %87, 1
  %107 = icmp eq i64 %106, %82
  br i1 %107, label %108, label %86, !llvm.loop !129

108:                                              ; preds = %105, %84
  %109 = add nsw i64 %85, 1
  %110 = icmp slt i64 %109, %81
  br i1 %110, label %84, label %306, !llvm.loop !130

111:                                              ; preds = %10
  %112 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %113 = add nsw i32 %112, 1
  %114 = sext i32 %112 to i64
  %115 = sext i32 %113 to i64
  br label %116

116:                                              ; preds = %111, %10
  %117 = phi i64 [ 1, %10 ], [ %114, %111 ]
  %118 = phi i64 [ 0, %10 ], [ %115, %111 ]
  %119 = icmp sgt i32 %3, 0
  br i1 %119, label %120, label %306

120:                                              ; preds = %116
  %121 = add nsw i32 %3, %2
  %122 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %123 = icmp slt i32 %122, 1
  %124 = load i32, ptr @y_block_size, align 4
  %125 = icmp slt i32 %124, 1
  %126 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %127 = add i32 %124, 1
  %128 = add i32 %122, 1
  %129 = sext i32 %2 to i64
  %130 = sext i32 %121 to i64
  %131 = zext i32 %128 to i64
  %132 = zext i32 %127 to i64
  br label %133

133:                                              ; preds = %155, %120
  %134 = phi i64 [ %129, %120 ], [ %156, %155 ]
  br i1 %123, label %155, label %135

135:                                              ; preds = %152, %133
  %136 = phi i64 [ %153, %152 ], [ 1, %133 ]
  br i1 %125, label %152, label %137

137:                                              ; preds = %135
  %138 = load ptr, ptr %126, align 8, !tbaa !27
  %139 = getelementptr inbounds ptr, ptr %138, i64 %134
  %140 = load ptr, ptr %139, align 8, !tbaa !11
  %141 = getelementptr inbounds ptr, ptr %140, i64 %136
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  br label %143

143:                                              ; preds = %143, %137
  %144 = phi i64 [ 1, %137 ], [ %150, %143 ]
  %145 = getelementptr inbounds ptr, ptr %142, i64 %144
  %146 = load ptr, ptr %145, align 8, !tbaa !11
  %147 = getelementptr inbounds double, ptr %146, i64 %117
  %148 = load double, ptr %147, align 8, !tbaa !28
  %149 = getelementptr inbounds double, ptr %146, i64 %118
  store double %148, ptr %149, align 8, !tbaa !28
  %150 = add nuw nsw i64 %144, 1
  %151 = icmp eq i64 %150, %132
  br i1 %151, label %152, label %143, !llvm.loop !131

152:                                              ; preds = %143, %135
  %153 = add nuw nsw i64 %136, 1
  %154 = icmp eq i64 %153, %131
  br i1 %154, label %155, label %135, !llvm.loop !132

155:                                              ; preds = %152, %133
  %156 = add nsw i64 %134, 1
  %157 = icmp slt i64 %156, %130
  br i1 %157, label %133, label %306, !llvm.loop !133

158:                                              ; preds = %4
  switch i32 %0, label %306 [
    i32 1, label %159
    i32 0, label %164
    i32 3, label %210
    i32 2, label %215
    i32 5, label %259
    i32 4, label %264
  ]

159:                                              ; preds = %158
  %160 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %161 = add nsw i32 %160, 1
  %162 = sext i32 %160 to i64
  %163 = sext i32 %161 to i64
  br label %164

164:                                              ; preds = %159, %158
  %165 = phi i64 [ 1, %158 ], [ %162, %159 ]
  %166 = phi i64 [ 0, %158 ], [ %163, %159 ]
  %167 = icmp sgt i32 %3, 0
  br i1 %167, label %168, label %306

168:                                              ; preds = %164
  %169 = add nsw i32 %3, %2
  %170 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %171 = icmp slt i32 %170, -1
  %172 = load i32, ptr @z_block_size, align 4
  %173 = icmp slt i32 %172, -1
  %174 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %175 = add i32 %172, 2
  %176 = add i32 %170, 2
  %177 = sext i32 %2 to i64
  %178 = sext i32 %169 to i64
  %179 = zext i32 %176 to i64
  %180 = zext i32 %175 to i64
  br label %181

181:                                              ; preds = %207, %168
  %182 = phi i64 [ %177, %168 ], [ %208, %207 ]
  br i1 %171, label %207, label %183

183:                                              ; preds = %204, %181
  %184 = phi i64 [ %205, %204 ], [ 0, %181 ]
  br i1 %173, label %204, label %185

185:                                              ; preds = %183
  %186 = load ptr, ptr %174, align 8, !tbaa !27
  %187 = getelementptr inbounds ptr, ptr %186, i64 %182
  %188 = load ptr, ptr %187, align 8, !tbaa !11
  %189 = getelementptr inbounds ptr, ptr %188, i64 %165
  %190 = load ptr, ptr %189, align 8, !tbaa !11
  %191 = getelementptr inbounds ptr, ptr %190, i64 %184
  %192 = load ptr, ptr %191, align 8, !tbaa !11
  %193 = getelementptr inbounds ptr, ptr %188, i64 %166
  %194 = load ptr, ptr %193, align 8, !tbaa !11
  %195 = getelementptr inbounds ptr, ptr %194, i64 %184
  %196 = load ptr, ptr %195, align 8, !tbaa !11
  br label %197

197:                                              ; preds = %197, %185
  %198 = phi i64 [ 0, %185 ], [ %202, %197 ]
  %199 = getelementptr inbounds double, ptr %192, i64 %198
  %200 = load double, ptr %199, align 8, !tbaa !28
  %201 = getelementptr inbounds double, ptr %196, i64 %198
  store double %200, ptr %201, align 8, !tbaa !28
  %202 = add nuw nsw i64 %198, 1
  %203 = icmp eq i64 %202, %180
  br i1 %203, label %204, label %197, !llvm.loop !134

204:                                              ; preds = %197, %183
  %205 = add nuw nsw i64 %184, 1
  %206 = icmp eq i64 %205, %179
  br i1 %206, label %207, label %183, !llvm.loop !135

207:                                              ; preds = %204, %181
  %208 = add nsw i64 %182, 1
  %209 = icmp slt i64 %208, %178
  br i1 %209, label %181, label %306, !llvm.loop !136

210:                                              ; preds = %158
  %211 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %212 = add nsw i32 %211, 1
  %213 = sext i32 %211 to i64
  %214 = sext i32 %212 to i64
  br label %215

215:                                              ; preds = %210, %158
  %216 = phi i64 [ 1, %158 ], [ %213, %210 ]
  %217 = phi i64 [ 0, %158 ], [ %214, %210 ]
  %218 = icmp sgt i32 %3, 0
  br i1 %218, label %219, label %306

219:                                              ; preds = %215
  %220 = add nsw i32 %3, %2
  %221 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %222 = icmp slt i32 %221, -1
  %223 = load i32, ptr @z_block_size, align 4
  %224 = icmp slt i32 %223, -1
  %225 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %226 = add i32 %223, 2
  %227 = add i32 %221, 2
  %228 = sext i32 %2 to i64
  %229 = sext i32 %220 to i64
  %230 = zext i32 %227 to i64
  %231 = zext i32 %226 to i64
  br label %232

232:                                              ; preds = %256, %219
  %233 = phi i64 [ %228, %219 ], [ %257, %256 ]
  br i1 %222, label %256, label %234

234:                                              ; preds = %253, %232
  %235 = phi i64 [ %254, %253 ], [ 0, %232 ]
  br i1 %224, label %253, label %236

236:                                              ; preds = %234
  %237 = load ptr, ptr %225, align 8, !tbaa !27
  %238 = getelementptr inbounds ptr, ptr %237, i64 %233
  %239 = load ptr, ptr %238, align 8, !tbaa !11
  %240 = getelementptr inbounds ptr, ptr %239, i64 %235
  %241 = load ptr, ptr %240, align 8, !tbaa !11
  %242 = getelementptr inbounds ptr, ptr %241, i64 %216
  %243 = load ptr, ptr %242, align 8, !tbaa !11
  %244 = getelementptr inbounds ptr, ptr %241, i64 %217
  %245 = load ptr, ptr %244, align 8, !tbaa !11
  br label %246

246:                                              ; preds = %246, %236
  %247 = phi i64 [ 0, %236 ], [ %251, %246 ]
  %248 = getelementptr inbounds double, ptr %243, i64 %247
  %249 = load double, ptr %248, align 8, !tbaa !28
  %250 = getelementptr inbounds double, ptr %245, i64 %247
  store double %249, ptr %250, align 8, !tbaa !28
  %251 = add nuw nsw i64 %247, 1
  %252 = icmp eq i64 %251, %231
  br i1 %252, label %253, label %246, !llvm.loop !137

253:                                              ; preds = %246, %234
  %254 = add nuw nsw i64 %235, 1
  %255 = icmp eq i64 %254, %230
  br i1 %255, label %256, label %234, !llvm.loop !138

256:                                              ; preds = %253, %232
  %257 = add nsw i64 %233, 1
  %258 = icmp slt i64 %257, %229
  br i1 %258, label %232, label %306, !llvm.loop !139

259:                                              ; preds = %158
  %260 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %261 = add nsw i32 %260, 1
  %262 = sext i32 %260 to i64
  %263 = sext i32 %261 to i64
  br label %264

264:                                              ; preds = %259, %158
  %265 = phi i64 [ 1, %158 ], [ %262, %259 ]
  %266 = phi i64 [ 0, %158 ], [ %263, %259 ]
  %267 = icmp sgt i32 %3, 0
  br i1 %267, label %268, label %306

268:                                              ; preds = %264
  %269 = add nsw i32 %3, %2
  %270 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %271 = icmp slt i32 %270, -1
  %272 = load i32, ptr @y_block_size, align 4
  %273 = icmp slt i32 %272, -1
  %274 = getelementptr inbounds %struct.block, ptr %1, i64 0, i32 11
  %275 = add i32 %272, 2
  %276 = add i32 %270, 2
  %277 = sext i32 %2 to i64
  %278 = sext i32 %269 to i64
  %279 = zext i32 %276 to i64
  %280 = zext i32 %275 to i64
  br label %281

281:                                              ; preds = %303, %268
  %282 = phi i64 [ %277, %268 ], [ %304, %303 ]
  br i1 %271, label %303, label %283

283:                                              ; preds = %300, %281
  %284 = phi i64 [ %301, %300 ], [ 0, %281 ]
  br i1 %273, label %300, label %285

285:                                              ; preds = %283
  %286 = load ptr, ptr %274, align 8, !tbaa !27
  %287 = getelementptr inbounds ptr, ptr %286, i64 %282
  %288 = load ptr, ptr %287, align 8, !tbaa !11
  %289 = getelementptr inbounds ptr, ptr %288, i64 %284
  %290 = load ptr, ptr %289, align 8, !tbaa !11
  br label %291

291:                                              ; preds = %291, %285
  %292 = phi i64 [ 0, %285 ], [ %298, %291 ]
  %293 = getelementptr inbounds ptr, ptr %290, i64 %292
  %294 = load ptr, ptr %293, align 8, !tbaa !11
  %295 = getelementptr inbounds double, ptr %294, i64 %265
  %296 = load double, ptr %295, align 8, !tbaa !28
  %297 = getelementptr inbounds double, ptr %294, i64 %266
  store double %296, ptr %297, align 8, !tbaa !28
  %298 = add nuw nsw i64 %292, 1
  %299 = icmp eq i64 %298, %280
  br i1 %299, label %300, label %291, !llvm.loop !140

300:                                              ; preds = %291, %283
  %301 = add nuw nsw i64 %284, 1
  %302 = icmp eq i64 %301, %279
  br i1 %302, label %303, label %283, !llvm.loop !141

303:                                              ; preds = %300, %281
  %304 = add nsw i64 %282, 1
  %305 = icmp slt i64 %304, %278
  br i1 %305, label %281, label %306, !llvm.loop !142

306:                                              ; preds = %303, %264, %256, %215, %207, %164, %158, %155, %116, %108, %67, %59, %16, %10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @driver() #0 {
  tail call void @init() #24
  tail call void @init_profile() #24
  %1 = load i32, ptr @counter_malloc, align 4, !tbaa !7
  store i32 %1, ptr @counter_malloc_init, align 4, !tbaa !7
  %2 = load double, ptr @size_malloc, align 8, !tbaa !28
  store double %2, ptr @size_malloc_init, align 8, !tbaa !28
  %3 = tail call double @timer() #24
  %4 = load i32, ptr @num_refine, align 4, !tbaa !7
  %5 = icmp ne i32 %4, 0
  %6 = load i32, ptr @uniform_refine, align 4
  %7 = icmp ne i32 %6, 0
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %0
  tail call void @refine(i32 noundef 0) #24
  br label %10

10:                                               ; preds = %9, %0
  %11 = tail call double @timer() #24
  %12 = fsub double %11, %3
  %13 = load double, ptr @timer_refine_all, align 8, !tbaa !28
  %14 = fadd double %13, %12
  store double %14, ptr @timer_refine_all, align 8, !tbaa !28
  %15 = load i32, ptr @plot_freq, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %10
  tail call void @plot(i32 noundef 0) #24
  br label %18

18:                                               ; preds = %17, %10
  %19 = tail call double @timer() #24
  %20 = fsub double %19, %11
  %21 = load double, ptr @timer_plot, align 8, !tbaa !28
  %22 = fadd double %21, %20
  store double %22, ptr @timer_plot, align 8, !tbaa !28
  %23 = load i32, ptr @global_active, align 4, !tbaa !7
  store i32 %23, ptr @nb_max, align 4, !tbaa !7
  store i32 %23, ptr @nb_min, align 4, !tbaa !7
  %24 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %25 = icmp slt i32 %24, 1
  br i1 %25, label %169, label %26

26:                                               ; preds = %161, %18
  %27 = phi i32 [ %166, %161 ], [ 1, %18 ]
  %28 = phi double [ %138, %161 ], [ undef, %18 ]
  %29 = phi i32 [ %137, %161 ], [ 0, %18 ]
  %30 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %136

32:                                               ; preds = %130, %26
  %33 = phi i32 [ %131, %130 ], [ %30, %26 ]
  %34 = phi double [ %132, %130 ], [ %28, %26 ]
  %35 = phi i32 [ %134, %130 ], [ %29, %26 ]
  %36 = phi i32 [ %133, %130 ], [ 0, %26 ]
  %37 = load i32, ptr @global_active, align 4, !tbaa !7
  %38 = sext i32 %37 to i64
  %39 = load i64, ptr @total_blocks, align 8, !tbaa !143
  %40 = add nsw i64 %39, %38
  store i64 %40, ptr @total_blocks, align 8, !tbaa !143
  %41 = load i32, ptr @nb_min, align 4, !tbaa !7
  %42 = icmp slt i32 %37, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %32
  store i32 %37, ptr @nb_min, align 4, !tbaa !7
  br label %44

44:                                               ; preds = %43, %32
  %45 = load i32, ptr @nb_max, align 4, !tbaa !7
  %46 = icmp sgt i32 %37, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  store i32 %37, ptr @nb_max, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %47, %44
  %49 = load i32, ptr @num_vars, align 4, !tbaa !7
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %130

51:                                               ; preds = %48
  %52 = load i32, ptr @comm_vars, align 4, !tbaa !7
  br label %53

53:                                               ; preds = %122, %51
  %54 = phi i32 [ %124, %122 ], [ %52, %51 ]
  %55 = phi i32 [ %126, %122 ], [ %49, %51 ]
  %56 = phi i32 [ %125, %122 ], [ 0, %51 ]
  %57 = add nsw i32 %54, %56
  %58 = icmp sgt i32 %57, %55
  %59 = sub nsw i32 %55, %56
  %60 = select i1 %58, i32 %59, i32 %54
  %61 = tail call double @timer() #24
  tail call void @comm(i32 noundef %56, i32 noundef %60, i32 noundef %35) #24
  %62 = tail call double @timer() #24
  %63 = fsub double %62, %61
  %64 = load double, ptr @timer_comm_all, align 8, !tbaa !28
  %65 = fadd double %64, %63
  store double %65, ptr @timer_comm_all, align 8, !tbaa !28
  %66 = icmp sgt i32 %60, 0
  br i1 %66, label %67, label %122

67:                                               ; preds = %53
  %68 = add nsw i32 %60, %56
  %69 = sext i32 %56 to i64
  %70 = sext i32 %68 to i64
  br label %71

71:                                               ; preds = %115, %67
  %72 = phi i64 [ %69, %67 ], [ %120, %115 ]
  %73 = phi double [ %62, %67 ], [ %116, %115 ]
  %74 = trunc i64 %72 to i32
  tail call void @stencil_calc(i32 noundef %74) #24
  %75 = tail call double @timer() #24
  %76 = fsub double %75, %73
  %77 = load double, ptr @timer_calc_all, align 8, !tbaa !28
  %78 = fadd double %77, %76
  store double %78, ptr @timer_calc_all, align 8, !tbaa !28
  %79 = load i32, ptr @checksum_freq, align 4, !tbaa !7
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %115, label %81

81:                                               ; preds = %71
  %82 = srem i32 %36, %79
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %115

84:                                               ; preds = %81
  %85 = tail call double @check_sum(i32 noundef %74) #24
  %86 = load i32, ptr @report_diffusion, align 4, !tbaa !7
  %87 = icmp eq i32 %86, 0
  %88 = load i32, ptr @my_pe, align 4
  %89 = icmp ne i32 %88, 0
  %90 = select i1 %87, i1 true, i1 %89
  br i1 %90, label %100, label %91

91:                                               ; preds = %84
  %92 = load ptr, ptr @grid_sum, align 8, !tbaa !11
  %93 = getelementptr inbounds double, ptr %92, i64 %72
  %94 = load double, ptr %93, align 8, !tbaa !28
  %95 = fsub double %85, %94
  %96 = tail call double @llvm.fabs.f64(double %95)
  %97 = fdiv double %96, %94
  %98 = load double, ptr @tol, align 8, !tbaa !28
  %99 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, i32 noundef %27, i32 noundef %74, double noundef %85, double noundef %94, double noundef %97, double noundef %98) #22
  br label %100

100:                                              ; preds = %91, %84
  %101 = load ptr, ptr @grid_sum, align 8, !tbaa !11
  %102 = getelementptr inbounds double, ptr %101, i64 %72
  %103 = load double, ptr %102, align 8, !tbaa !28
  %104 = fsub double %85, %103
  %105 = tail call double @llvm.fabs.f64(double %104)
  %106 = fdiv double %105, %103
  %107 = load double, ptr @tol, align 8, !tbaa !28
  %108 = fcmp ogt double %106, %107
  br i1 %108, label %109, label %114

109:                                              ; preds = %100
  %.lcssa4 = phi i32 [ %27, %100 ]
  %.lcssa2 = phi double [ %103, %100 ]
  %.lcssa1 = phi double [ %85, %100 ]
  %.lcssa = phi i32 [ %74, %100 ]
  %110 = load i32, ptr @my_pe, align 4, !tbaa !7
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %112, label %172

112:                                              ; preds = %109
  %113 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, i32 noundef %.lcssa4, double noundef %.lcssa1, double noundef %.lcssa2, i32 noundef %.lcssa) #22
  br label %172

114:                                              ; preds = %100
  store double %85, ptr %102, align 8, !tbaa !28
  br label %115

115:                                              ; preds = %114, %81, %71
  %116 = tail call double @timer() #24
  %117 = fsub double %116, %75
  %118 = load double, ptr @timer_cs_all, align 8, !tbaa !28
  %119 = fadd double %118, %117
  store double %119, ptr @timer_cs_all, align 8, !tbaa !28
  %120 = add nsw i64 %72, 1
  %121 = icmp slt i64 %120, %70
  br i1 %121, label %71, label %122, !llvm.loop !145

122:                                              ; preds = %115, %53
  %123 = phi double [ %62, %53 ], [ %116, %115 ]
  %124 = load i32, ptr @comm_vars, align 4, !tbaa !7
  %125 = add nsw i32 %124, %56
  %126 = load i32, ptr @num_vars, align 4, !tbaa !7
  %127 = icmp slt i32 %125, %126
  br i1 %127, label %53, label %128, !llvm.loop !146

128:                                              ; preds = %122
  %.lcssa3 = phi double [ %123, %122 ]
  %129 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  br label %130

130:                                              ; preds = %128, %48
  %131 = phi i32 [ %33, %48 ], [ %129, %128 ]
  %132 = phi double [ %34, %48 ], [ %.lcssa3, %128 ]
  %133 = add nuw nsw i32 %36, 1
  %134 = add nsw i32 %35, 1
  %135 = icmp slt i32 %133, %131
  br i1 %135, label %32, label %136, !llvm.loop !147

136:                                              ; preds = %130, %26
  %137 = phi i32 [ %29, %26 ], [ %134, %130 ]
  %138 = phi double [ %28, %26 ], [ %132, %130 ]
  %139 = load i32, ptr @num_refine, align 4, !tbaa !7
  %140 = icmp eq i32 %139, 0
  %141 = load i32, ptr @uniform_refine, align 4
  %142 = icmp ne i32 %141, 0
  %143 = select i1 %140, i1 true, i1 %142
  br i1 %143, label %149, label %144

144:                                              ; preds = %136
  tail call void @move() #24
  %145 = load i32, ptr @refine_freq, align 4, !tbaa !7
  %146 = srem i32 %27, %145
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  tail call void @refine(i32 noundef %27) #24
  br label %149

149:                                              ; preds = %148, %144, %136
  %150 = tail call double @timer() #24
  %151 = fsub double %150, %138
  %152 = load double, ptr @timer_refine_all, align 8, !tbaa !28
  %153 = fadd double %152, %151
  store double %153, ptr @timer_refine_all, align 8, !tbaa !28
  %154 = tail call double @timer() #24
  %155 = load i32, ptr @plot_freq, align 4, !tbaa !7
  %156 = icmp eq i32 %155, 0
  br i1 %156, label %161, label %157

157:                                              ; preds = %149
  %158 = srem i32 %27, %155
  %159 = icmp eq i32 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %157
  tail call void @plot(i32 noundef %27) #24
  br label %161

161:                                              ; preds = %160, %157, %149
  %162 = tail call double @timer() #24
  %163 = fsub double %162, %154
  %164 = load double, ptr @timer_plot, align 8, !tbaa !28
  %165 = fadd double %164, %163
  store double %165, ptr @timer_plot, align 8, !tbaa !28
  %166 = add nuw nsw i32 %27, 1
  %167 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %168 = icmp slt i32 %27, %167
  br i1 %168, label %26, label %169, !llvm.loop !148

169:                                              ; preds = %161, %18
  %170 = tail call double @timer() #24
  %171 = fsub double %170, %3
  store double %171, ptr @timer_all, align 8, !tbaa !28
  br label %172

172:                                              ; preds = %169, %112, %109
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @glibc_compat_rand() #7 {
  %1 = load i32, ptr @next, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 3
  %3 = select i1 %2, i32 341, i32 -3
  %4 = add nsw i32 %3, %1
  %5 = icmp slt i32 %1, 31
  %6 = select i1 %5, i32 313, i32 -31
  %7 = add nsw i32 %6, %1
  %8 = sext i32 %4 to i64
  %9 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %8
  %10 = load i32, ptr %9, align 4, !tbaa !7
  %11 = sext i32 %7 to i64
  %12 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = add i32 %13, %10
  %15 = sext i32 %1 to i64
  %16 = getelementptr inbounds [344 x i32], ptr @table, i64 0, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !7
  %17 = lshr i32 %14, 1
  %18 = add nsw i32 %1, 1
  %19 = icmp sgt i32 %1, 342
  %20 = select i1 %19, i32 0, i32 %18
  store i32 %20, ptr @next, align 4
  ret i32 %17
}

; Function Attrs: nounwind optsize uwtable
define internal void @init() #0 {
  %1 = load i32, ptr @error_tol, align 4, !tbaa !7
  %2 = sub nsw i32 0, %1
  %3 = sitofp i32 %2 to double
  %4 = tail call double @pow(double noundef 1.000000e+01, double noundef %3) #24
  store double %4, ptr @tol, align 8, !tbaa !28
  %5 = load ptr, ptr @p8, align 8, !tbaa !11
  store i32 1, ptr %5, align 4, !tbaa !7
  %6 = load ptr, ptr @p2, align 8, !tbaa !11
  store i32 1, ptr %6, align 4, !tbaa !7
  %7 = load i32, ptr @num_refine, align 4, !tbaa !7
  %8 = icmp slt i32 %7, 0
  %9 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  br i1 %8, label %25, label %10

10:                                               ; preds = %10, %0
  %11 = phi i64 [ %15, %10 ], [ 0, %0 ]
  %12 = getelementptr inbounds i32, ptr %5, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = shl nsw i32 %13, 3
  %15 = add nuw nsw i64 %11, 1
  %16 = getelementptr inbounds i32, ptr %5, i64 %15
  store i32 %14, ptr %16, align 4, !tbaa !7
  %17 = getelementptr inbounds i32, ptr %6, i64 %11
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = shl nsw i32 %18, 1
  %20 = getelementptr inbounds i32, ptr %6, i64 %15
  store i32 %19, ptr %20, align 4, !tbaa !7
  %21 = getelementptr inbounds i32, ptr %9, i64 %11
  store i32 0, ptr %21, align 4, !tbaa !7
  %22 = load i32, ptr @num_refine, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = icmp slt i64 %11, %23
  br i1 %24, label %10, label %25, !llvm.loop !149

25:                                               ; preds = %10, %0
  %26 = phi i32 [ %7, %0 ], [ %22, %10 ]
  %27 = add nsw i32 %26, 1
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, ptr %9, i64 %28
  store i32 0, ptr %29, align 4, !tbaa !7
  %30 = load ptr, ptr @block_start, align 8, !tbaa !11
  store i32 0, ptr %30, align 4, !tbaa !7
  %31 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %32 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %33 = mul nsw i32 %32, %31
  %34 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %35 = mul nsw i32 %33, %34
  store i32 %35, ptr @global_max_b, align 4, !tbaa !7
  store i32 %35, ptr @local_max_b, align 4, !tbaa !7
  %36 = load i32, ptr @num_refine, align 4, !tbaa !7
  %37 = icmp slt i32 %36, 1
  br i1 %37, label %62, label %38

38:                                               ; preds = %25
  %39 = load i32, ptr @num_pes, align 4, !tbaa !7
  %40 = mul nsw i32 %39, %35
  %41 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 1, %38 ], [ %52, %42 ]
  %44 = phi i32 [ %40, %38 ], [ %50, %42 ]
  %45 = add nsw i64 %43, -1
  %46 = getelementptr inbounds i32, ptr %30, i64 %45
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = add nsw i32 %47, %44
  %49 = getelementptr inbounds i32, ptr %30, i64 %43
  store i32 %48, ptr %49, align 4, !tbaa !7
  %50 = shl nsw i32 %44, 3
  %51 = getelementptr inbounds i32, ptr %41, i64 %43
  store i32 0, ptr %51, align 4, !tbaa !7
  %52 = add nuw nsw i64 %43, 1
  %53 = load i32, ptr @num_refine, align 4, !tbaa !7
  %54 = sext i32 %53 to i64
  %55 = icmp slt i64 %43, %54
  br i1 %55, label %42, label %56, !llvm.loop !150

56:                                               ; preds = %42
  %.lcssa10 = phi i32 [ %53, %42 ]
  %57 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %58 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %59 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %60 = mul nsw i32 %58, %57
  %61 = mul nsw i32 %60, %59
  br label %62

62:                                               ; preds = %56, %25
  %63 = phi i32 [ %61, %56 ], [ %35, %25 ]
  %64 = phi i32 [ %59, %56 ], [ %34, %25 ]
  %65 = phi i32 [ %58, %56 ], [ %32, %25 ]
  %66 = phi i32 [ %57, %56 ], [ %31, %25 ]
  %67 = phi i32 [ %.lcssa10, %56 ], [ %36, %25 ]
  %68 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %69 = sdiv i32 %68, 2
  store i32 %69, ptr @x_block_half, align 4, !tbaa !7
  %70 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %71 = sdiv i32 %70, 2
  store i32 %71, ptr @y_block_half, align 4, !tbaa !7
  %72 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %73 = sdiv i32 %72, 2
  store i32 %73, ptr @z_block_half, align 4, !tbaa !7
  store i32 %63, ptr @max_active_block, align 4, !tbaa !7
  store i32 %63, ptr @num_active, align 4, !tbaa !7
  %74 = load i32, ptr @num_pes, align 4, !tbaa !7
  %75 = mul nsw i32 %74, %63
  store i32 %75, ptr @global_active, align 4, !tbaa !7
  store i32 0, ptr @max_active_parent, align 4, !tbaa !7
  store i32 0, ptr @num_parents, align 4, !tbaa !7
  %76 = add nsw i32 %67, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i32, ptr %6, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = load i32, ptr @npx, align 4, !tbaa !7
  %81 = mul i32 %79, %66
  %82 = mul i32 %81, %80
  store i32 %82, ptr @mesh_size, align 4, !tbaa !7
  %83 = load i32, ptr @npy, align 4, !tbaa !7
  %84 = mul i32 %79, %65
  %85 = mul i32 %84, %83
  store i32 %85, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %86 = load i32, ptr @npz, align 4, !tbaa !7
  %87 = mul i32 %79, %64
  %88 = mul i32 %87, %86
  store i32 %88, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %89 = icmp sgt i32 %64, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %62
  %91 = sdiv i32 %79, 2
  br label %92

92:                                               ; preds = %285, %90
  %93 = phi i32 [ %64, %90 ], [ %286, %285 ]
  %94 = phi i32 [ %65, %90 ], [ %287, %285 ]
  %95 = phi i32 [ %66, %90 ], [ %288, %285 ]
  %96 = phi i32 [ %65, %90 ], [ %289, %285 ]
  %97 = phi i32 [ 0, %90 ], [ %291, %285 ]
  %98 = phi i32 [ 0, %90 ], [ %292, %285 ]
  %99 = phi i32 [ 0, %90 ], [ %290, %285 ]
  %100 = icmp sgt i32 %96, 0
  br i1 %100, label %101, label %285

101:                                              ; preds = %92
  %102 = mul nsw i32 %98, %79
  %103 = add nsw i32 %102, %91
  %104 = icmp eq i32 %98, 0
  br label %108

105:                                              ; preds = %285, %62
  %106 = load i32, ptr @num_vars, align 4, !tbaa !7
  %107 = icmp sgt i32 %106, 0
  br i1 %107, label %294, label %304

108:                                              ; preds = %276, %101
  %109 = phi i32 [ %94, %101 ], [ %277, %276 ]
  %110 = phi i32 [ %95, %101 ], [ %278, %276 ]
  %111 = phi i32 [ %97, %101 ], [ %280, %276 ]
  %112 = phi i32 [ 0, %101 ], [ %281, %276 ]
  %113 = phi i32 [ %99, %101 ], [ %279, %276 ]
  %114 = icmp sgt i32 %110, 0
  br i1 %114, label %115, label %276

115:                                              ; preds = %108
  %116 = mul nsw i32 %112, %79
  %117 = add nsw i32 %116, %91
  %118 = icmp eq i32 %112, 0
  %119 = sext i32 %113 to i64
  br label %120

120:                                              ; preds = %264, %115
  %121 = phi i64 [ %119, %115 ], [ %268, %264 ]
  %122 = phi i32 [ %111, %115 ], [ %270, %264 ]
  %123 = phi i32 [ 0, %115 ], [ %269, %264 ]
  %124 = load ptr, ptr @blocks, align 8, !tbaa !11
  %125 = getelementptr inbounds %struct.block, ptr %124, i64 %121
  %126 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 1
  store i32 0, ptr %126, align 4, !tbaa !15
  store i32 %122, ptr %125, align 8, !tbaa !13
  %127 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 4
  store i32 -1, ptr %127, align 8, !tbaa !25
  %128 = mul nsw i32 %123, %79
  %129 = add nsw i32 %128, %91
  %130 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 10
  store i32 %129, ptr %130, align 4, !tbaa !7
  %131 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 10, i64 1
  store i32 %117, ptr %131, align 4, !tbaa !7
  %132 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 10, i64 2
  store i32 %103, ptr %132, align 4, !tbaa !7
  %133 = trunc i64 %121 to i32
  tail call void @add_sorted_list(i32 noundef %133, i32 noundef %122, i32 noundef 0) #24
  %134 = load i32, ptr @num_vars, align 4, !tbaa !7
  %135 = icmp sgt i32 %134, 0
  br i1 %135, label %136, label %203

136:                                              ; preds = %120
  %137 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 11
  %138 = load i32, ptr @x_block_size, align 4, !tbaa !7
  br label %139

139:                                              ; preds = %196, %136
  %140 = phi i32 [ %134, %136 ], [ %197, %196 ]
  %141 = phi i32 [ %138, %136 ], [ %198, %196 ]
  %142 = phi i32 [ %138, %136 ], [ %199, %196 ]
  %143 = phi i64 [ 0, %136 ], [ %200, %196 ]
  %144 = icmp slt i32 %142, 1
  br i1 %144, label %196, label %145

145:                                              ; preds = %139
  %146 = load i32, ptr @y_block_size, align 4, !tbaa !7
  br label %147

147:                                              ; preds = %187, %145
  %148 = phi i32 [ %141, %145 ], [ %188, %187 ]
  %149 = phi i32 [ %146, %145 ], [ %189, %187 ]
  %150 = phi i32 [ %146, %145 ], [ %190, %187 ]
  %151 = phi i64 [ 1, %145 ], [ %191, %187 ]
  %152 = icmp slt i32 %150, 1
  br i1 %152, label %187, label %153

153:                                              ; preds = %147
  %154 = load i32, ptr @z_block_size, align 4, !tbaa !7
  br label %155

155:                                              ; preds = %179, %153
  %156 = phi i32 [ %149, %153 ], [ %180, %179 ]
  %157 = phi i32 [ %154, %153 ], [ %181, %179 ]
  %158 = phi i64 [ 1, %153 ], [ %182, %179 ]
  %159 = icmp slt i32 %157, 1
  br i1 %159, label %179, label %160

160:                                              ; preds = %160, %155
  %161 = phi i64 [ %173, %160 ], [ 1, %155 ]
  %162 = tail call i32 @glibc_compat_rand() #24
  %163 = sitofp i32 %162 to double
  %164 = fdiv double %163, 0x41DFFFFFFFC00000
  %165 = load ptr, ptr %137, align 8, !tbaa !27
  %166 = getelementptr inbounds ptr, ptr %165, i64 %143
  %167 = load ptr, ptr %166, align 8, !tbaa !11
  %168 = getelementptr inbounds ptr, ptr %167, i64 %151
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = getelementptr inbounds ptr, ptr %169, i64 %158
  %171 = load ptr, ptr %170, align 8, !tbaa !11
  %172 = getelementptr inbounds double, ptr %171, i64 %161
  store double %164, ptr %172, align 8, !tbaa !28
  %173 = add nuw nsw i64 %161, 1
  %174 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %175 = sext i32 %174 to i64
  %176 = icmp slt i64 %161, %175
  br i1 %176, label %160, label %177, !llvm.loop !151

177:                                              ; preds = %160
  %.lcssa = phi i32 [ %174, %160 ]
  %178 = load i32, ptr @y_block_size, align 4, !tbaa !7
  br label %179

179:                                              ; preds = %177, %155
  %180 = phi i32 [ %178, %177 ], [ %156, %155 ]
  %181 = phi i32 [ %.lcssa, %177 ], [ %157, %155 ]
  %182 = add nuw nsw i64 %158, 1
  %183 = sext i32 %180 to i64
  %184 = icmp slt i64 %158, %183
  br i1 %184, label %155, label %185, !llvm.loop !152

185:                                              ; preds = %179
  %.lcssa1 = phi i32 [ %180, %179 ]
  %186 = load i32, ptr @x_block_size, align 4, !tbaa !7
  br label %187

187:                                              ; preds = %185, %147
  %188 = phi i32 [ %186, %185 ], [ %148, %147 ]
  %189 = phi i32 [ %.lcssa1, %185 ], [ %149, %147 ]
  %190 = phi i32 [ %.lcssa1, %185 ], [ %150, %147 ]
  %191 = add nuw nsw i64 %151, 1
  %192 = sext i32 %188 to i64
  %193 = icmp slt i64 %151, %192
  br i1 %193, label %147, label %194, !llvm.loop !153

194:                                              ; preds = %187
  %.lcssa2 = phi i32 [ %188, %187 ]
  %195 = load i32, ptr @num_vars, align 4, !tbaa !7
  br label %196

196:                                              ; preds = %194, %139
  %197 = phi i32 [ %195, %194 ], [ %140, %139 ]
  %198 = phi i32 [ %.lcssa2, %194 ], [ %141, %139 ]
  %199 = phi i32 [ %.lcssa2, %194 ], [ %142, %139 ]
  %200 = add nuw nsw i64 %143, 1
  %201 = sext i32 %197 to i64
  %202 = icmp slt i64 %200, %201
  br i1 %202, label %139, label %203, !llvm.loop !154

203:                                              ; preds = %196, %120
  %204 = icmp eq i32 %123, 0
  %205 = trunc i64 %121 to i32
  %206 = add i32 %205, -1
  %207 = select i1 %204, i32 -2, i32 0
  %208 = select i1 %204, i32 0, i32 %206
  %209 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8
  store i32 %207, ptr %209, align 4
  %210 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9
  store i32 %208, ptr %210, align 4
  %211 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7
  store i32 0, ptr %211, align 4, !tbaa !7
  %212 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %213 = add nsw i32 %212, -1
  %214 = icmp eq i32 %123, %213
  %215 = trunc i64 %121 to i32
  %216 = add i32 %215, 1
  %217 = select i1 %214, i32 -2, i32 0
  %218 = select i1 %214, i32 0, i32 %216
  %219 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8, i64 1
  store i32 %217, ptr %219, align 4
  %220 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9, i64 1
  store i32 %218, ptr %220, align 4
  %221 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7, i64 1
  store i32 0, ptr %221, align 4, !tbaa !7
  %222 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8, i64 2
  br i1 %118, label %223, label %224

223:                                              ; preds = %203
  store i32 -2, ptr %222, align 4, !tbaa !7
  br label %227

224:                                              ; preds = %203
  store i32 0, ptr %222, align 4, !tbaa !7
  %225 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %226 = sub nsw i32 %133, %225
  br label %227

227:                                              ; preds = %224, %223
  %228 = phi i32 [ 0, %223 ], [ %226, %224 ]
  %229 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9, i64 2
  store i32 %228, ptr %229, align 4
  %230 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7, i64 2
  store i32 0, ptr %230, align 4, !tbaa !7
  %231 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %232 = add nsw i32 %231, -1
  %233 = icmp eq i32 %112, %232
  %234 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8, i64 3
  br i1 %233, label %235, label %236

235:                                              ; preds = %227
  store i32 -2, ptr %234, align 4, !tbaa !7
  br label %239

236:                                              ; preds = %227
  store i32 0, ptr %234, align 4, !tbaa !7
  %237 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %238 = add nsw i32 %237, %133
  br label %239

239:                                              ; preds = %236, %235
  %240 = phi i32 [ 0, %235 ], [ %238, %236 ]
  %241 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9, i64 3
  store i32 %240, ptr %241, align 4
  %242 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7, i64 3
  store i32 0, ptr %242, align 4, !tbaa !7
  %243 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8, i64 4
  br i1 %104, label %244, label %245

244:                                              ; preds = %239
  store i32 -2, ptr %243, align 4, !tbaa !7
  br label %250

245:                                              ; preds = %239
  store i32 0, ptr %243, align 4, !tbaa !7
  %246 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %247 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %248 = mul nsw i32 %247, %246
  %249 = sub nsw i32 %133, %248
  br label %250

250:                                              ; preds = %245, %244
  %251 = phi i32 [ 0, %244 ], [ %249, %245 ]
  %252 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9, i64 4
  store i32 %251, ptr %252, align 4
  %253 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7, i64 4
  store i32 0, ptr %253, align 4, !tbaa !7
  %254 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %255 = add nsw i32 %254, -1
  %256 = icmp eq i32 %98, %255
  %257 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 8, i64 5
  br i1 %256, label %258, label %259

258:                                              ; preds = %250
  store i32 -2, ptr %257, align 4, !tbaa !7
  br label %264

259:                                              ; preds = %250
  store i32 0, ptr %257, align 4, !tbaa !7
  %260 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %261 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %262 = mul nsw i32 %261, %260
  %263 = add nsw i32 %262, %133
  br label %264

264:                                              ; preds = %259, %258
  %265 = phi i32 [ 0, %258 ], [ %263, %259 ]
  %266 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 9, i64 5
  store i32 %265, ptr %266, align 4
  %267 = getelementptr inbounds %struct.block, ptr %124, i64 %121, i32 7, i64 5
  store i32 0, ptr %267, align 4, !tbaa !7
  %268 = add nsw i64 %121, 1
  %269 = add nuw nsw i32 %123, 1
  %270 = add nsw i32 %122, 1
  %271 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %272 = icmp slt i32 %269, %271
  br i1 %272, label %120, label %273, !llvm.loop !155

273:                                              ; preds = %264
  %.lcssa5 = phi i64 [ %268, %264 ]
  %.lcssa4 = phi i32 [ %270, %264 ]
  %.lcssa3 = phi i32 [ %271, %264 ]
  %274 = trunc i64 %.lcssa5 to i32
  %275 = load i32, ptr @init_block_y, align 4, !tbaa !7
  br label %276

276:                                              ; preds = %273, %108
  %277 = phi i32 [ %109, %108 ], [ %275, %273 ]
  %278 = phi i32 [ %110, %108 ], [ %.lcssa3, %273 ]
  %279 = phi i32 [ %113, %108 ], [ %274, %273 ]
  %280 = phi i32 [ %111, %108 ], [ %.lcssa4, %273 ]
  %281 = add nuw nsw i32 %112, 1
  %282 = icmp slt i32 %281, %277
  br i1 %282, label %108, label %283, !llvm.loop !156

283:                                              ; preds = %276
  %.lcssa9 = phi i32 [ %277, %276 ]
  %.lcssa8 = phi i32 [ %278, %276 ]
  %.lcssa7 = phi i32 [ %279, %276 ]
  %.lcssa6 = phi i32 [ %280, %276 ]
  %284 = load i32, ptr @init_block_z, align 4, !tbaa !7
  br label %285

285:                                              ; preds = %283, %92
  %286 = phi i32 [ %93, %92 ], [ %284, %283 ]
  %287 = phi i32 [ %94, %92 ], [ %.lcssa9, %283 ]
  %288 = phi i32 [ %95, %92 ], [ %.lcssa8, %283 ]
  %289 = phi i32 [ %96, %92 ], [ %.lcssa9, %283 ]
  %290 = phi i32 [ %99, %92 ], [ %.lcssa7, %283 ]
  %291 = phi i32 [ %97, %92 ], [ %.lcssa6, %283 ]
  %292 = add nuw nsw i32 %98, 1
  %293 = icmp slt i32 %292, %286
  br i1 %293, label %92, label %105, !llvm.loop !157

294:                                              ; preds = %294, %105
  %295 = phi i64 [ %300, %294 ], [ 0, %105 ]
  %296 = trunc i64 %295 to i32
  %297 = tail call double @check_sum(i32 noundef %296) #24
  %298 = load ptr, ptr @grid_sum, align 8, !tbaa !11
  %299 = getelementptr inbounds double, ptr %298, i64 %295
  store double %297, ptr %299, align 8, !tbaa !28
  %300 = add nuw nsw i64 %295, 1
  %301 = load i32, ptr @num_vars, align 4, !tbaa !7
  %302 = sext i32 %301 to i64
  %303 = icmp slt i64 %300, %302
  br i1 %303, label %294, label %304, !llvm.loop !158

304:                                              ; preds = %294, %105
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #9 {
  store i32 500, ptr @max_num_blocks, align 4, !tbaa !7
  store i32 0, ptr @target_active, align 4, !tbaa !7
  store i32 0, ptr @target_max, align 4, !tbaa !7
  store i32 0, ptr @target_min, align 4, !tbaa !7
  store i32 5, ptr @num_refine, align 4, !tbaa !7
  store i32 0, ptr @uniform_refine, align 4, !tbaa !7
  store i32 10, ptr @x_block_size, align 4, !tbaa !7
  store i32 10, ptr @y_block_size, align 4, !tbaa !7
  store i32 10, ptr @z_block_size, align 4, !tbaa !7
  store i32 40, ptr @num_vars, align 4, !tbaa !7
  store i32 0, ptr @comm_vars, align 4, !tbaa !7
  store i32 1, ptr @init_block_x, align 4, !tbaa !7
  store i32 1, ptr @init_block_y, align 4, !tbaa !7
  store i32 1, ptr @init_block_z, align 4, !tbaa !7
  store i32 1, ptr @reorder, align 4, !tbaa !7
  store i32 1, ptr @npx, align 4, !tbaa !7
  store i32 1, ptr @npy, align 4, !tbaa !7
  store i32 1, ptr @npz, align 4, !tbaa !7
  store i32 0, ptr @inbalance, align 4, !tbaa !7
  store i32 5, ptr @refine_freq, align 4, !tbaa !7
  store i32 0, ptr @report_diffusion, align 4, !tbaa !7
  store i32 8, ptr @error_tol, align 4, !tbaa !7
  store i32 20, ptr @num_tsteps, align 4, !tbaa !7
  store i32 20, ptr @stages_per_ts, align 4, !tbaa !7
  store i32 5, ptr @checksum_freq, align 4, !tbaa !7
  store i32 7, ptr @stencil, align 4, !tbaa !7
  store i32 12, ptr @report_perf, align 4, !tbaa !7
  store i32 0, ptr @plot_freq, align 4, !tbaa !7
  store i32 0, ptr @num_objects, align 4, !tbaa !7
  store i32 1, ptr @lb_opt, align 4, !tbaa !7
  store i32 0, ptr @block_change, align 4, !tbaa !7
  store i32 0, ptr @code, align 4, !tbaa !7
  store i32 0, ptr @permute, align 4, !tbaa !7
  store i32 1, ptr @nonblocking, align 4, !tbaa !7
  store i32 0, ptr @refine_ghost, align 4, !tbaa !7
  store i32 0, ptr @my_pe, align 4, !tbaa !7
  store i32 1, ptr @num_pes, align 4, !tbaa !7
  store i32 0, ptr @counter_malloc, align 4, !tbaa !7
  store double 0.000000e+00, ptr @size_malloc, align 8, !tbaa !28
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %361

4:                                                ; preds = %356, %2
  %5 = phi i32 [ %359, %356 ], [ 1, %2 ]
  %6 = phi i32 [ %357, %356 ], [ undef, %2 ]
  %7 = sext i32 %5 to i64
  %8 = getelementptr inbounds ptr, ptr %1, i64 %7
  %9 = load ptr, ptr %8, align 8, !tbaa !11
  %10 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(13) @.str.11) #25
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %18

12:                                               ; preds = %4
  %13 = add nsw i32 %5, 1
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds ptr, ptr %1, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !11
  %17 = tail call i32 @atoi(ptr nocapture noundef %16) #25
  store i32 %17, ptr @max_num_blocks, align 4, !tbaa !7
  br label %356

18:                                               ; preds = %4
  %19 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(16) @.str.1.12) #25
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %18
  %22 = add nsw i32 %5, 1
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds ptr, ptr %1, i64 %23
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  %26 = tail call i32 @atoi(ptr nocapture noundef %25) #25
  store i32 %26, ptr @target_active, align 4, !tbaa !7
  br label %356

27:                                               ; preds = %18
  %28 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(13) @.str.2.13) #25
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %36

30:                                               ; preds = %27
  %31 = add nsw i32 %5, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds ptr, ptr %1, i64 %32
  %34 = load ptr, ptr %33, align 8, !tbaa !11
  %35 = tail call i32 @atoi(ptr nocapture noundef %34) #25
  store i32 %35, ptr @target_max, align 4, !tbaa !7
  br label %356

36:                                               ; preds = %27
  %37 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(13) @.str.3.14) #25
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %45

39:                                               ; preds = %36
  %40 = add nsw i32 %5, 1
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds ptr, ptr %1, i64 %41
  %43 = load ptr, ptr %42, align 8, !tbaa !11
  %44 = tail call i32 @atoi(ptr nocapture noundef %43) #25
  store i32 %44, ptr @target_min, align 4, !tbaa !7
  br label %356

45:                                               ; preds = %36
  %46 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(13) @.str.4.15) #25
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %45
  %49 = add nsw i32 %5, 1
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds ptr, ptr %1, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !11
  %53 = tail call i32 @atoi(ptr nocapture noundef %52) #25
  store i32 %53, ptr @num_refine, align 4, !tbaa !7
  br label %356

54:                                               ; preds = %45
  %55 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(15) @.str.5.16) #25
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %54
  %58 = add nsw i32 %5, 1
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds ptr, ptr %1, i64 %59
  %61 = load ptr, ptr %60, align 8, !tbaa !11
  %62 = tail call i32 @atoi(ptr nocapture noundef %61) #25
  store i32 %62, ptr @block_change, align 4, !tbaa !7
  br label %356

63:                                               ; preds = %54
  %64 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(17) @.str.6.17) #25
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %72

66:                                               ; preds = %63
  %67 = add nsw i32 %5, 1
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds ptr, ptr %1, i64 %68
  %70 = load ptr, ptr %69, align 8, !tbaa !11
  %71 = tail call i32 @atoi(ptr nocapture noundef %70) #25
  store i32 %71, ptr @uniform_refine, align 4, !tbaa !7
  br label %356

72:                                               ; preds = %63
  %73 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.7.18) #25
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = add nsw i32 %5, 1
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds ptr, ptr %1, i64 %77
  %79 = load ptr, ptr %78, align 8, !tbaa !11
  %80 = tail call i32 @atoi(ptr nocapture noundef %79) #25
  store i32 %80, ptr @x_block_size, align 4, !tbaa !7
  br label %356

81:                                               ; preds = %72
  %82 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.8.19) #25
  %83 = icmp eq i32 %82, 0
  br i1 %83, label %84, label %90

84:                                               ; preds = %81
  %85 = add nsw i32 %5, 1
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds ptr, ptr %1, i64 %86
  %88 = load ptr, ptr %87, align 8, !tbaa !11
  %89 = tail call i32 @atoi(ptr nocapture noundef %88) #25
  store i32 %89, ptr @y_block_size, align 4, !tbaa !7
  br label %356

90:                                               ; preds = %81
  %91 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(5) @.str.9) #25
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %90
  %94 = add nsw i32 %5, 1
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds ptr, ptr %1, i64 %95
  %97 = load ptr, ptr %96, align 8, !tbaa !11
  %98 = tail call i32 @atoi(ptr nocapture noundef %97) #25
  store i32 %98, ptr @z_block_size, align 4, !tbaa !7
  br label %356

99:                                               ; preds = %90
  %100 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(11) @.str.10) #25
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %99
  %103 = add nsw i32 %5, 1
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds ptr, ptr %1, i64 %104
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = tail call i32 @atoi(ptr nocapture noundef %106) #25
  store i32 %107, ptr @num_vars, align 4, !tbaa !7
  br label %356

108:                                              ; preds = %99
  %109 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(12) @.str.11.20) #25
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %117

111:                                              ; preds = %108
  %112 = add nsw i32 %5, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %1, i64 %113
  %115 = load ptr, ptr %114, align 8, !tbaa !11
  %116 = tail call i32 @atoi(ptr nocapture noundef %115) #25
  store i32 %116, ptr @comm_vars, align 4, !tbaa !7
  br label %356

117:                                              ; preds = %108
  %118 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.12) #25
  %119 = icmp eq i32 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %117
  %121 = add nsw i32 %5, 1
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds ptr, ptr %1, i64 %122
  %124 = load ptr, ptr %123, align 8, !tbaa !11
  %125 = tail call i32 @atoi(ptr nocapture noundef %124) #25
  store i32 %125, ptr @init_block_x, align 4, !tbaa !7
  br label %356

126:                                              ; preds = %117
  %127 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.13) #25
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %135

129:                                              ; preds = %126
  %130 = add nsw i32 %5, 1
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds ptr, ptr %1, i64 %131
  %133 = load ptr, ptr %132, align 8, !tbaa !11
  %134 = tail call i32 @atoi(ptr nocapture noundef %133) #25
  store i32 %134, ptr @init_block_y, align 4, !tbaa !7
  br label %356

135:                                              ; preds = %126
  %136 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.14) #25
  %137 = icmp eq i32 %136, 0
  br i1 %137, label %138, label %144

138:                                              ; preds = %135
  %139 = add nsw i32 %5, 1
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds ptr, ptr %1, i64 %140
  %142 = load ptr, ptr %141, align 8, !tbaa !11
  %143 = tail call i32 @atoi(ptr nocapture noundef %142) #25
  store i32 %143, ptr @init_block_z, align 4, !tbaa !7
  br label %356

144:                                              ; preds = %135
  %145 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(14) @.str.15) #25
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %147, label %153

147:                                              ; preds = %144
  %148 = add nsw i32 %5, 1
  %149 = sext i32 %148 to i64
  %150 = getelementptr inbounds ptr, ptr %1, i64 %149
  %151 = load ptr, ptr %150, align 8, !tbaa !11
  %152 = tail call i32 @atoi(ptr nocapture noundef %151) #25
  store i32 %152, ptr @refine_freq, align 4, !tbaa !7
  br label %356

153:                                              ; preds = %144
  %154 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(19) @.str.16) #25
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %156, label %162

156:                                              ; preds = %153
  %157 = add nsw i32 %5, 1
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds ptr, ptr %1, i64 %158
  %160 = load ptr, ptr %159, align 8, !tbaa !11
  %161 = tail call i32 @atoi(ptr nocapture noundef %160) #25
  store i32 %161, ptr @report_diffusion, align 4, !tbaa !7
  br label %356

162:                                              ; preds = %153
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(12) @.str.17) #25
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %171

165:                                              ; preds = %162
  %166 = add nsw i32 %5, 1
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds ptr, ptr %1, i64 %167
  %169 = load ptr, ptr %168, align 8, !tbaa !11
  %170 = tail call i32 @atoi(ptr nocapture noundef %169) #25
  store i32 %170, ptr @error_tol, align 4, !tbaa !7
  br label %356

171:                                              ; preds = %162
  %172 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(13) @.str.18) #25
  %173 = icmp eq i32 %172, 0
  br i1 %173, label %174, label %180

174:                                              ; preds = %171
  %175 = add nsw i32 %5, 1
  %176 = sext i32 %175 to i64
  %177 = getelementptr inbounds ptr, ptr %1, i64 %176
  %178 = load ptr, ptr %177, align 8, !tbaa !11
  %179 = tail call i32 @atoi(ptr nocapture noundef %178) #25
  store i32 %179, ptr @num_tsteps, align 4, !tbaa !7
  br label %356

180:                                              ; preds = %171
  %181 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(16) @.str.19) #25
  %182 = icmp eq i32 %181, 0
  br i1 %182, label %183, label %189

183:                                              ; preds = %180
  %184 = add nsw i32 %5, 1
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds ptr, ptr %1, i64 %185
  %187 = load ptr, ptr %186, align 8, !tbaa !11
  %188 = tail call i32 @atoi(ptr nocapture noundef %187) #25
  store i32 %188, ptr @stages_per_ts, align 4, !tbaa !7
  br label %356

189:                                              ; preds = %180
  %190 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(16) @.str.20) #25
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %192, label %198

192:                                              ; preds = %189
  %193 = add nsw i32 %5, 1
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds ptr, ptr %1, i64 %194
  %196 = load ptr, ptr %195, align 8, !tbaa !11
  %197 = tail call i32 @atoi(ptr nocapture noundef %196) #25
  store i32 %197, ptr @checksum_freq, align 4, !tbaa !7
  br label %356

198:                                              ; preds = %189
  %199 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(10) @.str.21) #25
  %200 = icmp eq i32 %199, 0
  br i1 %200, label %201, label %207

201:                                              ; preds = %198
  %202 = add nsw i32 %5, 1
  %203 = sext i32 %202 to i64
  %204 = getelementptr inbounds ptr, ptr %1, i64 %203
  %205 = load ptr, ptr %204, align 8, !tbaa !11
  %206 = tail call i32 @atoi(ptr nocapture noundef %205) #25
  store i32 %206, ptr @stencil, align 4, !tbaa !7
  br label %356

207:                                              ; preds = %198
  %208 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(10) @.str.22) #25
  %209 = icmp eq i32 %208, 0
  br i1 %209, label %210, label %211

210:                                              ; preds = %207
  store i32 1, ptr @permute, align 4, !tbaa !7
  br label %356

211:                                              ; preds = %207
  %212 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(14) @.str.23) #25
  %213 = icmp eq i32 %212, 0
  br i1 %213, label %214, label %220

214:                                              ; preds = %211
  %215 = add nsw i32 %5, 1
  %216 = sext i32 %215 to i64
  %217 = getelementptr inbounds ptr, ptr %1, i64 %216
  %218 = load ptr, ptr %217, align 8, !tbaa !11
  %219 = tail call i32 @atoi(ptr nocapture noundef %218) #25
  store i32 %219, ptr @report_perf, align 4, !tbaa !7
  br label %356

220:                                              ; preds = %211
  %221 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(12) @.str.24) #25
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %229

223:                                              ; preds = %220
  %224 = add nsw i32 %5, 1
  %225 = sext i32 %224 to i64
  %226 = getelementptr inbounds ptr, ptr %1, i64 %225
  %227 = load ptr, ptr %226, align 8, !tbaa !11
  %228 = tail call i32 @atoi(ptr nocapture noundef %227) #25
  store i32 %228, ptr @plot_freq, align 4, !tbaa !7
  br label %356

229:                                              ; preds = %220
  %230 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(7) @.str.25) #25
  %231 = icmp eq i32 %230, 0
  br i1 %231, label %232, label %238

232:                                              ; preds = %229
  %233 = add nsw i32 %5, 1
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds ptr, ptr %1, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !11
  %237 = tail call i32 @atoi(ptr nocapture noundef %236) #25
  store i32 %237, ptr @code, align 4, !tbaa !7
  br label %356

238:                                              ; preds = %229
  %239 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(15) @.str.26) #25
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %241, label %242

241:                                              ; preds = %238
  store i32 1, ptr @refine_ghost, align 4, !tbaa !7
  br label %356

242:                                              ; preds = %238
  %243 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(14) @.str.27) #25
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %254

245:                                              ; preds = %242
  %246 = add nsw i32 %5, 1
  %247 = sext i32 %246 to i64
  %248 = getelementptr inbounds ptr, ptr %1, i64 %247
  %249 = load ptr, ptr %248, align 8, !tbaa !11
  %250 = tail call i32 @atoi(ptr nocapture noundef %249) #25
  store i32 %250, ptr @num_objects, align 4, !tbaa !7
  %251 = sext i32 %250 to i64
  %252 = mul nsw i64 %251, 176
  %253 = tail call ptr @ma_malloc(i64 noundef %252, ptr noundef nonnull @.str.28, i32 noundef 107) #24
  store ptr %253, ptr @objects, align 8, !tbaa !11
  br label %356

254:                                              ; preds = %242
  %255 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %9, ptr noundef nonnull dereferenceable(9) @.str.29) #25
  %256 = icmp eq i32 %255, 0
  br i1 %256, label %257, label %350

257:                                              ; preds = %254
  %258 = load i32, ptr @num_objects, align 4, !tbaa !7
  %259 = icmp slt i32 %6, %258
  br i1 %259, label %262, label %260

260:                                              ; preds = %257
  %261 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.21)
  tail call void @exit(i32 noundef -1) #23
  unreachable

262:                                              ; preds = %257
  %263 = add nsw i32 %5, 1
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds ptr, ptr %1, i64 %264
  %266 = load ptr, ptr %265, align 8, !tbaa !11
  %267 = tail call i32 @atoi(ptr nocapture noundef %266) #25
  %268 = load ptr, ptr @objects, align 8, !tbaa !11
  %269 = sext i32 %6 to i64
  %270 = getelementptr inbounds %struct.object, ptr %268, i64 %269
  store i32 %267, ptr %270, align 8, !tbaa !159
  %271 = add nsw i32 %5, 2
  %272 = sext i32 %271 to i64
  %273 = getelementptr inbounds ptr, ptr %1, i64 %272
  %274 = load ptr, ptr %273, align 8, !tbaa !11
  %275 = tail call i32 @atoi(ptr nocapture noundef %274) #25
  %276 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 1
  store i32 %275, ptr %276, align 4, !tbaa !161
  %277 = add nsw i32 %5, 3
  %278 = sext i32 %277 to i64
  %279 = getelementptr inbounds ptr, ptr %1, i64 %278
  %280 = load ptr, ptr %279, align 8, !tbaa !11
  %281 = tail call double @atof(ptr noundef %280) #25
  %282 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 2
  store double %281, ptr %282, align 8, !tbaa !28
  %283 = add nsw i32 %5, 4
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds ptr, ptr %1, i64 %284
  %286 = load ptr, ptr %285, align 8, !tbaa !11
  %287 = tail call double @atof(ptr noundef %286) #25
  %288 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 2, i64 1
  store double %287, ptr %288, align 8, !tbaa !28
  %289 = add nsw i32 %5, 5
  %290 = sext i32 %289 to i64
  %291 = getelementptr inbounds ptr, ptr %1, i64 %290
  %292 = load ptr, ptr %291, align 8, !tbaa !11
  %293 = tail call double @atof(ptr noundef %292) #25
  %294 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 2, i64 2
  store double %293, ptr %294, align 8, !tbaa !28
  %295 = add nsw i32 %5, 6
  %296 = sext i32 %295 to i64
  %297 = getelementptr inbounds ptr, ptr %1, i64 %296
  %298 = load ptr, ptr %297, align 8, !tbaa !11
  %299 = tail call double @atof(ptr noundef %298) #25
  %300 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 4
  store double %299, ptr %300, align 8, !tbaa !28
  %301 = add nsw i32 %5, 7
  %302 = sext i32 %301 to i64
  %303 = getelementptr inbounds ptr, ptr %1, i64 %302
  %304 = load ptr, ptr %303, align 8, !tbaa !11
  %305 = tail call double @atof(ptr noundef %304) #25
  %306 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 4, i64 1
  store double %305, ptr %306, align 8, !tbaa !28
  %307 = add nsw i32 %5, 8
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds ptr, ptr %1, i64 %308
  %310 = load ptr, ptr %309, align 8, !tbaa !11
  %311 = tail call double @atof(ptr noundef %310) #25
  %312 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 4, i64 2
  store double %311, ptr %312, align 8, !tbaa !28
  %313 = add nsw i32 %5, 9
  %314 = sext i32 %313 to i64
  %315 = getelementptr inbounds ptr, ptr %1, i64 %314
  %316 = load ptr, ptr %315, align 8, !tbaa !11
  %317 = tail call double @atof(ptr noundef %316) #25
  %318 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 6
  store double %317, ptr %318, align 8, !tbaa !28
  %319 = add nsw i32 %5, 10
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds ptr, ptr %1, i64 %320
  %322 = load ptr, ptr %321, align 8, !tbaa !11
  %323 = tail call double @atof(ptr noundef %322) #25
  %324 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 6, i64 1
  store double %323, ptr %324, align 8, !tbaa !28
  %325 = add nsw i32 %5, 11
  %326 = sext i32 %325 to i64
  %327 = getelementptr inbounds ptr, ptr %1, i64 %326
  %328 = load ptr, ptr %327, align 8, !tbaa !11
  %329 = tail call double @atof(ptr noundef %328) #25
  %330 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 6, i64 2
  store double %329, ptr %330, align 8, !tbaa !28
  %331 = add nsw i32 %5, 12
  %332 = sext i32 %331 to i64
  %333 = getelementptr inbounds ptr, ptr %1, i64 %332
  %334 = load ptr, ptr %333, align 8, !tbaa !11
  %335 = tail call double @atof(ptr noundef %334) #25
  %336 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 8
  store double %335, ptr %336, align 8, !tbaa !28
  %337 = add nsw i32 %5, 13
  %338 = sext i32 %337 to i64
  %339 = getelementptr inbounds ptr, ptr %1, i64 %338
  %340 = load ptr, ptr %339, align 8, !tbaa !11
  %341 = tail call double @atof(ptr noundef %340) #25
  %342 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 8, i64 1
  store double %341, ptr %342, align 8, !tbaa !28
  %343 = add nsw i32 %5, 14
  %344 = sext i32 %343 to i64
  %345 = getelementptr inbounds ptr, ptr %1, i64 %344
  %346 = load ptr, ptr %345, align 8, !tbaa !11
  %347 = tail call double @atof(ptr noundef %346) #25
  %348 = getelementptr inbounds %struct.object, ptr %268, i64 %269, i32 8, i64 2
  store double %347, ptr %348, align 8, !tbaa !28
  %349 = add nsw i32 %6, 1
  br label %356

350:                                              ; preds = %254
  %.lcssa = phi ptr [ %9, %254 ]
  %351 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %.lcssa, ptr noundef nonnull dereferenceable(7) @.str.31) #25
  %352 = icmp eq i32 %351, 0
  br i1 %352, label %353, label %354

353:                                              ; preds = %350
  tail call void @print_help_message() #22
  tail call void @exit(i32 noundef 0) #23
  unreachable

354:                                              ; preds = %350
  %355 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.32, ptr noundef %.lcssa) #22
  tail call void @print_help_message() #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

356:                                              ; preds = %262, %245, %241, %232, %223, %214, %210, %201, %192, %183, %174, %165, %156, %147, %138, %129, %120, %111, %102, %93, %84, %75, %66, %57, %48, %39, %30, %21, %12
  %357 = phi i32 [ %349, %262 ], [ 0, %245 ], [ %6, %241 ], [ %6, %232 ], [ %6, %223 ], [ %6, %214 ], [ %6, %210 ], [ %6, %201 ], [ %6, %192 ], [ %6, %183 ], [ %6, %174 ], [ %6, %165 ], [ %6, %156 ], [ %6, %147 ], [ %6, %138 ], [ %6, %129 ], [ %6, %120 ], [ %6, %111 ], [ %6, %102 ], [ %6, %93 ], [ %6, %84 ], [ %6, %75 ], [ %6, %66 ], [ %6, %57 ], [ %6, %48 ], [ %6, %39 ], [ %6, %30 ], [ %6, %21 ], [ %6, %12 ]
  %358 = phi i32 [ %343, %262 ], [ %246, %245 ], [ %5, %241 ], [ %233, %232 ], [ %224, %223 ], [ %215, %214 ], [ %5, %210 ], [ %202, %201 ], [ %193, %192 ], [ %184, %183 ], [ %175, %174 ], [ %166, %165 ], [ %157, %156 ], [ %148, %147 ], [ %139, %138 ], [ %130, %129 ], [ %121, %120 ], [ %112, %111 ], [ %103, %102 ], [ %94, %93 ], [ %85, %84 ], [ %76, %75 ], [ %67, %66 ], [ %58, %57 ], [ %49, %48 ], [ %40, %39 ], [ %31, %30 ], [ %22, %21 ], [ %13, %12 ]
  %359 = add nsw i32 %358, 1
  %360 = icmp slt i32 %359, %0
  br i1 %360, label %4, label %361, !llvm.loop !162

361:                                              ; preds = %356, %2
  %362 = tail call i32 @check_input() #22, !range !163
  %363 = icmp eq i32 %362, 0
  br i1 %363, label %365, label %364

364:                                              ; preds = %361
  tail call void @exit(i32 noundef -1) #23
  unreachable

365:                                              ; preds = %361
  %366 = load i32, ptr @block_change, align 4, !tbaa !7
  %367 = icmp eq i32 %366, 0
  br i1 %367, label %368, label %370

368:                                              ; preds = %365
  %369 = load i32, ptr @num_refine, align 4, !tbaa !7
  store i32 %369, ptr @block_change, align 4, !tbaa !7
  br label %370

370:                                              ; preds = %368, %365
  %371 = load i32, ptr @num_objects, align 4, !tbaa !7
  %372 = icmp sgt i32 %371, 0
  br i1 %372, label %373, label %394

373:                                              ; preds = %370
  %374 = load ptr, ptr @objects, align 8, !tbaa !11
  %375 = zext i32 %371 to i64
  br label %376

376:                                              ; preds = %391, %373
  %377 = phi i64 [ 0, %373 ], [ %392, %391 ]
  br label %378

378:                                              ; preds = %378, %376
  %379 = phi i64 [ 0, %376 ], [ %389, %378 ]
  %380 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 2, i64 %379
  %381 = load double, ptr %380, align 8, !tbaa !28
  %382 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 3, i64 %379
  store double %381, ptr %382, align 8, !tbaa !28
  %383 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 4, i64 %379
  %384 = load double, ptr %383, align 8, !tbaa !28
  %385 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 5, i64 %379
  store double %384, ptr %385, align 8, !tbaa !28
  %386 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 6, i64 %379
  %387 = load double, ptr %386, align 8, !tbaa !28
  %388 = getelementptr inbounds %struct.object, ptr %374, i64 %377, i32 7, i64 %379
  store double %387, ptr %388, align 8, !tbaa !28
  %389 = add nuw nsw i64 %379, 1
  %390 = icmp eq i64 %389, 3
  br i1 %390, label %391, label %378, !llvm.loop !164

391:                                              ; preds = %378
  %392 = add nuw nsw i64 %377, 1
  %393 = icmp eq i64 %392, %375
  br i1 %393, label %394, label %376, !llvm.loop !165

394:                                              ; preds = %391, %370
  tail call void @allocate() #22
  tail call void @driver() #24
  tail call void @profile() #24
  tail call void @deallocate() #22
  tail call void @exit(i32 noundef 0) #23
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare double @atof(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind optsize uwtable
define internal void @print_help_message() #12 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.83)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.84)
  %3 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.85)
  %4 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.86)
  %5 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.87)
  %6 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.88)
  %7 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.89)
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.90)
  %9 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.91)
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.92)
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.93)
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.94)
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.95)
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.96)
  %15 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.97)
  %16 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.98)
  %17 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.99)
  %18 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.100)
  %19 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.101)
  %20 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.102)
  %21 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.103)
  %22 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.104)
  %23 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.105)
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.106)
  %25 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.107)
  %26 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.108)
  %27 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.109)
  %28 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.110)
  %29 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.111)
  %30 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.112)
  %31 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.113)
  %32 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.114)
  %33 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.115)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @check_input() #12 {
  %1 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %2 = icmp slt i32 %1, 1
  %3 = load i32, ptr @init_block_y, align 4
  %4 = icmp slt i32 %3, 1
  %5 = select i1 %2, i1 true, i1 %4
  %6 = load i32, ptr @init_block_z, align 4
  %7 = icmp slt i32 %6, 1
  %8 = select i1 %5, i1 true, i1 %7
  br i1 %8, label %9, label %14

9:                                                ; preds = %0
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.133)
  %11 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %12 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %13 = load i32, ptr @init_block_z, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %9, %0
  %15 = phi i32 [ %13, %9 ], [ %6, %0 ]
  %16 = phi i32 [ %12, %9 ], [ %3, %0 ]
  %17 = phi i32 [ %11, %9 ], [ %1, %0 ]
  %18 = phi i32 [ 1, %9 ], [ 0, %0 ]
  %19 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %20 = mul nsw i32 %16, %17
  %21 = mul nsw i32 %20, %15
  %22 = icmp slt i32 %19, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %14
  %24 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.132)
  br label %25

25:                                               ; preds = %23, %14
  %26 = phi i32 [ 1, %23 ], [ %18, %14 ]
  %27 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %28 = icmp slt i32 %27, 1
  %29 = load i32, ptr @y_block_size, align 4
  %30 = icmp slt i32 %29, 1
  %31 = select i1 %28, i1 true, i1 %30
  %32 = load i32, ptr @z_block_size, align 4
  %33 = icmp slt i32 %32, 1
  %34 = select i1 %31, i1 true, i1 %33
  br i1 %34, label %35, label %38

35:                                               ; preds = %25
  %36 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.131)
  %37 = load i32, ptr @x_block_size, align 4, !tbaa !7
  br label %38

38:                                               ; preds = %35, %25
  %39 = phi i32 [ %37, %35 ], [ %27, %25 ]
  %40 = phi i32 [ 1, %35 ], [ %26, %25 ]
  %41 = sdiv i32 %39, 2
  %42 = shl nsw i32 %41, 1
  %43 = icmp eq i32 %42, %39
  br i1 %43, label %46, label %44

44:                                               ; preds = %38
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.130)
  br label %46

46:                                               ; preds = %44, %38
  %47 = phi i32 [ 1, %44 ], [ %40, %38 ]
  %48 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %49 = sdiv i32 %48, 2
  %50 = shl nsw i32 %49, 1
  %51 = icmp eq i32 %50, %48
  br i1 %51, label %54, label %52

52:                                               ; preds = %46
  %53 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.129)
  br label %54

54:                                               ; preds = %52, %46
  %55 = phi i32 [ 1, %52 ], [ %47, %46 ]
  %56 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %57 = sdiv i32 %56, 2
  %58 = shl nsw i32 %57, 1
  %59 = icmp eq i32 %58, %56
  br i1 %59, label %62, label %60

60:                                               ; preds = %54
  %61 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.128)
  br label %62

62:                                               ; preds = %60, %54
  %63 = phi i32 [ 1, %60 ], [ %55, %54 ]
  %64 = load i32, ptr @target_active, align 4
  %65 = icmp ne i32 %64, 0
  %66 = load i32, ptr @target_max, align 4
  %67 = icmp ne i32 %66, 0
  %68 = select i1 %65, i1 %67, i1 false
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.127)
  %71 = load i32, ptr @target_active, align 4
  br label %72

72:                                               ; preds = %69, %62
  %73 = phi i32 [ %71, %69 ], [ %64, %62 ]
  %74 = phi i32 [ 1, %69 ], [ %63, %62 ]
  %75 = icmp ne i32 %73, 0
  %76 = load i32, ptr @target_min, align 4
  %77 = icmp ne i32 %76, 0
  %78 = select i1 %75, i1 %77, i1 false
  br i1 %78, label %79, label %82

79:                                               ; preds = %72
  %80 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.126)
  %81 = load i32, ptr @target_active, align 4
  br label %82

82:                                               ; preds = %79, %72
  %83 = phi i32 [ %81, %79 ], [ %73, %72 ]
  %84 = phi i32 [ 1, %79 ], [ %74, %72 ]
  %85 = icmp slt i32 %83, 0
  %86 = load i32, ptr @max_num_blocks, align 4
  %87 = icmp sgt i32 %83, %86
  %88 = select i1 %85, i1 true, i1 %87
  br i1 %88, label %89, label %93

89:                                               ; preds = %82
  %90 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.125)
  %91 = load i32, ptr @max_num_blocks, align 4
  %92 = load i32, ptr @target_active, align 4
  br label %93

93:                                               ; preds = %89, %82
  %94 = phi i32 [ %92, %89 ], [ %83, %82 ]
  %95 = phi i32 [ %91, %89 ], [ %86, %82 ]
  %96 = phi i32 [ 1, %89 ], [ %84, %82 ]
  %97 = load i32, ptr @target_max, align 4
  %98 = icmp slt i32 %97, 0
  %99 = icmp sgt i32 %97, %95
  %100 = select i1 %98, i1 true, i1 %99
  %101 = icmp slt i32 %97, %94
  %102 = select i1 %100, i1 true, i1 %101
  br i1 %102, label %103, label %108

103:                                              ; preds = %93
  %104 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.124)
  %105 = load i32, ptr @max_num_blocks, align 4
  %106 = load i32, ptr @target_active, align 4
  %107 = load i32, ptr @target_max, align 4
  br label %108

108:                                              ; preds = %103, %93
  %109 = phi i32 [ %107, %103 ], [ %97, %93 ]
  %110 = phi i32 [ %106, %103 ], [ %94, %93 ]
  %111 = phi i32 [ %105, %103 ], [ %95, %93 ]
  %112 = phi i32 [ 1, %103 ], [ %96, %93 ]
  %113 = load i32, ptr @target_min, align 4, !tbaa !7
  %114 = icmp slt i32 %113, 0
  %115 = icmp sgt i32 %113, %111
  %116 = select i1 %114, i1 true, i1 %115
  %117 = icmp sgt i32 %113, %110
  %118 = select i1 %116, i1 true, i1 %117
  %119 = icmp sgt i32 %113, %109
  %120 = select i1 %118, i1 true, i1 %119
  br i1 %120, label %121, label %123

121:                                              ; preds = %108
  %122 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.123)
  br label %123

123:                                              ; preds = %121, %108
  %124 = phi i32 [ 1, %121 ], [ %112, %108 ]
  %125 = load i32, ptr @num_refine, align 4, !tbaa !7
  %126 = icmp slt i32 %125, 0
  br i1 %126, label %127, label %129

127:                                              ; preds = %123
  %128 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.122)
  br label %129

129:                                              ; preds = %127, %123
  %130 = phi i32 [ 1, %127 ], [ %124, %123 ]
  %131 = load i32, ptr @block_change, align 4, !tbaa !7
  %132 = icmp slt i32 %131, 0
  br i1 %132, label %133, label %135

133:                                              ; preds = %129
  %134 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.122)
  br label %135

135:                                              ; preds = %133, %129
  %136 = phi i32 [ 1, %133 ], [ %130, %129 ]
  %137 = load i32, ptr @num_vars, align 4, !tbaa !7
  %138 = icmp slt i32 %137, 1
  br i1 %138, label %139, label %141

139:                                              ; preds = %135
  %140 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.120)
  br label %141

141:                                              ; preds = %139, %135
  %142 = phi i32 [ 1, %139 ], [ %136, %135 ]
  %143 = load i32, ptr @num_pes, align 4, !tbaa !7
  %144 = load i32, ptr @npx, align 4, !tbaa !7
  %145 = load i32, ptr @npy, align 4, !tbaa !7
  %146 = mul nsw i32 %145, %144
  %147 = load i32, ptr @npz, align 4, !tbaa !7
  %148 = mul nsw i32 %146, %147
  %149 = icmp eq i32 %143, %148
  br i1 %149, label %152, label %150

150:                                              ; preds = %141
  %151 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.119)
  br label %152

152:                                              ; preds = %150, %141
  %153 = phi i32 [ 1, %150 ], [ %142, %141 ]
  %154 = load i32, ptr @stencil, align 4
  switch i32 %154, label %155 [
    i32 27, label %158
    i32 7, label %158
  ]

155:                                              ; preds = %152
  %156 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.118)
  %157 = load i32, ptr @stencil, align 4, !tbaa !7
  br label %158

158:                                              ; preds = %155, %152, %152
  %159 = phi i32 [ %157, %155 ], [ %154, %152 ], [ %154, %152 ]
  %160 = phi i32 [ 1, %155 ], [ %153, %152 ], [ %153, %152 ]
  %161 = icmp ne i32 %159, 27
  %162 = load i32, ptr @num_refine, align 4
  %163 = icmp eq i32 %162, 0
  %164 = select i1 %161, i1 true, i1 %163
  %165 = load i32, ptr @uniform_refine, align 4
  %166 = icmp ne i32 %165, 0
  %167 = select i1 %164, i1 true, i1 %166
  br i1 %167, label %170, label %168

168:                                              ; preds = %158
  %169 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.116)
  br label %170

170:                                              ; preds = %168, %158
  %171 = load i32, ptr @comm_vars, align 4, !tbaa !7
  %172 = icmp eq i32 %171, 0
  %173 = load i32, ptr @num_vars, align 4
  %174 = icmp sgt i32 %171, %173
  %175 = select i1 %172, i1 true, i1 %174
  br i1 %175, label %176, label %177

176:                                              ; preds = %170
  store i32 %173, ptr @comm_vars, align 4, !tbaa !7
  br label %177

177:                                              ; preds = %176, %170
  %178 = load i32, ptr @code, align 4
  %179 = icmp ugt i32 %178, 2
  br i1 %179, label %180, label %182

180:                                              ; preds = %177
  %181 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.117)
  br label %182

182:                                              ; preds = %180, %177
  %183 = phi i32 [ 1, %180 ], [ %160, %177 ]
  ret i32 %183
}

; Function Attrs: nounwind optsize uwtable
define internal void @allocate() #0 {
  %1 = load i32, ptr @num_refine, align 4, !tbaa !7
  %2 = add nsw i32 %1, 1
  %3 = sext i32 %2 to i64
  %4 = shl nsw i64 %3, 2
  %5 = tail call ptr @ma_malloc(i64 noundef %4, ptr noundef nonnull @.str.28, i32 noundef 209) #24
  store ptr %5, ptr @num_blocks, align 8, !tbaa !11
  %6 = load i32, ptr @num_pes, align 4, !tbaa !7
  %7 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %8 = mul nsw i32 %7, %6
  %9 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %10 = mul nsw i32 %8, %9
  %11 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %12 = mul nsw i32 %10, %11
  store i32 %12, ptr %5, align 4, !tbaa !7
  %13 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %14 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %15 = mul nsw i32 %14, %13
  %16 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %17 = mul nsw i32 %15, %16
  store i32 %17, ptr %5, align 4, !tbaa !7
  %18 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = mul nsw i64 %19, 192
  %21 = tail call ptr @ma_malloc(i64 noundef %20, ptr noundef nonnull @.str.28, i32 noundef 214) #24
  store ptr %21, ptr @blocks, align 8, !tbaa !11
  %22 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %26, label %24

24:                                               ; preds = %0
  %25 = sext i32 %22 to i64
  br label %106

26:                                               ; preds = %101, %0
  %27 = phi i64 [ %102, %101 ], [ 0, %0 ]
  %28 = load ptr, ptr @blocks, align 8, !tbaa !11
  %29 = getelementptr inbounds %struct.block, ptr %28, i64 %27
  store i32 -1, ptr %29, align 8, !tbaa !13
  %30 = load i32, ptr @num_vars, align 4, !tbaa !7
  %31 = sext i32 %30 to i64
  %32 = shl nsw i64 %31, 3
  %33 = tail call ptr @ma_malloc(i64 noundef %32, ptr noundef nonnull @.str.28, i32 noundef 219) #24
  %34 = load ptr, ptr @blocks, align 8, !tbaa !11
  %35 = getelementptr inbounds %struct.block, ptr %34, i64 %27, i32 11
  store ptr %33, ptr %35, align 8, !tbaa !27
  %36 = load i32, ptr @num_vars, align 4, !tbaa !7
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %101

38:                                               ; preds = %26
  %39 = load i32, ptr @x_block_size, align 4, !tbaa !7
  br label %40

40:                                               ; preds = %95, %38
  %41 = phi i32 [ %39, %38 ], [ %96, %95 ]
  %42 = phi i64 [ 0, %38 ], [ %97, %95 ]
  %43 = add nsw i32 %41, 2
  %44 = sext i32 %43 to i64
  %45 = shl nsw i64 %44, 3
  %46 = tail call ptr @ma_malloc(i64 noundef %45, ptr noundef nonnull @.str.28, i32 noundef 223) #24
  %47 = load ptr, ptr @blocks, align 8, !tbaa !11
  %48 = getelementptr inbounds %struct.block, ptr %47, i64 %27, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !27
  %50 = getelementptr inbounds ptr, ptr %49, i64 %42
  store ptr %46, ptr %50, align 8, !tbaa !11
  %51 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %52 = icmp sgt i32 %51, -2
  br i1 %52, label %53, label %95

53:                                               ; preds = %40
  %54 = load i32, ptr @y_block_size, align 4, !tbaa !7
  br label %55

55:                                               ; preds = %89, %53
  %56 = phi i32 [ %54, %53 ], [ %90, %89 ]
  %57 = phi i64 [ 0, %53 ], [ %91, %89 ]
  %58 = add nsw i32 %56, 2
  %59 = sext i32 %58 to i64
  %60 = shl nsw i64 %59, 3
  %61 = tail call ptr @ma_malloc(i64 noundef %60, ptr noundef nonnull @.str.28, i32 noundef 227) #24
  %62 = load ptr, ptr @blocks, align 8, !tbaa !11
  %63 = getelementptr inbounds %struct.block, ptr %62, i64 %27, i32 11
  %64 = load ptr, ptr %63, align 8, !tbaa !27
  %65 = getelementptr inbounds ptr, ptr %64, i64 %42
  %66 = load ptr, ptr %65, align 8, !tbaa !11
  %67 = getelementptr inbounds ptr, ptr %66, i64 %57
  store ptr %61, ptr %67, align 8, !tbaa !11
  %68 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %69 = icmp sgt i32 %68, -2
  br i1 %69, label %70, label %89

70:                                               ; preds = %70, %55
  %71 = phi i64 [ %85, %70 ], [ 0, %55 ]
  %72 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %73 = add nsw i32 %72, 2
  %74 = sext i32 %73 to i64
  %75 = shl nsw i64 %74, 3
  %76 = tail call ptr @ma_malloc(i64 noundef %75, ptr noundef nonnull @.str.28, i32 noundef 231) #24
  %77 = load ptr, ptr @blocks, align 8, !tbaa !11
  %78 = getelementptr inbounds %struct.block, ptr %77, i64 %27, i32 11
  %79 = load ptr, ptr %78, align 8, !tbaa !27
  %80 = getelementptr inbounds ptr, ptr %79, i64 %42
  %81 = load ptr, ptr %80, align 8, !tbaa !11
  %82 = getelementptr inbounds ptr, ptr %81, i64 %57
  %83 = load ptr, ptr %82, align 8, !tbaa !11
  %84 = getelementptr inbounds ptr, ptr %83, i64 %71
  store ptr %76, ptr %84, align 8, !tbaa !11
  %85 = add nuw nsw i64 %71, 1
  %86 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %87 = sext i32 %86 to i64
  %88 = icmp sgt i64 %71, %87
  br i1 %88, label %89, label %70, !llvm.loop !166

89:                                               ; preds = %70, %55
  %90 = phi i32 [ %68, %55 ], [ %86, %70 ]
  %91 = add nuw nsw i64 %57, 1
  %92 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %93 = sext i32 %92 to i64
  %94 = icmp sgt i64 %57, %93
  br i1 %94, label %95, label %55, !llvm.loop !167

95:                                               ; preds = %89, %40
  %96 = phi i32 [ %51, %40 ], [ %92, %89 ]
  %97 = add nuw nsw i64 %42, 1
  %98 = load i32, ptr @num_vars, align 4, !tbaa !7
  %99 = sext i32 %98 to i64
  %100 = icmp slt i64 %97, %99
  br i1 %100, label %40, label %101, !llvm.loop !168

101:                                              ; preds = %95, %26
  %102 = add nuw nsw i64 %27, 1
  %103 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %104 = sext i32 %103 to i64
  %105 = icmp slt i64 %102, %104
  br i1 %105, label %26, label %106, !llvm.loop !169

106:                                              ; preds = %101, %24
  %107 = phi i64 [ %25, %24 ], [ %104, %101 ]
  %108 = shl nsw i64 %107, 3
  %109 = tail call ptr @ma_malloc(i64 noundef %108, ptr noundef nonnull @.str.28, i32 noundef 237) #24
  store ptr %109, ptr @sorted_list, align 8, !tbaa !11
  %110 = load i32, ptr @num_refine, align 4, !tbaa !7
  %111 = add nsw i32 %110, 2
  %112 = sext i32 %111 to i64
  %113 = shl nsw i64 %112, 2
  %114 = tail call ptr @ma_malloc(i64 noundef %113, ptr noundef nonnull @.str.28, i32 noundef 239) #24
  store ptr %114, ptr @sorted_index, align 8, !tbaa !11
  %115 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  store i32 %115, ptr @max_num_parents, align 4, !tbaa !7
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, 100
  %118 = tail call ptr @ma_malloc(i64 noundef %117, ptr noundef nonnull @.str.28, i32 noundef 243) #24
  store ptr %118, ptr @parents, align 8, !tbaa !11
  %119 = load i32, ptr @max_num_parents, align 4, !tbaa !7
  %120 = icmp sgt i32 %119, 0
  br i1 %120, label %121, label %128

121:                                              ; preds = %121, %106
  %122 = phi i64 [ %124, %121 ], [ 0, %106 ]
  %123 = getelementptr inbounds %struct.parent, ptr %118, i64 %122
  store i32 -1, ptr %123, align 4, !tbaa !17
  %124 = add nuw nsw i64 %122, 1
  %125 = load i32, ptr @max_num_parents, align 4, !tbaa !7
  %126 = sext i32 %125 to i64
  %127 = icmp slt i64 %124, %126
  br i1 %127, label %121, label %128, !llvm.loop !170

128:                                              ; preds = %121, %106
  %129 = load i32, ptr @num_vars, align 4, !tbaa !7
  %130 = sext i32 %129 to i64
  %131 = shl nsw i64 %130, 3
  %132 = tail call ptr @ma_malloc(i64 noundef %131, ptr noundef nonnull @.str.28, i32 noundef 247) #24
  store ptr %132, ptr @grid_sum, align 8, !tbaa !11
  %133 = load i32, ptr @num_refine, align 4, !tbaa !7
  %134 = add nsw i32 %133, 2
  %135 = sext i32 %134 to i64
  %136 = shl nsw i64 %135, 2
  %137 = tail call ptr @ma_malloc(i64 noundef %136, ptr noundef nonnull @.str.28, i32 noundef 249) #24
  store ptr %137, ptr @p8, align 8, !tbaa !11
  %138 = load i32, ptr @num_refine, align 4, !tbaa !7
  %139 = add nsw i32 %138, 2
  %140 = sext i32 %139 to i64
  %141 = shl nsw i64 %140, 2
  %142 = tail call ptr @ma_malloc(i64 noundef %141, ptr noundef nonnull @.str.28, i32 noundef 250) #24
  store ptr %142, ptr @p2, align 8, !tbaa !11
  %143 = load i32, ptr @num_refine, align 4, !tbaa !7
  %144 = add nsw i32 %143, 1
  %145 = sext i32 %144 to i64
  %146 = shl nsw i64 %145, 2
  %147 = tail call ptr @ma_malloc(i64 noundef %146, ptr noundef nonnull @.str.28, i32 noundef 252) #24
  store ptr %147, ptr @block_start, align 8, !tbaa !11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @deallocate() #0 {
  %1 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %60

3:                                                ; preds = %52, %0
  %4 = phi i64 [ %56, %52 ], [ 0, %0 ]
  %5 = load i32, ptr @num_vars, align 4, !tbaa !7
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %52

7:                                                ; preds = %42, %3
  %8 = phi i64 [ %48, %42 ], [ 0, %3 ]
  %9 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %10 = icmp sgt i32 %9, -2
  br i1 %10, label %11, label %42

11:                                               ; preds = %30, %7
  %12 = phi i64 [ %38, %30 ], [ 0, %7 ]
  %13 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %14 = icmp sgt i32 %13, -2
  br i1 %14, label %15, label %30

15:                                               ; preds = %15, %11
  %16 = phi i64 [ %26, %15 ], [ 0, %11 ]
  %17 = load ptr, ptr @blocks, align 8, !tbaa !11
  %18 = getelementptr inbounds %struct.block, ptr %17, i64 %4, i32 11
  %19 = load ptr, ptr %18, align 8, !tbaa !27
  %20 = getelementptr inbounds ptr, ptr %19, i64 %8
  %21 = load ptr, ptr %20, align 8, !tbaa !11
  %22 = getelementptr inbounds ptr, ptr %21, i64 %12
  %23 = load ptr, ptr %22, align 8, !tbaa !11
  %24 = getelementptr inbounds ptr, ptr %23, i64 %16
  %25 = load ptr, ptr %24, align 8, !tbaa !11
  tail call void @free(ptr noundef %25) #24
  %26 = add nuw nsw i64 %16, 1
  %27 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %28 = sext i32 %27 to i64
  %29 = icmp sgt i64 %16, %28
  br i1 %29, label %30, label %15, !llvm.loop !171

30:                                               ; preds = %15, %11
  %31 = load ptr, ptr @blocks, align 8, !tbaa !11
  %32 = getelementptr inbounds %struct.block, ptr %31, i64 %4, i32 11
  %33 = load ptr, ptr %32, align 8, !tbaa !27
  %34 = getelementptr inbounds ptr, ptr %33, i64 %8
  %35 = load ptr, ptr %34, align 8, !tbaa !11
  %36 = getelementptr inbounds ptr, ptr %35, i64 %12
  %37 = load ptr, ptr %36, align 8, !tbaa !11
  tail call void @free(ptr noundef %37) #24
  %38 = add nuw nsw i64 %12, 1
  %39 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %40 = sext i32 %39 to i64
  %41 = icmp sgt i64 %12, %40
  br i1 %41, label %42, label %11, !llvm.loop !172

42:                                               ; preds = %30, %7
  %43 = load ptr, ptr @blocks, align 8, !tbaa !11
  %44 = getelementptr inbounds %struct.block, ptr %43, i64 %4, i32 11
  %45 = load ptr, ptr %44, align 8, !tbaa !27
  %46 = getelementptr inbounds ptr, ptr %45, i64 %8
  %47 = load ptr, ptr %46, align 8, !tbaa !11
  tail call void @free(ptr noundef %47) #24
  %48 = add nuw nsw i64 %8, 1
  %49 = load i32, ptr @num_vars, align 4, !tbaa !7
  %50 = sext i32 %49 to i64
  %51 = icmp slt i64 %48, %50
  br i1 %51, label %7, label %52, !llvm.loop !173

52:                                               ; preds = %42, %3
  %53 = load ptr, ptr @blocks, align 8, !tbaa !11
  %54 = getelementptr inbounds %struct.block, ptr %53, i64 %4, i32 11
  %55 = load ptr, ptr %54, align 8, !tbaa !27
  tail call void @free(ptr noundef %55) #24
  %56 = add nuw nsw i64 %4, 1
  %57 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %58 = sext i32 %57 to i64
  %59 = icmp slt i64 %56, %58
  br i1 %59, label %3, label %60, !llvm.loop !174

60:                                               ; preds = %52, %0
  %61 = load ptr, ptr @blocks, align 8, !tbaa !11
  tail call void @free(ptr noundef %61) #24
  %62 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  tail call void @free(ptr noundef %62) #24
  %63 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  tail call void @free(ptr noundef %63) #24
  %64 = load ptr, ptr @objects, align 8, !tbaa !11
  tail call void @free(ptr noundef %64) #24
  %65 = load ptr, ptr @grid_sum, align 8, !tbaa !11
  tail call void @free(ptr noundef %65) #24
  %66 = load ptr, ptr @p8, align 8, !tbaa !11
  tail call void @free(ptr noundef %66) #24
  %67 = load ptr, ptr @p2, align 8, !tbaa !11
  tail call void @free(ptr noundef %67) #24
  ret void
}

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #13

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @move() #5 {
  %1 = load i32, ptr @num_objects, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, 0
  br i1 %2, label %3, label %37

3:                                                ; preds = %0
  %4 = load ptr, ptr @objects, align 8, !tbaa !11
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %34, %3
  %7 = phi i64 [ 0, %3 ], [ %35, %34 ]
  %8 = getelementptr inbounds %struct.object, ptr %4, i64 %7, i32 1
  %9 = load i32, ptr %8, align 4, !tbaa !161
  %10 = icmp eq i32 %9, 0
  br label %11

11:                                               ; preds = %26, %6
  %12 = phi i64 [ 0, %6 ], [ %32, %26 ]
  %13 = getelementptr inbounds %struct.object, ptr %4, i64 %7, i32 4, i64 %12
  %14 = load double, ptr %13, align 8, !tbaa !28
  %15 = getelementptr inbounds %struct.object, ptr %4, i64 %7, i32 2, i64 %12
  %16 = load double, ptr %15, align 8, !tbaa !28
  %17 = fadd double %14, %16
  store double %17, ptr %15, align 8, !tbaa !28
  br i1 %10, label %26, label %18

18:                                               ; preds = %11
  %19 = fcmp ult double %17, 1.000000e+00
  br i1 %19, label %20, label %22

20:                                               ; preds = %18
  %21 = fcmp ugt double %17, 0.000000e+00
  br i1 %21, label %26, label %22

22:                                               ; preds = %20, %18
  %23 = phi double [ 2.000000e+00, %18 ], [ 0.000000e+00, %20 ]
  %24 = fsub double %23, %17
  store double %24, ptr %15, align 8, !tbaa !28
  %25 = fneg double %14
  store double %25, ptr %13, align 8, !tbaa !28
  br label %26

26:                                               ; preds = %22, %20, %11
  %27 = getelementptr inbounds %struct.object, ptr %4, i64 %7, i32 8, i64 %12
  %28 = load double, ptr %27, align 8, !tbaa !28
  %29 = getelementptr inbounds %struct.object, ptr %4, i64 %7, i32 6, i64 %12
  %30 = load double, ptr %29, align 8, !tbaa !28
  %31 = fadd double %28, %30
  store double %31, ptr %29, align 8, !tbaa !28
  %32 = add nuw nsw i64 %12, 1
  %33 = icmp eq i64 %32, 3
  br i1 %33, label %34, label %11, !llvm.loop !175

34:                                               ; preds = %26
  %35 = add nuw nsw i64 %7, 1
  %36 = icmp eq i64 %35, %5
  br i1 %36, label %37, label %6, !llvm.loop !176

37:                                               ; preds = %34, %0
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @check_objects() #12 {
  %1 = alloca [3 x [2 x double]], align 16
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %1) #21
  %2 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %3 = load i32, ptr @num_refine, align 4, !tbaa !7
  %4 = add nsw i32 %3, 1
  %5 = sext i32 %4 to i64
  %6 = getelementptr inbounds i32, ptr %2, i64 %5
  %7 = load i32, ptr %6, align 4, !tbaa !7
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %225

9:                                                ; preds = %0
  %10 = getelementptr inbounds [2 x double], ptr %1, i64 0, i64 1
  %11 = getelementptr inbounds [3 x [2 x double]], ptr %1, i64 0, i64 1
  %12 = getelementptr inbounds [3 x [2 x double]], ptr %1, i64 0, i64 1, i64 1
  %13 = getelementptr inbounds [3 x [2 x double]], ptr %1, i64 0, i64 2
  %14 = getelementptr inbounds [3 x [2 x double]], ptr %1, i64 0, i64 2, i64 1
  br label %15

15:                                               ; preds = %215, %9
  %16 = phi i64 [ 0, %9 ], [ %216, %215 ]
  %17 = phi i32 [ %3, %9 ], [ %218, %215 ]
  %18 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %19 = getelementptr inbounds %struct.sorted_block, ptr %18, i64 %16, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = load ptr, ptr @blocks, align 8, !tbaa !11
  %22 = sext i32 %20 to i64
  %23 = getelementptr inbounds %struct.block, ptr %21, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !13
  %25 = icmp sgt i32 %24, -1
  br i1 %25, label %26, label %215

26:                                               ; preds = %15
  %27 = load ptr, ptr @p2, align 8, !tbaa !11
  %28 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !15
  %30 = sub nsw i32 %17, %29
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds i32, ptr %27, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !7
  %34 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 10
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = sub nsw i32 %35, %33
  %37 = load i32, ptr @mesh_size, align 4, !tbaa !7
  %38 = sitofp i32 %37 to double
  %39 = add nsw i32 %35, %33
  %40 = insertelement <2 x i32> poison, i32 %36, i64 0
  %41 = insertelement <2 x i32> %40, i32 %39, i64 1
  %42 = sitofp <2 x i32> %41 to <2 x double>
  %43 = insertelement <2 x double> poison, double %38, i64 0
  %44 = shufflevector <2 x double> %43, <2 x double> poison, <2 x i32> zeroinitializer
  %45 = fdiv <2 x double> %42, %44
  store <2 x double> %45, ptr %1, align 16, !tbaa !28
  %46 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 10, i64 1
  %47 = load i32, ptr %46, align 4, !tbaa !7
  %48 = sub nsw i32 %47, %33
  %49 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %50 = sitofp i32 %49 to double
  %51 = add nsw i32 %47, %33
  %52 = insertelement <2 x i32> poison, i32 %48, i64 0
  %53 = insertelement <2 x i32> %52, i32 %51, i64 1
  %54 = sitofp <2 x i32> %53 to <2 x double>
  %55 = insertelement <2 x double> poison, double %50, i64 0
  %56 = shufflevector <2 x double> %55, <2 x double> poison, <2 x i32> zeroinitializer
  %57 = fdiv <2 x double> %54, %56
  store <2 x double> %57, ptr %11, align 16, !tbaa !28
  %58 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 10, i64 2
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = sub nsw i32 %59, %33
  %61 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %62 = sitofp i32 %61 to double
  %63 = add nsw i32 %59, %33
  %64 = insertelement <2 x i32> poison, i32 %60, i64 0
  %65 = insertelement <2 x i32> %64, i32 %63, i64 1
  %66 = sitofp <2 x i32> %65 to <2 x double>
  %67 = insertelement <2 x double> poison, double %62, i64 0
  %68 = shufflevector <2 x double> %67, <2 x double> poison, <2 x i32> zeroinitializer
  %69 = fdiv <2 x double> %66, %68
  store <2 x double> %69, ptr %13, align 16, !tbaa !28
  %70 = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %104, label %72

72:                                               ; preds = %26
  %73 = sitofp i32 %33 to double
  %74 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %75 = sitofp i32 %74 to double
  %76 = fdiv double %73, %75
  %77 = fmul double %76, 2.000000e+00
  %78 = fdiv double %77, %38
  %79 = insertelement <2 x double> poison, double %78, i64 0
  %80 = shufflevector <2 x double> %79, <2 x double> poison, <2 x i32> zeroinitializer
  %81 = fsub <2 x double> %45, %80
  %82 = fadd <2 x double> %45, %80
  %83 = shufflevector <2 x double> %81, <2 x double> %82, <2 x i32> <i32 0, i32 3>
  store <2 x double> %83, ptr %1, align 16, !tbaa !28
  %84 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %85 = sitofp i32 %84 to double
  %86 = fdiv double %73, %85
  %87 = fmul double %86, 2.000000e+00
  %88 = fdiv double %87, %50
  %89 = insertelement <2 x double> poison, double %88, i64 0
  %90 = shufflevector <2 x double> %89, <2 x double> poison, <2 x i32> zeroinitializer
  %91 = fsub <2 x double> %57, %90
  %92 = fadd <2 x double> %57, %90
  %93 = shufflevector <2 x double> %91, <2 x double> %92, <2 x i32> <i32 0, i32 3>
  store <2 x double> %93, ptr %11, align 16, !tbaa !28
  %94 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %95 = sitofp i32 %94 to double
  %96 = fdiv double %73, %95
  %97 = fmul double %96, 2.000000e+00
  %98 = fdiv double %97, %62
  %99 = insertelement <2 x double> poison, double %98, i64 0
  %100 = shufflevector <2 x double> %99, <2 x double> poison, <2 x i32> zeroinitializer
  %101 = fsub <2 x double> %69, %100
  %102 = fadd <2 x double> %69, %100
  %103 = shufflevector <2 x double> %101, <2 x double> %102, <2 x i32> <i32 0, i32 3>
  store <2 x double> %103, ptr %13, align 16, !tbaa !28
  br label %104

104:                                              ; preds = %72, %26
  %105 = call i32 @check_block(ptr noundef nonnull %1) #22
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %156

107:                                              ; preds = %104
  %108 = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %159, label %110

110:                                              ; preds = %107
  %111 = load i32, ptr %28, align 4, !tbaa !15
  %112 = icmp eq i32 %111, 0
  br i1 %112, label %161, label %113

113:                                              ; preds = %110
  %114 = load ptr, ptr @p2, align 8, !tbaa !11
  %115 = load i32, ptr @num_refine, align 4, !tbaa !7
  %116 = sub i32 %115, %111
  %117 = add i32 %116, 1
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, ptr %114, i64 %118
  %120 = load i32, ptr %119, align 4, !tbaa !7
  %121 = sitofp i32 %120 to double
  %122 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %123 = load double, ptr %1, align 16, !tbaa !28
  %124 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %125 = insertelement <2 x i32> poison, i32 %122, i64 0
  %126 = insertelement <2 x i32> %125, i32 %124, i64 1
  %127 = sitofp <2 x i32> %126 to <2 x double>
  %128 = insertelement <2 x double> poison, double %121, i64 0
  %129 = shufflevector <2 x double> %128, <2 x double> poison, <2 x i32> zeroinitializer
  %130 = fdiv <2 x double> %129, %127
  %131 = load <2 x i32>, ptr @mesh_size, align 4, !tbaa !7
  %132 = sitofp <2 x i32> %131 to <2 x double>
  %133 = fdiv <2 x double> %130, %132
  %134 = extractelement <2 x double> %133, i64 0
  %135 = fsub double %123, %134
  store double %135, ptr %1, align 16, !tbaa !28
  %136 = load <2 x double>, ptr %10, align 8, !tbaa !28
  %137 = fadd <2 x double> %136, %133
  %138 = fsub <2 x double> %136, %133
  %139 = shufflevector <2 x double> %137, <2 x double> %138, <2 x i32> <i32 0, i32 3>
  store <2 x double> %139, ptr %10, align 8, !tbaa !28
  %140 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %141 = sitofp i32 %140 to double
  %142 = fdiv double %121, %141
  %143 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %144 = sitofp i32 %143 to double
  %145 = fdiv double %142, %144
  %146 = load <2 x double>, ptr %12, align 8, !tbaa !28
  %147 = shufflevector <2 x double> %133, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %148 = insertelement <2 x double> %147, double %145, i64 1
  %149 = fadd <2 x double> %146, %148
  %150 = fsub <2 x double> %146, %148
  %151 = shufflevector <2 x double> %149, <2 x double> %150, <2 x i32> <i32 0, i32 3>
  store <2 x double> %151, ptr %12, align 8, !tbaa !28
  %152 = load double, ptr %14, align 8, !tbaa !28
  %153 = fadd double %145, %152
  store double %153, ptr %14, align 8, !tbaa !28
  %154 = call i32 @check_block(ptr noundef nonnull %1) #22
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %159, label %156

156:                                              ; preds = %113, %104
  %157 = phi i32 [ 1, %104 ], [ 0, %113 ]
  %158 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 2
  store i32 %157, ptr %158, align 8, !tbaa !16
  br label %159

159:                                              ; preds = %156, %113, %107
  %160 = load i32, ptr %28, align 4, !tbaa !15
  br label %161

161:                                              ; preds = %159, %110
  %162 = phi i32 [ %160, %159 ], [ 0, %110 ]
  %163 = load i32, ptr @num_refine, align 4, !tbaa !7
  %164 = icmp eq i32 %162, %163
  %165 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 2
  %166 = load i32, ptr %165, align 8, !tbaa !16
  %167 = icmp eq i32 %166, 1
  %168 = select i1 %164, i1 %167, i1 false
  %169 = icmp eq i32 %166, 0
  %170 = select i1 %168, i1 true, i1 %169
  br i1 %170, label %171, label %208

171:                                              ; preds = %161
  %172 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 2
  store i32 0, ptr %172, align 8, !tbaa !16
  %173 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 4
  %174 = load i32, ptr %173, align 8, !tbaa !25
  %175 = icmp eq i32 %174, -1
  br i1 %175, label %208, label %176

176:                                              ; preds = %171
  %177 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 5
  %178 = load i32, ptr %177, align 4, !tbaa !26
  %179 = load i32, ptr @my_pe, align 4, !tbaa !7
  %180 = icmp eq i32 %178, %179
  br i1 %180, label %181, label %208

181:                                              ; preds = %176
  %182 = load ptr, ptr @parents, align 8, !tbaa !11
  %183 = sext i32 %174 to i64
  %184 = getelementptr inbounds %struct.parent, ptr %182, i64 %183, i32 5
  store i32 0, ptr %184, align 4, !tbaa !23
  %185 = load ptr, ptr @blocks, align 8
  %186 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %187

187:                                              ; preds = %204, %181
  %188 = phi i32 [ %186, %181 ], [ %205, %204 ]
  %189 = phi i64 [ 0, %181 ], [ %206, %204 ]
  %190 = getelementptr inbounds %struct.parent, ptr %182, i64 %183, i32 7, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !7
  %192 = icmp eq i32 %191, %188
  br i1 %192, label %193, label %204

193:                                              ; preds = %187
  %194 = getelementptr inbounds %struct.parent, ptr %182, i64 %183, i32 6, i64 %189
  %195 = load i32, ptr %194, align 4, !tbaa !7
  %196 = icmp sgt i32 %195, -1
  br i1 %196, label %197, label %204

197:                                              ; preds = %193
  %198 = zext i32 %195 to i64
  %199 = getelementptr inbounds %struct.block, ptr %185, i64 %198, i32 2
  %200 = load i32, ptr %199, align 8, !tbaa !16
  %201 = icmp eq i32 %200, -1
  br i1 %201, label %202, label %204

202:                                              ; preds = %197
  store i32 0, ptr %199, align 8, !tbaa !16
  %203 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %204

204:                                              ; preds = %202, %197, %193, %187
  %205 = phi i32 [ %188, %187 ], [ %188, %193 ], [ %203, %202 ], [ %188, %197 ]
  %206 = add nuw nsw i64 %189, 1
  %207 = icmp eq i64 %206, 8
  br i1 %207, label %208, label %187, !llvm.loop !177

208:                                              ; preds = %204, %176, %171, %161
  %209 = icmp eq i32 %162, 0
  br i1 %209, label %210, label %215

210:                                              ; preds = %208
  %211 = getelementptr inbounds %struct.block, ptr %21, i64 %22, i32 2
  %212 = load i32, ptr %211, align 8, !tbaa !16
  %213 = icmp eq i32 %212, -1
  br i1 %213, label %214, label %215

214:                                              ; preds = %210
  store i32 0, ptr %211, align 8, !tbaa !16
  br label %215

215:                                              ; preds = %214, %210, %208, %15
  %216 = add nuw nsw i64 %16, 1
  %217 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %218 = load i32, ptr @num_refine, align 4, !tbaa !7
  %219 = add nsw i32 %218, 1
  %220 = sext i32 %219 to i64
  %221 = getelementptr inbounds i32, ptr %217, i64 %220
  %222 = load i32, ptr %221, align 4, !tbaa !7
  %223 = sext i32 %222 to i64
  %224 = icmp slt i64 %216, %223
  br i1 %224, label %15, label %225, !llvm.loop !178

225:                                              ; preds = %215, %0
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @check_block(ptr noundef readonly %0) #12 {
  %2 = load i32, ptr @num_objects, align 4, !tbaa !7
  %3 = icmp sgt i32 %2, 0
  br i1 %3, label %4, label %940

4:                                                ; preds = %1
  %5 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 1
  %6 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 1
  %7 = getelementptr inbounds [2 x double], ptr %0, i64 1
  %8 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 1
  %9 = getelementptr inbounds [2 x double], ptr %0, i64 2
  %10 = load ptr, ptr @objects, align 8, !tbaa !11
  br label %11

11:                                               ; preds = %930, %4
  %12 = phi i32 [ %2, %4 ], [ %931, %930 ]
  %13 = phi ptr [ %10, %4 ], [ %932, %930 ]
  %14 = phi i64 [ 0, %4 ], [ %937, %930 ]
  %15 = phi i32 [ undef, %4 ], [ %936, %930 ]
  %16 = phi i32 [ undef, %4 ], [ %935, %930 ]
  %17 = phi i32 [ undef, %4 ], [ %934, %930 ]
  %18 = phi i32 [ 0, %4 ], [ %933, %930 ]
  %19 = getelementptr inbounds %struct.object, ptr %13, i64 %14
  %20 = icmp sgt i32 %18, 0
  br i1 %20, label %930, label %21

21:                                               ; preds = %11
  %22 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6
  %23 = load double, ptr %22, align 8, !tbaa !28
  %24 = fcmp olt double %23, 0.000000e+00
  br i1 %24, label %930, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 1
  %27 = load double, ptr %26, align 8, !tbaa !28
  %28 = fcmp olt double %27, 0.000000e+00
  br i1 %28, label %930, label %29

29:                                               ; preds = %25
  %30 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 2
  %31 = load double, ptr %30, align 8, !tbaa !28
  %32 = fcmp olt double %31, 0.000000e+00
  br i1 %32, label %930, label %33

33:                                               ; preds = %29
  %34 = load i32, ptr %19, align 8, !tbaa !159
  switch i32 %34, label %155 [
    i32 0, label %35
    i32 1, label %124
  ]

35:                                               ; preds = %33
  %36 = load double, ptr %5, align 8, !tbaa !28
  %37 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2
  %38 = load double, ptr %37, align 8, !tbaa !28
  %39 = fsub double %38, %23
  %40 = fcmp ogt double %36, %39
  br i1 %40, label %41, label %930

41:                                               ; preds = %35
  %42 = load double, ptr %0, align 8, !tbaa !28
  %43 = fadd double %23, %38
  %44 = fcmp olt double %42, %43
  br i1 %44, label %45, label %930

45:                                               ; preds = %41
  %46 = fcmp olt double %42, %39
  %47 = fcmp olt double %36, %43
  %48 = and i1 %47, %46
  br i1 %48, label %49, label %51

49:                                               ; preds = %45
  %50 = load double, ptr %6, align 8, !tbaa !28
  br label %56

51:                                               ; preds = %45
  %52 = fcmp ogt double %42, %39
  %53 = fcmp ogt double %36, %43
  %54 = and i1 %53, %52
  %55 = load double, ptr %6, align 8, !tbaa !28
  br i1 %54, label %56, label %77

56:                                               ; preds = %51, %49
  %57 = phi double [ %50, %49 ], [ %55, %51 ]
  %58 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 1
  %59 = load double, ptr %58, align 8, !tbaa !28
  %60 = fsub double %59, %27
  %61 = fcmp ogt double %57, %60
  br i1 %61, label %62, label %930

62:                                               ; preds = %56
  %63 = load double, ptr %7, align 8, !tbaa !28
  %64 = fadd double %27, %59
  %65 = fcmp olt double %63, %64
  br i1 %65, label %66, label %930

66:                                               ; preds = %62
  %67 = load double, ptr %8, align 8, !tbaa !28
  %68 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %69 = load double, ptr %68, align 8, !tbaa !28
  %70 = fsub double %69, %31
  %71 = fcmp ogt double %67, %70
  br i1 %71, label %72, label %930

72:                                               ; preds = %66
  %73 = load double, ptr %9, align 8, !tbaa !28
  %74 = fadd double %31, %69
  %75 = fcmp olt double %73, %74
  br i1 %75, label %76, label %930

76:                                               ; preds = %72
  br label %930

77:                                               ; preds = %51
  %78 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 1
  %79 = load double, ptr %78, align 8, !tbaa !28
  %80 = fsub double %79, %27
  %81 = fcmp ogt double %55, %80
  br i1 %81, label %82, label %105

82:                                               ; preds = %77
  %83 = load double, ptr %7, align 8, !tbaa !28
  %84 = fadd double %27, %79
  %85 = fcmp olt double %83, %84
  br i1 %85, label %86, label %105

86:                                               ; preds = %82
  %87 = fcmp olt double %83, %80
  %88 = fcmp olt double %55, %84
  %89 = and i1 %88, %87
  br i1 %89, label %94, label %90

90:                                               ; preds = %86
  %91 = fcmp ogt double %83, %80
  %92 = fcmp ogt double %55, %84
  %93 = and i1 %92, %91
  br i1 %93, label %94, label %930

94:                                               ; preds = %90, %86
  %95 = load double, ptr %8, align 8, !tbaa !28
  %96 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %97 = load double, ptr %96, align 8, !tbaa !28
  %98 = fsub double %97, %31
  %99 = fcmp ogt double %95, %98
  br i1 %99, label %100, label %930

100:                                              ; preds = %94
  %101 = load double, ptr %9, align 8, !tbaa !28
  %102 = fadd double %31, %97
  %103 = fcmp olt double %101, %102
  br i1 %103, label %104, label %930

104:                                              ; preds = %100
  br label %930

105:                                              ; preds = %82, %77
  %106 = load double, ptr %8, align 8, !tbaa !28
  %107 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %108 = load double, ptr %107, align 8, !tbaa !28
  %109 = fsub double %108, %31
  %110 = fcmp ogt double %106, %109
  br i1 %110, label %111, label %930

111:                                              ; preds = %105
  %112 = load double, ptr %9, align 8, !tbaa !28
  %113 = fadd double %31, %108
  %114 = fcmp olt double %112, %113
  br i1 %114, label %115, label %930

115:                                              ; preds = %111
  %116 = fcmp olt double %112, %109
  %117 = fcmp olt double %106, %113
  %118 = and i1 %117, %116
  br i1 %118, label %123, label %119

119:                                              ; preds = %115
  %120 = fcmp ogt double %112, %109
  %121 = fcmp ogt double %106, %113
  %122 = and i1 %121, %120
  br i1 %122, label %123, label %930

123:                                              ; preds = %119, %115
  br label %930

124:                                              ; preds = %33
  %125 = load double, ptr %5, align 8, !tbaa !28
  %126 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2
  %127 = load double, ptr %126, align 8, !tbaa !28
  %128 = fsub double %127, %23
  %129 = fcmp ogt double %125, %128
  br i1 %129, label %130, label %930

130:                                              ; preds = %124
  %131 = load double, ptr %0, align 8, !tbaa !28
  %132 = fadd double %23, %127
  %133 = fcmp olt double %131, %132
  br i1 %133, label %134, label %930

134:                                              ; preds = %130
  %135 = load double, ptr %6, align 8, !tbaa !28
  %136 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 1
  %137 = load double, ptr %136, align 8, !tbaa !28
  %138 = fsub double %137, %27
  %139 = fcmp ogt double %135, %138
  br i1 %139, label %140, label %930

140:                                              ; preds = %134
  %141 = load double, ptr %7, align 8, !tbaa !28
  %142 = fadd double %27, %137
  %143 = fcmp olt double %141, %142
  br i1 %143, label %144, label %930

144:                                              ; preds = %140
  %145 = load double, ptr %8, align 8, !tbaa !28
  %146 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %147 = load double, ptr %146, align 8, !tbaa !28
  %148 = fsub double %147, %31
  %149 = fcmp ogt double %145, %148
  br i1 %149, label %150, label %930

150:                                              ; preds = %144
  %151 = load double, ptr %9, align 8, !tbaa !28
  %152 = fadd double %31, %147
  %153 = fcmp olt double %151, %152
  br i1 %153, label %154, label %930

154:                                              ; preds = %150
  br label %930

155:                                              ; preds = %33
  %156 = add i32 %34, -2
  %157 = icmp ult i32 %156, 13
  %158 = and i32 %34, 1
  %159 = icmp eq i32 %158, 0
  %160 = and i1 %157, %159
  br i1 %160, label %161, label %484

161:                                              ; preds = %155
  %162 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2
  %163 = load double, ptr %162, align 8, !tbaa !28
  %164 = load double, ptr %0, align 8, !tbaa !28
  %165 = fcmp olt double %163, %164
  br i1 %165, label %174, label %166

166:                                              ; preds = %161
  %167 = load double, ptr %5, align 8, !tbaa !28
  %168 = fcmp ogt double %163, %167
  br i1 %168, label %174, label %169

169:                                              ; preds = %166
  %170 = fadd double %164, %167
  %171 = fmul double %170, 5.000000e-01
  %172 = fcmp uge double %163, %171
  %173 = zext i1 %172 to i32
  br label %174

174:                                              ; preds = %169, %166, %161
  %175 = phi i1 [ true, %161 ], [ true, %166 ], [ false, %169 ]
  %176 = phi i32 [ 0, %161 ], [ 1, %166 ], [ %173, %169 ]
  %177 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 1
  %178 = load double, ptr %177, align 8, !tbaa !28
  %179 = load double, ptr %7, align 8, !tbaa !28
  %180 = fcmp olt double %178, %179
  br i1 %180, label %189, label %181

181:                                              ; preds = %174
  %182 = load double, ptr %6, align 8, !tbaa !28
  %183 = fcmp ogt double %178, %182
  br i1 %183, label %189, label %184

184:                                              ; preds = %181
  %185 = fadd double %179, %182
  %186 = fmul double %185, 5.000000e-01
  %187 = fcmp uge double %178, %186
  %188 = zext i1 %187 to i32
  br label %189

189:                                              ; preds = %184, %181, %174
  %190 = phi i1 [ true, %174 ], [ true, %181 ], [ false, %184 ]
  %191 = phi i32 [ 0, %174 ], [ 1, %181 ], [ %188, %184 ]
  %192 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %193 = load double, ptr %192, align 8, !tbaa !28
  %194 = load double, ptr %9, align 8, !tbaa !28
  %195 = fcmp olt double %193, %194
  br i1 %195, label %204, label %196

196:                                              ; preds = %189
  %197 = load double, ptr %8, align 8, !tbaa !28
  %198 = fcmp ogt double %193, %197
  br i1 %198, label %204, label %199

199:                                              ; preds = %196
  %200 = fadd double %194, %197
  %201 = fmul double %200, 5.000000e-01
  %202 = fcmp uge double %193, %201
  %203 = zext i1 %202 to i32
  br label %204

204:                                              ; preds = %199, %196, %189
  %205 = phi i1 [ true, %189 ], [ true, %196 ], [ false, %199 ]
  %206 = phi i32 [ 0, %189 ], [ 1, %196 ], [ %203, %199 ]
  br i1 %175, label %330, label %207

207:                                              ; preds = %204
  br i1 %190, label %264, label %208

208:                                              ; preds = %207
  br i1 %205, label %233, label %209

209:                                              ; preds = %208
  %210 = xor i32 %176, 1
  %211 = zext i32 %210 to i64
  %212 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %211
  %213 = load double, ptr %212, align 8, !tbaa !28
  %214 = fsub double %213, %163
  %215 = fdiv double %214, %23
  %216 = xor i32 %191, 1
  %217 = zext i32 %216 to i64
  %218 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %217
  %219 = load double, ptr %218, align 8, !tbaa !28
  %220 = fsub double %219, %178
  %221 = fdiv double %220, %27
  %222 = fmul double %221, %221
  %223 = tail call double @llvm.fmuladd.f64(double %215, double %215, double %222)
  %224 = xor i32 %206, 1
  %225 = zext i32 %224 to i64
  %226 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %225
  %227 = load double, ptr %226, align 8, !tbaa !28
  %228 = fsub double %227, %193
  %229 = fdiv double %228, %31
  %230 = tail call double @llvm.fmuladd.f64(double %229, double %229, double %223)
  %231 = fcmp ogt double %230, 1.000000e+00
  br i1 %231, label %232, label %464

232:                                              ; preds = %209
  br label %464

233:                                              ; preds = %208
  %234 = zext i32 %206 to i64
  %235 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %234
  %236 = load double, ptr %235, align 8, !tbaa !28
  %237 = fsub double %236, %193
  %238 = tail call double @llvm.fabs.f64(double %237)
  %239 = fcmp olt double %238, %31
  br i1 %239, label %240, label %464

240:                                              ; preds = %233
  %241 = xor i32 %176, 1
  %242 = zext i32 %241 to i64
  %243 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %242
  %244 = load double, ptr %243, align 8, !tbaa !28
  %245 = fsub double %244, %163
  %246 = fdiv double %245, %23
  %247 = xor i32 %191, 1
  %248 = zext i32 %247 to i64
  %249 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %248
  %250 = load double, ptr %249, align 8, !tbaa !28
  %251 = fsub double %250, %178
  %252 = fdiv double %251, %27
  %253 = fmul double %252, %252
  %254 = tail call double @llvm.fmuladd.f64(double %246, double %246, double %253)
  %255 = xor i32 %206, 1
  %256 = zext i32 %255 to i64
  %257 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %256
  %258 = load double, ptr %257, align 8, !tbaa !28
  %259 = fsub double %258, %193
  %260 = fdiv double %259, %31
  %261 = tail call double @llvm.fmuladd.f64(double %260, double %260, double %254)
  %262 = fcmp ogt double %261, 1.000000e+00
  br i1 %262, label %263, label %464

263:                                              ; preds = %240
  br label %464

264:                                              ; preds = %207
  %265 = zext i32 %191 to i64
  %266 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %265
  %267 = load double, ptr %266, align 8, !tbaa !28
  %268 = fsub double %267, %178
  br i1 %205, label %296, label %269

269:                                              ; preds = %264
  %270 = tail call double @llvm.fabs.f64(double %268)
  %271 = fcmp olt double %270, %27
  br i1 %271, label %272, label %464

272:                                              ; preds = %269
  %273 = xor i32 %176, 1
  %274 = zext i32 %273 to i64
  %275 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %274
  %276 = load double, ptr %275, align 8, !tbaa !28
  %277 = fsub double %276, %163
  %278 = fdiv double %277, %23
  %279 = xor i32 %191, 1
  %280 = zext i32 %279 to i64
  %281 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %280
  %282 = load double, ptr %281, align 8, !tbaa !28
  %283 = fsub double %282, %178
  %284 = fdiv double %283, %27
  %285 = fmul double %284, %284
  %286 = tail call double @llvm.fmuladd.f64(double %278, double %278, double %285)
  %287 = xor i32 %206, 1
  %288 = zext i32 %287 to i64
  %289 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %288
  %290 = load double, ptr %289, align 8, !tbaa !28
  %291 = fsub double %290, %193
  %292 = fdiv double %291, %31
  %293 = tail call double @llvm.fmuladd.f64(double %292, double %292, double %286)
  %294 = fcmp ogt double %293, 1.000000e+00
  br i1 %294, label %295, label %464

295:                                              ; preds = %272
  br label %464

296:                                              ; preds = %264
  %297 = fdiv double %268, %27
  %298 = zext i32 %206 to i64
  %299 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %298
  %300 = load double, ptr %299, align 8, !tbaa !28
  %301 = fsub double %300, %193
  %302 = fdiv double %301, %31
  %303 = fmul double %302, %302
  %304 = tail call double @llvm.fmuladd.f64(double %297, double %297, double %303)
  %305 = fcmp olt double %304, 1.000000e+00
  br i1 %305, label %306, label %464

306:                                              ; preds = %296
  %307 = xor i32 %176, 1
  %308 = zext i32 %307 to i64
  %309 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %308
  %310 = load double, ptr %309, align 8, !tbaa !28
  %311 = fsub double %310, %163
  %312 = fdiv double %311, %23
  %313 = xor i32 %191, 1
  %314 = zext i32 %313 to i64
  %315 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %314
  %316 = load double, ptr %315, align 8, !tbaa !28
  %317 = fsub double %316, %178
  %318 = fdiv double %317, %27
  %319 = fmul double %318, %318
  %320 = tail call double @llvm.fmuladd.f64(double %312, double %312, double %319)
  %321 = xor i32 %206, 1
  %322 = zext i32 %321 to i64
  %323 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %322
  %324 = load double, ptr %323, align 8, !tbaa !28
  %325 = fsub double %324, %193
  %326 = fdiv double %325, %31
  %327 = tail call double @llvm.fmuladd.f64(double %326, double %326, double %320)
  %328 = fcmp ogt double %327, 1.000000e+00
  br i1 %328, label %329, label %464

329:                                              ; preds = %306
  br label %464

330:                                              ; preds = %204
  %331 = zext i32 %176 to i64
  %332 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %331
  %333 = load double, ptr %332, align 8, !tbaa !28
  %334 = fsub double %333, %163
  br i1 %190, label %397, label %335

335:                                              ; preds = %330
  br i1 %205, label %363, label %336

336:                                              ; preds = %335
  %337 = tail call double @llvm.fabs.f64(double %334)
  %338 = fcmp olt double %337, %23
  br i1 %338, label %339, label %464

339:                                              ; preds = %336
  %340 = xor i32 %176, 1
  %341 = zext i32 %340 to i64
  %342 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %341
  %343 = load double, ptr %342, align 8, !tbaa !28
  %344 = fsub double %343, %163
  %345 = fdiv double %344, %23
  %346 = xor i32 %191, 1
  %347 = zext i32 %346 to i64
  %348 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %347
  %349 = load double, ptr %348, align 8, !tbaa !28
  %350 = fsub double %349, %178
  %351 = fdiv double %350, %27
  %352 = fmul double %351, %351
  %353 = tail call double @llvm.fmuladd.f64(double %345, double %345, double %352)
  %354 = xor i32 %206, 1
  %355 = zext i32 %354 to i64
  %356 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %355
  %357 = load double, ptr %356, align 8, !tbaa !28
  %358 = fsub double %357, %193
  %359 = fdiv double %358, %31
  %360 = tail call double @llvm.fmuladd.f64(double %359, double %359, double %353)
  %361 = fcmp ogt double %360, 1.000000e+00
  br i1 %361, label %362, label %464

362:                                              ; preds = %339
  br label %464

363:                                              ; preds = %335
  %364 = fdiv double %334, %23
  %365 = zext i32 %206 to i64
  %366 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %365
  %367 = load double, ptr %366, align 8, !tbaa !28
  %368 = fsub double %367, %193
  %369 = fdiv double %368, %31
  %370 = fmul double %369, %369
  %371 = tail call double @llvm.fmuladd.f64(double %364, double %364, double %370)
  %372 = fcmp olt double %371, 1.000000e+00
  br i1 %372, label %373, label %464

373:                                              ; preds = %363
  %374 = xor i32 %176, 1
  %375 = zext i32 %374 to i64
  %376 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %375
  %377 = load double, ptr %376, align 8, !tbaa !28
  %378 = fsub double %377, %163
  %379 = fdiv double %378, %23
  %380 = xor i32 %191, 1
  %381 = zext i32 %380 to i64
  %382 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %381
  %383 = load double, ptr %382, align 8, !tbaa !28
  %384 = fsub double %383, %178
  %385 = fdiv double %384, %27
  %386 = fmul double %385, %385
  %387 = tail call double @llvm.fmuladd.f64(double %379, double %379, double %386)
  %388 = xor i32 %206, 1
  %389 = zext i32 %388 to i64
  %390 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %389
  %391 = load double, ptr %390, align 8, !tbaa !28
  %392 = fsub double %391, %193
  %393 = fdiv double %392, %31
  %394 = tail call double @llvm.fmuladd.f64(double %393, double %393, double %387)
  %395 = fcmp ogt double %394, 1.000000e+00
  br i1 %395, label %396, label %464

396:                                              ; preds = %373
  br label %464

397:                                              ; preds = %330
  %398 = fdiv double %334, %23
  %399 = zext i32 %191 to i64
  %400 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %399
  %401 = load double, ptr %400, align 8, !tbaa !28
  %402 = fsub double %401, %178
  %403 = fdiv double %402, %27
  %404 = fmul double %403, %403
  %405 = tail call double @llvm.fmuladd.f64(double %398, double %398, double %404)
  br i1 %205, label %432, label %406

406:                                              ; preds = %397
  %407 = fcmp olt double %405, 1.000000e+00
  br i1 %407, label %408, label %464

408:                                              ; preds = %406
  %409 = xor i32 %176, 1
  %410 = zext i32 %409 to i64
  %411 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %410
  %412 = load double, ptr %411, align 8, !tbaa !28
  %413 = fsub double %412, %163
  %414 = fdiv double %413, %23
  %415 = xor i32 %191, 1
  %416 = zext i32 %415 to i64
  %417 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %416
  %418 = load double, ptr %417, align 8, !tbaa !28
  %419 = fsub double %418, %178
  %420 = fdiv double %419, %27
  %421 = fmul double %420, %420
  %422 = tail call double @llvm.fmuladd.f64(double %414, double %414, double %421)
  %423 = xor i32 %206, 1
  %424 = zext i32 %423 to i64
  %425 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %424
  %426 = load double, ptr %425, align 8, !tbaa !28
  %427 = fsub double %426, %193
  %428 = fdiv double %427, %31
  %429 = tail call double @llvm.fmuladd.f64(double %428, double %428, double %422)
  %430 = fcmp ogt double %429, 1.000000e+00
  br i1 %430, label %431, label %464

431:                                              ; preds = %408
  br label %464

432:                                              ; preds = %397
  %433 = zext i32 %206 to i64
  %434 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %433
  %435 = load double, ptr %434, align 8, !tbaa !28
  %436 = fsub double %435, %193
  %437 = fdiv double %436, %31
  %438 = tail call double @llvm.fmuladd.f64(double %437, double %437, double %405)
  %439 = fcmp olt double %438, 1.000000e+00
  br i1 %439, label %440, label %464

440:                                              ; preds = %432
  %441 = xor i32 %176, 1
  %442 = zext i32 %441 to i64
  %443 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %442
  %444 = load double, ptr %443, align 8, !tbaa !28
  %445 = fsub double %444, %163
  %446 = fdiv double %445, %23
  %447 = xor i32 %191, 1
  %448 = zext i32 %447 to i64
  %449 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %448
  %450 = load double, ptr %449, align 8, !tbaa !28
  %451 = fsub double %450, %178
  %452 = fdiv double %451, %27
  %453 = fmul double %452, %452
  %454 = tail call double @llvm.fmuladd.f64(double %446, double %446, double %453)
  %455 = xor i32 %206, 1
  %456 = zext i32 %455 to i64
  %457 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %456
  %458 = load double, ptr %457, align 8, !tbaa !28
  %459 = fsub double %458, %193
  %460 = fdiv double %459, %31
  %461 = tail call double @llvm.fmuladd.f64(double %460, double %460, double %454)
  %462 = fcmp ogt double %461, 1.000000e+00
  br i1 %462, label %463, label %464

463:                                              ; preds = %440
  br label %464

464:                                              ; preds = %463, %440, %432, %431, %408, %406, %396, %373, %363, %362, %339, %336, %329, %306, %296, %295, %272, %269, %263, %240, %233, %232, %209
  %465 = phi i32 [ 1, %232 ], [ %18, %209 ], [ 1, %263 ], [ %18, %240 ], [ %18, %233 ], [ 1, %295 ], [ %18, %272 ], [ %18, %269 ], [ 1, %329 ], [ %18, %306 ], [ %18, %296 ], [ 1, %362 ], [ %18, %339 ], [ %18, %336 ], [ 1, %396 ], [ %18, %373 ], [ %18, %363 ], [ 1, %431 ], [ %18, %408 ], [ %18, %406 ], [ 1, %463 ], [ %18, %440 ], [ %18, %432 ]
  %466 = icmp ne i32 %34, 2
  %467 = icmp ne i32 %465, 0
  %468 = and i1 %466, %467
  br i1 %468, label %469, label %930

469:                                              ; preds = %464
  switch i32 %34, label %930 [
    i32 4, label %470
    i32 6, label %473
    i32 8, label %474
    i32 10, label %477
    i32 12, label %478
    i32 14, label %482
  ]

470:                                              ; preds = %469
  %471 = load double, ptr %5, align 8, !tbaa !28
  %472 = fcmp olt double %471, %163
  br i1 %472, label %930, label %481

473:                                              ; preds = %469
  br i1 %165, label %930, label %481

474:                                              ; preds = %469
  %475 = load double, ptr %6, align 8, !tbaa !28
  %476 = fcmp olt double %475, %178
  br i1 %476, label %930, label %481

477:                                              ; preds = %469
  br i1 %180, label %930, label %481

478:                                              ; preds = %469
  %479 = load double, ptr %8, align 8, !tbaa !28
  %480 = fcmp olt double %479, %193
  br i1 %480, label %930, label %481

481:                                              ; preds = %478, %477, %474, %473, %470
  br label %930

482:                                              ; preds = %469
  br i1 %195, label %483, label %930

483:                                              ; preds = %482
  br label %930

484:                                              ; preds = %155
  %485 = add i32 %34, -16
  %486 = icmp ult i32 %485, -13
  %487 = or i1 %486, %159
  br i1 %487, label %614, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2
  %490 = load double, ptr %489, align 8, !tbaa !28
  %491 = load double, ptr %0, align 8, !tbaa !28
  %492 = fcmp olt double %490, %491
  br i1 %492, label %497, label %493

493:                                              ; preds = %488
  %494 = load double, ptr %5, align 8, !tbaa !28
  %495 = fcmp ogt double %490, %494
  %496 = select i1 %495, i32 1, i32 %17
  br label %497

497:                                              ; preds = %493, %488
  %498 = phi i1 [ true, %488 ], [ %495, %493 ]
  %499 = phi i32 [ 0, %488 ], [ %496, %493 ]
  %500 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 1
  %501 = load double, ptr %500, align 8, !tbaa !28
  %502 = load double, ptr %7, align 8, !tbaa !28
  %503 = fcmp olt double %501, %502
  br i1 %503, label %508, label %504

504:                                              ; preds = %497
  %505 = load double, ptr %6, align 8, !tbaa !28
  %506 = fcmp ogt double %501, %505
  %507 = select i1 %506, i32 1, i32 %16
  br label %508

508:                                              ; preds = %504, %497
  %509 = phi i1 [ true, %497 ], [ %506, %504 ]
  %510 = phi i32 [ 0, %497 ], [ %507, %504 ]
  %511 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 2
  %512 = load double, ptr %511, align 8, !tbaa !28
  %513 = load double, ptr %9, align 8, !tbaa !28
  %514 = fcmp olt double %512, %513
  br i1 %514, label %519, label %515

515:                                              ; preds = %508
  %516 = load double, ptr %8, align 8, !tbaa !28
  %517 = fcmp ogt double %512, %516
  %518 = select i1 %517, i32 1, i32 %15
  br label %519

519:                                              ; preds = %515, %508
  %520 = phi i1 [ true, %508 ], [ %517, %515 ]
  %521 = phi i32 [ 0, %508 ], [ %518, %515 ]
  br i1 %498, label %552, label %522

522:                                              ; preds = %519
  br i1 %509, label %532, label %523

523:                                              ; preds = %522
  br i1 %520, label %524, label %594

524:                                              ; preds = %523
  %525 = sext i32 %521 to i64
  %526 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %525
  %527 = load double, ptr %526, align 8, !tbaa !28
  %528 = fsub double %527, %512
  %529 = tail call double @llvm.fabs.f64(double %528)
  %530 = fcmp olt double %529, %31
  br i1 %530, label %531, label %594

531:                                              ; preds = %524
  br label %594

532:                                              ; preds = %522
  %533 = sext i32 %510 to i64
  %534 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %533
  %535 = load double, ptr %534, align 8, !tbaa !28
  %536 = fsub double %535, %501
  br i1 %520, label %541, label %537

537:                                              ; preds = %532
  %538 = tail call double @llvm.fabs.f64(double %536)
  %539 = fcmp olt double %538, %27
  br i1 %539, label %540, label %594

540:                                              ; preds = %537
  br label %594

541:                                              ; preds = %532
  %542 = fdiv double %536, %27
  %543 = sext i32 %521 to i64
  %544 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %543
  %545 = load double, ptr %544, align 8, !tbaa !28
  %546 = fsub double %545, %512
  %547 = fdiv double %546, %31
  %548 = fmul double %547, %547
  %549 = tail call double @llvm.fmuladd.f64(double %542, double %542, double %548)
  %550 = fcmp olt double %549, 1.000000e+00
  br i1 %550, label %551, label %594

551:                                              ; preds = %541
  br label %594

552:                                              ; preds = %519
  %553 = sext i32 %499 to i64
  %554 = getelementptr inbounds [2 x double], ptr %0, i64 0, i64 %553
  %555 = load double, ptr %554, align 8, !tbaa !28
  %556 = fsub double %555, %490
  br i1 %509, label %573, label %557

557:                                              ; preds = %552
  br i1 %520, label %562, label %558

558:                                              ; preds = %557
  %559 = tail call double @llvm.fabs.f64(double %556)
  %560 = fcmp olt double %559, %23
  br i1 %560, label %561, label %594

561:                                              ; preds = %558
  br label %594

562:                                              ; preds = %557
  %563 = fdiv double %556, %23
  %564 = sext i32 %521 to i64
  %565 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %564
  %566 = load double, ptr %565, align 8, !tbaa !28
  %567 = fsub double %566, %512
  %568 = fdiv double %567, %31
  %569 = fmul double %568, %568
  %570 = tail call double @llvm.fmuladd.f64(double %563, double %563, double %569)
  %571 = fcmp olt double %570, 1.000000e+00
  br i1 %571, label %572, label %594

572:                                              ; preds = %562
  br label %594

573:                                              ; preds = %552
  %574 = fdiv double %556, %23
  %575 = sext i32 %510 to i64
  %576 = getelementptr inbounds [2 x double], ptr %0, i64 1, i64 %575
  %577 = load double, ptr %576, align 8, !tbaa !28
  %578 = fsub double %577, %501
  %579 = fdiv double %578, %27
  %580 = fmul double %579, %579
  %581 = tail call double @llvm.fmuladd.f64(double %574, double %574, double %580)
  br i1 %520, label %585, label %582

582:                                              ; preds = %573
  %583 = fcmp olt double %581, 1.000000e+00
  br i1 %583, label %584, label %594

584:                                              ; preds = %582
  br label %594

585:                                              ; preds = %573
  %586 = sext i32 %521 to i64
  %587 = getelementptr inbounds [2 x double], ptr %0, i64 2, i64 %586
  %588 = load double, ptr %587, align 8, !tbaa !28
  %589 = fsub double %588, %512
  %590 = fdiv double %589, %31
  %591 = tail call double @llvm.fmuladd.f64(double %590, double %590, double %581)
  %592 = fcmp olt double %591, 1.000000e+00
  br i1 %592, label %593, label %594

593:                                              ; preds = %585
  br label %594

594:                                              ; preds = %593, %585, %584, %582, %572, %562, %561, %558, %551, %541, %540, %537, %531, %524, %523
  %595 = phi i32 [ 1, %531 ], [ %18, %524 ], [ 1, %540 ], [ %18, %537 ], [ 1, %551 ], [ %18, %541 ], [ 1, %561 ], [ %18, %558 ], [ 1, %572 ], [ %18, %562 ], [ 1, %584 ], [ %18, %582 ], [ 1, %593 ], [ %18, %585 ], [ 1, %523 ]
  %596 = icmp ne i32 %34, 3
  %597 = icmp ne i32 %595, 0
  %598 = and i1 %596, %597
  br i1 %598, label %599, label %930

599:                                              ; preds = %594
  switch i32 %34, label %930 [
    i32 5, label %600
    i32 7, label %603
    i32 9, label %604
    i32 11, label %607
    i32 13, label %608
    i32 15, label %612
  ]

600:                                              ; preds = %599
  %601 = load double, ptr %5, align 8, !tbaa !28
  %602 = fcmp olt double %601, %490
  br i1 %602, label %930, label %611

603:                                              ; preds = %599
  br i1 %492, label %930, label %611

604:                                              ; preds = %599
  %605 = load double, ptr %6, align 8, !tbaa !28
  %606 = fcmp olt double %605, %501
  br i1 %606, label %930, label %611

607:                                              ; preds = %599
  br i1 %503, label %930, label %611

608:                                              ; preds = %599
  %609 = load double, ptr %8, align 8, !tbaa !28
  %610 = fcmp olt double %609, %512
  br i1 %610, label %930, label %611

611:                                              ; preds = %608, %607, %604, %603, %600
  br label %930

612:                                              ; preds = %599
  br i1 %514, label %613, label %930

613:                                              ; preds = %612
  br label %930

614:                                              ; preds = %484
  switch i32 %34, label %926 [
    i32 24, label %616
    i32 22, label %615
    i32 20, label %617
    i32 21, label %835
    i32 23, label %833
    i32 25, label %834
  ]

615:                                              ; preds = %614
  br label %617

616:                                              ; preds = %614
  br label %617

617:                                              ; preds = %616, %615, %614
  %618 = phi i64 [ 1, %615 ], [ 2, %616 ], [ 0, %614 ]
  %619 = phi i64 [ 2, %615 ], [ 0, %616 ], [ 1, %614 ]
  %620 = phi i64 [ 0, %615 ], [ 1, %616 ], [ 2, %614 ]
  %621 = getelementptr inbounds [2 x double], ptr %0, i64 %618, i64 1
  %622 = load double, ptr %621, align 8, !tbaa !28
  %623 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2
  %624 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %618
  %625 = load double, ptr %624, align 8, !tbaa !28
  %626 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %618
  %627 = load double, ptr %626, align 8, !tbaa !28
  %628 = fsub double %625, %627
  %629 = fcmp ogt double %622, %628
  br i1 %629, label %630, label %930

630:                                              ; preds = %617
  %631 = getelementptr inbounds [2 x double], ptr %0, i64 %618
  %632 = load double, ptr %631, align 8, !tbaa !28
  %633 = fadd double %625, %627
  %634 = fcmp olt double %632, %633
  br i1 %634, label %635, label %930

635:                                              ; preds = %630
  %636 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %619
  %637 = load double, ptr %636, align 8, !tbaa !28
  %638 = getelementptr inbounds [2 x double], ptr %0, i64 %619
  %639 = load double, ptr %638, align 8, !tbaa !28
  %640 = fcmp olt double %637, %639
  br i1 %640, label %650, label %641

641:                                              ; preds = %635
  %642 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 1
  %643 = load double, ptr %642, align 8, !tbaa !28
  %644 = fcmp ogt double %637, %643
  br i1 %644, label %650, label %645

645:                                              ; preds = %641
  %646 = fadd double %639, %643
  %647 = fmul double %646, 5.000000e-01
  %648 = fcmp uge double %637, %647
  %649 = zext i1 %648 to i32
  br label %650

650:                                              ; preds = %645, %641, %635
  %651 = phi i1 [ true, %635 ], [ true, %641 ], [ false, %645 ]
  %652 = phi i32 [ 0, %635 ], [ 1, %641 ], [ %649, %645 ]
  %653 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %620
  %654 = load double, ptr %653, align 8, !tbaa !28
  %655 = getelementptr inbounds [2 x double], ptr %0, i64 %620
  %656 = load double, ptr %655, align 8, !tbaa !28
  %657 = fcmp olt double %654, %656
  br i1 %657, label %667, label %658

658:                                              ; preds = %650
  %659 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 1
  %660 = load double, ptr %659, align 8, !tbaa !28
  %661 = fcmp ogt double %654, %660
  br i1 %661, label %667, label %662

662:                                              ; preds = %658
  %663 = fadd double %656, %660
  %664 = fmul double %663, 5.000000e-01
  %665 = fcmp uge double %654, %664
  %666 = zext i1 %665 to i32
  br label %667

667:                                              ; preds = %662, %658, %650
  %668 = phi i1 [ true, %650 ], [ true, %658 ], [ false, %662 ]
  %669 = phi i32 [ 0, %650 ], [ 1, %658 ], [ %666, %662 ]
  %670 = load double, ptr %0, align 8, !tbaa !28
  %671 = load double, ptr %623, align 8, !tbaa !28
  %672 = fsub double %671, %23
  %673 = fcmp olt double %670, %672
  br i1 %673, label %674, label %678

674:                                              ; preds = %667
  %675 = load double, ptr %5, align 8, !tbaa !28
  %676 = fadd double %23, %671
  %677 = fcmp olt double %675, %676
  br i1 %677, label %684, label %678

678:                                              ; preds = %674, %667
  %679 = fcmp ogt double %670, %672
  br i1 %679, label %680, label %722

680:                                              ; preds = %678
  %681 = load double, ptr %5, align 8, !tbaa !28
  %682 = fadd double %23, %671
  %683 = fcmp ogt double %681, %682
  br i1 %683, label %684, label %722

684:                                              ; preds = %680, %674
  br i1 %651, label %696, label %685

685:                                              ; preds = %684
  br i1 %668, label %686, label %930

686:                                              ; preds = %685
  %687 = zext i32 %669 to i64
  %688 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %687
  %689 = load double, ptr %688, align 8, !tbaa !28
  %690 = fsub double %689, %654
  %691 = tail call double @llvm.fabs.f64(double %690)
  %692 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %693 = load double, ptr %692, align 8, !tbaa !28
  %694 = fcmp olt double %691, %693
  br i1 %694, label %695, label %930

695:                                              ; preds = %686
  br label %930

696:                                              ; preds = %684
  %697 = zext i32 %652 to i64
  %698 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %697
  %699 = load double, ptr %698, align 8, !tbaa !28
  %700 = fsub double %699, %637
  br i1 %668, label %707, label %701

701:                                              ; preds = %696
  %702 = tail call double @llvm.fabs.f64(double %700)
  %703 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %704 = load double, ptr %703, align 8, !tbaa !28
  %705 = fcmp olt double %702, %704
  br i1 %705, label %706, label %930

706:                                              ; preds = %701
  br label %930

707:                                              ; preds = %696
  %708 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %709 = load double, ptr %708, align 8, !tbaa !28
  %710 = fdiv double %700, %709
  %711 = zext i32 %669 to i64
  %712 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %711
  %713 = load double, ptr %712, align 8, !tbaa !28
  %714 = fsub double %713, %654
  %715 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %716 = load double, ptr %715, align 8, !tbaa !28
  %717 = fdiv double %714, %716
  %718 = fmul double %717, %717
  %719 = tail call double @llvm.fmuladd.f64(double %710, double %710, double %718)
  %720 = fcmp olt double %719, 1.000000e+00
  br i1 %720, label %721, label %930

721:                                              ; preds = %707
  br label %930

722:                                              ; preds = %680, %678
  br i1 %651, label %773, label %723

723:                                              ; preds = %722
  br i1 %668, label %745, label %724

724:                                              ; preds = %723
  %725 = xor i32 %652, 1
  %726 = zext i32 %725 to i64
  %727 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %726
  %728 = load double, ptr %727, align 8, !tbaa !28
  %729 = fsub double %728, %637
  %730 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %731 = load double, ptr %730, align 8, !tbaa !28
  %732 = fdiv double %729, %731
  %733 = xor i32 %669, 1
  %734 = zext i32 %733 to i64
  %735 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %734
  %736 = load double, ptr %735, align 8, !tbaa !28
  %737 = fsub double %736, %654
  %738 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %739 = load double, ptr %738, align 8, !tbaa !28
  %740 = fdiv double %737, %739
  %741 = fmul double %740, %740
  %742 = tail call double @llvm.fmuladd.f64(double %732, double %732, double %741)
  %743 = fcmp ogt double %742, 1.000000e+00
  br i1 %743, label %744, label %930

744:                                              ; preds = %724
  br label %930

745:                                              ; preds = %723
  %746 = zext i32 %669 to i64
  %747 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %746
  %748 = load double, ptr %747, align 8, !tbaa !28
  %749 = fsub double %748, %654
  %750 = tail call double @llvm.fabs.f64(double %749)
  %751 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %752 = load double, ptr %751, align 8, !tbaa !28
  %753 = fcmp olt double %750, %752
  br i1 %753, label %754, label %930

754:                                              ; preds = %745
  %755 = xor i32 %652, 1
  %756 = zext i32 %755 to i64
  %757 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %756
  %758 = load double, ptr %757, align 8, !tbaa !28
  %759 = fsub double %758, %637
  %760 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %761 = load double, ptr %760, align 8, !tbaa !28
  %762 = fdiv double %759, %761
  %763 = xor i32 %669, 1
  %764 = zext i32 %763 to i64
  %765 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %764
  %766 = load double, ptr %765, align 8, !tbaa !28
  %767 = fsub double %766, %654
  %768 = fdiv double %767, %752
  %769 = fmul double %768, %768
  %770 = tail call double @llvm.fmuladd.f64(double %762, double %762, double %769)
  %771 = fcmp ogt double %770, 1.000000e+00
  br i1 %771, label %772, label %930

772:                                              ; preds = %754
  br label %930

773:                                              ; preds = %722
  %774 = zext i32 %652 to i64
  %775 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %774
  %776 = load double, ptr %775, align 8, !tbaa !28
  %777 = fsub double %776, %637
  br i1 %668, label %802, label %778

778:                                              ; preds = %773
  %779 = tail call double @llvm.fabs.f64(double %777)
  %780 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %781 = load double, ptr %780, align 8, !tbaa !28
  %782 = fcmp olt double %779, %781
  br i1 %782, label %783, label %930

783:                                              ; preds = %778
  %784 = xor i32 %652, 1
  %785 = zext i32 %784 to i64
  %786 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %785
  %787 = load double, ptr %786, align 8, !tbaa !28
  %788 = fsub double %787, %637
  %789 = fdiv double %788, %781
  %790 = xor i32 %669, 1
  %791 = zext i32 %790 to i64
  %792 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %791
  %793 = load double, ptr %792, align 8, !tbaa !28
  %794 = fsub double %793, %654
  %795 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %796 = load double, ptr %795, align 8, !tbaa !28
  %797 = fdiv double %794, %796
  %798 = fmul double %797, %797
  %799 = tail call double @llvm.fmuladd.f64(double %789, double %789, double %798)
  %800 = fcmp ogt double %799, 1.000000e+00
  br i1 %800, label %801, label %930

801:                                              ; preds = %783
  br label %930

802:                                              ; preds = %773
  %803 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %619
  %804 = load double, ptr %803, align 8, !tbaa !28
  %805 = fdiv double %777, %804
  %806 = zext i32 %669 to i64
  %807 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %806
  %808 = load double, ptr %807, align 8, !tbaa !28
  %809 = fsub double %808, %654
  %810 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %620
  %811 = load double, ptr %810, align 8, !tbaa !28
  %812 = fdiv double %809, %811
  %813 = fmul double %812, %812
  %814 = tail call double @llvm.fmuladd.f64(double %805, double %805, double %813)
  %815 = fcmp olt double %814, 1.000000e+00
  br i1 %815, label %816, label %930

816:                                              ; preds = %802
  %817 = xor i32 %652, 1
  %818 = zext i32 %817 to i64
  %819 = getelementptr inbounds [2 x double], ptr %0, i64 %619, i64 %818
  %820 = load double, ptr %819, align 8, !tbaa !28
  %821 = fsub double %820, %637
  %822 = fdiv double %821, %804
  %823 = xor i32 %669, 1
  %824 = zext i32 %823 to i64
  %825 = getelementptr inbounds [2 x double], ptr %0, i64 %620, i64 %824
  %826 = load double, ptr %825, align 8, !tbaa !28
  %827 = fsub double %826, %654
  %828 = fdiv double %827, %811
  %829 = fmul double %828, %828
  %830 = tail call double @llvm.fmuladd.f64(double %822, double %822, double %829)
  %831 = fcmp ogt double %830, 1.000000e+00
  br i1 %831, label %832, label %930

832:                                              ; preds = %816
  br label %930

833:                                              ; preds = %614
  br label %835

834:                                              ; preds = %614
  br label %835

835:                                              ; preds = %834, %833, %614
  %836 = phi i64 [ 1, %833 ], [ 2, %834 ], [ 0, %614 ]
  %837 = phi i64 [ 2, %833 ], [ 0, %834 ], [ 1, %614 ]
  %838 = phi i64 [ 0, %833 ], [ 1, %834 ], [ 2, %614 ]
  %839 = getelementptr inbounds [2 x double], ptr %0, i64 %836, i64 1
  %840 = load double, ptr %839, align 8, !tbaa !28
  %841 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %836
  %842 = load double, ptr %841, align 8, !tbaa !28
  %843 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %836
  %844 = load double, ptr %843, align 8, !tbaa !28
  %845 = fsub double %842, %844
  %846 = fcmp ogt double %840, %845
  br i1 %846, label %847, label %930

847:                                              ; preds = %835
  %848 = getelementptr inbounds [2 x double], ptr %0, i64 %836
  %849 = load double, ptr %848, align 8, !tbaa !28
  %850 = fadd double %842, %844
  %851 = fcmp olt double %849, %850
  br i1 %851, label %852, label %930

852:                                              ; preds = %847
  %853 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %837
  %854 = load double, ptr %853, align 8, !tbaa !28
  %855 = getelementptr inbounds [2 x double], ptr %0, i64 %837
  %856 = load double, ptr %855, align 8, !tbaa !28
  %857 = fcmp olt double %854, %856
  br i1 %857, label %867, label %858

858:                                              ; preds = %852
  %859 = getelementptr inbounds [2 x double], ptr %0, i64 %837, i64 1
  %860 = load double, ptr %859, align 8, !tbaa !28
  %861 = fcmp ogt double %854, %860
  %862 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %838
  %863 = load double, ptr %862, align 8, !tbaa !28
  %864 = getelementptr inbounds [2 x double], ptr %0, i64 %838
  %865 = load double, ptr %864, align 8, !tbaa !28
  %866 = fcmp olt double %863, %865
  br i1 %866, label %881, label %877

867:                                              ; preds = %852
  %868 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 2, i64 %838
  %869 = load double, ptr %868, align 8, !tbaa !28
  %870 = getelementptr inbounds [2 x double], ptr %0, i64 %838
  %871 = load double, ptr %870, align 8, !tbaa !28
  %872 = fcmp olt double %869, %871
  br i1 %872, label %904, label %873

873:                                              ; preds = %867
  %874 = getelementptr inbounds [2 x double], ptr %0, i64 %838, i64 1
  %875 = load double, ptr %874, align 8, !tbaa !28
  %876 = fcmp ogt double %869, %875
  br i1 %876, label %904, label %895

877:                                              ; preds = %858
  %878 = getelementptr inbounds [2 x double], ptr %0, i64 %838, i64 1
  %879 = load double, ptr %878, align 8, !tbaa !28
  %880 = fcmp ogt double %863, %879
  br i1 %861, label %894, label %882

881:                                              ; preds = %858
  br i1 %861, label %904, label %883

882:                                              ; preds = %877
  br i1 %880, label %883, label %930

883:                                              ; preds = %882, %881
  %884 = phi i32 [ 1, %882 ], [ 0, %881 ]
  %885 = zext i32 %884 to i64
  %886 = getelementptr inbounds [2 x double], ptr %0, i64 %838, i64 %885
  %887 = load double, ptr %886, align 8, !tbaa !28
  %888 = fsub double %887, %863
  %889 = tail call double @llvm.fabs.f64(double %888)
  %890 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %838
  %891 = load double, ptr %890, align 8, !tbaa !28
  %892 = fcmp olt double %889, %891
  br i1 %892, label %893, label %930

893:                                              ; preds = %883
  br label %930

894:                                              ; preds = %877
  br i1 %880, label %904, label %895

895:                                              ; preds = %894, %873
  %896 = phi double [ %860, %894 ], [ %856, %873 ]
  %897 = phi i32 [ 1, %894 ], [ 0, %873 ]
  %898 = fsub double %896, %854
  %899 = tail call double @llvm.fabs.f64(double %898)
  %900 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %837
  %901 = load double, ptr %900, align 8, !tbaa !28
  %902 = fcmp olt double %899, %901
  br i1 %902, label %903, label %930

903:                                              ; preds = %895
  br label %930

904:                                              ; preds = %894, %881, %873, %867
  %905 = phi double [ %863, %894 ], [ %863, %881 ], [ %869, %867 ], [ %869, %873 ]
  %906 = phi i32 [ 1, %894 ], [ 1, %881 ], [ 0, %867 ], [ 0, %873 ]
  %907 = phi i32 [ 1, %894 ], [ 0, %881 ], [ 0, %867 ], [ 1, %873 ]
  %908 = zext i32 %906 to i64
  %909 = getelementptr inbounds [2 x double], ptr %0, i64 %837, i64 %908
  %910 = load double, ptr %909, align 8, !tbaa !28
  %911 = fsub double %910, %854
  %912 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %837
  %913 = load double, ptr %912, align 8, !tbaa !28
  %914 = fdiv double %911, %913
  %915 = zext i32 %907 to i64
  %916 = getelementptr inbounds [2 x double], ptr %0, i64 %838, i64 %915
  %917 = load double, ptr %916, align 8, !tbaa !28
  %918 = fsub double %917, %905
  %919 = getelementptr inbounds %struct.object, ptr %13, i64 %14, i32 6, i64 %838
  %920 = load double, ptr %919, align 8, !tbaa !28
  %921 = fdiv double %918, %920
  %922 = fmul double %921, %921
  %923 = tail call double @llvm.fmuladd.f64(double %914, double %914, double %922)
  %924 = fcmp olt double %923, 1.000000e+00
  br i1 %924, label %925, label %930

925:                                              ; preds = %904
  br label %930

926:                                              ; preds = %614
  %927 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.30, i32 noundef %34) #22
  %928 = load ptr, ptr @objects, align 8, !tbaa !11
  %929 = load i32, ptr @num_objects, align 4, !tbaa !7
  br label %930

930:                                              ; preds = %926, %925, %904, %903, %895, %893, %883, %882, %847, %835, %832, %816, %802, %801, %783, %778, %772, %754, %745, %744, %724, %721, %707, %706, %701, %695, %686, %685, %630, %617, %613, %612, %611, %608, %607, %604, %603, %600, %599, %594, %483, %482, %481, %478, %477, %474, %473, %470, %469, %464, %154, %150, %144, %140, %134, %130, %124, %123, %119, %111, %105, %104, %100, %94, %90, %76, %72, %66, %62, %56, %41, %35, %29, %25, %21, %11
  %931 = phi i32 [ %12, %11 ], [ %12, %21 ], [ %12, %25 ], [ %12, %29 ], [ %12, %76 ], [ %12, %72 ], [ %12, %66 ], [ %12, %62 ], [ %12, %56 ], [ %12, %104 ], [ %12, %100 ], [ %12, %94 ], [ %12, %90 ], [ %12, %123 ], [ %12, %119 ], [ %12, %111 ], [ %12, %105 ], [ %12, %41 ], [ %12, %35 ], [ %12, %154 ], [ %12, %150 ], [ %12, %144 ], [ %12, %140 ], [ %12, %134 ], [ %12, %130 ], [ %12, %124 ], [ %12, %613 ], [ %12, %612 ], [ %12, %594 ], [ %12, %695 ], [ %12, %686 ], [ %12, %706 ], [ %12, %701 ], [ %12, %721 ], [ %12, %707 ], [ %12, %744 ], [ %12, %724 ], [ %12, %772 ], [ %12, %754 ], [ %12, %745 ], [ %12, %801 ], [ %12, %783 ], [ %12, %778 ], [ %12, %832 ], [ %12, %816 ], [ %12, %802 ], [ %12, %630 ], [ %12, %617 ], [ %12, %893 ], [ %12, %883 ], [ %12, %903 ], [ %12, %895 ], [ %12, %925 ], [ %12, %904 ], [ %12, %847 ], [ %12, %835 ], [ %929, %926 ], [ %12, %483 ], [ %12, %482 ], [ %12, %464 ], [ %12, %470 ], [ %12, %473 ], [ %12, %474 ], [ %12, %477 ], [ %12, %478 ], [ %12, %600 ], [ %12, %603 ], [ %12, %604 ], [ %12, %607 ], [ %12, %608 ], [ %12, %685 ], [ %12, %882 ], [ %12, %481 ], [ %12, %611 ], [ %12, %469 ], [ %12, %599 ]
  %932 = phi ptr [ %13, %11 ], [ %13, %21 ], [ %13, %25 ], [ %13, %29 ], [ %13, %76 ], [ %13, %72 ], [ %13, %66 ], [ %13, %62 ], [ %13, %56 ], [ %13, %104 ], [ %13, %100 ], [ %13, %94 ], [ %13, %90 ], [ %13, %123 ], [ %13, %119 ], [ %13, %111 ], [ %13, %105 ], [ %13, %41 ], [ %13, %35 ], [ %13, %154 ], [ %13, %150 ], [ %13, %144 ], [ %13, %140 ], [ %13, %134 ], [ %13, %130 ], [ %13, %124 ], [ %13, %613 ], [ %13, %612 ], [ %13, %594 ], [ %13, %695 ], [ %13, %686 ], [ %13, %706 ], [ %13, %701 ], [ %13, %721 ], [ %13, %707 ], [ %13, %744 ], [ %13, %724 ], [ %13, %772 ], [ %13, %754 ], [ %13, %745 ], [ %13, %801 ], [ %13, %783 ], [ %13, %778 ], [ %13, %832 ], [ %13, %816 ], [ %13, %802 ], [ %13, %630 ], [ %13, %617 ], [ %13, %893 ], [ %13, %883 ], [ %13, %903 ], [ %13, %895 ], [ %13, %925 ], [ %13, %904 ], [ %13, %847 ], [ %13, %835 ], [ %928, %926 ], [ %13, %483 ], [ %13, %482 ], [ %13, %464 ], [ %13, %470 ], [ %13, %473 ], [ %13, %474 ], [ %13, %477 ], [ %13, %478 ], [ %13, %600 ], [ %13, %603 ], [ %13, %604 ], [ %13, %607 ], [ %13, %608 ], [ %13, %685 ], [ %13, %882 ], [ %13, %481 ], [ %13, %611 ], [ %13, %469 ], [ %13, %599 ]
  %933 = phi i32 [ %18, %11 ], [ %18, %21 ], [ %18, %25 ], [ %18, %29 ], [ 1, %76 ], [ %18, %72 ], [ %18, %66 ], [ %18, %62 ], [ %18, %56 ], [ 1, %104 ], [ %18, %100 ], [ %18, %94 ], [ %18, %90 ], [ 1, %123 ], [ %18, %119 ], [ %18, %111 ], [ %18, %105 ], [ %18, %41 ], [ %18, %35 ], [ 1, %154 ], [ %18, %150 ], [ %18, %144 ], [ %18, %140 ], [ %18, %134 ], [ %18, %130 ], [ %18, %124 ], [ %18, %613 ], [ %595, %612 ], [ %595, %594 ], [ 1, %695 ], [ %18, %686 ], [ 1, %706 ], [ %18, %701 ], [ 1, %721 ], [ %18, %707 ], [ 1, %744 ], [ %18, %724 ], [ 1, %772 ], [ %18, %754 ], [ %18, %745 ], [ 1, %801 ], [ %18, %783 ], [ %18, %778 ], [ 1, %832 ], [ %18, %816 ], [ %18, %802 ], [ %18, %630 ], [ %18, %617 ], [ 1, %893 ], [ %18, %883 ], [ 1, %903 ], [ %18, %895 ], [ 1, %925 ], [ %18, %904 ], [ %18, %847 ], [ %18, %835 ], [ %18, %926 ], [ %18, %483 ], [ %465, %482 ], [ %465, %464 ], [ %18, %470 ], [ %18, %473 ], [ %18, %474 ], [ %18, %477 ], [ %18, %478 ], [ %18, %600 ], [ %18, %603 ], [ %18, %604 ], [ %18, %607 ], [ %18, %608 ], [ 1, %685 ], [ 1, %882 ], [ %465, %481 ], [ %595, %611 ], [ %465, %469 ], [ %595, %599 ]
  %934 = phi i32 [ %17, %11 ], [ %17, %21 ], [ %17, %25 ], [ %17, %29 ], [ %17, %76 ], [ %17, %72 ], [ %17, %66 ], [ %17, %62 ], [ %17, %56 ], [ %17, %104 ], [ %17, %100 ], [ %17, %94 ], [ %17, %90 ], [ %17, %123 ], [ %17, %119 ], [ %17, %111 ], [ %17, %105 ], [ %17, %41 ], [ %17, %35 ], [ %17, %154 ], [ %17, %150 ], [ %17, %144 ], [ %17, %140 ], [ %17, %134 ], [ %17, %130 ], [ %17, %124 ], [ %499, %613 ], [ %499, %612 ], [ %499, %594 ], [ %17, %695 ], [ %17, %686 ], [ %17, %706 ], [ %17, %701 ], [ %17, %721 ], [ %17, %707 ], [ %17, %744 ], [ %17, %724 ], [ %17, %772 ], [ %17, %754 ], [ %17, %745 ], [ %17, %801 ], [ %17, %783 ], [ %17, %778 ], [ %17, %832 ], [ %17, %816 ], [ %17, %802 ], [ %17, %630 ], [ %17, %617 ], [ %17, %893 ], [ %17, %883 ], [ %17, %903 ], [ %17, %895 ], [ %17, %925 ], [ %17, %904 ], [ %17, %847 ], [ %17, %835 ], [ %17, %926 ], [ %176, %483 ], [ %176, %482 ], [ %176, %464 ], [ %176, %470 ], [ %176, %473 ], [ %176, %474 ], [ %176, %477 ], [ %176, %478 ], [ %499, %600 ], [ %499, %603 ], [ %499, %604 ], [ %499, %607 ], [ %499, %608 ], [ %17, %685 ], [ %17, %882 ], [ %176, %481 ], [ %499, %611 ], [ %176, %469 ], [ %499, %599 ]
  %935 = phi i32 [ %16, %11 ], [ %16, %21 ], [ %16, %25 ], [ %16, %29 ], [ %16, %76 ], [ %16, %72 ], [ %16, %66 ], [ %16, %62 ], [ %16, %56 ], [ %16, %104 ], [ %16, %100 ], [ %16, %94 ], [ %16, %90 ], [ %16, %123 ], [ %16, %119 ], [ %16, %111 ], [ %16, %105 ], [ %16, %41 ], [ %16, %35 ], [ %16, %154 ], [ %16, %150 ], [ %16, %144 ], [ %16, %140 ], [ %16, %134 ], [ %16, %130 ], [ %16, %124 ], [ %510, %613 ], [ %510, %612 ], [ %510, %594 ], [ %652, %695 ], [ %652, %686 ], [ %652, %706 ], [ %652, %701 ], [ %652, %721 ], [ %652, %707 ], [ %652, %744 ], [ %652, %724 ], [ %652, %772 ], [ %652, %754 ], [ %652, %745 ], [ %652, %801 ], [ %652, %783 ], [ %652, %778 ], [ %652, %832 ], [ %652, %816 ], [ %652, %802 ], [ %16, %630 ], [ %16, %617 ], [ %16, %893 ], [ %16, %883 ], [ %897, %903 ], [ %897, %895 ], [ %906, %925 ], [ %906, %904 ], [ %16, %847 ], [ %16, %835 ], [ %16, %926 ], [ %191, %483 ], [ %191, %482 ], [ %191, %464 ], [ %191, %470 ], [ %191, %473 ], [ %191, %474 ], [ %191, %477 ], [ %191, %478 ], [ %510, %600 ], [ %510, %603 ], [ %510, %604 ], [ %510, %607 ], [ %510, %608 ], [ %652, %685 ], [ %16, %882 ], [ %191, %481 ], [ %510, %611 ], [ %191, %469 ], [ %510, %599 ]
  %936 = phi i32 [ %15, %11 ], [ %15, %21 ], [ %15, %25 ], [ %15, %29 ], [ %15, %76 ], [ %15, %72 ], [ %15, %66 ], [ %15, %62 ], [ %15, %56 ], [ %15, %104 ], [ %15, %100 ], [ %15, %94 ], [ %15, %90 ], [ %15, %123 ], [ %15, %119 ], [ %15, %111 ], [ %15, %105 ], [ %15, %41 ], [ %15, %35 ], [ %15, %154 ], [ %15, %150 ], [ %15, %144 ], [ %15, %140 ], [ %15, %134 ], [ %15, %130 ], [ %15, %124 ], [ %521, %613 ], [ %521, %612 ], [ %521, %594 ], [ %669, %695 ], [ %669, %686 ], [ %669, %706 ], [ %669, %701 ], [ %669, %721 ], [ %669, %707 ], [ %669, %744 ], [ %669, %724 ], [ %669, %772 ], [ %669, %754 ], [ %669, %745 ], [ %669, %801 ], [ %669, %783 ], [ %669, %778 ], [ %669, %832 ], [ %669, %816 ], [ %669, %802 ], [ %15, %630 ], [ %15, %617 ], [ %884, %893 ], [ %884, %883 ], [ %15, %903 ], [ %15, %895 ], [ %907, %925 ], [ %907, %904 ], [ %15, %847 ], [ %15, %835 ], [ %15, %926 ], [ %206, %483 ], [ %206, %482 ], [ %206, %464 ], [ %206, %470 ], [ %206, %473 ], [ %206, %474 ], [ %206, %477 ], [ %206, %478 ], [ %521, %600 ], [ %521, %603 ], [ %521, %604 ], [ %521, %607 ], [ %521, %608 ], [ %669, %685 ], [ %15, %882 ], [ %206, %481 ], [ %521, %611 ], [ %206, %469 ], [ %521, %599 ]
  %937 = add nuw nsw i64 %14, 1
  %938 = sext i32 %931 to i64
  %939 = icmp slt i64 %937, %938
  br i1 %939, label %11, label %940, !llvm.loop !179

940:                                              ; preds = %930, %1
  %941 = phi i32 [ 0, %1 ], [ %933, %930 ]
  ret i32 %941
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @plot(i32 noundef %0) #12 {
  %2 = alloca [20 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %2) #21
  store <4 x i8> <i8 112, i8 108, i8 111, i8 116>, ptr %2, align 16, !tbaa !180
  %3 = getelementptr inbounds [20 x i8], ptr %2, i64 0, i64 4
  store i8 46, ptr %3, align 4, !tbaa !180
  %4 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %5 = icmp sgt i32 %4, 1
  br i1 %5, label %11, label %6

6:                                                ; preds = %11, %1
  %7 = phi i32 [ 0, %1 ], [ %14, %11 ]
  %8 = add nuw nsw i32 %7, 5
  %9 = add i32 %7, 1
  %10 = zext i32 %9 to i64
  br label %17

11:                                               ; preds = %11, %1
  %12 = phi i32 [ %14, %11 ], [ 0, %1 ]
  %13 = phi i32 [ %15, %11 ], [ 1, %1 ]
  %14 = add nuw nsw i32 %12, 1
  %15 = mul nuw nsw i32 %13, 10
  %16 = icmp slt i32 %15, %4
  br i1 %16, label %11, label %6, !llvm.loop !181

17:                                               ; preds = %17, %6
  %18 = phi i64 [ 0, %6 ], [ %28, %17 ]
  %19 = phi i32 [ 1, %6 ], [ %29, %17 ]
  %20 = sdiv i32 %0, %19
  %21 = srem i32 %20, 10
  %22 = trunc i32 %21 to i8
  %23 = add nsw i8 %22, 48
  %24 = trunc i64 %18 to i32
  %25 = sub i32 %8, %24
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [20 x i8], ptr %2, i64 0, i64 %26
  store i8 %23, ptr %27, align 1, !tbaa !180
  %28 = add nuw nsw i64 %18, 1
  %29 = mul nsw i32 %19, 10
  %30 = icmp eq i64 %28, %10
  br i1 %30, label %31, label %17, !llvm.loop !182

31:                                               ; preds = %17
  %32 = add nuw nsw i32 %7, 6
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds [20 x i8], ptr %2, i64 0, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !180
  %35 = call noalias ptr @fopen(ptr noundef nonnull %2, ptr noundef nonnull @.str.33) #22
  %36 = load i32, ptr @num_refine, align 4, !tbaa !7
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %50, label %38

38:                                               ; preds = %31
  %39 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  %40 = add nuw i32 %36, 1
  %41 = zext i32 %40 to i64
  br label %42

42:                                               ; preds = %42, %38
  %43 = phi i64 [ 0, %38 ], [ %48, %42 ]
  %44 = phi i32 [ 0, %38 ], [ %47, %42 ]
  %45 = getelementptr inbounds i32, ptr %39, i64 %43
  %46 = load i32, ptr %45, align 4, !tbaa !7
  %47 = add nsw i32 %46, %44
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, %41
  br i1 %49, label %50, label %42, !llvm.loop !183

50:                                               ; preds = %42, %31
  %51 = phi i32 [ 0, %31 ], [ %47, %42 ]
  %52 = load i32, ptr @npx, align 4, !tbaa !7
  %53 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %54 = mul nsw i32 %53, %52
  %55 = load i32, ptr @npy, align 4, !tbaa !7
  %56 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %57 = mul nsw i32 %56, %55
  %58 = load i32, ptr @npz, align 4, !tbaa !7
  %59 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %60 = mul nsw i32 %59, %58
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.1.34, i32 noundef %51, i32 noundef %36, i32 noundef %54, i32 noundef %57, i32 noundef %60) #22
  %62 = load i32, ptr @num_active, align 4, !tbaa !7
  %63 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.2.35, i32 noundef %62) #22
  %64 = load i32, ptr @max_active_block, align 4, !tbaa !7
  %65 = icmp sgt i32 %64, 0
  br i1 %65, label %66, label %93

66:                                               ; preds = %50
  %67 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %68

68:                                               ; preds = %87, %66
  %69 = phi i32 [ %64, %66 ], [ %88, %87 ]
  %70 = phi ptr [ %67, %66 ], [ %89, %87 ]
  %71 = phi i64 [ 0, %66 ], [ %90, %87 ]
  %72 = getelementptr inbounds %struct.block, ptr %70, i64 %71
  %73 = load i32, ptr %72, align 8, !tbaa !13
  %74 = icmp sgt i32 %73, -1
  br i1 %74, label %75, label %87

75:                                               ; preds = %68
  %76 = getelementptr inbounds %struct.block, ptr %70, i64 %71, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !15
  %78 = getelementptr inbounds %struct.block, ptr %70, i64 %71, i32 10
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = getelementptr inbounds %struct.block, ptr %70, i64 %71, i32 10, i64 1
  %81 = load i32, ptr %80, align 4, !tbaa !7
  %82 = getelementptr inbounds %struct.block, ptr %70, i64 %71, i32 10, i64 2
  %83 = load i32, ptr %82, align 4, !tbaa !7
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %35, ptr noundef nonnull @.str.3.36, i32 noundef %77, i32 noundef %79, i32 noundef %81, i32 noundef %83) #22
  %85 = load ptr, ptr @blocks, align 8, !tbaa !11
  %86 = load i32, ptr @max_active_block, align 4, !tbaa !7
  br label %87

87:                                               ; preds = %75, %68
  %88 = phi i32 [ %69, %68 ], [ %86, %75 ]
  %89 = phi ptr [ %70, %68 ], [ %85, %75 ]
  %90 = add nuw nsw i64 %71, 1
  %91 = sext i32 %88 to i64
  %92 = icmp slt i64 %90, %91
  br i1 %92, label %68, label %93, !llvm.loop !184

93:                                               ; preds = %87, %50
  %94 = tail call i32 @fclose(ptr noundef %35) #22
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %2) #21
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind optsize uwtable
define internal void @profile() #12 {
  tail call void @calculate_results() #22
  %1 = load i64, ptr @total_blocks, align 8, !tbaa !143
  %2 = sitofp i64 %1 to double
  %3 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %4 = sitofp i32 %3 to double
  %5 = fmul double %2, %4
  %6 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %7 = sitofp i32 %6 to double
  %8 = fmul double %5, %7
  %9 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %10 = sitofp i32 %9 to double
  %11 = fmul double %8, %10
  %12 = load i32, ptr @stencil, align 4, !tbaa !7
  %13 = icmp eq i32 %12, 7
  %14 = select i1 %13, double 6.000000e+00, double 2.600000e+01
  %15 = fmul double %11, %14
  %16 = fadd double %11, %15
  %17 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 38), align 16, !tbaa !28
  %18 = fmul double %17, 1.024000e+03
  %19 = fmul double %18, 1.024000e+03
  %20 = fmul double %19, 1.024000e+03
  %21 = fdiv double %16, %20
  %22 = load i32, ptr @num_pes, align 4, !tbaa !7
  %23 = sitofp i32 %22 to double
  %24 = fdiv double %21, %23
  %25 = load i32, ptr @my_pe, align 4, !tbaa !7
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %763

27:                                               ; preds = %0
  %28 = load i32, ptr @report_perf, align 4, !tbaa !7
  %29 = and i32 %28, 1
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %236, label %31

31:                                               ; preds = %27
  %32 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.1.39, ptr noundef nonnull @.str.2.40) #22
  %33 = tail call i64 @fwrite(ptr nonnull @.str.3.41, i64 14, i64 1, ptr %32)
  %34 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.4.42, ptr noundef nonnull @.str.43) #22
  %35 = load i32, ptr @num_pes, align 4, !tbaa !7
  %36 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.5.44, i32 noundef %35) #22
  %37 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %38 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.6.45, i32 noundef %37) #22
  %39 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %40 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.7.46, i32 noundef %39) #22
  %41 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %42 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.8.47, i32 noundef %41) #22
  %43 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.9.48, i32 noundef %43) #22
  %45 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.10.49, i32 noundef %45) #22
  %47 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %48 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.11.50, i32 noundef %47) #22
  %49 = load i32, ptr @permute, align 4, !tbaa !7
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.12.51, i32 noundef %49) #22
  %51 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %52 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.13.52, i32 noundef %51) #22
  %53 = load i32, ptr @code, align 4, !tbaa !7
  %54 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.14.53, i32 noundef %53) #22
  %55 = load i32, ptr @num_refine, align 4, !tbaa !7
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.15.54, i32 noundef %55) #22
  %57 = load i32, ptr @block_change, align 4, !tbaa !7
  %58 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.16.55, i32 noundef %57) #22
  %59 = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %60 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.17.56, i32 noundef %59) #22
  %61 = load i32, ptr @uniform_refine, align 4, !tbaa !7
  %62 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.18.57, i32 noundef %61) #22
  %63 = load i32, ptr @num_objects, align 4, !tbaa !7
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.19.58, i32 noundef %63) #22
  %65 = load i32, ptr @num_objects, align 4, !tbaa !7
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %67, label %117

67:                                               ; preds = %67, %31
  %68 = phi i64 [ %113, %67 ], [ 0, %31 ]
  %69 = load ptr, ptr @objects, align 8, !tbaa !11
  %70 = getelementptr inbounds %struct.object, ptr %69, i64 %68
  %71 = load i32, ptr %70, align 8, !tbaa !159
  %72 = trunc i64 %68 to i32
  %73 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.20.59, i32 noundef %72, i32 noundef %71) #22
  %74 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 1
  %75 = load i32, ptr %74, align 4, !tbaa !161
  %76 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.21.60, i32 noundef %72, i32 noundef %75) #22
  %77 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 2
  %78 = load double, ptr %77, align 8, !tbaa !28
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.22.61, i32 noundef %72, double noundef %78) #22
  %80 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 2, i64 1
  %81 = load double, ptr %80, align 8, !tbaa !28
  %82 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.23.62, i32 noundef %72, double noundef %81) #22
  %83 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 2, i64 2
  %84 = load double, ptr %83, align 8, !tbaa !28
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.24.63, i32 noundef %72, double noundef %84) #22
  %86 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 4
  %87 = load double, ptr %86, align 8, !tbaa !28
  %88 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.25.64, i32 noundef %72, double noundef %87) #22
  %89 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 4, i64 1
  %90 = load double, ptr %89, align 8, !tbaa !28
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.26.65, i32 noundef %72, double noundef %90) #22
  %92 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 4, i64 2
  %93 = load double, ptr %92, align 8, !tbaa !28
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.27.66, i32 noundef %72, double noundef %93) #22
  %95 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 6
  %96 = load double, ptr %95, align 8, !tbaa !28
  %97 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.28.67, i32 noundef %72, double noundef %96) #22
  %98 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 6, i64 1
  %99 = load double, ptr %98, align 8, !tbaa !28
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.29.68, i32 noundef %72, double noundef %99) #22
  %101 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 6, i64 2
  %102 = load double, ptr %101, align 8, !tbaa !28
  %103 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.30.69, i32 noundef %72, double noundef %102) #22
  %104 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 8
  %105 = load double, ptr %104, align 8, !tbaa !28
  %106 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.31.70, i32 noundef %72, double noundef %105) #22
  %107 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 8, i64 1
  %108 = load double, ptr %107, align 8, !tbaa !28
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.32.71, i32 noundef %72, double noundef %108) #22
  %110 = getelementptr inbounds %struct.object, ptr %69, i64 %68, i32 8, i64 2
  %111 = load double, ptr %110, align 8, !tbaa !28
  %112 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.33.72, i32 noundef %72, double noundef %111) #22
  %113 = add nuw nsw i64 %68, 1
  %114 = load i32, ptr @num_objects, align 4, !tbaa !7
  %115 = sext i32 %114 to i64
  %116 = icmp slt i64 %113, %115
  br i1 %116, label %67, label %117, !llvm.loop !185

117:                                              ; preds = %67, %31
  %118 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.34, i32 noundef %118) #22
  %120 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.35, i32 noundef %120) #22
  %122 = load i32, ptr @checksum_freq, align 4, !tbaa !7
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.36, i32 noundef %122) #22
  %124 = load i32, ptr @refine_freq, align 4, !tbaa !7
  %125 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.37, i32 noundef %124) #22
  %126 = load i32, ptr @plot_freq, align 4, !tbaa !7
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.38, i32 noundef %126) #22
  %128 = load i32, ptr @num_vars, align 4, !tbaa !7
  %129 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.39, i32 noundef %128) #22
  %130 = load i32, ptr @stencil, align 4, !tbaa !7
  %131 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.40, i32 noundef %130) #22
  %132 = load i32, ptr @comm_vars, align 4, !tbaa !7
  %133 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.41, i32 noundef %132) #22
  %134 = load i32, ptr @error_tol, align 4, !tbaa !7
  %135 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.42, i32 noundef %134) #22
  %136 = load double, ptr @average, align 16, !tbaa !28
  %137 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.43.73, double noundef %136) #22
  %138 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 111), align 8, !tbaa !28
  %139 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.44, double noundef %138) #22
  %140 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 38), align 16, !tbaa !28
  %141 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.45, double noundef %140) #22
  %142 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.46, double noundef %21) #22
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.47, double noundef %24) #22
  %144 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 37), align 8, !tbaa !28
  %145 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.48, double noundef %144) #22
  %146 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 5), align 8, !tbaa !28
  %147 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.49, double noundef %146) #22
  %148 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 6), align 16, !tbaa !28
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.50, double noundef %148) #22
  %150 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 7), align 8, !tbaa !28
  %151 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.51, double noundef %150) #22
  %152 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 75), align 8, !tbaa !28
  %153 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.52, double noundef %152) #22
  %154 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 76), align 16, !tbaa !28
  %155 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.53, double noundef %154) #22
  %156 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 74), align 16, !tbaa !28
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.54, double noundef %156) #22
  %158 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 10), align 16, !tbaa !28
  %159 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.55, double noundef %158) #22
  %160 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 14), align 16, !tbaa !28
  %161 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.56, double noundef %160) #22
  %162 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 15), align 8, !tbaa !28
  %163 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.57, double noundef %162) #22
  %164 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 16), align 16, !tbaa !28
  %165 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.58, double noundef %164) #22
  %166 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 84), align 16, !tbaa !28
  %167 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.59, double noundef %166) #22
  %168 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 85), align 8, !tbaa !28
  %169 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.60, double noundef %168) #22
  %170 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 83), align 8, !tbaa !28
  %171 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.61, double noundef %170) #22
  %172 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 19), align 8, !tbaa !28
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.62, double noundef %172) #22
  %174 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 23), align 8, !tbaa !28
  %175 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.63, double noundef %174) #22
  %176 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 24), align 16, !tbaa !28
  %177 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.64, double noundef %176) #22
  %178 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 25), align 8, !tbaa !28
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.65, double noundef %178) #22
  %180 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 93), align 8, !tbaa !28
  %181 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.66, double noundef %180) #22
  %182 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 94), align 16, !tbaa !28
  %183 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.67, double noundef %182) #22
  %184 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 92), align 16, !tbaa !28
  %185 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.68, double noundef %184) #22
  %186 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 28), align 16, !tbaa !28
  %187 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.69, double noundef %186) #22
  %188 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 32), align 16, !tbaa !28
  %189 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.70, double noundef %188) #22
  %190 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 33), align 8, !tbaa !28
  %191 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.71, double noundef %190) #22
  %192 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 34), align 16, !tbaa !28
  %193 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.72, double noundef %192) #22
  %194 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 102), align 16, !tbaa !28
  %195 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.73, double noundef %194) #22
  %196 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 103), align 8, !tbaa !28
  %197 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.74, double noundef %196) #22
  %198 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 101), align 8, !tbaa !28
  %199 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.75, double noundef %198) #22
  %200 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 39), align 8, !tbaa !28
  %201 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.76, double noundef %200) #22
  %202 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 41), align 8, !tbaa !28
  %203 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.77, double noundef %202) #22
  %204 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 42), align 16, !tbaa !28
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.78, double noundef %204) #22
  %206 = load i64, ptr @total_blocks, align 8, !tbaa !143
  %207 = sitofp i64 %206 to double
  %208 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %209 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %210 = mul nsw i32 %209, %208
  %211 = sitofp i32 %210 to double
  %212 = fdiv double %207, %211
  %213 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.79, double noundef %212) #22
  %214 = load i32, ptr @nb_min, align 4, !tbaa !7
  %215 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.80, i32 noundef %214) #22
  %216 = load i32, ptr @nb_max, align 4, !tbaa !7
  %217 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.81, i32 noundef %216) #22
  %218 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 104), align 16, !tbaa !28
  %219 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.82, double noundef %218) #22
  %220 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 105), align 8, !tbaa !28
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.83, double noundef %220) #22
  %222 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 43), align 8, !tbaa !28
  %223 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.84, double noundef %222) #22
  %224 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 44), align 16, !tbaa !28
  %225 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.85, double noundef %224) #22
  %226 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 46), align 16, !tbaa !28
  %227 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.86, double noundef %226) #22
  %228 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 47), align 8, !tbaa !28
  %229 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.87, double noundef %228) #22
  %230 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 45), align 8, !tbaa !28
  %231 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.88, double noundef %230) #22
  %232 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 67), align 8, !tbaa !28
  %233 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %32, ptr noundef nonnull @.str.89, double noundef %232) #22
  %234 = tail call i32 @fclose(ptr noundef %32) #22
  %235 = load i32, ptr @report_perf, align 4, !tbaa !7
  br label %236

236:                                              ; preds = %117, %27
  %237 = phi i32 [ %235, %117 ], [ %28, %27 ]
  %238 = and i32 %237, 2
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %572, label %240

240:                                              ; preds = %236
  %241 = tail call noalias ptr @fopen(ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.2.40) #22
  %242 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 53, i64 1, ptr %241)
  %243 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 26, i64 1, ptr %241)
  %244 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.93, ptr noundef nonnull @.str.43) #22
  %245 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 21, i64 1, ptr %241)
  %246 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %247 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %248 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %249 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.95, i32 noundef %246, i32 noundef %247, i32 noundef %248) #22
  %250 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %251 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %252 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %253 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.96, i32 noundef %250, i32 noundef %251, i32 noundef %252) #22
  %254 = load i32, ptr @permute, align 4, !tbaa !7
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %258, label %256

256:                                              ; preds = %240
  %257 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 28, i64 1, ptr %241)
  br label %258

258:                                              ; preds = %256, %240
  %259 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %260 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.98, i32 noundef %259) #22
  %261 = load i32, ptr @target_active, align 4, !tbaa !7
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %265, label %263

263:                                              ; preds = %258
  %264 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.99, i32 noundef %261) #22
  br label %265

265:                                              ; preds = %263, %258
  %266 = load i32, ptr @target_max, align 4, !tbaa !7
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %270, label %268

268:                                              ; preds = %265
  %269 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.100, i32 noundef %266) #22
  br label %270

270:                                              ; preds = %268, %265
  %271 = load i32, ptr @target_min, align 4, !tbaa !7
  %272 = icmp eq i32 %271, 0
  br i1 %272, label %275, label %273

273:                                              ; preds = %270
  %274 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.101, i32 noundef %271) #22
  br label %275

275:                                              ; preds = %273, %270
  %276 = load i32, ptr @code, align 4, !tbaa !7
  %277 = icmp eq i32 %276, 0
  br i1 %277, label %280, label %278

278:                                              ; preds = %275
  %279 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.102, i32 noundef %276) #22
  br label %280

280:                                              ; preds = %278, %275
  %281 = load i32, ptr @num_refine, align 4, !tbaa !7
  %282 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.103, i32 noundef %281) #22
  %283 = load i32, ptr @block_change, align 4, !tbaa !7
  %284 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.104, i32 noundef %283) #22
  %285 = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %289, label %287

287:                                              ; preds = %280
  %288 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 55, i64 1, ptr %241)
  br label %289

289:                                              ; preds = %287, %280
  %290 = load i32, ptr @uniform_refine, align 4, !tbaa !7
  %291 = icmp eq i32 %290, 0
  br i1 %291, label %294, label %292

292:                                              ; preds = %289
  %293 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 34, i64 1, ptr %241)
  br label %408

294:                                              ; preds = %289
  %295 = load i32, ptr @num_objects, align 4, !tbaa !7
  %296 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.107, i32 noundef %295) #22
  %297 = load i32, ptr @num_objects, align 4, !tbaa !7
  %298 = icmp sgt i32 %297, 0
  br i1 %298, label %299, label %408

299:                                              ; preds = %323, %294
  %300 = phi i64 [ %404, %323 ], [ 0, %294 ]
  %301 = load ptr, ptr @objects, align 8, !tbaa !11
  %302 = getelementptr inbounds %struct.object, ptr %301, i64 %300
  %303 = load i32, ptr %302, align 8, !tbaa !159
  %304 = icmp ult i32 %303, 26
  br i1 %304, label %305, label %315

305:                                              ; preds = %299
  %306 = lshr i32 66125823, %303
  %307 = and i32 %306, 1
  %308 = icmp eq i32 %307, 0
  br i1 %308, label %315, label %309

309:                                              ; preds = %305
  %310 = sext i32 %303 to i64
  %311 = getelementptr inbounds [26 x ptr], ptr @switch.table.profile.209, i64 0, i64 %310
  %312 = load ptr, ptr %311, align 8
  %313 = trunc i64 %300 to i32
  %314 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull %312, i32 noundef %313) #22
  br label %315

315:                                              ; preds = %309, %305, %299
  %316 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 1
  %317 = load i32, ptr %316, align 4, !tbaa !161
  %318 = icmp eq i32 %317, 0
  br i1 %318, label %319, label %321

319:                                              ; preds = %315
  %320 = tail call i64 @fwrite(ptr nonnull @.str.130, i64 21, i64 1, ptr %241)
  br label %323

321:                                              ; preds = %315
  %322 = tail call i64 @fwrite(ptr nonnull @.str.131, i64 38, i64 1, ptr %241)
  br label %323

323:                                              ; preds = %321, %319
  %324 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 3
  %325 = load double, ptr %324, align 8, !tbaa !28
  %326 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 3, i64 1
  %327 = load double, ptr %326, align 8, !tbaa !28
  %328 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 3, i64 2
  %329 = load double, ptr %328, align 8, !tbaa !28
  %330 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.132, double noundef %325, double noundef %327, double noundef %329) #22
  %331 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 2
  %332 = load double, ptr %331, align 8, !tbaa !28
  %333 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 2, i64 1
  %334 = load double, ptr %333, align 8, !tbaa !28
  %335 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 2, i64 2
  %336 = load double, ptr %335, align 8, !tbaa !28
  %337 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.133, double noundef %332, double noundef %334, double noundef %336) #22
  %338 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 5
  %339 = load double, ptr %338, align 8, !tbaa !28
  %340 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 5, i64 1
  %341 = load double, ptr %340, align 8, !tbaa !28
  %342 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 5, i64 2
  %343 = load double, ptr %342, align 8, !tbaa !28
  %344 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.134, double noundef %339, double noundef %341, double noundef %343) #22
  %345 = load double, ptr %338, align 8, !tbaa !28
  %346 = load i32, ptr @mesh_size, align 4, !tbaa !7
  %347 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %348 = mul nsw i32 %347, %346
  %349 = sitofp i32 %348 to double
  %350 = fmul double %345, %349
  %351 = load double, ptr %340, align 8, !tbaa !28
  %352 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %353 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %354 = mul nsw i32 %353, %352
  %355 = sitofp i32 %354 to double
  %356 = fmul double %351, %355
  %357 = load double, ptr %342, align 8, !tbaa !28
  %358 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %359 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %360 = mul nsw i32 %359, %358
  %361 = sitofp i32 %360 to double
  %362 = fmul double %357, %361
  %363 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.135, double noundef %350, double noundef %356, double noundef %362) #22
  %364 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 7
  %365 = load double, ptr %364, align 8, !tbaa !28
  %366 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 7, i64 1
  %367 = load double, ptr %366, align 8, !tbaa !28
  %368 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 7, i64 2
  %369 = load double, ptr %368, align 8, !tbaa !28
  %370 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.136, double noundef %365, double noundef %367, double noundef %369) #22
  %371 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 6
  %372 = load double, ptr %371, align 8, !tbaa !28
  %373 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 6, i64 1
  %374 = load double, ptr %373, align 8, !tbaa !28
  %375 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 6, i64 2
  %376 = load double, ptr %375, align 8, !tbaa !28
  %377 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.137, double noundef %372, double noundef %374, double noundef %376) #22
  %378 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 8
  %379 = load double, ptr %378, align 8, !tbaa !28
  %380 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 8, i64 1
  %381 = load double, ptr %380, align 8, !tbaa !28
  %382 = getelementptr inbounds %struct.object, ptr %301, i64 %300, i32 8, i64 2
  %383 = load double, ptr %382, align 8, !tbaa !28
  %384 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.138, double noundef %379, double noundef %381, double noundef %383) #22
  %385 = load double, ptr %378, align 8, !tbaa !28
  %386 = load i32, ptr @mesh_size, align 4, !tbaa !7
  %387 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %388 = mul nsw i32 %387, %386
  %389 = sitofp i32 %388 to double
  %390 = fmul double %385, %389
  %391 = load double, ptr %380, align 8, !tbaa !28
  %392 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %393 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %394 = mul nsw i32 %393, %392
  %395 = sitofp i32 %394 to double
  %396 = fmul double %391, %395
  %397 = load double, ptr %382, align 8, !tbaa !28
  %398 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %399 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %400 = mul nsw i32 %399, %398
  %401 = sitofp i32 %400 to double
  %402 = fmul double %397, %401
  %403 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.139, double noundef %390, double noundef %396, double noundef %402) #22
  %404 = add nuw nsw i64 %300, 1
  %405 = load i32, ptr @num_objects, align 4, !tbaa !7
  %406 = sext i32 %405 to i64
  %407 = icmp slt i64 %404, %406
  br i1 %407, label %299, label %408, !llvm.loop !186

408:                                              ; preds = %323, %294, %292
  %409 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %410 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.140, i32 noundef %409) #22
  %411 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %412 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.141, i32 noundef %411) #22
  %413 = load i32, ptr @checksum_freq, align 4, !tbaa !7
  %414 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.142, i32 noundef %413) #22
  %415 = load i32, ptr @refine_freq, align 4, !tbaa !7
  %416 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.143, i32 noundef %415) #22
  %417 = load i32, ptr @plot_freq, align 4, !tbaa !7
  %418 = icmp eq i32 %417, 0
  br i1 %418, label %421, label %419

419:                                              ; preds = %408
  %420 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.144, i32 noundef %417) #22
  br label %423

421:                                              ; preds = %408
  %422 = tail call i64 @fwrite(ptr nonnull @.str.145, i64 22, i64 1, ptr %241)
  br label %423

423:                                              ; preds = %421, %419
  %424 = load i32, ptr @num_vars, align 4, !tbaa !7
  %425 = load i32, ptr @stencil, align 4, !tbaa !7
  %426 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.146, i32 noundef %424, i32 noundef %425) #22
  %427 = load i32, ptr @comm_vars, align 4, !tbaa !7
  %428 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.147, i32 noundef %427) #22
  %429 = load i32, ptr @error_tol, align 4, !tbaa !7
  %430 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.148, i32 noundef %429) #22
  %431 = load double, ptr @average, align 16, !tbaa !28
  %432 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.149, double noundef %431) #22
  %433 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 110), align 16, !tbaa !28
  %434 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.150, double noundef %433) #22
  %435 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 111), align 8, !tbaa !28
  %436 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.151, double noundef %435) #22
  %437 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 46, i64 1, ptr %241)
  %438 = tail call i64 @fwrite(ptr nonnull @.str.153, i64 36, i64 1, ptr %241)
  %439 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 47, i64 1, ptr %241)
  %440 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 38), align 16, !tbaa !28
  %441 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.155, double noundef %440) #22
  %442 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.156, double noundef %21) #22
  %443 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.157, double noundef %24) #22
  %444 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.158, double noundef %16) #22
  %445 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.159, double noundef %15) #22
  %446 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.160, double noundef %11) #22
  %447 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 46, i64 1, ptr %241)
  %448 = tail call i64 @fwrite(ptr nonnull @.str.161, i64 36, i64 1, ptr %241)
  %449 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 47, i64 1, ptr %241)
  %450 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 37), align 8, !tbaa !28
  %451 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.155, double noundef %450) #22
  br label %452

452:                                              ; preds = %463, %423
  %453 = phi i64 [ 0, %423 ], [ %494, %463 ]
  %454 = trunc i64 %453 to i32
  switch i32 %454, label %461 [
    i32 0, label %455
    i32 1, label %457
    i32 2, label %459
  ]

455:                                              ; preds = %452
  %456 = tail call i64 @fwrite(ptr nonnull @.str.162, i64 23, i64 1, ptr %241)
  br label %463

457:                                              ; preds = %452
  %458 = tail call i64 @fwrite(ptr nonnull @.str.163, i64 40, i64 1, ptr %241)
  br label %463

459:                                              ; preds = %452
  %460 = tail call i64 @fwrite(ptr nonnull @.str.164, i64 40, i64 1, ptr %241)
  br label %463

461:                                              ; preds = %452
  %462 = tail call i64 @fwrite(ptr nonnull @.str.165, i64 40, i64 1, ptr %241)
  br label %463

463:                                              ; preds = %461, %459, %457, %455
  %464 = tail call i64 @fwrite(ptr nonnull @.str.166, i64 66, i64 1, ptr %241)
  %465 = mul nuw nsw i64 %453, 9
  %466 = add nuw nsw i64 %465, 1
  %467 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %466
  %468 = load double, ptr %467, align 8, !tbaa !28
  %469 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.167, double noundef %468) #22
  %470 = add nuw nsw i64 %465, 5
  %471 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %470
  %472 = load double, ptr %471, align 8, !tbaa !28
  %473 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.168, double noundef %472) #22
  %474 = add nuw nsw i64 %465, 6
  %475 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %474
  %476 = load double, ptr %475, align 8, !tbaa !28
  %477 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.169, double noundef %476) #22
  %478 = add nuw nsw i64 %465, 7
  %479 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %478
  %480 = load double, ptr %479, align 8, !tbaa !28
  %481 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.170, double noundef %480) #22
  %482 = add nuw nsw i64 %465, 75
  %483 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %482
  %484 = load double, ptr %483, align 8, !tbaa !28
  %485 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.171, double noundef %484) #22
  %486 = add nuw nsw i64 %465, 76
  %487 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %486
  %488 = load double, ptr %487, align 8, !tbaa !28
  %489 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.172, double noundef %488) #22
  %490 = add nuw nsw i64 %465, 74
  %491 = getelementptr inbounds [128 x double], ptr @average, i64 0, i64 %490
  %492 = load double, ptr %491, align 8, !tbaa !28
  %493 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.173, double noundef %492) #22
  %494 = add nuw nsw i64 %453, 1
  %495 = icmp eq i64 %494, 4
  br i1 %495, label %496, label %452, !llvm.loop !187

496:                                              ; preds = %463
  %497 = tail call i64 @fwrite(ptr nonnull @.str.174, i64 47, i64 1, ptr %241)
  %498 = tail call i64 @fwrite(ptr nonnull @.str.175, i64 33, i64 1, ptr %241)
  %499 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 47, i64 1, ptr %241)
  %500 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 39), align 8, !tbaa !28
  %501 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.155, double noundef %500) #22
  %502 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 41), align 8, !tbaa !28
  %503 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.176, double noundef %502) #22
  %504 = load i32, ptr @total_red, align 4, !tbaa !7
  %505 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.177, i32 noundef %504) #22
  %506 = load i32, ptr @num_vars, align 4, !tbaa !7
  %507 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.178, i32 noundef %506) #22
  %508 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 46, i64 1, ptr %241)
  %509 = tail call i64 @fwrite(ptr nonnull @.str.179, i64 31, i64 1, ptr %241)
  %510 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 47, i64 1, ptr %241)
  %511 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 42), align 16, !tbaa !28
  %512 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.155, double noundef %511) #22
  %513 = load i32, ptr @nrs, align 4, !tbaa !7
  %514 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.180, i32 noundef %513) #22
  %515 = load i64, ptr @total_blocks, align 8, !tbaa !143
  %516 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.181, i64 noundef %515) #22
  %517 = load i64, ptr @total_blocks, align 8, !tbaa !143
  %518 = sitofp i64 %517 to double
  %519 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %520 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %521 = mul nsw i32 %520, %519
  %522 = sitofp i32 %521 to double
  %523 = fdiv double %518, %522
  %524 = load i32, ptr @nb_min, align 4, !tbaa !7
  %525 = load i32, ptr @nb_max, align 4, !tbaa !7
  %526 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.182, double noundef %523, i32 noundef %524, i32 noundef %525) #22
  %527 = load i32, ptr @global_max_b, align 4, !tbaa !7
  %528 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.183, i32 noundef %527) #22
  %529 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 104), align 16, !tbaa !28
  %530 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.184, double noundef %529) #22
  %531 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 105), align 8, !tbaa !28
  %532 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.185, double noundef %531) #22
  %533 = tail call i64 @fwrite(ptr nonnull @.str.186, i64 11, i64 1, ptr %241)
  %534 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 43), align 8, !tbaa !28
  %535 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.187, double noundef %534) #22
  %536 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 44), align 16, !tbaa !28
  %537 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.188, double noundef %536) #22
  %538 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 46), align 16, !tbaa !28
  %539 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.189, double noundef %538) #22
  %540 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 47), align 8, !tbaa !28
  %541 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.190, double noundef %540) #22
  %542 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 45), align 8, !tbaa !28
  %543 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.191, double noundef %542) #22
  %544 = load i32, ptr @target_active, align 4, !tbaa !7
  %545 = icmp eq i32 %544, 0
  br i1 %545, label %561, label %546

546:                                              ; preds = %496
  %547 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 52), align 16, !tbaa !28
  %548 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.192, double noundef %547) #22
  %549 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 53), align 8, !tbaa !28
  %550 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.193, double noundef %549) #22
  %551 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 54), align 16, !tbaa !28
  %552 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.194, double noundef %551) #22
  %553 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 58), align 16, !tbaa !28
  %554 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.195, double noundef %553) #22
  %555 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 59), align 8, !tbaa !28
  %556 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.196, double noundef %555) #22
  %557 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 60), align 16, !tbaa !28
  %558 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.194, double noundef %557) #22
  %559 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 61), align 8, !tbaa !28
  %560 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.197, double noundef %559) #22
  br label %561

561:                                              ; preds = %546, %496
  %562 = tail call i64 @fwrite(ptr nonnull @.str.152, i64 46, i64 1, ptr %241)
  %563 = tail call i64 @fwrite(ptr nonnull @.str.198, i64 24, i64 1, ptr %241)
  %564 = tail call i64 @fwrite(ptr nonnull @.str.154, i64 47, i64 1, ptr %241)
  %565 = load double, ptr getelementptr inbounds ([128 x double], ptr @average, i64 0, i64 67), align 8, !tbaa !28
  %566 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.155, double noundef %565) #22
  %567 = load i32, ptr @nps, align 4, !tbaa !7
  %568 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %241, ptr noundef nonnull @.str.199, i32 noundef %567) #22
  %569 = tail call i64 @fwrite(ptr nonnull @.str.200, i64 52, i64 1, ptr %241)
  %570 = tail call i32 @fclose(ptr noundef %241) #22
  %571 = load i32, ptr @report_perf, align 4, !tbaa !7
  br label %572

572:                                              ; preds = %561, %236
  %573 = phi i32 [ %571, %561 ], [ %237, %236 ]
  %574 = and i32 %573, 4
  %575 = icmp eq i32 %574, 0
  br i1 %575, label %763, label %576

576:                                              ; preds = %572
  %577 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.74)
  %578 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.201)
  %579 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.93, ptr noundef nonnull @.str.43) #22
  %580 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.202)
  %581 = load i32, ptr @init_block_x, align 4, !tbaa !7
  %582 = load i32, ptr @init_block_y, align 4, !tbaa !7
  %583 = load i32, ptr @init_block_z, align 4, !tbaa !7
  %584 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.95, i32 noundef %581, i32 noundef %582, i32 noundef %583) #22
  %585 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %586 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %587 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %588 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.96, i32 noundef %585, i32 noundef %586, i32 noundef %587) #22
  %589 = load i32, ptr @permute, align 4, !tbaa !7
  %590 = icmp eq i32 %589, 0
  br i1 %590, label %593, label %591

591:                                              ; preds = %576
  %592 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.208)
  br label %593

593:                                              ; preds = %591, %576
  %594 = load i32, ptr @max_num_blocks, align 4, !tbaa !7
  %595 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.98, i32 noundef %594) #22
  %596 = load i32, ptr @target_active, align 4, !tbaa !7
  %597 = icmp eq i32 %596, 0
  br i1 %597, label %600, label %598

598:                                              ; preds = %593
  %599 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.99, i32 noundef %596) #22
  br label %600

600:                                              ; preds = %598, %593
  %601 = load i32, ptr @target_max, align 4, !tbaa !7
  %602 = icmp eq i32 %601, 0
  br i1 %602, label %605, label %603

603:                                              ; preds = %600
  %604 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.100, i32 noundef %601) #22
  br label %605

605:                                              ; preds = %603, %600
  %606 = load i32, ptr @target_min, align 4, !tbaa !7
  %607 = icmp eq i32 %606, 0
  br i1 %607, label %610, label %608

608:                                              ; preds = %605
  %609 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.101, i32 noundef %606) #22
  br label %610

610:                                              ; preds = %608, %605
  %611 = load i32, ptr @code, align 4, !tbaa !7
  %612 = icmp eq i32 %611, 0
  br i1 %612, label %615, label %613

613:                                              ; preds = %610
  %614 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.102, i32 noundef %611) #22
  br label %615

615:                                              ; preds = %613, %610
  %616 = load i32, ptr @num_refine, align 4, !tbaa !7
  %617 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.103, i32 noundef %616) #22
  %618 = load i32, ptr @block_change, align 4, !tbaa !7
  %619 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.104, i32 noundef %618) #22
  %620 = load i32, ptr @refine_ghost, align 4, !tbaa !7
  %621 = icmp eq i32 %620, 0
  br i1 %621, label %624, label %622

622:                                              ; preds = %615
  %623 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.207)
  br label %624

624:                                              ; preds = %622, %615
  %625 = load i32, ptr @uniform_refine, align 4, !tbaa !7
  %626 = icmp eq i32 %625, 0
  br i1 %626, label %629, label %627

627:                                              ; preds = %624
  %628 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.206)
  br label %740

629:                                              ; preds = %624
  %630 = load i32, ptr @num_objects, align 4, !tbaa !7
  %631 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.107, i32 noundef %630) #22
  %632 = load i32, ptr @num_objects, align 4, !tbaa !7
  %633 = icmp sgt i32 %632, 0
  br i1 %633, label %634, label %740

634:                                              ; preds = %650, %629
  %635 = phi i64 [ %736, %650 ], [ 0, %629 ]
  %636 = load ptr, ptr @objects, align 8, !tbaa !11
  %637 = getelementptr inbounds %struct.object, ptr %636, i64 %635
  %638 = load i32, ptr %637, align 8, !tbaa !159
  %639 = icmp ult i32 %638, 26
  br i1 %639, label %640, label %650

640:                                              ; preds = %634
  %641 = lshr i32 66125823, %638
  %642 = and i32 %641, 1
  %643 = icmp eq i32 %642, 0
  br i1 %643, label %650, label %644

644:                                              ; preds = %640
  %645 = sext i32 %638 to i64
  %646 = getelementptr inbounds [26 x ptr], ptr @switch.table.profile.209, i64 0, i64 %645
  %647 = load ptr, ptr %646, align 8
  %648 = trunc i64 %635 to i32
  %649 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) %647, i32 noundef %648) #22
  br label %650

650:                                              ; preds = %644, %640, %634
  %651 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 1
  %652 = load i32, ptr %651, align 4, !tbaa !161
  %653 = icmp eq i32 %652, 0
  %654 = select i1 %653, ptr @str.205, ptr @str.204
  %655 = tail call i32 @puts(ptr nonnull dereferenceable(1) %654)
  %656 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 3
  %657 = load double, ptr %656, align 8, !tbaa !28
  %658 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 3, i64 1
  %659 = load double, ptr %658, align 8, !tbaa !28
  %660 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 3, i64 2
  %661 = load double, ptr %660, align 8, !tbaa !28
  %662 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.132, double noundef %657, double noundef %659, double noundef %661) #22
  %663 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 2
  %664 = load double, ptr %663, align 8, !tbaa !28
  %665 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 2, i64 1
  %666 = load double, ptr %665, align 8, !tbaa !28
  %667 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 2, i64 2
  %668 = load double, ptr %667, align 8, !tbaa !28
  %669 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.133, double noundef %664, double noundef %666, double noundef %668) #22
  %670 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 5
  %671 = load double, ptr %670, align 8, !tbaa !28
  %672 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 5, i64 1
  %673 = load double, ptr %672, align 8, !tbaa !28
  %674 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 5, i64 2
  %675 = load double, ptr %674, align 8, !tbaa !28
  %676 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.134, double noundef %671, double noundef %673, double noundef %675) #22
  %677 = load double, ptr %670, align 8, !tbaa !28
  %678 = load i32, ptr @mesh_size, align 4, !tbaa !7
  %679 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %680 = mul nsw i32 %679, %678
  %681 = sitofp i32 %680 to double
  %682 = fmul double %677, %681
  %683 = load double, ptr %672, align 8, !tbaa !28
  %684 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %685 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %686 = mul nsw i32 %685, %684
  %687 = sitofp i32 %686 to double
  %688 = fmul double %683, %687
  %689 = load double, ptr %674, align 8, !tbaa !28
  %690 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %691 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %692 = mul nsw i32 %691, %690
  %693 = sitofp i32 %692 to double
  %694 = fmul double %689, %693
  %695 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.135, double noundef %682, double noundef %688, double noundef %694) #22
  %696 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 7
  %697 = load double, ptr %696, align 8, !tbaa !28
  %698 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 7, i64 1
  %699 = load double, ptr %698, align 8, !tbaa !28
  %700 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 7, i64 2
  %701 = load double, ptr %700, align 8, !tbaa !28
  %702 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.136, double noundef %697, double noundef %699, double noundef %701) #22
  %703 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 6
  %704 = load double, ptr %703, align 8, !tbaa !28
  %705 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 6, i64 1
  %706 = load double, ptr %705, align 8, !tbaa !28
  %707 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 6, i64 2
  %708 = load double, ptr %707, align 8, !tbaa !28
  %709 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.137, double noundef %704, double noundef %706, double noundef %708) #22
  %710 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 8
  %711 = load double, ptr %710, align 8, !tbaa !28
  %712 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 8, i64 1
  %713 = load double, ptr %712, align 8, !tbaa !28
  %714 = getelementptr inbounds %struct.object, ptr %636, i64 %635, i32 8, i64 2
  %715 = load double, ptr %714, align 8, !tbaa !28
  %716 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.138, double noundef %711, double noundef %713, double noundef %715) #22
  %717 = load double, ptr %710, align 8, !tbaa !28
  %718 = load i32, ptr @mesh_size, align 4, !tbaa !7
  %719 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %720 = mul nsw i32 %719, %718
  %721 = sitofp i32 %720 to double
  %722 = fmul double %717, %721
  %723 = load double, ptr %712, align 8, !tbaa !28
  %724 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 1), align 4, !tbaa !7
  %725 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %726 = mul nsw i32 %725, %724
  %727 = sitofp i32 %726 to double
  %728 = fmul double %723, %727
  %729 = load double, ptr %714, align 8, !tbaa !28
  %730 = load i32, ptr getelementptr inbounds ([3 x i32], ptr @mesh_size, i64 0, i64 2), align 4, !tbaa !7
  %731 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %732 = mul nsw i32 %731, %730
  %733 = sitofp i32 %732 to double
  %734 = fmul double %729, %733
  %735 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.139, double noundef %722, double noundef %728, double noundef %734) #22
  %736 = add nuw nsw i64 %635, 1
  %737 = load i32, ptr @num_objects, align 4, !tbaa !7
  %738 = sext i32 %737 to i64
  %739 = icmp slt i64 %736, %738
  br i1 %739, label %634, label %740, !llvm.loop !188

740:                                              ; preds = %650, %629, %627
  %741 = load i32, ptr @num_tsteps, align 4, !tbaa !7
  %742 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.140, i32 noundef %741) #22
  %743 = load i32, ptr @stages_per_ts, align 4, !tbaa !7
  %744 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.141, i32 noundef %743) #22
  %745 = load i32, ptr @checksum_freq, align 4, !tbaa !7
  %746 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.142, i32 noundef %745) #22
  %747 = load i32, ptr @refine_freq, align 4, !tbaa !7
  %748 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.143, i32 noundef %747) #22
  %749 = load i32, ptr @plot_freq, align 4, !tbaa !7
  %750 = icmp eq i32 %749, 0
  br i1 %750, label %753, label %751

751:                                              ; preds = %740
  %752 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.144, i32 noundef %749) #22
  br label %755

753:                                              ; preds = %740
  %754 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.203)
  br label %755

755:                                              ; preds = %753, %751
  %756 = load i32, ptr @num_vars, align 4, !tbaa !7
  %757 = load i32, ptr @stencil, align 4, !tbaa !7
  %758 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.146, i32 noundef %756, i32 noundef %757) #22
  %759 = load i32, ptr @comm_vars, align 4, !tbaa !7
  %760 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.147, i32 noundef %759) #22
  %761 = load i32, ptr @error_tol, align 4, !tbaa !7
  %762 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.148, i32 noundef %761) #22
  br label %763

763:                                              ; preds = %755, %572, %0
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal void @calculate_results() #14 {
  %1 = alloca [128 x double], align 16
  call void @llvm.lifetime.start.p0(i64 1024, ptr nonnull %1) #21
  %2 = load double, ptr @timer_all, align 8, !tbaa !28
  store double %2, ptr %1, align 16, !tbaa !28
  %3 = getelementptr inbounds i8, ptr %1, i64 8
  %4 = getelementptr inbounds i8, ptr %1, i64 16
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %4, i8 0, i64 64, i1 false), !tbaa !28
  %5 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 5
  %6 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 7
  br label %7

7:                                                ; preds = %7, %0
  %8 = phi i64 [ 0, %0 ], [ %34, %7 ]
  %9 = phi double [ 0.000000e+00, %0 ], [ %17, %7 ]
  %10 = phi double [ 0.000000e+00, %0 ], [ %33, %7 ]
  %11 = phi <2 x double> [ zeroinitializer, %0 ], [ %28, %7 ]
  %12 = getelementptr inbounds [3 x double], ptr @timer_comm_dir, i64 0, i64 %8
  %13 = load double, ptr %12, align 8, !tbaa !28
  %14 = mul nuw nsw i64 %8, 9
  %15 = add nuw nsw i64 %14, 10
  %16 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %15
  store double %13, ptr %16, align 8, !tbaa !28
  %17 = fadd double %13, %9
  %18 = getelementptr inbounds [3 x double], ptr @timer_comm_same, i64 0, i64 %8
  %19 = load double, ptr %18, align 8, !tbaa !28
  %20 = add nuw nsw i64 %14, 14
  %21 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %20
  store double %19, ptr %21, align 8, !tbaa !28
  %22 = getelementptr inbounds [3 x double], ptr @timer_comm_diff, i64 0, i64 %8
  %23 = load double, ptr %22, align 8, !tbaa !28
  %24 = add nuw nsw i64 %14, 15
  %25 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %24
  store double %23, ptr %25, align 8, !tbaa !28
  %26 = insertelement <2 x double> poison, double %19, i64 0
  %27 = insertelement <2 x double> %26, double %23, i64 1
  %28 = fadd <2 x double> %27, %11
  %29 = getelementptr inbounds [3 x double], ptr @timer_comm_bc, i64 0, i64 %8
  %30 = load double, ptr %29, align 8, !tbaa !28
  %31 = add nuw nsw i64 %14, 16
  %32 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %31
  store double %30, ptr %32, align 8, !tbaa !28
  %33 = fadd double %30, %10
  %34 = add nuw nsw i64 %8, 1
  %35 = icmp eq i64 %34, 3
  br i1 %35, label %36, label %7, !llvm.loop !189

36:                                               ; preds = %7
  %.lcssa4 = phi double [ %17, %7 ]
  %.lcssa3 = phi <2 x double> [ %28, %7 ]
  %.lcssa2 = phi double [ %33, %7 ]
  store double %.lcssa4, ptr %3, align 8, !tbaa !28
  store <2 x double> %.lcssa3, ptr %5, align 8, !tbaa !28
  store double %.lcssa2, ptr %6, align 8, !tbaa !28
  %37 = load double, ptr @timer_comm_all, align 8, !tbaa !28
  %38 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 37
  store double %37, ptr %38, align 8, !tbaa !28
  %39 = load double, ptr @timer_calc_all, align 8, !tbaa !28
  %40 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 38
  store double %39, ptr %40, align 16, !tbaa !28
  %41 = load double, ptr @timer_cs_all, align 8, !tbaa !28
  %42 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 39
  store double %41, ptr %42, align 8, !tbaa !28
  %43 = load double, ptr @timer_cs_calc, align 8, !tbaa !28
  %44 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 41
  store double %43, ptr %44, align 8, !tbaa !28
  %45 = load double, ptr @timer_refine_all, align 8, !tbaa !28
  %46 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 42
  store double %45, ptr %46, align 16, !tbaa !28
  %47 = load double, ptr @timer_refine_co, align 8, !tbaa !28
  %48 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 43
  store double %47, ptr %48, align 8, !tbaa !28
  %49 = load double, ptr @timer_refine_mr, align 8, !tbaa !28
  %50 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 44
  store double %49, ptr %50, align 16, !tbaa !28
  %51 = load double, ptr @timer_refine_cc, align 8, !tbaa !28
  %52 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 45
  store double %51, ptr %52, align 8, !tbaa !28
  %53 = load double, ptr @timer_refine_sb, align 8, !tbaa !28
  %54 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 46
  store double %53, ptr %54, align 16, !tbaa !28
  %55 = load double, ptr @timer_cb_all, align 8, !tbaa !28
  %56 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 47
  store double %55, ptr %56, align 8, !tbaa !28
  %57 = load double, ptr @timer_target_all, align 8, !tbaa !28
  %58 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 52
  store double %57, ptr %58, align 16, !tbaa !28
  %59 = load double, ptr @timer_target_rb, align 8, !tbaa !28
  %60 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 53
  store double %59, ptr %60, align 8, !tbaa !28
  %61 = load double, ptr @timer_target_dc, align 8, !tbaa !28
  %62 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 54
  store double %61, ptr %62, align 16, !tbaa !28
  %63 = load double, ptr @timer_target_cb, align 8, !tbaa !28
  %64 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 58
  store double %63, ptr %64, align 16, !tbaa !28
  %65 = load double, ptr @timer_target_ab, align 8, !tbaa !28
  %66 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 59
  store double %65, ptr %66, align 8, !tbaa !28
  %67 = load double, ptr @timer_target_da, align 8, !tbaa !28
  %68 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 60
  store double %67, ptr %68, align 16, !tbaa !28
  %69 = load double, ptr @timer_target_sb, align 8, !tbaa !28
  %70 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 61
  store double %69, ptr %70, align 8, !tbaa !28
  %71 = load double, ptr @timer_plot, align 8, !tbaa !28
  %72 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 67
  store double %71, ptr %72, align 8, !tbaa !28
  %73 = getelementptr inbounds i8, ptr %1, i64 544
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %73, i8 0, i64 48, i1 false), !tbaa !28
  br label %74

74:                                               ; preds = %74, %36
  %75 = phi i64 [ 0, %36 ], [ %95, %74 ]
  %76 = phi double [ 0.000000e+00, %36 ], [ %94, %74 ]
  %77 = phi <2 x double> [ zeroinitializer, %36 ], [ %88, %74 ]
  %78 = getelementptr inbounds [3 x i32], ptr @counter_bc, i64 0, i64 %75
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = mul nuw nsw i64 %75, 9
  %81 = add nuw nsw i64 %80, 83
  %82 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %81
  %83 = getelementptr inbounds [3 x i32], ptr @counter_same, i64 0, i64 %75
  %84 = load i32, ptr %83, align 4, !tbaa !7
  %85 = insertelement <2 x i32> poison, i32 %79, i64 0
  %86 = insertelement <2 x i32> %85, i32 %84, i64 1
  %87 = sitofp <2 x i32> %86 to <2 x double>
  store <2 x double> %87, ptr %82, align 8, !tbaa !28
  %88 = fadd <2 x double> %77, %87
  %89 = getelementptr inbounds [3 x i32], ptr @counter_diff, i64 0, i64 %75
  %90 = load i32, ptr %89, align 4, !tbaa !7
  %91 = sitofp i32 %90 to double
  %92 = add nuw nsw i64 %80, 85
  %93 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 %92
  store double %91, ptr %93, align 8, !tbaa !28
  %94 = fadd double %76, %91
  %95 = add nuw nsw i64 %75, 1
  %96 = icmp eq i64 %95, 3
  br i1 %96, label %97, label %74, !llvm.loop !190

97:                                               ; preds = %74
  %.lcssa1 = phi <2 x double> [ %88, %74 ]
  %.lcssa = phi double [ %94, %74 ]
  %98 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 76
  %99 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 74
  store <2 x double> %.lcssa1, ptr %99, align 16, !tbaa !28
  store double %.lcssa, ptr %98, align 16, !tbaa !28
  %100 = load i32, ptr @num_refined, align 4, !tbaa !7
  %101 = sitofp i32 %100 to double
  %102 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 104
  store double %101, ptr %102, align 16, !tbaa !28
  %103 = load i32, ptr @num_reformed, align 4, !tbaa !7
  %104 = sitofp i32 %103 to double
  %105 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 105
  store double %104, ptr %105, align 8, !tbaa !28
  %106 = load i32, ptr @counter_malloc, align 4, !tbaa !7
  %107 = sitofp i32 %106 to double
  %108 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 110
  store double %107, ptr %108, align 16, !tbaa !28
  %109 = load double, ptr @size_malloc, align 8, !tbaa !28
  %110 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 111
  store double %109, ptr %110, align 8, !tbaa !28
  %111 = load i32, ptr @counter_malloc_init, align 4, !tbaa !7
  %112 = sitofp i32 %111 to double
  %113 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 112
  store double %112, ptr %113, align 16, !tbaa !28
  %114 = load double, ptr @size_malloc_init, align 8, !tbaa !28
  %115 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 113
  store double %114, ptr %115, align 8, !tbaa !28
  %116 = sub nsw i32 %106, %111
  %117 = sitofp i32 %116 to double
  %118 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 114
  store double %117, ptr %118, align 16, !tbaa !28
  %119 = fsub double %109, %114
  %120 = getelementptr inbounds [128 x double], ptr %1, i64 0, i64 115
  store double %119, ptr %120, align 8, !tbaa !28
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(1024) @average, ptr noundef nonnull align 16 dereferenceable(1024) %1, i64 1024, i1 false), !tbaa !28
  call void @llvm.lifetime.end.p0(i64 1024, ptr nonnull %1) #21
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #16

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @init_profile() #17 {
  store double 0.000000e+00, ptr @timer_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_comm_all, align 8, !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @timer_comm_dir, i8 0, i64 24, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @timer_comm_same, i8 0, i64 24, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @timer_comm_diff, i8 0, i64 24, i1 false), !tbaa !28
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) @timer_comm_bc, i8 0, i64 24, i1 false), !tbaa !28
  store double 0.000000e+00, ptr @timer_calc_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_cs_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_cs_calc, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_refine_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_refine_co, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_refine_mr, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_refine_cc, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_refine_sb, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_cb_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_all, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_rb, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_dc, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_cb, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_ab, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_da, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_target_sb, align 8, !tbaa !28
  store double 0.000000e+00, ptr @timer_plot, align 8, !tbaa !28
  store i64 0, ptr @total_blocks, align 8, !tbaa !143
  store i32 0, ptr @nrs, align 4, !tbaa !7
  store i32 0, ptr @nps, align 4, !tbaa !7
  store i32 0, ptr @num_refined, align 4, !tbaa !7
  store i32 0, ptr @num_reformed, align 4, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @counter_bc, i8 0, i64 12, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @counter_same, i8 0, i64 12, i1 false), !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) @counter_diff, i8 0, i64 12, i1 false), !tbaa !7
  store i32 0, ptr @total_red, align 4, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @refine(i32 noundef %0) #0 {
  %2 = tail call double @timer() #24
  %3 = icmp eq i32 %0, 0
  %4 = load i32, ptr @num_refine, align 4
  %5 = load i32, ptr @block_change, align 4
  %6 = select i1 %3, i32 %4, i32 %5
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %10, label %97

8:                                                ; preds = %74
  %9 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %8, %1
  %11 = phi i32 [ %9, %8 ], [ %4, %1 ]
  %12 = phi i32 [ %95, %8 ], [ 0, %1 ]
  %13 = phi double [ %94, %8 ], [ 0.000000e+00, %1 ]
  %14 = icmp sgt i32 %11, -1
  br i1 %14, label %15, label %27

15:                                               ; preds = %10
  %16 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  br label %17

17:                                               ; preds = %24, %15
  %18 = phi i32 [ %11, %15 ], [ %25, %24 ]
  %19 = zext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %17
  %.lcssa = phi i32 [ %18, %17 ]
  store i32 %.lcssa, ptr @cur_max_level, align 4, !tbaa !7
  br label %27

24:                                               ; preds = %17
  %25 = add nsw i32 %18, -1
  %26 = icmp sgt i32 %18, 0
  br i1 %26, label %17, label %27, !llvm.loop !191

27:                                               ; preds = %24, %23, %10
  tail call void @reset_all() #22
  %28 = load i32, ptr @uniform_refine, align 4, !tbaa !7
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %65, label %30

30:                                               ; preds = %27
  %31 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %32 = load i32, ptr @num_refine, align 4, !tbaa !7
  %33 = add nsw i32 %32, 1
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, ptr %31, i64 %34
  %36 = load i32, ptr %35, align 4, !tbaa !7
  %37 = icmp sgt i32 %36, 0
  br i1 %37, label %38, label %74

38:                                               ; preds = %30
  %39 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %40 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %41

41:                                               ; preds = %56, %38
  %42 = phi i64 [ 0, %38 ], [ %57, %56 ]
  %43 = phi i32 [ %32, %38 ], [ %58, %56 ]
  %44 = getelementptr inbounds %struct.sorted_block, ptr %39, i64 %42, i32 1
  %45 = load i32, ptr %44, align 4, !tbaa !52
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.block, ptr %40, i64 %46
  %48 = load i32, ptr %47, align 8, !tbaa !13
  %49 = icmp sgt i32 %48, -1
  br i1 %49, label %50, label %56

50:                                               ; preds = %41
  %51 = getelementptr inbounds %struct.block, ptr %40, i64 %46, i32 1
  %52 = load i32, ptr %51, align 4, !tbaa !15
  %53 = icmp slt i32 %52, %43
  %54 = getelementptr inbounds %struct.block, ptr %40, i64 %46, i32 2
  %55 = zext i1 %53 to i32
  store i32 %55, ptr %54, align 8, !tbaa !16
  br label %56

56:                                               ; preds = %50, %41
  %57 = add nuw nsw i64 %42, 1
  %58 = load i32, ptr @num_refine, align 4, !tbaa !7
  %59 = add nsw i32 %58, 1
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, ptr %31, i64 %60
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %57, %63
  br i1 %64, label %41, label %74, !llvm.loop !192

65:                                               ; preds = %27
  %66 = tail call double @timer() #24
  tail call void @check_objects() #24
  %67 = tail call double @timer() #24
  %68 = fsub double %67, %66
  %69 = load double, ptr @timer_refine_co, align 8, !tbaa !28
  %70 = fadd double %69, %68
  store double %70, ptr @timer_refine_co, align 8, !tbaa !28
  %71 = tail call double @timer() #24
  %72 = fsub double %71, %66
  %73 = fadd double %13, %72
  br label %74

74:                                               ; preds = %65, %56, %30
  %75 = phi double [ %73, %65 ], [ %13, %30 ], [ %13, %56 ]
  %76 = tail call double @timer() #24
  %77 = tail call i32 @refine_level() #22
  %78 = tail call double @timer() #24
  %79 = fsub double %78, %76
  %80 = load double, ptr @timer_refine_mr, align 8, !tbaa !28
  %81 = fadd double %80, %79
  store double %81, ptr @timer_refine_mr, align 8, !tbaa !28
  %82 = fadd double %75, %79
  %83 = tail call double @timer() #24
  tail call void @split_blocks() #24
  %84 = tail call double @timer() #24
  %85 = fsub double %84, %83
  %86 = load double, ptr @timer_refine_sb, align 8, !tbaa !28
  %87 = fadd double %86, %85
  store double %87, ptr @timer_refine_sb, align 8, !tbaa !28
  %88 = fadd double %82, %85
  %89 = tail call double @timer() #24
  tail call void @consolidate_blocks() #24
  %90 = tail call double @timer() #24
  %91 = fsub double %90, %89
  %92 = load double, ptr @timer_cb_all, align 8, !tbaa !28
  %93 = fadd double %92, %91
  store double %93, ptr @timer_cb_all, align 8, !tbaa !28
  %94 = fadd double %88, %91
  %95 = add nuw nsw i32 %12, 1
  %96 = icmp eq i32 %95, %6
  br i1 %96, label %97, label %8, !llvm.loop !193

97:                                               ; preds = %74, %1
  %98 = phi double [ 0.000000e+00, %1 ], [ %94, %74 ]
  %99 = load i32, ptr @target_active, align 4, !tbaa !7
  %100 = icmp ne i32 %99, 0
  %101 = load i32, ptr @target_max, align 4
  %102 = icmp ne i32 %101, 0
  %103 = select i1 %100, i1 true, i1 %102
  %104 = load i32, ptr @target_min, align 4
  %105 = icmp ne i32 %104, 0
  %106 = select i1 %103, i1 true, i1 %105
  br i1 %106, label %107, label %181

107:                                              ; preds = %97
  %108 = load i32, ptr @my_pe, align 4, !tbaa !7
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %110, label %126

110:                                              ; preds = %107
  %111 = load i32, ptr @num_refine, align 4, !tbaa !7
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %113, %110
  %114 = phi i64 [ %120, %113 ], [ 0, %110 ]
  %115 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  %116 = getelementptr inbounds i32, ptr %115, i64 %114
  %117 = load i32, ptr %116, align 4, !tbaa !7
  %118 = trunc i64 %114 to i32
  %119 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.201, i32 noundef %118, i32 noundef %0, i32 noundef %117) #22
  %120 = add nuw nsw i64 %114, 1
  %121 = load i32, ptr @num_refine, align 4, !tbaa !7
  %122 = sext i32 %121 to i64
  %123 = icmp slt i64 %114, %122
  br i1 %123, label %113, label %124, !llvm.loop !194

124:                                              ; preds = %113, %110
  %125 = tail call i32 @putchar(i32 10)
  br label %126

126:                                              ; preds = %124, %107
  %127 = tail call double @timer() #24
  %128 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  %129 = load i32, ptr %128, align 4, !tbaa !7
  store i32 %129, ptr @global_active, align 4, !tbaa !7
  %130 = load i32, ptr @num_refine, align 4, !tbaa !7
  %131 = icmp slt i32 %130, 1
  br i1 %131, label %143, label %132

132:                                              ; preds = %126
  %133 = add nuw i32 %130, 1
  %134 = zext i32 %133 to i64
  br label %135

135:                                              ; preds = %135, %132
  %136 = phi i64 [ 1, %132 ], [ %141, %135 ]
  %137 = phi i32 [ %129, %132 ], [ %140, %135 ]
  %138 = getelementptr inbounds i32, ptr %128, i64 %136
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = add nsw i32 %137, %139
  store i32 %140, ptr @global_active, align 4, !tbaa !7
  %141 = add nuw nsw i64 %136, 1
  %142 = icmp eq i64 %141, %134
  br i1 %142, label %143, label %135, !llvm.loop !195

143:                                              ; preds = %135, %126
  %144 = phi i32 [ %129, %126 ], [ %140, %135 ]
  %145 = load i32, ptr @target_active, align 4, !tbaa !7
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %152, label %147

147:                                              ; preds = %143
  %148 = load i32, ptr @num_pes, align 4, !tbaa !7
  %149 = mul nsw i32 %148, %145
  %150 = add nsw i32 %149, 3
  %151 = icmp sgt i32 %144, %150
  br i1 %151, label %159, label %152

152:                                              ; preds = %147, %143
  %153 = load i32, ptr @target_max, align 4, !tbaa !7
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %161, label %155

155:                                              ; preds = %152
  %156 = load i32, ptr @num_pes, align 4, !tbaa !7
  %157 = mul nsw i32 %156, %153
  %158 = icmp sgt i32 %144, %157
  br i1 %158, label %159, label %161

159:                                              ; preds = %155, %147
  %160 = tail call i32 (...) @reduce_blocks() #24
  br label %175

161:                                              ; preds = %155, %152
  br i1 %146, label %167, label %162

162:                                              ; preds = %161
  %163 = load i32, ptr @num_pes, align 4, !tbaa !7
  %164 = mul nsw i32 %163, %145
  %165 = add nsw i32 %164, -3
  %166 = icmp slt i32 %144, %165
  br i1 %166, label %174, label %167

167:                                              ; preds = %162, %161
  %168 = load i32, ptr @target_min, align 4, !tbaa !7
  %169 = icmp eq i32 %168, 0
  br i1 %169, label %175, label %170

170:                                              ; preds = %167
  %171 = load i32, ptr @num_pes, align 4, !tbaa !7
  %172 = mul nsw i32 %171, %168
  %173 = icmp slt i32 %144, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %170, %162
  tail call void (...) @add_blocks() #24
  br label %175

175:                                              ; preds = %174, %170, %167, %159
  %176 = tail call double @timer() #24
  %177 = fsub double %176, %127
  %178 = load double, ptr @timer_target_all, align 8, !tbaa !28
  %179 = fadd double %178, %177
  store double %179, ptr @timer_target_all, align 8, !tbaa !28
  %180 = fadd double %98, %177
  br label %181

181:                                              ; preds = %175, %97
  %182 = phi double [ %180, %175 ], [ %98, %97 ]
  %183 = tail call double @timer() #24
  %184 = load i32, ptr @num_active, align 4, !tbaa !7
  %185 = load i32, ptr @local_max_b, align 4, !tbaa !7
  %186 = icmp sgt i32 %184, %185
  br i1 %186, label %187, label %188

187:                                              ; preds = %181
  store i32 %184, ptr @local_max_b, align 4, !tbaa !7
  br label %188

188:                                              ; preds = %187, %181
  %189 = phi i32 [ %184, %187 ], [ %185, %181 ]
  %190 = load i32, ptr @global_max_b, align 4, !tbaa !7
  %191 = icmp sgt i32 %189, %190
  br i1 %191, label %192, label %193

192:                                              ; preds = %188
  store i32 %189, ptr @global_max_b, align 4, !tbaa !7
  br label %193

193:                                              ; preds = %192, %188
  %194 = load i32, ptr @num_refine, align 4, !tbaa !7
  %195 = icmp slt i32 %194, 0
  br i1 %195, label %227, label %196

196:                                              ; preds = %222, %193
  %197 = phi i32 [ %223, %222 ], [ %194, %193 ]
  %198 = phi i64 [ %224, %222 ], [ 0, %193 ]
  %199 = icmp eq i64 %198, 0
  %200 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  br i1 %199, label %201, label %203

201:                                              ; preds = %196
  %202 = load i32, ptr %200, align 4, !tbaa !7
  br label %208

203:                                              ; preds = %196
  %204 = getelementptr inbounds i32, ptr %200, i64 %198
  %205 = load i32, ptr %204, align 4, !tbaa !7
  %206 = load i32, ptr @global_active, align 4, !tbaa !7
  %207 = add nsw i32 %206, %205
  br label %208

208:                                              ; preds = %203, %201
  %209 = phi i32 [ %202, %201 ], [ %207, %203 ]
  store i32 %209, ptr @global_active, align 4, !tbaa !7
  %210 = load i32, ptr @my_pe, align 4, !tbaa !7
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %212, label %222

212:                                              ; preds = %208
  %213 = load i32, ptr @report_perf, align 4, !tbaa !7
  %214 = and i32 %213, 8
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %222, label %216

216:                                              ; preds = %212
  %217 = getelementptr inbounds i32, ptr %200, i64 %198
  %218 = load i32, ptr %217, align 4, !tbaa !7
  %219 = trunc i64 %198 to i32
  %220 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.202, i32 noundef %219, i32 noundef %0, i32 noundef %218) #22
  %221 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %222

222:                                              ; preds = %216, %212, %208
  %223 = phi i32 [ %197, %208 ], [ %197, %212 ], [ %221, %216 ]
  %224 = add nuw nsw i64 %198, 1
  %225 = sext i32 %223 to i64
  %226 = icmp slt i64 %198, %225
  br i1 %226, label %196, label %227, !llvm.loop !196

227:                                              ; preds = %222, %193
  %228 = load i32, ptr @my_pe, align 4, !tbaa !7
  %229 = icmp eq i32 %228, 0
  br i1 %229, label %230, label %236

230:                                              ; preds = %227
  %231 = load i32, ptr @report_perf, align 4, !tbaa !7
  %232 = and i32 %231, 8
  %233 = icmp eq i32 %232, 0
  br i1 %233, label %236, label %234

234:                                              ; preds = %230
  %235 = tail call i32 @putchar(i32 10)
  br label %236

236:                                              ; preds = %234, %230, %227
  %237 = tail call double @timer() #24
  %238 = fsub double %237, %183
  %239 = fadd double %182, %238
  %240 = tail call double @timer() #24
  %241 = fsub double %240, %2
  %242 = fsub double %241, %239
  %243 = load double, ptr @timer_refine_cc, align 8, !tbaa !28
  %244 = fadd double %243, %242
  store double %244, ptr @timer_refine_cc, align 8, !tbaa !28
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @reset_all() #5 {
  %1 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %2 = load i32, ptr @num_refine, align 4, !tbaa !7
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %10 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %16

11:                                               ; preds = %28, %0
  %12 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %80

14:                                               ; preds = %11
  %15 = load ptr, ptr @parents, align 8, !tbaa !11
  br label %37

16:                                               ; preds = %28, %8
  %17 = phi i32 [ %2, %8 ], [ %29, %28 ]
  %18 = phi i64 [ 0, %8 ], [ %30, %28 ]
  %19 = getelementptr inbounds %struct.sorted_block, ptr %9, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.block, ptr %10, i64 %21
  %23 = load i32, ptr %22, align 8, !tbaa !13
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %28

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.block, ptr %10, i64 %21, i32 2
  store i32 -1, ptr %26, align 8, !tbaa !16
  %27 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %28

28:                                               ; preds = %25, %16
  %29 = phi i32 [ %17, %16 ], [ %27, %25 ]
  %30 = add nuw nsw i64 %18, 1
  %31 = add nsw i32 %29, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, ptr %1, i64 %32
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = icmp slt i64 %30, %35
  br i1 %36, label %16, label %11, !llvm.loop !197

37:                                               ; preds = %75, %14
  %38 = phi i64 [ 0, %14 ], [ %76, %75 ]
  %39 = getelementptr inbounds %struct.parent, ptr %15, i64 %38
  %40 = load i32, ptr %39, align 4, !tbaa !17
  %41 = icmp sgt i32 %40, -1
  br i1 %41, label %42, label %75

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.parent, ptr %15, i64 %38, i32 5
  store i32 -1, ptr %43, align 4, !tbaa !23
  br label %44

44:                                               ; preds = %55, %42
  %45 = phi i1 [ true, %55 ], [ false, %42 ]
  %46 = phi i64 [ %56, %55 ], [ 0, %42 ]
  br label %47

47:                                               ; preds = %52, %44
  %48 = phi i64 [ %53, %52 ], [ %46, %44 ]
  %49 = getelementptr inbounds %struct.parent, ptr %15, i64 %38, i32 6, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !7
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %55, label %52

52:                                               ; preds = %47
  %53 = add nuw nsw i64 %48, 1
  %54 = icmp eq i64 %53, 8
  br i1 %54, label %58, label %47, !llvm.loop !198

55:                                               ; preds = %47
  %.lcssa = phi i64 [ %48, %47 ]
  store i32 0, ptr %43, align 4, !tbaa !23
  %56 = add nuw nsw i64 %.lcssa, 1
  %57 = icmp eq i64 %56, 8
  br i1 %57, label %59, label %44, !llvm.loop !198

58:                                               ; preds = %52
  %.lcssa2 = phi i1 [ %45, %52 ]
  br i1 %.lcssa2, label %59, label %75

59:                                               ; preds = %58, %55
  %60 = load ptr, ptr @blocks, align 8
  br label %61

61:                                               ; preds = %72, %59
  %62 = phi i64 [ 0, %59 ], [ %73, %72 ]
  %63 = getelementptr inbounds %struct.parent, ptr %15, i64 %38, i32 6, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !7
  %65 = icmp sgt i32 %64, -1
  br i1 %65, label %66, label %72

66:                                               ; preds = %61
  %67 = zext i32 %64 to i64
  %68 = getelementptr inbounds %struct.block, ptr %60, i64 %67, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !16
  %70 = icmp eq i32 %69, -1
  br i1 %70, label %71, label %72

71:                                               ; preds = %66
  store i32 0, ptr %68, align 8, !tbaa !16
  br label %72

72:                                               ; preds = %71, %66, %61
  %73 = add nuw nsw i64 %62, 1
  %74 = icmp eq i64 %73, 8
  br i1 %74, label %75, label %61, !llvm.loop !199

75:                                               ; preds = %72, %58, %37
  %76 = add nuw nsw i64 %38, 1
  %77 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %78 = sext i32 %77 to i64
  %79 = icmp slt i64 %76, %78
  br i1 %79, label %37, label %80, !llvm.loop !200

80:                                               ; preds = %75, %11
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @refine_level() #5 {
  %1 = load i32, ptr @cur_max_level, align 4, !tbaa !7
  %2 = icmp sgt i32 %1, -1
  %3 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  br i1 %2, label %4, label %17

4:                                                ; preds = %0
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %364, %4
  %7 = phi i64 [ %5, %4 ], [ %13, %364 ]
  %8 = getelementptr inbounds i32, ptr %3, i64 %7
  %9 = add nuw nsw i64 %7, 1
  %10 = getelementptr inbounds i32, ptr %3, i64 %9
  %11 = load ptr, ptr @sorted_list, align 8
  %12 = load ptr, ptr @blocks, align 8
  %13 = add nsw i64 %7, -1
  %14 = load i32, ptr %10, align 4, !tbaa !7
  %15 = trunc i64 %9 to i32
  %16 = trunc i64 %13 to i32
  br label %28

17:                                               ; preds = %364, %0
  %18 = load i32, ptr @num_refine, align 4, !tbaa !7
  %19 = add nsw i32 %18, 1
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds i32, ptr %3, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = icmp sgt i32 %22, 0
  br i1 %23, label %24, label %379

24:                                               ; preds = %17
  %25 = load ptr, ptr @blocks, align 8, !tbaa !11
  %26 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %27 = zext i32 %22 to i64
  br label %366

28:                                               ; preds = %231, %6
  %29 = phi i32 [ %14, %6 ], [ %.lcssa, %231 ]
  %30 = load i32, ptr %8, align 4, !tbaa !7
  %31 = icmp slt i32 %30, %29
  br i1 %31, label %32, label %233

32:                                               ; preds = %28
  %33 = load ptr, ptr @parents, align 8
  %34 = sext i32 %30 to i64
  br label %35

35:                                               ; preds = %225, %32
  %36 = phi i64 [ %34, %32 ], [ %227, %225 ]
  %37 = phi i32 [ 0, %32 ], [ %226, %225 ]
  %38 = getelementptr inbounds %struct.sorted_block, ptr %11, i64 %36, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !52
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.block, ptr %12, i64 %40
  %42 = load i32, ptr %41, align 8, !tbaa !13
  %43 = icmp sgt i32 %42, -1
  br i1 %43, label %44, label %225

44:                                               ; preds = %35
  %45 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !15
  %47 = zext i32 %46 to i64
  %48 = icmp eq i64 %7, %47
  br i1 %48, label %49, label %225

49:                                               ; preds = %44
  %50 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 2
  %51 = load i32, ptr %50, align 8, !tbaa !16
  switch i32 %51, label %225 [
    i32 1, label %56
    i32 -1, label %52
  ]

52:                                               ; preds = %49
  %53 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 4
  %54 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 5
  %55 = load ptr, ptr @parents, align 8
  br label %177

56:                                               ; preds = %49
  %57 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 4
  %58 = load i32, ptr %57, align 8, !tbaa !25
  %59 = icmp eq i32 %58, -1
  br i1 %59, label %98, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 5
  %62 = load i32, ptr %61, align 4, !tbaa !26
  %63 = load i32, ptr @my_pe, align 4, !tbaa !7
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %98

65:                                               ; preds = %60
  %66 = sext i32 %58 to i64
  %67 = getelementptr inbounds %struct.parent, ptr %33, i64 %66, i32 5
  %68 = load i32, ptr %67, align 4, !tbaa !23
  %69 = icmp eq i32 %68, -1
  br i1 %69, label %70, label %72

70:                                               ; preds = %65
  store i32 0, ptr %67, align 4, !tbaa !23
  %71 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %72

72:                                               ; preds = %70, %65
  %73 = phi i32 [ %62, %65 ], [ %71, %70 ]
  br label %74

74:                                               ; preds = %93, %72
  %75 = phi i32 [ %94, %93 ], [ %73, %72 ]
  %76 = phi i64 [ %96, %93 ], [ 0, %72 ]
  %77 = phi i32 [ %95, %93 ], [ %37, %72 ]
  %78 = getelementptr inbounds %struct.parent, ptr %33, i64 %66, i32 7, i64 %76
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = icmp eq i32 %79, %75
  br i1 %80, label %81, label %93

81:                                               ; preds = %74
  %82 = getelementptr inbounds %struct.parent, ptr %33, i64 %66, i32 6, i64 %76
  %83 = load i32, ptr %82, align 4, !tbaa !7
  %84 = icmp sgt i32 %83, -1
  br i1 %84, label %85, label %93

85:                                               ; preds = %81
  %86 = zext i32 %83 to i64
  %87 = getelementptr inbounds %struct.block, ptr %12, i64 %86, i32 2
  %88 = load i32, ptr %87, align 8, !tbaa !16
  %89 = icmp eq i32 %88, -1
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  store i32 0, ptr %87, align 8, !tbaa !16
  %91 = add nsw i32 %77, 1
  %92 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %93

93:                                               ; preds = %90, %85, %81, %74
  %94 = phi i32 [ %92, %90 ], [ %75, %85 ], [ %75, %81 ], [ %75, %74 ]
  %95 = phi i32 [ %91, %90 ], [ %77, %85 ], [ %77, %81 ], [ %77, %74 ]
  %96 = add nuw nsw i64 %76, 1
  %97 = icmp eq i64 %96, 8
  br i1 %97, label %98, label %74, !llvm.loop !201

98:                                               ; preds = %93, %60, %56
  %99 = phi i32 [ %37, %60 ], [ %37, %56 ], [ %95, %93 ]
  %100 = load ptr, ptr @parents, align 8
  br label %101

101:                                              ; preds = %173, %98
  %102 = phi i64 [ 0, %98 ], [ %175, %173 ]
  %103 = phi i32 [ %99, %98 ], [ %174, %173 ]
  %104 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 8, i64 %102
  %105 = load i32, ptr %104, align 4, !tbaa !7
  %106 = zext i32 %105 to i64
  %107 = icmp eq i64 %7, %106
  br i1 %107, label %108, label %160

108:                                              ; preds = %101
  %109 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 9, i64 %102
  %110 = load i32, ptr %109, align 4, !tbaa !7
  %111 = icmp sgt i32 %110, -1
  br i1 %111, label %112, label %173

112:                                              ; preds = %108
  %113 = zext i32 %110 to i64
  %114 = getelementptr inbounds %struct.block, ptr %12, i64 %113, i32 2
  %115 = load i32, ptr %114, align 8, !tbaa !16
  %116 = icmp eq i32 %115, -1
  br i1 %116, label %117, label %173

117:                                              ; preds = %112
  store i32 0, ptr %114, align 8, !tbaa !16
  %118 = add nsw i32 %103, 1
  %119 = getelementptr inbounds %struct.block, ptr %12, i64 %113, i32 4
  %120 = load i32, ptr %119, align 8, !tbaa !25
  %121 = icmp eq i32 %120, -1
  br i1 %121, label %173, label %122

122:                                              ; preds = %117
  %123 = getelementptr inbounds %struct.block, ptr %12, i64 %113, i32 5
  %124 = load i32, ptr %123, align 4, !tbaa !26
  %125 = load i32, ptr @my_pe, align 4, !tbaa !7
  %126 = icmp eq i32 %124, %125
  br i1 %126, label %127, label %173

127:                                              ; preds = %122
  %128 = sext i32 %120 to i64
  %129 = getelementptr inbounds %struct.parent, ptr %100, i64 %128, i32 5
  %130 = load i32, ptr %129, align 4, !tbaa !23
  %131 = icmp eq i32 %130, -1
  br i1 %131, label %132, label %134

132:                                              ; preds = %127
  store i32 0, ptr %129, align 4, !tbaa !23
  %133 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %134

134:                                              ; preds = %132, %127
  %135 = phi i32 [ %124, %127 ], [ %133, %132 ]
  br label %136

136:                                              ; preds = %155, %134
  %137 = phi i32 [ %156, %155 ], [ %135, %134 ]
  %138 = phi i64 [ %158, %155 ], [ 0, %134 ]
  %139 = phi i32 [ %157, %155 ], [ %118, %134 ]
  %140 = getelementptr inbounds %struct.parent, ptr %100, i64 %128, i32 7, i64 %138
  %141 = load i32, ptr %140, align 4, !tbaa !7
  %142 = icmp eq i32 %141, %137
  br i1 %142, label %143, label %155

143:                                              ; preds = %136
  %144 = getelementptr inbounds %struct.parent, ptr %100, i64 %128, i32 6, i64 %138
  %145 = load i32, ptr %144, align 4, !tbaa !7
  %146 = icmp sgt i32 %145, -1
  br i1 %146, label %147, label %155

147:                                              ; preds = %143
  %148 = zext i32 %145 to i64
  %149 = getelementptr inbounds %struct.block, ptr %12, i64 %148, i32 2
  %150 = load i32, ptr %149, align 8, !tbaa !16
  %151 = icmp eq i32 %150, -1
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  store i32 0, ptr %149, align 8, !tbaa !16
  %153 = add nsw i32 %139, 1
  %154 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %155

155:                                              ; preds = %152, %147, %143, %136
  %156 = phi i32 [ %154, %152 ], [ %137, %147 ], [ %137, %143 ], [ %137, %136 ]
  %157 = phi i32 [ %153, %152 ], [ %139, %147 ], [ %139, %143 ], [ %139, %136 ]
  %158 = add nuw nsw i64 %138, 1
  %159 = icmp eq i64 %158, 8
  br i1 %159, label %173, label %136, !llvm.loop !202

160:                                              ; preds = %101
  %161 = icmp eq i32 %105, %16
  br i1 %161, label %162, label %173

162:                                              ; preds = %160
  %163 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 9, i64 %102
  %164 = load i32, ptr %163, align 4, !tbaa !7
  %165 = icmp sgt i32 %164, -1
  br i1 %165, label %166, label %173

166:                                              ; preds = %162
  %167 = zext i32 %164 to i64
  %168 = getelementptr inbounds %struct.block, ptr %12, i64 %167, i32 2
  %169 = load i32, ptr %168, align 8, !tbaa !16
  %170 = icmp eq i32 %169, 1
  br i1 %170, label %173, label %171

171:                                              ; preds = %166
  store i32 1, ptr %168, align 8, !tbaa !16
  %172 = add nsw i32 %103, 1
  br label %173

173:                                              ; preds = %171, %166, %162, %160, %155, %122, %117, %112, %108
  %174 = phi i32 [ %118, %122 ], [ %118, %117 ], [ %103, %112 ], [ %103, %108 ], [ %172, %171 ], [ %103, %166 ], [ %103, %162 ], [ %103, %160 ], [ %157, %155 ]
  %175 = add nuw nsw i64 %102, 1
  %176 = icmp eq i64 %175, 6
  br i1 %176, label %225, label %101, !llvm.loop !203

177:                                              ; preds = %221, %52
  %178 = phi i64 [ 0, %52 ], [ %223, %221 ]
  %179 = phi i32 [ %37, %52 ], [ %222, %221 ]
  %180 = getelementptr inbounds %struct.block, ptr %12, i64 %40, i32 8, i64 %178
  %181 = load i32, ptr %180, align 4, !tbaa !7
  %182 = icmp eq i32 %181, %15
  br i1 %182, label %183, label %221

183:                                              ; preds = %177
  store i32 0, ptr %50, align 8, !tbaa !16
  %184 = add nsw i32 %179, 1
  %185 = load i32, ptr %53, align 8, !tbaa !25
  %186 = icmp eq i32 %185, -1
  br i1 %186, label %221, label %187

187:                                              ; preds = %183
  %188 = load i32, ptr %54, align 4, !tbaa !26
  %189 = load i32, ptr @my_pe, align 4, !tbaa !7
  %190 = icmp eq i32 %188, %189
  br i1 %190, label %191, label %221

191:                                              ; preds = %187
  %192 = sext i32 %185 to i64
  %193 = getelementptr inbounds %struct.parent, ptr %55, i64 %192, i32 5
  %194 = load i32, ptr %193, align 4, !tbaa !23
  %195 = icmp eq i32 %194, -1
  br i1 %195, label %196, label %198

196:                                              ; preds = %191
  store i32 0, ptr %193, align 4, !tbaa !23
  %197 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %198

198:                                              ; preds = %196, %191
  %199 = phi i32 [ %188, %191 ], [ %197, %196 ]
  br label %200

200:                                              ; preds = %217, %198
  %201 = phi i32 [ %218, %217 ], [ %199, %198 ]
  %202 = phi i64 [ %219, %217 ], [ 0, %198 ]
  %203 = getelementptr inbounds %struct.parent, ptr %55, i64 %192, i32 7, i64 %202
  %204 = load i32, ptr %203, align 4, !tbaa !7
  %205 = icmp eq i32 %204, %201
  br i1 %205, label %206, label %217

206:                                              ; preds = %200
  %207 = getelementptr inbounds %struct.parent, ptr %55, i64 %192, i32 6, i64 %202
  %208 = load i32, ptr %207, align 4, !tbaa !7
  %209 = icmp sgt i32 %208, -1
  br i1 %209, label %210, label %217

210:                                              ; preds = %206
  %211 = zext i32 %208 to i64
  %212 = getelementptr inbounds %struct.block, ptr %12, i64 %211, i32 2
  %213 = load i32, ptr %212, align 8, !tbaa !16
  %214 = icmp eq i32 %213, -1
  br i1 %214, label %215, label %217

215:                                              ; preds = %210
  store i32 0, ptr %212, align 8, !tbaa !16
  %216 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %217

217:                                              ; preds = %215, %210, %206, %200
  %218 = phi i32 [ %201, %200 ], [ %201, %206 ], [ %201, %210 ], [ %216, %215 ]
  %219 = add nuw nsw i64 %202, 1
  %220 = icmp eq i64 %219, 8
  br i1 %220, label %221, label %200, !llvm.loop !204

221:                                              ; preds = %217, %187, %183, %177
  %222 = phi i32 [ %184, %187 ], [ %184, %183 ], [ %179, %177 ], [ %184, %217 ]
  %223 = add nuw nsw i64 %178, 1
  %224 = icmp eq i64 %223, 6
  br i1 %224, label %225, label %177, !llvm.loop !205

225:                                              ; preds = %221, %173, %49, %44, %35
  %226 = phi i32 [ %37, %44 ], [ %37, %35 ], [ %37, %49 ], [ %174, %173 ], [ %222, %221 ]
  %227 = add nsw i64 %36, 1
  %228 = load i32, ptr %10, align 4, !tbaa !7
  %229 = sext i32 %228 to i64
  %230 = icmp slt i64 %227, %229
  br i1 %230, label %35, label %231, !llvm.loop !206

231:                                              ; preds = %225
  %.lcssa1 = phi i32 [ %226, %225 ]
  %.lcssa = phi i32 [ %228, %225 ]
  %232 = icmp eq i32 %.lcssa1, 0
  br i1 %232, label %233, label %28, !llvm.loop !207

233:                                              ; preds = %231, %28
  %234 = phi i32 [ %.lcssa, %231 ], [ %29, %28 ]
  %235 = load ptr, ptr @sorted_list, align 8
  %236 = load ptr, ptr @blocks, align 8
  %237 = trunc i64 %13 to i32
  %238 = trunc i64 %9 to i32
  br label %239

239:                                              ; preds = %362, %233
  %240 = phi i32 [ %234, %233 ], [ %.lcssa4, %362 ]
  %241 = load i32, ptr %8, align 4, !tbaa !7
  %242 = icmp slt i32 %241, %240
  br i1 %242, label %243, label %364

243:                                              ; preds = %239
  %244 = sext i32 %241 to i64
  br label %245

245:                                              ; preds = %356, %243
  %246 = phi i32 [ %240, %243 ], [ %357, %356 ]
  %247 = phi i64 [ %244, %243 ], [ %359, %356 ]
  %248 = phi i32 [ 0, %243 ], [ %358, %356 ]
  %249 = getelementptr inbounds %struct.sorted_block, ptr %235, i64 %247, i32 1
  %250 = load i32, ptr %249, align 4, !tbaa !52
  %251 = sext i32 %250 to i64
  %252 = getelementptr inbounds %struct.block, ptr %236, i64 %251
  %253 = load i32, ptr %252, align 8, !tbaa !13
  %254 = icmp sgt i32 %253, -1
  br i1 %254, label %255, label %356

255:                                              ; preds = %245
  %256 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 1
  %257 = load i32, ptr %256, align 4, !tbaa !15
  %258 = zext i32 %257 to i64
  %259 = icmp eq i64 %7, %258
  br i1 %259, label %260, label %356

260:                                              ; preds = %255
  %261 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 2
  %262 = load i32, ptr %261, align 8, !tbaa !16
  %263 = icmp eq i32 %262, 0
  br i1 %263, label %264, label %356

264:                                              ; preds = %260
  %265 = load ptr, ptr @parents, align 8
  br label %266

266:                                              ; preds = %350, %264
  %267 = phi i64 [ 0, %264 ], [ %352, %350 ]
  %268 = phi i32 [ %248, %264 ], [ %351, %350 ]
  %269 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 8, i64 %267
  %270 = load i32, ptr %269, align 4, !tbaa !7
  %271 = icmp eq i32 %270, %237
  br i1 %271, label %272, label %319

272:                                              ; preds = %266
  %273 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 9, i64 %267
  %274 = load i32, ptr %273, align 4, !tbaa !7
  %275 = icmp sgt i32 %274, -1
  br i1 %275, label %276, label %350

276:                                              ; preds = %272
  %277 = zext i32 %274 to i64
  %278 = getelementptr inbounds %struct.block, ptr %236, i64 %277, i32 2
  %279 = load i32, ptr %278, align 8, !tbaa !16
  %280 = icmp eq i32 %279, -1
  br i1 %280, label %281, label %350

281:                                              ; preds = %276
  store i32 0, ptr %278, align 8, !tbaa !16
  %282 = add nsw i32 %268, 1
  %283 = getelementptr inbounds %struct.block, ptr %236, i64 %277, i32 4
  %284 = load i32, ptr %283, align 8, !tbaa !25
  %285 = icmp eq i32 %284, -1
  br i1 %285, label %350, label %286

286:                                              ; preds = %281
  %287 = getelementptr inbounds %struct.block, ptr %236, i64 %277, i32 5
  %288 = load i32, ptr %287, align 4, !tbaa !26
  %289 = load i32, ptr @my_pe, align 4, !tbaa !7
  %290 = icmp eq i32 %288, %289
  br i1 %290, label %291, label %350

291:                                              ; preds = %286
  %292 = sext i32 %284 to i64
  %293 = getelementptr inbounds %struct.parent, ptr %265, i64 %292, i32 5
  %294 = load i32, ptr %293, align 4, !tbaa !23
  %295 = icmp eq i32 %294, -1
  br i1 %295, label %296, label %350

296:                                              ; preds = %291
  store i32 0, ptr %293, align 4, !tbaa !23
  %297 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %298

298:                                              ; preds = %315, %296
  %299 = phi i32 [ %297, %296 ], [ %316, %315 ]
  %300 = phi i64 [ 0, %296 ], [ %317, %315 ]
  %301 = getelementptr inbounds %struct.parent, ptr %265, i64 %292, i32 7, i64 %300
  %302 = load i32, ptr %301, align 4, !tbaa !7
  %303 = icmp eq i32 %302, %299
  br i1 %303, label %304, label %315

304:                                              ; preds = %298
  %305 = getelementptr inbounds %struct.parent, ptr %265, i64 %292, i32 6, i64 %300
  %306 = load i32, ptr %305, align 4, !tbaa !7
  %307 = icmp sgt i32 %306, -1
  br i1 %307, label %308, label %315

308:                                              ; preds = %304
  %309 = zext i32 %306 to i64
  %310 = getelementptr inbounds %struct.block, ptr %236, i64 %309, i32 2
  %311 = load i32, ptr %310, align 8, !tbaa !16
  %312 = icmp eq i32 %311, -1
  br i1 %312, label %313, label %315

313:                                              ; preds = %308
  store i32 0, ptr %310, align 8, !tbaa !16
  %314 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %315

315:                                              ; preds = %313, %308, %304, %298
  %316 = phi i32 [ %299, %298 ], [ %299, %304 ], [ %299, %308 ], [ %314, %313 ]
  %317 = add nuw nsw i64 %300, 1
  %318 = icmp eq i64 %317, 8
  br i1 %318, label %350, label %298, !llvm.loop !208

319:                                              ; preds = %266
  %320 = zext i32 %270 to i64
  %321 = icmp eq i64 %7, %320
  br i1 %321, label %322, label %331

322:                                              ; preds = %319
  %323 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 9, i64 %267
  %324 = load i32, ptr %323, align 4, !tbaa !7
  %325 = icmp sgt i32 %324, -1
  br i1 %325, label %326, label %350

326:                                              ; preds = %322
  %327 = zext i32 %324 to i64
  %328 = and i64 %267, 4294967295
  %329 = xor i64 %328, 1
  %330 = getelementptr inbounds %struct.block, ptr %236, i64 %327, i32 7, i64 %329
  store i32 0, ptr %330, align 4, !tbaa !7
  br label %350

331:                                              ; preds = %319
  %332 = icmp eq i32 %270, %238
  br i1 %332, label %333, label %350

333:                                              ; preds = %331
  %334 = and i64 %267, 4294967295
  %335 = xor i64 %334, 1
  br label %336

336:                                              ; preds = %349, %333
  %337 = phi i1 [ true, %333 ], [ false, %349 ]
  %338 = phi i64 [ 0, %333 ], [ 1, %349 ]
  br label %339

339:                                              ; preds = %348, %336
  %340 = phi i1 [ true, %336 ], [ false, %348 ]
  %341 = phi i64 [ 0, %336 ], [ 1, %348 ]
  %342 = getelementptr inbounds %struct.block, ptr %236, i64 %251, i32 9, i64 %267, i64 %338, i64 %341
  %343 = load i32, ptr %342, align 4, !tbaa !7
  %344 = icmp sgt i32 %343, -1
  br i1 %344, label %345, label %348

345:                                              ; preds = %339
  %346 = zext i32 %343 to i64
  %347 = getelementptr inbounds %struct.block, ptr %236, i64 %346, i32 7, i64 %335
  store i32 0, ptr %347, align 4, !tbaa !7
  br label %348

348:                                              ; preds = %345, %339
  br i1 %340, label %339, label %349, !llvm.loop !209

349:                                              ; preds = %348
  br i1 %337, label %336, label %350, !llvm.loop !210

350:                                              ; preds = %349, %331, %326, %322, %315, %291, %286, %281, %276, %272
  %351 = phi i32 [ %282, %291 ], [ %282, %286 ], [ %282, %281 ], [ %268, %276 ], [ %268, %272 ], [ %268, %326 ], [ %268, %322 ], [ %268, %331 ], [ %282, %315 ], [ %268, %349 ]
  %352 = add nuw nsw i64 %267, 1
  %353 = icmp eq i64 %352, 6
  br i1 %353, label %354, label %266, !llvm.loop !211

354:                                              ; preds = %350
  %.lcssa2 = phi i32 [ %351, %350 ]
  %355 = load i32, ptr %10, align 4, !tbaa !7
  br label %356

356:                                              ; preds = %354, %260, %255, %245
  %357 = phi i32 [ %246, %260 ], [ %246, %255 ], [ %246, %245 ], [ %355, %354 ]
  %358 = phi i32 [ %248, %260 ], [ %248, %255 ], [ %248, %245 ], [ %.lcssa2, %354 ]
  %359 = add nsw i64 %247, 1
  %360 = sext i32 %357 to i64
  %361 = icmp slt i64 %359, %360
  br i1 %361, label %245, label %362, !llvm.loop !212

362:                                              ; preds = %356
  %.lcssa4 = phi i32 [ %357, %356 ]
  %.lcssa3 = phi i32 [ %358, %356 ]
  %363 = icmp eq i32 %.lcssa3, 0
  br i1 %363, label %364, label %239, !llvm.loop !213

364:                                              ; preds = %362, %239
  %365 = icmp sgt i64 %7, 0
  br i1 %365, label %6, label %17, !llvm.loop !214

366:                                              ; preds = %366, %24
  %367 = phi i64 [ 0, %24 ], [ %377, %366 ]
  %368 = phi i32 [ 0, %24 ], [ %376, %366 ]
  %369 = getelementptr inbounds %struct.sorted_block, ptr %26, i64 %367, i32 1
  %370 = load i32, ptr %369, align 4, !tbaa !52
  %371 = sext i32 %370 to i64
  %372 = getelementptr inbounds %struct.block, ptr %25, i64 %371, i32 2
  %373 = load i32, ptr %372, align 8, !tbaa !16
  %374 = icmp eq i32 %373, 1
  %375 = zext i1 %374 to i32
  %376 = add nuw nsw i32 %368, %375
  %377 = add nuw nsw i64 %367, 1
  %378 = icmp eq i64 %377, %27
  br i1 %378, label %379, label %366, !llvm.loop !215

379:                                              ; preds = %366, %17
  %380 = phi i32 [ 0, %17 ], [ %376, %366 ]
  ret i32 %380
}

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @stencil_calc(i32 noundef %0) #18 {
  %2 = load i32, ptr @x_block_size, align 4, !tbaa !7
  %3 = add nsw i32 %2, 2
  %4 = zext i32 %3 to i64
  %5 = load i32, ptr @y_block_size, align 4, !tbaa !7
  %6 = add nsw i32 %5, 2
  %7 = zext i32 %6 to i64
  %8 = load i32, ptr @z_block_size, align 4, !tbaa !7
  %9 = add nsw i32 %8, 2
  %10 = zext i32 %9 to i64
  %11 = mul nuw i64 %10, %7
  %12 = mul i64 %11, %4
  %13 = alloca double, i64 %12, align 16
  %14 = load i32, ptr @stencil, align 4, !tbaa !7
  %15 = icmp eq i32 %14, 7
  %16 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %17 = load i32, ptr @num_refine, align 4, !tbaa !7
  %18 = add nsw i32 %17, 1
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %16, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = icmp sgt i32 %21, 0
  br i1 %15, label %48, label %23

23:                                               ; preds = %1
  br i1 %22, label %24, label %395

24:                                               ; preds = %23
  %25 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %26 = load ptr, ptr @blocks, align 8, !tbaa !11
  %27 = icmp slt i32 %2, 1
  %28 = icmp slt i32 %5, 1
  %29 = icmp slt i32 %8, 1
  %30 = sext i32 %0 to i64
  %31 = add i32 %8, 1
  %32 = add i32 %5, 1
  %33 = add i32 %2, 1
  %34 = shl nuw nsw i64 %7, 3
  %35 = add nuw nsw i64 %34, 8
  %36 = mul i64 %35, %10
  %37 = add i64 %36, 8
  %38 = shl i64 %11, 3
  %39 = shl nuw nsw i64 %10, 3
  %40 = zext i32 %8 to i64
  %41 = shl nuw nsw i64 %40, 3
  %42 = zext i32 %21 to i64
  %43 = zext i32 %33 to i64
  %44 = zext i32 %32 to i64
  %45 = zext i32 %31 to i64
  %46 = zext i32 %2 to i64
  %47 = zext i32 %5 to i64
  br label %190

48:                                               ; preds = %1
  br i1 %22, label %49, label %395

49:                                               ; preds = %48
  %50 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %51 = load ptr, ptr @blocks, align 8, !tbaa !11
  %52 = icmp slt i32 %2, 1
  %53 = icmp slt i32 %5, 1
  %54 = icmp slt i32 %8, 1
  %55 = sext i32 %0 to i64
  %56 = add i32 %8, 1
  %57 = add i32 %5, 1
  %58 = add i32 %2, 1
  %59 = shl nuw nsw i64 %7, 3
  %60 = add nuw nsw i64 %59, 8
  %61 = mul i64 %60, %10
  %62 = add i64 %61, 8
  %63 = shl i64 %11, 3
  %64 = shl nuw nsw i64 %10, 3
  %65 = zext i32 %8 to i64
  %66 = shl nuw nsw i64 %65, 3
  %67 = zext i32 %21 to i64
  %68 = zext i32 %58 to i64
  %69 = zext i32 %57 to i64
  %70 = zext i32 %56 to i64
  %71 = zext i32 %2 to i64
  %72 = zext i32 %5 to i64
  br label %73

73:                                               ; preds = %187, %49
  %74 = phi i64 [ 0, %49 ], [ %188, %187 ]
  %75 = getelementptr inbounds %struct.sorted_block, ptr %50, i64 %74, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !52
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds %struct.block, ptr %51, i64 %77
  %79 = load i32, ptr %78, align 8, !tbaa !13
  %80 = icmp slt i32 %79, 0
  %81 = select i1 %80, i1 true, i1 %52
  br i1 %81, label %187, label %82

82:                                               ; preds = %73
  %83 = getelementptr inbounds %struct.block, ptr %51, i64 %77, i32 11
  br label %87

84:                                               ; preds = %156
  br i1 %52, label %187, label %85

85:                                               ; preds = %84
  %86 = getelementptr inbounds %struct.block, ptr %51, i64 %77, i32 11
  br label %159

87:                                               ; preds = %156, %82
  %88 = phi i64 [ 1, %82 ], [ %157, %156 ]
  br i1 %53, label %89, label %91

89:                                               ; preds = %87
  %90 = add nuw nsw i64 %88, 1
  br label %156

91:                                               ; preds = %87
  %92 = add nsw i64 %88, -1
  %93 = add nuw nsw i64 %88, 1
  %94 = and i64 %93, 4294967295
  %95 = mul nsw i64 %11, %88
  %96 = getelementptr inbounds double, ptr %13, i64 %95
  br label %97

97:                                               ; preds = %153, %91
  %98 = phi i64 [ 1, %91 ], [ %154, %153 ]
  br i1 %54, label %99, label %101

99:                                               ; preds = %97
  %100 = add nuw nsw i64 %98, 1
  br label %153

101:                                              ; preds = %97
  %102 = load ptr, ptr %83, align 8, !tbaa !27
  %103 = getelementptr inbounds ptr, ptr %102, i64 %55
  %104 = load ptr, ptr %103, align 8, !tbaa !11
  %105 = getelementptr inbounds ptr, ptr %104, i64 %92
  %106 = load ptr, ptr %105, align 8, !tbaa !11
  %107 = getelementptr inbounds ptr, ptr %106, i64 %98
  %108 = load ptr, ptr %107, align 8, !tbaa !11
  %109 = getelementptr inbounds ptr, ptr %104, i64 %88
  %110 = load ptr, ptr %109, align 8, !tbaa !11
  %111 = add nsw i64 %98, -1
  %112 = getelementptr inbounds ptr, ptr %110, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !11
  %114 = getelementptr inbounds ptr, ptr %110, i64 %98
  %115 = load ptr, ptr %114, align 8, !tbaa !11
  %116 = add nuw nsw i64 %98, 1
  %117 = and i64 %116, 4294967295
  %118 = getelementptr inbounds ptr, ptr %110, i64 %117
  %119 = load ptr, ptr %118, align 8, !tbaa !11
  %120 = getelementptr inbounds ptr, ptr %104, i64 %94
  %121 = load ptr, ptr %120, align 8, !tbaa !11
  %122 = getelementptr inbounds ptr, ptr %121, i64 %98
  %123 = load ptr, ptr %122, align 8, !tbaa !11
  %124 = mul nuw nsw i64 %98, %10
  %125 = getelementptr inbounds double, ptr %96, i64 %124
  %126 = load double, ptr %115, align 8, !tbaa !28
  %127 = getelementptr inbounds double, ptr %115, i64 1
  %128 = load double, ptr %127, align 8, !tbaa !28
  br label %129

129:                                              ; preds = %129, %101
  %130 = phi double [ %128, %101 ], [ %142, %129 ]
  %131 = phi double [ %126, %101 ], [ %130, %129 ]
  %132 = phi i64 [ 1, %101 ], [ %140, %129 ]
  %133 = getelementptr inbounds double, ptr %108, i64 %132
  %134 = load double, ptr %133, align 8, !tbaa !28
  %135 = getelementptr inbounds double, ptr %113, i64 %132
  %136 = load double, ptr %135, align 8, !tbaa !28
  %137 = fadd double %134, %136
  %138 = fadd double %137, %131
  %139 = fadd double %138, %130
  %140 = add nuw nsw i64 %132, 1
  %141 = getelementptr inbounds double, ptr %115, i64 %140
  %142 = load double, ptr %141, align 8, !tbaa !28
  %143 = fadd double %139, %142
  %144 = getelementptr inbounds double, ptr %119, i64 %132
  %145 = load double, ptr %144, align 8, !tbaa !28
  %146 = fadd double %143, %145
  %147 = getelementptr inbounds double, ptr %123, i64 %132
  %148 = load double, ptr %147, align 8, !tbaa !28
  %149 = fadd double %146, %148
  %150 = fdiv double %149, 7.000000e+00
  %151 = getelementptr inbounds double, ptr %125, i64 %132
  store double %150, ptr %151, align 8, !tbaa !28
  %152 = icmp eq i64 %140, %70
  br i1 %152, label %153, label %129, !llvm.loop !216

153:                                              ; preds = %129, %99
  %154 = phi i64 [ %100, %99 ], [ %116, %129 ]
  %155 = icmp eq i64 %154, %69
  br i1 %155, label %156, label %97, !llvm.loop !217

156:                                              ; preds = %153, %89
  %157 = phi i64 [ %90, %89 ], [ %93, %153 ]
  %158 = icmp eq i64 %157, %68
  br i1 %158, label %84, label %87, !llvm.loop !218

159:                                              ; preds = %183, %85
  %160 = phi i64 [ 1, %85 ], [ %184, %183 ]
  %161 = phi i64 [ 0, %85 ], [ %185, %183 ]
  %162 = mul i64 %63, %161
  %163 = add i64 %62, %162
  br i1 %53, label %183, label %164

164:                                              ; preds = %179, %159
  %165 = phi i64 [ %180, %179 ], [ 1, %159 ]
  %166 = phi i64 [ %181, %179 ], [ 0, %159 ]
  br i1 %54, label %179, label %167

167:                                              ; preds = %164
  %168 = mul i64 %64, %166
  %169 = add i64 %163, %168
  %170 = getelementptr i8, ptr %13, i64 %169
  %171 = load ptr, ptr %86, align 8, !tbaa !27
  %172 = getelementptr inbounds ptr, ptr %171, i64 %55
  %173 = load ptr, ptr %172, align 8, !tbaa !11
  %174 = getelementptr inbounds ptr, ptr %173, i64 %160
  %175 = load ptr, ptr %174, align 8, !tbaa !11
  %176 = getelementptr inbounds ptr, ptr %175, i64 %165
  %177 = load ptr, ptr %176, align 8, !tbaa !11
  %178 = getelementptr i8, ptr %177, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %178, ptr align 8 %170, i64 %66, i1 false), !tbaa !28
  br label %179

179:                                              ; preds = %167, %164
  %180 = add nuw nsw i64 %165, 1
  %181 = add nuw nsw i64 %166, 1
  %182 = icmp eq i64 %181, %72
  br i1 %182, label %183, label %164, !llvm.loop !219

183:                                              ; preds = %179, %159
  %184 = add nuw nsw i64 %160, 1
  %185 = add nuw nsw i64 %161, 1
  %186 = icmp eq i64 %185, %71
  br i1 %186, label %187, label %159, !llvm.loop !220

187:                                              ; preds = %183, %84, %73
  %188 = add nuw nsw i64 %74, 1
  %189 = icmp eq i64 %188, %67
  br i1 %189, label %395, label %73, !llvm.loop !221

190:                                              ; preds = %392, %24
  %191 = phi i64 [ 0, %24 ], [ %393, %392 ]
  %192 = getelementptr inbounds %struct.sorted_block, ptr %25, i64 %191, i32 1
  %193 = load i32, ptr %192, align 4, !tbaa !52
  %194 = sext i32 %193 to i64
  %195 = getelementptr inbounds %struct.block, ptr %26, i64 %194
  %196 = load i32, ptr %195, align 8, !tbaa !13
  %197 = icmp slt i32 %196, 0
  %198 = select i1 %197, i1 true, i1 %27
  br i1 %198, label %392, label %199

199:                                              ; preds = %190
  %200 = getelementptr inbounds %struct.block, ptr %26, i64 %194, i32 11
  br label %204

201:                                              ; preds = %361
  br i1 %27, label %392, label %202

202:                                              ; preds = %201
  %203 = getelementptr inbounds %struct.block, ptr %26, i64 %194, i32 11
  br label %364

204:                                              ; preds = %361, %199
  %205 = phi i64 [ 1, %199 ], [ %362, %361 ]
  br i1 %28, label %206, label %208

206:                                              ; preds = %204
  %207 = add nuw nsw i64 %205, 1
  br label %361

208:                                              ; preds = %204
  %209 = add nsw i64 %205, -1
  %210 = add nuw nsw i64 %205, 1
  %211 = and i64 %210, 4294967295
  %212 = mul nsw i64 %11, %205
  %213 = getelementptr inbounds double, ptr %13, i64 %212
  br label %214

214:                                              ; preds = %358, %208
  %215 = phi i64 [ 1, %208 ], [ %359, %358 ]
  br i1 %29, label %216, label %218

216:                                              ; preds = %214
  %217 = add nuw nsw i64 %215, 1
  br label %358

218:                                              ; preds = %214
  %219 = load ptr, ptr %200, align 8, !tbaa !27
  %220 = getelementptr inbounds ptr, ptr %219, i64 %30
  %221 = load ptr, ptr %220, align 8, !tbaa !11
  %222 = getelementptr inbounds ptr, ptr %221, i64 %209
  %223 = load ptr, ptr %222, align 8, !tbaa !11
  %224 = add nsw i64 %215, -1
  %225 = getelementptr inbounds ptr, ptr %223, i64 %224
  %226 = load ptr, ptr %225, align 8, !tbaa !11
  %227 = getelementptr inbounds ptr, ptr %223, i64 %215
  %228 = load ptr, ptr %227, align 8, !tbaa !11
  %229 = add nuw nsw i64 %215, 1
  %230 = and i64 %229, 4294967295
  %231 = getelementptr inbounds ptr, ptr %223, i64 %230
  %232 = load ptr, ptr %231, align 8, !tbaa !11
  %233 = getelementptr inbounds ptr, ptr %221, i64 %205
  %234 = load ptr, ptr %233, align 8, !tbaa !11
  %235 = getelementptr inbounds ptr, ptr %234, i64 %224
  %236 = load ptr, ptr %235, align 8, !tbaa !11
  %237 = getelementptr inbounds ptr, ptr %234, i64 %215
  %238 = load ptr, ptr %237, align 8, !tbaa !11
  %239 = getelementptr inbounds ptr, ptr %234, i64 %230
  %240 = load ptr, ptr %239, align 8, !tbaa !11
  %241 = getelementptr inbounds ptr, ptr %221, i64 %211
  %242 = load ptr, ptr %241, align 8, !tbaa !11
  %243 = getelementptr inbounds ptr, ptr %242, i64 %224
  %244 = load ptr, ptr %243, align 8, !tbaa !11
  %245 = getelementptr inbounds ptr, ptr %242, i64 %215
  %246 = load ptr, ptr %245, align 8, !tbaa !11
  %247 = getelementptr inbounds ptr, ptr %242, i64 %230
  %248 = load ptr, ptr %247, align 8, !tbaa !11
  %249 = mul nuw nsw i64 %215, %10
  %250 = getelementptr inbounds double, ptr %213, i64 %249
  %251 = load double, ptr %226, align 8, !tbaa !28
  %252 = getelementptr inbounds double, ptr %226, i64 1
  %253 = load double, ptr %252, align 8, !tbaa !28
  %254 = load double, ptr %228, align 8, !tbaa !28
  %255 = getelementptr inbounds double, ptr %228, i64 1
  %256 = load double, ptr %255, align 8, !tbaa !28
  %257 = load double, ptr %232, align 8, !tbaa !28
  %258 = getelementptr inbounds double, ptr %232, i64 1
  %259 = load double, ptr %258, align 8, !tbaa !28
  %260 = load double, ptr %236, align 8, !tbaa !28
  %261 = getelementptr inbounds double, ptr %236, i64 1
  %262 = load double, ptr %261, align 8, !tbaa !28
  %263 = load double, ptr %238, align 8, !tbaa !28
  %264 = getelementptr inbounds double, ptr %238, i64 1
  %265 = load double, ptr %264, align 8, !tbaa !28
  %266 = load double, ptr %240, align 8, !tbaa !28
  %267 = getelementptr inbounds double, ptr %240, i64 1
  %268 = load double, ptr %267, align 8, !tbaa !28
  %269 = load double, ptr %244, align 8, !tbaa !28
  %270 = getelementptr inbounds double, ptr %244, i64 1
  %271 = load double, ptr %270, align 8, !tbaa !28
  %272 = load double, ptr %246, align 8, !tbaa !28
  %273 = getelementptr inbounds double, ptr %246, i64 1
  %274 = load double, ptr %273, align 8, !tbaa !28
  %275 = load double, ptr %248, align 8, !tbaa !28
  %276 = getelementptr inbounds double, ptr %248, i64 1
  %277 = load double, ptr %276, align 8, !tbaa !28
  %278 = insertelement <2 x double> poison, double %256, i64 0
  %279 = insertelement <2 x double> %278, double %272, i64 1
  %280 = insertelement <2 x double> poison, double %259, i64 0
  %281 = insertelement <2 x double> %280, double %275, i64 1
  br label %282

282:                                              ; preds = %282, %218
  %283 = phi double [ %277, %218 ], [ %327, %282 ]
  %284 = phi double [ %274, %218 ], [ %325, %282 ]
  %285 = phi double [ %271, %218 ], [ %323, %282 ]
  %286 = phi double [ %269, %218 ], [ %285, %282 ]
  %287 = phi double [ %268, %218 ], [ %320, %282 ]
  %288 = phi double [ %266, %218 ], [ %287, %282 ]
  %289 = phi double [ %265, %218 ], [ %315, %282 ]
  %290 = phi double [ %263, %218 ], [ %289, %282 ]
  %291 = phi double [ %262, %218 ], [ %310, %282 ]
  %292 = phi double [ %260, %218 ], [ %291, %282 ]
  %293 = phi double [ %257, %218 ], [ %357, %282 ]
  %294 = phi double [ %254, %218 ], [ %356, %282 ]
  %295 = phi double [ %253, %218 ], [ %303, %282 ]
  %296 = phi double [ %251, %218 ], [ %295, %282 ]
  %297 = phi i64 [ 1, %218 ], [ %301, %282 ]
  %298 = phi <2 x double> [ %279, %218 ], [ %338, %282 ]
  %299 = phi <2 x double> [ %281, %218 ], [ %345, %282 ]
  %300 = fadd double %296, %295
  %301 = add nuw nsw i64 %297, 1
  %302 = getelementptr inbounds double, ptr %226, i64 %301
  %303 = load double, ptr %302, align 8, !tbaa !28
  %304 = getelementptr inbounds double, ptr %228, i64 %301
  %305 = load double, ptr %304, align 8, !tbaa !28
  %306 = getelementptr inbounds double, ptr %232, i64 %301
  %307 = load double, ptr %306, align 8, !tbaa !28
  %308 = fadd double %292, %291
  %309 = getelementptr inbounds double, ptr %236, i64 %301
  %310 = load double, ptr %309, align 8, !tbaa !28
  %311 = fadd double %308, %310
  %312 = fadd double %311, %290
  %313 = fadd double %312, %289
  %314 = getelementptr inbounds double, ptr %238, i64 %301
  %315 = load double, ptr %314, align 8, !tbaa !28
  %316 = fadd double %313, %315
  %317 = fadd double %316, %288
  %318 = fadd double %317, %287
  %319 = getelementptr inbounds double, ptr %240, i64 %301
  %320 = load double, ptr %319, align 8, !tbaa !28
  %321 = fadd double %318, %320
  %322 = getelementptr inbounds double, ptr %244, i64 %301
  %323 = load double, ptr %322, align 8, !tbaa !28
  %324 = getelementptr inbounds double, ptr %246, i64 %301
  %325 = load double, ptr %324, align 8, !tbaa !28
  %326 = getelementptr inbounds double, ptr %248, i64 %301
  %327 = load double, ptr %326, align 8, !tbaa !28
  %328 = insertelement <2 x double> poison, double %300, i64 0
  %329 = insertelement <2 x double> %328, double %286, i64 1
  %330 = insertelement <2 x double> poison, double %303, i64 0
  %331 = insertelement <2 x double> %330, double %285, i64 1
  %332 = fadd <2 x double> %329, %331
  %333 = insertelement <2 x double> poison, double %294, i64 0
  %334 = insertelement <2 x double> %333, double %323, i64 1
  %335 = fadd <2 x double> %332, %334
  %336 = fadd <2 x double> %335, %298
  %337 = insertelement <2 x double> poison, double %305, i64 0
  %338 = insertelement <2 x double> %337, double %284, i64 1
  %339 = fadd <2 x double> %336, %338
  %340 = insertelement <2 x double> poison, double %293, i64 0
  %341 = insertelement <2 x double> %340, double %325, i64 1
  %342 = fadd <2 x double> %339, %341
  %343 = fadd <2 x double> %342, %299
  %344 = insertelement <2 x double> poison, double %307, i64 0
  %345 = insertelement <2 x double> %344, double %283, i64 1
  %346 = fadd <2 x double> %343, %345
  %347 = insertelement <2 x double> poison, double %321, i64 0
  %348 = insertelement <2 x double> %347, double %327, i64 1
  %349 = fadd <2 x double> %346, %348
  %350 = shufflevector <2 x double> %349, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %351 = fadd <2 x double> %349, %350
  %352 = extractelement <2 x double> %351, i64 0
  %353 = fdiv double %352, 2.700000e+01
  %354 = getelementptr inbounds double, ptr %250, i64 %297
  store double %353, ptr %354, align 8, !tbaa !28
  %355 = icmp eq i64 %301, %45
  %356 = extractelement <2 x double> %298, i64 0
  %357 = extractelement <2 x double> %299, i64 0
  br i1 %355, label %358, label %282, !llvm.loop !222

358:                                              ; preds = %282, %216
  %359 = phi i64 [ %217, %216 ], [ %229, %282 ]
  %360 = icmp eq i64 %359, %44
  br i1 %360, label %361, label %214, !llvm.loop !223

361:                                              ; preds = %358, %206
  %362 = phi i64 [ %207, %206 ], [ %210, %358 ]
  %363 = icmp eq i64 %362, %43
  br i1 %363, label %201, label %204, !llvm.loop !224

364:                                              ; preds = %388, %202
  %365 = phi i64 [ 1, %202 ], [ %389, %388 ]
  %366 = phi i64 [ 0, %202 ], [ %390, %388 ]
  %367 = mul i64 %38, %366
  %368 = add i64 %37, %367
  br i1 %28, label %388, label %369

369:                                              ; preds = %384, %364
  %370 = phi i64 [ %385, %384 ], [ 1, %364 ]
  %371 = phi i64 [ %386, %384 ], [ 0, %364 ]
  br i1 %29, label %384, label %372

372:                                              ; preds = %369
  %373 = mul i64 %39, %371
  %374 = add i64 %368, %373
  %375 = getelementptr i8, ptr %13, i64 %374
  %376 = load ptr, ptr %203, align 8, !tbaa !27
  %377 = getelementptr inbounds ptr, ptr %376, i64 %30
  %378 = load ptr, ptr %377, align 8, !tbaa !11
  %379 = getelementptr inbounds ptr, ptr %378, i64 %365
  %380 = load ptr, ptr %379, align 8, !tbaa !11
  %381 = getelementptr inbounds ptr, ptr %380, i64 %370
  %382 = load ptr, ptr %381, align 8, !tbaa !11
  %383 = getelementptr i8, ptr %382, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr align 8 %383, ptr align 8 %375, i64 %41, i1 false), !tbaa !28
  br label %384

384:                                              ; preds = %372, %369
  %385 = add nuw nsw i64 %370, 1
  %386 = add nuw nsw i64 %371, 1
  %387 = icmp eq i64 %386, %47
  br i1 %387, label %388, label %369, !llvm.loop !225

388:                                              ; preds = %384, %364
  %389 = add nuw nsw i64 %365, 1
  %390 = add nuw nsw i64 %366, 1
  %391 = icmp eq i64 %390, %46
  br i1 %391, label %392, label %364, !llvm.loop !226

392:                                              ; preds = %388, %201, %190
  %393 = add nuw nsw i64 %191, 1
  %394 = icmp eq i64 %393, %42
  br i1 %394, label %395, label %190, !llvm.loop !227

395:                                              ; preds = %392, %187, %48, %23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @reduce_blocks() #0 {
  %1 = tail call double @timer() #24
  tail call void @zero_refine() #22
  %2 = load i32, ptr @target_active, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  %4 = load i32, ptr @global_active, align 4, !tbaa !7
  %5 = load i32, ptr @num_pes, align 4
  %6 = mul nsw i32 %5, %2
  %7 = add i32 %4, 3
  %8 = sub i32 %7, %6
  %9 = select i1 %3, i32 %4, i32 %8
  %10 = sdiv i32 %9, 7
  %11 = icmp sgt i32 %9, 6
  br i1 %11, label %12, label %78

12:                                               ; preds = %0
  %13 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %14

14:                                               ; preds = %70, %12
  %15 = phi i32 [ %19, %70 ], [ %13, %12 ]
  %16 = phi double [ %76, %70 ], [ 0.000000e+00, %12 ]
  %17 = phi double [ %73, %70 ], [ undef, %12 ]
  %18 = phi i32 [ %71, %70 ], [ 0, %12 ]
  %19 = add nsw i32 %15, -1
  %20 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %21 = icmp sgt i32 %20, 0
  %22 = icmp slt i32 %18, %10
  %23 = select i1 %21, i1 %22, i1 false
  br i1 %23, label %24, label %70

24:                                               ; preds = %14
  %25 = load ptr, ptr @parents, align 8, !tbaa !11
  br label %26

26:                                               ; preds = %62, %24
  %27 = phi i32 [ %20, %24 ], [ %63, %62 ]
  %28 = phi i64 [ 0, %24 ], [ %65, %62 ]
  %29 = phi i32 [ %18, %24 ], [ %64, %62 ]
  %30 = getelementptr inbounds %struct.parent, ptr %25, i64 %28
  %31 = load i32, ptr %30, align 4, !tbaa !17
  %32 = icmp sgt i32 %31, -1
  br i1 %32, label %33, label %62

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.parent, ptr %25, i64 %28, i32 1
  %35 = load i32, ptr %34, align 4, !tbaa !54
  %36 = icmp eq i32 %35, %19
  br i1 %36, label %37, label %62

37:                                               ; preds = %33
  %38 = getelementptr inbounds %struct.parent, ptr %25, i64 %28, i32 5
  store i32 -1, ptr %38, align 4, !tbaa !23
  %39 = load ptr, ptr @blocks, align 8
  %40 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %55, %37
  %42 = phi i32 [ %40, %37 ], [ %56, %55 ]
  %43 = phi i64 [ 0, %37 ], [ %57, %55 ]
  %44 = getelementptr inbounds %struct.parent, ptr %25, i64 %28, i32 7, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = icmp eq i32 %45, %42
  br i1 %46, label %47, label %55

47:                                               ; preds = %41
  %48 = getelementptr inbounds %struct.parent, ptr %25, i64 %28, i32 6, i64 %43
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = icmp sgt i32 %49, -1
  br i1 %50, label %51, label %55

51:                                               ; preds = %47
  %52 = zext i32 %49 to i64
  %53 = getelementptr inbounds %struct.block, ptr %39, i64 %52, i32 2
  store i32 -1, ptr %53, align 8, !tbaa !16
  %54 = load i32, ptr @my_pe, align 4, !tbaa !7
  br label %55

55:                                               ; preds = %51, %47, %41
  %56 = phi i32 [ %42, %41 ], [ %42, %47 ], [ %54, %51 ]
  %57 = add nuw nsw i64 %43, 1
  %58 = icmp eq i64 %57, 8
  br i1 %58, label %59, label %41, !llvm.loop !228

59:                                               ; preds = %55
  %60 = add nsw i32 %29, 1
  %61 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  br label %62

62:                                               ; preds = %59, %33, %26
  %63 = phi i32 [ %27, %33 ], [ %27, %26 ], [ %61, %59 ]
  %64 = phi i32 [ %29, %33 ], [ %29, %26 ], [ %60, %59 ]
  %65 = add nuw nsw i64 %28, 1
  %66 = sext i32 %63 to i64
  %67 = icmp slt i64 %65, %66
  %68 = icmp slt i32 %64, %10
  %69 = select i1 %67, i1 %68, i1 false
  br i1 %69, label %26, label %70, !llvm.loop !229

70:                                               ; preds = %62, %14
  %71 = phi i32 [ %18, %14 ], [ %64, %62 ]
  %72 = tail call double @timer() #24
  %73 = fsub double %72, %17
  tail call void @consolidate_blocks() #24
  %74 = tail call double @timer() #24
  %75 = fsub double %74, %73
  %76 = fadd double %16, %75
  %77 = icmp slt i32 %71, %10
  br i1 %77, label %14, label %78, !llvm.loop !230

78:                                               ; preds = %70, %0
  %79 = phi double [ 0.000000e+00, %0 ], [ %76, %70 ]
  %80 = tail call double @timer() #24
  %81 = fsub double %80, %1
  %82 = load double, ptr @timer_target_rb, align 8, !tbaa !28
  %83 = fadd double %82, %81
  store double %83, ptr @timer_target_rb, align 8, !tbaa !28
  %84 = tail call double @timer() #24
  %85 = fsub double %84, %1
  %86 = fsub double %85, %79
  %87 = load double, ptr @timer_target_dc, align 8, !tbaa !28
  %88 = fadd double %87, %86
  store double %88, ptr @timer_target_dc, align 8, !tbaa !28
  %89 = load double, ptr @timer_target_cb, align 8, !tbaa !28
  %90 = fadd double %79, %89
  store double %90, ptr @timer_target_cb, align 8, !tbaa !28
  ret i32 0
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @zero_refine() #5 {
  %1 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %2 = load i32, ptr @num_refine, align 4, !tbaa !7
  %3 = add nsw i32 %2, 1
  %4 = sext i32 %3 to i64
  %5 = getelementptr inbounds i32, ptr %1, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !7
  %7 = icmp sgt i32 %6, 0
  br i1 %7, label %8, label %11

8:                                                ; preds = %0
  %9 = load ptr, ptr @sorted_list, align 8, !tbaa !11
  %10 = load ptr, ptr @blocks, align 8, !tbaa !11
  br label %16

11:                                               ; preds = %39, %0
  %12 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %62

14:                                               ; preds = %11
  %15 = load ptr, ptr @parents, align 8, !tbaa !11
  br label %48

16:                                               ; preds = %39, %8
  %17 = phi i32 [ %2, %8 ], [ %40, %39 ]
  %18 = phi i64 [ 0, %8 ], [ %41, %39 ]
  %19 = getelementptr inbounds %struct.sorted_block, ptr %9, i64 %18, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !52
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.block, ptr %10, i64 %21
  %23 = load i32, ptr %22, align 8, !tbaa !13
  %24 = icmp sgt i32 %23, -1
  br i1 %24, label %25, label %39

25:                                               ; preds = %16
  %26 = getelementptr inbounds %struct.block, ptr %10, i64 %21, i32 2
  store i32 0, ptr %26, align 8, !tbaa !16
  br label %27

27:                                               ; preds = %34, %25
  %28 = phi i64 [ 0, %25 ], [ %35, %34 ]
  %29 = getelementptr inbounds %struct.block, ptr %10, i64 %21, i32 8, i64 %28
  %30 = load i32, ptr %29, align 4, !tbaa !7
  %31 = icmp sgt i32 %30, -1
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.block, ptr %10, i64 %21, i32 7, i64 %28
  store i32 0, ptr %33, align 4, !tbaa !7
  br label %34

34:                                               ; preds = %32, %27
  %35 = add nuw nsw i64 %28, 1
  %36 = icmp eq i64 %35, 6
  br i1 %36, label %37, label %27, !llvm.loop !231

37:                                               ; preds = %34
  %38 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %39

39:                                               ; preds = %37, %16
  %40 = phi i32 [ %38, %37 ], [ %17, %16 ]
  %41 = add nuw nsw i64 %18, 1
  %42 = add nsw i32 %40, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, ptr %1, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = sext i32 %45 to i64
  %47 = icmp slt i64 %41, %46
  br i1 %47, label %16, label %11, !llvm.loop !232

48:                                               ; preds = %57, %14
  %49 = phi i32 [ %12, %14 ], [ %58, %57 ]
  %50 = phi i64 [ 0, %14 ], [ %59, %57 ]
  %51 = getelementptr inbounds %struct.parent, ptr %15, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !17
  %53 = icmp sgt i32 %52, -1
  br i1 %53, label %54, label %57

54:                                               ; preds = %48
  %55 = getelementptr inbounds %struct.parent, ptr %15, i64 %50, i32 5
  store i32 0, ptr %55, align 4, !tbaa !23
  %56 = load i32, ptr @max_active_parent, align 4, !tbaa !7
  br label %57

57:                                               ; preds = %54, %48
  %58 = phi i32 [ %49, %48 ], [ %56, %54 ]
  %59 = add nuw nsw i64 %50, 1
  %60 = sext i32 %58 to i64
  %61 = icmp slt i64 %59, %60
  br i1 %61, label %48, label %62, !llvm.loop !233

62:                                               ; preds = %57, %11
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @add_blocks() #0 {
  %1 = tail call double @timer() #24
  %2 = load i32, ptr @target_active, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %11, label %4

4:                                                ; preds = %0
  %5 = load i32, ptr @num_pes, align 4, !tbaa !7
  %6 = mul nsw i32 %5, %2
  %7 = add nsw i32 %6, 3
  %8 = load i32, ptr @global_active, align 4, !tbaa !7
  %9 = sub i32 %7, %8
  %10 = sdiv i32 %9, 7
  br label %14

11:                                               ; preds = %0
  %12 = load i32, ptr @global_active, align 4, !tbaa !7
  %13 = sdiv i32 %12, -7
  br label %14

14:                                               ; preds = %11, %4
  %15 = phi i32 [ %10, %4 ], [ %13, %11 ]
  %16 = icmp sgt i32 %15, 0
  br i1 %16, label %17, label %79

17:                                               ; preds = %71, %14
  %18 = phi i32 [ %77, %71 ], [ 0, %14 ]
  %19 = phi double [ %76, %71 ], [ 0.000000e+00, %14 ]
  %20 = phi i32 [ %72, %71 ], [ 0, %14 ]
  tail call void @zero_refine() #22
  %21 = load i32, ptr @num_refine, align 4, !tbaa !7
  %22 = icmp sgt i32 %21, -1
  br i1 %22, label %23, label %35

23:                                               ; preds = %17
  %24 = load ptr, ptr @num_blocks, align 8, !tbaa !11
  br label %25

25:                                               ; preds = %32, %23
  %26 = phi i32 [ %21, %23 ], [ %33, %32 ]
  %27 = zext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %24, i64 %27
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %32, label %31

31:                                               ; preds = %25
  %.lcssa = phi i32 [ %26, %25 ]
  store i32 %.lcssa, ptr @cur_max_level, align 4, !tbaa !7
  br label %35

32:                                               ; preds = %25
  %33 = add nsw i32 %26, -1
  %34 = icmp sgt i32 %26, 0
  br i1 %34, label %25, label %35, !llvm.loop !234

35:                                               ; preds = %32, %31, %17
  %36 = icmp slt i32 %20, %15
  br i1 %36, label %37, label %71

37:                                               ; preds = %35
  %38 = load ptr, ptr @sorted_index, align 8, !tbaa !11
  %39 = load ptr, ptr @sorted_list, align 8
  %40 = load ptr, ptr @blocks, align 8
  br label %41

41:                                               ; preds = %66, %37
  %42 = phi i32 [ %21, %37 ], [ %67, %66 ]
  %43 = phi i64 [ 0, %37 ], [ %69, %66 ]
  %44 = phi i32 [ %20, %37 ], [ %68, %66 ]
  %45 = add nsw i32 %42, 1
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, ptr %38, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = sext i32 %48 to i64
  %50 = icmp slt i64 %43, %49
  br i1 %50, label %51, label %71

51:                                               ; preds = %41
  %52 = getelementptr inbounds %struct.sorted_block, ptr %39, i64 %43, i32 1
  %53 = load i32, ptr %52, align 4, !tbaa !52
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.block, ptr %40, i64 %54
  %56 = load i32, ptr %55, align 8, !tbaa !13
  %57 = icmp sgt i32 %56, -1
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = getelementptr inbounds %struct.block, ptr %40, i64 %54, i32 1
  %60 = load i32, ptr %59, align 4, !tbaa !15
  %61 = icmp eq i32 %60, %18
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = getelementptr inbounds %struct.block, ptr %40, i64 %54, i32 2
  store i32 1, ptr %63, align 8, !tbaa !16
  %64 = add nsw i32 %44, 1
  %65 = load i32, ptr @num_refine, align 4, !tbaa !7
  br label %66

66:                                               ; preds = %62, %58, %51
  %67 = phi i32 [ %65, %62 ], [ %42, %58 ], [ %42, %51 ]
  %68 = phi i32 [ %64, %62 ], [ %44, %58 ], [ %44, %51 ]
  %69 = add nuw nsw i64 %43, 1
  %70 = icmp slt i32 %68, %15
  br i1 %70, label %41, label %71, !llvm.loop !235

71:                                               ; preds = %66, %41, %35
  %72 = phi i32 [ %20, %35 ], [ %68, %66 ], [ %44, %41 ]
  %73 = tail call double @timer() #24
  tail call void @split_blocks() #24
  %74 = tail call double @timer() #24
  %75 = fsub double %74, %73
  %76 = fadd double %19, %75
  %77 = add nuw nsw i32 %18, 1
  %78 = icmp slt i32 %72, %15
  br i1 %78, label %17, label %79, !llvm.loop !236

79:                                               ; preds = %71, %14
  %80 = phi double [ 0.000000e+00, %14 ], [ %76, %71 ]
  %81 = tail call double @timer() #24
  %82 = fsub double %81, %1
  %83 = load double, ptr @timer_target_ab, align 8, !tbaa !28
  %84 = fadd double %83, %82
  store double %84, ptr @timer_target_ab, align 8, !tbaa !28
  %85 = tail call double @timer() #24
  %86 = fsub double %85, %1
  %87 = fsub double %86, %80
  %88 = load double, ptr @timer_target_da, align 8, !tbaa !28
  %89 = fadd double %88, %87
  store double %89, ptr @timer_target_da, align 8, !tbaa !28
  %90 = load double, ptr @timer_target_sb, align 8, !tbaa !28
  %91 = fadd double %80, %90
  store double %91, ptr @timer_target_sb, align 8, !tbaa !28
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal double @timer() #0 {
  %1 = tail call i64 @clock() #24
  %2 = sitofp i64 %1 to double
  %3 = fdiv double %2, 1.000000e+06
  ret double %3
}

; Function Attrs: nounwind optsize
declare i64 @clock() local_unnamed_addr #19

; Function Attrs: nounwind optsize uwtable
define internal noalias ptr @ma_malloc(i64 noundef %0, ptr noundef %1, i32 noundef %2) #0 {
  %4 = tail call noalias ptr @malloc(i64 noundef %0) #26
  %5 = icmp eq ptr %4, null
  br i1 %5, label %6, label %8

6:                                                ; preds = %3
  %7 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.213, ptr noundef %1, i32 noundef %2) #22
  tail call void @exit(i32 noundef -1) #23
  unreachable

8:                                                ; preds = %3
  %9 = load i32, ptr @counter_malloc, align 4, !tbaa !7
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr @counter_malloc, align 4, !tbaa !7
  %11 = uitofp i64 %0 to double
  %12 = load double, ptr @size_malloc, align 8, !tbaa !28
  %13 = fadd double %12, %11
  store double %13, ptr @size_malloc, align 8, !tbaa !28
  ret ptr %4
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #20

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind optsize memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #17 = { mustprogress nofree nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { nounwind }
attributes #22 = { optsize }
attributes #23 = { noreturn nounwind optsize }
attributes #24 = { nounwind optsize }
attributes #25 = { nounwind optsize willreturn memory(read) }
attributes #26 = { nounwind optsize allocsize(0) }

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
!13 = !{!14, !8, i64 0}
!14 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !9, i64 28, !9, i64 52, !9, i64 76, !9, i64 172, !12, i64 184}
!15 = !{!14, !8, i64 4}
!16 = !{!14, !8, i64 8}
!17 = !{!18, !8, i64 0}
!18 = !{!"", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !9, i64 24, !9, i64 56, !9, i64 88}
!19 = distinct !{!19, !20}
!20 = !{!"llvm.loop.mustprogress"}
!21 = !{!14, !8, i64 24}
!22 = !{!18, !8, i64 16}
!23 = !{!18, !8, i64 20}
!24 = distinct !{!24, !20}
!25 = !{!14, !8, i64 16}
!26 = !{!14, !8, i64 20}
!27 = !{!14, !12, i64 184}
!28 = !{!29, !29, i64 0}
!29 = !{!"double", !9, i64 0}
!30 = distinct !{!30, !20}
!31 = distinct !{!31, !20}
!32 = distinct !{!32, !20}
!33 = distinct !{!33, !20}
!34 = distinct !{!34, !20}
!35 = distinct !{!35, !20}
!36 = distinct !{!36, !20}
!37 = distinct !{!37, !20}
!38 = distinct !{!38, !20}
!39 = distinct !{!39, !20}
!40 = distinct !{!40, !20}
!41 = distinct !{!41, !20}
!42 = distinct !{!42, !20}
!43 = distinct !{!43, !20}
!44 = distinct !{!44, !20}
!45 = !{!46, !8, i64 0}
!46 = !{!"", !8, i64 0, !8, i64 4}
!47 = distinct !{!47, !20}
!48 = distinct !{!48, !20}
!49 = distinct !{!49, !20}
!50 = distinct !{!50, !20}
!51 = distinct !{!51, !20}
!52 = !{!46, !8, i64 4}
!53 = distinct !{!53, !20}
!54 = !{!18, !8, i64 4}
!55 = distinct !{!55, !20}
!56 = distinct !{!56, !20}
!57 = distinct !{!57, !20}
!58 = distinct !{!58, !20}
!59 = distinct !{!59, !20}
!60 = distinct !{!60, !20}
!61 = distinct !{!61, !20}
!62 = distinct !{!62, !20}
!63 = distinct !{!63, !20}
!64 = distinct !{!64, !20}
!65 = distinct !{!65, !20}
!66 = distinct !{!66, !20}
!67 = distinct !{!67, !20}
!68 = distinct !{!68, !20}
!69 = distinct !{!69, !20}
!70 = distinct !{!70, !20}
!71 = distinct !{!71, !20}
!72 = distinct !{!72, !20}
!73 = distinct !{!73, !20}
!74 = distinct !{!74, !20}
!75 = distinct !{!75, !20}
!76 = distinct !{!76, !20}
!77 = distinct !{!77, !20}
!78 = distinct !{!78, !20}
!79 = distinct !{!79, !20}
!80 = distinct !{!80, !20}
!81 = distinct !{!81, !20}
!82 = distinct !{!82, !20}
!83 = distinct !{!83, !20}
!84 = distinct !{!84, !20}
!85 = distinct !{!85, !20}
!86 = distinct !{!86, !20}
!87 = distinct !{!87, !20}
!88 = distinct !{!88, !20}
!89 = distinct !{!89, !20}
!90 = distinct !{!90, !20}
!91 = distinct !{!91, !20}
!92 = distinct !{!92, !20}
!93 = distinct !{!93, !20}
!94 = distinct !{!94, !20}
!95 = distinct !{!95, !20}
!96 = distinct !{!96, !20}
!97 = distinct !{!97, !20}
!98 = distinct !{!98, !20}
!99 = distinct !{!99, !20}
!100 = distinct !{!100, !20}
!101 = distinct !{!101, !20}
!102 = distinct !{!102, !20}
!103 = distinct !{!103, !20}
!104 = distinct !{!104, !20}
!105 = distinct !{!105, !20}
!106 = distinct !{!106, !20}
!107 = distinct !{!107, !20}
!108 = distinct !{!108, !20}
!109 = distinct !{!109, !20}
!110 = distinct !{!110, !20}
!111 = distinct !{!111, !20}
!112 = distinct !{!112, !20}
!113 = distinct !{!113, !20}
!114 = distinct !{!114, !20}
!115 = distinct !{!115, !20}
!116 = distinct !{!116, !20}
!117 = distinct !{!117, !20}
!118 = distinct !{!118, !20}
!119 = distinct !{!119, !20}
!120 = distinct !{!120, !20}
!121 = distinct !{!121, !20}
!122 = distinct !{!122, !20}
!123 = distinct !{!123, !20}
!124 = distinct !{!124, !20}
!125 = distinct !{!125, !20}
!126 = distinct !{!126, !20}
!127 = distinct !{!127, !20}
!128 = distinct !{!128, !20}
!129 = distinct !{!129, !20}
!130 = distinct !{!130, !20}
!131 = distinct !{!131, !20}
!132 = distinct !{!132, !20}
!133 = distinct !{!133, !20}
!134 = distinct !{!134, !20}
!135 = distinct !{!135, !20}
!136 = distinct !{!136, !20}
!137 = distinct !{!137, !20}
!138 = distinct !{!138, !20}
!139 = distinct !{!139, !20}
!140 = distinct !{!140, !20}
!141 = distinct !{!141, !20}
!142 = distinct !{!142, !20}
!143 = !{!144, !144, i64 0}
!144 = !{!"long", !9, i64 0}
!145 = distinct !{!145, !20}
!146 = distinct !{!146, !20}
!147 = distinct !{!147, !20}
!148 = distinct !{!148, !20}
!149 = distinct !{!149, !20}
!150 = distinct !{!150, !20}
!151 = distinct !{!151, !20}
!152 = distinct !{!152, !20}
!153 = distinct !{!153, !20}
!154 = distinct !{!154, !20}
!155 = distinct !{!155, !20}
!156 = distinct !{!156, !20}
!157 = distinct !{!157, !20}
!158 = distinct !{!158, !20}
!159 = !{!160, !8, i64 0}
!160 = !{!"", !8, i64 0, !8, i64 4, !9, i64 8, !9, i64 32, !9, i64 56, !9, i64 80, !9, i64 104, !9, i64 128, !9, i64 152}
!161 = !{!160, !8, i64 4}
!162 = distinct !{!162, !20}
!163 = !{i32 0, i32 2}
!164 = distinct !{!164, !20}
!165 = distinct !{!165, !20}
!166 = distinct !{!166, !20}
!167 = distinct !{!167, !20}
!168 = distinct !{!168, !20}
!169 = distinct !{!169, !20}
!170 = distinct !{!170, !20}
!171 = distinct !{!171, !20}
!172 = distinct !{!172, !20}
!173 = distinct !{!173, !20}
!174 = distinct !{!174, !20}
!175 = distinct !{!175, !20}
!176 = distinct !{!176, !20}
!177 = distinct !{!177, !20}
!178 = distinct !{!178, !20}
!179 = distinct !{!179, !20}
!180 = !{!9, !9, i64 0}
!181 = distinct !{!181, !20}
!182 = distinct !{!182, !20}
!183 = distinct !{!183, !20}
!184 = distinct !{!184, !20}
!185 = distinct !{!185, !20}
!186 = distinct !{!186, !20}
!187 = distinct !{!187, !20}
!188 = distinct !{!188, !20}
!189 = distinct !{!189, !20}
!190 = distinct !{!190, !20}
!191 = distinct !{!191, !20}
!192 = distinct !{!192, !20}
!193 = distinct !{!193, !20}
!194 = distinct !{!194, !20}
!195 = distinct !{!195, !20}
!196 = distinct !{!196, !20}
!197 = distinct !{!197, !20}
!198 = distinct !{!198, !20}
!199 = distinct !{!199, !20}
!200 = distinct !{!200, !20}
!201 = distinct !{!201, !20}
!202 = distinct !{!202, !20}
!203 = distinct !{!203, !20}
!204 = distinct !{!204, !20}
!205 = distinct !{!205, !20}
!206 = distinct !{!206, !20}
!207 = distinct !{!207, !20}
!208 = distinct !{!208, !20}
!209 = distinct !{!209, !20}
!210 = distinct !{!210, !20}
!211 = distinct !{!211, !20}
!212 = distinct !{!212, !20}
!213 = distinct !{!213, !20}
!214 = distinct !{!214, !20}
!215 = distinct !{!215, !20}
!216 = distinct !{!216, !20}
!217 = distinct !{!217, !20}
!218 = distinct !{!218, !20}
!219 = distinct !{!219, !20}
!220 = distinct !{!220, !20}
!221 = distinct !{!221, !20}
!222 = distinct !{!222, !20}
!223 = distinct !{!223, !20}
!224 = distinct !{!224, !20}
!225 = distinct !{!225, !20}
!226 = distinct !{!226, !20}
!227 = distinct !{!227, !20}
!228 = distinct !{!228, !20}
!229 = distinct !{!229, !20}
!230 = distinct !{!230, !20}
!231 = distinct !{!231, !20}
!232 = distinct !{!232, !20}
!233 = distinct !{!233, !20}
!234 = distinct !{!234, !20}
!235 = distinct !{!235, !20}
!236 = distinct !{!236, !20}
