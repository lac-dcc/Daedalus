; ModuleID = '/src/llvm-test-suite/build/MultiSource/Applications/lambda-0.1.3/lambda.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.header_def = type { i32, ptr }
%class.token_stream = type <{ i16, i16, [4 x i8], ptr, ptr, i32, [8192 x i8], [512 x i8], [4 x i8], ptr, i32, i32, i32, [4 x i8] }>
%class.lambda_expression_parser = type <{ ptr, i32, [4 x i8] }>
%class.node = type { ptr, ptr }
%class.arg_node = type { %class.node, ptr, ptr }
%class.var_node = type { %class.exp_node, ptr }
%class.exp_node = type { %class.node }
%class.app_node = type { %class.exp_node, ptr, ptr }
%class.stack_frame = type { %class.app_node }
%struct.__va_list_tag = type { i32, i32, ptr, ptr }

$_ZNK8arg_node2opEv = comdat any

$_ZNK8arg_node4nameEv = comdat any

$_ZNK8arg_node5valueEv = comdat any

$_ZNK4node3argEv = comdat any

$_ZNK4node4bodyEv = comdat any

$_ZNK4node4leftEv = comdat any

$_ZNK4node5rightEv = comdat any

$_ZNK4node4nextEv = comdat any

$_ZNK4node6parentEv = comdat any

$_ZN4node10set_parentEPS_ = comdat any

$_ZN4node6reduceEPK9alst_nodeiPi = comdat any

$_ZNK8var_node5cloneEv = comdat any

$_ZN8var_nodeD2Ev = comdat any

$_ZN8var_nodeD0Ev = comdat any

$_ZNK8var_node2opEv = comdat any

$_ZNK8var_node4nameEv = comdat any

$_ZNK4node5valueEv = comdat any

$_ZN8var_node11reduce_varsEPK9alst_nodeiPi = comdat any

$_ZN8var_node18resolve_name_clashEP8arg_nodeP9alst_node = comdat any

$_ZN8exp_node11export_bodyEv = comdat any

$_ZN8exp_node11export_leftEv = comdat any

$_ZN8exp_node12export_rightEv = comdat any

$_ZN8exp_node12extract_defsEPK9alst_node = comdat any

$_ZNK8app_node5cloneEv = comdat any

$_ZNK8app_node2opEv = comdat any

$_ZNK4node4nameEv = comdat any

$_ZNK8app_node4leftEv = comdat any

$_ZNK8app_node5rightEv = comdat any

$_ZNK8app_node4bindEPK9alst_node = comdat any

$_ZN8app_node11export_leftEv = comdat any

$_ZN8app_node12export_rightEv = comdat any

$_ZNK11arglst_node5cloneEv = comdat any

$_ZNK11arglst_node2opEv = comdat any

$_ZNK11arglst_node3argEv = comdat any

$_ZNK11arglst_node4nextEv = comdat any

$_ZN11stack_frameD2Ev = comdat any

$_ZN11stack_frameD0Ev = comdat any

$_ZNK11stack_frame2opEv = comdat any

$_ZNK8lam_node5cloneEv = comdat any

$_ZNK8lam_node2opEv = comdat any

$_ZNK8lam_node3argEv = comdat any

$_ZNK8lam_node4bodyEv = comdat any

$_ZNK8lam_node4bindEPK9alst_node = comdat any

$_ZN8lam_node11export_bodyEv = comdat any

$_ZN8arg_node8set_nameEPKc = comdat any

$_ZTS9alst_node = comdat any

$_ZTI9alst_node = comdat any

$_ZTV11stack_frame = comdat any

$_ZTS11stack_frame = comdat any

$_ZTI11stack_frame = comdat any

@.str.2 = private unnamed_addr constant [4 x i8] c"<< \00", align 1
@.str.3 = private unnamed_addr constant [5 x i8] c"==> \00", align 1
@.str.5 = private unnamed_addr constant [2 x i8] c"=\00", align 1
@.str.6 = private unnamed_addr constant [2 x i8] c"H\00", align 1
@.str.7 = private unnamed_addr constant [2 x i8] c"B\00", align 1
@.str.8 = private unnamed_addr constant [11 x i8] c"=%1.1s==> \00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"*** Continue?[y/n]:\00", align 1
@.str.11 = private unnamed_addr constant [6 x i8] c"====>\00", align 1
@str = private unnamed_addr constant [58 x i8] c"Copyright (c) 2000 John A. Maiorana. All rights reserved.\00", align 1
@_ZL13name_sequence = internal unnamed_addr global i32 1, align 4
@_ZL27lambda_reduce_recurse_level = internal unnamed_addr global i32 0, align 4
@_ZL24app_reduce_recurse_level = internal unnamed_addr global i32 0, align 4
@_ZL24var_reduce_recurse_level = internal unnamed_addr global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"(%p:node)\00", align 1
@_ZTV8arg_node = internal unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTI8arg_node, ptr @_ZNK8arg_node5cloneEv, ptr @_ZN8arg_nodeD2Ev, ptr @_ZN8arg_nodeD0Ev, ptr @_ZNK8arg_node2opEv, ptr @_ZNK8arg_node4nameEv, ptr @_ZNK8arg_node5valueEv, ptr @_ZNK4node3argEv, ptr @_ZNK4node4bodyEv, ptr @_ZNK4node4leftEv, ptr @_ZNK4node5rightEv, ptr @_ZNK4node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN4node6reduceEPK9alst_nodeiPi, ptr @_ZNK8arg_node5printEPK9alst_nodei, ptr @_ZN8arg_nodeaSERKS_] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !14, !type !15, !type !16, !type !17, !type !18, !type !19, !type !20, !type !21, !type !22, !type !23, !type !24, !type !25, !type !26, !type !27, !type !28, !type !29
@.str.1 = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@.str.2.3 = private unnamed_addr constant [7 x i8] c"(null)\00", align 1
@.str.3.4 = private unnamed_addr constant [4 x i8] c" = \00", align 1
@_ZTV8var_node = internal unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTI8var_node, ptr @_ZNK8var_node5cloneEv, ptr @_ZN8var_nodeD2Ev, ptr @_ZN8var_nodeD0Ev, ptr @_ZNK8var_node2opEv, ptr @_ZNK8var_node4nameEv, ptr @_ZNK4node5valueEv, ptr @_ZNK4node3argEv, ptr @_ZNK4node4bodyEv, ptr @_ZNK4node4leftEv, ptr @_ZNK4node5rightEv, ptr @_ZNK4node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN8var_node6reduceEPK9alst_nodeiPi, ptr @_ZNK8var_node5printEPK9alst_nodei, ptr @_ZNK8var_node8has_freeEPK8arg_nodePK9alst_node, ptr @_ZNK8var_node4bindEPK9alst_node, ptr @_ZN8var_node11reduce_varsEPK9alst_nodeiPi, ptr @_ZN8var_node6renameEP8arg_nodePKcP9alst_node, ptr @_ZN8var_node18resolve_name_clashEP8arg_nodeP9alst_node, ptr @_ZNK8var_nodeeqERK8exp_node, ptr @_ZN8exp_node11export_bodyEv, ptr @_ZN8exp_node11export_leftEv, ptr @_ZN8exp_node12export_rightEv, ptr @_ZNK8exp_node5matchEPK9alst_node, ptr @_ZN8exp_node12extract_defsEPK9alst_node, ptr @_ZNK8var_node7extractEPKci, ptr @_ZN8var_node12reduce_valueEPK9alst_nodeiPiPS2_] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !30, !type !31, !type !32, !type !33, !type !34, !type !35, !type !36, !type !37, !type !38, !type !39, !type !40, !type !41, !type !42, !type !43, !type !44, !type !45, !type !46, !type !47, !type !48, !type !49, !type !50, !type !51, !type !52, !type !53, !type !54, !type !55, !type !56, !type !57, !type !58, !type !59, !type !60, !type !61, !type !62, !type !63, !type !64, !type !65, !type !66, !type !67, !type !68, !type !69, !type !70, !type !71, !type !72, !type !73, !type !74, !type !75, !type !76, !type !77, !type !78, !type !79, !type !80, !type !81, !type !82, !type !83, !type !84, !type !85, !type !86, !type !87, !type !88, !type !89, !type !90, !type !91, !type !92, !type !93, !type !94, !type !95, !type !96
@.str.4 = private unnamed_addr constant [11 x i8] c"(null-var)\00", align 1
@.str.5.10 = private unnamed_addr constant [2 x i8] c"m\00", align 1
@.str.6.11 = private unnamed_addr constant [2 x i8] c"n\00", align 1
@.str.7.8 = private unnamed_addr constant [31 x i8] c"\0Avar_reduce_recurse_level %d [\00", align 1
@.str.9.7 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.10 = private unnamed_addr constant [2 x i8] c"K\00", align 1
@_ZTV8lam_node = internal unnamed_addr constant { [30 x ptr] } { [30 x ptr] [ptr null, ptr @_ZTI8lam_node, ptr @_ZNK8lam_node5cloneEv, ptr @_ZN8lam_nodeD2Ev, ptr @_ZN8lam_nodeD0Ev, ptr @_ZNK8lam_node2opEv, ptr @_ZNK4node4nameEv, ptr @_ZNK4node5valueEv, ptr @_ZNK8lam_node3argEv, ptr @_ZNK8lam_node4bodyEv, ptr @_ZNK4node4leftEv, ptr @_ZNK4node5rightEv, ptr @_ZNK4node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN8lam_node6reduceEPK9alst_nodeiPi, ptr @_ZNK8lam_node5printEPK9alst_nodei, ptr @_ZNK8lam_node8has_freeEPK8arg_nodePK9alst_node, ptr @_ZNK8lam_node4bindEPK9alst_node, ptr @_ZN8lam_node11reduce_varsEPK9alst_nodeiPi, ptr @_ZN8lam_node6renameEP8arg_nodePKcP9alst_node, ptr @_ZN8lam_node18resolve_name_clashEP8arg_nodeP9alst_node, ptr @_ZNK8lam_nodeeqERK8exp_node, ptr @_ZN8lam_node11export_bodyEv, ptr @_ZN8exp_node11export_leftEv, ptr @_ZN8exp_node12export_rightEv, ptr @_ZNK8exp_node5matchEPK9alst_node, ptr @_ZN8lam_node12extract_defsEPK9alst_node, ptr @_ZNK8lam_node7extractEPKci, ptr @_ZN8lam_node10eta_reduceEPK9alst_nodeiPi] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !30, !type !31, !type !32, !type !33, !type !34, !type !35, !type !36, !type !37, !type !38, !type !39, !type !40, !type !41, !type !97, !type !43, !type !44, !type !45, !type !46, !type !47, !type !48, !type !49, !type !50, !type !51, !type !52, !type !53, !type !54, !type !55, !type !56, !type !57, !type !58, !type !59, !type !60, !type !61, !type !62, !type !63, !type !64, !type !65, !type !66, !type !67, !type !68, !type !98, !type !99, !type !100, !type !101, !type !102, !type !103, !type !104, !type !105, !type !106, !type !107, !type !108, !type !109, !type !110, !type !111, !type !112, !type !113, !type !114, !type !115, !type !116, !type !117, !type !118, !type !119, !type !120, !type !121, !type !122, !type !123, !type !124, !type !125
@.str.11.12 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.13 = private unnamed_addr constant [11 x i8] c"(null-arg)\00", align 1
@.str.17 = private unnamed_addr constant [12 x i8] c"(null-body)\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"L:  \00", align 1
@.str.20 = private unnamed_addr constant [33 x i8] c"\0Alambda_reduce_recurse_level %d\0A\00", align 1
@.str.21 = private unnamed_addr constant [8 x i8] c"[%d.%d]\00", align 1
@_ZTV8app_node = internal unnamed_addr constant { [29 x ptr] } { [29 x ptr] [ptr null, ptr @_ZTI8app_node, ptr @_ZNK8app_node5cloneEv, ptr @_ZN8app_nodeD2Ev, ptr @_ZN8app_nodeD0Ev, ptr @_ZNK8app_node2opEv, ptr @_ZNK4node4nameEv, ptr @_ZNK4node5valueEv, ptr @_ZNK4node3argEv, ptr @_ZNK4node4bodyEv, ptr @_ZNK8app_node4leftEv, ptr @_ZNK8app_node5rightEv, ptr @_ZNK4node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN8app_node6reduceEPK9alst_nodeiPi, ptr @_ZNK8app_node5printEPK9alst_nodei, ptr @_ZNK8app_node8has_freeEPK8arg_nodePK9alst_node, ptr @_ZNK8app_node4bindEPK9alst_node, ptr @_ZN8app_node11reduce_varsEPK9alst_nodeiPi, ptr @_ZN8app_node6renameEP8arg_nodePKcP9alst_node, ptr @_ZN8app_node18resolve_name_clashEP8arg_nodeP9alst_node, ptr @_ZNK8app_nodeeqERK8exp_node, ptr @_ZN8exp_node11export_bodyEv, ptr @_ZN8app_node11export_leftEv, ptr @_ZN8app_node12export_rightEv, ptr @_ZNK8exp_node5matchEPK9alst_node, ptr @_ZN8app_node12extract_defsEPK9alst_node, ptr @_ZNK8app_node7extractEPKci] }, align 8, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !30, !type !31, !type !32, !type !33, !type !34, !type !35, !type !36, !type !37, !type !38, !type !39, !type !40, !type !41, !type !126, !type !127, !type !128, !type !129, !type !130, !type !131, !type !132, !type !133, !type !134, !type !135, !type !136, !type !137, !type !138, !type !139, !type !140, !type !141, !type !142, !type !143, !type !144, !type !145, !type !146, !type !147, !type !148, !type !149, !type !150, !type !151, !type !43, !type !44, !type !45, !type !46, !type !47, !type !48, !type !49, !type !50, !type !51, !type !52, !type !53, !type !54, !type !55, !type !56, !type !57, !type !58, !type !59, !type !60, !type !61, !type !62, !type !63, !type !64, !type !65, !type !66, !type !67, !type !68
@.str.23 = private unnamed_addr constant [13 x i8] c"(null-right)\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"()\00", align 1
@.str.27 = private unnamed_addr constant [30 x i8] c"\0Aapp_reduce_recurse_level %d\0A\00", align 1
@.str.28 = private unnamed_addr constant [2 x i8] c"S\00", align 1
@_ZTV11arglst_node = internal unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI11arglst_node, ptr @_ZNK11arglst_node5cloneEv, ptr @_ZN11arglst_nodeD2Ev, ptr @_ZN11arglst_nodeD0Ev, ptr @_ZNK11arglst_node2opEv, ptr @_ZNK4node4nameEv, ptr @_ZNK4node5valueEv, ptr @_ZNK11arglst_node3argEv, ptr @_ZNK4node4bodyEv, ptr @_ZNK4node4leftEv, ptr @_ZNK4node5rightEv, ptr @_ZNK11arglst_node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN4node6reduceEPK9alst_nodeiPi, ptr @_ZNK4node5printEPK9alst_nodei, ptr @_ZN11arglst_node3addEP8arg_nodes, ptr @_ZN11arglst_node4findEP8arg_node, ptr @_ZN11arglst_node4listEv] }, align 8, !type !152, !type !153, !type !154, !type !155, !type !156, !type !157, !type !158, !type !159, !type !160, !type !161, !type !162, !type !163, !type !164, !type !165, !type !166, !type !167, !type !168, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !169, !type !170, !type !171, !type !172, !type !173, !type !174, !type !175, !type !176, !type !177, !type !178, !type !179, !type !180, !type !181, !type !182, !type !183, !type !184, !type !185, !type !186, !type !187, !type !188
@_ZTVN10__cxxabiv117__class_type_infoE = external global ptr
@_ZTS4node = internal constant [6 x i8] c"4node\00", align 1
@_ZTI4node = internal constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTS4node }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global ptr
@_ZTS8arg_node = internal constant [10 x i8] c"8arg_node\00", align 1
@_ZTI8arg_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8arg_node, ptr @_ZTI4node }, align 8
@_ZTS8exp_node = internal constant [10 x i8] c"8exp_node\00", align 1
@_ZTI8exp_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8exp_node, ptr @_ZTI4node }, align 8
@_ZTS8var_node = internal constant [10 x i8] c"8var_node\00", align 1
@_ZTI8var_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8var_node, ptr @_ZTI8exp_node }, align 8
@_ZTS8lam_node = internal constant [10 x i8] c"8lam_node\00", align 1
@_ZTI8lam_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8lam_node, ptr @_ZTI8exp_node }, align 8
@_ZTS8app_node = internal constant [10 x i8] c"8app_node\00", align 1
@_ZTI8app_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS8app_node, ptr @_ZTI8exp_node }, align 8
@_ZTS11arglst_node = internal constant [14 x i8] c"11arglst_node\00", align 1
@_ZTS9alst_node = internal constant [11 x i8] c"9alst_node\00", comdat, align 1
@_ZTI9alst_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS9alst_node, ptr @_ZTI4node }, comdat, align 8
@_ZTI11arglst_node = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11arglst_node, ptr @_ZTI9alst_node }, align 8
@_ZTV11stack_frame = internal unnamed_addr constant { [20 x ptr] } { [20 x ptr] [ptr null, ptr @_ZTI11stack_frame, ptr @_ZNK11arglst_node5cloneEv, ptr @_ZN11stack_frameD2Ev, ptr @_ZN11stack_frameD0Ev, ptr @_ZNK11stack_frame2opEv, ptr @_ZNK4node4nameEv, ptr @_ZNK4node5valueEv, ptr @_ZNK11arglst_node3argEv, ptr @_ZNK4node4bodyEv, ptr @_ZNK4node4leftEv, ptr @_ZNK4node5rightEv, ptr @_ZNK11arglst_node4nextEv, ptr @_ZNK4node6parentEv, ptr @_ZN4node10set_parentEPS_, ptr @_ZN4node6reduceEPK9alst_nodeiPi, ptr @_ZNK4node5printEPK9alst_nodei, ptr @_ZN11arglst_node3addEP8arg_nodes, ptr @_ZN11arglst_node4findEP8arg_node, ptr @_ZN11arglst_node4listEv] }, comdat, align 8, !type !152, !type !153, !type !154, !type !155, !type !156, !type !157, !type !158, !type !159, !type !160, !type !161, !type !162, !type !163, !type !164, !type !165, !type !166, !type !167, !type !168, !type !189, !type !190, !type !191, !type !192, !type !193, !type !194, !type !195, !type !196, !type !197, !type !198, !type !199, !type !200, !type !201, !type !202, !type !203, !type !204, !type !205, !type !0, !type !1, !type !2, !type !3, !type !4, !type !5, !type !6, !type !7, !type !8, !type !9, !type !10, !type !11, !type !12, !type !13, !type !169, !type !170, !type !171, !type !172, !type !173, !type !174, !type !175, !type !176, !type !177, !type !178, !type !179, !type !180, !type !181, !type !182, !type !183, !type !184, !type !185, !type !186, !type !187, !type !188
@_ZTS11stack_frame = internal constant [14 x i8] c"11stack_frame\00", comdat, align 1
@_ZTI11stack_frame = internal constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTS11stack_frame, ptr @_ZTI11arglst_node }, comdat, align 8
@.str.29 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.30 = private unnamed_addr constant [6 x i8] c"%s#%d\00", align 1
@str.9 = private unnamed_addr constant [2 x i8] c"]\00", align 1
@trace_lambda = internal global i32 0, align 4
@step_lambda = internal global i32 0, align 4
@print_symbols = internal global i32 1, align 4
@applicative_order = internal global i32 0, align 4
@reduce_body = internal global i32 0, align 4
@brief_print = internal global i32 1, align 4
@step_thru = internal global i32 0, align 4
@extract_eta = internal global i32 1, align 4
@extract_app = internal global i32 0, align 4
@reduce_fully = internal global i32 1, align 4
@.str.15 = private unnamed_addr constant [5 x i8] c"QUIT\00", align 1
@.str.1.16 = private unnamed_addr constant [6 x i8] c"trace\00", align 1
@.str.2.19 = private unnamed_addr constant [5 x i8] c"step\00", align 1
@.str.3.24 = private unnamed_addr constant [5 x i8] c"thru\00", align 1
@.str.4.25 = private unnamed_addr constant [4 x i8] c"sym\00", align 1
@.str.5.28 = private unnamed_addr constant [4 x i8] c"app\00", align 1
@.str.6.31 = private unnamed_addr constant [5 x i8] c"body\00", align 1
@.str.7.34 = private unnamed_addr constant [6 x i8] c"brief\00", align 1
@.str.8.37 = private unnamed_addr constant [4 x i8] c"eta\00", align 1
@.str.9.38 = private unnamed_addr constant [5 x i8] c"xapp\00", align 1
@.str.10.39 = private unnamed_addr constant [5 x i8] c"full\00", align 1
@.str.11.42 = private unnamed_addr constant [13 x i8] c">trace = %d\0A\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c">step  = %d\0A\00", align 1
@.str.13.43 = private unnamed_addr constant [13 x i8] c">thru  = %d\0A\00", align 1
@.str.14 = private unnamed_addr constant [13 x i8] c">app   = %d\0A\00", align 1
@.str.15.44 = private unnamed_addr constant [13 x i8] c">body  = %d\0A\00", align 1
@.str.16 = private unnamed_addr constant [13 x i8] c">brief = %d\0A\00", align 1
@.str.17.45 = private unnamed_addr constant [13 x i8] c">sym   = %d\0A\00", align 1
@.str.18.46 = private unnamed_addr constant [13 x i8] c">eta   = %d\0A\00", align 1
@.str.19 = private unnamed_addr constant [13 x i8] c">xapp  = %d\0A\00", align 1
@.str.20.47 = private unnamed_addr constant [13 x i8] c">full  = %d\0A\00", align 1
@.str.22 = private unnamed_addr constant [27 x i8] c"expresion expected: got %s\00", align 1
@.str.23.48 = private unnamed_addr constant [9 x i8] c"(*null*)\00", align 1
@.str.24 = private unnamed_addr constant [22 x i8] c"NAME expected: got %s\00", align 1
@.str.25.50 = private unnamed_addr constant [24 x i8] c"PERIOD expected: got %s\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c") expected: got %s\00", align 1
@definition_env = internal global ptr null, align 8
@.str.27.52 = private unnamed_addr constant [2 x i8] c"\22\00", align 1
@.str.28.51 = private unnamed_addr constant [2 x i8] c"~\00", align 1
@.str.29.49 = private unnamed_addr constant [15 x i8] c"\0A*** line %d: \00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.59 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.1.60 = private unnamed_addr constant [21 x i8] c"Cannot Open \22%s\22:%s\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@.str.2.61 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.3.62 = private unnamed_addr constant [15 x i8] c"\0A*** line %d: \00", align 1
@.str.4.69 = private unnamed_addr constant [51 x i8] c"*error reading line %d of DataDesc input file: %s\0A\00", align 1
@_ZL7headers = internal unnamed_addr constant [8 x %struct.header_def] [%struct.header_def { i32 1, ptr @.str.8.72 }, %struct.header_def { i32 2, ptr @.str.9.73 }, %struct.header_def { i32 3, ptr @.str.10.74 }, %struct.header_def { i32 4, ptr @.str.11.75 }, %struct.header_def { i32 5, ptr @.str.12.76 }, %struct.header_def { i32 6, ptr @.str.13.77 }, %struct.header_def { i32 7, ptr @.str.14.78 }, %struct.header_def zeroinitializer], align 16
@.str.5.82 = private unnamed_addr constant [17 x i8] c"*need %d )%s*<< \00", align 1
@.str.6.81 = private unnamed_addr constant [3 x i8] c"'s\00", align 1
@.str.7.83 = private unnamed_addr constant [10 x i8] c" .(){},;\22\00", align 1
@.str.8.72 = private unnamed_addr constant [4 x i8] c"def\00", align 1
@.str.9.73 = private unnamed_addr constant [5 x i8] c"load\00", align 1
@.str.10.74 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@.str.11.75 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.12.76 = private unnamed_addr constant [5 x i8] c"list\00", align 1
@.str.13.77 = private unnamed_addr constant [4 x i8] c"set\00", align 1
@.str.14.78 = private unnamed_addr constant [4 x i8] c"ext\00", align 1

@_ZN8arg_nodeC1EPKcPK8exp_nodes = internal unnamed_addr alias void (ptr, ptr, ptr, i16), ptr @_ZN8arg_nodeC2EPKcPK8exp_nodes
@_ZN8var_nodeC1EPKc = internal unnamed_addr alias void (ptr, ptr), ptr @_ZN8var_nodeC2EPKc
@_ZN8lam_nodeC1EP8arg_nodeP8exp_nodes = internal unnamed_addr alias void (ptr, ptr, ptr, i16), ptr @_ZN8lam_nodeC2EP8arg_nodeP8exp_nodes
@_ZN8app_nodeC1EP8exp_nodeS1_s = internal unnamed_addr alias void (ptr, ptr, ptr, i16), ptr @_ZN8app_nodeC2EP8exp_nodeS1_s
@_ZN11arglst_nodeC1EP8arg_nodePS_s = internal unnamed_addr alias void (ptr, ptr, ptr, i16), ptr @_ZN11arglst_nodeC2EP8arg_nodePS_s
@_ZN24lambda_expression_parserC1EP12token_stream = internal unnamed_addr alias void (ptr, ptr), ptr @_ZN24lambda_expression_parserC2EP12token_stream
@_ZN24lambda_expression_parserD1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN24lambda_expression_parserD2Ev
@_ZN12token_streamC1EPKc = internal unnamed_addr alias void (ptr, ptr), ptr @_ZN12token_streamC2EPKc
@_ZN12token_streamD1Ev = internal unnamed_addr alias void (ptr), ptr @_ZN12token_streamD2Ev

; Function Attrs: mustprogress norecurse optsize uwtable
define dso_local noundef i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #0 personality ptr @__gxx_personality_v0 {
  %3 = alloca [4097 x i8], align 16
  %4 = alloca %class.token_stream, align 8
  %5 = alloca %class.lambda_expression_parser, align 8
  %6 = alloca ptr, align 8
  %7 = alloca i32, align 4
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  call void @llvm.lifetime.start.p0(i64 4097, ptr nonnull %3) #27
  %9 = call ptr @getcwd(ptr noundef nonnull %3, i64 noundef 4096) #28
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %2
  %12 = call noundef ptr @strrchr(ptr noundef nonnull dereferenceable(1) %9, i32 noundef 47) #29
  %13 = icmp eq ptr %12, null
  %14 = getelementptr inbounds i8, ptr %12, i64 1
  %15 = select i1 %13, ptr %9, ptr %14
  %16 = call i32 @puts(ptr nonnull dereferenceable(1) %15)
  br label %17

17:                                               ; preds = %11, %2
  call void @llvm.lifetime.end.p0(i64 4097, ptr nonnull %3) #27
  call void @llvm.lifetime.start.p0(i64 8760, ptr nonnull %4) #27
  call void @_ZN12token_streamC1EPKc(ptr noundef nonnull align 8 dereferenceable(8756) %4, ptr noundef null) #30
  %18 = invoke noundef signext i16 @_ZN12token_stream4openEPKc(ptr noundef nonnull align 8 dereferenceable(8756) %4, ptr noundef null) #30
          to label %19 unwind label %33

19:                                               ; preds = %17
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #27
  invoke void @_ZN24lambda_expression_parserC1EP12token_stream(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %4) #30
          to label %20 unwind label %35

20:                                               ; preds = %19
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #27
  store ptr null, ptr %6, align 8, !tbaa !213
  br label %21

21:                                               ; preds = %257, %20
  %22 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2) #30
  %23 = invoke noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %5, ptr noundef nonnull %6) #30
          to label %24 unwind label %39

24:                                               ; preds = %21
  %25 = icmp eq ptr %23, null
  br i1 %25, label %257, label %26

26:                                               ; preds = %24
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  store i32 0, ptr %7, align 4, !tbaa !217
  %27 = load ptr, ptr %23, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 3
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef i32 %29(ptr noundef nonnull align 8 dereferenceable(16) %23) #30
          to label %31 unwind label %41

31:                                               ; preds = %26
  %32 = icmp eq i32 %30, 2
  br i1 %32, label %260, label %43

33:                                               ; preds = %17
  %34 = landingpad { ptr, i32 }
          cleanup
  br label %269

35:                                               ; preds = %19
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %267

37:                                               ; preds = %260
  %38 = landingpad { ptr, i32 }
          cleanup
  br label %265

39:                                               ; preds = %21
  %40 = landingpad { ptr, i32 }
          cleanup
  br label %265

41:                                               ; preds = %48, %43, %26
  %42 = landingpad { ptr, i32 }
          cleanup
  br label %258

43:                                               ; preds = %31
  %44 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3) #30
  %45 = load ptr, ptr %23, align 8, !tbaa !219
  %46 = getelementptr inbounds ptr, ptr %45, i64 14
  %47 = load ptr, ptr %46, align 8
  invoke void %47(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef null, i32 noundef 0) #30
          to label %48 unwind label %41

48:                                               ; preds = %43
  %49 = call i32 @putchar(i32 10)
  invoke void @_ZN4node5resetEv() #30
          to label %50 unwind label %41

50:                                               ; preds = %48
  %51 = load i32, ptr @trace_lambda, align 4, !tbaa !217
  %52 = icmp eq i32 %51, 0
  %53 = select i1 %52, i32 0, i32 32
  %54 = load i32, ptr @print_symbols, align 4, !tbaa !217
  %55 = icmp eq i32 %54, 0
  %56 = or i32 %53, 8
  %57 = select i1 %55, i32 %53, i32 %56
  %58 = load i32, ptr @applicative_order, align 4, !tbaa !217
  %59 = icmp eq i32 %58, 0
  %60 = or i32 %57, 2
  %61 = select i1 %59, i32 %57, i32 %60
  %62 = load i32, ptr @reduce_body, align 4, !tbaa !217
  %63 = icmp eq i32 %62, 0
  %64 = or i32 %61, 4
  %65 = select i1 %63, i32 %61, i32 %64
  %66 = load i32, ptr @step_lambda, align 4, !tbaa !217
  %67 = icmp ne i32 %66, 0
  %68 = zext i1 %67 to i32
  %69 = or i32 %65, %68
  %70 = load i32, ptr @brief_print, align 4, !tbaa !217
  %71 = icmp eq i32 %70, 0
  %72 = or i32 %69, 16
  %73 = select i1 %71, i32 %69, i32 %72
  %74 = load i32, ptr @reduce_fully, align 4, !tbaa !217
  %75 = icmp eq i32 %74, 0
  %76 = or i32 %73, 256
  %77 = select i1 %75, i32 %73, i32 %76
  %78 = load ptr, ptr %23, align 8, !tbaa !219
  %79 = getelementptr inbounds ptr, ptr %78, i64 3
  %80 = load ptr, ptr %79, align 8
  %81 = invoke noundef i32 %80(ptr noundef nonnull align 8 dereferenceable(16) %23) #30
          to label %82 unwind label %108

82:                                               ; preds = %50
  %83 = icmp eq i32 %81, 3
  %84 = load i32, ptr @step_lambda, align 4, !tbaa !217
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %160, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %6, align 8, !tbaa !213
  %88 = load ptr, ptr %23, align 8, !tbaa !219
  %89 = getelementptr inbounds ptr, ptr %88, i64 13
  %90 = load ptr, ptr %89, align 8
  %91 = invoke noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %87, i32 noundef %77, ptr noundef nonnull %7) #30
          to label %92 unwind label %110

92:                                               ; preds = %86
  %93 = icmp eq ptr %91, null
  br i1 %93, label %251, label %94

94:                                               ; preds = %92
  %95 = and i32 %77, -9
  br label %96

96:                                               ; preds = %153, %94
  %97 = phi ptr [ %91, %94 ], [ %145, %153 ]
  %98 = phi ptr [ %23, %94 ], [ %144, %153 ]
  %99 = load i32, ptr %7, align 4, !tbaa !217
  %100 = and i32 %99, 2
  %101 = icmp eq i32 %100, 0
  %102 = and i32 %99, 4
  %103 = icmp eq i32 %102, 0
  %104 = select i1 %103, ptr @.str.7, ptr @.str.6
  %105 = select i1 %101, ptr @.str.5, ptr %104
  %106 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, ptr noundef nonnull %105) #30
  %107 = load ptr, ptr %6, align 8, !tbaa !213
  br i1 %83, label %112, label %118

108:                                              ; preds = %50
  %109 = landingpad { ptr, i32 }
          cleanup
  br label %258

110:                                              ; preds = %86
  %111 = landingpad { ptr, i32 }
          cleanup
  br label %258

112:                                              ; preds = %96
  %113 = load ptr, ptr %97, align 8, !tbaa !219
  %114 = getelementptr inbounds ptr, ptr %113, i64 14
  %115 = load ptr, ptr %114, align 8
  invoke void %115(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef %107, i32 noundef %95) #30
          to label %119 unwind label %116

116:                                              ; preds = %118, %112
  %117 = landingpad { ptr, i32 }
          cleanup
  br label %258

118:                                              ; preds = %96
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef %107, i32 noundef %77) #30
          to label %119 unwind label %116

119:                                              ; preds = %118, %112
  %120 = call i32 @putchar(i32 10)
  %121 = load i32, ptr %7, align 4, !tbaa !217
  %122 = and i32 %121, 2
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %248, label %124

124:                                              ; preds = %119
  %125 = and i32 %121, -7
  store i32 %125, ptr %7, align 4, !tbaa !217
  %126 = load ptr, ptr %6, align 8, !tbaa !213
  %127 = load ptr, ptr %97, align 8, !tbaa !219
  %128 = getelementptr inbounds ptr, ptr %127, i64 13
  %129 = load ptr, ptr %128, align 8
  %130 = invoke noundef ptr %129(ptr noundef nonnull align 8 dereferenceable(16) %97, ptr noundef %126, i32 noundef %77, ptr noundef nonnull %7) #30
          to label %131 unwind label %141

131:                                              ; preds = %124
  %132 = icmp eq ptr %130, null
  %133 = icmp eq ptr %97, %130
  %134 = or i1 %132, %133
  br i1 %134, label %143, label %135

135:                                              ; preds = %131
  %136 = load ptr, ptr %97, align 8, !tbaa !219
  %137 = getelementptr inbounds ptr, ptr %136, i64 2
  %138 = load ptr, ptr %137, align 8
  call void %138(ptr noundef nonnull align 8 dereferenceable(16) %97) #28
  %139 = icmp eq ptr %97, %98
  %140 = select i1 %139, ptr null, ptr %98
  br label %143

141:                                              ; preds = %124
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %258

143:                                              ; preds = %135, %131
  %144 = phi ptr [ %140, %135 ], [ %98, %131 ]
  %145 = phi ptr [ %130, %135 ], [ %97, %131 ]
  %146 = load i32, ptr %7, align 4, !tbaa !217
  %147 = and i32 %146, 2
  %148 = icmp eq i32 %147, 0
  br i1 %148, label %248, label %149

149:                                              ; preds = %143
  %150 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) #30
  %151 = call i32 @getchar() #30
  %152 = icmp eq i32 %151, 10
  br i1 %152, label %153, label %154

153:                                              ; preds = %157, %149
  br label %96, !llvm.loop !221

154:                                              ; preds = %154, %149
  %155 = call i32 @getchar() #30
  %156 = icmp eq i32 %155, 10
  br i1 %156, label %157, label %154, !llvm.loop !223

157:                                              ; preds = %154
  %158 = and i32 %151, -33
  %159 = icmp eq i32 %158, 78
  br i1 %159, label %248, label %153

160:                                              ; preds = %82
  %161 = load i32, ptr @step_thru, align 4, !tbaa !217
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %222, label %163

163:                                              ; preds = %160
  %164 = or i32 %77, 1
  %165 = load ptr, ptr %6, align 8, !tbaa !213
  %166 = load ptr, ptr %23, align 8, !tbaa !219
  %167 = getelementptr inbounds ptr, ptr %166, i64 13
  %168 = load ptr, ptr %167, align 8
  %169 = invoke noundef ptr %168(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %165, i32 noundef %164, ptr noundef nonnull %7) #30
          to label %170 unwind label %195

170:                                              ; preds = %199, %163
  %171 = phi ptr [ %200, %199 ], [ %23, %163 ]
  %172 = phi ptr [ %201, %199 ], [ %169, %163 ]
  %173 = icmp eq ptr %172, null
  br i1 %173, label %248, label %174

174:                                              ; preds = %170
  %175 = load i32, ptr %7, align 4, !tbaa !217
  %176 = and i32 %175, 2
  %177 = icmp eq i32 %176, 0
  br i1 %177, label %205, label %178

178:                                              ; preds = %174
  %179 = and i32 %175, -3
  store i32 %179, ptr %7, align 4, !tbaa !217
  %180 = load ptr, ptr %6, align 8, !tbaa !213
  %181 = load ptr, ptr %172, align 8, !tbaa !219
  %182 = getelementptr inbounds ptr, ptr %181, i64 13
  %183 = load ptr, ptr %182, align 8
  %184 = invoke noundef ptr %183(ptr noundef nonnull align 8 dereferenceable(16) %172, ptr noundef %180, i32 noundef %164, ptr noundef nonnull %7) #30
          to label %185 unwind label %197

185:                                              ; preds = %178
  %186 = icmp eq ptr %184, null
  %187 = icmp eq ptr %172, %184
  %188 = or i1 %186, %187
  br i1 %188, label %199, label %189

189:                                              ; preds = %185
  %190 = load ptr, ptr %172, align 8, !tbaa !219
  %191 = getelementptr inbounds ptr, ptr %190, i64 2
  %192 = load ptr, ptr %191, align 8
  call void %192(ptr noundef nonnull align 8 dereferenceable(16) %172) #28
  %193 = icmp eq ptr %172, %171
  %194 = select i1 %193, ptr null, ptr %171
  br label %199

195:                                              ; preds = %215, %210, %163
  %196 = landingpad { ptr, i32 }
          cleanup
  br label %258

197:                                              ; preds = %178
  %198 = landingpad { ptr, i32 }
          cleanup
  br label %258

199:                                              ; preds = %189, %185
  %200 = phi ptr [ %194, %189 ], [ %171, %185 ]
  %201 = phi ptr [ %184, %189 ], [ %172, %185 ]
  %202 = load i32, ptr %7, align 4, !tbaa !217
  %203 = and i32 %202, 2
  %204 = icmp eq i32 %203, 0
  br i1 %204, label %205, label %170, !llvm.loop !224

205:                                              ; preds = %199, %174
  %206 = phi ptr [ %171, %174 ], [ %200, %199 ]
  %207 = phi ptr [ %172, %174 ], [ %201, %199 ]
  %208 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) #30
  %209 = load ptr, ptr %6, align 8, !tbaa !213
  br i1 %83, label %210, label %215

210:                                              ; preds = %205
  %211 = and i32 %164, -9
  %212 = load ptr, ptr %207, align 8, !tbaa !219
  %213 = getelementptr inbounds ptr, ptr %212, i64 14
  %214 = load ptr, ptr %213, align 8
  invoke void %214(ptr noundef nonnull align 8 dereferenceable(16) %207, ptr noundef %209, i32 noundef %211) #30
          to label %216 unwind label %195

215:                                              ; preds = %205
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %207, ptr noundef %209, i32 noundef %164) #30
          to label %216 unwind label %195

216:                                              ; preds = %215, %210
  %217 = call i32 @putchar(i32 10)
  %218 = load ptr, ptr %207, align 8, !tbaa !219
  %219 = getelementptr inbounds ptr, ptr %218, i64 2
  %220 = load ptr, ptr %219, align 8
  call void %220(ptr noundef nonnull align 8 dereferenceable(16) %207) #28
  %221 = icmp eq ptr %207, %206
  br i1 %221, label %256, label %248

222:                                              ; preds = %160
  %223 = load ptr, ptr %6, align 8, !tbaa !213
  %224 = load ptr, ptr %23, align 8, !tbaa !219
  %225 = getelementptr inbounds ptr, ptr %224, i64 13
  %226 = load ptr, ptr %225, align 8
  %227 = invoke noundef ptr %226(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef %223, i32 noundef %77, ptr noundef nonnull %7) #30
          to label %228 unwind label %238

228:                                              ; preds = %222
  %229 = icmp eq ptr %227, null
  br i1 %229, label %251, label %230

230:                                              ; preds = %228
  %231 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11) #30
  %232 = load ptr, ptr %6, align 8, !tbaa !213
  br i1 %83, label %233, label %240

233:                                              ; preds = %230
  %234 = and i32 %77, -9
  %235 = load ptr, ptr %227, align 8, !tbaa !219
  %236 = getelementptr inbounds ptr, ptr %235, i64 14
  %237 = load ptr, ptr %236, align 8
  invoke void %237(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef %232, i32 noundef %234) #30
          to label %241 unwind label %238

238:                                              ; preds = %240, %233, %222
  %239 = landingpad { ptr, i32 }
          cleanup
  br label %258

240:                                              ; preds = %230
  invoke void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %227, ptr noundef %232, i32 noundef %77) #30
          to label %241 unwind label %238

241:                                              ; preds = %240, %233
  %242 = call i32 @putchar(i32 10)
  %243 = load ptr, ptr %227, align 8, !tbaa !219
  %244 = getelementptr inbounds ptr, ptr %243, i64 2
  %245 = load ptr, ptr %244, align 8
  call void %245(ptr noundef nonnull align 8 dereferenceable(16) %227) #28
  %246 = icmp eq ptr %227, %23
  br i1 %246, label %247, label %251

247:                                              ; preds = %241
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %257

248:                                              ; preds = %216, %170, %157, %143, %119
  %249 = phi ptr [ %206, %216 ], [ %171, %170 ], [ %144, %157 ], [ %98, %119 ], [ %144, %143 ]
  %250 = icmp eq ptr %249, null
  br i1 %250, label %256, label %251

251:                                              ; preds = %248, %241, %228, %92
  %252 = phi ptr [ %249, %248 ], [ %23, %241 ], [ %23, %228 ], [ %23, %92 ]
  %253 = load ptr, ptr %252, align 8, !tbaa !219
  %254 = getelementptr inbounds ptr, ptr %253, i64 2
  %255 = load ptr, ptr %254, align 8
  call void %255(ptr noundef nonnull align 8 dereferenceable(16) %252) #28
  br label %256

256:                                              ; preds = %251, %248, %216
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %257

257:                                              ; preds = %256, %247, %24
  br label %21

258:                                              ; preds = %238, %197, %195, %141, %116, %110, %108, %41
  %259 = phi { ptr, i32 } [ %42, %41 ], [ %239, %238 ], [ %109, %108 ], [ %111, %110 ], [ %142, %141 ], [ %117, %116 ], [ %196, %195 ], [ %198, %197 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %265

260:                                              ; preds = %31
  %.lcssa1 = phi ptr [ %23, %31 ]
  %261 = load ptr, ptr %.lcssa1, align 8, !tbaa !219
  %262 = getelementptr inbounds ptr, ptr %261, i64 2
  %263 = load ptr, ptr %262, align 8
  call void %263(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa1) #28
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  invoke void @_ZN12token_stream5closeEv(ptr noundef nonnull align 8 dereferenceable(8756) %4) #30
          to label %264 unwind label %37

264:                                              ; preds = %260
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @_ZN24lambda_expression_parserD1Ev(ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  call void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dereferenceable(8756) %4) #28
  call void @llvm.lifetime.end.p0(i64 8760, ptr nonnull %4) #27
  ret i32 0

265:                                              ; preds = %258, %39, %37
  %266 = phi { ptr, i32 } [ %38, %37 ], [ %259, %258 ], [ %40, %39 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #27
  call void @_ZN24lambda_expression_parserD1Ev(ptr noundef nonnull align 8 dereferenceable(12) %5) #28
  br label %267

267:                                              ; preds = %265, %35
  %268 = phi { ptr, i32 } [ %266, %265 ], [ %36, %35 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #27
  br label %269

269:                                              ; preds = %267, %33
  %270 = phi { ptr, i32 } [ %268, %267 ], [ %34, %33 ]
  call void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dereferenceable(8756) %4) #28
  call void @llvm.lifetime.end.p0(i64 8760, ptr nonnull %4) #27
  resume { ptr, i32 } %270
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind optsize
declare ptr @getcwd(ptr noundef, i64 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare noundef ptr @strrchr(ptr noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getchar() local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_Z9newstringPKc(ptr noundef readonly %0) #6 {
  %2 = icmp eq ptr %0, null
  br i1 %2, label %8, label %3

3:                                                ; preds = %1
  %4 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %0) #29
  %5 = add i64 %4, 1
  %6 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %5) #31
  %7 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %0) #28
  br label %8

8:                                                ; preds = %3, %1
  %9 = phi ptr [ %6, %3 ], [ null, %1 ]
  ret ptr %9
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znam(i64 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable
define internal void @_ZN4node5resetEv() #9 align 2 {
  store i32 1, ptr @_ZL13name_sequence, align 4, !tbaa !217
  store i32 0, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  store i32 0, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  store i32 0, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_ZNK4node5printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #10 align 2 {
  %4 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, ptr noundef nonnull %0) #30
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8arg_nodeC2EPKcPK8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %6 = tail call noundef ptr @_Z9newstringPKc(ptr noundef %1) #30
  %7 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  store ptr %6, ptr %7, align 8, !tbaa !227
  %8 = icmp eq i16 %3, 0
  %9 = icmp eq ptr %2, null
  br i1 %8, label %14, label %10

10:                                               ; preds = %4
  %11 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  br i1 %9, label %13, label %12

12:                                               ; preds = %10
  store ptr %2, ptr %11, align 8, !tbaa !229
  br label %27

13:                                               ; preds = %10
  store ptr null, ptr %11, align 8, !tbaa !229
  br label %27

14:                                               ; preds = %4
  br i1 %9, label %15, label %17

15:                                               ; preds = %14
  %16 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %16, align 8
  br label %27

17:                                               ; preds = %14
  %18 = load ptr, ptr %2, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(16) %2) #30
  %21 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8
  %22 = icmp eq ptr %20, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %17
  %24 = load ptr, ptr %20, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 12
  %26 = load ptr, ptr %25, align 8
  tail call void %26(ptr noundef nonnull align 8 dereferenceable(16) %20, ptr noundef nonnull %0) #30
  br label %27

27:                                               ; preds = %23, %17, %15, %13, %12
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef nonnull ptr @_ZNK8arg_node5cloneEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8arg_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8arg_nodeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %1
  %7 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !229
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %8, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 2
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(16) %8) #28
  br label %14

14:                                               ; preds = %10, %6
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8arg_nodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  tail call void @_ZN8arg_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK8arg_node2opEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  ret i32 2
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8arg_node4nameEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !227
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8arg_node5valueEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !229
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node3argEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node4bodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node4leftEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node5rightEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node4nextEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node6parentEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !225
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN4node10set_parentEPS_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr %1, ptr %3, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN4node6reduceEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK8arg_node5printEPK9alst_nodei(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
  %4 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !227
  %6 = icmp eq ptr %5, null
  %7 = select i1 %6, ptr @.str.2.3, ptr %5
  %8 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef nonnull %7) #30
  %9 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !229
  %11 = icmp eq ptr %10, null
  br i1 %11, label %18, label %12

12:                                               ; preds = %3
  %13 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.4) #30
  %14 = load ptr, ptr %9, align 8, !tbaa !229
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 14
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %1, i32 noundef %2) #30
  br label %18

18:                                               ; preds = %12, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef nonnull align 8 dereferenceable(32) ptr @_ZN8arg_nodeaSERKS_(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #6 align 2 {
  %3 = icmp eq ptr %0, %1
  br i1 %3, label %40, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds ptr, ptr %5, i64 1
  %7 = load ptr, ptr %6, align 8
  tail call void %7(ptr noundef nonnull align 8 dereferenceable(32) %0) #28
  %8 = getelementptr inbounds %class.arg_node, ptr %1, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !227
  %10 = icmp eq ptr %9, null
  br i1 %10, label %18, label %11

11:                                               ; preds = %4
  %12 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %9) #29
  %13 = add i64 %12, 1
  %14 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %13) #31
  %15 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  store ptr %14, ptr %15, align 8, !tbaa !227
  %16 = load ptr, ptr %8, align 8, !tbaa !227
  %17 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(1) %16) #28
  br label %20

18:                                               ; preds = %4
  %19 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  store ptr null, ptr %19, align 8, !tbaa !227
  br label %20

20:                                               ; preds = %18, %11
  %21 = getelementptr inbounds %class.arg_node, ptr %1, i64 0, i32 2
  %22 = load ptr, ptr %21, align 8, !tbaa !229
  %23 = icmp eq ptr %22, null
  br i1 %23, label %24, label %26

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %25, align 8
  br label %36

26:                                               ; preds = %20
  %27 = load ptr, ptr %22, align 8, !tbaa !219
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(16) %22) #30
  %30 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr %29, ptr %30, align 8
  %31 = icmp eq ptr %29, null
  br i1 %31, label %36, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %29, align 8, !tbaa !219
  %34 = getelementptr inbounds ptr, ptr %33, i64 12
  %35 = load ptr, ptr %34, align 8
  tail call void %35(ptr noundef nonnull align 8 dereferenceable(16) %29, ptr noundef nonnull %0) #30
  br label %36

36:                                               ; preds = %32, %26, %24
  %37 = getelementptr inbounds %class.node, ptr %1, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !225
  %39 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr %38, ptr %39, align 8, !tbaa !225
  br label %40

40:                                               ; preds = %36, %2
  ret ptr %0
}

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin nounwind optsize
declare void @_ZdaPv(ptr noundef) local_unnamed_addr #14

; Function Attrs: nobuiltin optsize allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #7

; Function Attrs: optsize uwtable
define internal void @_ZN8arg_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %class.arg_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !227
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #31
  %11 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !227
  %12 = load ptr, ptr %4, align 8, !tbaa !227
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #28
  br label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !227
  br label %16

16:                                               ; preds = %14, %7
  %17 = getelementptr inbounds %class.arg_node, ptr %1, i64 0, i32 2
  %18 = load ptr, ptr %17, align 8, !tbaa !229
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %22

20:                                               ; preds = %16
  %21 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %21, align 8
  br label %32

22:                                               ; preds = %16
  %23 = load ptr, ptr %18, align 8, !tbaa !219
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(16) %18) #30
  %26 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  store ptr %25, ptr %26, align 8
  %27 = icmp eq ptr %25, null
  br i1 %27, label %32, label %28

28:                                               ; preds = %22
  %29 = load ptr, ptr %25, align 8, !tbaa !219
  %30 = getelementptr inbounds ptr, ptr %29, i64 12
  %31 = load ptr, ptr %30, align 8
  tail call void %31(ptr noundef nonnull align 8 dereferenceable(16) %25, ptr noundef nonnull %0) #30
  br label %32

32:                                               ; preds = %28, %22, %20
  %33 = getelementptr inbounds %class.node, ptr %1, i64 0, i32 1
  %34 = load ptr, ptr %33, align 8, !tbaa !225
  store ptr %34, ptr %3, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8arg_node12import_valueEPP8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #6 align 2 {
  %3 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !229
  %5 = icmp eq ptr %4, null
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %4, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 2
  %9 = load ptr, ptr %8, align 8
  tail call void %9(ptr noundef nonnull align 8 dereferenceable(16) %4) #28
  br label %10

10:                                               ; preds = %6, %2
  %11 = icmp eq ptr %1, null
  br i1 %11, label %12, label %13

12:                                               ; preds = %10
  store ptr null, ptr %3, align 8, !tbaa !229
  br label %21

13:                                               ; preds = %10
  %14 = load ptr, ptr %1, align 8, !tbaa !213
  store ptr %14, ptr %3, align 8, !tbaa !229
  store ptr null, ptr %1, align 8, !tbaa !213
  %15 = load ptr, ptr %3, align 8, !tbaa !229
  %16 = icmp eq ptr %15, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %13
  %18 = load ptr, ptr %15, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 12
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %0) #30
  br label %21

21:                                               ; preds = %17, %13, %12
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8exp_node5matchEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #6 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %41, label %4

4:                                                ; preds = %35, %2
  %5 = phi ptr [ %39, %35 ], [ %1, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %35, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %16 = load ptr, ptr %15, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 5
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(32) %15) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %35, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %5, align 8, !tbaa !219
  %23 = getelementptr inbounds ptr, ptr %22, i64 6
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %26 = load ptr, ptr %25, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 5
  %28 = load ptr, ptr %27, align 8
  %29 = tail call noundef ptr %28(ptr noundef nonnull align 8 dereferenceable(32) %25) #30
  %30 = load ptr, ptr %0, align 8, !tbaa !219
  %31 = getelementptr inbounds ptr, ptr %30, i64 20
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef i32 %32(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %29) #30
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %21, %11, %4
  %36 = load ptr, ptr %5, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 10
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %40 = icmp eq ptr %39, null
  br i1 %40, label %41, label %4, !llvm.loop !230

41:                                               ; preds = %35, %21, %2
  %42 = phi ptr [ null, %2 ], [ %5, %21 ], [ null, %35 ]
  ret ptr %42
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) #6 align 2 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !219
  br i1 %5, label %38, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %6, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %7
  %12 = load ptr, ptr %9, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 25
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %1) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %26, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 14
  %20 = load ptr, ptr %19, align 8
  tail call void %20(ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef %1, i32 noundef %2) #30
  %21 = icmp eq ptr %15, %9
  br i1 %21, label %30, label %22

22:                                               ; preds = %17
  %23 = load ptr, ptr %15, align 8, !tbaa !219
  %24 = getelementptr inbounds ptr, ptr %23, i64 2
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(16) %15) #28
  br label %30

26:                                               ; preds = %11
  %27 = load ptr, ptr %9, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 14
  %29 = load ptr, ptr %28, align 8
  tail call void %29(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %1, i32 noundef %2) #30
  br label %30

30:                                               ; preds = %26, %22, %17
  %31 = load ptr, ptr %9, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(16) %9) #28
  br label %41

34:                                               ; preds = %7
  %35 = load ptr, ptr %0, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 14
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) #30
  br label %41

38:                                               ; preds = %3
  %39 = getelementptr inbounds ptr, ptr %6, i64 14
  %40 = load ptr, ptr %39, align 8
  tail call void %40(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) #30
  br label %41

41:                                               ; preds = %38, %34, %30
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8var_nodeC2EPKc(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr noundef readonly %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8var_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = icmp eq ptr %1, null
  br i1 %4, label %11, label %5

5:                                                ; preds = %2
  %6 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %7 = add i64 %6, 1
  %8 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %7) #31
  %9 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  store ptr %8, ptr %9, align 8, !tbaa !231
  %10 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %8, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %11

11:                                               ; preds = %5, %2
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8var_node5cloneEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  invoke void @_ZN8var_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8var_nodeD2Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8var_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8var_nodeD0Ev(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #12 comdat align 2 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8var_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  %4 = icmp eq ptr %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  tail call void @_ZdaPv(ptr noundef nonnull %3) #32
  br label %6

6:                                                ; preds = %5, %1
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK8var_node2opEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
  ret i32 3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8var_node4nameEv(ptr noundef nonnull align 8 dereferenceable(24) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !231
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node5valueEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8var_node6reduceEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
  %5 = alloca ptr, align 8
  %6 = load i32, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  %8 = icmp sgt i32 %6, 3999
  br i1 %8, label %9, label %21

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7.8, i32 noundef %7) #30
  %11 = load ptr, ptr %0, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 14
  %13 = load ptr, ptr %12, align 8
  tail call void %13(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef null, i32 noundef 0) #30
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.9)
  %15 = load i32, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  %16 = add nsw i32 %15, -1
  store i32 %16, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  %17 = icmp eq ptr %3, null
  br i1 %17, label %80, label %18

18:                                               ; preds = %9
  %19 = load i32, ptr %3, align 4, !tbaa !217
  %20 = or i32 %19, 1
  store i32 %20, ptr %3, align 4, !tbaa !217
  br label %80

21:                                               ; preds = %4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %5) #27
  store ptr null, ptr %5, align 8, !tbaa !213
  %22 = load ptr, ptr %0, align 8, !tbaa !219
  %23 = getelementptr inbounds ptr, ptr %22, i64 27
  %24 = load ptr, ptr %23, align 8
  %25 = call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3, ptr noundef nonnull %5) #30
  %26 = icmp eq ptr %25, %0
  br i1 %26, label %64, label %27

27:                                               ; preds = %21
  %28 = load ptr, ptr %25, align 8, !tbaa !219
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %25) #30
  %31 = load ptr, ptr %5, align 8, !tbaa !213
  %32 = icmp eq ptr %31, null
  br i1 %32, label %64, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %30, align 8, !tbaa !219
  %35 = getelementptr inbounds ptr, ptr %34, i64 3
  %36 = load ptr, ptr %35, align 8
  %37 = call noundef i32 %36(ptr noundef nonnull align 8 dereferenceable(16) %30) #30
  %38 = icmp eq i32 %37, 5
  br i1 %38, label %48, label %39

39:                                               ; preds = %33
  %40 = load ptr, ptr %30, align 8, !tbaa !219
  %41 = getelementptr inbounds ptr, ptr %40, i64 3
  %42 = load ptr, ptr %41, align 8
  %43 = call noundef i32 %42(ptr noundef nonnull align 8 dereferenceable(16) %30) #30
  %44 = icmp ne i32 %43, 4
  %45 = and i32 %2, 256
  %46 = icmp eq i32 %45, 0
  %47 = or i1 %46, %44
  br i1 %47, label %64, label %51

48:                                               ; preds = %33
  %49 = and i32 %2, 256
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %64, label %51

51:                                               ; preds = %48, %39
  %52 = load ptr, ptr %5, align 8, !tbaa !213
  %53 = load ptr, ptr %30, align 8, !tbaa !219
  %54 = getelementptr inbounds ptr, ptr %53, i64 17
  %55 = load ptr, ptr %54, align 8
  %56 = call noundef ptr %55(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef %52, i32 noundef %2, ptr noundef %3) #30
  %57 = icmp eq ptr %56, null
  %58 = icmp eq ptr %56, %30
  %59 = or i1 %57, %58
  br i1 %59, label %64, label %60

60:                                               ; preds = %51
  %61 = load ptr, ptr %30, align 8, !tbaa !219
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8
  call void %63(ptr noundef nonnull align 8 dereferenceable(16) %30) #28
  br label %64

64:                                               ; preds = %60, %51, %48, %39, %27, %21
  %65 = phi ptr [ %30, %48 ], [ %30, %39 ], [ %30, %27 ], [ %0, %21 ], [ %56, %60 ], [ %30, %51 ]
  %66 = call noundef ptr @_ZN8var_node13reduce_numberEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %67 = icmp eq ptr %66, null
  br i1 %67, label %76, label %68

68:                                               ; preds = %64
  %69 = icmp eq ptr %65, %0
  %70 = icmp eq ptr %65, null
  %71 = or i1 %69, %70
  br i1 %71, label %76, label %72

72:                                               ; preds = %68
  %73 = load ptr, ptr %65, align 8, !tbaa !219
  %74 = getelementptr inbounds ptr, ptr %73, i64 2
  %75 = load ptr, ptr %74, align 8
  call void %75(ptr noundef nonnull align 8 dereferenceable(16) %65) #28
  br label %76

76:                                               ; preds = %72, %68, %64
  %77 = phi ptr [ %65, %64 ], [ %66, %72 ], [ %66, %68 ]
  %78 = load i32, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  %79 = add nsw i32 %78, -1
  store i32 %79, ptr @_ZL24var_reduce_recurse_level, align 4, !tbaa !217
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %5) #27
  br label %80

80:                                               ; preds = %76, %18, %9
  %81 = phi ptr [ %77, %76 ], [ %0, %18 ], [ %0, %9 ]
  ret ptr %81
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK8var_node5printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr nocapture readnone %1, i32 %2) unnamed_addr #6 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !219
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 4
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  br label %14

14:                                               ; preds = %9, %3
  %15 = phi ptr [ %13, %9 ], [ @.str.4, %3 ]
  %16 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %15) #30
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef signext i16 @_ZNK8var_node8has_freeEPK8arg_nodePK9alst_node(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readnone %1, ptr noundef %2) unnamed_addr #6 align 2 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %18, label %5

5:                                                ; preds = %3
  %6 = load ptr, ptr %0, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 16
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %9, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %9) #30
  %16 = icmp eq ptr %15, %1
  br i1 %16, label %18, label %17

17:                                               ; preds = %11, %5
  br label %18

18:                                               ; preds = %17, %11, %3
  %19 = phi i16 [ 1, %11 ], [ 0, %17 ], [ 0, %3 ]
  ret i16 %19
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8var_node4bindEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) unnamed_addr #6 align 2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 4
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %7 = icmp eq ptr %6, null
  %8 = icmp eq ptr %1, null
  %9 = or i1 %7, %8
  br i1 %9, label %48, label %10

10:                                               ; preds = %42, %2
  %11 = phi ptr [ %46, %42 ], [ %1, %2 ]
  %12 = load ptr, ptr %11, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %11) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %42, label %17

17:                                               ; preds = %10
  %18 = load ptr, ptr %11, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(16) %11) #30
  %22 = load ptr, ptr %21, align 8, !tbaa !219
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(32) %21) #30
  %26 = icmp eq ptr %25, null
  br i1 %26, label %42, label %27

27:                                               ; preds = %17
  %28 = load ptr, ptr %11, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 6
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(16) %11) #30
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds ptr, ptr %32, i64 4
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef ptr %34(ptr noundef nonnull align 8 dereferenceable(32) %31) #30
  %36 = load ptr, ptr %0, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 4
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %40 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %35, ptr noundef nonnull dereferenceable(1) %39) #29
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %48, label %42

42:                                               ; preds = %27, %17, %10
  %43 = load ptr, ptr %11, align 8, !tbaa !219
  %44 = getelementptr inbounds ptr, ptr %43, i64 10
  %45 = load ptr, ptr %44, align 8
  %46 = tail call noundef ptr %45(ptr noundef nonnull align 8 dereferenceable(16) %11) #30
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %10, !llvm.loop !234

48:                                               ; preds = %42, %27, %2
  %49 = phi ptr [ null, %2 ], [ %11, %27 ], [ null, %42 ]
  ret ptr %49
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8var_node11reduce_varsEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 comdat align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds ptr, ptr %5, i64 13
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  ret ptr %8
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8var_node6renameEP8arg_nodePKcP9alst_node(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readnone %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds ptr, ptr %5, i64 16
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %3) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %19, label %10

10:                                               ; preds = %4
  %11 = load ptr, ptr %8, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %8) #30
  %15 = icmp ne ptr %14, null
  %16 = icmp eq ptr %14, %1
  %17 = and i1 %15, %16
  br i1 %17, label %18, label %19

18:                                               ; preds = %10
  tail call void @_ZN8var_node8set_nameEPKc(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %2) #30
  br label %19

19:                                               ; preds = %18, %10, %4
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal void @_ZN8var_node18resolve_name_clashEP8arg_nodeP9alst_node(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #13 comdat align 2 {
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZNK8var_nodeeqERK8exp_node(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %7 = icmp eq i32 %6, 3
  br i1 %7, label %8, label %44

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 4
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %14, label %20

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 4
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %19 = icmp eq ptr %18, null
  br i1 %19, label %44, label %20

20:                                               ; preds = %14, %8
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 4
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %44, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %31 = icmp eq ptr %30, null
  br i1 %31, label %44, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !219
  %34 = getelementptr inbounds ptr, ptr %33, i64 4
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %37 = load ptr, ptr %1, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 4
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %41 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %36, ptr noundef nonnull dereferenceable(1) %40) #29
  %42 = icmp eq i32 %41, 0
  %43 = zext i1 %42 to i32
  br label %44

44:                                               ; preds = %32, %26, %20, %14, %2
  %45 = phi i32 [ 0, %2 ], [ 1, %14 ], [ 0, %26 ], [ 0, %20 ], [ %43, %32 ]
  ret i32 %45
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8exp_node11export_bodyEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8exp_node11export_leftEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8exp_node12export_rightEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8exp_node12extract_defsEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK8var_node7extractEPKci(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readonly %1, i32 %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %4 = load ptr, ptr %0, align 8, !tbaa !219
  %5 = getelementptr inbounds ptr, ptr %4, i64 4
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %8 = icmp ne ptr %7, null
  %9 = icmp ne ptr %1, null
  %10 = and i1 %9, %8
  br i1 %10, label %11, label %22

11:                                               ; preds = %3
  %12 = load ptr, ptr %0, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 4
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %16 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %15) #29
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %11
  %19 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %19, ptr noundef nonnull @.str.9.7) #30
          to label %69 unwind label %20

20:                                               ; preds = %18
  %21 = landingpad { ptr, i32 }
          cleanup
  br label %71

22:                                               ; preds = %3
  br i1 %9, label %23, label %60

23:                                               ; preds = %22, %11
  %24 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %24, ptr noundef nonnull @.str.10) #30
          to label %25 unwind label %54

25:                                               ; preds = %23
  %26 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %27 = load ptr, ptr %0, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 4
  %29 = load ptr, ptr %28, align 8
  %30 = invoke noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %31 unwind label %56

31:                                               ; preds = %25
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %26, ptr noundef %30) #30
          to label %32 unwind label %56

32:                                               ; preds = %31
  %33 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %34 = getelementptr inbounds %class.node, ptr %33, i64 0, i32 1
  store ptr null, ptr %34, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %33, align 8, !tbaa !219
  %35 = getelementptr inbounds %class.app_node, ptr %33, i64 0, i32 1
  %36 = getelementptr inbounds %class.app_node, ptr %33, i64 0, i32 2
  store i64 0, ptr %36, align 8
  store ptr %24, ptr %35, align 8, !tbaa !235
  %37 = load ptr, ptr %24, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 12
  %39 = load ptr, ptr %38, align 8
  invoke void %39(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %33) #30
          to label %40 unwind label %58

40:                                               ; preds = %32
  %41 = getelementptr inbounds %class.app_node, ptr %33, i64 0, i32 2
  %42 = load ptr, ptr %41, align 8, !tbaa !237
  %43 = icmp eq ptr %42, %26
  br i1 %43, label %69, label %44

44:                                               ; preds = %40
  %45 = icmp eq ptr %42, null
  br i1 %45, label %50, label %46

46:                                               ; preds = %44
  %47 = load ptr, ptr %42, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 2
  %49 = load ptr, ptr %48, align 8
  tail call void %49(ptr noundef nonnull align 8 dereferenceable(16) %42) #28
  br label %50

50:                                               ; preds = %46, %44
  store ptr %26, ptr %41, align 8, !tbaa !237
  %51 = load ptr, ptr %26, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 12
  %53 = load ptr, ptr %52, align 8
  invoke void %53(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef nonnull %33) #30
          to label %69 unwind label %58

54:                                               ; preds = %23
  %55 = landingpad { ptr, i32 }
          cleanup
  br label %71

56:                                               ; preds = %31, %25
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %71

58:                                               ; preds = %50, %32
  %59 = landingpad { ptr, i32 }
          cleanup
  br label %71

60:                                               ; preds = %22
  %61 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %62 = load ptr, ptr %0, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 4
  %64 = load ptr, ptr %63, align 8
  %65 = invoke noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
          to label %66 unwind label %67

66:                                               ; preds = %60
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %61, ptr noundef %65) #30
          to label %69 unwind label %67

67:                                               ; preds = %66, %60
  %68 = landingpad { ptr, i32 }
          cleanup
  br label %71

69:                                               ; preds = %66, %50, %40, %18
  %70 = phi ptr [ %19, %18 ], [ %61, %66 ], [ %33, %40 ], [ %33, %50 ]
  ret ptr %70

71:                                               ; preds = %67, %58, %56, %54, %20
  %72 = phi ptr [ %24, %54 ], [ %33, %58 ], [ %26, %56 ], [ %61, %67 ], [ %19, %20 ]
  %73 = phi { ptr, i32 } [ %55, %54 ], [ %59, %58 ], [ %57, %56 ], [ %68, %67 ], [ %21, %20 ]
  tail call void @_ZdlPv(ptr noundef nonnull %72) #32
  resume { ptr, i32 } %73
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8var_node12reduce_valueEPK9alst_nodeiPiPS2_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1, i32 noundef %2, ptr nocapture readnone %3, ptr noundef writeonly %4) unnamed_addr #6 align 2 {
  %6 = lshr i32 %2, 7
  %7 = and i32 %6, 2
  br label %8

8:                                                ; preds = %55, %5
  %9 = phi ptr [ %0, %5 ], [ %57, %55 ]
  %10 = phi i32 [ 0, %5 ], [ 1, %55 ]
  %11 = phi ptr [ %1, %5 ], [ %58, %55 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 16
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(16) %9, ptr noundef %11) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %55, label %17

17:                                               ; preds = %8
  %18 = load ptr, ptr %15, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 6
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef ptr %20(ptr noundef nonnull align 8 dereferenceable(16) %15) #30
  %22 = icmp eq ptr %21, null
  br i1 %22, label %55, label %35

23:                                               ; preds = %47
  %24 = load ptr, ptr %43, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 16
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull %39) #30
  %28 = icmp eq ptr %27, null
  br i1 %28, label %55, label %29, !llvm.loop !238

29:                                               ; preds = %23
  %30 = load ptr, ptr %27, align 8, !tbaa !219
  %31 = getelementptr inbounds ptr, ptr %30, i64 6
  %32 = load ptr, ptr %31, align 8
  %33 = tail call noundef ptr %32(ptr noundef nonnull align 8 dereferenceable(16) %27) #30
  %34 = icmp eq ptr %33, null
  br i1 %34, label %55, label %35, !llvm.loop !238

35:                                               ; preds = %29, %17
  %36 = phi ptr [ %33, %29 ], [ %21, %17 ]
  %37 = phi ptr [ %43, %29 ], [ %9, %17 ]
  %38 = phi i32 [ 1, %29 ], [ %10, %17 ]
  %39 = phi ptr [ %27, %29 ], [ %15, %17 ]
  %40 = load ptr, ptr %36, align 8, !tbaa !219
  %41 = getelementptr inbounds ptr, ptr %40, i64 5
  %42 = load ptr, ptr %41, align 8
  %43 = tail call noundef ptr %42(ptr noundef nonnull align 8 dereferenceable(32) %36) #30
  %44 = icmp eq ptr %43, null
  br i1 %44, label %55, label %45

45:                                               ; preds = %35
  %46 = icmp eq ptr %37, %43
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = load ptr, ptr %43, align 8, !tbaa !219
  %49 = getelementptr inbounds ptr, ptr %48, i64 3
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef i32 %50(ptr noundef nonnull align 8 dereferenceable(16) %43) #30
  %52 = icmp eq i32 %51, 3
  %53 = icmp ne ptr %43, %0
  %54 = and i1 %53, %52
  br i1 %54, label %23, label %55, !llvm.loop !238

55:                                               ; preds = %47, %35, %29, %23, %17, %8
  %56 = phi i32 [ %10, %8 ], [ %10, %17 ], [ 1, %47 ], [ %38, %35 ], [ 1, %29 ], [ 1, %23 ]
  %57 = phi ptr [ %9, %8 ], [ %9, %17 ], [ %43, %47 ], [ %37, %35 ], [ %43, %29 ], [ %43, %23 ]
  %58 = load ptr, ptr @definition_env, align 8, !tbaa !213
  %59 = add nuw nsw i32 %10, 1
  %60 = icmp ne i32 %56, 0
  %61 = icmp ult i32 %59, %7
  %62 = select i1 %60, i1 %61, i1 false
  br i1 %62, label %8, label %63, !llvm.loop !239

63:                                               ; preds = %55, %45
  %64 = phi ptr [ %37, %45 ], [ %57, %55 ]
  %65 = icmp eq ptr %4, null
  br i1 %65, label %68, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr @definition_env, align 8, !tbaa !213
  store ptr %67, ptr %4, align 8, !tbaa !213
  br label %68

68:                                               ; preds = %66, %63
  ret ptr %64
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #4

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8app_node5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8app_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8app_nodeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8app_nodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(16) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !237
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK8app_node2opEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  ret i32 5
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK4node4nameEv(ptr noundef nonnull align 8 dereferenceable(16) %0) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8app_node4leftEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8app_node5rightEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN8app_node6reduceEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.stack_frame, align 8
  %6 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %7 = add nsw i32 %6, 1
  store i32 %7, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %8 = icmp sgt i32 %6, 3999
  br i1 %8, label %9, label %17

9:                                                ; preds = %4
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.27, i32 noundef %7) #30
  %11 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %13 = icmp eq ptr %3, null
  br i1 %13, label %385, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %3, align 4, !tbaa !217
  %16 = or i32 %15, 1
  store i32 %16, ptr %3, align 4, !tbaa !217
  br label %385

17:                                               ; preds = %4
  %18 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !235
  %20 = icmp eq ptr %19, null
  br i1 %20, label %334, label %21

21:                                               ; preds = %17
  %22 = and i32 %2, -5
  %23 = load ptr, ptr %19, align 8, !tbaa !219
  %24 = getelementptr inbounds ptr, ptr %23, i64 12
  %25 = load ptr, ptr %24, align 8
  tail call void %25(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef nonnull %0) #30
  %26 = load ptr, ptr %18, align 8, !tbaa !235
  %27 = load ptr, ptr %26, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 13
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef %1, i32 noundef %22, ptr noundef %3) #30
  %31 = load ptr, ptr %18, align 8, !tbaa !235
  %32 = icmp eq ptr %31, %30
  br i1 %32, label %45, label %33

33:                                               ; preds = %21
  %34 = icmp eq ptr %31, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %33
  %36 = load ptr, ptr %31, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 2
  %38 = load ptr, ptr %37, align 8
  tail call void %38(ptr noundef nonnull align 8 dereferenceable(16) %31) #28
  br label %39

39:                                               ; preds = %35, %33
  store ptr %30, ptr %18, align 8, !tbaa !235
  %40 = icmp eq ptr %30, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %39
  %42 = load ptr, ptr %30, align 8, !tbaa !219
  %43 = getelementptr inbounds ptr, ptr %42, i64 12
  %44 = load ptr, ptr %43, align 8
  tail call void %44(ptr noundef nonnull align 8 dereferenceable(16) %30, ptr noundef nonnull %0) #30
  br label %45

45:                                               ; preds = %41, %39, %21
  %46 = icmp eq ptr %3, null
  br i1 %46, label %63, label %47

47:                                               ; preds = %45
  %48 = load i32, ptr %3, align 4, !tbaa !217
  %49 = and i32 %48, 1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %54, label %51

51:                                               ; preds = %47
  %52 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

54:                                               ; preds = %47
  %55 = and i32 %2, 1
  %56 = icmp eq i32 %55, 0
  %57 = and i32 %48, 2
  %58 = icmp eq i32 %57, 0
  %59 = or i1 %56, %58
  br i1 %59, label %63, label %60

60:                                               ; preds = %54
  %61 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %62 = add nsw i32 %61, -1
  store i32 %62, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

63:                                               ; preds = %54, %45
  %64 = load ptr, ptr %18, align 8, !tbaa !235
  %65 = icmp eq ptr %64, null
  br i1 %65, label %334, label %66

66:                                               ; preds = %63
  %67 = load ptr, ptr %64, align 8, !tbaa !219
  %68 = getelementptr inbounds ptr, ptr %67, i64 3
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef i32 %69(ptr noundef nonnull align 8 dereferenceable(16) %64) #30
  %71 = icmp eq i32 %70, 5
  br i1 %71, label %72, label %142

72:                                               ; preds = %66
  %73 = load ptr, ptr %18, align 8, !tbaa !235
  %74 = load ptr, ptr %73, align 8, !tbaa !219
  %75 = getelementptr inbounds ptr, ptr %74, i64 12
  %76 = load ptr, ptr %75, align 8
  tail call void %76(ptr noundef nonnull align 8 dereferenceable(16) %73, ptr noundef nonnull %0) #30
  %77 = load ptr, ptr %18, align 8, !tbaa !235
  %78 = icmp eq ptr %77, null
  br i1 %78, label %98, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr %77, align 8, !tbaa !219
  %81 = getelementptr inbounds ptr, ptr %80, i64 13
  %82 = load ptr, ptr %81, align 8
  %83 = tail call noundef ptr %82(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef %1, i32 noundef %22, ptr noundef %3) #30
  %84 = load ptr, ptr %18, align 8, !tbaa !235
  %85 = icmp eq ptr %84, %83
  br i1 %85, label %98, label %86

86:                                               ; preds = %79
  %87 = icmp eq ptr %84, null
  br i1 %87, label %92, label %88

88:                                               ; preds = %86
  %89 = load ptr, ptr %84, align 8, !tbaa !219
  %90 = getelementptr inbounds ptr, ptr %89, i64 2
  %91 = load ptr, ptr %90, align 8
  tail call void %91(ptr noundef nonnull align 8 dereferenceable(16) %84) #28
  br label %92

92:                                               ; preds = %88, %86
  store ptr %83, ptr %18, align 8, !tbaa !235
  %93 = icmp eq ptr %83, null
  br i1 %93, label %98, label %94

94:                                               ; preds = %92
  %95 = load ptr, ptr %83, align 8, !tbaa !219
  %96 = getelementptr inbounds ptr, ptr %95, i64 12
  %97 = load ptr, ptr %96, align 8
  tail call void %97(ptr noundef nonnull align 8 dereferenceable(16) %83, ptr noundef nonnull %0) #30
  br label %98

98:                                               ; preds = %94, %92, %79, %72
  br i1 %46, label %115, label %99

99:                                               ; preds = %98
  %100 = load i32, ptr %3, align 4, !tbaa !217
  %101 = and i32 %100, 1
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %106, label %103

103:                                              ; preds = %99
  %104 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %105 = add nsw i32 %104, -1
  store i32 %105, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

106:                                              ; preds = %99
  %107 = and i32 %2, 1
  %108 = icmp eq i32 %107, 0
  %109 = and i32 %100, 2
  %110 = icmp eq i32 %109, 0
  %111 = or i1 %108, %110
  br i1 %111, label %115, label %112

112:                                              ; preds = %106
  %113 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %114 = add nsw i32 %113, -1
  store i32 %114, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

115:                                              ; preds = %106, %98
  %116 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %117 = load ptr, ptr %116, align 8, !tbaa !237
  %118 = icmp eq ptr %117, null
  br i1 %118, label %142, label %119

119:                                              ; preds = %115
  %120 = load ptr, ptr %117, align 8, !tbaa !219
  %121 = getelementptr inbounds ptr, ptr %120, i64 12
  %122 = load ptr, ptr %121, align 8
  tail call void %122(ptr noundef nonnull align 8 dereferenceable(16) %117, ptr noundef nonnull %0) #30
  %123 = load ptr, ptr %116, align 8, !tbaa !237
  %124 = load ptr, ptr %123, align 8, !tbaa !219
  %125 = getelementptr inbounds ptr, ptr %124, i64 17
  %126 = load ptr, ptr %125, align 8
  %127 = tail call noundef ptr %126(ptr noundef nonnull align 8 dereferenceable(16) %123, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %128 = load ptr, ptr %116, align 8, !tbaa !237
  %129 = icmp eq ptr %128, %127
  br i1 %129, label %142, label %130

130:                                              ; preds = %119
  %131 = icmp eq ptr %128, null
  br i1 %131, label %136, label %132

132:                                              ; preds = %130
  %133 = load ptr, ptr %128, align 8, !tbaa !219
  %134 = getelementptr inbounds ptr, ptr %133, i64 2
  %135 = load ptr, ptr %134, align 8
  tail call void %135(ptr noundef nonnull align 8 dereferenceable(16) %128) #28
  br label %136

136:                                              ; preds = %132, %130
  store ptr %127, ptr %116, align 8, !tbaa !237
  %137 = icmp eq ptr %127, null
  br i1 %137, label %142, label %138

138:                                              ; preds = %136
  %139 = load ptr, ptr %127, align 8, !tbaa !219
  %140 = getelementptr inbounds ptr, ptr %139, i64 12
  %141 = load ptr, ptr %140, align 8
  tail call void %141(ptr noundef nonnull align 8 dereferenceable(16) %127, ptr noundef nonnull %0) #30
  br label %142

142:                                              ; preds = %138, %136, %119, %115, %66
  %143 = load ptr, ptr %18, align 8, !tbaa !235
  %144 = icmp eq ptr %143, null
  br i1 %144, label %334, label %145

145:                                              ; preds = %142
  %146 = load ptr, ptr %143, align 8, !tbaa !219
  %147 = getelementptr inbounds ptr, ptr %146, i64 3
  %148 = load ptr, ptr %147, align 8
  %149 = tail call noundef i32 %148(ptr noundef nonnull align 8 dereferenceable(16) %143) #30
  %150 = icmp eq i32 %149, 4
  br i1 %150, label %151, label %334

151:                                              ; preds = %145
  %152 = load ptr, ptr %18, align 8, !tbaa !235
  %153 = load ptr, ptr %152, align 8, !tbaa !219
  %154 = getelementptr inbounds ptr, ptr %153, i64 6
  %155 = load ptr, ptr %154, align 8
  %156 = tail call noundef ptr %155(ptr noundef nonnull align 8 dereferenceable(16) %152) #30
  %157 = icmp eq ptr %156, null
  br i1 %157, label %201, label %158

158:                                              ; preds = %151
  %159 = load ptr, ptr %18, align 8, !tbaa !235
  %160 = load ptr, ptr %159, align 8, !tbaa !219
  %161 = getelementptr inbounds ptr, ptr %160, i64 6
  %162 = load ptr, ptr %161, align 8
  %163 = tail call noundef ptr %162(ptr noundef nonnull align 8 dereferenceable(16) %159) #30
  %164 = icmp eq ptr %163, null
  br i1 %164, label %201, label %165

165:                                              ; preds = %158
  %166 = load ptr, ptr %18, align 8, !tbaa !235
  %167 = load ptr, ptr %166, align 8, !tbaa !219
  %168 = getelementptr inbounds ptr, ptr %167, i64 6
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(16) %166) #30
  %171 = load ptr, ptr %170, align 8, !tbaa !219
  %172 = getelementptr inbounds ptr, ptr %171, i64 4
  %173 = load ptr, ptr %172, align 8
  %174 = tail call noundef ptr %173(ptr noundef nonnull align 8 dereferenceable(32) %170) #30
  %175 = icmp eq ptr %174, null
  br i1 %175, label %201, label %176

176:                                              ; preds = %165
  %177 = load ptr, ptr %18, align 8, !tbaa !235
  %178 = load ptr, ptr %177, align 8, !tbaa !219
  %179 = getelementptr inbounds ptr, ptr %178, i64 6
  %180 = load ptr, ptr %179, align 8
  %181 = tail call noundef ptr %180(ptr noundef nonnull align 8 dereferenceable(16) %177) #30
  %182 = load ptr, ptr %181, align 8, !tbaa !219
  %183 = getelementptr inbounds ptr, ptr %182, i64 4
  %184 = load ptr, ptr %183, align 8
  %185 = tail call noundef ptr %184(ptr noundef nonnull align 8 dereferenceable(32) %181) #30
  %186 = load i8, ptr %185, align 1, !tbaa !240
  %187 = icmp eq i8 %186, 64
  br i1 %187, label %201, label %188

188:                                              ; preds = %176
  %189 = load ptr, ptr %18, align 8, !tbaa !235
  %190 = load ptr, ptr %189, align 8, !tbaa !219
  %191 = getelementptr inbounds ptr, ptr %190, i64 6
  %192 = load ptr, ptr %191, align 8
  %193 = tail call noundef ptr %192(ptr noundef nonnull align 8 dereferenceable(16) %189) #30
  %194 = load ptr, ptr %193, align 8, !tbaa !219
  %195 = getelementptr inbounds ptr, ptr %194, i64 4
  %196 = load ptr, ptr %195, align 8
  %197 = tail call noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(32) %193) #30
  %198 = load i8, ptr %197, align 1, !tbaa !240
  %199 = icmp eq i8 %198, 35
  %200 = select i1 %199, i32 0, i32 %2
  br label %201

201:                                              ; preds = %188, %176, %165, %158, %151
  %202 = phi i32 [ %2, %165 ], [ %2, %158 ], [ %2, %151 ], [ %200, %188 ], [ 2, %176 ]
  %203 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %204 = load ptr, ptr %203, align 8, !tbaa !237
  %205 = icmp eq ptr %204, null
  br i1 %205, label %301, label %206

206:                                              ; preds = %201
  %207 = load ptr, ptr %204, align 8, !tbaa !219
  %208 = getelementptr inbounds ptr, ptr %207, i64 12
  %209 = load ptr, ptr %208, align 8
  tail call void %209(ptr noundef nonnull align 8 dereferenceable(16) %204, ptr noundef nonnull %0) #30
  %210 = and i32 %202, 2
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %273, label %212

212:                                              ; preds = %206
  %213 = load ptr, ptr %18, align 8, !tbaa !235
  %214 = load ptr, ptr %213, align 8, !tbaa !219
  %215 = getelementptr inbounds ptr, ptr %214, i64 6
  %216 = load ptr, ptr %215, align 8
  %217 = tail call noundef ptr %216(ptr noundef nonnull align 8 dereferenceable(16) %213) #30
  %218 = load ptr, ptr %18, align 8, !tbaa !235
  %219 = load ptr, ptr %218, align 8, !tbaa !219
  %220 = getelementptr inbounds ptr, ptr %219, i64 7
  %221 = load ptr, ptr %220, align 8
  %222 = tail call noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(16) %218) #30
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %223 = getelementptr inbounds %class.node, ptr %5, i64 0, i32 1
  store ptr null, ptr %223, align 8, !tbaa !225
  %224 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %225 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !219
  store ptr %217, ptr %224, align 8, !tbaa !241
  store ptr %1, ptr %225, align 8, !tbaa !244
  %226 = icmp ne ptr %222, null
  %227 = icmp ne ptr %217, null
  %228 = and i1 %227, %226
  br i1 %228, label %230, label %229

229:                                              ; preds = %212
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br label %273

230:                                              ; preds = %212
  %231 = load ptr, ptr %222, align 8, !tbaa !219
  %232 = getelementptr inbounds ptr, ptr %231, i64 15
  %233 = load ptr, ptr %232, align 8
  %234 = call noundef signext i16 %233(ptr noundef nonnull align 8 dereferenceable(16) %222, ptr noundef nonnull %217, ptr noundef nonnull %5) #30
  %235 = icmp eq i16 %234, 0
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  br i1 %235, label %273, label %236

236:                                              ; preds = %230
  %237 = load ptr, ptr %203, align 8, !tbaa !237
  %238 = load ptr, ptr %237, align 8, !tbaa !219
  %239 = getelementptr inbounds ptr, ptr %238, i64 13
  %240 = load ptr, ptr %239, align 8
  %241 = call noundef ptr %240(ptr noundef nonnull align 8 dereferenceable(16) %237, ptr noundef %1, i32 noundef %22, ptr noundef %3) #30
  %242 = load ptr, ptr %203, align 8, !tbaa !237
  %243 = icmp eq ptr %242, %241
  br i1 %243, label %256, label %244

244:                                              ; preds = %236
  %245 = icmp eq ptr %242, null
  br i1 %245, label %250, label %246

246:                                              ; preds = %244
  %247 = load ptr, ptr %242, align 8, !tbaa !219
  %248 = getelementptr inbounds ptr, ptr %247, i64 2
  %249 = load ptr, ptr %248, align 8
  call void %249(ptr noundef nonnull align 8 dereferenceable(16) %242) #28
  br label %250

250:                                              ; preds = %246, %244
  store ptr %241, ptr %203, align 8, !tbaa !237
  %251 = icmp eq ptr %241, null
  br i1 %251, label %256, label %252

252:                                              ; preds = %250
  %253 = load ptr, ptr %241, align 8, !tbaa !219
  %254 = getelementptr inbounds ptr, ptr %253, i64 12
  %255 = load ptr, ptr %254, align 8
  call void %255(ptr noundef nonnull align 8 dereferenceable(16) %241, ptr noundef nonnull %0) #30
  br label %256

256:                                              ; preds = %252, %250, %236
  br i1 %46, label %301, label %257

257:                                              ; preds = %256
  %258 = load i32, ptr %3, align 4, !tbaa !217
  %259 = and i32 %258, 1
  %260 = icmp eq i32 %259, 0
  br i1 %260, label %264, label %261

261:                                              ; preds = %257
  %262 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %263 = add nsw i32 %262, -1
  store i32 %263, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

264:                                              ; preds = %257
  %265 = and i32 %2, 1
  %266 = icmp eq i32 %265, 0
  %267 = and i32 %258, 2
  %268 = icmp eq i32 %267, 0
  %269 = or i1 %266, %268
  br i1 %269, label %301, label %270

270:                                              ; preds = %264
  %271 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %272 = add nsw i32 %271, -1
  store i32 %272, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

273:                                              ; preds = %230, %229, %206
  %274 = load ptr, ptr %203, align 8, !tbaa !237
  %275 = load ptr, ptr %274, align 8, !tbaa !219
  %276 = getelementptr inbounds ptr, ptr %275, i64 17
  %277 = load ptr, ptr %276, align 8
  %278 = call noundef ptr %277(ptr noundef nonnull align 8 dereferenceable(16) %274, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %279 = load ptr, ptr %203, align 8, !tbaa !237
  %280 = icmp eq ptr %279, %278
  br i1 %280, label %293, label %281

281:                                              ; preds = %273
  %282 = icmp eq ptr %279, null
  br i1 %282, label %287, label %283

283:                                              ; preds = %281
  %284 = load ptr, ptr %279, align 8, !tbaa !219
  %285 = getelementptr inbounds ptr, ptr %284, i64 2
  %286 = load ptr, ptr %285, align 8
  call void %286(ptr noundef nonnull align 8 dereferenceable(16) %279) #28
  br label %287

287:                                              ; preds = %283, %281
  store ptr %278, ptr %203, align 8, !tbaa !237
  %288 = icmp eq ptr %278, null
  br i1 %288, label %293, label %289

289:                                              ; preds = %287
  %290 = load ptr, ptr %278, align 8, !tbaa !219
  %291 = getelementptr inbounds ptr, ptr %290, i64 12
  %292 = load ptr, ptr %291, align 8
  call void %292(ptr noundef nonnull align 8 dereferenceable(16) %278, ptr noundef nonnull %0) #30
  br label %293

293:                                              ; preds = %289, %287, %273
  br i1 %46, label %301, label %294

294:                                              ; preds = %293
  %295 = load i32, ptr %3, align 4, !tbaa !217
  %296 = and i32 %295, 1
  %297 = icmp eq i32 %296, 0
  br i1 %297, label %301, label %298

298:                                              ; preds = %294
  %299 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %300 = add nsw i32 %299, -1
  store i32 %300, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

301:                                              ; preds = %294, %293, %264, %256, %201
  %302 = load ptr, ptr %18, align 8, !tbaa !235
  %303 = load ptr, ptr %302, align 8, !tbaa !219
  %304 = getelementptr inbounds ptr, ptr %303, i64 6
  %305 = load ptr, ptr %304, align 8
  %306 = call noundef ptr %305(ptr noundef nonnull align 8 dereferenceable(16) %302) #30
  call void @_ZN8arg_node12import_valueEPP8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %306, ptr noundef nonnull %203) #30
  store ptr null, ptr %203, align 8, !tbaa !237
  %307 = load ptr, ptr %18, align 8, !tbaa !235
  %308 = load ptr, ptr %307, align 8, !tbaa !219
  %309 = getelementptr inbounds ptr, ptr %308, i64 12
  %310 = load ptr, ptr %309, align 8
  call void %310(ptr noundef nonnull align 8 dereferenceable(16) %307, ptr noundef nonnull %0) #30
  %311 = load ptr, ptr %18, align 8, !tbaa !235
  %312 = load ptr, ptr %311, align 8, !tbaa !219
  %313 = getelementptr inbounds ptr, ptr %312, i64 13
  %314 = load ptr, ptr %313, align 8
  %315 = call noundef ptr %314(ptr noundef nonnull align 8 dereferenceable(16) %311, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %316 = load ptr, ptr %18, align 8, !tbaa !235
  %317 = icmp eq ptr %316, null
  %318 = icmp eq ptr %316, %315
  %319 = or i1 %317, %318
  br i1 %319, label %324, label %320

320:                                              ; preds = %301
  %321 = load ptr, ptr %316, align 8, !tbaa !219
  %322 = getelementptr inbounds ptr, ptr %321, i64 2
  %323 = load ptr, ptr %322, align 8
  call void %323(ptr noundef nonnull align 8 dereferenceable(16) %316) #28
  br label %324

324:                                              ; preds = %320, %301
  store ptr null, ptr %18, align 8, !tbaa !235
  %325 = icmp eq ptr %315, null
  br i1 %325, label %330, label %326

326:                                              ; preds = %324
  %327 = load ptr, ptr %315, align 8, !tbaa !219
  %328 = getelementptr inbounds ptr, ptr %327, i64 12
  %329 = load ptr, ptr %328, align 8
  call void %329(ptr noundef nonnull align 8 dereferenceable(16) %315, ptr noundef nonnull %0) #30
  br label %330

330:                                              ; preds = %326, %324
  br i1 %46, label %381, label %331

331:                                              ; preds = %330
  %332 = load i32, ptr %3, align 4, !tbaa !217
  %333 = or i32 %332, 2
  store i32 %333, ptr %3, align 4, !tbaa !217
  br label %381

334:                                              ; preds = %145, %142, %63, %17
  %335 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %336 = load ptr, ptr %335, align 8, !tbaa !237
  %337 = icmp eq ptr %336, null
  br i1 %337, label %381, label %338

338:                                              ; preds = %334
  %339 = load ptr, ptr %336, align 8, !tbaa !219
  %340 = getelementptr inbounds ptr, ptr %339, i64 12
  %341 = load ptr, ptr %340, align 8
  tail call void %341(ptr noundef nonnull align 8 dereferenceable(16) %336, ptr noundef nonnull %0) #30
  %342 = load ptr, ptr %335, align 8, !tbaa !237
  %343 = load ptr, ptr %342, align 8, !tbaa !219
  %344 = getelementptr inbounds ptr, ptr %343, i64 17
  %345 = load ptr, ptr %344, align 8
  %346 = tail call noundef ptr %345(ptr noundef nonnull align 8 dereferenceable(16) %342, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %347 = load ptr, ptr %335, align 8, !tbaa !237
  %348 = icmp eq ptr %347, %346
  br i1 %348, label %361, label %349

349:                                              ; preds = %338
  %350 = icmp eq ptr %347, null
  br i1 %350, label %355, label %351

351:                                              ; preds = %349
  %352 = load ptr, ptr %347, align 8, !tbaa !219
  %353 = getelementptr inbounds ptr, ptr %352, i64 2
  %354 = load ptr, ptr %353, align 8
  tail call void %354(ptr noundef nonnull align 8 dereferenceable(16) %347) #28
  br label %355

355:                                              ; preds = %351, %349
  store ptr %346, ptr %335, align 8, !tbaa !237
  %356 = icmp ne ptr %346, null
  tail call void @llvm.assume(i1 %356)
  %357 = load ptr, ptr %346, align 8, !tbaa !219
  %358 = getelementptr inbounds ptr, ptr %357, i64 12
  %359 = load ptr, ptr %358, align 8
  tail call void %359(ptr noundef nonnull align 8 dereferenceable(16) %346, ptr noundef nonnull %0) #30
  %360 = load ptr, ptr %335, align 8, !tbaa !237
  br label %361

361:                                              ; preds = %355, %338
  %362 = phi ptr [ %346, %338 ], [ %360, %355 ]
  %363 = load ptr, ptr %362, align 8, !tbaa !219
  %364 = getelementptr inbounds ptr, ptr %363, i64 13
  %365 = load ptr, ptr %364, align 8
  %366 = tail call noundef ptr %365(ptr noundef nonnull align 8 dereferenceable(16) %362, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %367 = load ptr, ptr %335, align 8, !tbaa !237
  %368 = icmp eq ptr %367, %366
  br i1 %368, label %381, label %369

369:                                              ; preds = %361
  %370 = icmp eq ptr %367, null
  br i1 %370, label %375, label %371

371:                                              ; preds = %369
  %372 = load ptr, ptr %367, align 8, !tbaa !219
  %373 = getelementptr inbounds ptr, ptr %372, i64 2
  %374 = load ptr, ptr %373, align 8
  tail call void %374(ptr noundef nonnull align 8 dereferenceable(16) %367) #28
  br label %375

375:                                              ; preds = %371, %369
  store ptr %366, ptr %335, align 8, !tbaa !237
  %376 = icmp eq ptr %366, null
  br i1 %376, label %381, label %377

377:                                              ; preds = %375
  %378 = load ptr, ptr %366, align 8, !tbaa !219
  %379 = getelementptr inbounds ptr, ptr %378, i64 12
  %380 = load ptr, ptr %379, align 8
  tail call void %380(ptr noundef nonnull align 8 dereferenceable(16) %366, ptr noundef nonnull %0) #30
  br label %381

381:                                              ; preds = %377, %375, %361, %334, %331, %330
  %382 = phi ptr [ %0, %334 ], [ %315, %331 ], [ %315, %330 ], [ %0, %361 ], [ %0, %375 ], [ %0, %377 ]
  %383 = load i32, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  %384 = add nsw i32 %383, -1
  store i32 %384, ptr @_ZL24app_reduce_recurse_level, align 4, !tbaa !217
  br label %385

385:                                              ; preds = %381, %298, %270, %261, %112, %103, %60, %51, %14, %9
  %386 = phi ptr [ %382, %381 ], [ %0, %14 ], [ %0, %9 ], [ %0, %60 ], [ %0, %51 ], [ %0, %112 ], [ %0, %103 ], [ %0, %261 ], [ %0, %270 ], [ %0, %298 ]
  ret ptr %386
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK8app_node5printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
  %4 = and i32 %2, 16
  %5 = icmp eq i32 %4, 0
  %6 = load ptr, ptr %0, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 8
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %10 = icmp eq ptr %9, null
  br i1 %5, label %189, label %11

11:                                               ; preds = %3
  br i1 %10, label %127, label %12

12:                                               ; preds = %11
  %13 = and i32 %2, 8
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %12
  %16 = load ptr, ptr %0, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 8
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %20 = load ptr, ptr %19, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 24
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %1) #30
  %24 = icmp ne ptr %23, null
  %25 = zext i1 %24 to i32
  br label %26

26:                                               ; preds = %15, %12
  %27 = phi i32 [ %25, %15 ], [ 0, %12 ]
  %28 = load ptr, ptr %0, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 8
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %32 = load ptr, ptr %31, align 8, !tbaa !219
  %33 = getelementptr inbounds ptr, ptr %32, i64 3
  %34 = load ptr, ptr %33, align 8
  %35 = tail call noundef i32 %34(ptr noundef nonnull align 8 dereferenceable(16) %31) #30
  %36 = icmp eq i32 %35, 3
  br i1 %36, label %49, label %37

37:                                               ; preds = %26
  %38 = load ptr, ptr %0, align 8, !tbaa !219
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %42 = load ptr, ptr %41, align 8, !tbaa !219
  %43 = getelementptr inbounds ptr, ptr %42, i64 3
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef i32 %44(ptr noundef nonnull align 8 dereferenceable(16) %41) #30
  %46 = icmp eq i32 %45, 5
  %47 = icmp ne i32 %27, 0
  %48 = or i1 %47, %46
  br i1 %48, label %49, label %50

49:                                               ; preds = %37, %26
  br label %50

50:                                               ; preds = %49, %37
  %51 = phi i1 [ true, %49 ], [ false, %37 ]
  %52 = load ptr, ptr %0, align 8, !tbaa !219
  %53 = getelementptr inbounds ptr, ptr %52, i64 8
  %54 = load ptr, ptr %53, align 8
  %55 = tail call noundef ptr %54(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %56 = load ptr, ptr %55, align 8, !tbaa !219
  %57 = getelementptr inbounds ptr, ptr %56, i64 3
  %58 = load ptr, ptr %57, align 8
  %59 = tail call noundef i32 %58(ptr noundef nonnull align 8 dereferenceable(16) %55) #30
  %60 = icmp eq i32 %59, 5
  br i1 %60, label %61, label %104

61:                                               ; preds = %50
  %62 = load ptr, ptr %0, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 8
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef ptr %64(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %66 = load ptr, ptr %65, align 8, !tbaa !219
  %67 = getelementptr inbounds ptr, ptr %66, i64 9
  %68 = load ptr, ptr %67, align 8
  %69 = tail call noundef ptr %68(ptr noundef nonnull align 8 dereferenceable(16) %65) #30
  %70 = icmp eq ptr %69, null
  br i1 %70, label %104, label %71

71:                                               ; preds = %61
  br i1 %14, label %86, label %72

72:                                               ; preds = %71
  %73 = load ptr, ptr %0, align 8, !tbaa !219
  %74 = getelementptr inbounds ptr, ptr %73, i64 8
  %75 = load ptr, ptr %74, align 8
  %76 = tail call noundef ptr %75(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %77 = load ptr, ptr %76, align 8, !tbaa !219
  %78 = getelementptr inbounds ptr, ptr %77, i64 9
  %79 = load ptr, ptr %78, align 8
  %80 = tail call noundef ptr %79(ptr noundef nonnull align 8 dereferenceable(16) %76) #30
  %81 = load ptr, ptr %80, align 8, !tbaa !219
  %82 = getelementptr inbounds ptr, ptr %81, i64 24
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef %1) #30
  %85 = icmp ne ptr %84, null
  br label %86

86:                                               ; preds = %72, %71
  %87 = phi i1 [ %85, %72 ], [ false, %71 ]
  %88 = load ptr, ptr %0, align 8, !tbaa !219
  %89 = getelementptr inbounds ptr, ptr %88, i64 8
  %90 = load ptr, ptr %89, align 8
  %91 = tail call noundef ptr %90(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %92 = load ptr, ptr %91, align 8, !tbaa !219
  %93 = getelementptr inbounds ptr, ptr %92, i64 9
  %94 = load ptr, ptr %93, align 8
  %95 = tail call noundef ptr %94(ptr noundef nonnull align 8 dereferenceable(16) %91) #30
  %96 = load ptr, ptr %95, align 8, !tbaa !219
  %97 = getelementptr inbounds ptr, ptr %96, i64 3
  %98 = load ptr, ptr %97, align 8
  %99 = tail call noundef i32 %98(ptr noundef nonnull align 8 dereferenceable(16) %95) #30
  %100 = icmp eq i32 %99, 3
  %101 = or i1 %87, %100
  %102 = xor i1 %101, true
  %103 = zext i1 %102 to i32
  br label %104

104:                                              ; preds = %86, %61, %50
  %105 = phi i32 [ 0, %61 ], [ 0, %50 ], [ %103, %86 ]
  br i1 %51, label %108, label %106

106:                                              ; preds = %104
  %107 = tail call i32 @putchar(i32 40)
  br label %108

108:                                              ; preds = %106, %104
  %109 = load ptr, ptr %0, align 8, !tbaa !219
  %110 = getelementptr inbounds ptr, ptr %109, i64 8
  %111 = load ptr, ptr %110, align 8
  %112 = tail call noundef ptr %111(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %113 = icmp eq ptr %112, null
  br i1 %113, label %122, label %114

114:                                              ; preds = %108
  %115 = load ptr, ptr %0, align 8, !tbaa !219
  %116 = getelementptr inbounds ptr, ptr %115, i64 8
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %119 = load ptr, ptr %118, align 8, !tbaa !219
  %120 = getelementptr inbounds ptr, ptr %119, i64 14
  %121 = load ptr, ptr %120, align 8
  tail call void %121(ptr noundef nonnull align 8 dereferenceable(16) %118, ptr noundef %1, i32 noundef %2) #30
  br label %124

122:                                              ; preds = %108
  %123 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #30
  br label %124

124:                                              ; preds = %122, %114
  br i1 %51, label %129, label %125

125:                                              ; preds = %124
  %126 = tail call i32 @putchar(i32 41)
  br label %129

127:                                              ; preds = %11
  %128 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #30
  br label %129

129:                                              ; preds = %127, %125, %124
  %130 = phi i1 [ true, %125 ], [ false, %124 ], [ true, %127 ]
  %131 = phi i32 [ %105, %125 ], [ %105, %124 ], [ 0, %127 ]
  %132 = load ptr, ptr %0, align 8, !tbaa !219
  %133 = getelementptr inbounds ptr, ptr %132, i64 9
  %134 = load ptr, ptr %133, align 8
  %135 = tail call noundef ptr %134(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %136 = icmp eq ptr %135, null
  br i1 %136, label %187, label %137

137:                                              ; preds = %129
  %138 = and i32 %2, 8
  %139 = icmp eq i32 %138, 0
  br i1 %139, label %150, label %140

140:                                              ; preds = %137
  %141 = load ptr, ptr %0, align 8, !tbaa !219
  %142 = getelementptr inbounds ptr, ptr %141, i64 9
  %143 = load ptr, ptr %142, align 8
  %144 = tail call noundef ptr %143(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %145 = load ptr, ptr %144, align 8, !tbaa !219
  %146 = getelementptr inbounds ptr, ptr %145, i64 24
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(16) %144, ptr noundef %1) #30
  %149 = icmp ne ptr %148, null
  br label %150

150:                                              ; preds = %140, %137
  %151 = phi i1 [ %149, %140 ], [ false, %137 ]
  %152 = load ptr, ptr %0, align 8, !tbaa !219
  %153 = getelementptr inbounds ptr, ptr %152, i64 9
  %154 = load ptr, ptr %153, align 8
  %155 = tail call noundef ptr %154(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %156 = load ptr, ptr %155, align 8, !tbaa !219
  %157 = getelementptr inbounds ptr, ptr %156, i64 3
  %158 = load ptr, ptr %157, align 8
  %159 = tail call noundef i32 %158(ptr noundef nonnull align 8 dereferenceable(16) %155) #30
  %160 = icmp eq i32 %159, 3
  %161 = or i1 %151, %160
  br i1 %161, label %162, label %165

162:                                              ; preds = %150
  %163 = icmp ne i32 %131, 0
  %164 = or i1 %130, %163
  br i1 %164, label %168, label %165

165:                                              ; preds = %162, %150
  %166 = phi i32 [ 40, %150 ], [ 32, %162 ]
  %167 = tail call i32 @putchar(i32 %166)
  br label %168

168:                                              ; preds = %165, %162
  %169 = load ptr, ptr %0, align 8, !tbaa !219
  %170 = getelementptr inbounds ptr, ptr %169, i64 9
  %171 = load ptr, ptr %170, align 8
  %172 = tail call noundef ptr %171(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %173 = icmp eq ptr %172, null
  br i1 %173, label %182, label %174

174:                                              ; preds = %168
  %175 = load ptr, ptr %0, align 8, !tbaa !219
  %176 = getelementptr inbounds ptr, ptr %175, i64 9
  %177 = load ptr, ptr %176, align 8
  %178 = tail call noundef ptr %177(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %179 = load ptr, ptr %178, align 8, !tbaa !219
  %180 = getelementptr inbounds ptr, ptr %179, i64 14
  %181 = load ptr, ptr %180, align 8
  tail call void %181(ptr noundef nonnull align 8 dereferenceable(16) %178, ptr noundef %1, i32 noundef %2) #30
  br label %184

182:                                              ; preds = %168
  %183 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #30
  br label %184

184:                                              ; preds = %182, %174
  br i1 %161, label %321, label %185

185:                                              ; preds = %184
  %186 = tail call i32 @putchar(i32 41)
  br label %321

187:                                              ; preds = %129
  %188 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #30
  br label %321

189:                                              ; preds = %3
  br i1 %10, label %250, label %190

190:                                              ; preds = %189
  %191 = load ptr, ptr %0, align 8, !tbaa !219
  %192 = getelementptr inbounds ptr, ptr %191, i64 8
  %193 = load ptr, ptr %192, align 8
  %194 = tail call noundef ptr %193(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %195 = load ptr, ptr %194, align 8, !tbaa !219
  %196 = getelementptr inbounds ptr, ptr %195, i64 3
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef i32 %197(ptr noundef nonnull align 8 dereferenceable(16) %194) #30
  %199 = icmp eq i32 %198, 3
  br i1 %199, label %200, label %210

200:                                              ; preds = %190
  %201 = load ptr, ptr %0, align 8, !tbaa !219
  %202 = getelementptr inbounds ptr, ptr %201, i64 8
  %203 = load ptr, ptr %202, align 8
  %204 = tail call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %205 = load ptr, ptr %204, align 8, !tbaa !219
  %206 = getelementptr inbounds ptr, ptr %205, i64 5
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(16) %204) #30
  %209 = icmp eq ptr %208, null
  br i1 %209, label %212, label %210

210:                                              ; preds = %200, %190
  %211 = tail call i32 @putchar(i32 40)
  br label %212

212:                                              ; preds = %210, %200
  %213 = load ptr, ptr %0, align 8, !tbaa !219
  %214 = getelementptr inbounds ptr, ptr %213, i64 8
  %215 = load ptr, ptr %214, align 8
  %216 = tail call noundef ptr %215(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %217 = icmp eq ptr %216, null
  br i1 %217, label %226, label %218

218:                                              ; preds = %212
  %219 = load ptr, ptr %0, align 8, !tbaa !219
  %220 = getelementptr inbounds ptr, ptr %219, i64 8
  %221 = load ptr, ptr %220, align 8
  %222 = tail call noundef ptr %221(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %223 = load ptr, ptr %222, align 8, !tbaa !219
  %224 = getelementptr inbounds ptr, ptr %223, i64 14
  %225 = load ptr, ptr %224, align 8
  tail call void %225(ptr noundef nonnull align 8 dereferenceable(16) %222, ptr noundef %1, i32 noundef %2) #30
  br label %228

226:                                              ; preds = %212
  %227 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #30
  br label %228

228:                                              ; preds = %226, %218
  %229 = load ptr, ptr %0, align 8, !tbaa !219
  %230 = getelementptr inbounds ptr, ptr %229, i64 8
  %231 = load ptr, ptr %230, align 8
  %232 = tail call noundef ptr %231(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %233 = load ptr, ptr %232, align 8, !tbaa !219
  %234 = getelementptr inbounds ptr, ptr %233, i64 3
  %235 = load ptr, ptr %234, align 8
  %236 = tail call noundef i32 %235(ptr noundef nonnull align 8 dereferenceable(16) %232) #30
  %237 = icmp eq i32 %236, 3
  br i1 %237, label %238, label %248

238:                                              ; preds = %228
  %239 = load ptr, ptr %0, align 8, !tbaa !219
  %240 = getelementptr inbounds ptr, ptr %239, i64 8
  %241 = load ptr, ptr %240, align 8
  %242 = tail call noundef ptr %241(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %243 = load ptr, ptr %242, align 8, !tbaa !219
  %244 = getelementptr inbounds ptr, ptr %243, i64 5
  %245 = load ptr, ptr %244, align 8
  %246 = tail call noundef ptr %245(ptr noundef nonnull align 8 dereferenceable(16) %242) #30
  %247 = icmp eq ptr %246, null
  br i1 %247, label %252, label %248

248:                                              ; preds = %238, %228
  %249 = tail call i32 @putchar(i32 41)
  br label %252

250:                                              ; preds = %189
  %251 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #30
  br label %252

252:                                              ; preds = %250, %248, %238
  %253 = load ptr, ptr %0, align 8, !tbaa !219
  %254 = getelementptr inbounds ptr, ptr %253, i64 9
  %255 = load ptr, ptr %254, align 8
  %256 = tail call noundef ptr %255(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %257 = icmp eq ptr %256, null
  br i1 %257, label %319, label %258

258:                                              ; preds = %252
  %259 = load ptr, ptr %0, align 8, !tbaa !219
  %260 = getelementptr inbounds ptr, ptr %259, i64 9
  %261 = load ptr, ptr %260, align 8
  %262 = tail call noundef ptr %261(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %263 = load ptr, ptr %262, align 8, !tbaa !219
  %264 = getelementptr inbounds ptr, ptr %263, i64 3
  %265 = load ptr, ptr %264, align 8
  %266 = tail call noundef i32 %265(ptr noundef nonnull align 8 dereferenceable(16) %262) #30
  %267 = icmp eq i32 %266, 3
  br i1 %267, label %268, label %279

268:                                              ; preds = %258
  %269 = load ptr, ptr %0, align 8, !tbaa !219
  %270 = getelementptr inbounds ptr, ptr %269, i64 9
  %271 = load ptr, ptr %270, align 8
  %272 = tail call noundef ptr %271(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %273 = load ptr, ptr %272, align 8, !tbaa !219
  %274 = getelementptr inbounds ptr, ptr %273, i64 5
  %275 = load ptr, ptr %274, align 8
  %276 = tail call noundef ptr %275(ptr noundef nonnull align 8 dereferenceable(16) %272) #30
  %277 = icmp eq ptr %276, null
  %278 = select i1 %277, i32 32, i32 40
  br label %279

279:                                              ; preds = %268, %258
  %280 = phi i32 [ 40, %258 ], [ %278, %268 ]
  %281 = tail call i32 @putchar(i32 %280)
  %282 = load ptr, ptr %0, align 8, !tbaa !219
  %283 = getelementptr inbounds ptr, ptr %282, i64 9
  %284 = load ptr, ptr %283, align 8
  %285 = tail call noundef ptr %284(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %286 = icmp eq ptr %285, null
  br i1 %286, label %295, label %287

287:                                              ; preds = %279
  %288 = load ptr, ptr %0, align 8, !tbaa !219
  %289 = getelementptr inbounds ptr, ptr %288, i64 9
  %290 = load ptr, ptr %289, align 8
  %291 = tail call noundef ptr %290(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %292 = load ptr, ptr %291, align 8, !tbaa !219
  %293 = getelementptr inbounds ptr, ptr %292, i64 14
  %294 = load ptr, ptr %293, align 8
  tail call void %294(ptr noundef nonnull align 8 dereferenceable(16) %291, ptr noundef %1, i32 noundef %2) #30
  br label %297

295:                                              ; preds = %279
  %296 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.23) #30
  br label %297

297:                                              ; preds = %295, %287
  %298 = load ptr, ptr %0, align 8, !tbaa !219
  %299 = getelementptr inbounds ptr, ptr %298, i64 9
  %300 = load ptr, ptr %299, align 8
  %301 = tail call noundef ptr %300(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %302 = load ptr, ptr %301, align 8, !tbaa !219
  %303 = getelementptr inbounds ptr, ptr %302, i64 3
  %304 = load ptr, ptr %303, align 8
  %305 = tail call noundef i32 %304(ptr noundef nonnull align 8 dereferenceable(16) %301) #30
  %306 = icmp eq i32 %305, 3
  br i1 %306, label %307, label %317

307:                                              ; preds = %297
  %308 = load ptr, ptr %0, align 8, !tbaa !219
  %309 = getelementptr inbounds ptr, ptr %308, i64 9
  %310 = load ptr, ptr %309, align 8
  %311 = tail call noundef ptr %310(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %312 = load ptr, ptr %311, align 8, !tbaa !219
  %313 = getelementptr inbounds ptr, ptr %312, i64 5
  %314 = load ptr, ptr %313, align 8
  %315 = tail call noundef ptr %314(ptr noundef nonnull align 8 dereferenceable(16) %311) #30
  %316 = icmp eq ptr %315, null
  br i1 %316, label %321, label %317

317:                                              ; preds = %307, %297
  %318 = tail call i32 @putchar(i32 41)
  br label %321

319:                                              ; preds = %252
  %320 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25) #30
  br label %321

321:                                              ; preds = %319, %317, %307, %187, %185, %184
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef signext i16 @_ZNK8app_node8has_freeEPK8arg_nodePK9alst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !235
  %6 = icmp eq ptr %5, null
  br i1 %6, label %19, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 15
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef signext i16 %10(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %1, ptr noundef %2) #30
  %12 = icmp ne i16 %11, 0
  %13 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !237
  %15 = icmp eq ptr %14, null
  %16 = or i1 %12, %15
  %17 = xor i1 %15, true
  %18 = or i1 %12, %17
  br i1 %16, label %30, label %23

19:                                               ; preds = %3
  %20 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !237
  %22 = icmp eq ptr %21, null
  br i1 %22, label %30, label %23

23:                                               ; preds = %19, %7
  %24 = phi ptr [ %21, %19 ], [ %14, %7 ]
  %25 = load ptr, ptr %24, align 8, !tbaa !219
  %26 = getelementptr inbounds ptr, ptr %25, i64 15
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef signext i16 %27(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %1, ptr noundef %2) #30
  %29 = icmp ne i16 %28, 0
  br label %30

30:                                               ; preds = %23, %19, %7
  %31 = phi i1 [ %18, %7 ], [ %29, %23 ], [ false, %19 ]
  %32 = zext i1 %31 to i16
  ret i16 %32
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8app_node4bindEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8app_node11reduce_varsEPK9alst_nodeiPi(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
  %5 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !235
  %7 = icmp eq ptr %6, null
  br i1 %7, label %41, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 12
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef nonnull %0) #30
  %12 = load ptr, ptr %5, align 8, !tbaa !235
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 17
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %17 = load ptr, ptr %5, align 8, !tbaa !235
  %18 = icmp eq ptr %17, %16
  br i1 %18, label %31, label %19

19:                                               ; preds = %8
  %20 = icmp eq ptr %17, null
  br i1 %20, label %25, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %17, align 8, !tbaa !219
  %23 = getelementptr inbounds ptr, ptr %22, i64 2
  %24 = load ptr, ptr %23, align 8
  tail call void %24(ptr noundef nonnull align 8 dereferenceable(16) %17) #28
  br label %25

25:                                               ; preds = %21, %19
  store ptr %16, ptr %5, align 8, !tbaa !235
  %26 = icmp eq ptr %16, null
  br i1 %26, label %31, label %27

27:                                               ; preds = %25
  %28 = load ptr, ptr %16, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  tail call void %30(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %0) #30
  br label %31

31:                                               ; preds = %27, %25, %8
  %32 = icmp eq ptr %3, null
  br i1 %32, label %41, label %33

33:                                               ; preds = %31
  %34 = load i32, ptr %3, align 4, !tbaa !217
  %35 = and i32 %34, 1
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %33
  %38 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %39 = load ptr, ptr %38, align 8, !tbaa !237
  %40 = icmp eq ptr %39, null
  br i1 %40, label %69, label %64

41:                                               ; preds = %33, %31, %4
  %42 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !237
  %44 = icmp eq ptr %43, null
  br i1 %44, label %69, label %45

45:                                               ; preds = %41
  %46 = load ptr, ptr %43, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 12
  %48 = load ptr, ptr %47, align 8
  tail call void %48(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull %0) #30
  %49 = load ptr, ptr %42, align 8, !tbaa !237
  %50 = load ptr, ptr %49, align 8, !tbaa !219
  %51 = getelementptr inbounds ptr, ptr %50, i64 17
  %52 = load ptr, ptr %51, align 8
  %53 = tail call noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %49, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %54 = load ptr, ptr %42, align 8, !tbaa !237
  %55 = icmp eq ptr %54, %53
  br i1 %55, label %69, label %56

56:                                               ; preds = %45
  %57 = icmp eq ptr %54, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %54, align 8, !tbaa !219
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(16) %54) #28
  br label %62

62:                                               ; preds = %58, %56
  store ptr %53, ptr %42, align 8, !tbaa !237
  %63 = icmp eq ptr %53, null
  br i1 %63, label %69, label %64

64:                                               ; preds = %62, %37
  %65 = phi ptr [ %39, %37 ], [ %53, %62 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !219
  %67 = getelementptr inbounds ptr, ptr %66, i64 12
  %68 = load ptr, ptr %67, align 8
  tail call void %68(ptr noundef nonnull align 8 dereferenceable(16) %65, ptr noundef nonnull %0) #30
  br label %69

69:                                               ; preds = %64, %62, %45, %41, %37
  ret ptr %0
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8app_node6renameEP8arg_nodePKcP9alst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
  %5 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !235
  %7 = icmp eq ptr %6, null
  br i1 %7, label %12, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr %6, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 18
  %11 = load ptr, ptr %10, align 8
  tail call void %11(ptr noundef nonnull align 8 dereferenceable(16) %6, ptr noundef %1, ptr noundef %2, ptr noundef %3) #30
  br label %12

12:                                               ; preds = %8, %4
  %13 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %14 = load ptr, ptr %13, align 8, !tbaa !237
  %15 = icmp eq ptr %14, null
  br i1 %15, label %20, label %16

16:                                               ; preds = %12
  %17 = load ptr, ptr %14, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 18
  %19 = load ptr, ptr %18, align 8
  tail call void %19(ptr noundef nonnull align 8 dereferenceable(16) %14, ptr noundef %1, ptr noundef %2, ptr noundef %3) #30
  br label %20

20:                                               ; preds = %16, %12
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8app_node18resolve_name_clashEP8arg_nodeP9alst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !235
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr %5, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 19
  %10 = load ptr, ptr %9, align 8
  tail call void %10(ptr noundef nonnull align 8 dereferenceable(16) %5, ptr noundef %1, ptr noundef %2) #30
  br label %11

11:                                               ; preds = %7, %3
  %12 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %13 = load ptr, ptr %12, align 8, !tbaa !237
  %14 = icmp eq ptr %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %11
  %16 = load ptr, ptr %13, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 19
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(16) %13, ptr noundef %1, ptr noundef %2) #30
  br label %19

19:                                               ; preds = %15, %11
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZNK8app_nodeeqERK8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %7 = icmp eq i32 %6, 5
  br i1 %7, label %8, label %61

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %61, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %19 = icmp eq ptr %18, null
  br i1 %19, label %61, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 9
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %61, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 9
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %31 = icmp eq ptr %30, null
  br i1 %31, label %61, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !219
  %34 = getelementptr inbounds ptr, ptr %33, i64 8
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %37 = load ptr, ptr %1, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 8
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %41 = load ptr, ptr %36, align 8, !tbaa !219
  %42 = getelementptr inbounds ptr, ptr %41, i64 20
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef i32 %43(ptr noundef nonnull align 8 dereferenceable(16) %36, ptr noundef nonnull align 8 dereferenceable(16) %40) #30
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %61, label %46

46:                                               ; preds = %32
  %47 = load ptr, ptr %0, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 9
  %49 = load ptr, ptr %48, align 8
  %50 = tail call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %51 = load ptr, ptr %1, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 9
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %55 = load ptr, ptr %50, align 8, !tbaa !219
  %56 = getelementptr inbounds ptr, ptr %55, i64 20
  %57 = load ptr, ptr %56, align 8
  %58 = tail call noundef i32 %57(ptr noundef nonnull align 8 dereferenceable(16) %50, ptr noundef nonnull align 8 dereferenceable(16) %54) #30
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i32
  br label %61

61:                                               ; preds = %46, %32, %26, %20, %14, %8, %2
  %62 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 0, %8 ], [ 0, %26 ], [ 0, %20 ], [ 0, %32 ], [ %60, %46 ]
  ret i32 %62
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8app_node11export_leftEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !235
  store ptr null, ptr %2, align 8, !tbaa !235
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8app_node12export_rightEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !237
  store ptr null, ptr %2, align 8, !tbaa !237
  ret ptr %3
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8app_node12extract_defsEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %88

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 8
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %38, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 8
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %19 = load ptr, ptr %18, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %1) #30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %26 = load ptr, ptr %25, align 8, !tbaa !235
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %26, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %26, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(16) %26) #28
  br label %34

34:                                               ; preds = %30, %28
  store ptr %22, ptr %25, align 8, !tbaa !235
  %35 = load ptr, ptr %22, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %0) #30
  br label %38

38:                                               ; preds = %34, %24, %14, %8
  %39 = load ptr, ptr %0, align 8, !tbaa !219
  %40 = getelementptr inbounds ptr, ptr %39, i64 9
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %68, label %44

44:                                               ; preds = %38
  %45 = load ptr, ptr %0, align 8, !tbaa !219
  %46 = getelementptr inbounds ptr, ptr %45, i64 9
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %49 = load ptr, ptr %48, align 8, !tbaa !219
  %50 = getelementptr inbounds ptr, ptr %49, i64 25
  %51 = load ptr, ptr %50, align 8
  %52 = tail call noundef ptr %51(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef %1) #30
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %44
  %55 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %56 = load ptr, ptr %55, align 8, !tbaa !237
  %57 = icmp eq ptr %56, %52
  br i1 %57, label %68, label %58

58:                                               ; preds = %54
  %59 = icmp eq ptr %56, null
  br i1 %59, label %64, label %60

60:                                               ; preds = %58
  %61 = load ptr, ptr %56, align 8, !tbaa !219
  %62 = getelementptr inbounds ptr, ptr %61, i64 2
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(16) %56) #28
  br label %64

64:                                               ; preds = %60, %58
  store ptr %52, ptr %55, align 8, !tbaa !237
  %65 = load ptr, ptr %52, align 8, !tbaa !219
  %66 = getelementptr inbounds ptr, ptr %65, i64 12
  %67 = load ptr, ptr %66, align 8
  tail call void %67(ptr noundef nonnull align 8 dereferenceable(16) %52, ptr noundef nonnull %0) #30
  br label %68

68:                                               ; preds = %64, %54, %44, %38
  %69 = load ptr, ptr %0, align 8, !tbaa !219
  %70 = getelementptr inbounds ptr, ptr %69, i64 24
  %71 = load ptr, ptr %70, align 8
  %72 = tail call noundef ptr %71(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  %73 = icmp eq ptr %72, null
  br i1 %73, label %102, label %74

74:                                               ; preds = %68
  %75 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %76 = load ptr, ptr %72, align 8, !tbaa !219
  %77 = getelementptr inbounds ptr, ptr %76, i64 6
  %78 = load ptr, ptr %77, align 8
  %79 = invoke noundef ptr %78(ptr noundef nonnull align 8 dereferenceable(16) %72) #30
          to label %80 unwind label %86

80:                                               ; preds = %74
  %81 = load ptr, ptr %79, align 8, !tbaa !219
  %82 = getelementptr inbounds ptr, ptr %81, i64 4
  %83 = load ptr, ptr %82, align 8
  %84 = invoke noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(32) %79) #30
          to label %85 unwind label %86

85:                                               ; preds = %80
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %75, ptr noundef %84) #30
          to label %102 unwind label %86

86:                                               ; preds = %85, %80, %74
  %87 = landingpad { ptr, i32 }
          cleanup
  br label %104

88:                                               ; preds = %2
  %89 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %90 = load ptr, ptr %6, align 8, !tbaa !219
  %91 = getelementptr inbounds ptr, ptr %90, i64 6
  %92 = load ptr, ptr %91, align 8
  %93 = invoke noundef ptr %92(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
          to label %94 unwind label %100

94:                                               ; preds = %88
  %95 = load ptr, ptr %93, align 8, !tbaa !219
  %96 = getelementptr inbounds ptr, ptr %95, i64 4
  %97 = load ptr, ptr %96, align 8
  %98 = invoke noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(32) %93) #30
          to label %99 unwind label %100

99:                                               ; preds = %94
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %89, ptr noundef %98) #30
          to label %102 unwind label %100

100:                                              ; preds = %99, %94, %88
  %101 = landingpad { ptr, i32 }
          cleanup
  br label %104

102:                                              ; preds = %99, %85, %68
  %103 = phi ptr [ %0, %68 ], [ %75, %85 ], [ %89, %99 ]
  ret ptr %103

104:                                              ; preds = %100, %86
  %105 = phi ptr [ %89, %100 ], [ %75, %86 ]
  %106 = phi { ptr, i32 } [ %101, %100 ], [ %87, %86 ]
  tail call void @_ZdlPv(ptr noundef nonnull %105) #32
  resume { ptr, i32 } %106
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZNK8app_node7extractEPKci(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %class.app_node, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds ptr, ptr %5, i64 8
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %272, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %0, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 9
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %15 = icmp ne ptr %14, null
  %16 = icmp ne ptr %1, null
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %272

18:                                               ; preds = %10
  %19 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %20 = getelementptr inbounds %class.node, ptr %19, i64 0, i32 1
  store ptr null, ptr %20, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %19, align 8, !tbaa !219
  %21 = invoke noundef ptr @_Z9newstringPKc(ptr noundef nonnull %1) #30
          to label %22 unwind label %54

22:                                               ; preds = %18
  %23 = getelementptr inbounds %class.arg_node, ptr %19, i64 0, i32 1
  store ptr %21, ptr %23, align 8, !tbaa !227
  %24 = getelementptr inbounds %class.arg_node, ptr %19, i64 0, i32 2
  store ptr null, ptr %24, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %25 = getelementptr inbounds %class.node, ptr %4, i64 0, i32 1
  store ptr null, ptr %25, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !219
  %26 = getelementptr inbounds %class.app_node, ptr %4, i64 0, i32 1
  store ptr %19, ptr %26, align 8, !tbaa !241
  %27 = getelementptr inbounds %class.app_node, ptr %4, i64 0, i32 2
  store ptr null, ptr %27, align 8, !tbaa !244
  %28 = load ptr, ptr %0, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 15
  %30 = load ptr, ptr %29, align 8
  %31 = invoke noundef signext i16 %30(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %19, ptr noundef nonnull %4) #30
          to label %32 unwind label %56

32:                                               ; preds = %22
  %33 = icmp eq i16 %31, 0
  br i1 %33, label %34, label %176

34:                                               ; preds = %32
  %35 = and i32 %2, 128
  %36 = icmp eq i32 %35, 0
  %37 = load ptr, ptr %0, align 8, !tbaa !219
  br i1 %36, label %138, label %38

38:                                               ; preds = %34
  %39 = getelementptr inbounds ptr, ptr %37, i64 8
  %40 = load ptr, ptr %39, align 8
  %41 = invoke noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %42 unwind label %56

42:                                               ; preds = %38
  %43 = icmp eq ptr %41, null
  br i1 %43, label %58, label %44

44:                                               ; preds = %42
  %45 = load ptr, ptr %0, align 8, !tbaa !219
  %46 = getelementptr inbounds ptr, ptr %45, i64 8
  %47 = load ptr, ptr %46, align 8
  %48 = invoke noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %49 unwind label %56

49:                                               ; preds = %44
  %50 = load ptr, ptr %48, align 8, !tbaa !219
  %51 = getelementptr inbounds ptr, ptr %50, i64 26
  %52 = load ptr, ptr %51, align 8
  %53 = invoke noundef ptr %52(ptr noundef nonnull align 8 dereferenceable(16) %48, ptr noundef nonnull %1, i32 noundef %2) #30
          to label %58 unwind label %56

54:                                               ; preds = %18
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %19) #32
  br label %398

56:                                               ; preds = %233, %228, %220, %215, %205, %200, %193, %188, %181, %176, %142, %138, %105, %76, %71, %66, %58, %49, %44, %38, %22
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %254

58:                                               ; preds = %49, %42
  %59 = phi ptr [ null, %42 ], [ %53, %49 ]
  %60 = load ptr, ptr %0, align 8, !tbaa !219
  %61 = getelementptr inbounds ptr, ptr %60, i64 9
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %64 unwind label %56

64:                                               ; preds = %58
  %65 = icmp eq ptr %63, null
  br i1 %65, label %76, label %66

66:                                               ; preds = %64
  %67 = load ptr, ptr %0, align 8, !tbaa !219
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  %70 = invoke noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %71 unwind label %56

71:                                               ; preds = %66
  %72 = load ptr, ptr %70, align 8, !tbaa !219
  %73 = getelementptr inbounds ptr, ptr %72, i64 26
  %74 = load ptr, ptr %73, align 8
  %75 = invoke noundef ptr %74(ptr noundef nonnull align 8 dereferenceable(16) %70, ptr noundef nonnull %1, i32 noundef %2) #30
          to label %76 unwind label %56

76:                                               ; preds = %71, %64
  %77 = phi ptr [ null, %64 ], [ %75, %71 ]
  %78 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %79 unwind label %56

79:                                               ; preds = %76
  %80 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %81 unwind label %130

81:                                               ; preds = %79
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %80, ptr noundef nonnull @.str.28) #30
          to label %82 unwind label %132

82:                                               ; preds = %81
  %83 = getelementptr inbounds %class.node, ptr %78, i64 0, i32 1
  store ptr null, ptr %83, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %78, align 8, !tbaa !219
  %84 = getelementptr inbounds %class.app_node, ptr %78, i64 0, i32 1
  %85 = getelementptr inbounds %class.app_node, ptr %78, i64 0, i32 2
  store i64 0, ptr %85, align 8
  store ptr %80, ptr %84, align 8, !tbaa !235
  %86 = load ptr, ptr %80, align 8, !tbaa !219
  %87 = getelementptr inbounds ptr, ptr %86, i64 12
  %88 = load ptr, ptr %87, align 8
  invoke void %88(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull %78) #30
          to label %89 unwind label %130

89:                                               ; preds = %82
  %90 = getelementptr inbounds %class.app_node, ptr %78, i64 0, i32 2
  %91 = load ptr, ptr %90, align 8, !tbaa !237
  %92 = icmp eq ptr %91, %59
  br i1 %92, label %105, label %93

93:                                               ; preds = %89
  %94 = icmp eq ptr %91, null
  br i1 %94, label %99, label %95

95:                                               ; preds = %93
  %96 = load ptr, ptr %91, align 8, !tbaa !219
  %97 = getelementptr inbounds ptr, ptr %96, i64 2
  %98 = load ptr, ptr %97, align 8
  call void %98(ptr noundef nonnull align 8 dereferenceable(16) %91) #28
  br label %99

99:                                               ; preds = %95, %93
  store ptr %59, ptr %90, align 8, !tbaa !237
  %100 = icmp eq ptr %59, null
  br i1 %100, label %105, label %101

101:                                              ; preds = %99
  %102 = load ptr, ptr %59, align 8, !tbaa !219
  %103 = getelementptr inbounds ptr, ptr %102, i64 12
  %104 = load ptr, ptr %103, align 8
  invoke void %104(ptr noundef nonnull align 8 dereferenceable(16) %59, ptr noundef nonnull %78) #30
          to label %105 unwind label %130

105:                                              ; preds = %101, %99, %89
  %106 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %107 unwind label %56

107:                                              ; preds = %105
  %108 = getelementptr inbounds %class.node, ptr %106, i64 0, i32 1
  store ptr null, ptr %108, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %106, align 8, !tbaa !219
  %109 = getelementptr inbounds %class.app_node, ptr %106, i64 0, i32 1
  %110 = getelementptr inbounds %class.app_node, ptr %106, i64 0, i32 2
  store i64 0, ptr %110, align 8
  store ptr %78, ptr %109, align 8, !tbaa !235
  %111 = load ptr, ptr %78, align 8, !tbaa !219
  %112 = getelementptr inbounds ptr, ptr %111, i64 12
  %113 = load ptr, ptr %112, align 8
  invoke void %113(ptr noundef nonnull align 8 dereferenceable(16) %78, ptr noundef nonnull %106) #30
          to label %114 unwind label %136

114:                                              ; preds = %107
  %115 = getelementptr inbounds %class.app_node, ptr %106, i64 0, i32 2
  %116 = load ptr, ptr %115, align 8, !tbaa !237
  %117 = icmp eq ptr %116, %77
  br i1 %117, label %237, label %118

118:                                              ; preds = %114
  %119 = icmp eq ptr %116, null
  br i1 %119, label %124, label %120

120:                                              ; preds = %118
  %121 = load ptr, ptr %116, align 8, !tbaa !219
  %122 = getelementptr inbounds ptr, ptr %121, i64 2
  %123 = load ptr, ptr %122, align 8
  call void %123(ptr noundef nonnull align 8 dereferenceable(16) %116) #28
  br label %124

124:                                              ; preds = %120, %118
  store ptr %77, ptr %115, align 8, !tbaa !237
  %125 = icmp eq ptr %77, null
  br i1 %125, label %237, label %126

126:                                              ; preds = %124
  %127 = load ptr, ptr %77, align 8, !tbaa !219
  %128 = getelementptr inbounds ptr, ptr %127, i64 12
  %129 = load ptr, ptr %128, align 8
  invoke void %129(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull %106) #30
          to label %237 unwind label %136

130:                                              ; preds = %101, %82, %79
  %131 = landingpad { ptr, i32 }
          cleanup
  br label %134

132:                                              ; preds = %81
  %133 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %80) #32
  br label %134

134:                                              ; preds = %132, %130
  %135 = phi { ptr, i32 } [ %131, %130 ], [ %133, %132 ]
  call void @_ZdlPv(ptr noundef nonnull %78) #32
  br label %254

136:                                              ; preds = %126, %107
  %137 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %106) #32
  br label %254

138:                                              ; preds = %34
  %139 = getelementptr inbounds ptr, ptr %37, i64 26
  %140 = load ptr, ptr %139, align 8
  %141 = invoke noundef ptr %140(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef null, i32 noundef %2) #30
          to label %142 unwind label %56

142:                                              ; preds = %138
  %143 = invoke noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
          to label %144 unwind label %56

144:                                              ; preds = %142
  %145 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %146 unwind label %170

146:                                              ; preds = %144
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %145, ptr noundef nonnull @.str.10) #30
          to label %147 unwind label %172

147:                                              ; preds = %146
  %148 = getelementptr inbounds %class.node, ptr %143, i64 0, i32 1
  store ptr null, ptr %148, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %143, align 8, !tbaa !219
  %149 = getelementptr inbounds %class.app_node, ptr %143, i64 0, i32 1
  %150 = getelementptr inbounds %class.app_node, ptr %143, i64 0, i32 2
  store i64 0, ptr %150, align 8
  store ptr %145, ptr %149, align 8, !tbaa !235
  %151 = load ptr, ptr %145, align 8, !tbaa !219
  %152 = getelementptr inbounds ptr, ptr %151, i64 12
  %153 = load ptr, ptr %152, align 8
  invoke void %153(ptr noundef nonnull align 8 dereferenceable(16) %145, ptr noundef nonnull %143) #30
          to label %154 unwind label %170

154:                                              ; preds = %147
  %155 = getelementptr inbounds %class.app_node, ptr %143, i64 0, i32 2
  %156 = load ptr, ptr %155, align 8, !tbaa !237
  %157 = icmp eq ptr %156, %141
  br i1 %157, label %237, label %158

158:                                              ; preds = %154
  %159 = icmp eq ptr %156, null
  br i1 %159, label %164, label %160

160:                                              ; preds = %158
  %161 = load ptr, ptr %156, align 8, !tbaa !219
  %162 = getelementptr inbounds ptr, ptr %161, i64 2
  %163 = load ptr, ptr %162, align 8
  call void %163(ptr noundef nonnull align 8 dereferenceable(16) %156) #28
  br label %164

164:                                              ; preds = %160, %158
  store ptr %141, ptr %155, align 8, !tbaa !237
  %165 = icmp eq ptr %141, null
  br i1 %165, label %237, label %166

166:                                              ; preds = %164
  %167 = load ptr, ptr %141, align 8, !tbaa !219
  %168 = getelementptr inbounds ptr, ptr %167, i64 12
  %169 = load ptr, ptr %168, align 8
  invoke void %169(ptr noundef nonnull align 8 dereferenceable(16) %141, ptr noundef nonnull %143) #30
          to label %237 unwind label %170

170:                                              ; preds = %166, %147, %144
  %171 = landingpad { ptr, i32 }
          cleanup
  br label %174

172:                                              ; preds = %146
  %173 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %145) #32
  br label %174

174:                                              ; preds = %172, %170
  %175 = phi { ptr, i32 } [ %171, %170 ], [ %173, %172 ]
  call void @_ZdlPv(ptr noundef nonnull %143) #32
  br label %254

176:                                              ; preds = %32
  %177 = load ptr, ptr %0, align 8, !tbaa !219
  %178 = getelementptr inbounds ptr, ptr %177, i64 8
  %179 = load ptr, ptr %178, align 8
  %180 = invoke noundef ptr %179(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %181 unwind label %56

181:                                              ; preds = %176
  %182 = load ptr, ptr %180, align 8, !tbaa !219
  %183 = getelementptr inbounds ptr, ptr %182, i64 15
  %184 = load ptr, ptr %183, align 8
  %185 = invoke noundef signext i16 %184(ptr noundef nonnull align 8 dereferenceable(16) %180, ptr noundef nonnull %19, ptr noundef nonnull %4) #30
          to label %186 unwind label %56

186:                                              ; preds = %181
  %187 = icmp eq i16 %185, 0
  br i1 %187, label %188, label %237

188:                                              ; preds = %186
  %189 = load ptr, ptr %0, align 8, !tbaa !219
  %190 = getelementptr inbounds ptr, ptr %189, i64 9
  %191 = load ptr, ptr %190, align 8
  %192 = invoke noundef ptr %191(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %193 unwind label %56

193:                                              ; preds = %188
  %194 = load ptr, ptr %192, align 8, !tbaa !219
  %195 = getelementptr inbounds ptr, ptr %194, i64 3
  %196 = load ptr, ptr %195, align 8
  %197 = invoke noundef i32 %196(ptr noundef nonnull align 8 dereferenceable(16) %192) #30
          to label %198 unwind label %56

198:                                              ; preds = %193
  %199 = icmp eq i32 %197, 3
  br i1 %199, label %200, label %237

200:                                              ; preds = %198
  %201 = load ptr, ptr %0, align 8, !tbaa !219
  %202 = getelementptr inbounds ptr, ptr %201, i64 9
  %203 = load ptr, ptr %202, align 8
  %204 = invoke noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %205 unwind label %56

205:                                              ; preds = %200
  %206 = load ptr, ptr %204, align 8, !tbaa !219
  %207 = getelementptr inbounds ptr, ptr %206, i64 4
  %208 = load ptr, ptr %207, align 8
  %209 = invoke noundef ptr %208(ptr noundef nonnull align 8 dereferenceable(16) %204) #30
          to label %210 unwind label %56

210:                                              ; preds = %205
  %211 = icmp eq ptr %209, null
  %212 = and i32 %2, 64
  %213 = icmp eq i32 %212, 0
  %214 = or i1 %213, %211
  br i1 %214, label %237, label %215

215:                                              ; preds = %210
  %216 = load ptr, ptr %0, align 8, !tbaa !219
  %217 = getelementptr inbounds ptr, ptr %216, i64 9
  %218 = load ptr, ptr %217, align 8
  %219 = invoke noundef ptr %218(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %220 unwind label %56

220:                                              ; preds = %215
  %221 = load ptr, ptr %219, align 8, !tbaa !219
  %222 = getelementptr inbounds ptr, ptr %221, i64 4
  %223 = load ptr, ptr %222, align 8
  %224 = invoke noundef ptr %223(ptr noundef nonnull align 8 dereferenceable(16) %219) #30
          to label %225 unwind label %56

225:                                              ; preds = %220
  %226 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %224) #29
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %228, label %237

228:                                              ; preds = %225
  %229 = load ptr, ptr %0, align 8, !tbaa !219
  %230 = getelementptr inbounds ptr, ptr %229, i64 8
  %231 = load ptr, ptr %230, align 8
  %232 = invoke noundef ptr %231(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %233 unwind label %56

233:                                              ; preds = %228
  %234 = load ptr, ptr %232, align 8, !tbaa !219
  %235 = load ptr, ptr %234, align 8
  %236 = invoke noundef ptr %235(ptr noundef nonnull align 8 dereferenceable(16) %232) #30
          to label %237 unwind label %56

237:                                              ; preds = %233, %225, %210, %198, %186, %166, %164, %154, %126, %124, %114
  %238 = phi ptr [ null, %186 ], [ null, %225 ], [ null, %210 ], [ null, %198 ], [ null, %233 ], [ %59, %124 ], [ %59, %114 ], [ %59, %126 ], [ null, %164 ], [ null, %154 ], [ null, %166 ]
  %239 = phi ptr [ null, %186 ], [ null, %225 ], [ null, %210 ], [ null, %198 ], [ null, %233 ], [ null, %124 ], [ %77, %114 ], [ %77, %126 ], [ null, %164 ], [ null, %154 ], [ null, %166 ]
  %240 = phi ptr [ null, %186 ], [ null, %225 ], [ null, %210 ], [ null, %198 ], [ %236, %233 ], [ %106, %124 ], [ %106, %114 ], [ %106, %126 ], [ %143, %164 ], [ %143, %154 ], [ %143, %166 ]
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !219
  %241 = load ptr, ptr %26, align 8, !tbaa !241
  %242 = icmp eq ptr %241, null
  br i1 %242, label %247, label %243

243:                                              ; preds = %237
  %244 = load ptr, ptr %241, align 8, !tbaa !219
  %245 = getelementptr inbounds ptr, ptr %244, i64 2
  %246 = load ptr, ptr %245, align 8
  call void %246(ptr noundef nonnull align 8 dereferenceable(32) %241) #28
  br label %247

247:                                              ; preds = %243, %237
  %248 = load ptr, ptr %27, align 8, !tbaa !244
  %249 = icmp eq ptr %248, null
  br i1 %249, label %270, label %250

250:                                              ; preds = %247
  %251 = load ptr, ptr %248, align 8, !tbaa !219
  %252 = getelementptr inbounds ptr, ptr %251, i64 2
  %253 = load ptr, ptr %252, align 8
  call void %253(ptr noundef nonnull align 8 dereferenceable(32) %248) #28
  br label %270

254:                                              ; preds = %174, %136, %134, %56
  %255 = phi { ptr, i32 } [ %57, %56 ], [ %137, %136 ], [ %135, %134 ], [ %175, %174 ]
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !219
  %256 = load ptr, ptr %26, align 8, !tbaa !241
  %257 = icmp eq ptr %256, null
  br i1 %257, label %262, label %258

258:                                              ; preds = %254
  %259 = load ptr, ptr %256, align 8, !tbaa !219
  %260 = getelementptr inbounds ptr, ptr %259, i64 2
  %261 = load ptr, ptr %260, align 8
  call void %261(ptr noundef nonnull align 8 dereferenceable(32) %256) #28
  br label %262

262:                                              ; preds = %258, %254
  %263 = load ptr, ptr %27, align 8, !tbaa !244
  %264 = icmp eq ptr %263, null
  br i1 %264, label %269, label %265

265:                                              ; preds = %262
  %266 = load ptr, ptr %263, align 8, !tbaa !219
  %267 = getelementptr inbounds ptr, ptr %266, i64 2
  %268 = load ptr, ptr %267, align 8
  call void %268(ptr noundef nonnull align 8 dereferenceable(32) %263) #28
  br label %269

269:                                              ; preds = %265, %262
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  br label %398

270:                                              ; preds = %250, %247
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  %271 = icmp eq ptr %240, null
  br i1 %271, label %272, label %396

272:                                              ; preds = %270, %10, %3
  %273 = phi ptr [ %239, %270 ], [ null, %10 ], [ null, %3 ]
  %274 = phi ptr [ %238, %270 ], [ null, %10 ], [ null, %3 ]
  %275 = load ptr, ptr %0, align 8, !tbaa !219
  %276 = getelementptr inbounds ptr, ptr %275, i64 8
  %277 = load ptr, ptr %276, align 8
  %278 = call noundef ptr %277(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %279 = icmp eq ptr %278, null
  br i1 %279, label %289, label %280

280:                                              ; preds = %272
  %281 = load ptr, ptr %0, align 8, !tbaa !219
  %282 = getelementptr inbounds ptr, ptr %281, i64 8
  %283 = load ptr, ptr %282, align 8
  %284 = call noundef ptr %283(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %285 = load ptr, ptr %284, align 8, !tbaa !219
  %286 = getelementptr inbounds ptr, ptr %285, i64 26
  %287 = load ptr, ptr %286, align 8
  %288 = call noundef ptr %287(ptr noundef nonnull align 8 dereferenceable(16) %284, ptr noundef %1, i32 noundef %2) #30
  br label %289

289:                                              ; preds = %280, %272
  %290 = phi ptr [ %288, %280 ], [ %274, %272 ]
  %291 = load ptr, ptr %0, align 8, !tbaa !219
  %292 = getelementptr inbounds ptr, ptr %291, i64 9
  %293 = load ptr, ptr %292, align 8
  %294 = call noundef ptr %293(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %295 = icmp eq ptr %294, null
  br i1 %295, label %305, label %296

296:                                              ; preds = %289
  %297 = load ptr, ptr %0, align 8, !tbaa !219
  %298 = getelementptr inbounds ptr, ptr %297, i64 9
  %299 = load ptr, ptr %298, align 8
  %300 = call noundef ptr %299(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %301 = load ptr, ptr %300, align 8, !tbaa !219
  %302 = getelementptr inbounds ptr, ptr %301, i64 26
  %303 = load ptr, ptr %302, align 8
  %304 = call noundef ptr %303(ptr noundef nonnull align 8 dereferenceable(16) %300, ptr noundef %1, i32 noundef %2) #30
  br label %305

305:                                              ; preds = %296, %289
  %306 = phi ptr [ %304, %296 ], [ %273, %289 ]
  %307 = icmp eq ptr %1, null
  %308 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  br i1 %307, label %367, label %309

309:                                              ; preds = %305
  %310 = invoke noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
          to label %311 unwind label %359

311:                                              ; preds = %309
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %310, ptr noundef nonnull @.str.28) #30
          to label %312 unwind label %361

312:                                              ; preds = %311
  %313 = getelementptr inbounds %class.node, ptr %308, i64 0, i32 1
  store ptr null, ptr %313, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %308, align 8, !tbaa !219
  %314 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 1
  %315 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 2
  store i64 0, ptr %315, align 8
  store ptr %310, ptr %314, align 8, !tbaa !235
  %316 = load ptr, ptr %310, align 8, !tbaa !219
  %317 = getelementptr inbounds ptr, ptr %316, i64 12
  %318 = load ptr, ptr %317, align 8
  invoke void %318(ptr noundef nonnull align 8 dereferenceable(16) %310, ptr noundef nonnull %308) #30
          to label %319 unwind label %359

319:                                              ; preds = %312
  %320 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 2
  %321 = load ptr, ptr %320, align 8, !tbaa !237
  %322 = icmp eq ptr %321, %290
  br i1 %322, label %335, label %323

323:                                              ; preds = %319
  %324 = icmp eq ptr %321, null
  br i1 %324, label %329, label %325

325:                                              ; preds = %323
  %326 = load ptr, ptr %321, align 8, !tbaa !219
  %327 = getelementptr inbounds ptr, ptr %326, i64 2
  %328 = load ptr, ptr %327, align 8
  call void %328(ptr noundef nonnull align 8 dereferenceable(16) %321) #28
  br label %329

329:                                              ; preds = %325, %323
  store ptr %290, ptr %320, align 8, !tbaa !237
  %330 = icmp eq ptr %290, null
  br i1 %330, label %335, label %331

331:                                              ; preds = %329
  %332 = load ptr, ptr %290, align 8, !tbaa !219
  %333 = getelementptr inbounds ptr, ptr %332, i64 12
  %334 = load ptr, ptr %333, align 8
  invoke void %334(ptr noundef nonnull align 8 dereferenceable(16) %290, ptr noundef nonnull %308) #30
          to label %335 unwind label %359

335:                                              ; preds = %331, %329, %319
  %336 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %337 = getelementptr inbounds %class.node, ptr %336, i64 0, i32 1
  store ptr null, ptr %337, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %336, align 8, !tbaa !219
  %338 = getelementptr inbounds %class.app_node, ptr %336, i64 0, i32 1
  %339 = getelementptr inbounds %class.app_node, ptr %336, i64 0, i32 2
  store i64 0, ptr %339, align 8
  store ptr %308, ptr %338, align 8, !tbaa !235
  %340 = load ptr, ptr %308, align 8, !tbaa !219
  %341 = getelementptr inbounds ptr, ptr %340, i64 12
  %342 = load ptr, ptr %341, align 8
  invoke void %342(ptr noundef nonnull align 8 dereferenceable(16) %308, ptr noundef nonnull %336) #30
          to label %343 unwind label %365

343:                                              ; preds = %335
  %344 = getelementptr inbounds %class.app_node, ptr %336, i64 0, i32 2
  %345 = load ptr, ptr %344, align 8, !tbaa !237
  %346 = icmp eq ptr %345, %306
  br i1 %346, label %396, label %347

347:                                              ; preds = %343
  %348 = icmp eq ptr %345, null
  br i1 %348, label %353, label %349

349:                                              ; preds = %347
  %350 = load ptr, ptr %345, align 8, !tbaa !219
  %351 = getelementptr inbounds ptr, ptr %350, i64 2
  %352 = load ptr, ptr %351, align 8
  call void %352(ptr noundef nonnull align 8 dereferenceable(16) %345) #28
  br label %353

353:                                              ; preds = %349, %347
  store ptr %306, ptr %344, align 8, !tbaa !237
  %354 = icmp eq ptr %306, null
  br i1 %354, label %396, label %355

355:                                              ; preds = %353
  %356 = load ptr, ptr %306, align 8, !tbaa !219
  %357 = getelementptr inbounds ptr, ptr %356, i64 12
  %358 = load ptr, ptr %357, align 8
  invoke void %358(ptr noundef nonnull align 8 dereferenceable(16) %306, ptr noundef nonnull %336) #30
          to label %396 unwind label %365

359:                                              ; preds = %331, %312, %309
  %360 = landingpad { ptr, i32 }
          cleanup
  br label %363

361:                                              ; preds = %311
  %362 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %310) #32
  br label %363

363:                                              ; preds = %361, %359
  %364 = phi { ptr, i32 } [ %360, %359 ], [ %362, %361 ]
  call void @_ZdlPv(ptr noundef nonnull %308) #32
  br label %398

365:                                              ; preds = %355, %335
  %366 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %336) #32
  br label %398

367:                                              ; preds = %305
  %368 = getelementptr inbounds %class.node, ptr %308, i64 0, i32 1
  store ptr null, ptr %368, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %308, align 8, !tbaa !219
  %369 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 1
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %369, i8 0, i64 16, i1 false)
  %370 = icmp eq ptr %290, null
  br i1 %370, label %379, label %371

371:                                              ; preds = %367
  store ptr %290, ptr %369, align 8, !tbaa !235
  %372 = load ptr, ptr %290, align 8, !tbaa !219
  %373 = getelementptr inbounds ptr, ptr %372, i64 12
  %374 = load ptr, ptr %373, align 8
  invoke void %374(ptr noundef nonnull align 8 dereferenceable(16) %290, ptr noundef nonnull %308) #30
          to label %375 unwind label %394

375:                                              ; preds = %371
  %376 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 2
  %377 = load ptr, ptr %376, align 8, !tbaa !237
  %378 = icmp eq ptr %377, %306
  br i1 %378, label %396, label %381

379:                                              ; preds = %367
  %380 = icmp eq ptr %306, null
  br i1 %380, label %396, label %387

381:                                              ; preds = %375
  %382 = icmp eq ptr %377, null
  br i1 %382, label %387, label %383

383:                                              ; preds = %381
  %384 = load ptr, ptr %377, align 8, !tbaa !219
  %385 = getelementptr inbounds ptr, ptr %384, i64 2
  %386 = load ptr, ptr %385, align 8
  call void %386(ptr noundef nonnull align 8 dereferenceable(16) %377) #28
  br label %387

387:                                              ; preds = %383, %381, %379
  %388 = getelementptr inbounds %class.app_node, ptr %308, i64 0, i32 2
  store ptr %306, ptr %388, align 8, !tbaa !237
  %389 = icmp eq ptr %306, null
  br i1 %389, label %396, label %390

390:                                              ; preds = %387
  %391 = load ptr, ptr %306, align 8, !tbaa !219
  %392 = getelementptr inbounds ptr, ptr %391, i64 12
  %393 = load ptr, ptr %392, align 8
  invoke void %393(ptr noundef nonnull align 8 dereferenceable(16) %306, ptr noundef nonnull %308) #30
          to label %396 unwind label %394

394:                                              ; preds = %390, %371
  %395 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %308) #32
  br label %398

396:                                              ; preds = %390, %387, %379, %375, %355, %353, %343, %270
  %397 = phi ptr [ %240, %270 ], [ %336, %353 ], [ %336, %343 ], [ %336, %355 ], [ %308, %387 ], [ %308, %375 ], [ %308, %390 ], [ %308, %379 ]
  ret ptr %397

398:                                              ; preds = %394, %365, %363, %269, %54
  %399 = phi { ptr, i32 } [ %366, %365 ], [ %364, %363 ], [ %395, %394 ], [ %255, %269 ], [ %55, %54 ]
  resume { ptr, i32 } %399
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #15

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK11arglst_node5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN11arglst_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11arglst_nodeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11arglst_nodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !244
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK11arglst_node2opEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  ret i32 6
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK11arglst_node3argEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !241
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK11arglst_node4nextEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !244
  ret ptr %3
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN11arglst_node3addEP8arg_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %4 = icmp eq ptr %1, null
  br i1 %4, label %56, label %5

5:                                                ; preds = %36, %3
  %6 = phi ptr [ %40, %36 ], [ %0, %3 ]
  %7 = load ptr, ptr %6, align 8, !tbaa !219
  %8 = getelementptr inbounds ptr, ptr %7, i64 6
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %6) #30
  %11 = icmp eq ptr %10, null
  br i1 %11, label %36, label %12

12:                                               ; preds = %5
  %13 = load ptr, ptr %6, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 6
  %15 = load ptr, ptr %14, align 8
  %16 = tail call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(32) %6) #30
  %17 = load ptr, ptr %16, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 4
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %16) #30
  %21 = icmp eq ptr %20, null
  br i1 %21, label %36, label %22

22:                                               ; preds = %12
  %23 = load ptr, ptr %1, align 8, !tbaa !219
  %24 = getelementptr inbounds ptr, ptr %23, i64 4
  %25 = load ptr, ptr %24, align 8
  %26 = tail call noundef ptr %25(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  %27 = getelementptr inbounds %class.app_node, ptr %6, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !241
  %29 = load ptr, ptr %28, align 8, !tbaa !219
  %30 = getelementptr inbounds ptr, ptr %29, i64 4
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef ptr %31(ptr noundef nonnull align 8 dereferenceable(32) %28) #30
  %33 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %26, ptr noundef nonnull dereferenceable(1) %32) #29
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %22
  %.lcssa = phi ptr [ %6, %22 ]
  tail call void @_ZN11arglst_node7set_argEP8arg_nodes(ptr noundef nonnull align 8 dereferenceable(32) %.lcssa, ptr noundef nonnull %1, i16 noundef signext %2) #30
  br label %56

36:                                               ; preds = %22, %12, %5
  %37 = load ptr, ptr %6, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 10
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(32) %6) #30
  %41 = icmp eq ptr %40, null
  br i1 %41, label %42, label %5, !llvm.loop !245

42:                                               ; preds = %36
  %43 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %44 = getelementptr inbounds %class.node, ptr %43, i64 0, i32 1
  store ptr null, ptr %44, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %43, align 8, !tbaa !219
  %45 = icmp eq i16 %2, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %42
  %47 = load ptr, ptr %1, align 8, !tbaa !219
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
          to label %50 unwind label %54

50:                                               ; preds = %46, %42
  %51 = phi ptr [ %1, %42 ], [ %49, %46 ]
  %52 = getelementptr inbounds %class.app_node, ptr %43, i64 0, i32 1
  store ptr %51, ptr %52, align 8
  %53 = getelementptr inbounds %class.app_node, ptr %43, i64 0, i32 2
  store ptr %0, ptr %53, align 8, !tbaa !244
  br label %56

54:                                               ; preds = %46
  %55 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %43) #32
  resume { ptr, i32 } %55

56:                                               ; preds = %50, %35, %3
  %57 = phi ptr [ null, %3 ], [ %0, %35 ], [ %43, %50 ]
  ret ptr %57
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN11arglst_node4findEP8arg_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 {
  %3 = icmp eq ptr %1, null
  br i1 %3, label %43, label %4

4:                                                ; preds = %34, %2
  %5 = phi ptr [ %38, %34 ], [ %0, %2 ]
  %6 = load ptr, ptr %5, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 6
  %8 = load ptr, ptr %7, align 8
  %9 = tail call noundef ptr %8(ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  %10 = icmp eq ptr %9, null
  br i1 %10, label %34, label %11

11:                                               ; preds = %4
  %12 = load ptr, ptr %5, align 8, !tbaa !219
  %13 = getelementptr inbounds ptr, ptr %12, i64 6
  %14 = load ptr, ptr %13, align 8
  %15 = tail call noundef ptr %14(ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  %16 = load ptr, ptr %15, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 4
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(32) %15) #30
  %20 = icmp eq ptr %19, null
  br i1 %20, label %34, label %21

21:                                               ; preds = %11
  %22 = load ptr, ptr %1, align 8, !tbaa !219
  %23 = getelementptr inbounds ptr, ptr %22, i64 4
  %24 = load ptr, ptr %23, align 8
  %25 = tail call noundef ptr %24(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  %26 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %27 = load ptr, ptr %26, align 8, !tbaa !241
  %28 = load ptr, ptr %27, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 4
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(32) %27) #30
  %32 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(1) %31) #29
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %21, %11, %4
  %35 = load ptr, ptr %5, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 10
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %43, label %4, !llvm.loop !246

40:                                               ; preds = %21
  %.lcssa = phi ptr [ %5, %21 ]
  %41 = getelementptr inbounds %class.app_node, ptr %.lcssa, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !241
  br label %43

43:                                               ; preds = %40, %34, %2
  %44 = phi ptr [ null, %2 ], [ %42, %40 ], [ null, %34 ]
  ret ptr %44
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN11arglst_node4listEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 align 2 {
  br label %3

2:                                                ; preds = %18
  ret void

3:                                                ; preds = %18, %1
  %4 = phi ptr [ %0, %1 ], [ %23, %18 ]
  %5 = load ptr, ptr %4, align 8, !tbaa !219
  %6 = getelementptr inbounds ptr, ptr %5, i64 6
  %7 = load ptr, ptr %6, align 8
  %8 = tail call noundef ptr %7(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %9 = icmp eq ptr %8, null
  br i1 %9, label %18, label %10

10:                                               ; preds = %3
  %11 = load ptr, ptr %4, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 6
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %15 = load ptr, ptr %14, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 14
  %17 = load ptr, ptr %16, align 8
  tail call void %17(ptr noundef nonnull align 8 dereferenceable(32) %14, ptr noundef null, i32 noundef 0) #30
  br label %18

18:                                               ; preds = %10, %3
  %19 = tail call i32 @putchar(i32 10)
  %20 = load ptr, ptr %4, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 10
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(16) %4) #30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %2, label %3, !llvm.loop !247
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN11arglst_node7set_argEP8arg_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  br label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !tbaa !241
  br label %29

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %20, %17 ], [ %1, %13 ]
  store ptr %23, ptr %4, align 8, !tbaa !241
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %0) #30
  br label %29

29:                                               ; preds = %25, %22, %21, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN11arglst_nodeC2ERKS_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !241
  %6 = icmp eq ptr %5, null
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %5, align 8, !tbaa !219
  %9 = load ptr, ptr %8, align 8
  %10 = tail call noundef ptr %9(ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  br label %11

11:                                               ; preds = %7, %2
  %12 = phi ptr [ %10, %7 ], [ null, %2 ]
  %13 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !244
  %16 = icmp eq ptr %15, null
  br i1 %16, label %22, label %17

17:                                               ; preds = %11
  %18 = load ptr, ptr %15, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %15) #30
  %21 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr %20, ptr %21, align 8, !tbaa !244
  br label %23

22:                                               ; preds = %11
  store ptr null, ptr %13, align 8, !tbaa !241
  br label %23

23:                                               ; preds = %22, %17
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.assume(i1 noundef) #16

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11stack_frameD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN11stack_frameD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 comdat align 2 {
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK11stack_frame2opEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  ret i32 7
}

; Function Attrs: optsize uwtable
define internal void @_ZN8app_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !235
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8
  br label %19

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(16) %5) #30
  %13 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %12, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %0) #30
  br label %19

19:                                               ; preds = %15, %9, %7
  %20 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !237
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %24, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !219
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(16) %21) #30
  %29 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %0, align 8, !tbaa !219
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %0) #30
  br label %35

35:                                               ; preds = %31, %25, %23
  %36 = getelementptr inbounds %class.node, ptr %1, i64 0, i32 1
  %37 = load ptr, ptr %36, align 8, !tbaa !225
  store ptr %37, ptr %3, align 8, !tbaa !225
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8var_node8set_nameEPKc(ptr nocapture noundef nonnull align 8 dereferenceable(24) %0, ptr noundef readonly %1) #6 align 2 {
  %3 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !231
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #32
  br label %9

9:                                                ; preds = %8, %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store ptr null, ptr %3, align 8, !tbaa !231
  br label %17

12:                                               ; preds = %9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %14 = add i64 %13, 1
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #31
  store ptr %15, ptr %3, align 8, !tbaa !231
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %17

17:                                               ; preds = %12, %11, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN8var_node13reduce_numberEv(ptr noundef nonnull align 8 dereferenceable(24) %0) #11 align 2 personality ptr @__gxx_personality_v0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !219
  %3 = getelementptr inbounds ptr, ptr %2, i64 4
  %4 = load ptr, ptr %3, align 8
  %5 = tail call noundef ptr %4(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %103, label %7

7:                                                ; preds = %1
  %8 = load ptr, ptr %0, align 8, !tbaa !219
  %9 = getelementptr inbounds ptr, ptr %8, i64 4
  %10 = load ptr, ptr %9, align 8
  %11 = tail call noundef ptr %10(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  br label %12

12:                                               ; preds = %12, %7
  %13 = phi ptr [ %11, %7 ], [ %17, %12 ]
  %14 = load i8, ptr %13, align 1, !tbaa !240
  %15 = add i8 %14, -48
  %16 = icmp ult i8 %15, 10
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  br i1 %16, label %12, label %18, !llvm.loop !248

18:                                               ; preds = %12
  %.lcssa3 = phi i8 [ %14, %12 ]
  %19 = icmp eq i8 %.lcssa3, 0
  br i1 %19, label %20, label %103

20:                                               ; preds = %18
  %21 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %22 = getelementptr inbounds %class.node, ptr %21, i64 0, i32 1
  store ptr null, ptr %22, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %21, align 8, !tbaa !219
  %23 = invoke noundef ptr @_Z9newstringPKc(ptr noundef nonnull @.str.5.10) #30
          to label %24 unwind label %69

24:                                               ; preds = %20
  %25 = getelementptr inbounds %class.arg_node, ptr %21, i64 0, i32 1
  store ptr %23, ptr %25, align 8, !tbaa !227
  %26 = getelementptr inbounds %class.arg_node, ptr %21, i64 0, i32 2
  store ptr null, ptr %26, align 8
  %27 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %28 = getelementptr inbounds %class.node, ptr %27, i64 0, i32 1
  store ptr null, ptr %28, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [18 x ptr] }, ptr @_ZTV8arg_node, i64 0, inrange i32 0, i64 2), ptr %27, align 8, !tbaa !219
  %29 = invoke noundef ptr @_Z9newstringPKc(ptr noundef nonnull @.str.6.11) #30
          to label %30 unwind label %71

30:                                               ; preds = %24
  %31 = getelementptr inbounds %class.arg_node, ptr %27, i64 0, i32 1
  store ptr %29, ptr %31, align 8, !tbaa !227
  %32 = getelementptr inbounds %class.arg_node, ptr %27, i64 0, i32 2
  store ptr null, ptr %32, align 8
  %33 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %33, ptr noundef nonnull @.str.6.11) #30
          to label %34 unwind label %73

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 4
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(24) %0) #30
  %39 = tail call i32 @atoi(ptr nocapture noundef %38) #29
  %40 = icmp sgt i32 %39, 0
  br i1 %40, label %41, label %79

41:                                               ; preds = %66, %34
  %42 = phi i32 [ %67, %66 ], [ %39, %34 ]
  %43 = phi ptr [ %46, %66 ], [ %33, %34 ]
  %44 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %44, ptr noundef nonnull @.str.5.10) #30
          to label %45 unwind label %75

45:                                               ; preds = %41
  %46 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %47 = getelementptr inbounds %class.node, ptr %46, i64 0, i32 1
  store ptr null, ptr %47, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %46, align 8, !tbaa !219
  %48 = getelementptr inbounds %class.app_node, ptr %46, i64 0, i32 1
  %49 = getelementptr inbounds %class.app_node, ptr %46, i64 0, i32 2
  store i64 0, ptr %49, align 8
  store ptr %44, ptr %48, align 8, !tbaa !235
  %50 = load ptr, ptr %44, align 8, !tbaa !219
  %51 = getelementptr inbounds ptr, ptr %50, i64 12
  %52 = load ptr, ptr %51, align 8
  invoke void %52(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef nonnull %46) #30
          to label %53 unwind label %77

53:                                               ; preds = %45
  %54 = load ptr, ptr %49, align 8, !tbaa !237
  %55 = icmp eq ptr %54, %43
  br i1 %55, label %66, label %56

56:                                               ; preds = %53
  %57 = icmp eq ptr %54, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %56
  %59 = load ptr, ptr %54, align 8, !tbaa !219
  %60 = getelementptr inbounds ptr, ptr %59, i64 2
  %61 = load ptr, ptr %60, align 8
  tail call void %61(ptr noundef nonnull align 8 dereferenceable(16) %54) #28
  br label %62

62:                                               ; preds = %58, %56
  store ptr %43, ptr %49, align 8, !tbaa !237
  %63 = load ptr, ptr %43, align 8, !tbaa !219
  %64 = getelementptr inbounds ptr, ptr %63, i64 12
  %65 = load ptr, ptr %64, align 8
  invoke void %65(ptr noundef nonnull align 8 dereferenceable(16) %43, ptr noundef nonnull %46) #30
          to label %66 unwind label %77

66:                                               ; preds = %62, %53
  %67 = add nsw i32 %42, -1
  %68 = icmp sgt i32 %42, 1
  br i1 %68, label %41, label %79, !llvm.loop !249

69:                                               ; preds = %20
  %70 = landingpad { ptr, i32 }
          cleanup
  br label %100

71:                                               ; preds = %24
  %72 = landingpad { ptr, i32 }
          cleanup
  br label %100

73:                                               ; preds = %30
  %74 = landingpad { ptr, i32 }
          cleanup
  br label %100

75:                                               ; preds = %41
  %.lcssa = phi ptr [ %44, %41 ]
  %76 = landingpad { ptr, i32 }
          cleanup
  br label %100

77:                                               ; preds = %62, %45
  %.lcssa2 = phi ptr [ %46, %62 ], [ %46, %45 ]
  %78 = landingpad { ptr, i32 }
          cleanup
  br label %100

79:                                               ; preds = %66, %34
  %80 = phi ptr [ %33, %34 ], [ %46, %66 ]
  %81 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %82 = getelementptr inbounds %class.node, ptr %81, i64 0, i32 1
  store ptr null, ptr %82, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %81, align 8, !tbaa !219
  %83 = getelementptr inbounds %class.app_node, ptr %81, i64 0, i32 1
  %84 = getelementptr inbounds %class.app_node, ptr %81, i64 0, i32 2
  store ptr %27, ptr %83, align 8, !tbaa !250
  store ptr %81, ptr %28, align 8, !tbaa !225
  store ptr %80, ptr %84, align 8, !tbaa !252
  %85 = load ptr, ptr %80, align 8, !tbaa !219
  %86 = getelementptr inbounds ptr, ptr %85, i64 12
  %87 = load ptr, ptr %86, align 8
  invoke void %87(ptr noundef nonnull align 8 dereferenceable(16) %80, ptr noundef nonnull %81) #30
          to label %88 unwind label %96

88:                                               ; preds = %79
  %89 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %90 = getelementptr inbounds %class.node, ptr %89, i64 0, i32 1
  store ptr null, ptr %90, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %89, align 8, !tbaa !219
  %91 = getelementptr inbounds %class.app_node, ptr %89, i64 0, i32 1
  %92 = getelementptr inbounds %class.app_node, ptr %89, i64 0, i32 2
  store ptr %21, ptr %91, align 8, !tbaa !250
  store ptr %89, ptr %22, align 8, !tbaa !225
  store ptr %81, ptr %92, align 8, !tbaa !252
  %93 = load ptr, ptr %81, align 8, !tbaa !219
  %94 = getelementptr inbounds ptr, ptr %93, i64 12
  %95 = load ptr, ptr %94, align 8
  invoke void %95(ptr noundef nonnull align 8 dereferenceable(16) %81, ptr noundef nonnull %89) #30
          to label %103 unwind label %98

96:                                               ; preds = %79
  %97 = landingpad { ptr, i32 }
          cleanup
  br label %100

98:                                               ; preds = %88
  %99 = landingpad { ptr, i32 }
          cleanup
  br label %100

100:                                              ; preds = %98, %96, %77, %75, %73, %71, %69
  %101 = phi ptr [ %27, %71 ], [ %.lcssa2, %77 ], [ %.lcssa, %75 ], [ %89, %98 ], [ %81, %96 ], [ %33, %73 ], [ %21, %69 ]
  %102 = phi { ptr, i32 } [ %72, %71 ], [ %78, %77 ], [ %76, %75 ], [ %99, %98 ], [ %97, %96 ], [ %74, %73 ], [ %70, %69 ]
  tail call void @_ZdlPv(ptr noundef nonnull %101) #32
  resume { ptr, i32 } %102

103:                                              ; preds = %88, %18, %1
  %104 = phi ptr [ null, %1 ], [ null, %18 ], [ %89, %88 ]
  ret ptr %104
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8lam_node5cloneEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
  %2 = tail call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8lam_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %2, ptr noundef nonnull align 8 dereferenceable(32) %0) #30
          to label %3 unwind label %4

3:                                                ; preds = %1
  ret ptr %2

4:                                                ; preds = %1
  %5 = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPv(ptr noundef nonnull %2) #32
  resume { ptr, i32 } %5
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8lam_nodeD2Ev(ptr nocapture noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN8lam_nodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #12 align 2 {
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  %4 = icmp eq ptr %3, null
  br i1 %4, label %9, label %5

5:                                                ; preds = %1
  %6 = load ptr, ptr %3, align 8, !tbaa !219
  %7 = getelementptr inbounds ptr, ptr %6, i64 2
  %8 = load ptr, ptr %7, align 8
  tail call void %8(ptr noundef nonnull align 8 dereferenceable(32) %3) #28
  br label %9

9:                                                ; preds = %5, %1
  %10 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %11 = load ptr, ptr %10, align 8, !tbaa !252
  %12 = icmp eq ptr %11, null
  br i1 %12, label %17, label %13

13:                                               ; preds = %9
  %14 = load ptr, ptr %11, align 8, !tbaa !219
  %15 = getelementptr inbounds ptr, ptr %14, i64 2
  %16 = load ptr, ptr %15, align 8
  tail call void %16(ptr noundef nonnull align 8 dereferenceable(16) %11) #28
  br label %17

17:                                               ; preds = %13, %9
  tail call void @_ZdlPv(ptr noundef nonnull %0) #32
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZNK8lam_node2opEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  ret i32 4
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8lam_node3argEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !250
  ret ptr %3
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8lam_node4bodyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN8lam_node6reduceEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.stack_frame, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %8 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !250
  %10 = getelementptr inbounds %class.node, ptr %5, i64 0, i32 1
  store ptr null, ptr %10, align 8, !tbaa !225
  %11 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %12 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !219
  store ptr %9, ptr %11, align 8, !tbaa !241
  store ptr %1, ptr %12, align 8, !tbaa !244
  %13 = and i32 %2, 32
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %46, label %15

15:                                               ; preds = %4
  %16 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %17 = icmp sgt i32 %16, 0
  br i1 %17, label %26, label %18

18:                                               ; preds = %26, %15
  %19 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18) #30
  tail call void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1, i32 noundef %2) #30
  %20 = tail call i32 @putchar(i32 10)
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 11
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(16) %0) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %43, label %32

26:                                               ; preds = %26, %15
  %27 = phi i32 [ %29, %26 ], [ 0, %15 ]
  %28 = tail call i32 @putchar(i32 46)
  %29 = add nuw nsw i32 %27, 1
  %30 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %26, label %18, !llvm.loop !253

32:                                               ; preds = %32, %18
  %33 = phi ptr [ %37, %32 ], [ %0, %18 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !219
  %35 = getelementptr inbounds ptr, ptr %34, i64 11
  %36 = load ptr, ptr %35, align 8
  %37 = tail call noundef ptr %36(ptr noundef nonnull align 8 dereferenceable(16) %33) #30, !llvm.loop !254
  %38 = load ptr, ptr %37, align 8, !tbaa !219
  %39 = getelementptr inbounds ptr, ptr %38, i64 11
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(16) %37) #30
  %42 = icmp eq ptr %41, null
  br i1 %42, label %43, label %32

43:                                               ; preds = %32, %18
  %44 = phi ptr [ %0, %18 ], [ %37, %32 ]
  tail call void @_ZNK8exp_node14symbolic_printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(16) %44, ptr noundef %1, i32 noundef %2) #30
  %45 = tail call i32 @putchar(i32 10)
  br label %46

46:                                               ; preds = %43, %4
  %47 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %48 = add nsw i32 %47, 1
  store i32 %48, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %49 = icmp sgt i32 %47, 3999
  br i1 %49, label %50, label %58

50:                                               ; preds = %46
  %51 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20, i32 noundef %48) #30
  %52 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %53 = add nsw i32 %52, -1
  store i32 %53, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %54 = icmp eq ptr %3, null
  br i1 %54, label %303, label %55

55:                                               ; preds = %50
  %56 = load i32, ptr %3, align 4, !tbaa !217
  %57 = or i32 %56, 1
  store i32 %57, ptr %3, align 4, !tbaa !217
  br label %303

58:                                               ; preds = %46
  %59 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %60 = load ptr, ptr %59, align 8, !tbaa !252
  %61 = load ptr, ptr %60, align 8, !tbaa !219
  %62 = getelementptr inbounds ptr, ptr %61, i64 12
  %63 = load ptr, ptr %62, align 8
  tail call void %63(ptr noundef nonnull align 8 dereferenceable(16) %60, ptr noundef nonnull %0) #30
  %64 = load ptr, ptr %8, align 8, !tbaa !250
  %65 = icmp eq ptr %64, null
  br i1 %65, label %216, label %66

66:                                               ; preds = %58
  %67 = load ptr, ptr %64, align 8, !tbaa !219
  %68 = getelementptr inbounds ptr, ptr %67, i64 4
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(32) %64) #30
  %71 = icmp eq ptr %70, null
  br i1 %71, label %82, label %72

72:                                               ; preds = %66
  %73 = load ptr, ptr %8, align 8, !tbaa !250
  %74 = load ptr, ptr %73, align 8, !tbaa !219
  %75 = getelementptr inbounds ptr, ptr %74, i64 4
  %76 = load ptr, ptr %75, align 8
  %77 = tail call noundef ptr %76(ptr noundef nonnull align 8 dereferenceable(32) %73) #30
  %78 = load i8, ptr %77, align 1, !tbaa !240
  %79 = icmp eq i8 %78, 38
  %80 = and i32 %2, -6
  %81 = select i1 %79, i32 %80, i32 %2
  br label %82

82:                                               ; preds = %72, %66
  %83 = phi i32 [ %81, %72 ], [ %2, %66 ]
  %84 = load ptr, ptr %8, align 8, !tbaa !250
  %85 = icmp eq ptr %84, null
  br i1 %85, label %216, label %86

86:                                               ; preds = %82
  %87 = load ptr, ptr %84, align 8, !tbaa !219
  %88 = getelementptr inbounds ptr, ptr %87, i64 5
  %89 = load ptr, ptr %88, align 8
  %90 = tail call noundef ptr %89(ptr noundef nonnull align 8 dereferenceable(32) %84) #30
  %91 = icmp eq ptr %90, null
  br i1 %91, label %216, label %92

92:                                               ; preds = %86
  %93 = load ptr, ptr %59, align 8, !tbaa !252
  %94 = icmp eq ptr %93, null
  br i1 %94, label %299, label %95

95:                                               ; preds = %92
  %96 = load ptr, ptr %8, align 8, !tbaa !250
  %97 = load ptr, ptr %93, align 8, !tbaa !219
  %98 = getelementptr inbounds ptr, ptr %97, i64 19
  %99 = load ptr, ptr %98, align 8
  call void %99(ptr noundef nonnull align 8 dereferenceable(16) %93, ptr noundef %96, ptr noundef nonnull %5) #30
  %100 = load ptr, ptr %8, align 8, !tbaa !250
  %101 = load ptr, ptr %100, align 8, !tbaa !219
  %102 = getelementptr inbounds ptr, ptr %101, i64 4
  %103 = load ptr, ptr %102, align 8
  %104 = call noundef ptr %103(ptr noundef nonnull align 8 dereferenceable(32) %100) #30
  %105 = icmp eq ptr %104, null
  br i1 %105, label %117, label %106

106:                                              ; preds = %95
  %107 = load ptr, ptr %8, align 8, !tbaa !250
  %108 = load ptr, ptr %107, align 8, !tbaa !219
  %109 = getelementptr inbounds ptr, ptr %108, i64 4
  %110 = load ptr, ptr %109, align 8
  %111 = call noundef ptr %110(ptr noundef nonnull align 8 dereferenceable(32) %107) #30
  %112 = load i8, ptr %111, align 1, !tbaa !240
  %113 = icmp eq i8 %112, 36
  br i1 %113, label %114, label %117

114:                                              ; preds = %106
  %115 = and i32 %83, -6
  %116 = or i32 %115, 4
  br label %117

117:                                              ; preds = %114, %106, %95
  %118 = phi i32 [ %116, %114 ], [ %83, %106 ], [ %83, %95 ]
  %119 = and i32 %118, 1
  %120 = icmp eq i32 %119, 0
  br i1 %120, label %121, label %192

121:                                              ; preds = %117
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %6) #27
  %122 = icmp eq ptr %3, null
  br i1 %122, label %125, label %123

123:                                              ; preds = %121
  %124 = load i32, ptr %3, align 4, !tbaa !217
  br label %125

125:                                              ; preds = %123, %121
  %126 = phi i32 [ %124, %123 ], [ 0, %121 ]
  store i32 %126, ptr %6, align 4, !tbaa !217
  %127 = load ptr, ptr %59, align 8, !tbaa !252
  %128 = load ptr, ptr %127, align 8, !tbaa !219
  %129 = getelementptr inbounds ptr, ptr %128, i64 17
  %130 = load ptr, ptr %129, align 8
  %131 = invoke noundef ptr %130(ptr noundef nonnull align 8 dereferenceable(16) %127, ptr noundef nonnull %5, i32 noundef %118, ptr noundef %3) #30
          to label %132 unwind label %141

132:                                              ; preds = %125
  %133 = load ptr, ptr %59, align 8, !tbaa !252
  %134 = icmp eq ptr %131, %133
  %135 = icmp eq ptr %133, null
  %136 = or i1 %134, %135
  br i1 %136, label %143, label %137

137:                                              ; preds = %132
  %138 = load ptr, ptr %133, align 8, !tbaa !219
  %139 = getelementptr inbounds ptr, ptr %138, i64 2
  %140 = load ptr, ptr %139, align 8
  call void %140(ptr noundef nonnull align 8 dereferenceable(16) %133) #28
  store ptr null, ptr %59, align 8, !tbaa !252
  br label %143

141:                                              ; preds = %125
  %142 = landingpad { ptr, i32 }
          cleanup
  br label %190

143:                                              ; preds = %137, %132
  %144 = load ptr, ptr %8, align 8, !tbaa !250
  %145 = getelementptr inbounds %class.arg_node, ptr %144, i64 0, i32 2
  %146 = load ptr, ptr %145, align 8, !tbaa !229
  %147 = icmp eq ptr %146, null
  br i1 %147, label %152, label %148

148:                                              ; preds = %143
  %149 = load ptr, ptr %146, align 8, !tbaa !219
  %150 = getelementptr inbounds ptr, ptr %149, i64 2
  %151 = load ptr, ptr %150, align 8
  call void %151(ptr noundef nonnull align 8 dereferenceable(16) %146) #28
  store ptr null, ptr %145, align 8, !tbaa !229
  br label %152

152:                                              ; preds = %148, %143
  br label %153

153:                                              ; preds = %179, %152
  %154 = phi ptr [ %175, %179 ], [ %131, %152 ]
  %155 = phi i32 [ %181, %179 ], [ 0, %152 ]
  %156 = load ptr, ptr %154, align 8, !tbaa !219
  %157 = getelementptr inbounds ptr, ptr %156, i64 13
  %158 = load ptr, ptr %157, align 8
  %159 = invoke noundef ptr %158(ptr noundef nonnull align 8 dereferenceable(16) %154, ptr noundef nonnull %5, i32 noundef %118, ptr noundef nonnull %6) #30
          to label %160 unwind label %168

160:                                              ; preds = %153
  %161 = icmp eq ptr %159, null
  %162 = icmp eq ptr %154, %159
  %163 = or i1 %161, %162
  br i1 %163, label %174, label %164

164:                                              ; preds = %160
  %165 = load ptr, ptr %59, align 8, !tbaa !252
  %166 = icmp eq ptr %154, %165
  br i1 %166, label %167, label %170

167:                                              ; preds = %164
  store ptr null, ptr %59, align 8, !tbaa !252
  br label %170

168:                                              ; preds = %153
  %169 = landingpad { ptr, i32 }
          cleanup
  br label %190

170:                                              ; preds = %167, %164
  %171 = load ptr, ptr %154, align 8, !tbaa !219
  %172 = getelementptr inbounds ptr, ptr %171, i64 2
  %173 = load ptr, ptr %172, align 8
  call void %173(ptr noundef nonnull align 8 dereferenceable(16) %154) #28
  br label %174

174:                                              ; preds = %170, %160
  %175 = phi ptr [ %159, %170 ], [ %154, %160 ]
  %176 = load i32, ptr %6, align 4, !tbaa !217
  %177 = and i32 %176, 3
  %178 = icmp eq i32 %177, 2
  br i1 %178, label %179, label %182

179:                                              ; preds = %174
  %180 = and i32 %176, -3
  store i32 %180, ptr %6, align 4, !tbaa !217
  %181 = add nuw nsw i32 %155, 1
  br label %153

182:                                              ; preds = %174
  %.lcssa3 = phi ptr [ %175, %174 ]
  %.lcssa2 = phi i32 [ %176, %174 ]
  %.lcssa1 = phi i32 [ %155, %174 ]
  br i1 %122, label %184, label %183

183:                                              ; preds = %182
  store i32 %.lcssa2, ptr %3, align 4, !tbaa !217
  br label %184

184:                                              ; preds = %183, %182
  %185 = icmp ugt i32 %.lcssa1, 1
  br i1 %185, label %186, label %189

186:                                              ; preds = %184
  %187 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %188 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.21, i32 noundef %.lcssa1, i32 noundef %187) #30
  br label %189

189:                                              ; preds = %186, %184
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %198

190:                                              ; preds = %168, %141
  %191 = phi { ptr, i32 } [ %169, %168 ], [ %142, %141 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %6) #27
  br label %305

192:                                              ; preds = %117
  %193 = load ptr, ptr %59, align 8, !tbaa !252
  %194 = load ptr, ptr %193, align 8, !tbaa !219
  %195 = getelementptr inbounds ptr, ptr %194, i64 17
  %196 = load ptr, ptr %195, align 8
  %197 = call noundef ptr %196(ptr noundef nonnull align 8 dereferenceable(16) %193, ptr noundef nonnull %5, i32 noundef %118, ptr noundef %3) #30
  br label %198

198:                                              ; preds = %192, %189
  %199 = phi ptr [ %.lcssa3, %189 ], [ %197, %192 ]
  %200 = load ptr, ptr %59, align 8, !tbaa !252
  %201 = icmp eq ptr %200, null
  %202 = icmp eq ptr %200, %199
  %203 = or i1 %201, %202
  br i1 %203, label %208, label %204

204:                                              ; preds = %198
  %205 = load ptr, ptr %200, align 8, !tbaa !219
  %206 = getelementptr inbounds ptr, ptr %205, i64 2
  %207 = load ptr, ptr %206, align 8
  call void %207(ptr noundef nonnull align 8 dereferenceable(16) %200) #28
  br label %208

208:                                              ; preds = %204, %198
  store ptr null, ptr %59, align 8, !tbaa !252
  %209 = icmp eq ptr %199, null
  br i1 %209, label %299, label %210

210:                                              ; preds = %208
  %211 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  %212 = load ptr, ptr %211, align 8, !tbaa !225
  %213 = load ptr, ptr %199, align 8, !tbaa !219
  %214 = getelementptr inbounds ptr, ptr %213, i64 12
  %215 = load ptr, ptr %214, align 8
  call void %215(ptr noundef nonnull align 8 dereferenceable(16) %199, ptr noundef %212) #30
  br label %299

216:                                              ; preds = %86, %82, %58
  %217 = phi i32 [ %83, %82 ], [ %83, %86 ], [ %2, %58 ]
  %218 = load ptr, ptr %59, align 8, !tbaa !252
  %219 = icmp eq ptr %218, null
  br i1 %219, label %299, label %220

220:                                              ; preds = %216
  %221 = load ptr, ptr %0, align 8, !tbaa !219
  %222 = getelementptr inbounds ptr, ptr %221, i64 27
  %223 = load ptr, ptr %222, align 8
  %224 = call noundef ptr %223(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %5, i32 noundef %217, ptr noundef %3) #30
  %225 = icmp eq ptr %224, %0
  br i1 %225, label %226, label %299

226:                                              ; preds = %220
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %7) #27
  %227 = icmp eq ptr %3, null
  br i1 %227, label %230, label %228

228:                                              ; preds = %226
  %229 = load i32, ptr %3, align 4, !tbaa !217
  br label %230

230:                                              ; preds = %228, %226
  %231 = phi i32 [ %229, %228 ], [ 0, %226 ]
  store i32 %231, ptr %7, align 4, !tbaa !217
  %232 = and i32 %217, 4
  %233 = icmp eq i32 %232, 0
  %234 = load ptr, ptr %59, align 8, !tbaa !252
  %235 = load ptr, ptr %234, align 8, !tbaa !219
  br i1 %233, label %257, label %236

236:                                              ; preds = %230
  %237 = getelementptr inbounds ptr, ptr %235, i64 13
  %238 = load ptr, ptr %237, align 8
  %239 = invoke noundef ptr %238(ptr noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull %5, i32 noundef %217, ptr noundef nonnull %7) #30
          to label %240 unwind label %255

240:                                              ; preds = %236
  %241 = icmp eq ptr %239, null
  br i1 %241, label %278, label %242

242:                                              ; preds = %240
  %243 = load ptr, ptr %59, align 8, !tbaa !252
  %244 = icmp eq ptr %243, %239
  br i1 %244, label %278, label %245

245:                                              ; preds = %242
  %246 = icmp eq ptr %243, null
  br i1 %246, label %251, label %247

247:                                              ; preds = %245
  %248 = load ptr, ptr %243, align 8, !tbaa !219
  %249 = getelementptr inbounds ptr, ptr %248, i64 2
  %250 = load ptr, ptr %249, align 8
  call void %250(ptr noundef nonnull align 8 dereferenceable(16) %243) #28
  br label %251

251:                                              ; preds = %247, %245
  store ptr %239, ptr %59, align 8, !tbaa !252
  %252 = load ptr, ptr %239, align 8, !tbaa !219
  %253 = getelementptr inbounds ptr, ptr %252, i64 12
  %254 = load ptr, ptr %253, align 8
  invoke void %254(ptr noundef nonnull align 8 dereferenceable(16) %239, ptr noundef nonnull %0) #30
          to label %278 unwind label %255

255:                                              ; preds = %251, %236
  %256 = landingpad { ptr, i32 }
          cleanup
  br label %297

257:                                              ; preds = %230
  %258 = getelementptr inbounds ptr, ptr %235, i64 17
  %259 = load ptr, ptr %258, align 8
  %260 = invoke noundef ptr %259(ptr noundef nonnull align 8 dereferenceable(16) %234, ptr noundef nonnull %5, i32 noundef %217, ptr noundef %3) #30
          to label %261 unwind label %276

261:                                              ; preds = %257
  %262 = icmp eq ptr %260, null
  br i1 %262, label %278, label %263

263:                                              ; preds = %261
  %264 = load ptr, ptr %59, align 8, !tbaa !252
  %265 = icmp eq ptr %264, %260
  br i1 %265, label %278, label %266

266:                                              ; preds = %263
  %267 = icmp eq ptr %264, null
  br i1 %267, label %272, label %268

268:                                              ; preds = %266
  %269 = load ptr, ptr %264, align 8, !tbaa !219
  %270 = getelementptr inbounds ptr, ptr %269, i64 2
  %271 = load ptr, ptr %270, align 8
  call void %271(ptr noundef nonnull align 8 dereferenceable(16) %264) #28
  br label %272

272:                                              ; preds = %268, %266
  store ptr %260, ptr %59, align 8, !tbaa !252
  %273 = load ptr, ptr %260, align 8, !tbaa !219
  %274 = getelementptr inbounds ptr, ptr %273, i64 12
  %275 = load ptr, ptr %274, align 8
  invoke void %275(ptr noundef nonnull align 8 dereferenceable(16) %260, ptr noundef nonnull %0) #30
          to label %278 unwind label %276

276:                                              ; preds = %272, %257
  %277 = landingpad { ptr, i32 }
          cleanup
  br label %297

278:                                              ; preds = %272, %263, %261, %251, %242, %240
  %279 = and i32 %217, 1
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %285, label %281

281:                                              ; preds = %278
  %282 = load i32, ptr %7, align 4, !tbaa !217
  %283 = and i32 %282, 2
  %284 = icmp eq i32 %283, 0
  br i1 %284, label %285, label %292

285:                                              ; preds = %281, %278
  %286 = load ptr, ptr %0, align 8, !tbaa !219
  %287 = getelementptr inbounds ptr, ptr %286, i64 27
  %288 = load ptr, ptr %287, align 8
  %289 = invoke noundef ptr %288(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull %5, i32 noundef %217, ptr noundef nonnull %7) #30
          to label %292 unwind label %290

290:                                              ; preds = %285
  %291 = landingpad { ptr, i32 }
          cleanup
  br label %297

292:                                              ; preds = %285, %281
  %293 = phi ptr [ %0, %281 ], [ %289, %285 ]
  br i1 %227, label %296, label %294

294:                                              ; preds = %292
  %295 = load i32, ptr %7, align 4, !tbaa !217
  store i32 %295, ptr %3, align 4, !tbaa !217
  br label %296

296:                                              ; preds = %294, %292
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %299

297:                                              ; preds = %290, %276, %255
  %298 = phi { ptr, i32 } [ %291, %290 ], [ %256, %255 ], [ %277, %276 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %7) #27
  br label %305

299:                                              ; preds = %296, %220, %216, %210, %208, %92
  %300 = phi ptr [ %199, %210 ], [ null, %208 ], [ %0, %216 ], [ %293, %296 ], [ %224, %220 ], [ %0, %92 ]
  %301 = load i32, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  %302 = add nsw i32 %301, -1
  store i32 %302, ptr @_ZL27lambda_reduce_recurse_level, align 4, !tbaa !217
  br label %303

303:                                              ; preds = %299, %55, %50
  %304 = phi ptr [ %300, %299 ], [ %0, %55 ], [ %0, %50 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret ptr %304

305:                                              ; preds = %297, %190
  %306 = phi { ptr, i32 } [ %191, %190 ], [ %298, %297 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  resume { ptr, i32 } %306
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZNK8lam_node5printEPK9alst_nodei(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
  %4 = and i32 %2, 8
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %247, label %6

6:                                                ; preds = %3
  %7 = icmp eq ptr %1, null
  br i1 %7, label %24, label %8

8:                                                ; preds = %6
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 24
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull %1) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %24, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %12, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %12) #30
  %19 = load ptr, ptr %18, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 4
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(32) %18) #30
  %23 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %22) #30
  br label %323

24:                                               ; preds = %8, %6
  %25 = load ptr, ptr %0, align 8, !tbaa !219
  %26 = getelementptr inbounds ptr, ptr %25, i64 7
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %29 = load ptr, ptr %28, align 8, !tbaa !219
  %30 = getelementptr inbounds ptr, ptr %29, i64 3
  %31 = load ptr, ptr %30, align 8
  %32 = tail call noundef i32 %31(ptr noundef nonnull align 8 dereferenceable(16) %28) #30
  %33 = icmp eq i32 %32, 4
  br i1 %33, label %34, label %194

34:                                               ; preds = %24
  %35 = load ptr, ptr %0, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 6
  %37 = load ptr, ptr %36, align 8
  %38 = tail call noundef ptr %37(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %39 = icmp eq ptr %38, null
  br i1 %39, label %194, label %40

40:                                               ; preds = %34
  %41 = load ptr, ptr %0, align 8, !tbaa !219
  %42 = getelementptr inbounds ptr, ptr %41, i64 6
  %43 = load ptr, ptr %42, align 8
  %44 = tail call noundef ptr %43(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %45 = load ptr, ptr %44, align 8, !tbaa !219
  %46 = getelementptr inbounds ptr, ptr %45, i64 4
  %47 = load ptr, ptr %46, align 8
  %48 = tail call noundef ptr %47(ptr noundef nonnull align 8 dereferenceable(32) %44) #30
  %49 = icmp eq ptr %48, null
  br i1 %49, label %194, label %50

50:                                               ; preds = %40
  %51 = load ptr, ptr %0, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 7
  %53 = load ptr, ptr %52, align 8
  %54 = tail call noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %55 = icmp eq ptr %54, null
  br i1 %55, label %194, label %56

56:                                               ; preds = %50
  %57 = load ptr, ptr %0, align 8, !tbaa !219
  %58 = getelementptr inbounds ptr, ptr %57, i64 7
  %59 = load ptr, ptr %58, align 8
  %60 = tail call noundef ptr %59(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %61 = load ptr, ptr %60, align 8, !tbaa !219
  %62 = getelementptr inbounds ptr, ptr %61, i64 6
  %63 = load ptr, ptr %62, align 8
  %64 = tail call noundef ptr %63(ptr noundef nonnull align 8 dereferenceable(16) %60) #30
  %65 = icmp eq ptr %64, null
  br i1 %65, label %194, label %66

66:                                               ; preds = %56
  %67 = load ptr, ptr %0, align 8, !tbaa !219
  %68 = getelementptr inbounds ptr, ptr %67, i64 7
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %71 = load ptr, ptr %70, align 8, !tbaa !219
  %72 = getelementptr inbounds ptr, ptr %71, i64 6
  %73 = load ptr, ptr %72, align 8
  %74 = tail call noundef ptr %73(ptr noundef nonnull align 8 dereferenceable(16) %70) #30
  %75 = load ptr, ptr %74, align 8, !tbaa !219
  %76 = getelementptr inbounds ptr, ptr %75, i64 4
  %77 = load ptr, ptr %76, align 8
  %78 = tail call noundef ptr %77(ptr noundef nonnull align 8 dereferenceable(32) %74) #30
  %79 = icmp eq ptr %78, null
  br i1 %79, label %194, label %80

80:                                               ; preds = %66
  %81 = load ptr, ptr %0, align 8, !tbaa !219
  %82 = getelementptr inbounds ptr, ptr %81, i64 7
  %83 = load ptr, ptr %82, align 8
  %84 = tail call noundef ptr %83(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %85 = load ptr, ptr %84, align 8, !tbaa !219
  %86 = getelementptr inbounds ptr, ptr %85, i64 7
  %87 = load ptr, ptr %86, align 8
  %88 = tail call noundef ptr %87(ptr noundef nonnull align 8 dereferenceable(16) %84) #30
  %89 = icmp eq ptr %88, null
  br i1 %89, label %194, label %90

90:                                               ; preds = %80
  %91 = load ptr, ptr %0, align 8, !tbaa !219
  %92 = getelementptr inbounds ptr, ptr %91, i64 6
  %93 = load ptr, ptr %92, align 8
  %94 = tail call noundef ptr %93(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %95 = load ptr, ptr %94, align 8, !tbaa !219
  %96 = getelementptr inbounds ptr, ptr %95, i64 4
  %97 = load ptr, ptr %96, align 8
  %98 = tail call noundef ptr %97(ptr noundef nonnull align 8 dereferenceable(32) %94) #30
  %99 = load ptr, ptr %0, align 8, !tbaa !219
  %100 = getelementptr inbounds ptr, ptr %99, i64 7
  %101 = load ptr, ptr %100, align 8
  %102 = tail call noundef ptr %101(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %103 = load ptr, ptr %102, align 8, !tbaa !219
  %104 = getelementptr inbounds ptr, ptr %103, i64 6
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef ptr %105(ptr noundef nonnull align 8 dereferenceable(16) %102) #30
  %107 = load ptr, ptr %106, align 8, !tbaa !219
  %108 = getelementptr inbounds ptr, ptr %107, i64 4
  %109 = load ptr, ptr %108, align 8
  %110 = tail call noundef ptr %109(ptr noundef nonnull align 8 dereferenceable(32) %106) #30
  %111 = load ptr, ptr %0, align 8, !tbaa !219
  %112 = getelementptr inbounds ptr, ptr %111, i64 7
  %113 = load ptr, ptr %112, align 8
  %114 = tail call noundef ptr %113(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %115 = load ptr, ptr %114, align 8, !tbaa !219
  %116 = getelementptr inbounds ptr, ptr %115, i64 7
  %117 = load ptr, ptr %116, align 8
  %118 = tail call noundef ptr %117(ptr noundef nonnull align 8 dereferenceable(16) %114) #30
  %119 = icmp eq ptr %118, null
  br i1 %119, label %191, label %120

120:                                              ; preds = %165, %90
  %121 = phi ptr [ %170, %165 ], [ %118, %90 ]
  %122 = phi i32 [ %166, %165 ], [ 0, %90 ]
  %123 = load ptr, ptr %121, align 8, !tbaa !219
  %124 = getelementptr inbounds ptr, ptr %123, i64 3
  %125 = load ptr, ptr %124, align 8
  %126 = tail call noundef i32 %125(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %127 = icmp eq i32 %126, 5
  br i1 %127, label %128, label %172

128:                                              ; preds = %120
  %129 = load ptr, ptr %121, align 8, !tbaa !219
  %130 = getelementptr inbounds ptr, ptr %129, i64 8
  %131 = load ptr, ptr %130, align 8
  %132 = tail call noundef ptr %131(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %133 = icmp eq ptr %132, null
  br i1 %133, label %172, label %134

134:                                              ; preds = %128
  %135 = load ptr, ptr %121, align 8, !tbaa !219
  %136 = getelementptr inbounds ptr, ptr %135, i64 8
  %137 = load ptr, ptr %136, align 8
  %138 = tail call noundef ptr %137(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %139 = load ptr, ptr %138, align 8, !tbaa !219
  %140 = getelementptr inbounds ptr, ptr %139, i64 3
  %141 = load ptr, ptr %140, align 8
  %142 = tail call noundef i32 %141(ptr noundef nonnull align 8 dereferenceable(16) %138) #30
  %143 = icmp eq i32 %142, 3
  br i1 %143, label %144, label %172

144:                                              ; preds = %134
  %145 = load ptr, ptr %121, align 8, !tbaa !219
  %146 = getelementptr inbounds ptr, ptr %145, i64 8
  %147 = load ptr, ptr %146, align 8
  %148 = tail call noundef ptr %147(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %149 = load ptr, ptr %148, align 8, !tbaa !219
  %150 = getelementptr inbounds ptr, ptr %149, i64 4
  %151 = load ptr, ptr %150, align 8
  %152 = tail call noundef ptr %151(ptr noundef nonnull align 8 dereferenceable(16) %148) #30
  %153 = icmp eq ptr %152, null
  br i1 %153, label %172, label %154

154:                                              ; preds = %144
  %155 = load ptr, ptr %121, align 8, !tbaa !219
  %156 = getelementptr inbounds ptr, ptr %155, i64 8
  %157 = load ptr, ptr %156, align 8
  %158 = tail call noundef ptr %157(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %159 = load ptr, ptr %158, align 8, !tbaa !219
  %160 = getelementptr inbounds ptr, ptr %159, i64 4
  %161 = load ptr, ptr %160, align 8
  %162 = tail call noundef ptr %161(ptr noundef nonnull align 8 dereferenceable(16) %158) #30
  %163 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %98, ptr noundef nonnull dereferenceable(1) %162) #29
  %164 = icmp eq i32 %163, 0
  br i1 %164, label %165, label %172

165:                                              ; preds = %154
  %166 = add nuw nsw i32 %122, 1
  %167 = load ptr, ptr %121, align 8, !tbaa !219
  %168 = getelementptr inbounds ptr, ptr %167, i64 9
  %169 = load ptr, ptr %168, align 8
  %170 = tail call noundef ptr %169(ptr noundef nonnull align 8 dereferenceable(16) %121) #30
  %171 = icmp eq ptr %170, null
  br i1 %171, label %191, label %120, !llvm.loop !255

172:                                              ; preds = %154, %144, %134, %128, %120
  %.lcssa1 = phi ptr [ %121, %154 ], [ %121, %144 ], [ %121, %134 ], [ %121, %128 ], [ %121, %120 ]
  %.lcssa = phi i32 [ %122, %154 ], [ %122, %144 ], [ %122, %134 ], [ %122, %128 ], [ %122, %120 ]
  %173 = load ptr, ptr %.lcssa1, align 8, !tbaa !219
  %174 = getelementptr inbounds ptr, ptr %173, i64 3
  %175 = load ptr, ptr %174, align 8
  %176 = tail call noundef i32 %175(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa1) #30
  %177 = icmp eq i32 %176, 3
  br i1 %177, label %178, label %247

178:                                              ; preds = %172
  %179 = load ptr, ptr %.lcssa1, align 8, !tbaa !219
  %180 = getelementptr inbounds ptr, ptr %179, i64 4
  %181 = load ptr, ptr %180, align 8
  %182 = tail call noundef ptr %181(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa1) #30
  %183 = icmp eq ptr %182, null
  br i1 %183, label %247, label %184

184:                                              ; preds = %178
  %185 = load ptr, ptr %.lcssa1, align 8, !tbaa !219
  %186 = getelementptr inbounds ptr, ptr %185, i64 4
  %187 = load ptr, ptr %186, align 8
  %188 = tail call noundef ptr %187(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa1) #30
  %189 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %110, ptr noundef nonnull dereferenceable(1) %188) #29
  %190 = icmp eq i32 %189, 0
  br i1 %190, label %191, label %247

191:                                              ; preds = %184, %165, %90
  %192 = phi i32 [ %.lcssa, %184 ], [ 0, %90 ], [ %166, %165 ]
  %193 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.12, i32 noundef %192) #30
  br label %323

194:                                              ; preds = %80, %66, %56, %50, %40, %34, %24
  %195 = load ptr, ptr %0, align 8, !tbaa !219
  %196 = getelementptr inbounds ptr, ptr %195, i64 6
  %197 = load ptr, ptr %196, align 8
  %198 = tail call noundef ptr %197(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %199 = icmp eq ptr %198, null
  br i1 %199, label %247, label %200

200:                                              ; preds = %194
  %201 = load ptr, ptr %0, align 8, !tbaa !219
  %202 = getelementptr inbounds ptr, ptr %201, i64 6
  %203 = load ptr, ptr %202, align 8
  %204 = tail call noundef ptr %203(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %205 = load ptr, ptr %204, align 8, !tbaa !219
  %206 = getelementptr inbounds ptr, ptr %205, i64 4
  %207 = load ptr, ptr %206, align 8
  %208 = tail call noundef ptr %207(ptr noundef nonnull align 8 dereferenceable(32) %204) #30
  %209 = icmp eq ptr %208, null
  br i1 %209, label %247, label %210

210:                                              ; preds = %200
  %211 = load ptr, ptr %0, align 8, !tbaa !219
  %212 = getelementptr inbounds ptr, ptr %211, i64 7
  %213 = load ptr, ptr %212, align 8
  %214 = tail call noundef ptr %213(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %215 = icmp eq ptr %214, null
  br i1 %215, label %247, label %216

216:                                              ; preds = %210
  %217 = load ptr, ptr %0, align 8, !tbaa !219
  %218 = getelementptr inbounds ptr, ptr %217, i64 7
  %219 = load ptr, ptr %218, align 8
  %220 = tail call noundef ptr %219(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %221 = load ptr, ptr %220, align 8, !tbaa !219
  %222 = getelementptr inbounds ptr, ptr %221, i64 3
  %223 = load ptr, ptr %222, align 8
  %224 = tail call noundef i32 %223(ptr noundef nonnull align 8 dereferenceable(16) %220) #30
  %225 = icmp eq i32 %224, 3
  br i1 %225, label %226, label %247

226:                                              ; preds = %216
  %227 = load ptr, ptr %0, align 8, !tbaa !219
  %228 = getelementptr inbounds ptr, ptr %227, i64 6
  %229 = load ptr, ptr %228, align 8
  %230 = tail call noundef ptr %229(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %231 = load ptr, ptr %230, align 8, !tbaa !219
  %232 = getelementptr inbounds ptr, ptr %231, i64 4
  %233 = load ptr, ptr %232, align 8
  %234 = tail call noundef ptr %233(ptr noundef nonnull align 8 dereferenceable(32) %230) #30
  %235 = load ptr, ptr %0, align 8, !tbaa !219
  %236 = getelementptr inbounds ptr, ptr %235, i64 7
  %237 = load ptr, ptr %236, align 8
  %238 = tail call noundef ptr %237(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %239 = load ptr, ptr %238, align 8, !tbaa !219
  %240 = getelementptr inbounds ptr, ptr %239, i64 4
  %241 = load ptr, ptr %240, align 8
  %242 = tail call noundef ptr %241(ptr noundef nonnull align 8 dereferenceable(16) %238) #30
  %243 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %234, ptr noundef nonnull dereferenceable(1) %242) #29
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %245, label %247

245:                                              ; preds = %226
  %246 = tail call i32 @putchar(i32 73)
  br label %323

247:                                              ; preds = %226, %216, %210, %200, %194, %184, %178, %172, %3
  %248 = tail call i32 @putchar(i32 94)
  %249 = load ptr, ptr %0, align 8, !tbaa !219
  %250 = getelementptr inbounds ptr, ptr %249, i64 6
  %251 = load ptr, ptr %250, align 8
  %252 = tail call noundef ptr %251(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %253 = icmp eq ptr %252, null
  br i1 %253, label %274, label %254

254:                                              ; preds = %247
  %255 = load ptr, ptr %0, align 8, !tbaa !219
  %256 = getelementptr inbounds ptr, ptr %255, i64 6
  %257 = load ptr, ptr %256, align 8
  %258 = tail call noundef ptr %257(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %259 = load ptr, ptr %258, align 8, !tbaa !219
  %260 = getelementptr inbounds ptr, ptr %259, i64 4
  %261 = load ptr, ptr %260, align 8
  %262 = tail call noundef ptr %261(ptr noundef nonnull align 8 dereferenceable(32) %258) #30
  %263 = icmp eq ptr %262, null
  br i1 %263, label %274, label %264

264:                                              ; preds = %254
  %265 = load ptr, ptr %0, align 8, !tbaa !219
  %266 = getelementptr inbounds ptr, ptr %265, i64 6
  %267 = load ptr, ptr %266, align 8
  %268 = tail call noundef ptr %267(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %269 = load ptr, ptr %268, align 8, !tbaa !219
  %270 = getelementptr inbounds ptr, ptr %269, i64 4
  %271 = load ptr, ptr %270, align 8
  %272 = tail call noundef ptr %271(ptr noundef nonnull align 8 dereferenceable(32) %268) #30
  %273 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1, ptr noundef %272) #30
  br label %276

274:                                              ; preds = %254, %247
  %275 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #30
  br label %276

276:                                              ; preds = %274, %264
  %277 = load ptr, ptr %0, align 8, !tbaa !219
  %278 = getelementptr inbounds ptr, ptr %277, i64 6
  %279 = load ptr, ptr %278, align 8
  %280 = tail call noundef ptr %279(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %281 = icmp eq ptr %280, null
  br i1 %281, label %306, label %282

282:                                              ; preds = %276
  %283 = load ptr, ptr %0, align 8, !tbaa !219
  %284 = getelementptr inbounds ptr, ptr %283, i64 6
  %285 = load ptr, ptr %284, align 8
  %286 = tail call noundef ptr %285(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %287 = load ptr, ptr %286, align 8, !tbaa !219
  %288 = getelementptr inbounds ptr, ptr %287, i64 5
  %289 = load ptr, ptr %288, align 8
  %290 = tail call noundef ptr %289(ptr noundef nonnull align 8 dereferenceable(32) %286) #30
  %291 = icmp eq ptr %290, null
  br i1 %291, label %306, label %292

292:                                              ; preds = %282
  %293 = tail call i32 @putchar(i32 91)
  %294 = load ptr, ptr %0, align 8, !tbaa !219
  %295 = getelementptr inbounds ptr, ptr %294, i64 6
  %296 = load ptr, ptr %295, align 8
  %297 = tail call noundef ptr %296(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %298 = load ptr, ptr %297, align 8, !tbaa !219
  %299 = getelementptr inbounds ptr, ptr %298, i64 5
  %300 = load ptr, ptr %299, align 8
  %301 = tail call noundef ptr %300(ptr noundef nonnull align 8 dereferenceable(32) %297) #30
  %302 = load ptr, ptr %301, align 8, !tbaa !219
  %303 = getelementptr inbounds ptr, ptr %302, i64 14
  %304 = load ptr, ptr %303, align 8
  tail call void %304(ptr noundef nonnull align 8 dereferenceable(16) %301, ptr noundef %1, i32 noundef %2) #30
  %305 = tail call i32 @putchar(i32 93)
  br label %306

306:                                              ; preds = %292, %282, %276
  %307 = tail call i32 @putchar(i32 46)
  %308 = load ptr, ptr %0, align 8, !tbaa !219
  %309 = getelementptr inbounds ptr, ptr %308, i64 7
  %310 = load ptr, ptr %309, align 8
  %311 = tail call noundef ptr %310(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %312 = icmp eq ptr %311, null
  br i1 %312, label %321, label %313

313:                                              ; preds = %306
  %314 = load ptr, ptr %0, align 8, !tbaa !219
  %315 = getelementptr inbounds ptr, ptr %314, i64 7
  %316 = load ptr, ptr %315, align 8
  %317 = tail call noundef ptr %316(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %318 = load ptr, ptr %317, align 8, !tbaa !219
  %319 = getelementptr inbounds ptr, ptr %318, i64 14
  %320 = load ptr, ptr %319, align 8
  tail call void %320(ptr noundef nonnull align 8 dereferenceable(16) %317, ptr noundef %1, i32 noundef %2) #30
  br label %323

321:                                              ; preds = %306
  %322 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17) #30
  br label %323

323:                                              ; preds = %321, %313, %245, %191, %14
  ret void
}

; Function Attrs: optsize uwtable
define internal noundef signext i16 @_ZNK8lam_node8has_freeEPK8arg_nodePK9alst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca %class.stack_frame, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %4) #27
  %5 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !250
  %7 = getelementptr inbounds %class.node, ptr %4, i64 0, i32 1
  store ptr null, ptr %7, align 8, !tbaa !225
  %8 = getelementptr inbounds %class.app_node, ptr %4, i64 0, i32 1
  %9 = getelementptr inbounds %class.app_node, ptr %4, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %4, align 8, !tbaa !219
  store ptr %6, ptr %8, align 8, !tbaa !241
  store ptr %2, ptr %9, align 8, !tbaa !244
  %10 = icmp eq ptr %6, null
  br i1 %10, label %24, label %11

11:                                               ; preds = %3
  %12 = getelementptr inbounds %class.arg_node, ptr %6, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !227
  %14 = icmp eq ptr %13, null
  %15 = getelementptr inbounds %class.arg_node, ptr %1, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8
  %17 = icmp eq ptr %16, null
  %18 = select i1 %14, i1 true, i1 %17
  br i1 %18, label %22, label %19

19:                                               ; preds = %11
  %20 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %13, ptr noundef nonnull dereferenceable(1) %16) #29
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %33, label %24

22:                                               ; preds = %11
  %23 = select i1 %14, i1 %17, i1 false
  br i1 %23, label %33, label %24

24:                                               ; preds = %22, %19, %3
  %25 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !252
  %27 = icmp eq ptr %26, null
  br i1 %27, label %33, label %28

28:                                               ; preds = %24
  %29 = load ptr, ptr %26, align 8, !tbaa !219
  %30 = getelementptr inbounds ptr, ptr %29, i64 15
  %31 = load ptr, ptr %30, align 8
  %32 = call noundef signext i16 %31(ptr noundef nonnull align 8 dereferenceable(16) %26, ptr noundef %1, ptr noundef nonnull %4) #30
  br label %33

33:                                               ; preds = %28, %24, %22, %19
  %34 = phi i16 [ 0, %22 ], [ %32, %28 ], [ 0, %24 ], [ 0, %19 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %4) #27
  ret i16 %34
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZNK8lam_node4bindEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #13 comdat align 2 {
  ret ptr null
}

; Function Attrs: optsize uwtable
define internal noundef ptr @_ZN8lam_node11reduce_varsEPK9alst_nodeiPi(ptr noundef nonnull returned align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.stack_frame, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !250
  %8 = getelementptr inbounds %class.node, ptr %5, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !225
  %9 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !219
  store ptr %7, ptr %9, align 8, !tbaa !241
  store ptr %1, ptr %10, align 8, !tbaa !244
  %11 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = load ptr, ptr %12, align 8, !tbaa !219
  %14 = getelementptr inbounds ptr, ptr %13, i64 17
  %15 = load ptr, ptr %14, align 8
  %16 = call noundef ptr %15(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %5, i32 noundef %2, ptr noundef %3) #30
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %4
  %19 = load ptr, ptr %11, align 8, !tbaa !252
  %20 = icmp eq ptr %19, %16
  br i1 %20, label %31, label %21

21:                                               ; preds = %18
  %22 = icmp eq ptr %19, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %21
  %24 = load ptr, ptr %19, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 2
  %26 = load ptr, ptr %25, align 8
  call void %26(ptr noundef nonnull align 8 dereferenceable(16) %19) #28
  br label %27

27:                                               ; preds = %23, %21
  store ptr %16, ptr %11, align 8, !tbaa !252
  %28 = load ptr, ptr %16, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 12
  %30 = load ptr, ptr %29, align 8
  call void %30(ptr noundef nonnull align 8 dereferenceable(16) %16, ptr noundef nonnull %0) #30
  br label %31

31:                                               ; preds = %27, %18, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret ptr %0
}

; Function Attrs: optsize uwtable
define internal void @_ZN8lam_node6renameEP8arg_nodePKcP9alst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = alloca %class.stack_frame, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !250
  %8 = getelementptr inbounds %class.node, ptr %5, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !225
  %9 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !219
  store ptr %7, ptr %9, align 8, !tbaa !241
  store ptr %3, ptr %10, align 8, !tbaa !244
  %11 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %12 = load ptr, ptr %11, align 8, !tbaa !252
  %13 = icmp eq ptr %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %4
  %15 = load ptr, ptr %12, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 18
  %17 = load ptr, ptr %16, align 8
  call void %17(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef %1, ptr noundef %2, ptr noundef nonnull %5) #30
  br label %18

18:                                               ; preds = %14, %4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8lam_node18resolve_name_clashEP8arg_nodeP9alst_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %4 = alloca [128 x i8], align 16
  %5 = alloca %class.stack_frame, align 8
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %5) #27
  %6 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !250
  %8 = getelementptr inbounds %class.node, ptr %5, i64 0, i32 1
  store ptr null, ptr %8, align 8, !tbaa !225
  %9 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 1
  %10 = getelementptr inbounds %class.app_node, ptr %5, i64 0, i32 2
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11stack_frame, i64 0, inrange i32 0, i64 2), ptr %5, align 8, !tbaa !219
  store ptr %7, ptr %9, align 8, !tbaa !241
  store ptr %2, ptr %10, align 8, !tbaa !244
  %11 = load ptr, ptr %1, align 8, !tbaa !219
  %12 = getelementptr inbounds ptr, ptr %11, i64 5
  %13 = load ptr, ptr %12, align 8
  %14 = tail call noundef ptr %13(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  %15 = icmp eq ptr %14, null
  br i1 %15, label %81, label %16

16:                                               ; preds = %3
  %17 = load ptr, ptr %0, align 8, !tbaa !219
  %18 = getelementptr inbounds ptr, ptr %17, i64 6
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %25 = icmp eq ptr %20, null
  %26 = icmp eq ptr %24, null
  %27 = or i1 %25, %26
  %28 = icmp eq ptr %20, %1
  %29 = or i1 %28, %27
  br i1 %29, label %66, label %30

30:                                               ; preds = %16
  %31 = load ptr, ptr %1, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 5
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  %35 = load ptr, ptr %34, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 15
  %37 = load ptr, ptr %36, align 8
  %38 = call noundef signext i16 %37(ptr noundef nonnull align 8 dereferenceable(16) %34, ptr noundef nonnull %20, ptr noundef nonnull %5) #30
  %39 = load ptr, ptr %24, align 8, !tbaa !219
  %40 = getelementptr inbounds ptr, ptr %39, i64 15
  %41 = load ptr, ptr %40, align 8
  %42 = call noundef signext i16 %41(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef nonnull %1, ptr noundef nonnull %5) #30
  %43 = icmp ne i16 %38, 0
  %44 = icmp ne i16 %42, 0
  %45 = and i1 %43, %44
  br i1 %45, label %46, label %66

46:                                               ; preds = %30
  %47 = load ptr, ptr %20, align 8, !tbaa !219
  %48 = getelementptr inbounds ptr, ptr %47, i64 4
  %49 = load ptr, ptr %48, align 8
  %50 = call noundef ptr %49(ptr noundef nonnull align 8 dereferenceable(32) %20) #30
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %4) #27
  %51 = icmp eq ptr %50, null
  %52 = select i1 %51, ptr @.str.29, ptr %50
  %53 = load i32, ptr @_ZL13name_sequence, align 4, !tbaa !217
  %54 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %4, ptr noundef nonnull dereferenceable(1) @.str.30, ptr noundef nonnull %52, i32 noundef %53) #28
  %55 = load i32, ptr @_ZL13name_sequence, align 4, !tbaa !217
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr @_ZL13name_sequence, align 4, !tbaa !217
  %57 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %4) #29
  %58 = add i64 %57, 1
  %59 = call noalias noundef nonnull ptr @_Znam(i64 noundef %58) #31
  %60 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %59, ptr noundef nonnull dereferenceable(1) %4) #28
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %4) #27
  %61 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %62 = load ptr, ptr %61, align 8, !tbaa !252
  %63 = load ptr, ptr %62, align 8, !tbaa !219
  %64 = getelementptr inbounds ptr, ptr %63, i64 18
  %65 = load ptr, ptr %64, align 8
  call void %65(ptr noundef nonnull align 8 dereferenceable(16) %62, ptr noundef nonnull %20, ptr noundef nonnull %59, ptr noundef nonnull %5) #30
  call void @_ZN8arg_node8set_nameEPKc(ptr noundef nonnull align 8 dereferenceable(32) %20, ptr noundef nonnull %59) #30
  call void @_ZdaPv(ptr noundef nonnull %59) #32
  br label %66

66:                                               ; preds = %46, %30, %16
  %67 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %68 = load ptr, ptr %67, align 8, !tbaa !252
  %69 = icmp eq ptr %68, null
  br i1 %69, label %81, label %70

70:                                               ; preds = %66
  %71 = load ptr, ptr %68, align 8, !tbaa !219
  %72 = getelementptr inbounds ptr, ptr %71, i64 15
  %73 = load ptr, ptr %72, align 8
  %74 = call noundef signext i16 %73(ptr noundef nonnull align 8 dereferenceable(16) %68, ptr noundef nonnull %1, ptr noundef nonnull %5) #30
  %75 = icmp eq i16 %74, 0
  br i1 %75, label %81, label %76

76:                                               ; preds = %70
  %77 = load ptr, ptr %67, align 8, !tbaa !252
  %78 = load ptr, ptr %77, align 8, !tbaa !219
  %79 = getelementptr inbounds ptr, ptr %78, i64 19
  %80 = load ptr, ptr %79, align 8
  call void %80(ptr noundef nonnull align 8 dereferenceable(16) %77, ptr noundef nonnull %1, ptr noundef nonnull %5) #30
  br label %81

81:                                               ; preds = %76, %70, %66, %3
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %5) #27
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef i32 @_ZNK8lam_nodeeqERK8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) unnamed_addr #6 align 2 {
  %3 = load ptr, ptr %1, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 3
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef i32 %5(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %7 = icmp eq i32 %6, 4
  br i1 %7, label %8, label %68

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 6
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %68, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %1, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 6
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %19 = icmp eq ptr %18, null
  br i1 %19, label %68, label %20

20:                                               ; preds = %14
  %21 = load ptr, ptr %0, align 8, !tbaa !219
  %22 = getelementptr inbounds ptr, ptr %21, i64 7
  %23 = load ptr, ptr %22, align 8
  %24 = tail call noundef ptr %23(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %68, label %26

26:                                               ; preds = %20
  %27 = load ptr, ptr %1, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %31 = icmp eq ptr %30, null
  br i1 %31, label %68, label %32

32:                                               ; preds = %26
  %33 = load ptr, ptr %0, align 8, !tbaa !219
  %34 = getelementptr inbounds ptr, ptr %33, i64 6
  %35 = load ptr, ptr %34, align 8
  %36 = tail call noundef ptr %35(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %37 = load ptr, ptr %1, align 8, !tbaa !219
  %38 = getelementptr inbounds ptr, ptr %37, i64 6
  %39 = load ptr, ptr %38, align 8
  %40 = tail call noundef ptr %39(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %41 = getelementptr inbounds %class.arg_node, ptr %36, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !227
  %43 = icmp eq ptr %42, null
  %44 = getelementptr inbounds %class.arg_node, ptr %40, i64 0, i32 1
  %45 = load ptr, ptr %44, align 8
  %46 = icmp eq ptr %45, null
  %47 = select i1 %43, i1 true, i1 %46
  br i1 %47, label %51, label %48

48:                                               ; preds = %32
  %49 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull dereferenceable(1) %45) #29
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %53, label %68

51:                                               ; preds = %32
  %52 = select i1 %43, i1 %46, i1 false
  br i1 %52, label %53, label %68

53:                                               ; preds = %51, %48
  %54 = load ptr, ptr %0, align 8, !tbaa !219
  %55 = getelementptr inbounds ptr, ptr %54, i64 7
  %56 = load ptr, ptr %55, align 8
  %57 = tail call noundef ptr %56(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %58 = load ptr, ptr %1, align 8, !tbaa !219
  %59 = getelementptr inbounds ptr, ptr %58, i64 7
  %60 = load ptr, ptr %59, align 8
  %61 = tail call noundef ptr %60(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  %62 = load ptr, ptr %57, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 20
  %64 = load ptr, ptr %63, align 8
  %65 = tail call noundef i32 %64(ptr noundef nonnull align 8 dereferenceable(16) %57, ptr noundef nonnull align 8 dereferenceable(16) %61) #30
  %66 = icmp ne i32 %65, 0
  %67 = zext i1 %66 to i32
  br label %68

68:                                               ; preds = %53, %51, %48, %26, %20, %14, %8, %2
  %69 = phi i32 [ 0, %2 ], [ 0, %14 ], [ 0, %8 ], [ 0, %26 ], [ 0, %20 ], [ 0, %51 ], [ %67, %53 ], [ 0, %48 ]
  ret i32 %69
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN8lam_node11export_bodyEv(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #13 comdat align 2 {
  %2 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %3 = load ptr, ptr %2, align 8, !tbaa !252
  store ptr null, ptr %2, align 8, !tbaa !252
  ret ptr %3
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8lam_node12extract_defsEPK9alst_node(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = load ptr, ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds ptr, ptr %3, i64 24
  %5 = load ptr, ptr %4, align 8
  %6 = tail call noundef ptr %5(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %58

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !219
  %10 = getelementptr inbounds ptr, ptr %9, i64 7
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %13 = icmp eq ptr %12, null
  br i1 %13, label %72, label %14

14:                                               ; preds = %8
  %15 = load ptr, ptr %0, align 8, !tbaa !219
  %16 = getelementptr inbounds ptr, ptr %15, i64 7
  %17 = load ptr, ptr %16, align 8
  %18 = tail call noundef ptr %17(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %19 = load ptr, ptr %18, align 8, !tbaa !219
  %20 = getelementptr inbounds ptr, ptr %19, i64 25
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef %1) #30
  %23 = icmp eq ptr %22, null
  br i1 %23, label %38, label %24

24:                                               ; preds = %14
  %25 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !252
  %27 = icmp eq ptr %26, %22
  br i1 %27, label %38, label %28

28:                                               ; preds = %24
  %29 = icmp eq ptr %26, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %28
  %31 = load ptr, ptr %26, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  tail call void %33(ptr noundef nonnull align 8 dereferenceable(16) %26) #28
  br label %34

34:                                               ; preds = %30, %28
  store ptr %22, ptr %25, align 8, !tbaa !252
  %35 = load ptr, ptr %22, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 12
  %37 = load ptr, ptr %36, align 8
  tail call void %37(ptr noundef nonnull align 8 dereferenceable(16) %22, ptr noundef nonnull %0) #30
  br label %38

38:                                               ; preds = %34, %24, %14
  %39 = load ptr, ptr %0, align 8, !tbaa !219
  %40 = getelementptr inbounds ptr, ptr %39, i64 24
  %41 = load ptr, ptr %40, align 8
  %42 = tail call noundef ptr %41(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %1) #30
  %43 = icmp eq ptr %42, null
  br i1 %43, label %72, label %44

44:                                               ; preds = %38
  %45 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %46 = load ptr, ptr %42, align 8, !tbaa !219
  %47 = getelementptr inbounds ptr, ptr %46, i64 6
  %48 = load ptr, ptr %47, align 8
  %49 = invoke noundef ptr %48(ptr noundef nonnull align 8 dereferenceable(16) %42) #30
          to label %50 unwind label %56

50:                                               ; preds = %44
  %51 = load ptr, ptr %49, align 8, !tbaa !219
  %52 = getelementptr inbounds ptr, ptr %51, i64 4
  %53 = load ptr, ptr %52, align 8
  %54 = invoke noundef ptr %53(ptr noundef nonnull align 8 dereferenceable(32) %49) #30
          to label %55 unwind label %56

55:                                               ; preds = %50
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %45, ptr noundef %54) #30
          to label %72 unwind label %56

56:                                               ; preds = %55, %50, %44
  %57 = landingpad { ptr, i32 }
          cleanup
  br label %74

58:                                               ; preds = %2
  %59 = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %60 = load ptr, ptr %6, align 8, !tbaa !219
  %61 = getelementptr inbounds ptr, ptr %60, i64 6
  %62 = load ptr, ptr %61, align 8
  %63 = invoke noundef ptr %62(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
          to label %64 unwind label %70

64:                                               ; preds = %58
  %65 = load ptr, ptr %63, align 8, !tbaa !219
  %66 = getelementptr inbounds ptr, ptr %65, i64 4
  %67 = load ptr, ptr %66, align 8
  %68 = invoke noundef ptr %67(ptr noundef nonnull align 8 dereferenceable(32) %63) #30
          to label %69 unwind label %70

69:                                               ; preds = %64
  invoke void @_ZN8var_nodeC2EPKc(ptr noundef nonnull align 8 dereferenceable(24) %59, ptr noundef %68) #30
          to label %72 unwind label %70

70:                                               ; preds = %69, %64, %58
  %71 = landingpad { ptr, i32 }
          cleanup
  br label %74

72:                                               ; preds = %69, %55, %38, %8
  %73 = phi ptr [ %0, %8 ], [ %0, %38 ], [ %45, %55 ], [ %59, %69 ]
  ret ptr %73

74:                                               ; preds = %70, %56
  %75 = phi ptr [ %59, %70 ], [ %45, %56 ]
  %76 = phi { ptr, i32 } [ %71, %70 ], [ %57, %56 ]
  tail call void @_ZdlPv(ptr noundef nonnull %75) #32
  resume { ptr, i32 } %76
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZNK8lam_node7extractEPKci(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #6 align 2 {
  %4 = load ptr, ptr %0, align 8, !tbaa !219
  %5 = getelementptr inbounds ptr, ptr %4, i64 7
  %6 = load ptr, ptr %5, align 8
  %7 = tail call noundef ptr %6(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %8 = icmp eq ptr %7, null
  br i1 %8, label %43, label %9

9:                                                ; preds = %3
  %10 = load ptr, ptr %0, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 6
  %12 = load ptr, ptr %11, align 8
  %13 = tail call noundef ptr %12(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %14 = icmp eq ptr %13, null
  br i1 %14, label %43, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %0, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 7
  %18 = load ptr, ptr %17, align 8
  %19 = tail call noundef ptr %18(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %20 = load ptr, ptr %0, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 6
  %22 = load ptr, ptr %21, align 8
  %23 = tail call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %24 = load ptr, ptr %23, align 8, !tbaa !219
  %25 = getelementptr inbounds ptr, ptr %24, i64 4
  %26 = load ptr, ptr %25, align 8
  %27 = tail call noundef ptr %26(ptr noundef nonnull align 8 dereferenceable(32) %23) #30
  %28 = load ptr, ptr %19, align 8, !tbaa !219
  %29 = getelementptr inbounds ptr, ptr %28, i64 26
  %30 = load ptr, ptr %29, align 8
  %31 = tail call noundef ptr %30(ptr noundef nonnull align 8 dereferenceable(16) %19, ptr noundef %27, i32 noundef %2) #30
  %32 = icmp ne ptr %31, null
  %33 = icmp ne ptr %1, null
  %34 = and i1 %33, %32
  br i1 %34, label %35, label %43

35:                                               ; preds = %15
  %36 = load ptr, ptr %31, align 8, !tbaa !219
  %37 = getelementptr inbounds ptr, ptr %36, i64 26
  %38 = load ptr, ptr %37, align 8
  %39 = tail call noundef ptr %38(ptr noundef nonnull align 8 dereferenceable(16) %31, ptr noundef nonnull %1, i32 noundef %2) #30
  %40 = load ptr, ptr %31, align 8, !tbaa !219
  %41 = getelementptr inbounds ptr, ptr %40, i64 2
  %42 = load ptr, ptr %41, align 8
  tail call void %42(ptr noundef nonnull align 8 dereferenceable(16) %31) #28
  br label %43

43:                                               ; preds = %35, %15, %9, %3
  %44 = phi ptr [ null, %9 ], [ null, %3 ], [ %39, %35 ], [ %31, %15 ]
  ret ptr %44
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN8lam_node10eta_reduceEPK9alst_nodeiPi(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i32 noundef %2, ptr noundef %3) unnamed_addr #6 align 2 {
  %5 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !252
  %7 = icmp eq ptr %6, null
  br i1 %7, label %137, label %8

8:                                                ; preds = %4
  %9 = and i32 %2, 1
  %10 = icmp ne i32 %9, 0
  %11 = icmp ne ptr %3, null
  %12 = and i1 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %8
  %14 = load i32, ptr %3, align 4, !tbaa !217
  %15 = and i32 %14, 2
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %137

17:                                               ; preds = %13, %8
  %18 = load ptr, ptr %6, align 8, !tbaa !219
  %19 = getelementptr inbounds ptr, ptr %18, i64 3
  %20 = load ptr, ptr %19, align 8
  %21 = tail call noundef i32 %20(ptr noundef nonnull align 8 dereferenceable(16) %6) #30
  %22 = icmp eq i32 %21, 5
  %23 = and i32 %2, 2
  %24 = icmp eq i32 %23, 0
  %25 = and i1 %24, %22
  br i1 %25, label %26, label %137

26:                                               ; preds = %17
  %27 = load ptr, ptr %0, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 7
  %29 = load ptr, ptr %28, align 8
  %30 = tail call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %31 = load ptr, ptr %30, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 8
  %33 = load ptr, ptr %32, align 8
  %34 = tail call noundef ptr %33(ptr noundef nonnull align 8 dereferenceable(16) %30) #30
  %35 = icmp eq ptr %34, null
  br i1 %35, label %137, label %36

36:                                               ; preds = %26
  %37 = load ptr, ptr %5, align 8, !tbaa !252
  %38 = load ptr, ptr %37, align 8, !tbaa !219
  %39 = getelementptr inbounds ptr, ptr %38, i64 8
  %40 = load ptr, ptr %39, align 8
  %41 = tail call noundef ptr %40(ptr noundef nonnull align 8 dereferenceable(16) %37) #30
  %42 = load ptr, ptr %41, align 8, !tbaa !219
  %43 = getelementptr inbounds ptr, ptr %42, i64 17
  %44 = load ptr, ptr %43, align 8
  %45 = tail call noundef ptr %44(ptr noundef nonnull align 8 dereferenceable(16) %41, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %46 = icmp eq ptr %45, null
  br i1 %46, label %65, label %47

47:                                               ; preds = %36
  %48 = load ptr, ptr %0, align 8, !tbaa !219
  %49 = getelementptr inbounds ptr, ptr %48, i64 7
  %50 = load ptr, ptr %49, align 8
  %51 = tail call noundef ptr %50(ptr noundef nonnull align 8 dereferenceable(32) %0) #30
  %52 = getelementptr inbounds %class.app_node, ptr %51, i64 0, i32 1
  %53 = load ptr, ptr %52, align 8, !tbaa !235
  %54 = icmp eq ptr %53, %45
  br i1 %54, label %65, label %55

55:                                               ; preds = %47
  %56 = icmp eq ptr %53, null
  br i1 %56, label %61, label %57

57:                                               ; preds = %55
  %58 = load ptr, ptr %53, align 8, !tbaa !219
  %59 = getelementptr inbounds ptr, ptr %58, i64 2
  %60 = load ptr, ptr %59, align 8
  tail call void %60(ptr noundef nonnull align 8 dereferenceable(16) %53) #28
  br label %61

61:                                               ; preds = %57, %55
  store ptr %45, ptr %52, align 8, !tbaa !235
  %62 = load ptr, ptr %45, align 8, !tbaa !219
  %63 = getelementptr inbounds ptr, ptr %62, i64 12
  %64 = load ptr, ptr %63, align 8
  tail call void %64(ptr noundef nonnull align 8 dereferenceable(16) %45, ptr noundef nonnull %51) #30
  br label %65

65:                                               ; preds = %61, %47, %36
  %66 = load ptr, ptr %5, align 8, !tbaa !252
  %67 = load ptr, ptr %66, align 8, !tbaa !219
  %68 = getelementptr inbounds ptr, ptr %67, i64 9
  %69 = load ptr, ptr %68, align 8
  %70 = tail call noundef ptr %69(ptr noundef nonnull align 8 dereferenceable(16) %66) #30
  %71 = icmp eq ptr %70, null
  br i1 %71, label %137, label %72

72:                                               ; preds = %65
  %73 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !250
  %75 = icmp eq ptr %74, null
  br i1 %75, label %137, label %76

76:                                               ; preds = %72
  %77 = load ptr, ptr %5, align 8, !tbaa !252
  %78 = load ptr, ptr %77, align 8, !tbaa !219
  %79 = getelementptr inbounds ptr, ptr %78, i64 9
  %80 = load ptr, ptr %79, align 8
  %81 = tail call noundef ptr %80(ptr noundef nonnull align 8 dereferenceable(16) %77) #30
  %82 = load ptr, ptr %81, align 8, !tbaa !219
  %83 = getelementptr inbounds ptr, ptr %82, i64 4
  %84 = load ptr, ptr %83, align 8
  %85 = tail call noundef ptr %84(ptr noundef nonnull align 8 dereferenceable(16) %81) #30
  %86 = getelementptr inbounds %class.arg_node, ptr %74, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !227
  %88 = icmp ne ptr %87, null
  %89 = icmp ne ptr %85, null
  %90 = or i1 %89, %88
  br i1 %90, label %91, label %96

91:                                               ; preds = %76
  %92 = and i1 %89, %88
  br i1 %92, label %93, label %137

93:                                               ; preds = %91
  %94 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %87, ptr noundef nonnull dereferenceable(1) %85) #29
  %95 = icmp eq i32 %94, 0
  br i1 %95, label %96, label %137

96:                                               ; preds = %93, %76
  %97 = load ptr, ptr %5, align 8, !tbaa !252
  %98 = load ptr, ptr %97, align 8, !tbaa !219
  %99 = getelementptr inbounds ptr, ptr %98, i64 8
  %100 = load ptr, ptr %99, align 8
  %101 = tail call noundef ptr %100(ptr noundef nonnull align 8 dereferenceable(16) %97) #30
  %102 = load ptr, ptr %73, align 8, !tbaa !250
  %103 = load ptr, ptr %101, align 8, !tbaa !219
  %104 = getelementptr inbounds ptr, ptr %103, i64 15
  %105 = load ptr, ptr %104, align 8
  %106 = tail call noundef signext i16 %105(ptr noundef nonnull align 8 dereferenceable(16) %101, ptr noundef %102, ptr noundef %1) #30
  %107 = icmp eq i16 %106, 0
  br i1 %107, label %108, label %137

108:                                              ; preds = %96
  %109 = load ptr, ptr %5, align 8, !tbaa !252
  %110 = load ptr, ptr %109, align 8, !tbaa !219
  %111 = getelementptr inbounds ptr, ptr %110, i64 22
  %112 = load ptr, ptr %111, align 8
  %113 = tail call noundef ptr %112(ptr noundef nonnull align 8 dereferenceable(16) %109) #30
  %114 = load ptr, ptr %5, align 8, !tbaa !252
  %115 = icmp eq ptr %114, null
  br i1 %115, label %120, label %116

116:                                              ; preds = %108
  %117 = load ptr, ptr %114, align 8, !tbaa !219
  %118 = getelementptr inbounds ptr, ptr %117, i64 2
  %119 = load ptr, ptr %118, align 8
  tail call void %119(ptr noundef nonnull align 8 dereferenceable(16) %114) #28
  store ptr null, ptr %5, align 8, !tbaa !252
  br label %120

120:                                              ; preds = %116, %108
  br i1 %11, label %121, label %124

121:                                              ; preds = %120
  %122 = load i32, ptr %3, align 4, !tbaa !217
  %123 = or i32 %122, 6
  store i32 %123, ptr %3, align 4, !tbaa !217
  br label %124

124:                                              ; preds = %121, %120
  br i1 %10, label %137, label %125

125:                                              ; preds = %124
  %126 = load ptr, ptr %113, align 8, !tbaa !219
  %127 = getelementptr inbounds ptr, ptr %126, i64 13
  %128 = load ptr, ptr %127, align 8
  %129 = tail call noundef ptr %128(ptr noundef nonnull align 8 dereferenceable(16) %113, ptr noundef %1, i32 noundef %2, ptr noundef %3) #30
  %130 = icmp eq ptr %129, null
  %131 = icmp eq ptr %113, %129
  %132 = or i1 %130, %131
  br i1 %132, label %137, label %133

133:                                              ; preds = %125
  %134 = load ptr, ptr %113, align 8, !tbaa !219
  %135 = getelementptr inbounds ptr, ptr %134, i64 2
  %136 = load ptr, ptr %135, align 8
  tail call void %136(ptr noundef nonnull align 8 dereferenceable(16) %113) #28
  br label %137

137:                                              ; preds = %133, %125, %124, %96, %93, %91, %72, %65, %26, %17, %13, %4
  %138 = phi ptr [ %0, %4 ], [ %0, %13 ], [ %0, %26 ], [ %0, %17 ], [ %0, %96 ], [ %113, %124 ], [ %0, %93 ], [ %0, %72 ], [ %0, %65 ], [ %129, %133 ], [ %113, %125 ], [ %0, %91 ]
  ret ptr %138
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8arg_node8set_nameEPKc(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1) #6 comdat align 2 {
  %3 = getelementptr inbounds %class.arg_node, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !227
  %5 = icmp eq ptr %4, %1
  br i1 %5, label %17, label %6

6:                                                ; preds = %2
  %7 = icmp eq ptr %4, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @_ZdaPv(ptr noundef nonnull %4) #32
  br label %9

9:                                                ; preds = %8, %6
  %10 = icmp eq ptr %1, null
  br i1 %10, label %11, label %12

11:                                               ; preds = %9
  store ptr null, ptr %3, align 8, !tbaa !227
  br label %17

12:                                               ; preds = %9
  %13 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %14 = add i64 %13, 1
  %15 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %14) #31
  store ptr %15, ptr %3, align 8, !tbaa !227
  %16 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %15, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %17

17:                                               ; preds = %12, %11, %2
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8lam_nodeC2ERKS_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(32) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !250
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %9

7:                                                ; preds = %2
  %8 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr null, ptr %8, align 8
  br label %19

9:                                                ; preds = %2
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %5) #30
  %13 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr %12, ptr %13, align 8
  %14 = icmp eq ptr %12, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %9
  %16 = load ptr, ptr %12, align 8, !tbaa !219
  %17 = getelementptr inbounds ptr, ptr %16, i64 12
  %18 = load ptr, ptr %17, align 8
  tail call void %18(ptr noundef nonnull align 8 dereferenceable(16) %12, ptr noundef nonnull %0) #30
  br label %19

19:                                               ; preds = %15, %9, %7
  %20 = getelementptr inbounds %class.app_node, ptr %1, i64 0, i32 2
  %21 = load ptr, ptr %20, align 8, !tbaa !252
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr null, ptr %24, align 8
  br label %35

25:                                               ; preds = %19
  %26 = load ptr, ptr %21, align 8, !tbaa !219
  %27 = load ptr, ptr %26, align 8
  %28 = tail call noundef ptr %27(ptr noundef nonnull align 8 dereferenceable(16) %21) #30
  %29 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr %28, ptr %29, align 8
  %30 = icmp eq ptr %28, null
  br i1 %30, label %35, label %31

31:                                               ; preds = %25
  %32 = load ptr, ptr %28, align 8, !tbaa !219
  %33 = getelementptr inbounds ptr, ptr %32, i64 12
  %34 = load ptr, ptr %33, align 8
  tail call void %34(ptr noundef nonnull align 8 dereferenceable(16) %28, ptr noundef nonnull %0) #30
  br label %35

35:                                               ; preds = %31, %25, %23
  store ptr null, ptr %3, align 8, !tbaa !225
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8var_nodeC2ERKS_(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(24) %0, ptr nocapture noundef nonnull readonly align 8 dereferenceable(24) %1) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %3 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %3, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8var_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %4 = getelementptr inbounds %class.var_node, ptr %1, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !231
  %6 = icmp eq ptr %5, null
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %5) #29
  %9 = add i64 %8, 1
  %10 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %9) #31
  %11 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  store ptr %10, ptr %11, align 8, !tbaa !231
  %12 = load ptr, ptr %4, align 8, !tbaa !231
  %13 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %10, ptr noundef nonnull dereferenceable(1) %12) #28
  br label %16

14:                                               ; preds = %2
  %15 = getelementptr inbounds %class.var_node, ptr %0, i64 0, i32 1
  store ptr null, ptr %15, align 8, !tbaa !231
  br label %16

16:                                               ; preds = %14, %7
  store ptr null, ptr %3, align 8, !tbaa !225
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8lam_nodeC2EP8arg_nodeP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [30 x ptr] }, ptr @_ZTV8lam_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @_ZN8lam_node7set_argEP8arg_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %3) #30
  tail call void @_ZN8lam_node8set_bodyEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, i16 noundef signext %3) #30
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8lam_node7set_argEP8arg_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !250
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(32) %5) #28
  br label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !tbaa !250
  br label %29

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %20, %17 ], [ %1, %13 ]
  store ptr %23, ptr %4, align 8, !tbaa !250
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %0) #30
  br label %29

29:                                               ; preds = %25, %22, %21, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8lam_node8set_bodyEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !252
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !tbaa !252
  br label %29

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %20, %17 ], [ %1, %13 ]
  store ptr %23, ptr %4, align 8, !tbaa !252
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %0) #30
  br label %29

29:                                               ; preds = %25, %22, %21, %3
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8app_node8set_leftEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !235
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !tbaa !235
  br label %29

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %20, %17 ], [ %1, %13 ]
  store ptr %23, ptr %4, align 8, !tbaa !235
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %0) #30
  br label %29

29:                                               ; preds = %25, %22, %21, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN8app_nodeC2EP8exp_nodeS1_s(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [29 x ptr] }, ptr @_ZTV8app_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %6 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %6, i8 0, i64 16, i1 false)
  tail call void @_ZN8app_node8set_leftEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %3) #30
  tail call void @_ZN8app_node9set_rightEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %2, i16 noundef signext %3) #30
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal void @_ZN8app_node9set_rightEP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, i16 noundef signext %2) #6 align 2 {
  %4 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !237
  %6 = icmp eq ptr %5, %1
  br i1 %6, label %29, label %7

7:                                                ; preds = %3
  %8 = icmp eq ptr %5, null
  br i1 %8, label %13, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %5, align 8, !tbaa !219
  %11 = getelementptr inbounds ptr, ptr %10, i64 2
  %12 = load ptr, ptr %11, align 8
  tail call void %12(ptr noundef nonnull align 8 dereferenceable(16) %5) #28
  br label %13

13:                                               ; preds = %9, %7
  %14 = icmp eq i16 %2, 0
  br i1 %14, label %15, label %22

15:                                               ; preds = %13
  %16 = icmp eq ptr %1, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = load ptr, ptr %1, align 8, !tbaa !219
  %19 = load ptr, ptr %18, align 8
  %20 = tail call noundef ptr %19(ptr noundef nonnull align 8 dereferenceable(16) %1) #30
  br label %22

21:                                               ; preds = %15
  store ptr null, ptr %4, align 8, !tbaa !237
  br label %29

22:                                               ; preds = %17, %13
  %23 = phi ptr [ %20, %17 ], [ %1, %13 ]
  store ptr %23, ptr %4, align 8, !tbaa !237
  %24 = icmp eq ptr %23, null
  br i1 %24, label %29, label %25

25:                                               ; preds = %22
  %26 = load ptr, ptr %23, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 12
  %28 = load ptr, ptr %27, align 8
  tail call void %28(ptr noundef nonnull align 8 dereferenceable(16) %23, ptr noundef nonnull %0) #30
  br label %29

29:                                               ; preds = %25, %22, %21, %3
  ret void
}

; Function Attrs: optsize uwtable
define internal void @_ZN11arglst_nodeC2EP8arg_nodePS_s(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, i16 noundef signext %3) unnamed_addr #11 align 2 personality ptr @__gxx_personality_v0 {
  %5 = getelementptr inbounds %class.node, ptr %0, i64 0, i32 1
  store ptr null, ptr %5, align 8, !tbaa !225
  store ptr getelementptr inbounds ({ [20 x ptr] }, ptr @_ZTV11arglst_node, i64 0, inrange i32 0, i64 2), ptr %0, align 8, !tbaa !219
  %6 = icmp eq i16 %3, 0
  br i1 %6, label %7, label %13

7:                                                ; preds = %4
  %8 = icmp eq ptr %1, null
  br i1 %8, label %15, label %9

9:                                                ; preds = %7
  %10 = load ptr, ptr %1, align 8, !tbaa !219
  %11 = load ptr, ptr %10, align 8
  %12 = tail call noundef ptr %11(ptr noundef nonnull align 8 dereferenceable(32) %1) #30
  br label %15

13:                                               ; preds = %4
  %14 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr %1, ptr %14, align 8, !tbaa !241
  br label %23

15:                                               ; preds = %9, %7
  %16 = phi ptr [ %12, %9 ], [ null, %7 ]
  %17 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 1
  store ptr %16, ptr %17, align 8
  %18 = icmp eq ptr %2, null
  br i1 %18, label %23, label %19

19:                                               ; preds = %15
  %20 = load ptr, ptr %2, align 8, !tbaa !219
  %21 = load ptr, ptr %20, align 8
  %22 = tail call noundef ptr %21(ptr noundef nonnull align 8 dereferenceable(32) %2) #30
  br label %23

23:                                               ; preds = %19, %15, %13
  %24 = phi ptr [ %22, %19 ], [ %2, %13 ], [ null, %15 ]
  %25 = getelementptr inbounds %class.app_node, ptr %0, i64 0, i32 2
  store ptr %24, ptr %25, align 8, !tbaa !244
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN24lambda_expression_parserC2EP12token_stream(ptr nocapture noundef nonnull writeonly align 8 dereferenceable(12) %0, ptr noundef %1) unnamed_addr #18 align 2 {
  store ptr %1, ptr %0, align 8, !tbaa !256
  %3 = getelementptr inbounds %class.lambda_expression_parser, ptr %0, i64 0, i32 1
  store i32 0, ptr %3, align 8, !tbaa !258
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @_ZN24lambda_expression_parserD2Ev(ptr nocapture nonnull align 8 %0) unnamed_addr #19 align 2 {
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0, ptr noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = load ptr, ptr %0, align 8, !tbaa !256
  %5 = icmp eq ptr %4, null
  br i1 %5, label %168, label %6

6:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %7 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %4, ptr noundef nonnull %3) #30
  %8 = load ptr, ptr %0, align 8, !tbaa !256
  %9 = load ptr, ptr %3, align 8, !tbaa !213
  %10 = call noundef i32 @_ZN12token_stream9is_headerENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %8, i32 noundef %7, ptr noundef %9) #30
  switch i32 %10, label %162 [
    i32 0, label %158
    i32 4, label %11
    i32 1, label %15
    i32 2, label %17
    i32 7, label %132
    i32 5, label %19
    i32 6, label %28
  ]

11:                                               ; preds = %6
  %12 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8arg_nodeC1EPKcPK8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull @.str.15, ptr noundef null, i16 noundef signext 0) #30
          to label %162 unwind label %13

13:                                               ; preds = %11
  %14 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %12) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  resume { ptr, i32 } %14

15:                                               ; preds = %6
  %16 = call noundef ptr @_ZN24lambda_expression_parser10definitionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) #30
  br label %162

17:                                               ; preds = %6
  %18 = call noundef ptr @_ZN24lambda_expression_parser4loadEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef %1) #30
  br label %162

19:                                               ; preds = %6
  %20 = icmp eq ptr %1, null
  br i1 %20, label %162, label %21

21:                                               ; preds = %19
  %22 = load ptr, ptr %1, align 8, !tbaa !213
  %23 = icmp eq ptr %22, null
  br i1 %23, label %162, label %24

24:                                               ; preds = %21
  %25 = load ptr, ptr %22, align 8, !tbaa !219
  %26 = getelementptr inbounds ptr, ptr %25, i64 17
  %27 = load ptr, ptr %26, align 8
  call void %27(ptr noundef nonnull align 8 dereferenceable(32) %22) #30
  br label %162

28:                                               ; preds = %33, %6
  %29 = phi i32 [ %34, %33 ], [ 0, %6 ]
  %30 = phi i1 [ true, %33 ], [ false, %6 ]
  %31 = load ptr, ptr %0, align 8, !tbaa !256
  %32 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %31, ptr noundef nonnull %3) #30
  switch i32 %32, label %33 [
    i32 11, label %108
    i32 8, label %35
  ]

33:                                               ; preds = %104, %101, %97, %90, %83, %76, %69, %62, %58, %54, %50, %46, %39, %28
  %34 = phi i32 [ %29, %39 ], [ %29, %50 ], [ %29, %46 ], [ %29, %58 ], [ %29, %54 ], [ %29, %62 ], [ %29, %69 ], [ %29, %76 ], [ %29, %83 ], [ %29, %90 ], [ %29, %97 ], [ %29, %104 ], [ 1, %101 ], [ 1, %28 ]
  br label %28, !llvm.loop !259

35:                                               ; preds = %28
  %36 = load ptr, ptr %3, align 8, !tbaa !213
  %37 = call i32 @strcasecmp(ptr noundef nonnull @.str.1.16, ptr noundef %36) #29
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, ptr @trace_lambda, align 4, !tbaa !217
  %41 = icmp eq i32 %40, 0
  %42 = zext i1 %41 to i32
  store i32 %42, ptr @trace_lambda, align 4, !tbaa !217
  br label %33

43:                                               ; preds = %35
  %44 = call i32 @strcasecmp(ptr noundef nonnull @.str.2.19, ptr noundef %36) #29
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %43
  %47 = load i32, ptr @step_lambda, align 4, !tbaa !217
  %48 = icmp eq i32 %47, 0
  %49 = zext i1 %48 to i32
  store i32 %49, ptr @step_lambda, align 4, !tbaa !217
  br i1 %48, label %50, label %33

50:                                               ; preds = %46
  store i32 0, ptr @step_thru, align 4, !tbaa !217
  br label %33

51:                                               ; preds = %43
  %52 = call i32 @strcasecmp(ptr noundef nonnull @.str.3.24, ptr noundef %36) #29
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load i32, ptr @step_thru, align 4, !tbaa !217
  %56 = icmp eq i32 %55, 0
  %57 = zext i1 %56 to i32
  store i32 %57, ptr @step_thru, align 4, !tbaa !217
  br i1 %56, label %58, label %33

58:                                               ; preds = %54
  store i32 0, ptr @step_lambda, align 4, !tbaa !217
  br label %33

59:                                               ; preds = %51
  %60 = call i32 @strcasecmp(ptr noundef nonnull @.str.4.25, ptr noundef %36) #29
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %59
  %63 = load i32, ptr @print_symbols, align 4, !tbaa !217
  %64 = icmp eq i32 %63, 0
  %65 = zext i1 %64 to i32
  store i32 %65, ptr @print_symbols, align 4, !tbaa !217
  br label %33

66:                                               ; preds = %59
  %67 = call i32 @strcasecmp(ptr noundef nonnull @.str.5.28, ptr noundef %36) #29
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %66
  %70 = load i32, ptr @applicative_order, align 4, !tbaa !217
  %71 = icmp eq i32 %70, 0
  %72 = zext i1 %71 to i32
  store i32 %72, ptr @applicative_order, align 4, !tbaa !217
  br label %33

73:                                               ; preds = %66
  %74 = call i32 @strcasecmp(ptr noundef nonnull @.str.6.31, ptr noundef %36) #29
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %76, label %80

76:                                               ; preds = %73
  %77 = load i32, ptr @reduce_body, align 4, !tbaa !217
  %78 = icmp eq i32 %77, 0
  %79 = zext i1 %78 to i32
  store i32 %79, ptr @reduce_body, align 4, !tbaa !217
  br label %33

80:                                               ; preds = %73
  %81 = call i32 @strcasecmp(ptr noundef nonnull @.str.7.34, ptr noundef %36) #29
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %87

83:                                               ; preds = %80
  %84 = load i32, ptr @brief_print, align 4, !tbaa !217
  %85 = icmp eq i32 %84, 0
  %86 = zext i1 %85 to i32
  store i32 %86, ptr @brief_print, align 4, !tbaa !217
  br label %33

87:                                               ; preds = %80
  %88 = call i32 @strcasecmp(ptr noundef nonnull @.str.8.37, ptr noundef %36) #29
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %87
  %91 = load i32, ptr @extract_eta, align 4, !tbaa !217
  %92 = icmp eq i32 %91, 0
  %93 = zext i1 %92 to i32
  store i32 %93, ptr @extract_eta, align 4, !tbaa !217
  br label %33

94:                                               ; preds = %87
  %95 = call i32 @strcasecmp(ptr noundef nonnull @.str.9.38, ptr noundef %36) #29
  %96 = icmp eq i32 %95, 0
  br i1 %96, label %97, label %101

97:                                               ; preds = %94
  %98 = load i32, ptr @extract_app, align 4, !tbaa !217
  %99 = icmp eq i32 %98, 0
  %100 = zext i1 %99 to i32
  store i32 %100, ptr @extract_app, align 4, !tbaa !217
  br label %33

101:                                              ; preds = %94
  %102 = call i32 @strcasecmp(ptr noundef nonnull @.str.10.39, ptr noundef %36) #29
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %33

104:                                              ; preds = %101
  %105 = load i32, ptr @reduce_fully, align 4, !tbaa !217
  %106 = icmp eq i32 %105, 0
  %107 = zext i1 %106 to i32
  store i32 %107, ptr @reduce_fully, align 4, !tbaa !217
  br label %33

108:                                              ; preds = %28
  %.lcssa1 = phi i32 [ %29, %28 ]
  %.lcssa = phi i1 [ %30, %28 ]
  %109 = icmp eq i32 %.lcssa1, 0
  %110 = and i1 %109, %.lcssa
  br i1 %110, label %162, label %111

111:                                              ; preds = %108
  %112 = load i32, ptr @trace_lambda, align 4, !tbaa !217
  %113 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11.42, i32 noundef %112) #30
  %114 = load i32, ptr @step_lambda, align 4, !tbaa !217
  %115 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i32 noundef %114) #30
  %116 = load i32, ptr @step_thru, align 4, !tbaa !217
  %117 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13.43, i32 noundef %116) #30
  %118 = load i32, ptr @applicative_order, align 4, !tbaa !217
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i32 noundef %118) #30
  %120 = load i32, ptr @reduce_body, align 4, !tbaa !217
  %121 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15.44, i32 noundef %120) #30
  %122 = load i32, ptr @brief_print, align 4, !tbaa !217
  %123 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, i32 noundef %122) #30
  %124 = load i32, ptr @print_symbols, align 4, !tbaa !217
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17.45, i32 noundef %124) #30
  %126 = load i32, ptr @extract_eta, align 4, !tbaa !217
  %127 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.18.46, i32 noundef %126) #30
  %128 = load i32, ptr @extract_app, align 4, !tbaa !217
  %129 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.19, i32 noundef %128) #30
  %130 = load i32, ptr @reduce_fully, align 4, !tbaa !217
  %131 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.20.47, i32 noundef %130) #30
  br label %162

132:                                              ; preds = %6
  %133 = load i32, ptr @extract_eta, align 4, !tbaa !217
  %134 = icmp eq i32 %133, 0
  %135 = select i1 %134, i32 0, i32 64
  %136 = load i32, ptr @extract_app, align 4, !tbaa !217
  %137 = icmp eq i32 %136, 0
  %138 = or i32 %135, 128
  %139 = select i1 %137, i32 %135, i32 %138
  %140 = call noundef ptr @_ZN24lambda_expression_parser10extractionEPP11arglst_nodei(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr poison, i32 noundef %139) #30
  %141 = icmp eq ptr %1, null
  br i1 %141, label %144, label %142

142:                                              ; preds = %132
  %143 = load ptr, ptr %1, align 8, !tbaa !213
  br label %144

144:                                              ; preds = %142, %132
  %145 = phi ptr [ %143, %142 ], [ null, %132 ]
  %146 = icmp eq ptr %140, null
  br i1 %146, label %162, label %147

147:                                              ; preds = %144
  %148 = load i32, ptr @brief_print, align 4, !tbaa !217
  %149 = icmp eq i32 %148, 0
  %150 = select i1 %149, i32 0, i32 16
  %151 = load ptr, ptr %140, align 8, !tbaa !219
  %152 = getelementptr inbounds ptr, ptr %151, i64 14
  %153 = load ptr, ptr %152, align 8
  call void %153(ptr noundef nonnull align 8 dereferenceable(16) %140, ptr noundef %145, i32 noundef %150) #30
  %154 = call i32 @putchar(i32 10)
  %155 = load ptr, ptr %140, align 8, !tbaa !219
  %156 = getelementptr inbounds ptr, ptr %155, i64 2
  %157 = load ptr, ptr %156, align 8
  call void %157(ptr noundef nonnull align 8 dereferenceable(16) %140) #28
  br label %162

158:                                              ; preds = %6
  %159 = load ptr, ptr %0, align 8, !tbaa !256
  %160 = load ptr, ptr %3, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %159, i32 noundef %7, ptr noundef %160) #30
  %161 = call noundef ptr @_ZN24lambda_expression_parser11applicationEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  br label %162

162:                                              ; preds = %158, %147, %144, %111, %108, %24, %21, %19, %17, %15, %11, %6
  %163 = phi ptr [ null, %24 ], [ null, %21 ], [ null, %19 ], [ null, %17 ], [ null, %15 ], [ %161, %158 ], [ null, %6 ], [ %12, %11 ], [ null, %108 ], [ null, %111 ], [ null, %147 ], [ null, %144 ]
  %164 = load ptr, ptr %0, align 8, !tbaa !256
  %165 = icmp eq ptr %164, null
  br i1 %165, label %167, label %166

166:                                              ; preds = %162
  call void @_ZN12token_stream11reset_tokenEv(ptr noundef nonnull align 8 dereferenceable(8756) %164) #30
  br label %167

167:                                              ; preds = %166, %162
  call void @_ZN4node5resetEv() #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %168

168:                                              ; preds = %167, %2
  %169 = phi ptr [ %163, %167 ], [ null, %2 ]
  ret ptr %169
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser10definitionEPP11arglst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0, ptr noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !256
  %6 = icmp eq ptr %5, null
  br i1 %6, label %51, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %8 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %5, ptr noundef nonnull %3) #30
  %9 = icmp eq i32 %8, 8
  br i1 %9, label %10, label %49

10:                                               ; preds = %7
  %11 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %12 = load ptr, ptr %3, align 8, !tbaa !213
  invoke void @_ZN8arg_nodeC1EPKcPK8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef %12, ptr noundef null, i16 noundef signext 0) #30
          to label %13 unwind label %29

13:                                               ; preds = %10
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %14 = call noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null) #30
  store ptr %14, ptr %4, align 8, !tbaa !213
  %15 = icmp eq ptr %1, null
  br i1 %15, label %42, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %1, align 8, !tbaa !213
  %18 = icmp eq ptr %17, null
  br i1 %18, label %37, label %19

19:                                               ; preds = %16
  %20 = load ptr, ptr %17, align 8, !tbaa !219
  %21 = getelementptr inbounds ptr, ptr %20, i64 16
  %22 = load ptr, ptr %21, align 8
  %23 = call noundef ptr %22(ptr noundef nonnull align 8 dereferenceable(32) %17, ptr noundef nonnull %11) #30
  %24 = icmp eq ptr %23, null
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  call void @_ZN8arg_node12import_valueEPP8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %23, ptr noundef nonnull %4) #30
  %26 = load ptr, ptr %11, align 8, !tbaa !219
  %27 = getelementptr inbounds ptr, ptr %26, i64 2
  %28 = load ptr, ptr %27, align 8
  call void %28(ptr noundef nonnull align 8 dereferenceable(32) %11) #28
  br label %42

29:                                               ; preds = %10
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %11) #32
  br label %47

31:                                               ; preds = %19
  call void @_ZN8arg_node12import_valueEPP8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %4) #30
  %32 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %33 = load ptr, ptr %1, align 8, !tbaa !213
  invoke void @_ZN11arglst_nodeC1EP8arg_nodePS_s(ptr noundef nonnull align 8 dereferenceable(32) %32, ptr noundef nonnull %11, ptr noundef %33, i16 noundef signext 1) #30
          to label %34 unwind label %35

34:                                               ; preds = %31
  store ptr %32, ptr %1, align 8, !tbaa !213
  store ptr %32, ptr @definition_env, align 8, !tbaa !213
  br label %42

35:                                               ; preds = %31
  %36 = landingpad { ptr, i32 }
          cleanup
  br label %44

37:                                               ; preds = %16
  call void @_ZN8arg_node12import_valueEPP8exp_node(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull %4) #30
  %38 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN11arglst_nodeC1EP8arg_nodePS_s(ptr noundef nonnull align 8 dereferenceable(32) %38, ptr noundef nonnull %11, ptr noundef null, i16 noundef signext 1) #30
          to label %39 unwind label %40

39:                                               ; preds = %37
  store ptr %38, ptr %1, align 8, !tbaa !213
  store ptr %38, ptr @definition_env, align 8, !tbaa !213
  br label %42

40:                                               ; preds = %37
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %39, %34, %25, %13
  %43 = phi ptr [ %38, %39 ], [ null, %13 ], [ null, %25 ], [ %32, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %49

44:                                               ; preds = %40, %35
  %45 = phi ptr [ %38, %40 ], [ %32, %35 ]
  %46 = phi { ptr, i32 } [ %41, %40 ], [ %36, %35 ]
  call void @_ZdlPv(ptr noundef nonnull %45) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %47

47:                                               ; preds = %44, %29
  %48 = phi { ptr, i32 } [ %46, %44 ], [ %30, %29 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  resume { ptr, i32 } %48

49:                                               ; preds = %42, %7
  %50 = phi ptr [ %43, %42 ], [ null, %7 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %51

51:                                               ; preds = %49, %2
  %52 = phi ptr [ %50, %49 ], [ null, %2 ]
  ret ptr %52
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser4loadEPP11arglst_node(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0, ptr noundef %1) #6 align 2 personality ptr @__gxx_personality_v0 {
  %3 = alloca ptr, align 8
  %4 = alloca %class.lambda_expression_parser, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !256
  %6 = icmp eq ptr %5, null
  br i1 %6, label %33, label %7

7:                                                ; preds = %2
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #27
  %8 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %5, ptr noundef nonnull %3) #30
  switch i32 %8, label %32 [
    i32 7, label %9
    i32 8, label %14
  ]

9:                                                ; preds = %7
  %10 = load ptr, ptr %3, align 8, !tbaa !213
  %11 = call ptr @strtok(ptr noundef %10, ptr noundef nonnull @.str.27.52) #28
  %12 = icmp eq ptr %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %9
  store ptr %11, ptr %3, align 8, !tbaa !213
  br label %14

14:                                               ; preds = %13, %9, %7
  %15 = call noalias noundef nonnull dereferenceable(8760) ptr @_Znwm(i64 noundef 8760) #31
  %16 = load ptr, ptr %3, align 8, !tbaa !213
  invoke void @_ZN12token_streamC1EPKc(ptr noundef nonnull align 8 dereferenceable(8756) %15, ptr noundef %16) #30
          to label %17 unwind label %29

17:                                               ; preds = %14
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #27
  store ptr %15, ptr %4, align 8, !tbaa !256
  %18 = getelementptr inbounds %class.lambda_expression_parser, ptr %4, i64 0, i32 1
  store i32 0, ptr %18, align 8, !tbaa !258
  %19 = getelementptr inbounds %class.token_stream, ptr %15, i64 0, i32 1
  %20 = load i16, ptr %19, align 2, !tbaa !260
  %21 = icmp eq i16 %20, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %25, %17
  %23 = load i16, ptr %15, align 8, !tbaa !264
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %22
  %26 = call noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %4, ptr noundef %1) #30, !llvm.loop !265
  %27 = load i16, ptr %19, align 2, !tbaa !260
  %28 = icmp eq i16 %27, 0
  br i1 %28, label %22, label %31

29:                                               ; preds = %14
  %30 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %15) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  resume { ptr, i32 } %30

31:                                               ; preds = %25, %22, %17
  call void @_ZN12token_streamD1Ev(ptr noundef nonnull align 8 dereferenceable(8756) %15) #28
  call void @_ZdlPv(ptr noundef nonnull %15) #32
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #27
  br label %32

32:                                               ; preds = %31, %7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #27
  br label %33

33:                                               ; preds = %32, %2
  ret ptr null
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @strcasecmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #17

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser10extractionEPP11arglst_nodei(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0, ptr nocapture readnone %1, i32 noundef %2) #6 align 2 {
  %4 = alloca ptr, align 8
  %5 = load ptr, ptr %0, align 8, !tbaa !256
  %6 = icmp eq ptr %5, null
  br i1 %6, label %40, label %7

7:                                                ; preds = %3
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %4) #27
  %8 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %5, ptr noundef nonnull %4) #30
  %9 = and i32 %8, -2
  %10 = icmp eq i32 %9, 8
  br i1 %10, label %11, label %38

11:                                               ; preds = %7
  %12 = icmp eq i32 %8, 8
  br i1 %12, label %13, label %22

13:                                               ; preds = %11
  %14 = load ptr, ptr %4, align 8, !tbaa !213
  %15 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %14, ptr noundef nonnull dereferenceable(2) @.str.28.51) #29
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %13
  %18 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %14) #29
  %19 = add i64 %18, 1
  %20 = call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #31
  %21 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %14) #28
  br label %22

22:                                               ; preds = %17, %13, %11
  %23 = phi ptr [ %20, %17 ], [ null, %13 ], [ null, %11 ]
  %24 = call noundef ptr @_ZN24lambda_expression_parser10expressionEPP11arglst_node(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef null) #30
  %25 = icmp eq ptr %24, null
  br i1 %25, label %34, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %24, align 8, !tbaa !219
  %28 = getelementptr inbounds ptr, ptr %27, i64 26
  %29 = load ptr, ptr %28, align 8
  %30 = call noundef ptr %29(ptr noundef nonnull align 8 dereferenceable(16) %24, ptr noundef %23, i32 noundef %2) #30
  %31 = load ptr, ptr %24, align 8, !tbaa !219
  %32 = getelementptr inbounds ptr, ptr %31, i64 2
  %33 = load ptr, ptr %32, align 8
  call void %33(ptr noundef nonnull align 8 dereferenceable(16) %24) #28
  br label %34

34:                                               ; preds = %26, %22
  %35 = phi ptr [ %30, %26 ], [ null, %22 ]
  %36 = icmp eq ptr %23, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %34
  call void @_ZdlPv(ptr noundef nonnull %23) #32
  br label %38

38:                                               ; preds = %37, %34, %7
  %39 = phi ptr [ null, %7 ], [ %35, %37 ], [ %35, %34 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %4) #27
  br label %40

40:                                               ; preds = %38, %3
  %41 = phi ptr [ %39, %38 ], [ null, %3 ]
  ret ptr %41
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser11applicationEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %6 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %3, ptr noundef nonnull %2) #30
  switch i32 %6, label %21 [
    i32 9, label %7
    i32 8, label %11
    i32 1, label %11
    i32 11, label %25
  ]

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !256
  %9 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %8, i32 noundef 9, ptr noundef %9) #30
  %10 = call noundef ptr @_ZN24lambda_expression_parser6lambdaEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  br label %25

11:                                               ; preds = %5, %5
  %12 = load ptr, ptr %0, align 8, !tbaa !256
  %13 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %12, i32 noundef %6, ptr noundef %13) #30
  %14 = call noundef ptr @_ZN24lambda_expression_parser5alistEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %15 = call noundef ptr @_ZN24lambda_expression_parser6lambdaEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %16 = icmp eq ptr %15, null
  br i1 %16, label %25, label %17

17:                                               ; preds = %11
  %18 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8app_nodeC1EP8exp_nodeS1_s(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef %14, ptr noundef nonnull %15, i16 noundef signext 1) #30
          to label %25 unwind label %19

19:                                               ; preds = %17
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %18) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %5
  %22 = load ptr, ptr %2, align 8
  %23 = icmp eq ptr %22, null
  %24 = select i1 %23, ptr @.str.23.48, ptr %22
  call void (ptr, ptr, ...) @_ZN24lambda_expression_parser8dderrmsgEPcz(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull @.str.22, ptr noundef nonnull %24) #30
  br label %25

25:                                               ; preds = %21, %17, %11, %7, %5
  %26 = phi ptr [ null, %21 ], [ null, %5 ], [ %10, %7 ], [ %14, %11 ], [ %18, %17 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %27

27:                                               ; preds = %25, %1
  %28 = phi ptr [ %26, %25 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser6lambdaEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %47, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %6 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %3, ptr noundef nonnull %2) #30
  switch i32 %6, label %7 [
    i32 9, label %10
    i32 11, label %42
  ]

7:                                                ; preds = %5
  %8 = load ptr, ptr %0, align 8, !tbaa !256
  %9 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %8, i32 noundef %6, ptr noundef %9) #30
  br label %42

10:                                               ; preds = %5
  %11 = load ptr, ptr %0, align 8, !tbaa !256
  %12 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %11, ptr noundef nonnull %2) #30
  %13 = icmp eq i32 %12, 8
  br i1 %13, label %18, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %2, align 8
  %16 = icmp eq ptr %15, null
  %17 = select i1 %16, ptr @.str.23.48, ptr %15
  call void (ptr, ptr, ...) @_ZN24lambda_expression_parser8dderrmsgEPcz(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull @.str.24, ptr noundef nonnull %17) #30
  br label %42

18:                                               ; preds = %10
  %19 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  %20 = load ptr, ptr %2, align 8, !tbaa !213
  invoke void @_ZN8arg_nodeC1EPKcPK8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %19, ptr noundef %20, ptr noundef null, i16 noundef signext 0) #30
          to label %21 unwind label %29

21:                                               ; preds = %18
  %22 = load ptr, ptr %0, align 8, !tbaa !256
  %23 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %22, ptr noundef nonnull %2) #30
  %24 = icmp eq i32 %23, 10
  br i1 %24, label %31, label %25

25:                                               ; preds = %21
  %26 = load ptr, ptr %2, align 8
  %27 = icmp eq ptr %26, null
  %28 = select i1 %27, ptr @.str.23.48, ptr %26
  call void (ptr, ptr, ...) @_ZN24lambda_expression_parser8dderrmsgEPcz(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull @.str.25.50, ptr noundef nonnull %28) #30
  br label %42

29:                                               ; preds = %18
  %30 = landingpad { ptr, i32 }
          cleanup
  br label %44

31:                                               ; preds = %21
  %32 = call noundef ptr @_ZN24lambda_expression_parser11applicationEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %33 = icmp eq ptr %32, null
  br i1 %33, label %34, label %38

34:                                               ; preds = %31
  %35 = load ptr, ptr %19, align 8, !tbaa !219
  %36 = getelementptr inbounds ptr, ptr %35, i64 2
  %37 = load ptr, ptr %36, align 8
  call void %37(ptr noundef nonnull align 8 dereferenceable(32) %19) #28
  br label %42

38:                                               ; preds = %31
  %39 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8lam_nodeC1EP8arg_nodeP8exp_nodes(ptr noundef nonnull align 8 dereferenceable(32) %39, ptr noundef nonnull %19, ptr noundef nonnull %32, i16 noundef signext 1) #30
          to label %42 unwind label %40

40:                                               ; preds = %38
  %41 = landingpad { ptr, i32 }
          cleanup
  br label %44

42:                                               ; preds = %38, %34, %25, %14, %7, %5
  %43 = phi ptr [ null, %14 ], [ null, %25 ], [ null, %5 ], [ null, %7 ], [ null, %34 ], [ %39, %38 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %47

44:                                               ; preds = %40, %29
  %45 = phi ptr [ %39, %40 ], [ %19, %29 ]
  %46 = phi { ptr, i32 } [ %41, %40 ], [ %30, %29 ]
  call void @_ZdlPv(ptr noundef nonnull %45) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  resume { ptr, i32 } %46

47:                                               ; preds = %42, %1
  %48 = phi ptr [ %43, %42 ], [ null, %1 ]
  ret ptr %48
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser5alistEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %27, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  br label %6

6:                                                ; preds = %21, %5
  %7 = phi ptr [ %23, %21 ], [ %3, %5 ]
  %8 = phi ptr [ %22, %21 ], [ null, %5 ]
  %9 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %7, ptr noundef nonnull %2) #30
  switch i32 %9, label %24 [
    i32 8, label %10
    i32 1, label %10
  ]

10:                                               ; preds = %6, %6
  %11 = load ptr, ptr %0, align 8, !tbaa !256
  %12 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %11, i32 noundef %9, ptr noundef %12) #30
  %13 = call noundef ptr @_ZN24lambda_expression_parser4atomEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %14 = icmp eq ptr %13, null
  br i1 %14, label %21, label %15

15:                                               ; preds = %10
  %16 = icmp eq ptr %8, null
  br i1 %16, label %21, label %17

17:                                               ; preds = %15
  %18 = call noalias noundef nonnull dereferenceable(32) ptr @_Znwm(i64 noundef 32) #31
  invoke void @_ZN8app_nodeC1EP8exp_nodeS1_s(ptr noundef nonnull align 8 dereferenceable(32) %18, ptr noundef nonnull %8, ptr noundef nonnull %13, i16 noundef signext 1) #30
          to label %21 unwind label %19

19:                                               ; preds = %17
  %.lcssa4 = phi ptr [ %18, %17 ]
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %.lcssa4) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %17, %15, %10
  %22 = phi ptr [ %8, %10 ], [ %18, %17 ], [ %13, %15 ]
  %23 = load ptr, ptr %0, align 8, !tbaa !256
  br label %6, !llvm.loop !266

24:                                               ; preds = %6
  %.lcssa2 = phi ptr [ %8, %6 ]
  %.lcssa = phi i32 [ %9, %6 ]
  %25 = load ptr, ptr %0, align 8, !tbaa !256
  %26 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %25, i32 noundef %.lcssa, ptr noundef %26) #30
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %27

27:                                               ; preds = %24, %1
  %28 = phi ptr [ %.lcssa2, %24 ], [ null, %1 ]
  ret ptr %28
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_ZN24lambda_expression_parser8dderrmsgEPcz(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0, ptr nocapture noundef readonly %1, ...) #10 align 2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.va_start(ptr nonnull %3)
  %4 = load ptr, ptr %0, align 8, !tbaa !256
  %5 = getelementptr inbounds %class.token_stream, ptr %4, i64 0, i32 10
  %6 = load i32, ptr %5, align 8, !tbaa !267
  %7 = icmp sgt i32 %6, -1
  br i1 %7, label %8, label %10

8:                                                ; preds = %2
  %9 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.29.49, i32 noundef %6) #30
  br label %10

10:                                               ; preds = %8, %2
  %11 = load ptr, ptr @stdout, align 8, !tbaa !213
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %3) #30
  %13 = call i32 @putchar(i32 10)
  call void @llvm.va_end(ptr nonnull %3)
  %14 = load ptr, ptr @stderr, align 8, !tbaa !213
  %15 = call i32 @fflush(ptr noundef %14) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_start(ptr) #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @vfprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ptr noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn
declare void @llvm.va_end(ptr) #20

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress optsize uwtable
define internal noundef ptr @_ZN24lambda_expression_parser4atomEv(ptr nocapture noundef nonnull readonly align 8 dereferenceable(12) %0) #6 align 2 personality ptr @__gxx_personality_v0 {
  %2 = alloca ptr, align 8
  %3 = load ptr, ptr %0, align 8, !tbaa !256
  %4 = icmp eq ptr %3, null
  br i1 %4, label %26, label %5

5:                                                ; preds = %1
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %2) #27
  %6 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %3, ptr noundef nonnull %2) #30
  switch i32 %6, label %21 [
    i32 1, label %7
    i32 8, label %16
  ]

7:                                                ; preds = %5
  %8 = call noundef ptr @_ZN24lambda_expression_parser11applicationEv(ptr noundef nonnull align 8 dereferenceable(12) %0) #30
  %9 = load ptr, ptr %0, align 8, !tbaa !256
  %10 = call noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %9, ptr noundef nonnull %2) #30
  %11 = icmp eq i32 %10, 2
  br i1 %11, label %24, label %12

12:                                               ; preds = %7
  %13 = load ptr, ptr %2, align 8
  %14 = icmp eq ptr %13, null
  %15 = select i1 %14, ptr @.str.23.48, ptr %13
  call void (ptr, ptr, ...) @_ZN24lambda_expression_parser8dderrmsgEPcz(ptr noundef nonnull align 8 dereferenceable(12) %0, ptr noundef nonnull @.str.26, ptr noundef nonnull %15) #30
  br label %24

16:                                               ; preds = %5
  %17 = call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #31
  %18 = load ptr, ptr %2, align 8, !tbaa !213
  invoke void @_ZN8var_nodeC1EPKc(ptr noundef nonnull align 8 dereferenceable(24) %17, ptr noundef %18) #30
          to label %24 unwind label %19

19:                                               ; preds = %16
  %20 = landingpad { ptr, i32 }
          cleanup
  call void @_ZdlPv(ptr noundef nonnull %17) #32
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  resume { ptr, i32 } %20

21:                                               ; preds = %5
  %22 = load ptr, ptr %0, align 8, !tbaa !256
  %23 = load ptr, ptr %2, align 8, !tbaa !213
  call void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %22, i32 noundef %6, ptr noundef %23) #30
  br label %24

24:                                               ; preds = %21, %16, %12, %7
  %25 = phi ptr [ null, %21 ], [ %8, %12 ], [ %8, %7 ], [ %17, %16 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %2) #27
  br label %26

26:                                               ; preds = %24, %1
  %27 = phi ptr [ %25, %24 ], [ null, %1 ]
  ret ptr %27
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn
declare ptr @strtok(ptr noundef, ptr nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: optsize uwtable
define internal void @_ZN12token_streamC2EPKc(ptr noundef nonnull align 8 dereferenceable(8756) %0, ptr noundef %1) unnamed_addr #11 align 2 {
  %3 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  store ptr null, ptr %3, align 8, !tbaa !268
  %4 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 9
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(20) %4, i8 0, i64 20, i1 false)
  %5 = tail call noundef signext i16 @_ZN12token_stream4openEPKc(ptr noundef nonnull align 8 dereferenceable(8756) %0, ptr noundef %1) #30, !range !269
  ret void
}

; Function Attrs: mustprogress optsize uwtable
define internal noundef signext i16 @_ZN12token_stream4openEPKc(ptr noundef nonnull align 8 dereferenceable(8756) %0, ptr noundef %1) #6 align 2 {
  store i16 0, ptr %0, align 8, !tbaa !264
  %3 = icmp eq ptr %1, null
  br i1 %3, label %23, label %4

4:                                                ; preds = %2
  %5 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !268
  %7 = icmp eq ptr %6, null
  br i1 %7, label %10, label %8

8:                                                ; preds = %4
  %9 = tail call i32 @fclose(ptr noundef nonnull %6) #30
  br label %10

10:                                               ; preds = %8, %4
  %11 = tail call noalias ptr @fopen(ptr noundef nonnull %1, ptr noundef nonnull @.str.59) #30
  store ptr %11, ptr %5, align 8, !tbaa !268
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %17

13:                                               ; preds = %10
  store i16 1, ptr %0, align 8, !tbaa !264
  %14 = tail call ptr @__errno_location() #33
  %15 = load i32, ptr %14, align 4, !tbaa !217
  %16 = tail call ptr @strerror(i32 noundef %15) #28
  tail call void (ptr, ptr, ...) @_ZN12token_stream8dderrmsgEPcz(ptr noundef nonnull align 8 dereferenceable(8756) %0, ptr noundef nonnull @.str.1.60, ptr noundef nonnull %1, ptr noundef %16) #30
  br label %17

17:                                               ; preds = %13, %10
  %18 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #29
  %19 = add i64 %18, 1
  %20 = tail call noalias noundef nonnull ptr @_Znam(i64 noundef %19) #31
  %21 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 9
  store ptr %20, ptr %21, align 8, !tbaa !270
  %22 = tail call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %20, ptr noundef nonnull dereferenceable(1) %1) #28
  br label %27

23:                                               ; preds = %2
  %24 = load ptr, ptr @stdin, align 8, !tbaa !213
  %25 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  store ptr %24, ptr %25, align 8, !tbaa !268
  %26 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 9
  store ptr null, ptr %26, align 8, !tbaa !270
  br label %27

27:                                               ; preds = %23, %17
  %28 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 1
  store i16 0, ptr %28, align 2, !tbaa !260
  %29 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 5
  store i32 0, ptr %29, align 8, !tbaa !271
  %30 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6
  %31 = icmp eq ptr %30, @.str.2.61
  br i1 %31, label %33, label %32

32:                                               ; preds = %27
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(8191) %30, i8 0, i64 8191, i1 false)
  br label %33

33:                                               ; preds = %32, %27
  %34 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6, i64 8191
  store i8 0, ptr %34, align 1, !tbaa !240
  %35 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 4
  store ptr null, ptr %35, align 8, !tbaa !272
  %36 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 10
  store i32 0, ptr %36, align 8, !tbaa !267
  %37 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 11
  store i32 0, ptr %37, align 4, !tbaa !273
  %38 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 12
  store i32 1, ptr %38, align 8, !tbaa !274
  %39 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !268
  %41 = icmp ne ptr %40, null
  %42 = zext i1 %41 to i16
  ret i16 %42
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #22

; Function Attrs: nounwind optsize
declare ptr @strerror(i32 noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_ZN12token_stream8dderrmsgEPcz(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8756) %0, ptr nocapture noundef readonly %1, ...) #10 align 2 {
  %3 = alloca [1 x %struct.__va_list_tag], align 16
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %3) #27
  call void @llvm.va_start(ptr nonnull %3)
  %4 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 10
  %5 = load i32, ptr %4, align 8, !tbaa !267
  %6 = icmp sgt i32 %5, -1
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load ptr, ptr @stderr, align 8, !tbaa !213
  %9 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.3.62, i32 noundef %5) #34
  br label %10

10:                                               ; preds = %7, %2
  %11 = load ptr, ptr @stderr, align 8, !tbaa !213
  %12 = call i32 @vfprintf(ptr noundef %11, ptr noundef %1, ptr noundef nonnull %3) #34
  call void @llvm.va_end(ptr nonnull %3)
  %13 = load ptr, ptr @stderr, align 8, !tbaa !213
  %14 = call i32 @fflush(ptr noundef %13) #30
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %3) #27
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable
define internal void @_ZN12token_stream10push_tokenENS_10token_typeEPc(ptr noundef nonnull align 8 dereferenceable(8756) %0, i32 noundef %1, ptr noundef readonly %2) #23 align 2 {
  %4 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 5
  store i32 %1, ptr %4, align 8, !tbaa !271
  %5 = icmp ne ptr %2, null
  %6 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6
  %7 = icmp ne ptr %6, %2
  %8 = select i1 %5, i1 %7, i1 false
  br i1 %8, label %9, label %11

9:                                                ; preds = %3
  %10 = tail call ptr @strncpy(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %2, i64 noundef 8191) #28
  br label %11

11:                                               ; preds = %9, %3
  %12 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6, i64 8191
  store i8 0, ptr %12, align 1, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strncpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly, i64 noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal void @_ZN12token_streamD2Ev(ptr nocapture noundef nonnull readonly align 8 dereferenceable(8756) %0) unnamed_addr #12 align 2 personality ptr @__gxx_personality_v0 {
  %2 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = icmp eq ptr %3, null
  br i1 %4, label %7, label %5

5:                                                ; preds = %1
  %6 = tail call i32 @fclose(ptr noundef nonnull %3) #30
  br label %7

7:                                                ; preds = %5, %1
  %8 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 9
  %9 = load ptr, ptr %8, align 8, !tbaa !270
  %10 = icmp eq ptr %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %7
  tail call void @_ZdaPv(ptr noundef nonnull %9) #32
  br label %12

12:                                               ; preds = %11, %7
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable
define internal void @_ZN12token_stream11reset_tokenEv(ptr noundef nonnull align 8 dereferenceable(8756) %0) #18 align 2 {
  %2 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 11
  store i32 0, ptr %2, align 4, !tbaa !273
  %3 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 5
  store i32 0, ptr %3, align 8, !tbaa !271
  %4 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 12
  store i32 1, ptr %4, align 8, !tbaa !274
  %5 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 7
  %6 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 4
  store ptr %5, ptr %6, align 8, !tbaa !272
  store i8 0, ptr %5, align 4, !tbaa !240
  ret void
}

; Function Attrs: mustprogress nofree nounwind optsize uwtable
define internal void @_ZN12token_stream5closeEv(ptr nocapture noundef nonnull align 8 dereferenceable(8756) %0) #10 align 2 {
  %2 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !268
  %4 = icmp eq ptr %3, null
  %5 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 9
  %6 = load ptr, ptr %5, align 8
  %7 = icmp eq ptr %6, null
  %8 = select i1 %4, i1 true, i1 %7
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = tail call i32 @fclose(ptr noundef nonnull %3) #30
  br label %11

11:                                               ; preds = %9, %1
  store ptr null, ptr %2, align 8, !tbaa !268
  ret void
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef ptr @_ZN12token_stream9read_lineEv(ptr noundef nonnull align 8 dereferenceable(8756) %0) #13 align 2 {
  %2 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 7
  %3 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = tail call ptr @fgets(ptr noundef nonnull %2, i32 noundef 512, ptr noundef %4) #30
  %6 = icmp eq ptr %5, null
  br i1 %6, label %21, label %7

7:                                                ; preds = %1
  %8 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !267
  %10 = add nsw i32 %9, 1
  store i32 %10, ptr %8, align 8, !tbaa !267
  %11 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %2) #29
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %12, 0
  br i1 %13, label %14, label %37

14:                                               ; preds = %7
  %15 = add i64 %11, 4294967295
  %16 = and i64 %15, 4294967295
  %17 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 7, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !240
  %19 = icmp eq i8 %18, 10
  br i1 %19, label %20, label %37

20:                                               ; preds = %14
  store i8 0, ptr %17, align 1, !tbaa !240
  br label %37

21:                                               ; preds = %1
  %22 = load ptr, ptr %3, align 8, !tbaa !268
  %23 = tail call i32 @ferror(ptr noundef %22) #28
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %32, label %25

25:                                               ; preds = %21
  %26 = tail call ptr @__errno_location() #33
  %27 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 10
  %28 = load i32, ptr %27, align 8, !tbaa !267
  %29 = load i32, ptr %26, align 4, !tbaa !217
  %30 = tail call ptr @strerror(i32 noundef %29) #28
  %31 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.69, i32 noundef %28, ptr noundef %30) #30
  store i16 1, ptr %0, align 8, !tbaa !264
  br label %37

32:                                               ; preds = %21
  %33 = tail call i32 @feof(ptr noundef %22) #28
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %37, label %35

35:                                               ; preds = %32
  %36 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 1
  store i16 1, ptr %36, align 2, !tbaa !260
  br label %37

37:                                               ; preds = %35, %32, %25, %20, %14, %7
  %38 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 12
  store i32 0, ptr %38, align 8, !tbaa !274
  ret ptr %5
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #24

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal noundef i32 @_ZN12token_stream9is_headerENS_10token_typeEPc(ptr nocapture noundef nonnull readnone align 8 dereferenceable(8756) %0, i32 noundef %1, ptr nocapture noundef readonly %2) #25 align 2 {
  %4 = icmp eq i32 %1, 8
  br i1 %4, label %9, label %16

5:                                                ; preds = %9
  %6 = getelementptr inbounds %struct.header_def, ptr %11, i64 1
  %7 = load i32, ptr %6, align 8, !tbaa !275
  %8 = icmp eq i32 %7, 0
  br i1 %8, label %16, label %9, !llvm.loop !278

9:                                                ; preds = %5, %3
  %10 = phi i32 [ %7, %5 ], [ 1, %3 ]
  %11 = phi ptr [ %6, %5 ], [ @_ZL7headers, %3 ]
  %12 = getelementptr inbounds %struct.header_def, ptr %11, i64 0, i32 1
  %13 = load ptr, ptr %12, align 8, !tbaa !279
  %14 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %2, ptr noundef nonnull dereferenceable(1) %13) #29
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %5

16:                                               ; preds = %9, %5, %3
  %17 = phi i32 [ 0, %3 ], [ %10, %9 ], [ 0, %5 ]
  ret i32 %17
}

; Function Attrs: mustprogress nounwind optsize uwtable
define internal noundef i32 @_ZN12token_stream9get_tokenEPPc(ptr noundef nonnull align 8 dereferenceable(8756) %0, ptr nocapture noundef writeonly %1) #13 align 2 {
  %3 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !268
  %5 = icmp eq ptr %4, null
  br i1 %5, label %133, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 5
  %8 = load i32, ptr %7, align 8, !tbaa !271
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %12, label %10

10:                                               ; preds = %6
  %11 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6
  store ptr %11, ptr %1, align 8, !tbaa !213
  store i32 0, ptr %7, align 8, !tbaa !271
  br label %133

12:                                               ; preds = %6
  store ptr null, ptr %1, align 8, !tbaa !213
  %13 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 11
  %15 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 12
  %16 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6
  %17 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6, i64 1
  %18 = getelementptr inbounds %class.token_stream, ptr %0, i64 0, i32 6, i64 8191
  %19 = load ptr, ptr %13, align 8, !tbaa !272
  br label %20

20:                                               ; preds = %130, %12
  %21 = phi ptr [ null, %130 ], [ %19, %12 ]
  %22 = icmp eq ptr %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %20
  %24 = load i8, ptr %21, align 1, !tbaa !240
  %25 = icmp eq i8 %24, 0
  br i1 %25, label %26, label %42

26:                                               ; preds = %23, %20
  %27 = load i32, ptr %14, align 4, !tbaa !273
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %26
  %30 = load i32, ptr %15, align 8, !tbaa !274
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %29
  store i32 1, ptr %15, align 8, !tbaa !274
  store i8 0, ptr %16, align 4, !tbaa !240
  br label %131

33:                                               ; preds = %26
  %34 = icmp sgt i32 %27, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %33
  %36 = icmp eq i32 %27, 1
  %37 = select i1 %36, ptr @.str.2.61, ptr @.str.6.81
  %38 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.5.82, i32 noundef %27, ptr noundef nonnull %37) #30
  br label %39

39:                                               ; preds = %35, %33, %29
  %40 = tail call noundef ptr @_ZN12token_stream9read_lineEv(ptr noundef nonnull align 8 dereferenceable(8756) %0) #30
  store ptr %40, ptr %13, align 8, !tbaa !272
  %41 = icmp eq ptr %40, null
  br i1 %41, label %133, label %42

42:                                               ; preds = %39, %23
  %43 = phi ptr [ %40, %39 ], [ %21, %23 ]
  %44 = load i8, ptr %43, align 1, !tbaa !240
  %45 = icmp ne i8 %44, 0
  %46 = icmp slt i8 %44, 33
  %47 = and i1 %45, %46
  br i1 %47, label %48, label %55

48:                                               ; preds = %48, %42
  %49 = phi ptr [ %50, %48 ], [ %43, %42 ]
  %50 = getelementptr inbounds i8, ptr %49, i64 1
  store ptr %50, ptr %13, align 8, !tbaa !272
  %51 = load i8, ptr %50, align 1, !tbaa !240
  %52 = icmp ne i8 %51, 0
  %53 = icmp slt i8 %51, 33
  %54 = and i1 %52, %53
  br i1 %54, label %48, label %55, !llvm.loop !280

55:                                               ; preds = %48, %42
  %56 = phi ptr [ %43, %42 ], [ %50, %48 ]
  %57 = phi i8 [ %44, %42 ], [ %51, %48 ]
  store i8 %57, ptr %16, align 4, !tbaa !240
  store i8 0, ptr %17, align 1, !tbaa !240
  %58 = load i8, ptr %56, align 1, !tbaa !240
  %59 = sext i8 %58 to i32
  switch i32 %59, label %60 [
    i32 0, label %130
    i32 35, label %130
    i32 94, label %64
    i32 46, label %66
    i32 40, label %68
    i32 41, label %72
    i32 123, label %76
    i32 125, label %78
    i32 44, label %80
    i32 59, label %82
    i32 34, label %62
  ]

60:                                               ; preds = %55
  %.lcssa6 = phi i8 [ %58, %55 ]
  %61 = icmp eq i8 %.lcssa6, 0
  br i1 %61, label %128, label %117

62:                                               ; preds = %55
  %.lcssa25 = phi ptr [ %56, %55 ]
  %63 = getelementptr inbounds i8, ptr %.lcssa25, i64 1
  store ptr %63, ptr %13, align 8, !tbaa !272
  br label %84

64:                                               ; preds = %55
  %.lcssa17 = phi ptr [ %56, %55 ]
  %65 = getelementptr inbounds i8, ptr %.lcssa17, i64 1
  store ptr %65, ptr %13, align 8, !tbaa !272
  br label %131

66:                                               ; preds = %55
  %.lcssa18 = phi ptr [ %56, %55 ]
  %67 = getelementptr inbounds i8, ptr %.lcssa18, i64 1
  store ptr %67, ptr %13, align 8, !tbaa !272
  br label %131

68:                                               ; preds = %55
  %.lcssa19 = phi ptr [ %56, %55 ]
  %69 = load i32, ptr %14, align 4, !tbaa !273
  %70 = add nsw i32 %69, 1
  store i32 %70, ptr %14, align 4, !tbaa !273
  %71 = getelementptr inbounds i8, ptr %.lcssa19, i64 1
  store ptr %71, ptr %13, align 8, !tbaa !272
  br label %131

72:                                               ; preds = %55
  %.lcssa20 = phi ptr [ %56, %55 ]
  %73 = load i32, ptr %14, align 4, !tbaa !273
  %74 = add nsw i32 %73, -1
  store i32 %74, ptr %14, align 4, !tbaa !273
  %75 = getelementptr inbounds i8, ptr %.lcssa20, i64 1
  store ptr %75, ptr %13, align 8, !tbaa !272
  br label %131

76:                                               ; preds = %55
  %.lcssa21 = phi ptr [ %56, %55 ]
  %77 = getelementptr inbounds i8, ptr %.lcssa21, i64 1
  store ptr %77, ptr %13, align 8, !tbaa !272
  br label %131

78:                                               ; preds = %55
  %.lcssa22 = phi ptr [ %56, %55 ]
  %79 = getelementptr inbounds i8, ptr %.lcssa22, i64 1
  store ptr %79, ptr %13, align 8, !tbaa !272
  br label %131

80:                                               ; preds = %55
  %.lcssa23 = phi ptr [ %56, %55 ]
  %81 = getelementptr inbounds i8, ptr %.lcssa23, i64 1
  store ptr %81, ptr %13, align 8, !tbaa !272
  br label %131

82:                                               ; preds = %55
  %.lcssa24 = phi ptr [ %56, %55 ]
  %83 = getelementptr inbounds i8, ptr %.lcssa24, i64 1
  store ptr %83, ptr %13, align 8, !tbaa !272
  br label %131

84:                                               ; preds = %106, %62
  %85 = phi ptr [ %63, %62 ], [ %110, %106 ]
  %86 = phi ptr [ %16, %62 ], [ %108, %106 ]
  br label %87

87:                                               ; preds = %94, %84
  %88 = phi ptr [ %85, %84 ], [ %95, %94 ]
  %89 = load i8, ptr %88, align 1, !tbaa !240
  switch i8 %89, label %106 [
    i8 92, label %90
    i8 34, label %104
    i8 0, label %112
  ]

90:                                               ; preds = %87
  %91 = getelementptr inbounds i8, ptr %88, i64 1
  %92 = load i8, ptr %91, align 1, !tbaa !240
  %93 = icmp eq i8 %92, 0
  br i1 %93, label %94, label %97

94:                                               ; preds = %90
  %95 = tail call noundef ptr @_ZN12token_stream9read_lineEv(ptr noundef nonnull align 8 dereferenceable(8756) %0) #30
  store ptr %95, ptr %13, align 8, !tbaa !272
  %96 = icmp eq ptr %95, null
  br i1 %96, label %133, label %87, !llvm.loop !281

97:                                               ; preds = %90
  %.lcssa3 = phi ptr [ %88, %90 ]
  %98 = getelementptr inbounds i8, ptr %.lcssa3, i64 1
  store ptr %98, ptr %13, align 8, !tbaa !272
  %99 = load i8, ptr %98, align 1, !tbaa !240
  %100 = icmp eq i8 %99, 110
  br i1 %100, label %106, label %101

101:                                              ; preds = %97
  %102 = icmp eq i8 %99, 116
  %103 = select i1 %102, i8 9, i8 %99
  br label %106

104:                                              ; preds = %87
  %.lcssa4 = phi ptr [ %86, %87 ]
  %.lcssa1 = phi ptr [ %88, %87 ]
  %105 = getelementptr inbounds i8, ptr %.lcssa1, i64 1
  store ptr %105, ptr %13, align 8, !tbaa !272
  br label %112

106:                                              ; preds = %101, %97, %87
  %.lcssa = phi ptr [ %.lcssa3, %101 ], [ %.lcssa3, %97 ], [ %88, %87 ]
  %107 = phi i8 [ %103, %101 ], [ 10, %97 ], [ %89, %87 ]
  store i8 %107, ptr %86, align 1, !tbaa !240
  %108 = getelementptr inbounds i8, ptr %86, i64 1
  %109 = load ptr, ptr %13, align 8, !tbaa !272
  %110 = getelementptr inbounds i8, ptr %109, i64 1
  store ptr %110, ptr %13, align 8, !tbaa !272
  %111 = icmp ult ptr %108, %18
  br i1 %111, label %84, label %112, !llvm.loop !282

112:                                              ; preds = %106, %104, %87
  %113 = phi ptr [ %.lcssa4, %104 ], [ %86, %87 ], [ %108, %106 ]
  store i8 0, ptr %113, align 1, !tbaa !240
  br label %131

114:                                              ; preds = %123
  %115 = load i8, ptr %126, align 1, !tbaa !240
  %116 = icmp eq i8 %115, 0
  br i1 %116, label %128, label %117

117:                                              ; preds = %114, %60
  %118 = phi ptr [ %124, %114 ], [ %16, %60 ]
  %119 = phi i8 [ %115, %114 ], [ %.lcssa6, %60 ]
  %120 = sext i8 %119 to i32
  %121 = tail call ptr @memchr(ptr noundef nonnull dereferenceable(1) @.str.7.83, i32 %120, i64 10)
  %122 = icmp eq ptr %121, null
  br i1 %122, label %123, label %128

123:                                              ; preds = %117
  store i8 %119, ptr %118, align 1, !tbaa !240
  %124 = getelementptr inbounds i8, ptr %118, i64 1
  %125 = load ptr, ptr %13, align 8, !tbaa !272
  %126 = getelementptr inbounds i8, ptr %125, i64 1
  store ptr %126, ptr %13, align 8, !tbaa !272
  %127 = icmp ult ptr %124, %18
  br i1 %127, label %114, label %128, !llvm.loop !283

128:                                              ; preds = %123, %117, %114, %60
  %129 = phi ptr [ %16, %60 ], [ %124, %114 ], [ %118, %117 ], [ %124, %123 ]
  store i8 0, ptr %129, align 1, !tbaa !240
  br label %131

130:                                              ; preds = %55, %55
  store ptr null, ptr %13, align 8, !tbaa !272
  br label %20, !llvm.loop !284

131:                                              ; preds = %128, %112, %82, %80, %78, %76, %72, %68, %66, %64, %32
  %132 = phi i32 [ 11, %32 ], [ 9, %64 ], [ 10, %66 ], [ 1, %68 ], [ 2, %72 ], [ 3, %76 ], [ 4, %78 ], [ 5, %80 ], [ 6, %82 ], [ 7, %112 ], [ 8, %128 ]
  store ptr %16, ptr %1, align 8, !tbaa !213
  br label %133

133:                                              ; preds = %131, %94, %39, %10, %2
  %134 = phi i32 [ %8, %10 ], [ 0, %2 ], [ %132, %131 ], [ 0, %94 ], [ 0, %39 ]
  ret i32 %134
}

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare ptr @memchr(ptr, i32, i64) local_unnamed_addr #26

attributes #0 = { mustprogress norecurse optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nobuiltin optsize allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nobuiltin nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #16 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #17 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { nocallback nofree nosync nounwind willreturn }
attributes #21 = { mustprogress nofree nounwind optsize willreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #24 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #25 = { mustprogress nofree nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #26 = { nofree nounwind willreturn memory(argmem: read) }
attributes #27 = { nounwind }
attributes #28 = { nounwind optsize }
attributes #29 = { nounwind optsize willreturn memory(read) }
attributes #30 = { optsize }
attributes #31 = { builtin optsize allocsize(0) }
attributes #32 = { builtin nounwind optsize }
attributes #33 = { nounwind optsize willreturn memory(none) }
attributes #34 = { cold optsize }

!llvm.ident = !{!206, !206, !206, !206}
!llvm.module.flags = !{!207, !208, !209, !210, !211, !212}

!0 = !{i64 16, !"_ZTS4node"}
!1 = !{i64 16, !"_ZTSM4nodeKFPS_vE.virtual"}
!2 = !{i64 40, !"_ZTSM4nodeKFNS_4typeEvE.virtual"}
!3 = !{i64 48, !"_ZTSM4nodeKFPKcvE.virtual"}
!4 = !{i64 56, !"_ZTSM4nodeKFP8exp_nodevE.virtual"}
!5 = !{i64 64, !"_ZTSM4nodeKFP8arg_nodevE.virtual"}
!6 = !{i64 72, !"_ZTSM4nodeKFP8exp_nodevE.virtual"}
!7 = !{i64 80, !"_ZTSM4nodeKFP8exp_nodevE.virtual"}
!8 = !{i64 88, !"_ZTSM4nodeKFP8exp_nodevE.virtual"}
!9 = !{i64 96, !"_ZTSM4nodeKFP9alst_nodevE.virtual"}
!10 = !{i64 104, !"_ZTSM4nodeKFPS_vE.virtual"}
!11 = !{i64 112, !"_ZTSM4nodeFvPS_E.virtual"}
!12 = !{i64 120, !"_ZTSM4nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!13 = !{i64 128, !"_ZTSM4nodeKFvPK9alst_nodeiE.virtual"}
!14 = !{i64 136, !"_ZTSM4nodeFR8arg_nodeRKS0_E.virtual"}
!15 = !{i64 16, !"_ZTS8arg_node"}
!16 = !{i64 16, !"_ZTSM8arg_nodeKFP4nodevE.virtual"}
!17 = !{i64 40, !"_ZTSM8arg_nodeKFN4node4typeEvE.virtual"}
!18 = !{i64 48, !"_ZTSM8arg_nodeKFPKcvE.virtual"}
!19 = !{i64 56, !"_ZTSM8arg_nodeKFP8exp_nodevE.virtual"}
!20 = !{i64 64, !"_ZTSM8arg_nodeKFPS_vE.virtual"}
!21 = !{i64 72, !"_ZTSM8arg_nodeKFP8exp_nodevE.virtual"}
!22 = !{i64 80, !"_ZTSM8arg_nodeKFP8exp_nodevE.virtual"}
!23 = !{i64 88, !"_ZTSM8arg_nodeKFP8exp_nodevE.virtual"}
!24 = !{i64 96, !"_ZTSM8arg_nodeKFP9alst_nodevE.virtual"}
!25 = !{i64 104, !"_ZTSM8arg_nodeKFP4nodevE.virtual"}
!26 = !{i64 112, !"_ZTSM8arg_nodeFvP4nodeE.virtual"}
!27 = !{i64 120, !"_ZTSM8arg_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!28 = !{i64 128, !"_ZTSM8arg_nodeKFvPK9alst_nodeiE.virtual"}
!29 = !{i64 136, !"_ZTSM8arg_nodeFRS_RKS_E.virtual"}
!30 = !{i64 136, !"_ZTSM4nodeKFsPK8arg_nodePK9alst_nodeE.virtual"}
!31 = !{i64 144, !"_ZTSM4nodeKFP11arglst_nodePK9alst_nodeE.virtual"}
!32 = !{i64 152, !"_ZTSM4nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!33 = !{i64 160, !"_ZTSM4nodeFvP8arg_nodePKcP9alst_nodeE.virtual"}
!34 = !{i64 168, !"_ZTSM4nodeFvP8arg_nodeP9alst_nodeE.virtual"}
!35 = !{i64 176, !"_ZTSM4nodeKFiRK8exp_nodeE.virtual"}
!36 = !{i64 184, !"_ZTSM4nodeFP8exp_nodevE.virtual"}
!37 = !{i64 192, !"_ZTSM4nodeFP8exp_nodevE.virtual"}
!38 = !{i64 200, !"_ZTSM4nodeFP8exp_nodevE.virtual"}
!39 = !{i64 208, !"_ZTSM4nodeKFPK9alst_nodeS2_E.virtual"}
!40 = !{i64 216, !"_ZTSM4nodeFP8exp_nodePK9alst_nodeE.virtual"}
!41 = !{i64 224, !"_ZTSM4nodeKFP8exp_nodePKciE.virtual"}
!42 = !{i64 232, !"_ZTSM4nodeFP8exp_nodePK9alst_nodeiPiPS4_E.virtual"}
!43 = !{i64 16, !"_ZTS8exp_node"}
!44 = !{i64 16, !"_ZTSM8exp_nodeKFP4nodevE.virtual"}
!45 = !{i64 40, !"_ZTSM8exp_nodeKFN4node4typeEvE.virtual"}
!46 = !{i64 48, !"_ZTSM8exp_nodeKFPKcvE.virtual"}
!47 = !{i64 56, !"_ZTSM8exp_nodeKFPS_vE.virtual"}
!48 = !{i64 64, !"_ZTSM8exp_nodeKFP8arg_nodevE.virtual"}
!49 = !{i64 72, !"_ZTSM8exp_nodeKFPS_vE.virtual"}
!50 = !{i64 80, !"_ZTSM8exp_nodeKFPS_vE.virtual"}
!51 = !{i64 88, !"_ZTSM8exp_nodeKFPS_vE.virtual"}
!52 = !{i64 96, !"_ZTSM8exp_nodeKFP9alst_nodevE.virtual"}
!53 = !{i64 104, !"_ZTSM8exp_nodeKFP4nodevE.virtual"}
!54 = !{i64 112, !"_ZTSM8exp_nodeFvP4nodeE.virtual"}
!55 = !{i64 120, !"_ZTSM8exp_nodeFPS_PK9alst_nodeiPiE.virtual"}
!56 = !{i64 128, !"_ZTSM8exp_nodeKFvPK9alst_nodeiE.virtual"}
!57 = !{i64 136, !"_ZTSM8exp_nodeKFsPK8arg_nodePK9alst_nodeE.virtual"}
!58 = !{i64 144, !"_ZTSM8exp_nodeKFP11arglst_nodePK9alst_nodeE.virtual"}
!59 = !{i64 152, !"_ZTSM8exp_nodeFPS_PK9alst_nodeiPiE.virtual"}
!60 = !{i64 160, !"_ZTSM8exp_nodeFvP8arg_nodePKcP9alst_nodeE.virtual"}
!61 = !{i64 168, !"_ZTSM8exp_nodeFvP8arg_nodeP9alst_nodeE.virtual"}
!62 = !{i64 176, !"_ZTSM8exp_nodeKFiRKS_E.virtual"}
!63 = !{i64 184, !"_ZTSM8exp_nodeFPS_vE.virtual"}
!64 = !{i64 192, !"_ZTSM8exp_nodeFPS_vE.virtual"}
!65 = !{i64 200, !"_ZTSM8exp_nodeFPS_vE.virtual"}
!66 = !{i64 208, !"_ZTSM8exp_nodeKFPK9alst_nodeS2_E.virtual"}
!67 = !{i64 216, !"_ZTSM8exp_nodeFPS_PK9alst_nodeE.virtual"}
!68 = !{i64 224, !"_ZTSM8exp_nodeKFPS_PKciE.virtual"}
!69 = !{i64 232, !"_ZTSM8exp_nodeFPS_PK9alst_nodeiPiPS3_E.virtual"}
!70 = !{i64 16, !"_ZTS8var_node"}
!71 = !{i64 16, !"_ZTSM8var_nodeKFP4nodevE.virtual"}
!72 = !{i64 40, !"_ZTSM8var_nodeKFN4node4typeEvE.virtual"}
!73 = !{i64 48, !"_ZTSM8var_nodeKFPKcvE.virtual"}
!74 = !{i64 56, !"_ZTSM8var_nodeKFP8exp_nodevE.virtual"}
!75 = !{i64 64, !"_ZTSM8var_nodeKFP8arg_nodevE.virtual"}
!76 = !{i64 72, !"_ZTSM8var_nodeKFP8exp_nodevE.virtual"}
!77 = !{i64 80, !"_ZTSM8var_nodeKFP8exp_nodevE.virtual"}
!78 = !{i64 88, !"_ZTSM8var_nodeKFP8exp_nodevE.virtual"}
!79 = !{i64 96, !"_ZTSM8var_nodeKFP9alst_nodevE.virtual"}
!80 = !{i64 104, !"_ZTSM8var_nodeKFP4nodevE.virtual"}
!81 = !{i64 112, !"_ZTSM8var_nodeFvP4nodeE.virtual"}
!82 = !{i64 120, !"_ZTSM8var_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!83 = !{i64 128, !"_ZTSM8var_nodeKFvPK9alst_nodeiE.virtual"}
!84 = !{i64 136, !"_ZTSM8var_nodeKFsPK8arg_nodePK9alst_nodeE.virtual"}
!85 = !{i64 144, !"_ZTSM8var_nodeKFP11arglst_nodePK9alst_nodeE.virtual"}
!86 = !{i64 152, !"_ZTSM8var_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!87 = !{i64 160, !"_ZTSM8var_nodeFvP8arg_nodePKcP9alst_nodeE.virtual"}
!88 = !{i64 168, !"_ZTSM8var_nodeFvP8arg_nodeP9alst_nodeE.virtual"}
!89 = !{i64 176, !"_ZTSM8var_nodeKFiRK8exp_nodeE.virtual"}
!90 = !{i64 184, !"_ZTSM8var_nodeFP8exp_nodevE.virtual"}
!91 = !{i64 192, !"_ZTSM8var_nodeFP8exp_nodevE.virtual"}
!92 = !{i64 200, !"_ZTSM8var_nodeFP8exp_nodevE.virtual"}
!93 = !{i64 208, !"_ZTSM8var_nodeKFPK9alst_nodeS2_E.virtual"}
!94 = !{i64 216, !"_ZTSM8var_nodeFP8exp_nodePK9alst_nodeE.virtual"}
!95 = !{i64 224, !"_ZTSM8var_nodeKFP8exp_nodePKciE.virtual"}
!96 = !{i64 232, !"_ZTSM8var_nodeFP8exp_nodePK9alst_nodeiPiPS4_E.virtual"}
!97 = !{i64 232, !"_ZTSM4nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!98 = !{i64 232, !"_ZTSM8exp_nodeFPS_PK9alst_nodeiPiE.virtual"}
!99 = !{i64 16, !"_ZTS8lam_node"}
!100 = !{i64 16, !"_ZTSM8lam_nodeKFP4nodevE.virtual"}
!101 = !{i64 40, !"_ZTSM8lam_nodeKFN4node4typeEvE.virtual"}
!102 = !{i64 48, !"_ZTSM8lam_nodeKFPKcvE.virtual"}
!103 = !{i64 56, !"_ZTSM8lam_nodeKFP8exp_nodevE.virtual"}
!104 = !{i64 64, !"_ZTSM8lam_nodeKFP8arg_nodevE.virtual"}
!105 = !{i64 72, !"_ZTSM8lam_nodeKFP8exp_nodevE.virtual"}
!106 = !{i64 80, !"_ZTSM8lam_nodeKFP8exp_nodevE.virtual"}
!107 = !{i64 88, !"_ZTSM8lam_nodeKFP8exp_nodevE.virtual"}
!108 = !{i64 96, !"_ZTSM8lam_nodeKFP9alst_nodevE.virtual"}
!109 = !{i64 104, !"_ZTSM8lam_nodeKFP4nodevE.virtual"}
!110 = !{i64 112, !"_ZTSM8lam_nodeFvP4nodeE.virtual"}
!111 = !{i64 120, !"_ZTSM8lam_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!112 = !{i64 128, !"_ZTSM8lam_nodeKFvPK9alst_nodeiE.virtual"}
!113 = !{i64 136, !"_ZTSM8lam_nodeKFsPK8arg_nodePK9alst_nodeE.virtual"}
!114 = !{i64 144, !"_ZTSM8lam_nodeKFP11arglst_nodePK9alst_nodeE.virtual"}
!115 = !{i64 152, !"_ZTSM8lam_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!116 = !{i64 160, !"_ZTSM8lam_nodeFvP8arg_nodePKcP9alst_nodeE.virtual"}
!117 = !{i64 168, !"_ZTSM8lam_nodeFvP8arg_nodeP9alst_nodeE.virtual"}
!118 = !{i64 176, !"_ZTSM8lam_nodeKFiRK8exp_nodeE.virtual"}
!119 = !{i64 184, !"_ZTSM8lam_nodeFP8exp_nodevE.virtual"}
!120 = !{i64 192, !"_ZTSM8lam_nodeFP8exp_nodevE.virtual"}
!121 = !{i64 200, !"_ZTSM8lam_nodeFP8exp_nodevE.virtual"}
!122 = !{i64 208, !"_ZTSM8lam_nodeKFPK9alst_nodeS2_E.virtual"}
!123 = !{i64 216, !"_ZTSM8lam_nodeFP8exp_nodePK9alst_nodeE.virtual"}
!124 = !{i64 224, !"_ZTSM8lam_nodeKFP8exp_nodePKciE.virtual"}
!125 = !{i64 232, !"_ZTSM8lam_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!126 = !{i64 16, !"_ZTS8app_node"}
!127 = !{i64 16, !"_ZTSM8app_nodeKFP4nodevE.virtual"}
!128 = !{i64 40, !"_ZTSM8app_nodeKFN4node4typeEvE.virtual"}
!129 = !{i64 48, !"_ZTSM8app_nodeKFPKcvE.virtual"}
!130 = !{i64 56, !"_ZTSM8app_nodeKFP8exp_nodevE.virtual"}
!131 = !{i64 64, !"_ZTSM8app_nodeKFP8arg_nodevE.virtual"}
!132 = !{i64 72, !"_ZTSM8app_nodeKFP8exp_nodevE.virtual"}
!133 = !{i64 80, !"_ZTSM8app_nodeKFP8exp_nodevE.virtual"}
!134 = !{i64 88, !"_ZTSM8app_nodeKFP8exp_nodevE.virtual"}
!135 = !{i64 96, !"_ZTSM8app_nodeKFP9alst_nodevE.virtual"}
!136 = !{i64 104, !"_ZTSM8app_nodeKFP4nodevE.virtual"}
!137 = !{i64 112, !"_ZTSM8app_nodeFvP4nodeE.virtual"}
!138 = !{i64 120, !"_ZTSM8app_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!139 = !{i64 128, !"_ZTSM8app_nodeKFvPK9alst_nodeiE.virtual"}
!140 = !{i64 136, !"_ZTSM8app_nodeKFsPK8arg_nodePK9alst_nodeE.virtual"}
!141 = !{i64 144, !"_ZTSM8app_nodeKFP11arglst_nodePK9alst_nodeE.virtual"}
!142 = !{i64 152, !"_ZTSM8app_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!143 = !{i64 160, !"_ZTSM8app_nodeFvP8arg_nodePKcP9alst_nodeE.virtual"}
!144 = !{i64 168, !"_ZTSM8app_nodeFvP8arg_nodeP9alst_nodeE.virtual"}
!145 = !{i64 176, !"_ZTSM8app_nodeKFiRK8exp_nodeE.virtual"}
!146 = !{i64 184, !"_ZTSM8app_nodeFP8exp_nodevE.virtual"}
!147 = !{i64 192, !"_ZTSM8app_nodeFP8exp_nodevE.virtual"}
!148 = !{i64 200, !"_ZTSM8app_nodeFP8exp_nodevE.virtual"}
!149 = !{i64 208, !"_ZTSM8app_nodeKFPK9alst_nodeS2_E.virtual"}
!150 = !{i64 216, !"_ZTSM8app_nodeFP8exp_nodePK9alst_nodeE.virtual"}
!151 = !{i64 224, !"_ZTSM8app_nodeKFP8exp_nodePKciE.virtual"}
!152 = !{i64 16, !"_ZTS11arglst_node"}
!153 = !{i64 16, !"_ZTSM11arglst_nodeKFP4nodevE.virtual"}
!154 = !{i64 40, !"_ZTSM11arglst_nodeKFN4node4typeEvE.virtual"}
!155 = !{i64 48, !"_ZTSM11arglst_nodeKFPKcvE.virtual"}
!156 = !{i64 56, !"_ZTSM11arglst_nodeKFP8exp_nodevE.virtual"}
!157 = !{i64 64, !"_ZTSM11arglst_nodeKFP8arg_nodevE.virtual"}
!158 = !{i64 72, !"_ZTSM11arglst_nodeKFP8exp_nodevE.virtual"}
!159 = !{i64 80, !"_ZTSM11arglst_nodeKFP8exp_nodevE.virtual"}
!160 = !{i64 88, !"_ZTSM11arglst_nodeKFP8exp_nodevE.virtual"}
!161 = !{i64 96, !"_ZTSM11arglst_nodeKFP9alst_nodevE.virtual"}
!162 = !{i64 104, !"_ZTSM11arglst_nodeKFP4nodevE.virtual"}
!163 = !{i64 112, !"_ZTSM11arglst_nodeFvP4nodeE.virtual"}
!164 = !{i64 120, !"_ZTSM11arglst_nodeFP8exp_nodePK9alst_nodeiPiE.virtual"}
!165 = !{i64 128, !"_ZTSM11arglst_nodeKFvPK9alst_nodeiE.virtual"}
!166 = !{i64 136, !"_ZTSM11arglst_nodeFP9alst_nodeP8arg_nodesE.virtual"}
!167 = !{i64 144, !"_ZTSM11arglst_nodeFP8arg_nodeS1_E.virtual"}
!168 = !{i64 152, !"_ZTSM11arglst_nodeFvvE.virtual"}
!169 = !{i64 136, !"_ZTSM4nodeFP9alst_nodeP8arg_nodesE.virtual"}
!170 = !{i64 144, !"_ZTSM4nodeFP8arg_nodeS1_E.virtual"}
!171 = !{i64 152, !"_ZTSM4nodeFvvE.virtual"}
!172 = !{i64 16, !"_ZTS9alst_node"}
!173 = !{i64 16, !"_ZTSM9alst_nodeKFP4nodevE.virtual"}
!174 = !{i64 40, !"_ZTSM9alst_nodeKFN4node4typeEvE.virtual"}
!175 = !{i64 48, !"_ZTSM9alst_nodeKFPKcvE.virtual"}
!176 = !{i64 56, !"_ZTSM9alst_nodeKFP8exp_nodevE.virtual"}
!177 = !{i64 64, !"_ZTSM9alst_nodeKFP8arg_nodevE.virtual"}
!178 = !{i64 72, !"_ZTSM9alst_nodeKFP8exp_nodevE.virtual"}
!179 = !{i64 80, !"_ZTSM9alst_nodeKFP8exp_nodevE.virtual"}
!180 = !{i64 88, !"_ZTSM9alst_nodeKFP8exp_nodevE.virtual"}
!181 = !{i64 96, !"_ZTSM9alst_nodeKFPS_vE.virtual"}
!182 = !{i64 104, !"_ZTSM9alst_nodeKFP4nodevE.virtual"}
!183 = !{i64 112, !"_ZTSM9alst_nodeFvP4nodeE.virtual"}
!184 = !{i64 120, !"_ZTSM9alst_nodeFP8exp_nodePKS_iPiE.virtual"}
!185 = !{i64 128, !"_ZTSM9alst_nodeKFvPKS_iE.virtual"}
!186 = !{i64 136, !"_ZTSM9alst_nodeFPS_P8arg_nodesE.virtual"}
!187 = !{i64 144, !"_ZTSM9alst_nodeFP8arg_nodeS1_E.virtual"}
!188 = !{i64 152, !"_ZTSM9alst_nodeFvvE.virtual"}
!189 = !{i64 16, !"_ZTS11stack_frame"}
!190 = !{i64 16, !"_ZTSM11stack_frameKFP4nodevE.virtual"}
!191 = !{i64 40, !"_ZTSM11stack_frameKFN4node4typeEvE.virtual"}
!192 = !{i64 48, !"_ZTSM11stack_frameKFPKcvE.virtual"}
!193 = !{i64 56, !"_ZTSM11stack_frameKFP8exp_nodevE.virtual"}
!194 = !{i64 64, !"_ZTSM11stack_frameKFP8arg_nodevE.virtual"}
!195 = !{i64 72, !"_ZTSM11stack_frameKFP8exp_nodevE.virtual"}
!196 = !{i64 80, !"_ZTSM11stack_frameKFP8exp_nodevE.virtual"}
!197 = !{i64 88, !"_ZTSM11stack_frameKFP8exp_nodevE.virtual"}
!198 = !{i64 96, !"_ZTSM11stack_frameKFP9alst_nodevE.virtual"}
!199 = !{i64 104, !"_ZTSM11stack_frameKFP4nodevE.virtual"}
!200 = !{i64 112, !"_ZTSM11stack_frameFvP4nodeE.virtual"}
!201 = !{i64 120, !"_ZTSM11stack_frameFP8exp_nodePK9alst_nodeiPiE.virtual"}
!202 = !{i64 128, !"_ZTSM11stack_frameKFvPK9alst_nodeiE.virtual"}
!203 = !{i64 136, !"_ZTSM11stack_frameFP9alst_nodeP8arg_nodesE.virtual"}
!204 = !{i64 144, !"_ZTSM11stack_frameFP8arg_nodeS1_E.virtual"}
!205 = !{i64 152, !"_ZTSM11stack_frameFvvE.virtual"}
!206 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!207 = !{i32 1, !"wchar_size", i32 4}
!208 = !{i32 8, !"PIC Level", i32 2}
!209 = !{i32 7, !"PIE Level", i32 2}
!210 = !{i32 7, !"uwtable", i32 2}
!211 = !{i32 1, !"ThinLTO", i32 0}
!212 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!213 = !{!214, !214, i64 0}
!214 = !{!"any pointer", !215, i64 0}
!215 = !{!"omnipotent char", !216, i64 0}
!216 = !{!"Simple C++ TBAA"}
!217 = !{!218, !218, i64 0}
!218 = !{!"int", !215, i64 0}
!219 = !{!220, !220, i64 0}
!220 = !{!"vtable pointer", !216, i64 0}
!221 = distinct !{!221, !222}
!222 = !{!"llvm.loop.mustprogress"}
!223 = distinct !{!223, !222}
!224 = distinct !{!224, !222}
!225 = !{!226, !214, i64 8}
!226 = !{!"_ZTS4node", !214, i64 8}
!227 = !{!228, !214, i64 16}
!228 = !{!"_ZTS8arg_node", !226, i64 0, !214, i64 16, !214, i64 24}
!229 = !{!228, !214, i64 24}
!230 = distinct !{!230, !222}
!231 = !{!232, !214, i64 16}
!232 = !{!"_ZTS8var_node", !233, i64 0, !214, i64 16}
!233 = !{!"_ZTS8exp_node", !226, i64 0}
!234 = distinct !{!234, !222}
!235 = !{!236, !214, i64 16}
!236 = !{!"_ZTS8app_node", !233, i64 0, !214, i64 16, !214, i64 24}
!237 = !{!236, !214, i64 24}
!238 = distinct !{!238, !222}
!239 = distinct !{!239, !222}
!240 = !{!215, !215, i64 0}
!241 = !{!242, !214, i64 16}
!242 = !{!"_ZTS11arglst_node", !243, i64 0, !214, i64 16, !214, i64 24}
!243 = !{!"_ZTS9alst_node", !226, i64 0}
!244 = !{!242, !214, i64 24}
!245 = distinct !{!245, !222}
!246 = distinct !{!246, !222}
!247 = distinct !{!247, !222}
!248 = distinct !{!248, !222}
!249 = distinct !{!249, !222}
!250 = !{!251, !214, i64 16}
!251 = !{!"_ZTS8lam_node", !233, i64 0, !214, i64 16, !214, i64 24}
!252 = !{!251, !214, i64 24}
!253 = distinct !{!253, !222}
!254 = distinct !{!254, !222}
!255 = distinct !{!255, !222}
!256 = !{!257, !214, i64 0}
!257 = !{!"_ZTS24lambda_expression_parser", !214, i64 0, !218, i64 8}
!258 = !{!257, !218, i64 8}
!259 = distinct !{!259, !222}
!260 = !{!261, !262, i64 2}
!261 = !{!"_ZTS12token_stream", !262, i64 0, !262, i64 2, !214, i64 8, !214, i64 16, !263, i64 24, !215, i64 28, !215, i64 8220, !214, i64 8736, !218, i64 8744, !218, i64 8748, !218, i64 8752}
!262 = !{!"short", !215, i64 0}
!263 = !{!"_ZTSN12token_stream10token_typeE", !215, i64 0}
!264 = !{!261, !262, i64 0}
!265 = distinct !{!265, !222}
!266 = distinct !{!266, !222}
!267 = !{!261, !218, i64 8744}
!268 = !{!261, !214, i64 8}
!269 = !{i16 0, i16 2}
!270 = !{!261, !214, i64 8736}
!271 = !{!261, !263, i64 24}
!272 = !{!261, !214, i64 16}
!273 = !{!261, !218, i64 8748}
!274 = !{!261, !218, i64 8752}
!275 = !{!276, !277, i64 0}
!276 = !{!"_ZTS10header_def", !277, i64 0, !214, i64 8}
!277 = !{!"_ZTSN12token_stream11header_typeE", !215, i64 0}
!278 = distinct !{!278, !222}
!279 = !{!276, !214, i64 8}
!280 = distinct !{!280, !222}
!281 = distinct !{!281, !222}
!282 = distinct !{!282, !222}
!283 = distinct !{!283, !222}
!284 = distinct !{!284, !222}
