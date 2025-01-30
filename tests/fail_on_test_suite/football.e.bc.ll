; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/Prolangs-C/football/football.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.info = type { i32, i32, i32, i32, i32, [18 x i32] }

@.str.4 = private unnamed_addr constant [47 x i8] c"------ Break a tie (all same div: %d) -------\0A\00", align 1
@.str.14 = private unnamed_addr constant [4 x i8] c"%s \00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"  *   \00", align 1
@str = private unnamed_addr constant [55 x i8] c"ERROR in head_to_head (common.c). Assumption violated.\00", align 1
@str.17 = private unnamed_addr constant [55 x i8] c"ERROR in break_common (common.c). Assumption violated.\00", align 1
@str.18 = private unnamed_addr constant [55 x i8] c"ERROR in div_conf_rec (common.c). Assumption violated.\00", align 1
@str.19 = private unnamed_addr constant [59 x i8] c"ERROR in break_net_points (common.c). Assumption violated.\00", align 1
@str.20 = private unnamed_addr constant [22 x i8] c"Ordered by COIN TOSS.\00", align 1
@str.21 = private unnamed_addr constant [29 x i8] c"Split because of net points.\00", align 1
@str.22 = private unnamed_addr constant [40 x i8] c"Split because of conference net points.\00", align 1
@str.23 = private unnamed_addr constant [38 x i8] c"Split because of division net points.\00", align 1
@str.24 = private unnamed_addr constant [37 x i8] c"Split because of common game record.\00", align 1
@str.25 = private unnamed_addr constant [36 x i8] c"Split because of conference record.\00", align 1
@str.26 = private unnamed_addr constant [36 x i8] c"Split because of divisional record.\00", align 1
@str.27 = private unnamed_addr constant [37 x i8] c"Split because of head to head sweap.\00", align 1
@str.28 = private unnamed_addr constant [38 x i8] c"Split because of head to head record.\00", align 1
@.str = private unnamed_addr constant [25 x i8] c"Hit return to continue: \00", align 1
@white_space.commentP = internal unnamed_addr global i1 false, align 4
@.str.1 = private unnamed_addr constant [45 x i8] c"\0A\0A=========================================\0A\00", align 1
@responce = internal global [51 x i8] zeroinitializer, align 16
@.str.2 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.3 = private unnamed_addr constant [23 x i8] c"%s team information.\0A\0A\00", align 1
@.str.4.1 = private unnamed_addr constant [29 x i8] c"                            \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c"at %-15s \00", align 1
@.str.6 = private unnamed_addr constant [10 x i8] c"%-15s    \00", align 1
@.str.7 = private unnamed_addr constant [10 x i8] c"         \00", align 1
@.str.11 = private unnamed_addr constant [11 x i8] c"%2d-%2d   \00", align 1
@.str.12 = private unnamed_addr constant [6 x i8] c"%s %s\00", align 1
@.str.13 = private unnamed_addr constant [4 x i8] c"NFC\00", align 1
@.str.14.2 = private unnamed_addr constant [4 x i8] c"AFC\00", align 1
@.str.15.3 = private unnamed_addr constant [8 x i8] c"East   \00", align 1
@.str.16 = private unnamed_addr constant [8 x i8] c"Central\00", align 1
@.str.17 = private unnamed_addr constant [8 x i8] c"West   \00", align 1
@.str.18 = private unnamed_addr constant [39 x i8] c"                 W  L  T  Pct.  PF  PA\00", align 1
@.str.19 = private unnamed_addr constant [38 x i8] c"%- 14s%1s %2d %2d %2d %s.%03d %3d %3d\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"*\00", align 1
@.str.21 = private unnamed_addr constant [2 x i8] c"+\00", align 1
@.str.22 = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.23 = private unnamed_addr constant [2 x i8] c"1\00", align 1
@.str.24 = private unnamed_addr constant [45 x i8] c"Record           %2d-%d-%d      %sRank %d/%d\00", align 1
@.str.25 = private unnamed_addr constant [3 x i8] c"  \00", align 1
@.str.26 = private unnamed_addr constant [41 x i8] c"Points scored   %3d [%6.1f]   Rank %d/%d\00", align 1
@.str.27 = private unnamed_addr constant [41 x i8] c"Points allowed  %3d [%6.1f]   Rank %d/%d\00", align 1
@.str.28 = private unnamed_addr constant [40 x i8] c"Net Points     %4d [%6.1f]   Rank %d/%d\00", align 1
@.str.29 = private unnamed_addr constant [20 x i8] c"Major Tie-breakers:\00", align 1
@.str.30 = private unnamed_addr constant [20 x i8] c"-(1/1) Head to Head\00", align 1
@.str.31 = private unnamed_addr constant [43 x i8] c"-(2/ ) Divisional Record          %d-%d-%d\00", align 1
@.str.32 = private unnamed_addr constant [43 x i8] c"-(3/2) Conference Record          %d-%d-%d\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"-(4/3) Common Games\00", align 1
@.str.34 = private unnamed_addr constant [39 x i8] c"-(5/ ) Net points in %s %s  %d [%3.1f]\00", align 1
@.str.35 = private unnamed_addr constant [39 x i8] c"-( /4) Avg. net points in %s     %3.1f\00", align 1
@.str.36 = private unnamed_addr constant [45 x i8] c"-(6/5) Total net points           %d [%3.1f]\00", align 1
@common_teams = internal global [29 x i32] zeroinitializer, align 16
@.str.38 = private unnamed_addr constant [52 x i8] c"ERROR: All teams must be from the same conference.\0A\00", align 1
@.str.39 = private unnamed_addr constant [43 x i8] c"                                          \00", align 1
@.str.40 = private unnamed_addr constant [17 x i8] c"            Div\0A\00", align 1
@.str.41 = private unnamed_addr constant [43 x i8] c"                             Div.   Conf. \00", align 1
@.str.42 = private unnamed_addr constant [22 x i8] c"Common      Net  Net\0A\00", align 1
@.str.43 = private unnamed_addr constant [43 x i8] c"Team           Record HtoH  Record Record \00", align 1
@.str.44 = private unnamed_addr constant [23 x i8] c"Games       Pts  Pts\0A\0A\00", align 1
@.str.45 = private unnamed_addr constant [19 x i8] c"%-13s %2d-%2d-%1d \00", align 1
@.str.46 = private unnamed_addr constant [12 x i8] c"%1d-%1d-%1d\00", align 1
@.str.47 = private unnamed_addr constant [13 x i8] c" %1d-%1d-%1d\00", align 1
@.str.48 = private unnamed_addr constant [13 x i8] c" %2d-%2d-%1d\00", align 1
@common_games = internal global [29 x %struct.info] zeroinitializer, align 16
@.str.49 = private unnamed_addr constant [17 x i8] c"%2d-%2d-%1d[%2d]\00", align 1
@.str.50 = private unnamed_addr constant [13 x i8] c"            \00", align 1
@.str.51 = private unnamed_addr constant [4 x i8] c"%4d\00", align 1
@.str.52 = private unnamed_addr constant [5 x i8] c" %4d\00", align 1
@.str.53 = private unnamed_addr constant [34 x i8] c"Common Games Rec.[left] Div Conf\0A\00", align 1
@.str.54 = private unnamed_addr constant [43 x i8] c"                       vs.   Div.   Conf. \00", align 1
@.str.55 = private unnamed_addr constant [39 x i8] c"----------------------- Net  Net  Net\0A\00", align 1
@.str.56 = private unnamed_addr constant [43 x i8] c"Team           Record  %3s  Record Record \00", align 1
@.str.57 = private unnamed_addr constant [40 x i8] c"   Team         %3s     Pts  Pts  Pts\0A\0A\00", align 1
@.str.58 = private unnamed_addr constant [6 x i8] c"     \00", align 1
@.str.59 = private unnamed_addr constant [7 x i8] c"      \00", align 1
@.str.60 = private unnamed_addr constant [35 x i8] c" %2d-%2d-%1d[%2d] %2d-%2d-%1d[%2d]\00", align 1
@.str.61 = private unnamed_addr constant [25 x i8] c"                        \00", align 1
@.str.62 = private unnamed_addr constant [5 x i8] c"    \00", align 1
@.str.63 = private unnamed_addr constant [6 x i8] c"%5.1f\00", align 1
@.str.64 = private unnamed_addr constant [38 x i8] c"                 NFC                 \00", align 1
@.str.65 = private unnamed_addr constant [23 x i8] c"                 AFC\0A\0A\00", align 1
@.str.66 = private unnamed_addr constant [38 x i8] c"                        W  L  T  Pct.\00", align 1
@.str.67 = private unnamed_addr constant [39 x i8] c"                        W  L  T  Pct.\0A\00", align 1
@.str.68 = private unnamed_addr constant [15 x i8] c"%2d/%2d) %-14s\00", align 1
@.str.69 = private unnamed_addr constant [21 x i8] c" %2d-%2d-%2d %s.%03d\00", align 1
@.str.70 = private unnamed_addr constant [22 x i8] c" %2d-%2d-%2d %s.%03d\0A\00", align 1
@.str.71 = private unnamed_addr constant [31 x i8] c"\0A* Division winner\0A+ Wildcard\0A\00", align 1
@.str.72 = private unnamed_addr constant [46 x i8] c"                                    Week %d\0A\0A\00", align 1
@.str.73 = private unnamed_addr constant [6 x i8] c"%-16s\00", align 1
@.str.74 = private unnamed_addr constant [11 x i8] c"          \00", align 1
@.str.75 = private unnamed_addr constant [12 x i8] c"  %2d      \00", align 1
@.str.76 = private unnamed_addr constant [13 x i8] c"  %2d       \00", align 1
@.str.77 = private unnamed_addr constant [3 x i8] c"\0A\0A\00", align 1
@.str.78 = private unnamed_addr constant [47 x i8] c"Enter blank line to leave a score unchanged, \0A\00", align 1
@.str.79 = private unnamed_addr constant [53 x i8] c"QUIT to return to menu, or new value for the score.\0A\00", align 1
@.str.80 = private unnamed_addr constant [11 x i8] c"\0AWeek %d\0A\0A\00", align 1
@.str.81 = private unnamed_addr constant [12 x i8] c"         ? \00", align 1
@.str.82 = private unnamed_addr constant [13 x i8] c"  %2d     ? \00", align 1
@.str.83 = private unnamed_addr constant [5 x i8] c"quit\00", align 1
@.str.84 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.85 = private unnamed_addr constant [20 x i8] c"Enter either team: \00", align 1
@.str.86 = private unnamed_addr constant [33 x i8] c"No game found for %s in week %d\0A\00", align 1
@.str.87 = private unnamed_addr constant [44 x i8] c"                                  Rankings\0A\00", align 1
@.str.88 = private unnamed_addr constant [66 x i8] c"                   NFC                                       AFC\0A\00", align 1
@.str.89 = private unnamed_addr constant [82 x i8] c"                 REC.  OFF.  DEF.  NET                    REC.  OFF.  DEF.  NET\0A\0A\00", align 1
@.str.90 = private unnamed_addr constant [91 x i8] c"%-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d %-14s%1s %2d/%-2d %2d/%-2d %2d/%-2d %2d/%-2d\0A\00", align 1
@.str.91 = private unnamed_addr constant [48 x i8] c"                            Defensive Rankings\0A\00", align 1
@.str.92 = private unnamed_addr constant [55 x i8] c"                NFC                              AFC\0A\0A\00", align 1
@.str.93 = private unnamed_addr constant [57 x i8] c"%2d/%-2d) %-15s %-5.1f %3d   %2d/%-2d) %-15s %-5.1f %3d\0A\00", align 1
@.str.94 = private unnamed_addr constant [48 x i8] c"                            Offensive Rankings\0A\00", align 1
@.str.95 = private unnamed_addr constant [49 x i8] c"                            Net Points Rankings\0A\00", align 1
@.str.96 = private unnamed_addr constant [57 x i8] c"%2d/%-2d) %-15s %-5.1f %4d   %2d/%-2d) %-15s %-5.1f %4d\0A\00", align 1
@.str.97 = private unnamed_addr constant [66 x i8] c"\0A                   NFC                                      AFC\0A\00", align 1
@.str.98 = private unnamed_addr constant [66 x i8] c"\0A                  EAST                                     EAST\0A\00", align 1
@.str.99 = private unnamed_addr constant [4 x i8] c"   \00", align 1
@.str.100 = private unnamed_addr constant [68 x i8] c"\0A                 CENTRAL                                  CENTRAL\0A\00", align 1
@.str.101 = private unnamed_addr constant [65 x i8] c"                                                           WEST\0A\00", align 1
@.str.102 = private unnamed_addr constant [42 x i8] c"                  WEST                   \00", align 1
@.str.103 = private unnamed_addr constant [31 x i8] c"%-15s [%-3s]     %-15s [%-3s]\0A\00", align 1
@.str.104 = private unnamed_addr constant [18 x i8] c"Enter week <num>\0A\00", align 1
@.str.105 = private unnamed_addr constant [31 x i8] c"Enter week <num> with-prompts\0A\00", align 1
@.str.106 = private unnamed_addr constant [19 x i8] c"Display all-ranks\0A\00", align 1
@.str.107 = private unnamed_addr constant [24 x i8] c"Display defensive-rank\0A\00", align 1
@.str.108 = private unnamed_addr constant [44 x i8] c"Display information-about <team-name/abbr>\0A\00", align 1
@.str.109 = private unnamed_addr constant [14 x i8] c"Display menu\0A\00", align 1
@.str.110 = private unnamed_addr constant [24 x i8] c"Display offensive-rank\0A\00", align 1
@.str.111 = private unnamed_addr constant [18 x i8] c"Display net-rank\0A\00", align 1
@.str.112 = private unnamed_addr constant [17 x i8] c"Display records\0A\00", align 1
@.str.113 = private unnamed_addr constant [19 x i8] c"Display standings\0A\00", align 1
@.str.114 = private unnamed_addr constant [25 x i8] c"Display team-names/abbr\0A\00", align 1
@.str.115 = private unnamed_addr constant [54 x i8] c"Display tie-breaker-information-for <team-name/abbr>\0A\00", align 1
@.str.116 = private unnamed_addr constant [20 x i8] c"Display week <num>\0A\00", align 1
@.str.117 = private unnamed_addr constant [28 x i8] c"How-ties-broken conference\0A\00", align 1
@.str.118 = private unnamed_addr constant [26 x i8] c"How-ties-broken division\0A\00", align 1
@.str.119 = private unnamed_addr constant [6 x i8] c"Quit\0A\00", align 1
@.str.120 = private unnamed_addr constant [6 x i8] c"Save\0A\00", align 1
@.str.121 = private unnamed_addr constant [47 x i8] c"[WARNING: Database is not current with disk.]\0A\00", align 1
@.str.122 = private unnamed_addr constant [32 x i8] c"\0A                Enter option: \00", align 1
@.str.123 = private unnamed_addr constant [16 x i8] c"how-ties-broken\00", align 1
@.str.124 = private unnamed_addr constant [9 x i8] c"division\00", align 1
@.str.125 = private unnamed_addr constant [11 x i8] c"conference\00", align 1
@.str.126 = private unnamed_addr constant [8 x i8] c"display\00", align 1
@.str.127 = private unnamed_addr constant [5 x i8] c"menu\00", align 1
@.str.128 = private unnamed_addr constant [10 x i8] c"standings\00", align 1
@.str.129 = private unnamed_addr constant [18 x i8] c"information-about\00", align 1
@.str.130 = private unnamed_addr constant [28 x i8] c"tie-breaker-information-for\00", align 1
@.str.131 = private unnamed_addr constant [8 x i8] c"records\00", align 1
@.str.132 = private unnamed_addr constant [10 x i8] c"all-ranks\00", align 1
@.str.133 = private unnamed_addr constant [15 x i8] c"defensive-rank\00", align 1
@.str.134 = private unnamed_addr constant [15 x i8] c"offensive-rank\00", align 1
@.str.135 = private unnamed_addr constant [9 x i8] c"net-rank\00", align 1
@.str.136 = private unnamed_addr constant [5 x i8] c"week\00", align 1
@.str.137 = private unnamed_addr constant [15 x i8] c"team-name/abbr\00", align 1
@.str.138 = private unnamed_addr constant [26 x i8] c"Illegal display command.\0A\00", align 1
@.str.139 = private unnamed_addr constant [6 x i8] c"enter\00", align 1
@.str.140 = private unnamed_addr constant [13 x i8] c"with-prompts\00", align 1
@.str.141 = private unnamed_addr constant [24 x i8] c"Illegal enter command.\0A\00", align 1
@.str.142 = private unnamed_addr constant [5 x i8] c"save\00", align 1
@got_unused_responce = internal global i32 0, align 4
@preseason = internal global i32 0, align 4
@terminate = internal global i32 0, align 4
@team = internal global [30 x [2 x [15 x i8]]] [[2 x [15 x i8]] [[15 x i8] c"error\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"   \00\00\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"min\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Minnesota\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"atl\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Atlanta\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"chi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Chicago\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"dal\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Dallas\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"det\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Detroit\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Green Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ram\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Rams\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"no\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New Orleans\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Giants\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"phi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Philadelphia\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pho\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Phoenix\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sf\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Francisco\00\00"], [2 x [15 x i8]] [[15 x i8] c"tb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Tampa Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"was\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Washington\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"buf\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Buffalo\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cin\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cincinnati\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cle\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cleveland\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"den\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Denver\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"hou\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Houston\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ind\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Indianapolis\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"kc\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Kansas City\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"rai\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Raiders\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"mia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Miami\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ne\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New England\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"jet\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Jets\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pit\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Pittsburgh\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sd\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Diego\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sea\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Seattle\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"None\00\00\00\00\00\00\00\00\00\00\00"]], align 16
@divisions = internal global [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 2], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2]], align 16
@nfc_wild_card1 = internal global i32 0, align 4
@nfc_wild_card2 = internal global i32 0, align 4
@nfc_wild_card3 = internal global i32 0, align 4
@afc_wild_card1 = internal global i32 0, align 4
@afc_wild_card2 = internal global i32 0, align 4
@afc_wild_card3 = internal global i32 0, align 4
@nfc_east_champ = internal global i32 0, align 4
@nfc_central_champ = internal global i32 0, align 4
@nfc_west_champ = internal global i32 0, align 4
@afc_east_champ = internal global i32 0, align 4
@afc_central_champ = internal global i32 0, align 4
@afc_west_champ = internal global i32 0, align 4
@.str.143 = private unnamed_addr constant [17 x i8] c"No such team %s\0A\00", align 1
@team_plays = internal global [29 x [29 x i32]] zeroinitializer, align 16
@team_info = internal global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_conf = internal global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_div = internal global [29 x %struct.info] zeroinitializer, align 16
@h_to_h_stats = internal global [29 x [29 x %struct.info]] zeroinitializer, align 16
@num_games = internal global i32 0, align 4
@sched = internal global [18 x [15 x [3 x i32]]] zeroinitializer, align 16
@scores = internal global [19 x [15 x [3 x i32]]] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.164 = private unnamed_addr constant [71 x i8] c"Error in opponent for %s(%d). Expected %s(%d), Found %s(%d). Week #%d\0A\00", align 1
@.str.2.165 = private unnamed_addr constant [60 x i8] c"%s(%d) not found yet: team: %s(%d); week# %d; opp. str: %s\0A\00", align 1
@.str.3.166 = private unnamed_addr constant [67 x i8] c"%s(%d) has opponent %s(%d), but wants %s(%d); \0A          week# %d\0A\00", align 1
@.str.4.167 = private unnamed_addr constant [37 x i8] c"ERROR: Week %d, to many games seen.\0A\00", align 1
@.str.5.170 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6.171 = private unnamed_addr constant [33 x i8] c"Can not write to %s. Not saved.\0A\00", align 1
@.str.7.172 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@the_scores = internal global ptr null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"Saved in %s.\0A\00", align 1
@current_with_disk = internal global i32 0, align 4
@in_fileP = internal global i32 0, align 4
@standings = internal global [29 x i32] zeroinitializer, align 16
@abs_standings = internal global [29 x i32] zeroinitializer, align 16
@conf_standings = internal global [29 x i32] zeroinitializer, align 16
@defence_ranks_nfl = internal global [29 x i32] zeroinitializer, align 16
@defence_ranks = internal global [29 x i32] zeroinitializer, align 16
@offence_ranks_nfl = internal global [29 x i32] zeroinitializer, align 16
@offence_ranks = internal global [29 x i32] zeroinitializer, align 16
@net_ranks_nfl = internal global [29 x i32] zeroinitializer, align 16
@net_ranks = internal global [29 x i32] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@iyear = internal global i32 0, align 4
@.str.11.195 = private unnamed_addr constant [67 x i8] c"Usage: stats [-p] <yy> [input-file]\0A   <yy> is 2 digit year code.\0A\00", align 1
@.str.12.198 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.13.199 = private unnamed_addr constant [10 x i8] c"St. Louis\00", align 1
@inp_sched = internal global [101 x i8] zeroinitializer, align 16
@.str.14.200 = private unnamed_addr constant [14 x i8] c"data/sched.19\00", align 1
@.str.15.201 = private unnamed_addr constant [5 x i8] c".pre\00", align 1
@.str.16.202 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@schedule = internal global ptr null, align 8
@.str.17.203 = private unnamed_addr constant [25 x i8] c"ERROR: Can not open %s.\0A\00", align 1
@.str.18.204 = private unnamed_addr constant [36 x i8] c"ERROR: Can not open input file %s.\0A\00", align 1
@input_score = internal global [101 x i8] zeroinitializer, align 16
@.str.19.207 = private unnamed_addr constant [15 x i8] c"data/scores.19\00", align 1
@.str.20.208 = private unnamed_addr constant [30 x i8] c"No score file. Creating one.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.21.209 = private unnamed_addr constant [49 x i8] c"ERROR: %s is not a legally formated score file.\0A\00", align 1
@.str.22.210 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @common(i32 noundef %0) #0 {
  %2 = alloca [29 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %2) #23
  %3 = getelementptr inbounds i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %3, i8 0, i64 112, i1 false), !tbaa !7
  %4 = icmp slt i32 %0, 1
  br i1 %4, label %23, label %5

5:                                                ; preds = %1
  %6 = add nuw i32 %0, 1
  %7 = zext i32 %6 to i64
  br label %8

8:                                                ; preds = %35, %5
  %9 = phi i64 [ 1, %5 ], [ %36, %35 ]
  %10 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = sext i32 %11 to i64
  br label %13

13:                                               ; preds = %13, %8
  %14 = phi i64 [ 0, %8 ], [ %21, %13 ]
  %15 = or i64 %14, 1
  %16 = getelementptr inbounds [29 x [29 x i32]], ptr @team_plays, i64 0, i64 %12, i64 %15
  %17 = load <4 x i32>, ptr %16, align 4, !tbaa !7
  %18 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %15
  %19 = load <4 x i32>, ptr %18, align 4, !tbaa !7
  %20 = add nsw <4 x i32> %19, %17
  store <4 x i32> %20, ptr %18, align 4, !tbaa !7
  %21 = add nuw i64 %14, 4
  %22 = icmp eq i64 %21, 28
  br i1 %22, label %35, label %13, !llvm.loop !11

23:                                               ; preds = %35, %1
  %24 = insertelement <4 x i32> poison, i32 %0, i64 0
  %25 = shufflevector <4 x i32> %24, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %26

26:                                               ; preds = %26, %23
  %27 = phi i64 [ 0, %23 ], [ %33, %26 ]
  %28 = or i64 %27, 1
  %29 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %28
  %30 = load <4 x i32>, ptr %29, align 4, !tbaa !7
  %31 = icmp sge <4 x i32> %30, %25
  %32 = zext <4 x i1> %31 to <4 x i32>
  store <4 x i32> %32, ptr %29, align 4, !tbaa !7
  %33 = add nuw i64 %27, 4
  %34 = icmp eq i64 %33, 28
  br i1 %34, label %46, label %26, !llvm.loop !15

35:                                               ; preds = %13
  %36 = add nuw nsw i64 %9, 1
  %37 = icmp eq i64 %36, %7
  br i1 %37, label %23, label %8, !llvm.loop !16

38:                                               ; preds = %46
  %39 = load i32, ptr @num_games, align 4, !tbaa !7
  %40 = icmp slt i32 %39, 1
  br i1 %40, label %124, label %41

41:                                               ; preds = %38
  %42 = add nuw i32 %0, 1
  %43 = zext i32 %42 to i64
  %44 = add nuw i32 %39, 1
  %45 = zext i32 %44 to i64
  br label %51

46:                                               ; preds = %46, %26
  %47 = phi i64 [ %49, %46 ], [ 1, %26 ]
  %48 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %47
  %49 = add nuw nsw i64 %47, 1
  %50 = icmp eq i64 %49, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %48, i8 0, i64 20, i1 false)
  br i1 %50, label %38, label %46, !llvm.loop !17

51:                                               ; preds = %121, %41
  %52 = phi i64 [ 1, %41 ], [ %122, %121 ]
  br label %53

53:                                               ; preds = %118, %51
  %54 = phi i64 [ 1, %51 ], [ %119, %118 ]
  %55 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %52, i64 %54, i64 1
  %56 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %52, i64 %54, i64 2
  %57 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %52, i64 %54, i64 2
  %58 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %52, i64 %54, i64 1
  br label %59

59:                                               ; preds = %115, %53
  %60 = phi i32 [ 1, %53 ], [ %116, %115 ]
  %61 = icmp eq i32 %60, 1
  %62 = select i1 %61, ptr %56, ptr %55
  %63 = select i1 %61, ptr %55, ptr %56
  %64 = select i1 %61, i64 2, i64 1
  %65 = select i1 %61, i64 1, i64 2
  %66 = load i32, ptr %63, align 4, !tbaa !7
  %67 = load i32, ptr %62, align 4, !tbaa !7
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %115, label %69

69:                                               ; preds = %59
  %70 = sext i32 %67 to i64
  %71 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = icmp eq i32 %72, 0
  %74 = or i1 %4, %73
  br i1 %74, label %115, label %75

75:                                               ; preds = %80, %69
  %76 = phi i64 [ %81, %80 ], [ 1, %69 ]
  %77 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !7
  %79 = icmp eq i32 %78, %66
  br i1 %79, label %83, label %80

80:                                               ; preds = %75
  %81 = add nuw nsw i64 %76, 1
  %82 = icmp eq i64 %81, %43
  br i1 %82, label %115, label %75, !llvm.loop !18

83:                                               ; preds = %75
  %.lcssa = phi i64 [ %76, %75 ]
  %84 = and i64 %.lcssa, 4294967295
  %85 = icmp eq i64 %84, 0
  br i1 %85, label %115, label %86

86:                                               ; preds = %83
  %87 = load i32, ptr %57, align 4, !tbaa !7
  %88 = icmp sgt i32 %87, -1
  br i1 %88, label %89, label %108

89:                                               ; preds = %86
  %90 = load i32, ptr %58, align 4, !tbaa !7
  %91 = icmp sgt i32 %90, -1
  br i1 %91, label %92, label %108

92:                                               ; preds = %89
  %93 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %52, i64 %54, i64 %64
  %94 = load i32, ptr %93, align 4, !tbaa !7
  %95 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %52, i64 %54, i64 %65
  %96 = load i32, ptr %95, align 4, !tbaa !7
  %97 = icmp slt i32 %94, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %92
  %99 = sext i32 %66 to i64
  %100 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %99
  br label %111

101:                                              ; preds = %92
  %102 = icmp sgt i32 %94, %96
  %103 = sext i32 %66 to i64
  br i1 %102, label %104, label %106

104:                                              ; preds = %101
  %105 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %103, i32 1
  br label %111

106:                                              ; preds = %101
  %107 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %103, i32 2
  br label %111

108:                                              ; preds = %89, %86
  %109 = sext i32 %66 to i64
  %110 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %109, i32 3
  br label %111

111:                                              ; preds = %108, %106, %104, %98
  %112 = phi ptr [ %110, %108 ], [ %105, %104 ], [ %107, %106 ], [ %100, %98 ]
  %113 = load i32, ptr %112, align 4, !tbaa !7
  %114 = add nsw i32 %113, 1
  store i32 %114, ptr %112, align 4, !tbaa !7
  br label %115

115:                                              ; preds = %111, %83, %80, %69, %59
  %116 = add nuw nsw i32 %60, 1
  %117 = icmp eq i32 %116, 3
  br i1 %117, label %118, label %59, !llvm.loop !19

118:                                              ; preds = %115
  %119 = add nuw nsw i64 %54, 1
  %120 = icmp eq i64 %119, 15
  br i1 %120, label %121, label %53, !llvm.loop !20

121:                                              ; preds = %118
  %122 = add nuw nsw i64 %52, 1
  %123 = icmp eq i64 %122, %45
  br i1 %123, label %124, label %51, !llvm.loop !21

124:                                              ; preds = %121, %38
  br label %125

125:                                              ; preds = %132, %124
  %126 = phi i64 [ %133, %132 ], [ 1, %124 ]
  %127 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %126
  %128 = load <4 x i32>, ptr %127, align 4, !tbaa !7
  %129 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %128)
  %130 = icmp slt i32 %129, 4
  br i1 %130, label %131, label %132

131:                                              ; preds = %125
  store i32 -1, ptr %127, align 4, !tbaa !22
  br label %132

132:                                              ; preds = %131, %125
  %133 = add nuw nsw i64 %126, 1
  %134 = icmp eq i64 %133, 29
  br i1 %134, label %135, label %125, !llvm.loop !24

135:                                              ; preds = %132
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal i32 @head_to_head_sweap(ptr nocapture noundef %0, i32 noundef %1) #4 {
  %3 = icmp sgt i32 %1, 0
  br i1 %3, label %4, label %64

4:                                                ; preds = %2
  %5 = zext i32 %1 to i64
  br label %6

6:                                                ; preds = %61, %4
  %7 = phi i64 [ 0, %4 ], [ %62, %61 ]
  %8 = getelementptr inbounds i32, ptr %0, i64 %7
  br label %9

9:                                                ; preds = %39, %6
  %10 = phi i64 [ 0, %6 ], [ %42, %39 ]
  %11 = phi i32 [ 1, %6 ], [ %41, %39 ]
  %12 = phi i32 [ 1, %6 ], [ %40, %39 ]
  %13 = icmp eq i64 %7, %10
  br i1 %13, label %39, label %14

14:                                               ; preds = %9
  %15 = load i32, ptr %8, align 4, !tbaa !7
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i32, ptr %0, i64 %10
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %16, i64 %19, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !25
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %39

23:                                               ; preds = %14
  %24 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %16, i64 %19
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = icmp eq i32 %25, 0
  %27 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %16, i64 %19, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !26
  %29 = icmp eq i32 %28, 0
  br i1 %26, label %32, label %30

30:                                               ; preds = %23
  %31 = select i1 %29, i32 %12, i32 0
  br label %39

32:                                               ; preds = %23
  %33 = select i1 %29, i32 0, i32 %12
  %34 = select i1 %29, i32 0, i32 %11
  %35 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %16, i64 %19, i32 1
  %36 = load i32, ptr %35, align 4, !tbaa !26
  %37 = icmp eq i32 %36, 0
  %38 = select i1 %37, i32 %33, i32 0
  br label %39

39:                                               ; preds = %32, %30, %14, %9
  %40 = phi i32 [ %12, %9 ], [ %31, %30 ], [ %38, %32 ], [ 0, %14 ]
  %41 = phi i32 [ %11, %9 ], [ 0, %30 ], [ %34, %32 ], [ 0, %14 ]
  %42 = add nuw nsw i64 %10, 1
  %43 = icmp eq i64 %42, %5
  br i1 %43, label %44, label %9, !llvm.loop !27

44:                                               ; preds = %39
  %.lcssa1 = phi i32 [ %40, %39 ]
  %.lcssa = phi i32 [ %41, %39 ]
  %45 = icmp eq i32 %.lcssa1, 0
  br i1 %45, label %51, label %46

46:                                               ; preds = %44
  %.lcssa2 = phi i64 [ %7, %44 ]
  %47 = load i32, ptr %0, align 4, !tbaa !7
  %48 = and i64 %.lcssa2, 4294967295
  %49 = getelementptr inbounds i32, ptr %0, i64 %48
  %50 = load i32, ptr %49, align 4, !tbaa !7
  store i32 %50, ptr %0, align 4, !tbaa !7
  store i32 %47, ptr %49, align 4, !tbaa !7
  br label %64

51:                                               ; preds = %44
  %52 = icmp eq i32 %.lcssa, 0
  br i1 %52, label %61, label %53

53:                                               ; preds = %51
  %.lcssa3 = phi i64 [ %7, %51 ]
  %54 = add nsw i32 %1, -1
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i32, ptr %0, i64 %55
  %57 = load i32, ptr %56, align 4, !tbaa !7
  %58 = and i64 %.lcssa3, 4294967295
  %59 = getelementptr inbounds i32, ptr %0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !7
  store i32 %60, ptr %56, align 4, !tbaa !7
  store i32 %57, ptr %59, align 4, !tbaa !7
  br label %64

61:                                               ; preds = %51
  %62 = add nuw nsw i64 %7, 1
  %63 = icmp eq i64 %62, %5
  br i1 %63, label %64, label %6, !llvm.loop !28

64:                                               ; preds = %61, %53, %46, %2
  %65 = phi i32 [ 1, %46 ], [ %54, %53 ], [ %1, %2 ], [ %1, %61 ]
  ret i32 %65
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @head_to_head(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = alloca [28 x i32], align 16
  %4 = alloca [5 x double], align 16
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  %5 = icmp sgt i32 %1, 5
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  br label %94

9:                                                ; preds = %6
  %10 = zext i32 %1 to i64
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #24
  unreachable

13:                                               ; preds = %55, %9
  %14 = phi i64 [ 0, %9 ], [ %64, %55 ]
  %15 = phi i32 [ 0, %9 ], [ %63, %55 ]
  %16 = phi double [ 0.000000e+00, %9 ], [ %59, %55 ]
  %17 = getelementptr inbounds i32, ptr %0, i64 %14
  br label %18

18:                                               ; preds = %39, %13
  %19 = phi i64 [ 0, %13 ], [ %43, %39 ]
  %20 = phi i32 [ 0, %13 ], [ %42, %39 ]
  %21 = phi i32 [ 0, %13 ], [ %41, %39 ]
  %22 = phi i32 [ 0, %13 ], [ %40, %39 ]
  %23 = icmp eq i64 %14, %19
  br i1 %23, label %39, label %24

24:                                               ; preds = %18
  %25 = load i32, ptr %17, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i32, ptr %0, i64 %19
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %26, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !22
  %32 = add nsw i32 %31, %22
  %33 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %26, i64 %29, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !26
  %35 = add nsw i32 %34, %21
  %36 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %26, i64 %29, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = add nsw i32 %37, %20
  br label %39

39:                                               ; preds = %24, %18
  %40 = phi i32 [ %32, %24 ], [ %22, %18 ]
  %41 = phi i32 [ %35, %24 ], [ %21, %18 ]
  %42 = phi i32 [ %38, %24 ], [ %20, %18 ]
  %43 = add nuw nsw i64 %19, 1
  %44 = icmp eq i64 %43, %10
  br i1 %44, label %45, label %18, !llvm.loop !29

45:                                               ; preds = %39
  %.lcssa2 = phi i32 [ %40, %39 ]
  %.lcssa1 = phi i32 [ %41, %39 ]
  %.lcssa = phi i32 [ %42, %39 ]
  %46 = add nsw i32 %.lcssa1, %.lcssa2
  %47 = add nsw i32 %46, %.lcssa
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %55, label %49

49:                                               ; preds = %45
  %50 = sitofp i32 %.lcssa2 to double
  %51 = sitofp i32 %.lcssa to double
  %52 = tail call double @llvm.fmuladd.f64(double %51, double 5.000000e-01, double %50)
  %53 = sitofp i32 %47 to double
  %54 = fdiv double %52, %53
  br label %55

55:                                               ; preds = %49, %45
  %56 = phi double [ %54, %49 ], [ 0.000000e+00, %45 ]
  %57 = getelementptr inbounds [5 x double], ptr %4, i64 0, i64 %14
  store double %56, ptr %57, align 8, !tbaa !30
  %58 = fcmp ogt double %56, %16
  %59 = select i1 %58, double %56, double %16
  %60 = select i1 %58, i32 0, i32 %15
  %61 = fcmp oeq double %56, %59
  %62 = zext i1 %61 to i32
  %63 = add nsw i32 %60, %62
  %64 = add nuw nsw i64 %14, 1
  %65 = icmp eq i64 %64, %10
  br i1 %65, label %66, label %13, !llvm.loop !32

66:                                               ; preds = %55
  %.lcssa4 = phi double [ %59, %55 ]
  %.lcssa3 = phi i32 [ %63, %55 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  br i1 %7, label %67, label %94

67:                                               ; preds = %66
  %68 = zext i32 %1 to i64
  br label %71

69:                                               ; preds = %89
  %70 = shl nuw nsw i64 %68, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %3, i64 %70, i1 false), !tbaa !7
  br label %94

71:                                               ; preds = %89, %67
  %72 = phi i64 [ 0, %67 ], [ %92, %89 ]
  %73 = phi i32 [ 0, %67 ], [ %91, %89 ]
  %74 = phi i32 [ 0, %67 ], [ %90, %89 ]
  %75 = getelementptr inbounds double, ptr %4, i64 %72
  %76 = load double, ptr %75, align 8, !tbaa !30
  %77 = fcmp oeq double %76, %.lcssa4
  %78 = getelementptr inbounds i32, ptr %0, i64 %72
  %79 = load i32, ptr %78, align 4, !tbaa !7
  br i1 %77, label %80, label %84

80:                                               ; preds = %71
  %81 = sext i32 %74 to i64
  %82 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %81
  store i32 %79, ptr %82, align 4, !tbaa !7
  %83 = add nsw i32 %74, 1
  br label %89

84:                                               ; preds = %71
  %85 = add nsw i32 %73, %.lcssa3
  %86 = sext i32 %85 to i64
  %87 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %86
  store i32 %79, ptr %87, align 4, !tbaa !7
  %88 = add nsw i32 %73, 1
  br label %89

89:                                               ; preds = %84, %80
  %90 = phi i32 [ %83, %80 ], [ %74, %84 ]
  %91 = phi i32 [ %73, %80 ], [ %88, %84 ]
  %92 = add nuw nsw i64 %72, 1
  %93 = icmp eq i64 %92, %68
  br i1 %93, label %69, label %71, !llvm.loop !33

94:                                               ; preds = %69, %66, %8
  %95 = phi i32 [ 0, %8 ], [ %.lcssa3, %66 ], [ %.lcssa3, %69 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  ret i32 %95
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #8

; Function Attrs: nounwind optsize uwtable
define internal i32 @break_common(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = alloca [28 x i32], align 16
  %4 = alloca [28 x double], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %4) #23
  %5 = icmp sgt i32 %1, 28
  br i1 %5, label %11, label %6

6:                                                ; preds = %2
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %9, label %8

8:                                                ; preds = %6
  tail call void @common(i32 noundef %1) #25
  br label %70

9:                                                ; preds = %6
  %10 = zext i32 %1 to i64
  br label %13

11:                                               ; preds = %2
  %12 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  tail call void @exit(i32 noundef 1) #24
  unreachable

13:                                               ; preds = %13, %9
  %14 = phi i64 [ 0, %9 ], [ %17, %13 ]
  %15 = getelementptr inbounds i32, ptr %0, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = add nuw nsw i64 %14, 1
  %18 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %17
  store i32 %16, ptr %18, align 4, !tbaa !7
  %19 = icmp eq i64 %17, %10
  br i1 %19, label %20, label %13, !llvm.loop !34

20:                                               ; preds = %13
  tail call void @common(i32 noundef %1) #25
  br i1 %7, label %21, label %70

21:                                               ; preds = %20
  %22 = zext i32 %1 to i64
  br label %29

23:                                               ; preds = %29
  %24 = add nuw nsw i64 %30, 1
  %25 = icmp eq i64 %24, %22
  br i1 %25, label %26, label %29, !llvm.loop !35

26:                                               ; preds = %23
  br i1 %7, label %27, label %70

27:                                               ; preds = %26
  %28 = zext i32 %1 to i64
  br label %37

29:                                               ; preds = %23, %21
  %30 = phi i64 [ 0, %21 ], [ %24, %23 ]
  %31 = getelementptr inbounds i32, ptr %0, i64 %30
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !22
  %36 = icmp eq i32 %35, -1
  br i1 %36, label %101, label %23

37:                                               ; preds = %59, %27
  %38 = phi i64 [ 0, %27 ], [ %68, %59 ]
  %39 = phi i32 [ 0, %27 ], [ %67, %59 ]
  %40 = phi double [ 0.000000e+00, %27 ], [ %63, %59 ]
  %41 = getelementptr inbounds i32, ptr %0, i64 %38
  %42 = load i32, ptr %41, align 4, !tbaa !7
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !22
  %46 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %43, i32 1
  %47 = load i32, ptr %46, align 4, !tbaa !26
  %48 = add nsw i32 %47, %45
  %49 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %43, i32 2
  %50 = load i32, ptr %49, align 4, !tbaa !25
  %51 = add nsw i32 %48, %50
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %59, label %53

53:                                               ; preds = %37
  %54 = sitofp i32 %45 to double
  %55 = sitofp i32 %50 to double
  %56 = tail call double @llvm.fmuladd.f64(double %55, double 5.000000e-01, double %54)
  %57 = sitofp i32 %51 to double
  %58 = fdiv double %56, %57
  br label %59

59:                                               ; preds = %53, %37
  %60 = phi double [ %58, %53 ], [ 0.000000e+00, %37 ]
  %61 = getelementptr inbounds [28 x double], ptr %4, i64 0, i64 %38
  store double %60, ptr %61, align 8, !tbaa !30
  %62 = fcmp ogt double %60, %40
  %63 = select i1 %62, double %60, double %40
  %64 = select i1 %62, i32 0, i32 %39
  %65 = fcmp oeq double %60, %63
  %66 = zext i1 %65 to i32
  %67 = add nsw i32 %64, %66
  %68 = add nuw nsw i64 %38, 1
  %69 = icmp eq i64 %68, %28
  br i1 %69, label %71, label %37, !llvm.loop !36

70:                                               ; preds = %26, %20, %8
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  br label %99

71:                                               ; preds = %59
  %.lcssa1 = phi double [ %63, %59 ]
  %.lcssa = phi i32 [ %67, %59 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  br i1 %7, label %72, label %99

72:                                               ; preds = %71
  %73 = zext i32 %1 to i64
  br label %76

74:                                               ; preds = %94
  %75 = shl nuw nsw i64 %73, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %3, i64 %75, i1 false), !tbaa !7
  br label %99

76:                                               ; preds = %94, %72
  %77 = phi i64 [ 0, %72 ], [ %97, %94 ]
  %78 = phi i32 [ 0, %72 ], [ %96, %94 ]
  %79 = phi i32 [ 0, %72 ], [ %95, %94 ]
  %80 = getelementptr inbounds double, ptr %4, i64 %77
  %81 = load double, ptr %80, align 8, !tbaa !30
  %82 = fcmp oeq double %81, %.lcssa1
  %83 = getelementptr inbounds i32, ptr %0, i64 %77
  %84 = load i32, ptr %83, align 4, !tbaa !7
  br i1 %82, label %85, label %89

85:                                               ; preds = %76
  %86 = sext i32 %79 to i64
  %87 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %86
  store i32 %84, ptr %87, align 4, !tbaa !7
  %88 = add nsw i32 %79, 1
  br label %94

89:                                               ; preds = %76
  %90 = add nsw i32 %78, %.lcssa
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %91
  store i32 %84, ptr %92, align 4, !tbaa !7
  %93 = add nsw i32 %78, 1
  br label %94

94:                                               ; preds = %89, %85
  %95 = phi i32 [ %88, %85 ], [ %79, %89 ]
  %96 = phi i32 [ %78, %85 ], [ %93, %89 ]
  %97 = add nuw nsw i64 %77, 1
  %98 = icmp eq i64 %97, %73
  br i1 %98, label %74, label %76, !llvm.loop !33

99:                                               ; preds = %74, %71, %70
  %100 = phi i32 [ 0, %70 ], [ %.lcssa, %71 ], [ %.lcssa, %74 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #23
  br label %101

101:                                              ; preds = %99, %29
  %102 = phi i32 [ %100, %99 ], [ %1, %29 ]
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %4) #23
  ret i32 %102
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @div_conf_rec(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca [28 x i32], align 16
  %5 = alloca [28 x double], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  %6 = icmp sgt i32 %1, 28
  br i1 %6, label %13, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br label %93

10:                                               ; preds = %7
  %11 = icmp eq i32 %2, 1
  %12 = zext i32 %1 to i64
  br label %15

13:                                               ; preds = %3
  %14 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef 1) #24
  unreachable

15:                                               ; preds = %54, %10
  %16 = phi i64 [ 0, %10 ], [ %63, %54 ]
  %17 = phi i32 [ 0, %10 ], [ %62, %54 ]
  %18 = phi double [ 0.000000e+00, %10 ], [ %58, %54 ]
  %19 = getelementptr inbounds i32, ptr %0, i64 %16
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  br i1 %11, label %22, label %38

22:                                               ; preds = %15
  %23 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %21
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %21, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %21, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %54, label %32

32:                                               ; preds = %22
  %33 = sitofp i32 %24 to double
  %34 = sitofp i32 %29 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 5.000000e-01, double %33)
  %36 = sitofp i32 %30 to double
  %37 = fdiv double %35, %36
  br label %54

38:                                               ; preds = %15
  %39 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %21
  %40 = load i32, ptr %39, align 4, !tbaa !22
  %41 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %21, i32 1
  %42 = load i32, ptr %41, align 4, !tbaa !26
  %43 = add nsw i32 %42, %40
  %44 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %21, i32 2
  %45 = load i32, ptr %44, align 4, !tbaa !25
  %46 = add nsw i32 %43, %45
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %54, label %48

48:                                               ; preds = %38
  %49 = sitofp i32 %40 to double
  %50 = sitofp i32 %45 to double
  %51 = tail call double @llvm.fmuladd.f64(double %50, double 5.000000e-01, double %49)
  %52 = sitofp i32 %46 to double
  %53 = fdiv double %51, %52
  br label %54

54:                                               ; preds = %48, %38, %32, %22
  %55 = phi double [ %37, %32 ], [ 0.000000e+00, %22 ], [ %53, %48 ], [ 0.000000e+00, %38 ]
  %56 = getelementptr inbounds [28 x double], ptr %5, i64 0, i64 %16
  store double %55, ptr %56, align 8, !tbaa !30
  %57 = fcmp ogt double %55, %18
  %58 = select i1 %57, double %55, double %18
  %59 = select i1 %57, i32 0, i32 %17
  %60 = fcmp oeq double %55, %58
  %61 = zext i1 %60 to i32
  %62 = add nsw i32 %59, %61
  %63 = add nuw nsw i64 %16, 1
  %64 = icmp eq i64 %63, %12
  br i1 %64, label %65, label %15, !llvm.loop !37

65:                                               ; preds = %54
  %.lcssa1 = phi double [ %58, %54 ]
  %.lcssa = phi i32 [ %62, %54 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br i1 %8, label %66, label %93

66:                                               ; preds = %65
  %67 = zext i32 %1 to i64
  br label %70

68:                                               ; preds = %88
  %69 = shl nuw nsw i64 %67, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %4, i64 %69, i1 false), !tbaa !7
  br label %93

70:                                               ; preds = %88, %66
  %71 = phi i64 [ 0, %66 ], [ %91, %88 ]
  %72 = phi i32 [ 0, %66 ], [ %90, %88 ]
  %73 = phi i32 [ 0, %66 ], [ %89, %88 ]
  %74 = getelementptr inbounds double, ptr %5, i64 %71
  %75 = load double, ptr %74, align 8, !tbaa !30
  %76 = fcmp oeq double %75, %.lcssa1
  %77 = getelementptr inbounds i32, ptr %0, i64 %71
  %78 = load i32, ptr %77, align 4, !tbaa !7
  br i1 %76, label %79, label %83

79:                                               ; preds = %70
  %80 = sext i32 %73 to i64
  %81 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %80
  store i32 %78, ptr %81, align 4, !tbaa !7
  %82 = add nsw i32 %73, 1
  br label %88

83:                                               ; preds = %70
  %84 = add nsw i32 %72, %.lcssa
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %85
  store i32 %78, ptr %86, align 4, !tbaa !7
  %87 = add nsw i32 %72, 1
  br label %88

88:                                               ; preds = %83, %79
  %89 = phi i32 [ %82, %79 ], [ %73, %83 ]
  %90 = phi i32 [ %72, %79 ], [ %87, %83 ]
  %91 = add nuw nsw i64 %71, 1
  %92 = icmp eq i64 %91, %67
  br i1 %92, label %68, label %70, !llvm.loop !33

93:                                               ; preds = %68, %65, %9
  %94 = phi i32 [ 0, %9 ], [ %.lcssa, %65 ], [ %.lcssa, %68 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  ret i32 %94
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @break_net_points(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = alloca [28 x i32], align 16
  %5 = alloca [28 x double], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  %6 = icmp sgt i32 %1, 28
  br i1 %6, label %12, label %7

7:                                                ; preds = %3
  %8 = icmp sgt i32 %1, 0
  br i1 %8, label %10, label %9

9:                                                ; preds = %7
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br label %80

10:                                               ; preds = %7
  %11 = zext i32 %1 to i64
  br label %14

12:                                               ; preds = %3
  %13 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef 1) #24
  unreachable

14:                                               ; preds = %36, %10
  %15 = phi i64 [ 0, %10 ], [ %50, %36 ]
  %16 = phi i32 [ 0, %10 ], [ %49, %36 ]
  %17 = phi double [ -1.000000e+04, %10 ], [ %45, %36 ]
  switch i32 %2, label %30 [
    i32 1, label %18
    i32 0, label %24
  ]

18:                                               ; preds = %14
  %19 = getelementptr inbounds i32, ptr %0, i64 %15
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %21, i32 3
  %23 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %21, i32 4
  br label %36

24:                                               ; preds = %14
  %25 = getelementptr inbounds i32, ptr %0, i64 %15
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %27, i32 3
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %27, i32 4
  br label %36

30:                                               ; preds = %14
  %31 = getelementptr inbounds i32, ptr %0, i64 %15
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %33, i32 3
  %35 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %33, i32 4
  br label %36

36:                                               ; preds = %30, %24, %18
  %37 = phi ptr [ %29, %24 ], [ %35, %30 ], [ %23, %18 ]
  %38 = phi ptr [ %28, %24 ], [ %34, %30 ], [ %22, %18 ]
  %39 = load i32, ptr %38, align 4, !tbaa !38
  %40 = load i32, ptr %37, align 4, !tbaa !39
  %41 = sub nsw i32 %39, %40
  %42 = sitofp i32 %41 to double
  %43 = getelementptr inbounds [28 x double], ptr %5, i64 0, i64 %15
  store double %42, ptr %43, align 8, !tbaa !30
  %44 = fcmp olt double %17, %42
  %45 = select i1 %44, double %42, double %17
  %46 = select i1 %44, i32 0, i32 %16
  %47 = fcmp oeq double %45, %42
  %48 = zext i1 %47 to i32
  %49 = add nsw i32 %46, %48
  %50 = add nuw nsw i64 %15, 1
  %51 = icmp eq i64 %50, %11
  br i1 %51, label %52, label %14, !llvm.loop !40

52:                                               ; preds = %36
  %.lcssa1 = phi double [ %45, %36 ]
  %.lcssa = phi i32 [ %49, %36 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br i1 %8, label %53, label %80

53:                                               ; preds = %52
  %54 = zext i32 %1 to i64
  br label %57

55:                                               ; preds = %75
  %56 = shl nuw nsw i64 %54, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %4, i64 %56, i1 false), !tbaa !7
  br label %80

57:                                               ; preds = %75, %53
  %58 = phi i64 [ 0, %53 ], [ %78, %75 ]
  %59 = phi i32 [ 0, %53 ], [ %77, %75 ]
  %60 = phi i32 [ 0, %53 ], [ %76, %75 ]
  %61 = getelementptr inbounds double, ptr %5, i64 %58
  %62 = load double, ptr %61, align 8, !tbaa !30
  %63 = fcmp oeq double %62, %.lcssa1
  %64 = getelementptr inbounds i32, ptr %0, i64 %58
  %65 = load i32, ptr %64, align 4, !tbaa !7
  br i1 %63, label %66, label %70

66:                                               ; preds = %57
  %67 = sext i32 %60 to i64
  %68 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %67
  store i32 %65, ptr %68, align 4, !tbaa !7
  %69 = add nsw i32 %60, 1
  br label %75

70:                                               ; preds = %57
  %71 = add nsw i32 %59, %.lcssa
  %72 = sext i32 %71 to i64
  %73 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %72
  store i32 %65, ptr %73, align 4, !tbaa !7
  %74 = add nsw i32 %59, 1
  br label %75

75:                                               ; preds = %70, %66
  %76 = phi i32 [ %69, %66 ], [ %60, %70 ]
  %77 = phi i32 [ %59, %66 ], [ %74, %70 ]
  %78 = add nuw nsw i64 %58, 1
  %79 = icmp eq i64 %78, %54
  br i1 %79, label %55, label %57, !llvm.loop !33

80:                                               ; preds = %55, %52, %9
  %81 = phi i32 [ 0, %9 ], [ %.lcssa, %52 ], [ %.lcssa, %55 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  ret i32 %81
}

; Function Attrs: nounwind optsize uwtable
define internal void @break_a_tie(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = icmp slt i32 %1, 2
  br i1 %4, label %86, label %5

5:                                                ; preds = %3
  %6 = icmp eq i32 %2, 0
  br label %7

7:                                                ; preds = %47, %5
  %8 = phi i32 [ %1, %5 ], [ %51, %47 ]
  %9 = phi ptr [ %0, %5 ], [ %50, %47 ]
  %10 = zext i32 %8 to i64
  br label %11

11:                                               ; preds = %26, %7
  %12 = phi i64 [ 1, %7 ], [ %29, %26 ]
  %13 = phi i32 [ 1, %7 ], [ %28, %26 ]
  %14 = icmp eq i32 %13, 0
  br i1 %14, label %26, label %15

15:                                               ; preds = %11
  %16 = load i32, ptr %9, align 4, !tbaa !7
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %17, i64 1
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = getelementptr inbounds i32, ptr %9, i64 %12
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %22, i64 1
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = icmp eq i32 %19, %24
  br label %26

26:                                               ; preds = %15, %11
  %27 = phi i1 [ false, %11 ], [ %25, %15 ]
  %28 = zext i1 %27 to i32
  %29 = add nuw nsw i64 %12, 1
  %30 = icmp eq i64 %29, %10
  br i1 %30, label %31, label %11, !llvm.loop !41

31:                                               ; preds = %26
  %.lcssa1 = phi i1 [ %27, %26 ]
  %.lcssa = phi i32 [ %28, %26 ]
  br i1 %6, label %35, label %32

32:                                               ; preds = %31
  %33 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.lcssa) #25
  %34 = load ptr, ptr @stdout, align 8, !tbaa !42
  tail call void @display_split(ptr noundef %34, ptr noundef %9, i32 noundef %8, i32 noundef %8) #25
  br label %35

35:                                               ; preds = %32, %31
  %36 = icmp eq i32 %8, 2
  %37 = or i1 %36, %.lcssa1
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = tail call i32 @head_to_head(ptr noundef %9, i32 noundef %8) #25
  %40 = icmp eq i32 %39, %8
  br i1 %40, label %57, label %41

41:                                               ; preds = %38
  br i1 %6, label %47, label %42

42:                                               ; preds = %82, %78, %74, %69, %65, %61, %56, %41
  %43 = phi i32 [ %54, %56 ], [ %59, %61 ], [ %63, %65 ], [ %67, %69 ], [ %72, %74 ], [ %76, %78 ], [ %80, %82 ], [ %39, %41 ]
  %44 = phi ptr [ @str.27, %56 ], [ @str.26, %61 ], [ @str.25, %65 ], [ @str.24, %69 ], [ @str.23, %74 ], [ @str.22, %78 ], [ @str.21, %82 ], [ @str.28, %41 ]
  %45 = load ptr, ptr @stdout, align 8, !tbaa !42
  tail call void @display_split(ptr noundef %45, ptr noundef %9, i32 noundef %43, i32 noundef %8) #25
  %46 = tail call i32 @puts(ptr nonnull dereferenceable(1) %44)
  br label %47

47:                                               ; preds = %82, %78, %74, %69, %65, %61, %56, %42, %41
  %48 = phi i32 [ %54, %56 ], [ %59, %61 ], [ %63, %65 ], [ %67, %69 ], [ %72, %74 ], [ %76, %78 ], [ %80, %82 ], [ %39, %41 ], [ %43, %42 ]
  tail call void @break_a_tie(ptr noundef %9, i32 noundef %48, i32 noundef %2) #25
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, ptr %9, i64 %49
  %51 = sub nsw i32 %8, %48
  %52 = icmp slt i32 %51, 2
  br i1 %52, label %86, label %7

53:                                               ; preds = %35
  %54 = tail call i32 @head_to_head_sweap(ptr noundef %9, i32 noundef %8) #25
  %55 = icmp eq i32 %54, %8
  br i1 %55, label %62, label %56

56:                                               ; preds = %53
  br i1 %6, label %47, label %42

57:                                               ; preds = %38
  br i1 %.lcssa1, label %58, label %62

58:                                               ; preds = %57
  %59 = tail call i32 @div_conf_rec(ptr noundef %9, i32 noundef %8, i32 noundef 1) #25
  %60 = icmp eq i32 %59, %8
  br i1 %60, label %62, label %61

61:                                               ; preds = %58
  br i1 %6, label %47, label %42

62:                                               ; preds = %58, %57, %53
  %63 = tail call i32 @div_conf_rec(ptr noundef %9, i32 noundef %8, i32 noundef 0) #25
  %64 = icmp eq i32 %63, %8
  br i1 %64, label %66, label %65

65:                                               ; preds = %62
  br i1 %6, label %47, label %42

66:                                               ; preds = %62
  %67 = tail call i32 @break_common(ptr noundef %9, i32 noundef %8) #25
  %68 = icmp eq i32 %67, %8
  br i1 %68, label %70, label %69

69:                                               ; preds = %66
  br i1 %6, label %47, label %42

70:                                               ; preds = %66
  br i1 %.lcssa1, label %71, label %75

71:                                               ; preds = %70
  %72 = tail call i32 @break_net_points(ptr noundef %9, i32 noundef %8, i32 noundef 1) #25
  %73 = icmp eq i32 %72, %8
  br i1 %73, label %79, label %74

74:                                               ; preds = %71
  br i1 %6, label %47, label %42

75:                                               ; preds = %70
  %76 = tail call i32 @break_net_points(ptr noundef %9, i32 noundef %8, i32 noundef 0) #25
  %77 = icmp eq i32 %76, %8
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  br i1 %6, label %47, label %42

79:                                               ; preds = %75, %71
  %80 = tail call i32 @break_net_points(ptr noundef %9, i32 noundef %8, i32 noundef 2) #25
  %81 = icmp eq i32 %80, %8
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  br i1 %6, label %47, label %42

83:                                               ; preds = %79
  br i1 %6, label %86, label %84

84:                                               ; preds = %83
  %85 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  br label %86

86:                                               ; preds = %84, %83, %47, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_split(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) #10 {
  %5 = icmp sgt i32 %3, 0
  br i1 %5, label %6, label %25

6:                                                ; preds = %4
  %7 = add nsw i32 %2, -1
  %8 = icmp eq i32 %2, %3
  %9 = zext i32 %7 to i64
  %10 = zext i32 %3 to i64
  br label %11

11:                                               ; preds = %22, %6
  %12 = phi i64 [ 0, %6 ], [ %23, %22 ]
  %13 = getelementptr inbounds i32, ptr %1, i64 %12
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %15, i64 1
  %17 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %16) #25
  %18 = icmp ne i64 %12, %9
  %19 = or i1 %8, %18
  br i1 %19, label %22, label %20

20:                                               ; preds = %11
  %21 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 6, i64 1, ptr %0)
  br label %22

22:                                               ; preds = %20, %11
  %23 = add nuw nsw i64 %12, 1
  %24 = icmp eq i64 %23, %10
  br i1 %24, label %25, label %11, !llvm.loop !44

25:                                               ; preds = %22, %4
  %26 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal void @prompt(ptr nocapture noundef %0, ptr nocapture noundef %1) #10 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %0)
  %4 = tail call ptr @get_responce(ptr noundef %1) #25
  %5 = load i8, ptr %4, align 1, !tbaa !45
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i32 1, ptr @got_unused_responce, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal nonnull ptr @get_responce(ptr nocapture noundef %0) #10 {
  %2 = load i32, ptr @got_unused_responce, align 4, !tbaa !7
  %3 = icmp eq i32 %2, 0
  br i1 %3, label %4, label %47

4:                                                ; preds = %1
  %5 = tail call ptr @fgets(ptr noundef nonnull @responce, i32 noundef 50, ptr noundef %0) #25
  %6 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %11, label %8

8:                                                ; preds = %4
  %9 = load ptr, ptr @stdout, align 8, !tbaa !42
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %9, ptr noundef nonnull @.str.2, ptr noundef nonnull @responce) #25
  br label %11

11:                                               ; preds = %8, %4
  %12 = load i8, ptr @responce, align 16, !tbaa !45
  %13 = icmp eq i8 %12, 0
  br i1 %13, label %25, label %14

14:                                               ; preds = %21, %11
  %15 = phi i8 [ %23, %21 ], [ %12, %11 ]
  %16 = phi ptr [ %22, %21 ], [ @responce, %11 ]
  %17 = add i8 %15, -65
  %18 = icmp ult i8 %17, 26
  br i1 %18, label %19, label %21

19:                                               ; preds = %14
  %20 = add nuw nsw i8 %15, 32
  store i8 %20, ptr %16, align 1, !tbaa !45
  br label %21

21:                                               ; preds = %19, %14
  %22 = getelementptr inbounds i8, ptr %16, i64 1
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = icmp eq i8 %23, 0
  br i1 %24, label %25, label %14, !llvm.loop !46

25:                                               ; preds = %21, %11
  %26 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @responce) #26
  %27 = getelementptr inbounds i8, ptr @responce, i64 %26
  %28 = load i1, ptr @white_space.commentP, align 4
  %29 = getelementptr inbounds i8, ptr %27, i64 -1
  %30 = icmp ult ptr %29, @responce
  br i1 %30, label %49, label %31

31:                                               ; preds = %42, %25
  %32 = phi i1 [ %43, %42 ], [ %28, %25 ]
  %33 = phi ptr [ %45, %42 ], [ %29, %25 ]
  %34 = phi i1 [ %44, %42 ], [ %28, %25 ]
  %35 = load i8, ptr %33, align 1, !tbaa !45
  %36 = icmp eq i8 %35, 37
  br i1 %36, label %41, label %37

37:                                               ; preds = %31
  br i1 %34, label %38, label %40

38:                                               ; preds = %37
  %39 = icmp eq i8 %35, 10
  br i1 %39, label %41, label %42

40:                                               ; preds = %37
  switch i8 %35, label %49 [
    i8 32, label %42
    i8 10, label %42
    i8 9, label %42
  ]

41:                                               ; preds = %38, %31
  store i1 %36, ptr @white_space.commentP, align 4
  br label %42

42:                                               ; preds = %41, %40, %40, %40, %38
  %43 = phi i1 [ %32, %38 ], [ %32, %40 ], [ %32, %40 ], [ %32, %40 ], [ %36, %41 ]
  %44 = phi i1 [ true, %38 ], [ false, %40 ], [ false, %40 ], [ false, %40 ], [ %36, %41 ]
  store i8 0, ptr %33, align 1, !tbaa !45
  %45 = getelementptr inbounds i8, ptr %33, i64 -1
  %46 = icmp ult ptr %45, @responce
  br i1 %46, label %49, label %31, !llvm.loop !47

47:                                               ; preds = %1
  store i32 0, ptr @got_unused_responce, align 4, !tbaa !7
  %48 = load i1, ptr @white_space.commentP, align 4
  br label %49

49:                                               ; preds = %47, %42, %40, %25
  %50 = phi i1 [ %48, %47 ], [ %28, %25 ], [ %32, %40 ], [ %43, %42 ]
  br label %51

51:                                               ; preds = %61, %49
  %52 = phi i1 [ %62, %61 ], [ %50, %49 ]
  %53 = phi ptr [ %63, %61 ], [ @responce, %49 ]
  %54 = load i8, ptr %53, align 1, !tbaa !45
  switch i8 %54, label %55 [
    i8 0, label %64
    i8 37, label %59
  ]

55:                                               ; preds = %51
  br i1 %52, label %56, label %58

56:                                               ; preds = %55
  %57 = icmp eq i8 %54, 10
  br i1 %57, label %59, label %61

58:                                               ; preds = %55
  switch i8 %54, label %64 [
    i8 32, label %61
    i8 10, label %61
    i8 9, label %61
  ]

59:                                               ; preds = %56, %51
  %60 = phi i1 [ true, %51 ], [ false, %56 ]
  store i1 %60, ptr @white_space.commentP, align 4
  br label %61

61:                                               ; preds = %59, %58, %58, %58, %56
  %62 = phi i1 [ true, %56 ], [ false, %58 ], [ false, %58 ], [ false, %58 ], [ %60, %59 ]
  %63 = getelementptr inbounds i8, ptr %53, i64 1
  br label %51, !llvm.loop !48

64:                                               ; preds = %58, %51
  %.lcssa = phi ptr [ %53, %58 ], [ %53, %51 ]
  ret ptr %.lcssa
}

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable
define internal i32 @str_to_int(ptr nocapture noundef readonly %0) #12 {
  %2 = load i8, ptr %0, align 1, !tbaa !45
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %18, label %4

4:                                                ; preds = %4, %1
  %5 = phi i8 [ %16, %4 ], [ %2, %1 ]
  %6 = phi ptr [ %15, %4 ], [ %0, %1 ]
  %7 = phi i32 [ %14, %4 ], [ 0, %1 ]
  %8 = sext i8 %5 to i32
  %9 = mul nsw i32 %7, 10
  %10 = add i8 %5, -48
  %11 = icmp ult i8 %10, 10
  %12 = add nsw i32 %8, -48
  %13 = select i1 %11, i32 %12, i32 0
  %14 = add nsw i32 %13, %9
  %15 = getelementptr inbounds i8, ptr %6, i64 1
  %16 = load i8, ptr %15, align 1, !tbaa !45
  %17 = icmp eq i8 %16, 0
  br i1 %17, label %18, label %4, !llvm.loop !49

18:                                               ; preds = %4, %1
  %19 = phi i32 [ 0, %1 ], [ %14, %4 ]
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @white_space(i8 noundef signext %0) #13 {
  %2 = icmp eq i8 %0, 37
  br i1 %2, label %3, label %4

3:                                                ; preds = %1
  store i1 true, ptr @white_space.commentP, align 4
  br label %11

4:                                                ; preds = %1
  %5 = load i1, ptr @white_space.commentP, align 4
  br i1 %5, label %6, label %9

6:                                                ; preds = %4
  %7 = icmp eq i8 %0, 10
  br i1 %7, label %8, label %11

8:                                                ; preds = %6
  store i1 false, ptr @white_space.commentP, align 4
  br label %11

9:                                                ; preds = %4
  switch i8 %0, label %10 [
    i8 32, label %11
    i8 10, label %11
    i8 9, label %11
  ]

10:                                               ; preds = %9
  br label %11

11:                                               ; preds = %10, %9, %9, %9, %8, %6, %3
  %12 = phi i32 [ 1, %3 ], [ 0, %10 ], [ 1, %8 ], [ 1, %6 ], [ 1, %9 ], [ 1, %9 ], [ 1, %9 ]
  ret i32 %12
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @lower_case(ptr nocapture noundef %0) #14 {
  %2 = load i8, ptr %0, align 1, !tbaa !45
  %3 = icmp eq i8 %2, 0
  br i1 %3, label %15, label %4

4:                                                ; preds = %11, %1
  %5 = phi i8 [ %13, %11 ], [ %2, %1 ]
  %6 = phi ptr [ %12, %11 ], [ %0, %1 ]
  %7 = add i8 %5, -65
  %8 = icmp ult i8 %7, 26
  br i1 %8, label %9, label %11

9:                                                ; preds = %4
  %10 = add nuw nsw i8 %5, 32
  store i8 %10, ptr %6, align 1, !tbaa !45
  br label %11

11:                                               ; preds = %9, %4
  %12 = getelementptr inbounds i8, ptr %6, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !45
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %4, !llvm.loop !46

15:                                               ; preds = %11, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @find_next_name(ptr noundef %0, ptr noundef %1) #5 {
  %3 = load i1, ptr @white_space.commentP, align 4
  br label %4

4:                                                ; preds = %15, %2
  %5 = phi i1 [ %3, %2 ], [ %16, %15 ]
  %6 = phi i1 [ %3, %2 ], [ %17, %15 ]
  %7 = phi ptr [ %1, %2 ], [ %18, %15 ]
  %8 = load i8, ptr %7, align 1, !tbaa !45
  %9 = icmp eq i8 %8, 37
  br i1 %9, label %14, label %10

10:                                               ; preds = %4
  br i1 %6, label %11, label %13

11:                                               ; preds = %10
  switch i8 %8, label %15 [
    i8 10, label %14
    i8 0, label %12
  ]

12:                                               ; preds = %13, %11
  %.lcssa2 = phi i1 [ %5, %13 ], [ %5, %11 ]
  %.lcssa1 = phi ptr [ %7, %13 ], [ %7, %11 ]
  %.lcssa = phi i8 [ %8, %13 ], [ %8, %11 ]
  br label %19

13:                                               ; preds = %10
  switch i8 %8, label %12 [
    i8 32, label %15
    i8 10, label %15
    i8 9, label %15
  ]

14:                                               ; preds = %11, %4
  store i1 %9, ptr @white_space.commentP, align 4
  br label %15

15:                                               ; preds = %14, %13, %13, %13, %11
  %16 = phi i1 [ %5, %11 ], [ %5, %13 ], [ %5, %13 ], [ %5, %13 ], [ %9, %14 ]
  %17 = phi i1 [ true, %11 ], [ false, %13 ], [ false, %13 ], [ false, %13 ], [ %9, %14 ]
  %18 = getelementptr inbounds i8, ptr %7, i64 1
  br label %4, !llvm.loop !50

19:                                               ; preds = %25, %12
  %20 = phi i8 [ %27, %25 ], [ %.lcssa, %12 ]
  %21 = phi ptr [ %26, %25 ], [ %.lcssa1, %12 ]
  br i1 %.lcssa2, label %22, label %24

22:                                               ; preds = %19
  %23 = icmp eq i8 %.lcssa, 10
  br i1 %23, label %29, label %33

24:                                               ; preds = %19
  switch i8 %20, label %25 [
    i8 32, label %33
    i8 10, label %33
    i8 9, label %33
  ]

25:                                               ; preds = %24
  %26 = getelementptr inbounds i8, ptr %21, i64 1
  %27 = load i8, ptr %26, align 1, !tbaa !45
  %28 = icmp eq i8 %27, 37
  br i1 %28, label %29, label %19, !llvm.loop !51

29:                                               ; preds = %25, %22
  %30 = phi ptr [ %.lcssa1, %22 ], [ %26, %25 ]
  %31 = phi i8 [ 10, %22 ], [ 37, %25 ]
  %32 = xor i1 %.lcssa2, true
  store i1 %32, ptr @white_space.commentP, align 4
  br label %33

33:                                               ; preds = %29, %24, %24, %24, %22
  %34 = phi ptr [ %.lcssa1, %22 ], [ %30, %29 ], [ %21, %24 ], [ %21, %24 ], [ %21, %24 ]
  %35 = phi i8 [ %.lcssa, %22 ], [ %31, %29 ], [ %20, %24 ], [ %20, %24 ], [ %20, %24 ]
  store i8 0, ptr %34, align 1, !tbaa !45
  %36 = tail call i32 @find_name(ptr noundef %0, ptr noundef nonnull %.lcssa1) #27
  store i8 %35, ptr %34, align 1, !tbaa !45
  ret i32 %36
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal i32 @matches(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) #15 {
  %4 = load i8, ptr %0, align 1, !tbaa !45
  %5 = icmp eq i8 %4, 37
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @white_space.commentP, align 4
  br label %13

8:                                                ; preds = %20
  %.lcssa3 = phi i64 [ %21, %20 ]
  %9 = trunc i64 %.lcssa3 to i32
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ 0, %3 ], [ %9, %8 ]
  %12 = phi i64 [ 0, %3 ], [ %.lcssa3, %8 ]
  store i1 true, ptr @white_space.commentP, align 4
  br label %27

13:                                               ; preds = %20, %6
  %14 = phi i64 [ 0, %6 ], [ %21, %20 ]
  %15 = phi i8 [ %4, %6 ], [ %23, %20 ]
  br i1 %7, label %16, label %19

16:                                               ; preds = %13
  %17 = icmp eq i8 %4, 10
  br i1 %17, label %18, label %27

18:                                               ; preds = %16
  store i1 false, ptr @white_space.commentP, align 4
  br label %27

19:                                               ; preds = %13
  switch i8 %15, label %20 [
    i8 32, label %25
    i8 10, label %25
    i8 9, label %25
    i8 0, label %25
  ]

20:                                               ; preds = %19
  %21 = add nuw i64 %14, 1
  %22 = getelementptr inbounds i8, ptr %0, i64 %21
  %23 = load i8, ptr %22, align 1, !tbaa !45
  %24 = icmp eq i8 %23, 37
  br i1 %24, label %8, label %13, !llvm.loop !52

25:                                               ; preds = %19, %19, %19, %19
  %.lcssa1 = phi i64 [ %14, %19 ], [ %14, %19 ], [ %14, %19 ], [ %14, %19 ]
  %26 = trunc i64 %.lcssa1 to i32
  br label %27

27:                                               ; preds = %25, %18, %16, %10
  %28 = phi i1 [ true, %16 ], [ false, %18 ], [ true, %10 ], [ false, %25 ]
  %29 = phi i32 [ 0, %16 ], [ 0, %18 ], [ %11, %10 ], [ %26, %25 ]
  %30 = phi i64 [ 0, %16 ], [ 0, %18 ], [ %12, %10 ], [ %.lcssa1, %25 ]
  %31 = icmp slt i32 %29, %2
  br i1 %31, label %53, label %32

32:                                               ; preds = %27
  %33 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #26
  %34 = icmp ult i64 %33, %30
  br i1 %34, label %35, label %49

35:                                               ; preds = %32
  %36 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %33) #26
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %53

38:                                               ; preds = %35
  %39 = getelementptr inbounds i8, ptr %0, i64 %33
  %40 = load i8, ptr %39, align 1, !tbaa !45
  %41 = icmp eq i8 %40, 37
  br i1 %41, label %42, label %43

42:                                               ; preds = %38
  store i1 true, ptr @white_space.commentP, align 4
  br label %53

43:                                               ; preds = %38
  br i1 %28, label %44, label %47

44:                                               ; preds = %43
  %45 = icmp eq i8 %40, 10
  br i1 %45, label %46, label %53

46:                                               ; preds = %44
  store i1 false, ptr @white_space.commentP, align 4
  br label %53

47:                                               ; preds = %43
  switch i8 %40, label %48 [
    i8 32, label %53
    i8 10, label %53
    i8 9, label %53
  ]

48:                                               ; preds = %47
  br label %53

49:                                               ; preds = %32
  %50 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %30) #26
  %51 = icmp eq i32 %50, 0
  %52 = zext i1 %51 to i32
  br label %53

53:                                               ; preds = %49, %48, %47, %47, %47, %46, %44, %42, %35, %27
  %54 = phi i32 [ %52, %49 ], [ 0, %27 ], [ 0, %35 ], [ 1, %42 ], [ 0, %48 ], [ 1, %46 ], [ 1, %44 ], [ 1, %47 ], [ 1, %47 ], [ 1, %47 ]
  ret i32 %54
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #11

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal ptr @skip_first(ptr noundef readonly %0) #16 {
  %2 = load i8, ptr %0, align 1, !tbaa !45
  %3 = icmp eq i8 %2, 37
  br i1 %3, label %16, label %4

4:                                                ; preds = %1
  %5 = load i1, ptr @white_space.commentP, align 4
  br label %6

6:                                                ; preds = %12, %4
  %7 = phi i8 [ %2, %4 ], [ %14, %12 ]
  %8 = phi ptr [ %0, %4 ], [ %13, %12 ]
  br i1 %5, label %9, label %11

9:                                                ; preds = %6
  %10 = icmp eq i8 %2, 10
  br i1 %10, label %16, label %19

11:                                               ; preds = %6
  switch i8 %7, label %12 [
    i8 32, label %19
    i8 10, label %19
    i8 9, label %19
    i8 0, label %19
  ]

12:                                               ; preds = %11
  %13 = getelementptr inbounds i8, ptr %8, i64 1
  %14 = load i8, ptr %13, align 1, !tbaa !45
  %15 = icmp eq i8 %14, 37
  br i1 %15, label %16, label %6, !llvm.loop !53

16:                                               ; preds = %12, %9, %1
  %17 = phi i1 [ true, %1 ], [ false, %9 ], [ true, %12 ]
  %18 = phi ptr [ %0, %1 ], [ %0, %9 ], [ %13, %12 ]
  store i1 %17, ptr @white_space.commentP, align 4
  br label %19

19:                                               ; preds = %16, %11, %11, %11, %11, %9
  %20 = phi i1 [ %17, %16 ], [ true, %9 ], [ false, %11 ], [ false, %11 ], [ false, %11 ], [ false, %11 ]
  %21 = phi ptr [ %18, %16 ], [ %0, %9 ], [ %8, %11 ], [ %8, %11 ], [ %8, %11 ], [ %8, %11 ]
  br label %22

22:                                               ; preds = %31, %19
  %23 = phi i1 [ %32, %31 ], [ %20, %19 ]
  %24 = phi ptr [ %33, %31 ], [ %21, %19 ]
  %25 = load i8, ptr %24, align 1, !tbaa !45
  %26 = icmp eq i8 %25, 37
  br i1 %26, label %30, label %27

27:                                               ; preds = %22
  br i1 %23, label %28, label %29

28:                                               ; preds = %27
  switch i8 %25, label %31 [
    i8 10, label %30
    i8 0, label %34
  ]

29:                                               ; preds = %27
  switch i8 %25, label %34 [
    i8 32, label %31
    i8 10, label %31
    i8 9, label %31
  ]

30:                                               ; preds = %28, %22
  store i1 %26, ptr @white_space.commentP, align 4
  br label %31

31:                                               ; preds = %30, %29, %29, %29, %28
  %32 = phi i1 [ true, %28 ], [ false, %29 ], [ false, %29 ], [ false, %29 ], [ %26, %30 ]
  %33 = getelementptr inbounds i8, ptr %24, i64 1
  br label %22, !llvm.loop !54

34:                                               ; preds = %29, %28
  %.lcssa = phi ptr [ %24, %29 ], [ %24, %28 ]
  ret ptr %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_info(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %4, i64 1
  %6 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %5) #25
  %7 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %4
  %8 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %4, i32 3
  %9 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %4, i32 4
  %10 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %4, i32 1
  %11 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %4, i32 2
  %12 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %13 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %4
  %14 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %4, i32 1
  %15 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %4, i32 2
  %16 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %4, i32 3
  %17 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %4, i32 4
  %18 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4, i64 1
  %19 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %4
  %20 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %4, i32 3
  %21 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %4, i32 4
  %22 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %4, i32 1
  %23 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %4, i32 2
  br label %24

24:                                               ; preds = %454, %2
  %25 = phi i64 [ 1, %2 ], [ %456, %454 ]
  %26 = load i32, ptr @num_games, align 4, !tbaa !7
  %27 = sext i32 %26 to i64
  %28 = icmp sgt i64 %25, %27
  br i1 %28, label %37, label %29

29:                                               ; preds = %24
  %30 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %25, i64 1, i64 2
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = icmp eq i32 %31, %1
  br i1 %32, label %58, label %33

33:                                               ; preds = %29
  %34 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %25, i64 1, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = icmp eq i32 %35, %1
  br i1 %36, label %51, label %45

37:                                               ; preds = %24
  %38 = tail call i64 @fwrite(ptr nonnull @.str.4.1, i64 28, i64 1, ptr %0)
  br label %87

39:                                               ; preds = %45
  %40 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %25, i64 %47, i64 1
  %41 = load i32, ptr %40, align 4, !tbaa !7
  %42 = icmp ne i32 %41, %1
  %43 = icmp ult i64 %46, 14
  %44 = and i1 %43, %42
  br i1 %44, label %45, label %51, !llvm.loop !55

45:                                               ; preds = %39, %33
  %46 = phi i64 [ %47, %39 ], [ 1, %33 ]
  %47 = add nuw nsw i64 %46, 1
  %48 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %25, i64 %47, i64 2
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = icmp eq i32 %49, %1
  br i1 %50, label %51, label %39, !llvm.loop !55

51:                                               ; preds = %45, %39, %33
  %52 = phi i64 [ 1, %33 ], [ %47, %45 ], [ %47, %39 ]
  %53 = phi i32 [ %31, %33 ], [ %49, %39 ], [ %1, %45 ]
  %54 = and i64 %52, 4294967295
  %55 = icmp eq i64 %54, 15
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = tail call i64 @fwrite(ptr nonnull @.str.4.1, i64 28, i64 1, ptr %0)
  br label %87

58:                                               ; preds = %51, %29
  %59 = phi i32 [ %53, %51 ], [ %1, %29 ]
  %60 = phi i64 [ %52, %51 ], [ 1, %29 ]
  %61 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %25, i64 %60, i64 1
  %62 = load i32, ptr %61, align 4, !tbaa !7
  %63 = icmp eq i32 %62, %1
  %64 = select i1 %63, i32 %59, i32 %62
  %65 = select i1 %63, ptr @.str.5, ptr @.str.6
  %66 = select i1 %63, i64 1, i64 2
  %67 = select i1 %63, i64 2, i64 1
  %68 = sext i32 %64 to i64
  %69 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %68, i64 1
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %65, ptr noundef nonnull %69) #25
  %71 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %25, i64 %60, i64 %66
  %72 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %25, i64 %60, i64 %67
  %73 = load i32, ptr %72, align 4, !tbaa !7
  %74 = load i32, ptr %71, align 4, !tbaa !7
  %75 = icmp eq i32 %74, -1
  %76 = icmp eq i32 %73, -1
  %77 = select i1 %75, i1 true, i1 %76
  br i1 %77, label %78, label %80

78:                                               ; preds = %58
  %79 = tail call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  br label %87

80:                                               ; preds = %58
  %81 = icmp eq i32 %74, %73
  %82 = icmp sgt i32 %74, %73
  %83 = select i1 %82, i32 87, i32 76
  %84 = select i1 %81, i32 84, i32 %83
  %85 = tail call i32 @fputc(i32 %84, ptr %0)
  %86 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %74, i32 noundef %73) #25
  br label %87

87:                                               ; preds = %80, %78, %56, %37
  %88 = trunc i64 %25 to i32
  switch i32 %88, label %454 [
    i32 1, label %89
    i32 2, label %99
    i32 3, label %101
    i32 4, label %101
    i32 5, label %101
    i32 6, label %101
    i32 7, label %101
    i32 9, label %174
    i32 10, label %222
    i32 11, label %274
    i32 12, label %326
    i32 14, label %380
    i32 15, label %382
    i32 16, label %384
    i32 17, label %389
    i32 18, label %394
    i32 19, label %396
    i32 20, label %419
    i32 21, label %439
  ]

89:                                               ; preds = %87
  %90 = load i32, ptr %12, align 8, !tbaa !7
  %91 = icmp eq i32 %90, 0
  %92 = select i1 %91, ptr @.str.13, ptr @.str.14.2
  %93 = load i32, ptr %18, align 4, !tbaa !7
  %94 = icmp eq i32 %93, 0
  %95 = icmp eq i32 %93, 1
  %96 = select i1 %95, ptr @.str.16, ptr @.str.17
  %97 = select i1 %94, ptr @.str.15.3, ptr %96
  %98 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %92, ptr noundef nonnull %97) #25
  br label %454

99:                                               ; preds = %87
  %100 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  br label %454

101:                                              ; preds = %87, %87, %87, %87, %87
  %102 = load i32, ptr %12, align 8, !tbaa !7
  %103 = load i32, ptr %18, align 4, !tbaa !7
  %104 = icmp eq i32 %102, 999
  %105 = icmp eq i32 %103, 999
  %106 = trunc i64 %25 to i32
  %107 = add i32 %106, -2
  br label %108

108:                                              ; preds = %127, %101
  %109 = phi i64 [ 1, %101 ], [ %129, %127 ]
  %110 = phi i32 [ 1, %101 ], [ %128, %127 ]
  %111 = getelementptr inbounds i32, ptr @standings, i64 %109
  %112 = load i32, ptr %111, align 4, !tbaa !7
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %113
  %115 = load i32, ptr %114, align 8, !tbaa !7
  %116 = icmp eq i32 %115, %102
  %117 = or i1 %104, %116
  br i1 %117, label %118, label %127

118:                                              ; preds = %108
  %119 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %113, i64 1
  %120 = load i32, ptr %119, align 4, !tbaa !7
  %121 = icmp eq i32 %120, %103
  %122 = or i1 %105, %121
  br i1 %122, label %123, label %127

123:                                              ; preds = %118
  %124 = icmp eq i32 %110, %107
  br i1 %124, label %131, label %125

125:                                              ; preds = %123
  %126 = add nsw i32 %110, 1
  br label %127

127:                                              ; preds = %125, %118, %108
  %128 = phi i32 [ %126, %125 ], [ %110, %118 ], [ %110, %108 ]
  %129 = add nuw nsw i64 %109, 1
  %130 = icmp eq i64 %129, 29
  br i1 %130, label %454, label %108, !llvm.loop !56

131:                                              ; preds = %123
  %.lcssa21 = phi i32 [ %112, %123 ]
  %.lcssa20 = phi i64 [ %113, %123 ]
  %132 = icmp eq i32 %.lcssa21, 0
  br i1 %132, label %454, label %133

133:                                              ; preds = %131
  %134 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %.lcssa20, i64 1
  %135 = tail call i32 @a_champ(i32 noundef %.lcssa21) #27
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %137, label %141

137:                                              ; preds = %133
  %138 = tail call i32 @a_wild_card(i32 noundef %.lcssa21) #27
  %139 = icmp eq i32 %138, 0
  %140 = select i1 %139, ptr @.str.22, ptr @.str.21
  br label %141

141:                                              ; preds = %137, %133
  %142 = phi ptr [ %140, %137 ], [ @.str.20, %133 ]
  %143 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa20
  %144 = load i32, ptr %143, align 4, !tbaa !22
  %145 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa20, i32 1
  %146 = load i32, ptr %145, align 4, !tbaa !26
  %147 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa20, i32 2
  %148 = load i32, ptr %147, align 4, !tbaa !25
  %149 = add nsw i32 %146, %144
  %150 = add nsw i32 %149, %148
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %161, label %152

152:                                              ; preds = %141
  %153 = sitofp i32 %144 to double
  %154 = sitofp i32 %148 to double
  %155 = tail call double @llvm.fmuladd.f64(double %154, double 5.000000e-01, double %153)
  %156 = sitofp i32 %150 to double
  %157 = fdiv double %155, %156
  %158 = fcmp oge double %157, 1.000000e+00
  %159 = select i1 %158, ptr @.str.23, ptr @.str.22
  %160 = fcmp ult double %157, 1.000000e+00
  br i1 %160, label %161, label %166

161:                                              ; preds = %152, %141
  %162 = phi ptr [ @.str.22, %141 ], [ %159, %152 ]
  %163 = phi double [ 0.000000e+00, %141 ], [ %157, %152 ]
  %164 = tail call double @llvm.fmuladd.f64(double %163, double 1.000000e+03, double 5.000000e-01)
  %165 = fptosi double %164 to i32
  br label %166

166:                                              ; preds = %161, %152
  %167 = phi ptr [ %162, %161 ], [ %159, %152 ]
  %168 = phi i32 [ %165, %161 ], [ 0, %152 ]
  %169 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa20, i32 3
  %170 = load i32, ptr %169, align 4, !tbaa !38
  %171 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa20, i32 4
  %172 = load i32, ptr %171, align 4, !tbaa !39
  %173 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %134, ptr noundef nonnull %142, i32 noundef %144, i32 noundef %146, i32 noundef %148, ptr noundef nonnull %167, i32 noundef %168, i32 noundef %170, i32 noundef %172) #25
  br label %454

174:                                              ; preds = %87
  %175 = load i32, ptr %7, align 4, !tbaa !22
  %176 = load i32, ptr %10, align 4, !tbaa !26
  %177 = load i32, ptr %11, align 4, !tbaa !25
  %178 = icmp slt i32 %175, 10
  %179 = icmp slt i32 %176, 10
  %180 = select i1 %178, i1 %179, i1 false
  %181 = select i1 %180, ptr @.str.25, ptr @.str.22
  %182 = load i32, ptr %12, align 8, !tbaa !7
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %184, label %194

184:                                              ; preds = %189, %174
  %185 = phi i64 [ %190, %189 ], [ 1, %174 ]
  %186 = getelementptr inbounds i32, ptr @conf_standings, i64 %185
  %187 = load i32, ptr %186, align 4, !tbaa !7
  %188 = icmp eq i32 %187, %1
  br i1 %188, label %192, label %189

189:                                              ; preds = %184
  %190 = add nuw nsw i64 %185, 1
  %191 = icmp eq i64 %190, 29
  br i1 %191, label %207, label %184, !llvm.loop !57

192:                                              ; preds = %184
  %.lcssa17 = phi i64 [ %185, %184 ]
  %193 = trunc i64 %.lcssa17 to i32
  br label %207

194:                                              ; preds = %199, %174
  %195 = phi i64 [ %200, %199 ], [ 1, %174 ]
  %196 = getelementptr inbounds i32, ptr @conf_standings, i64 %195
  %197 = load i32, ptr %196, align 4, !tbaa !7
  %198 = icmp eq i32 %197, %1
  br i1 %198, label %202, label %199

199:                                              ; preds = %194
  %200 = add nuw nsw i64 %195, 1
  %201 = icmp eq i64 %200, 29
  br i1 %201, label %204, label %194, !llvm.loop !57

202:                                              ; preds = %194
  %.lcssa15 = phi i64 [ %195, %194 ]
  %203 = trunc i64 %.lcssa15 to i32
  br label %204

204:                                              ; preds = %202, %199
  %205 = phi i32 [ %203, %202 ], [ 0, %199 ]
  %206 = add nsw i32 %205, -14
  br label %207

207:                                              ; preds = %204, %192, %189
  %208 = phi i32 [ %206, %204 ], [ %193, %192 ], [ 0, %189 ]
  br label %209

209:                                              ; preds = %214, %207
  %210 = phi i64 [ 1, %207 ], [ %215, %214 ]
  %211 = getelementptr inbounds i32, ptr @abs_standings, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !7
  %213 = icmp eq i32 %212, %1
  br i1 %213, label %217, label %214

214:                                              ; preds = %209
  %215 = add nuw nsw i64 %210, 1
  %216 = icmp eq i64 %215, 29
  br i1 %216, label %219, label %209, !llvm.loop !57

217:                                              ; preds = %209
  %.lcssa18 = phi i64 [ %210, %209 ]
  %218 = trunc i64 %.lcssa18 to i32
  br label %219

219:                                              ; preds = %217, %214
  %220 = phi i32 [ %218, %217 ], [ 0, %214 ]
  %221 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %175, i32 noundef %176, i32 noundef %177, ptr noundef nonnull %181, i32 noundef %208, i32 noundef %220) #25
  br label %454

222:                                              ; preds = %87
  %223 = load i32, ptr %8, align 4, !tbaa !38
  %224 = load i32, ptr %7, align 4, !tbaa !22
  %225 = load i32, ptr %10, align 4, !tbaa !26
  %226 = add nsw i32 %225, %224
  %227 = load i32, ptr %11, align 4, !tbaa !25
  %228 = add nsw i32 %226, %227
  %229 = icmp eq i32 %228, 0
  %230 = sitofp i32 %223 to double
  %231 = sitofp i32 %228 to double
  %232 = fdiv double %230, %231
  %233 = select i1 %229, double 0.000000e+00, double %232
  %234 = load i32, ptr %12, align 8, !tbaa !7
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %246

236:                                              ; preds = %241, %222
  %237 = phi i64 [ %242, %241 ], [ 1, %222 ]
  %238 = getelementptr inbounds i32, ptr @offence_ranks, i64 %237
  %239 = load i32, ptr %238, align 4, !tbaa !7
  %240 = icmp eq i32 %239, %1
  br i1 %240, label %244, label %241

241:                                              ; preds = %236
  %242 = add nuw nsw i64 %237, 1
  %243 = icmp eq i64 %242, 29
  br i1 %243, label %259, label %236, !llvm.loop !57

244:                                              ; preds = %236
  %.lcssa12 = phi i64 [ %237, %236 ]
  %245 = trunc i64 %.lcssa12 to i32
  br label %259

246:                                              ; preds = %251, %222
  %247 = phi i64 [ %252, %251 ], [ 1, %222 ]
  %248 = getelementptr inbounds i32, ptr @offence_ranks, i64 %247
  %249 = load i32, ptr %248, align 4, !tbaa !7
  %250 = icmp eq i32 %249, %1
  br i1 %250, label %254, label %251

251:                                              ; preds = %246
  %252 = add nuw nsw i64 %247, 1
  %253 = icmp eq i64 %252, 29
  br i1 %253, label %256, label %246, !llvm.loop !57

254:                                              ; preds = %246
  %.lcssa10 = phi i64 [ %247, %246 ]
  %255 = trunc i64 %.lcssa10 to i32
  br label %256

256:                                              ; preds = %254, %251
  %257 = phi i32 [ %255, %254 ], [ 0, %251 ]
  %258 = add nsw i32 %257, -14
  br label %259

259:                                              ; preds = %256, %244, %241
  %260 = phi i32 [ %258, %256 ], [ %245, %244 ], [ 0, %241 ]
  br label %261

261:                                              ; preds = %266, %259
  %262 = phi i64 [ 1, %259 ], [ %267, %266 ]
  %263 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %262
  %264 = load i32, ptr %263, align 4, !tbaa !7
  %265 = icmp eq i32 %264, %1
  br i1 %265, label %269, label %266

266:                                              ; preds = %261
  %267 = add nuw nsw i64 %262, 1
  %268 = icmp eq i64 %267, 29
  br i1 %268, label %271, label %261, !llvm.loop !57

269:                                              ; preds = %261
  %.lcssa13 = phi i64 [ %262, %261 ]
  %270 = trunc i64 %.lcssa13 to i32
  br label %271

271:                                              ; preds = %269, %266
  %272 = phi i32 [ %270, %269 ], [ 0, %266 ]
  %273 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %223, double noundef %233, i32 noundef %260, i32 noundef %272) #25
  br label %454

274:                                              ; preds = %87
  %275 = load i32, ptr %9, align 4, !tbaa !39
  %276 = load i32, ptr %7, align 4, !tbaa !22
  %277 = load i32, ptr %10, align 4, !tbaa !26
  %278 = add nsw i32 %277, %276
  %279 = load i32, ptr %11, align 4, !tbaa !25
  %280 = add nsw i32 %278, %279
  %281 = icmp eq i32 %280, 0
  %282 = sitofp i32 %275 to double
  %283 = sitofp i32 %280 to double
  %284 = fdiv double %282, %283
  %285 = select i1 %281, double 0.000000e+00, double %284
  %286 = load i32, ptr %12, align 8, !tbaa !7
  %287 = icmp eq i32 %286, 0
  br i1 %287, label %288, label %298

288:                                              ; preds = %293, %274
  %289 = phi i64 [ %294, %293 ], [ 1, %274 ]
  %290 = getelementptr inbounds i32, ptr @defence_ranks, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !7
  %292 = icmp eq i32 %291, %1
  br i1 %292, label %296, label %293

293:                                              ; preds = %288
  %294 = add nuw nsw i64 %289, 1
  %295 = icmp eq i64 %294, 29
  br i1 %295, label %311, label %288, !llvm.loop !57

296:                                              ; preds = %288
  %.lcssa7 = phi i64 [ %289, %288 ]
  %297 = trunc i64 %.lcssa7 to i32
  br label %311

298:                                              ; preds = %303, %274
  %299 = phi i64 [ %304, %303 ], [ 1, %274 ]
  %300 = getelementptr inbounds i32, ptr @defence_ranks, i64 %299
  %301 = load i32, ptr %300, align 4, !tbaa !7
  %302 = icmp eq i32 %301, %1
  br i1 %302, label %306, label %303

303:                                              ; preds = %298
  %304 = add nuw nsw i64 %299, 1
  %305 = icmp eq i64 %304, 29
  br i1 %305, label %308, label %298, !llvm.loop !57

306:                                              ; preds = %298
  %.lcssa5 = phi i64 [ %299, %298 ]
  %307 = trunc i64 %.lcssa5 to i32
  br label %308

308:                                              ; preds = %306, %303
  %309 = phi i32 [ %307, %306 ], [ 0, %303 ]
  %310 = add nsw i32 %309, -14
  br label %311

311:                                              ; preds = %308, %296, %293
  %312 = phi i32 [ %310, %308 ], [ %297, %296 ], [ 0, %293 ]
  br label %313

313:                                              ; preds = %318, %311
  %314 = phi i64 [ 1, %311 ], [ %319, %318 ]
  %315 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %314
  %316 = load i32, ptr %315, align 4, !tbaa !7
  %317 = icmp eq i32 %316, %1
  br i1 %317, label %321, label %318

318:                                              ; preds = %313
  %319 = add nuw nsw i64 %314, 1
  %320 = icmp eq i64 %319, 29
  br i1 %320, label %323, label %313, !llvm.loop !57

321:                                              ; preds = %313
  %.lcssa8 = phi i64 [ %314, %313 ]
  %322 = trunc i64 %.lcssa8 to i32
  br label %323

323:                                              ; preds = %321, %318
  %324 = phi i32 [ %322, %321 ], [ 0, %318 ]
  %325 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %275, double noundef %285, i32 noundef %312, i32 noundef %324) #25
  br label %454

326:                                              ; preds = %87
  %327 = load i32, ptr %8, align 4, !tbaa !38
  %328 = load i32, ptr %9, align 4, !tbaa !39
  %329 = sub nsw i32 %327, %328
  %330 = load i32, ptr %7, align 4, !tbaa !22
  %331 = load i32, ptr %10, align 4, !tbaa !26
  %332 = add nsw i32 %331, %330
  %333 = load i32, ptr %11, align 4, !tbaa !25
  %334 = add nsw i32 %332, %333
  %335 = icmp eq i32 %334, 0
  %336 = sitofp i32 %329 to double
  %337 = sitofp i32 %334 to double
  %338 = fdiv double %336, %337
  %339 = select i1 %335, double 0.000000e+00, double %338
  %340 = load i32, ptr %12, align 8, !tbaa !7
  %341 = icmp eq i32 %340, 0
  br i1 %341, label %342, label %352

342:                                              ; preds = %347, %326
  %343 = phi i64 [ %348, %347 ], [ 1, %326 ]
  %344 = getelementptr inbounds i32, ptr @net_ranks, i64 %343
  %345 = load i32, ptr %344, align 4, !tbaa !7
  %346 = icmp eq i32 %345, %1
  br i1 %346, label %350, label %347

347:                                              ; preds = %342
  %348 = add nuw nsw i64 %343, 1
  %349 = icmp eq i64 %348, 29
  br i1 %349, label %365, label %342, !llvm.loop !57

350:                                              ; preds = %342
  %.lcssa2 = phi i64 [ %343, %342 ]
  %351 = trunc i64 %.lcssa2 to i32
  br label %365

352:                                              ; preds = %357, %326
  %353 = phi i64 [ %358, %357 ], [ 1, %326 ]
  %354 = getelementptr inbounds i32, ptr @net_ranks, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !7
  %356 = icmp eq i32 %355, %1
  br i1 %356, label %360, label %357

357:                                              ; preds = %352
  %358 = add nuw nsw i64 %353, 1
  %359 = icmp eq i64 %358, 29
  br i1 %359, label %362, label %352, !llvm.loop !57

360:                                              ; preds = %352
  %.lcssa = phi i64 [ %353, %352 ]
  %361 = trunc i64 %.lcssa to i32
  br label %362

362:                                              ; preds = %360, %357
  %363 = phi i32 [ %361, %360 ], [ 0, %357 ]
  %364 = add nsw i32 %363, -14
  br label %365

365:                                              ; preds = %362, %350, %347
  %366 = phi i32 [ %364, %362 ], [ %351, %350 ], [ 0, %347 ]
  br label %367

367:                                              ; preds = %372, %365
  %368 = phi i64 [ 1, %365 ], [ %373, %372 ]
  %369 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !7
  %371 = icmp eq i32 %370, %1
  br i1 %371, label %375, label %372

372:                                              ; preds = %367
  %373 = add nuw nsw i64 %368, 1
  %374 = icmp eq i64 %373, 29
  br i1 %374, label %377, label %367, !llvm.loop !57

375:                                              ; preds = %367
  %.lcssa3 = phi i64 [ %368, %367 ]
  %376 = trunc i64 %.lcssa3 to i32
  br label %377

377:                                              ; preds = %375, %372
  %378 = phi i32 [ %376, %375 ], [ 0, %372 ]
  %379 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %329, double noundef %339, i32 noundef %366, i32 noundef %378) #25
  br label %454

380:                                              ; preds = %87
  %381 = tail call i64 @fwrite(ptr nonnull @.str.29, i64 19, i64 1, ptr %0)
  br label %454

382:                                              ; preds = %87
  %383 = tail call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %0)
  br label %454

384:                                              ; preds = %87
  %385 = load i32, ptr %19, align 4, !tbaa !22
  %386 = load i32, ptr %22, align 4, !tbaa !26
  %387 = load i32, ptr %23, align 4, !tbaa !25
  %388 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %385, i32 noundef %386, i32 noundef %387) #25
  br label %454

389:                                              ; preds = %87
  %390 = load i32, ptr %13, align 4, !tbaa !22
  %391 = load i32, ptr %14, align 4, !tbaa !26
  %392 = load i32, ptr %15, align 4, !tbaa !25
  %393 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %390, i32 noundef %391, i32 noundef %392) #25
  br label %454

394:                                              ; preds = %87
  %395 = tail call i64 @fwrite(ptr nonnull @.str.33, i64 19, i64 1, ptr %0)
  br label %454

396:                                              ; preds = %87
  %397 = load i32, ptr %12, align 8, !tbaa !7
  %398 = icmp eq i32 %397, 0
  %399 = select i1 %398, ptr @.str.13, ptr @.str.14.2
  %400 = load i32, ptr %18, align 4, !tbaa !7
  %401 = icmp eq i32 %400, 0
  %402 = icmp eq i32 %400, 1
  %403 = select i1 %402, ptr @.str.16, ptr @.str.17
  %404 = select i1 %401, ptr @.str.15.3, ptr %403
  %405 = load i32, ptr %20, align 4, !tbaa !38
  %406 = load i32, ptr %21, align 4, !tbaa !39
  %407 = sub nsw i32 %405, %406
  %408 = load i32, ptr %19, align 4, !tbaa !22
  %409 = load i32, ptr %22, align 4, !tbaa !26
  %410 = add nsw i32 %409, %408
  %411 = load i32, ptr %23, align 4, !tbaa !25
  %412 = add nsw i32 %410, %411
  %413 = icmp eq i32 %412, 0
  %414 = sitofp i32 %407 to double
  %415 = sitofp i32 %412 to double
  %416 = fdiv double %414, %415
  %417 = select i1 %413, double 0.000000e+00, double %416
  %418 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %399, ptr noundef nonnull %404, i32 noundef %407, double noundef %417) #25
  br label %454

419:                                              ; preds = %87
  %420 = load i32, ptr %12, align 8, !tbaa !7
  %421 = icmp eq i32 %420, 0
  %422 = select i1 %421, ptr @.str.13, ptr @.str.14.2
  %423 = load i32, ptr %13, align 4, !tbaa !22
  %424 = load i32, ptr %14, align 4, !tbaa !26
  %425 = add nsw i32 %424, %423
  %426 = load i32, ptr %15, align 4, !tbaa !25
  %427 = add nsw i32 %425, %426
  %428 = icmp eq i32 %427, 0
  br i1 %428, label %436, label %429

429:                                              ; preds = %419
  %430 = load i32, ptr %16, align 4, !tbaa !38
  %431 = load i32, ptr %17, align 4, !tbaa !39
  %432 = sub nsw i32 %430, %431
  %433 = sitofp i32 %432 to double
  %434 = sitofp i32 %427 to double
  %435 = fdiv double %433, %434
  br label %436

436:                                              ; preds = %429, %419
  %437 = phi double [ %435, %429 ], [ 0.000000e+00, %419 ]
  %438 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %422, double noundef %437) #25
  br label %454

439:                                              ; preds = %87
  %440 = load i32, ptr %8, align 4, !tbaa !38
  %441 = load i32, ptr %9, align 4, !tbaa !39
  %442 = sub nsw i32 %440, %441
  %443 = load i32, ptr %7, align 4, !tbaa !22
  %444 = load i32, ptr %10, align 4, !tbaa !26
  %445 = add nsw i32 %444, %443
  %446 = load i32, ptr %11, align 4, !tbaa !25
  %447 = add nsw i32 %445, %446
  %448 = icmp eq i32 %447, 0
  %449 = sitofp i32 %442 to double
  %450 = sitofp i32 %447 to double
  %451 = fdiv double %449, %450
  %452 = select i1 %448, double 0.000000e+00, double %451
  %453 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %442, double noundef %452) #25
  br label %454

454:                                              ; preds = %439, %436, %396, %394, %389, %384, %382, %380, %377, %323, %271, %219, %166, %131, %127, %99, %89, %87
  %455 = tail call i32 @fputc(i32 10, ptr %0)
  %456 = add nuw nsw i64 %25, 1
  %457 = icmp eq i64 %456, 22
  br i1 %457, label %458, label %24, !llvm.loop !58

458:                                              ; preds = %454
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_multi_tiebreaker(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #5 {
  %4 = icmp slt i32 %2, 2
  br i1 %4, label %154, label %5

5:                                                ; preds = %3
  %6 = load i32, ptr %1, align 4, !tbaa !7
  store i32 %6, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 1), align 4, !tbaa !7
  %7 = zext i32 %2 to i64
  br label %8

8:                                                ; preds = %41, %5
  %9 = phi i64 [ 1, %5 ], [ %14, %41 ]
  %10 = phi i32 [ 1, %5 ], [ %43, %41 ]
  %11 = phi i32 [ 1, %5 ], [ %29, %41 ]
  %12 = getelementptr inbounds i32, ptr %1, i64 %9
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = add nuw nsw i64 %9, 1
  %15 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %14
  store i32 %13, ptr %15, align 4, !tbaa !7
  %16 = icmp eq i32 %11, 0
  br i1 %16, label %27, label %17

17:                                               ; preds = %8
  %18 = load i32, ptr %12, align 4, !tbaa !7
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %19
  %21 = load i32, ptr %20, align 8, !tbaa !7
  %22 = load i32, ptr %1, align 4, !tbaa !7
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %23
  %25 = load i32, ptr %24, align 8, !tbaa !7
  %26 = icmp eq i32 %21, %25
  br label %27

27:                                               ; preds = %17, %8
  %28 = phi i1 [ false, %8 ], [ %26, %17 ]
  %29 = zext i1 %28 to i32
  %30 = icmp eq i32 %10, 0
  br i1 %30, label %41, label %31

31:                                               ; preds = %27
  %32 = load i32, ptr %12, align 4, !tbaa !7
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %33, i64 1
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = load i32, ptr %1, align 4, !tbaa !7
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %37, i64 1
  %39 = load i32, ptr %38, align 4, !tbaa !7
  %40 = icmp eq i32 %35, %39
  br label %41

41:                                               ; preds = %31, %27
  %42 = phi i1 [ false, %27 ], [ %40, %31 ]
  %43 = zext i1 %42 to i32
  %44 = icmp eq i64 %14, %7
  br i1 %44, label %45, label %8, !llvm.loop !59

45:                                               ; preds = %41
  %.lcssa1 = phi i1 [ %42, %41 ]
  %.lcssa = phi i1 [ %28, %41 ]
  br i1 %.lcssa, label %48, label %46

46:                                               ; preds = %45
  %47 = tail call i64 @fwrite(ptr nonnull @.str.38, i64 51, i64 1, ptr %0)
  br label %154

48:                                               ; preds = %45
  %49 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  br i1 %.lcssa1, label %50, label %154

50:                                               ; preds = %48
  %51 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %0)
  %52 = tail call i64 @fwrite(ptr nonnull @.str.40, i64 16, i64 1, ptr %0)
  %53 = tail call i64 @fwrite(ptr nonnull @.str.41, i64 42, i64 1, ptr %0)
  %54 = tail call i64 @fwrite(ptr nonnull @.str.42, i64 21, i64 1, ptr %0)
  %55 = tail call i64 @fwrite(ptr nonnull @.str.43, i64 42, i64 1, ptr %0)
  %56 = tail call i64 @fwrite(ptr nonnull @.str.44, i64 22, i64 1, ptr %0)
  %57 = icmp sgt i32 %2, 0
  br label %58

58:                                               ; preds = %151, %50
  %59 = phi i64 [ 1, %50 ], [ %152, %151 ]
  %60 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !7
  br label %65

62:                                               ; preds = %65
  %63 = add nuw nsw i64 %66, 1
  %64 = icmp eq i64 %63, %7
  br i1 %64, label %151, label %65, !llvm.loop !60

65:                                               ; preds = %62, %58
  %66 = phi i64 [ 0, %58 ], [ %63, %62 ]
  %67 = getelementptr inbounds i32, ptr %1, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !7
  %69 = icmp eq i32 %68, %61
  br i1 %69, label %70, label %62

70:                                               ; preds = %65
  %71 = sext i32 %61 to i64
  %72 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %71, i64 1
  %73 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %71
  %74 = load i32, ptr %73, align 4, !tbaa !22
  %75 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %71, i32 1
  %76 = load i32, ptr %75, align 4, !tbaa !26
  %77 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %71, i32 2
  %78 = load i32, ptr %77, align 4, !tbaa !25
  %79 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %72, i32 noundef %74, i32 noundef %76, i32 noundef %78) #25
  br i1 %57, label %80, label %105

80:                                               ; preds = %99, %70
  %81 = phi i64 [ %103, %99 ], [ 0, %70 ]
  %82 = phi i32 [ %102, %99 ], [ 0, %70 ]
  %83 = phi i32 [ %101, %99 ], [ 0, %70 ]
  %84 = phi i32 [ %100, %99 ], [ 0, %70 ]
  %85 = getelementptr inbounds i32, ptr %1, i64 %81
  %86 = load i32, ptr %85, align 4, !tbaa !7
  %87 = icmp eq i32 %86, %61
  br i1 %87, label %99, label %88

88:                                               ; preds = %80
  %89 = sext i32 %86 to i64
  %90 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %71, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !22
  %92 = add nsw i32 %91, %84
  %93 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %71, i64 %89, i32 1
  %94 = load i32, ptr %93, align 4, !tbaa !26
  %95 = add nsw i32 %94, %83
  %96 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %71, i64 %89, i32 2
  %97 = load i32, ptr %96, align 4, !tbaa !25
  %98 = add nsw i32 %97, %82
  br label %99

99:                                               ; preds = %88, %80
  %100 = phi i32 [ %92, %88 ], [ %84, %80 ]
  %101 = phi i32 [ %95, %88 ], [ %83, %80 ]
  %102 = phi i32 [ %98, %88 ], [ %82, %80 ]
  %103 = add nuw nsw i64 %81, 1
  %104 = icmp eq i64 %103, %7
  br i1 %104, label %105, label %80, !llvm.loop !61

105:                                              ; preds = %99, %70
  %106 = phi i32 [ 0, %70 ], [ %100, %99 ]
  %107 = phi i32 [ 0, %70 ], [ %101, %99 ]
  %108 = phi i32 [ 0, %70 ], [ %102, %99 ]
  %109 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %106, i32 noundef %107, i32 noundef %108) #25
  %110 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %71
  %111 = load i32, ptr %110, align 4, !tbaa !22
  %112 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %71, i32 1
  %113 = load i32, ptr %112, align 4, !tbaa !26
  %114 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %71, i32 2
  %115 = load i32, ptr %114, align 4, !tbaa !25
  %116 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %111, i32 noundef %113, i32 noundef %115) #25
  %117 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %71
  %118 = load i32, ptr %117, align 4, !tbaa !22
  %119 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %71, i32 1
  %120 = load i32, ptr %119, align 4, !tbaa !26
  %121 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %71, i32 2
  %122 = load i32, ptr %121, align 4, !tbaa !25
  %123 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %118, i32 noundef %120, i32 noundef %122) #25
  tail call void @common(i32 noundef %2) #27
  %124 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %71
  %125 = load i32, ptr %124, align 4, !tbaa !22
  %126 = icmp eq i32 %125, -1
  br i1 %126, label %135, label %127

127:                                              ; preds = %105
  %128 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %71, i32 1
  %129 = load i32, ptr %128, align 4, !tbaa !26
  %130 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %71, i32 2
  %131 = load i32, ptr %130, align 4, !tbaa !25
  %132 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %71, i32 3
  %133 = load i32, ptr %132, align 4, !tbaa !38
  %134 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %125, i32 noundef %129, i32 noundef %131, i32 noundef %133) #25
  br label %137

135:                                              ; preds = %105
  %136 = tail call i64 @fwrite(ptr nonnull @.str.50, i64 12, i64 1, ptr %0)
  br label %137

137:                                              ; preds = %135, %127
  %138 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %71, i32 3
  %139 = load i32, ptr %138, align 4, !tbaa !38
  %140 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %71, i32 4
  %141 = load i32, ptr %140, align 4, !tbaa !39
  %142 = sub nsw i32 %139, %141
  %143 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %142) #25
  %144 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %71, i32 3
  %145 = load i32, ptr %144, align 4, !tbaa !38
  %146 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %71, i32 4
  %147 = load i32, ptr %146, align 4, !tbaa !39
  %148 = sub nsw i32 %145, %147
  %149 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %148) #25
  %150 = tail call i32 @fputc(i32 10, ptr %0)
  br label %151

151:                                              ; preds = %137, %62
  %152 = add nuw nsw i64 %59, 1
  %153 = icmp eq i64 %152, 29
  br i1 %153, label %154, label %58, !llvm.loop !62

154:                                              ; preds = %151, %48, %46, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_tiebreaker(ptr nocapture noundef %0, i32 noundef %1) #5 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  store i32 %1, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 1), align 4, !tbaa !7
  %4 = tail call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.53, i64 33, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.54, i64 42, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.55, i64 38, i64 1, ptr %0)
  %8 = sext i32 %1 to i64
  %9 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %8
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull %9) #25
  %11 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %9) #25
  %12 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %8
  %13 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %8, i64 1
  %14 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %8
  %15 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %8, i32 1
  %16 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %8, i32 2
  %17 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %8, i32 3
  br label %18

18:                                               ; preds = %129, %2
  %19 = phi i64 [ 1, %2 ], [ %130, %129 ]
  %20 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %22
  %24 = load i32, ptr %23, align 8, !tbaa !7
  %25 = load i32, ptr %12, align 8, !tbaa !7
  %26 = icmp eq i32 %24, %25
  br i1 %26, label %27, label %129

27:                                               ; preds = %18
  store i32 %21, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 2), align 8, !tbaa !7
  %28 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %30 = load i32, ptr %29, align 4, !tbaa !22
  %31 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %32 = load i32, ptr %31, align 4, !tbaa !26
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %34 = load i32, ptr %33, align 4, !tbaa !25
  %35 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %28, i32 noundef %30, i32 noundef %32, i32 noundef %34) #25
  %36 = icmp eq i32 %21, %1
  br i1 %36, label %45, label %37

37:                                               ; preds = %27
  %38 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %22, i64 %8
  %39 = load i32, ptr %38, align 4, !tbaa !22
  %40 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %22, i64 %8, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !26
  %42 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %22, i64 %8, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %39, i32 noundef %41, i32 noundef %43) #25
  br label %47

45:                                               ; preds = %27
  %46 = tail call i64 @fwrite(ptr nonnull @.str.58, i64 5, i64 1, ptr %0)
  br label %47

47:                                               ; preds = %45, %37
  %48 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %22, i64 1
  %49 = load i32, ptr %48, align 4, !tbaa !7
  %50 = load i32, ptr %13, align 4, !tbaa !7
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %60

52:                                               ; preds = %47
  %53 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %22
  %54 = load i32, ptr %53, align 4, !tbaa !22
  %55 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %22, i32 1
  %56 = load i32, ptr %55, align 4, !tbaa !26
  %57 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %22, i32 2
  %58 = load i32, ptr %57, align 4, !tbaa !25
  %59 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %54, i32 noundef %56, i32 noundef %58) #25
  br label %62

60:                                               ; preds = %47
  %61 = tail call i64 @fwrite(ptr nonnull @.str.59, i64 6, i64 1, ptr %0)
  br label %62

62:                                               ; preds = %60, %52
  %63 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %22
  %64 = load i32, ptr %63, align 4, !tbaa !22
  %65 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %22, i32 1
  %66 = load i32, ptr %65, align 4, !tbaa !26
  %67 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %22, i32 2
  %68 = load i32, ptr %67, align 4, !tbaa !25
  %69 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %64, i32 noundef %66, i32 noundef %68) #25
  tail call void @common(i32 noundef 2) #27
  br i1 %36, label %88, label %70

70:                                               ; preds = %62
  %71 = load i32, ptr %14, align 4, !tbaa !22
  %72 = icmp eq i32 %71, -1
  br i1 %72, label %88, label %73

73:                                               ; preds = %70
  %74 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %22
  %75 = load i32, ptr %74, align 4, !tbaa !22
  %76 = icmp eq i32 %75, -1
  br i1 %76, label %88, label %77

77:                                               ; preds = %73
  %78 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %22, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !26
  %80 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %22, i32 2
  %81 = load i32, ptr %80, align 4, !tbaa !25
  %82 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %22, i32 3
  %83 = load i32, ptr %82, align 4, !tbaa !38
  %84 = load i32, ptr %15, align 4, !tbaa !26
  %85 = load i32, ptr %16, align 4, !tbaa !25
  %86 = load i32, ptr %17, align 4, !tbaa !38
  %87 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %75, i32 noundef %79, i32 noundef %81, i32 noundef %83, i32 noundef %71, i32 noundef %84, i32 noundef %85, i32 noundef %86) #25
  br label %90

88:                                               ; preds = %73, %70, %62
  %89 = tail call i64 @fwrite(ptr nonnull @.str.61, i64 24, i64 1, ptr %0)
  br label %90

90:                                               ; preds = %88, %77
  %91 = load i32, ptr %48, align 4, !tbaa !7
  %92 = load i32, ptr %13, align 4, !tbaa !7
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %22, i32 3
  %96 = load i32, ptr %95, align 4, !tbaa !38
  %97 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %22, i32 4
  %98 = load i32, ptr %97, align 4, !tbaa !39
  %99 = sub nsw i32 %96, %98
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %99) #25
  br label %103

101:                                              ; preds = %90
  %102 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  br label %103

103:                                              ; preds = %101, %94
  %104 = load i32, ptr %63, align 4, !tbaa !22
  %105 = load i32, ptr %65, align 4, !tbaa !26
  %106 = add nsw i32 %105, %104
  %107 = load i32, ptr %67, align 4, !tbaa !25
  %108 = add nsw i32 %106, %107
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %119, label %110

110:                                              ; preds = %103
  %111 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %22, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !38
  %113 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %22, i32 4
  %114 = load i32, ptr %113, align 4, !tbaa !39
  %115 = sub nsw i32 %112, %114
  %116 = sitofp i32 %115 to double
  %117 = sitofp i32 %108 to double
  %118 = fdiv double %116, %117
  br label %119

119:                                              ; preds = %110, %103
  %120 = phi double [ %118, %110 ], [ 0.000000e+00, %103 ]
  %121 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.63, double noundef %120) #25
  %122 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 3
  %123 = load i32, ptr %122, align 4, !tbaa !38
  %124 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 4
  %125 = load i32, ptr %124, align 4, !tbaa !39
  %126 = sub nsw i32 %123, %125
  %127 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %126) #25
  %128 = tail call i32 @fputc(i32 10, ptr %0)
  br label %129

129:                                              ; preds = %119, %18
  %130 = add nuw nsw i64 %19, 1
  %131 = icmp eq i64 %130, 29
  br i1 %131, label %132, label %18, !llvm.loop !63

132:                                              ; preds = %129
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_records(ptr nocapture noundef %0) #5 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 37, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 37, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 38, i64 1, ptr %0)
  br label %9

9:                                                ; preds = %116, %1
  %10 = phi i64 [ 1, %1 ], [ %120, %116 ]
  %11 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  br label %13

13:                                               ; preds = %18, %9
  %14 = phi i64 [ 1, %9 ], [ %19, %18 ]
  %15 = getelementptr inbounds i32, ptr @abs_standings, i64 %14
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = icmp eq i32 %16, %12
  br i1 %17, label %21, label %18

18:                                               ; preds = %13
  %19 = add nuw nsw i64 %14, 1
  %20 = icmp eq i64 %19, 29
  br i1 %20, label %23, label %13, !llvm.loop !57

21:                                               ; preds = %13
  %.lcssa = phi i64 [ %14, %13 ]
  %22 = trunc i64 %.lcssa to i32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  %25 = sext i32 %12 to i64
  %26 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %25, i64 1
  %27 = trunc i64 %10 to i32
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %27, i32 noundef %24, ptr noundef nonnull %26) #25
  %29 = tail call i32 @a_champ(i32 noundef %12) #27
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %23
  %32 = tail call i32 @a_wild_card(i32 noundef %12) #27
  %33 = icmp eq i32 %32, 0
  %34 = select i1 %33, i32 32, i32 43
  br label %35

35:                                               ; preds = %31, %23
  %36 = phi i32 [ 42, %23 ], [ %34, %31 ]
  %37 = tail call i32 @fputc(i32 %36, ptr %0)
  %38 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25
  %39 = load i32, ptr %38, align 4, !tbaa !22
  %40 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 1
  %41 = load i32, ptr %40, align 4, !tbaa !26
  %42 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 2
  %43 = load i32, ptr %42, align 4, !tbaa !25
  %44 = add nsw i32 %41, %39
  %45 = add nsw i32 %44, %43
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %56, label %47

47:                                               ; preds = %35
  %48 = sitofp i32 %39 to double
  %49 = sitofp i32 %43 to double
  %50 = tail call double @llvm.fmuladd.f64(double %49, double 5.000000e-01, double %48)
  %51 = sitofp i32 %45 to double
  %52 = fdiv double %50, %51
  %53 = fcmp oge double %52, 1.000000e+00
  %54 = select i1 %53, ptr @.str.23, ptr @.str.22
  %55 = fcmp ult double %52, 1.000000e+00
  br i1 %55, label %56, label %61

56:                                               ; preds = %47, %35
  %57 = phi ptr [ @.str.22, %35 ], [ %54, %47 ]
  %58 = phi double [ 0.000000e+00, %35 ], [ %52, %47 ]
  %59 = tail call double @llvm.fmuladd.f64(double %58, double 1.000000e+03, double 5.000000e-01)
  %60 = fptosi double %59 to i32
  br label %61

61:                                               ; preds = %56, %47
  %62 = phi ptr [ %57, %56 ], [ %54, %47 ]
  %63 = phi i32 [ %60, %56 ], [ 0, %47 ]
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %39, i32 noundef %41, i32 noundef %43, ptr noundef nonnull %62, i32 noundef %63) #25
  %65 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %66 = add nuw nsw i64 %10, 14
  %67 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !7
  br label %69

69:                                               ; preds = %74, %61
  %70 = phi i64 [ 1, %61 ], [ %75, %74 ]
  %71 = getelementptr inbounds i32, ptr @abs_standings, i64 %70
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = icmp eq i32 %72, %68
  br i1 %73, label %77, label %74

74:                                               ; preds = %69
  %75 = add nuw nsw i64 %70, 1
  %76 = icmp eq i64 %75, 29
  br i1 %76, label %79, label %69, !llvm.loop !57

77:                                               ; preds = %69
  %.lcssa2 = phi i64 [ %70, %69 ]
  %78 = trunc i64 %.lcssa2 to i32
  br label %79

79:                                               ; preds = %77, %74
  %80 = phi i32 [ %78, %77 ], [ 0, %74 ]
  %81 = sext i32 %68 to i64
  %82 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %81, i64 1
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %27, i32 noundef %80, ptr noundef nonnull %82) #25
  %84 = tail call i32 @a_champ(i32 noundef %68) #27
  %85 = icmp eq i32 %84, 0
  br i1 %85, label %86, label %90

86:                                               ; preds = %79
  %87 = tail call i32 @a_wild_card(i32 noundef %68) #27
  %88 = icmp eq i32 %87, 0
  %89 = select i1 %88, i32 32, i32 43
  br label %90

90:                                               ; preds = %86, %79
  %91 = phi i32 [ 42, %79 ], [ %89, %86 ]
  %92 = tail call i32 @fputc(i32 %91, ptr %0)
  %93 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %81
  %94 = load i32, ptr %93, align 4, !tbaa !22
  %95 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %81, i32 1
  %96 = load i32, ptr %95, align 4, !tbaa !26
  %97 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %81, i32 2
  %98 = load i32, ptr %97, align 4, !tbaa !25
  %99 = add nsw i32 %96, %94
  %100 = add nsw i32 %99, %98
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %111, label %102

102:                                              ; preds = %90
  %103 = sitofp i32 %94 to double
  %104 = sitofp i32 %98 to double
  %105 = tail call double @llvm.fmuladd.f64(double %104, double 5.000000e-01, double %103)
  %106 = sitofp i32 %100 to double
  %107 = fdiv double %105, %106
  %108 = fcmp oge double %107, 1.000000e+00
  %109 = select i1 %108, ptr @.str.23, ptr @.str.22
  %110 = fcmp ult double %107, 1.000000e+00
  br i1 %110, label %111, label %116

111:                                              ; preds = %102, %90
  %112 = phi ptr [ @.str.22, %90 ], [ %109, %102 ]
  %113 = phi double [ 0.000000e+00, %90 ], [ %107, %102 ]
  %114 = tail call double @llvm.fmuladd.f64(double %113, double 1.000000e+03, double 5.000000e-01)
  %115 = fptosi double %114 to i32
  br label %116

116:                                              ; preds = %111, %102
  %117 = phi ptr [ %112, %111 ], [ %109, %102 ]
  %118 = phi i32 [ %115, %111 ], [ 0, %102 ]
  %119 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %94, i32 noundef %96, i32 noundef %98, ptr noundef nonnull %117, i32 noundef %118) #25
  %120 = add nuw nsw i64 %10, 1
  %121 = icmp eq i64 %120, 15
  br i1 %121, label %122, label %9, !llvm.loop !64

122:                                              ; preds = %116
  %123 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 30, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_week(ptr nocapture noundef %0, i32 noundef %1) #10 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %4 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %1) #25
  %5 = sext i32 %1 to i64
  br label %6

6:                                                ; preds = %92, %2
  %7 = phi i64 [ 1, %2 ], [ %94, %92 ]
  %8 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %7, i64 1
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %10, i64 1
  %12 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %11) #25
  %13 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %7, i64 1
  %14 = load i32, ptr %13, align 4, !tbaa !7
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %6
  %17 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %20

18:                                               ; preds = %6
  %19 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %14) #25
  br label %20

20:                                               ; preds = %18, %16
  %21 = add nuw nsw i64 %7, 1
  %22 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %21, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %24, i64 1
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %25) #25
  %27 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %21, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %20
  %31 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %34

32:                                               ; preds = %20
  %33 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %28) #25
  br label %34

34:                                               ; preds = %32, %30
  %35 = add nuw i64 %7, 2
  %36 = icmp ult i64 %7, 13
  br i1 %36, label %37, label %51

37:                                               ; preds = %34
  %38 = add nuw nsw i64 %7, 2
  %39 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %38, i64 1
  %40 = load i32, ptr %39, align 4, !tbaa !7
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %41, i64 1
  %43 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %42) #25
  %44 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %38, i64 1
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %37
  %48 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %51

49:                                               ; preds = %37
  %50 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %45) #25
  br label %51

51:                                               ; preds = %49, %47, %34
  %52 = tail call i32 @fputc(i32 10, ptr %0)
  %53 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %7, i64 2
  %54 = load i32, ptr %53, align 4, !tbaa !7
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %55, i64 1
  %57 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %56) #25
  %58 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %7, i64 2
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = icmp slt i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %65

63:                                               ; preds = %51
  %64 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %59) #25
  br label %65

65:                                               ; preds = %63, %61
  %66 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %21, i64 2
  %67 = load i32, ptr %66, align 4, !tbaa !7
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %68, i64 1
  %70 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %69) #25
  %71 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %21, i64 2
  %72 = load i32, ptr %71, align 4, !tbaa !7
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %74, label %76

74:                                               ; preds = %65
  %75 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %78

76:                                               ; preds = %65
  %77 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %72) #25
  br label %78

78:                                               ; preds = %76, %74
  br i1 %36, label %79, label %95

79:                                               ; preds = %78
  %80 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %5, i64 %35, i64 2
  %81 = load i32, ptr %80, align 4, !tbaa !7
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %82, i64 1
  %84 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %83) #25
  %85 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %5, i64 %35, i64 2
  %86 = load i32, ptr %85, align 4, !tbaa !7
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %79
  %89 = tail call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %92

90:                                               ; preds = %79
  %91 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %86) #25
  br label %92

92:                                               ; preds = %90, %88
  %93 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %0)
  %94 = add nuw nsw i64 %7, 3
  br label %6, !llvm.loop !65

95:                                               ; preds = %78
  %96 = tail call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @enter_prompt_week(ptr nocapture noundef %0, ptr nocapture noundef %1, i32 noundef %2) #10 {
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 46, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 52, i64 1, ptr %0)
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %2) #25
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %66, %3
  %10 = phi i64 [ 1, %3 ], [ %68, %66 ]
  %11 = phi i32 [ 0, %3 ], [ %67, %66 ]
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %66

13:                                               ; preds = %9
  %14 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %10, i64 1
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %66, label %17

17:                                               ; preds = %13
  %18 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %10, i64 2
  %19 = load i32, ptr %18, align 4, !tbaa !7
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %66, label %21

21:                                               ; preds = %17
  %22 = sext i32 %15 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %23) #25
  %25 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %8, i64 %10, i64 1
  %26 = load i32, ptr %25, align 4, !tbaa !7
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %21
  %29 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %32

30:                                               ; preds = %21
  %31 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %26) #25
  br label %32

32:                                               ; preds = %30, %28
  %33 = tail call ptr @get_responce(ptr noundef %1) #25
  %34 = tail call i32 @matches(ptr noundef nonnull %33, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %35 = icmp ne i32 %34, 0
  %36 = load i8, ptr %33, align 1, !tbaa !45
  %37 = icmp eq i8 %36, 0
  %38 = or i1 %35, %37
  br i1 %38, label %41, label %39

39:                                               ; preds = %32
  %40 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %33, ptr noundef nonnull @.str.84, ptr noundef nonnull %25) #27
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %42

41:                                               ; preds = %32
  br i1 %35, label %63, label %42

42:                                               ; preds = %41, %39
  %43 = load i32, ptr %18, align 4, !tbaa !7
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %44, i64 1
  %46 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %45) #25
  %47 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %8, i64 %10, i64 2
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = icmp slt i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %42
  %51 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %54

52:                                               ; preds = %42
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %48) #25
  br label %54

54:                                               ; preds = %52, %50
  %55 = tail call ptr @get_responce(ptr noundef %1) #25
  %56 = tail call i32 @matches(ptr noundef nonnull %55, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %57 = icmp ne i32 %56, 0
  %58 = load i8, ptr %55, align 1, !tbaa !45
  %59 = icmp eq i8 %58, 0
  %60 = or i1 %57, %59
  br i1 %60, label %63, label %61

61:                                               ; preds = %54
  %62 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %55, ptr noundef nonnull @.str.84, ptr noundef nonnull %47) #27
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %63

63:                                               ; preds = %61, %54, %41
  %64 = phi i32 [ 1, %41 ], [ %56, %54 ], [ 0, %61 ]
  %65 = tail call i32 @fputc(i32 10, ptr %0)
  br label %66

66:                                               ; preds = %63, %17, %13, %9
  %67 = phi i32 [ 1, %9 ], [ %64, %63 ], [ 0, %17 ], [ 0, %13 ]
  %68 = add nuw nsw i64 %10, 1
  %69 = icmp eq i64 %68, 15
  br i1 %69, label %70, label %9, !llvm.loop !67

70:                                               ; preds = %66
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal void @enter_week(ptr noundef %0, ptr nocapture noundef %1, i32 noundef %2) #5 {
  %4 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.78, i64 46, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.79, i64 52, i64 1, ptr %0)
  %7 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %2) #25
  %8 = sext i32 %2 to i64
  br label %9

9:                                                ; preds = %105, %3
  %10 = phi i32 [ undef, %3 ], [ %.lcssa3, %105 ]
  %11 = phi i32 [ undef, %3 ], [ %.lcssa4, %105 ]
  br label %12

12:                                               ; preds = %22, %9
  %13 = tail call i64 @fwrite(ptr nonnull @.str.85, i64 19, i64 1, ptr %0)
  %14 = tail call ptr @get_responce(ptr noundef %1) #25
  %15 = load i8, ptr @responce, align 16, !tbaa !45
  %16 = icmp eq i8 %15, 0
  br i1 %16, label %108, label %17

17:                                               ; preds = %12
  %18 = tail call i32 @matches(ptr noundef nonnull @responce, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %108

20:                                               ; preds = %17
  %21 = tail call i32 @find_name(ptr noundef %0, ptr noundef nonnull %14) #27
  switch i32 %21, label %23 [
    i32 29, label %22
    i32 0, label %22
  ]

22:                                               ; preds = %20, %20
  br label %12

23:                                               ; preds = %35, %20
  %.lcssa = phi i32 [ %.lcssa, %35 ], [ %21, %20 ]
  %24 = phi i64 [ %45, %35 ], [ 1, %20 ]
  %25 = phi i32 [ %44, %35 ], [ %10, %20 ]
  %26 = phi i32 [ %43, %35 ], [ %11, %20 ]
  %27 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %24, i64 2
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = icmp eq i32 %28, %.lcssa
  %30 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %24, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !7
  br i1 %29, label %32, label %35

32:                                               ; preds = %23
  %33 = icmp eq i32 %31, 29
  br i1 %33, label %35, label %34

34:                                               ; preds = %32
  br label %35

35:                                               ; preds = %34, %32, %23
  %36 = phi i32 [ %31, %34 ], [ 29, %32 ], [ %31, %23 ]
  %37 = phi i1 [ false, %34 ], [ true, %32 ], [ true, %23 ]
  %38 = phi i32 [ 2, %34 ], [ %26, %32 ], [ %26, %23 ]
  %39 = phi i32 [ 1, %34 ], [ %25, %32 ], [ %25, %23 ]
  %40 = icmp ne i32 %36, %.lcssa
  %41 = icmp eq i32 %28, 29
  %42 = or i1 %41, %40
  %43 = select i1 %42, i32 %38, i32 1
  %44 = select i1 %42, i32 %39, i32 2
  %45 = add nuw nsw i64 %24, 1
  %46 = icmp ult i64 %24, 14
  %47 = and i1 %42, %37
  %48 = select i1 %46, i1 %47, i1 false
  br i1 %48, label %23, label %49, !llvm.loop !68

49:                                               ; preds = %35
  %.lcssa4 = phi i32 [ %43, %35 ]
  %.lcssa3 = phi i32 [ %44, %35 ]
  %.lcssa2 = phi i1 [ %47, %35 ]
  %.lcssa1 = phi i64 [ %24, %35 ]
  %.lcssa.lcssa = phi i32 [ %.lcssa, %35 ]
  br i1 %.lcssa2, label %50, label %54

50:                                               ; preds = %49
  %51 = sext i32 %.lcssa.lcssa to i64
  %52 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %51, i64 1
  %53 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef nonnull %52, i32 noundef %2) #25
  br label %105

54:                                               ; preds = %49
  %55 = and i64 %.lcssa1, 4294967295
  %56 = sext i32 %.lcssa4 to i64
  %57 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %55, i64 %56
  %58 = load i32, ptr %57, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %59, i64 1
  %61 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %60) #25
  %62 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %8, i64 %55, i64 %56
  %63 = load i32, ptr %62, align 4, !tbaa !7
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %54
  %66 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %69

67:                                               ; preds = %54
  %68 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %63) #25
  br label %69

69:                                               ; preds = %67, %65
  %70 = tail call ptr @get_responce(ptr noundef %1) #25
  %71 = tail call i32 @matches(ptr noundef nonnull %70, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %72 = icmp ne i32 %71, 0
  %73 = load i8, ptr %70, align 1, !tbaa !45
  %74 = icmp eq i8 %73, 0
  %75 = or i1 %72, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %69
  %77 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %70, ptr noundef nonnull @.str.84, ptr noundef nonnull %62) #27
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %79

78:                                               ; preds = %69
  br i1 %72, label %102, label %79

79:                                               ; preds = %78, %76
  %80 = sext i32 %.lcssa3 to i64
  %81 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %8, i64 %55, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %83, i64 1
  %85 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %84) #25
  %86 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %8, i64 %55, i64 %80
  %87 = load i32, ptr %86, align 4, !tbaa !7
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %79
  %90 = tail call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %93

91:                                               ; preds = %79
  %92 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %87) #25
  br label %93

93:                                               ; preds = %91, %89
  %94 = tail call ptr @get_responce(ptr noundef %1) #25
  %95 = tail call i32 @matches(ptr noundef nonnull %94, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %96 = icmp ne i32 %95, 0
  %97 = load i8, ptr %94, align 1, !tbaa !45
  %98 = icmp eq i8 %97, 0
  %99 = or i1 %96, %98
  br i1 %99, label %102, label %100

100:                                              ; preds = %93
  %101 = tail call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %94, ptr noundef nonnull @.str.84, ptr noundef nonnull %86) #27
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %102

102:                                              ; preds = %100, %93, %78
  %103 = phi i32 [ 1, %78 ], [ %95, %93 ], [ 0, %100 ]
  %104 = tail call i32 @fputc(i32 10, ptr %0)
  br label %105

105:                                              ; preds = %102, %50
  %106 = phi i32 [ %103, %102 ], [ 0, %50 ]
  %107 = icmp eq i32 %106, 0
  br i1 %107, label %9, label %108, !llvm.loop !69

108:                                              ; preds = %105, %17, %12
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_rankings(ptr nocapture noundef %0) #5 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i32 @fputc(i32 10, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 43, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 65, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 81, i64 1, ptr %0)
  br label %7

7:                                                ; preds = %240, %1
  %8 = phi i64 [ 1, %1 ], [ %243, %240 ]
  %9 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %8, i64 1
  %10 = trunc i64 %8 to i32
  %11 = tail call i32 @a_champ(i32 noundef %10) #27
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %13, label %17

13:                                               ; preds = %7
  %14 = tail call i32 @a_wild_card(i32 noundef %10) #27
  %15 = icmp eq i32 %14, 0
  %16 = select i1 %15, ptr @.str.22, ptr @.str.21
  br label %17

17:                                               ; preds = %13, %7
  %18 = phi ptr [ %16, %13 ], [ @.str.20, %7 ]
  br label %19

19:                                               ; preds = %25, %17
  %20 = phi i64 [ 1, %17 ], [ %26, %25 ]
  %21 = getelementptr inbounds i32, ptr @conf_standings, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !7
  %23 = zext i32 %22 to i64
  %24 = icmp eq i64 %8, %23
  br i1 %24, label %28, label %25

25:                                               ; preds = %19
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, 29
  br i1 %27, label %30, label %19, !llvm.loop !57

28:                                               ; preds = %19
  %.lcssa = phi i64 [ %20, %19 ]
  %29 = trunc i64 %.lcssa to i32
  br label %30

30:                                               ; preds = %28, %25
  %31 = phi i32 [ %29, %28 ], [ 0, %25 ]
  br label %32

32:                                               ; preds = %38, %30
  %33 = phi i64 [ 1, %30 ], [ %39, %38 ]
  %34 = getelementptr inbounds i32, ptr @abs_standings, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = zext i32 %35 to i64
  %37 = icmp eq i64 %8, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %32
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, 29
  br i1 %40, label %43, label %32, !llvm.loop !57

41:                                               ; preds = %32
  %.lcssa2 = phi i64 [ %33, %32 ]
  %42 = trunc i64 %.lcssa2 to i32
  br label %43

43:                                               ; preds = %41, %38
  %44 = phi i32 [ %42, %41 ], [ 0, %38 ]
  br label %45

45:                                               ; preds = %51, %43
  %46 = phi i64 [ 1, %43 ], [ %52, %51 ]
  %47 = getelementptr inbounds i32, ptr @offence_ranks, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = zext i32 %48 to i64
  %50 = icmp eq i64 %8, %49
  br i1 %50, label %54, label %51

51:                                               ; preds = %45
  %52 = add nuw nsw i64 %46, 1
  %53 = icmp eq i64 %52, 29
  br i1 %53, label %56, label %45, !llvm.loop !57

54:                                               ; preds = %45
  %.lcssa4 = phi i64 [ %46, %45 ]
  %55 = trunc i64 %.lcssa4 to i32
  br label %56

56:                                               ; preds = %54, %51
  %57 = phi i32 [ %55, %54 ], [ 0, %51 ]
  br label %58

58:                                               ; preds = %64, %56
  %59 = phi i64 [ 1, %56 ], [ %65, %64 ]
  %60 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %59
  %61 = load i32, ptr %60, align 4, !tbaa !7
  %62 = zext i32 %61 to i64
  %63 = icmp eq i64 %8, %62
  br i1 %63, label %67, label %64

64:                                               ; preds = %58
  %65 = add nuw nsw i64 %59, 1
  %66 = icmp eq i64 %65, 29
  br i1 %66, label %69, label %58, !llvm.loop !57

67:                                               ; preds = %58
  %.lcssa6 = phi i64 [ %59, %58 ]
  %68 = trunc i64 %.lcssa6 to i32
  br label %69

69:                                               ; preds = %67, %64
  %70 = phi i32 [ %68, %67 ], [ 0, %64 ]
  br label %71

71:                                               ; preds = %77, %69
  %72 = phi i64 [ 1, %69 ], [ %78, %77 ]
  %73 = getelementptr inbounds i32, ptr @defence_ranks, i64 %72
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %8, %75
  br i1 %76, label %80, label %77

77:                                               ; preds = %71
  %78 = add nuw nsw i64 %72, 1
  %79 = icmp eq i64 %78, 29
  br i1 %79, label %82, label %71, !llvm.loop !57

80:                                               ; preds = %71
  %.lcssa8 = phi i64 [ %72, %71 ]
  %81 = trunc i64 %.lcssa8 to i32
  br label %82

82:                                               ; preds = %80, %77
  %83 = phi i32 [ %81, %80 ], [ 0, %77 ]
  br label %84

84:                                               ; preds = %90, %82
  %85 = phi i64 [ 1, %82 ], [ %91, %90 ]
  %86 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %85
  %87 = load i32, ptr %86, align 4, !tbaa !7
  %88 = zext i32 %87 to i64
  %89 = icmp eq i64 %8, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = add nuw nsw i64 %85, 1
  %92 = icmp eq i64 %91, 29
  br i1 %92, label %95, label %84, !llvm.loop !57

93:                                               ; preds = %84
  %.lcssa10 = phi i64 [ %85, %84 ]
  %94 = trunc i64 %.lcssa10 to i32
  br label %95

95:                                               ; preds = %93, %90
  %96 = phi i32 [ %94, %93 ], [ 0, %90 ]
  br label %97

97:                                               ; preds = %103, %95
  %98 = phi i64 [ 1, %95 ], [ %104, %103 ]
  %99 = getelementptr inbounds i32, ptr @net_ranks, i64 %98
  %100 = load i32, ptr %99, align 4, !tbaa !7
  %101 = zext i32 %100 to i64
  %102 = icmp eq i64 %8, %101
  br i1 %102, label %106, label %103

103:                                              ; preds = %97
  %104 = add nuw nsw i64 %98, 1
  %105 = icmp eq i64 %104, 29
  br i1 %105, label %108, label %97, !llvm.loop !57

106:                                              ; preds = %97
  %.lcssa12 = phi i64 [ %98, %97 ]
  %107 = trunc i64 %.lcssa12 to i32
  br label %108

108:                                              ; preds = %106, %103
  %109 = phi i32 [ %107, %106 ], [ 0, %103 ]
  br label %110

110:                                              ; preds = %116, %108
  %111 = phi i64 [ 1, %108 ], [ %117, %116 ]
  %112 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !7
  %114 = zext i32 %113 to i64
  %115 = icmp eq i64 %8, %114
  br i1 %115, label %119, label %116

116:                                              ; preds = %110
  %117 = add nuw nsw i64 %111, 1
  %118 = icmp eq i64 %117, 29
  br i1 %118, label %121, label %110, !llvm.loop !57

119:                                              ; preds = %110
  %.lcssa14 = phi i64 [ %111, %110 ]
  %120 = trunc i64 %.lcssa14 to i32
  br label %121

121:                                              ; preds = %119, %116
  %122 = phi i32 [ %120, %119 ], [ 0, %116 ]
  %123 = add nuw nsw i64 %8, 14
  %124 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %123, i64 1
  %125 = trunc i64 %123 to i32
  %126 = tail call i32 @a_champ(i32 noundef %125) #27
  %127 = icmp eq i32 %126, 0
  br i1 %127, label %128, label %132

128:                                              ; preds = %121
  %129 = tail call i32 @a_wild_card(i32 noundef %125) #27
  %130 = icmp eq i32 %129, 0
  %131 = select i1 %130, ptr @.str.22, ptr @.str.21
  br label %132

132:                                              ; preds = %128, %121
  %133 = phi ptr [ %131, %128 ], [ @.str.20, %121 ]
  br label %134

134:                                              ; preds = %140, %132
  %135 = phi i64 [ 1, %132 ], [ %141, %140 ]
  %136 = getelementptr inbounds i32, ptr @conf_standings, i64 %135
  %137 = load i32, ptr %136, align 4, !tbaa !7
  %138 = zext i32 %137 to i64
  %139 = icmp eq i64 %123, %138
  br i1 %139, label %143, label %140

140:                                              ; preds = %134
  %141 = add nuw nsw i64 %135, 1
  %142 = icmp eq i64 %141, 29
  br i1 %142, label %145, label %134, !llvm.loop !57

143:                                              ; preds = %134
  %.lcssa16 = phi i64 [ %135, %134 ]
  %144 = trunc i64 %.lcssa16 to i32
  br label %145

145:                                              ; preds = %143, %140
  %146 = phi i32 [ %144, %143 ], [ 0, %140 ]
  %147 = add nsw i32 %146, -14
  br label %148

148:                                              ; preds = %154, %145
  %149 = phi i64 [ 1, %145 ], [ %155, %154 ]
  %150 = getelementptr inbounds i32, ptr @abs_standings, i64 %149
  %151 = load i32, ptr %150, align 4, !tbaa !7
  %152 = zext i32 %151 to i64
  %153 = icmp eq i64 %123, %152
  br i1 %153, label %157, label %154

154:                                              ; preds = %148
  %155 = add nuw nsw i64 %149, 1
  %156 = icmp eq i64 %155, 29
  br i1 %156, label %159, label %148, !llvm.loop !57

157:                                              ; preds = %148
  %.lcssa18 = phi i64 [ %149, %148 ]
  %158 = trunc i64 %.lcssa18 to i32
  br label %159

159:                                              ; preds = %157, %154
  %160 = phi i32 [ %158, %157 ], [ 0, %154 ]
  br label %161

161:                                              ; preds = %167, %159
  %162 = phi i64 [ 1, %159 ], [ %168, %167 ]
  %163 = getelementptr inbounds i32, ptr @offence_ranks, i64 %162
  %164 = load i32, ptr %163, align 4, !tbaa !7
  %165 = zext i32 %164 to i64
  %166 = icmp eq i64 %123, %165
  br i1 %166, label %170, label %167

167:                                              ; preds = %161
  %168 = add nuw nsw i64 %162, 1
  %169 = icmp eq i64 %168, 29
  br i1 %169, label %172, label %161, !llvm.loop !57

170:                                              ; preds = %161
  %.lcssa20 = phi i64 [ %162, %161 ]
  %171 = trunc i64 %.lcssa20 to i32
  br label %172

172:                                              ; preds = %170, %167
  %173 = phi i32 [ %171, %170 ], [ 0, %167 ]
  %174 = add nsw i32 %173, -14
  br label %175

175:                                              ; preds = %181, %172
  %176 = phi i64 [ 1, %172 ], [ %182, %181 ]
  %177 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %176
  %178 = load i32, ptr %177, align 4, !tbaa !7
  %179 = zext i32 %178 to i64
  %180 = icmp eq i64 %123, %179
  br i1 %180, label %184, label %181

181:                                              ; preds = %175
  %182 = add nuw nsw i64 %176, 1
  %183 = icmp eq i64 %182, 29
  br i1 %183, label %186, label %175, !llvm.loop !57

184:                                              ; preds = %175
  %.lcssa22 = phi i64 [ %176, %175 ]
  %185 = trunc i64 %.lcssa22 to i32
  br label %186

186:                                              ; preds = %184, %181
  %187 = phi i32 [ %185, %184 ], [ 0, %181 ]
  br label %188

188:                                              ; preds = %194, %186
  %189 = phi i64 [ 1, %186 ], [ %195, %194 ]
  %190 = getelementptr inbounds i32, ptr @defence_ranks, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !7
  %192 = zext i32 %191 to i64
  %193 = icmp eq i64 %123, %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, 29
  br i1 %196, label %199, label %188, !llvm.loop !57

197:                                              ; preds = %188
  %.lcssa24 = phi i64 [ %189, %188 ]
  %198 = trunc i64 %.lcssa24 to i32
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i32 [ %198, %197 ], [ 0, %194 ]
  %201 = add nsw i32 %200, -14
  br label %202

202:                                              ; preds = %208, %199
  %203 = phi i64 [ 1, %199 ], [ %209, %208 ]
  %204 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !7
  %206 = zext i32 %205 to i64
  %207 = icmp eq i64 %123, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = add nuw nsw i64 %203, 1
  %210 = icmp eq i64 %209, 29
  br i1 %210, label %213, label %202, !llvm.loop !57

211:                                              ; preds = %202
  %.lcssa26 = phi i64 [ %203, %202 ]
  %212 = trunc i64 %.lcssa26 to i32
  br label %213

213:                                              ; preds = %211, %208
  %214 = phi i32 [ %212, %211 ], [ 0, %208 ]
  br label %215

215:                                              ; preds = %221, %213
  %216 = phi i64 [ 1, %213 ], [ %222, %221 ]
  %217 = getelementptr inbounds i32, ptr @net_ranks, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !7
  %219 = zext i32 %218 to i64
  %220 = icmp eq i64 %123, %219
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = add nuw nsw i64 %216, 1
  %223 = icmp eq i64 %222, 29
  br i1 %223, label %226, label %215, !llvm.loop !57

224:                                              ; preds = %215
  %.lcssa28 = phi i64 [ %216, %215 ]
  %225 = trunc i64 %.lcssa28 to i32
  br label %226

226:                                              ; preds = %224, %221
  %227 = phi i32 [ %225, %224 ], [ 0, %221 ]
  %228 = add nsw i32 %227, -14
  br label %229

229:                                              ; preds = %235, %226
  %230 = phi i64 [ 1, %226 ], [ %236, %235 ]
  %231 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !7
  %233 = zext i32 %232 to i64
  %234 = icmp eq i64 %123, %233
  br i1 %234, label %238, label %235

235:                                              ; preds = %229
  %236 = add nuw nsw i64 %230, 1
  %237 = icmp eq i64 %236, 29
  br i1 %237, label %240, label %229, !llvm.loop !57

238:                                              ; preds = %229
  %.lcssa30 = phi i64 [ %230, %229 ]
  %239 = trunc i64 %.lcssa30 to i32
  br label %240

240:                                              ; preds = %238, %235
  %241 = phi i32 [ %239, %238 ], [ 0, %235 ]
  %242 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef nonnull %9, ptr noundef nonnull %18, i32 noundef %31, i32 noundef %44, i32 noundef %57, i32 noundef %70, i32 noundef %83, i32 noundef %96, i32 noundef %109, i32 noundef %122, ptr noundef nonnull %124, ptr noundef nonnull %133, i32 noundef %147, i32 noundef %160, i32 noundef %174, i32 noundef %187, i32 noundef %201, i32 noundef %214, i32 noundef %228, i32 noundef %241) #25
  %243 = add nuw nsw i64 %8, 1
  %244 = icmp eq i64 %243, 15
  br i1 %244, label %245, label %7, !llvm.loop !70

245:                                              ; preds = %240
  %246 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_defence(ptr nocapture noundef %0) #10 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i32 @fputc(i32 10, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.91, i64 47, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 54, i64 1, ptr %0)
  br label %6

6:                                                ; preds = %52, %1
  %7 = phi i64 [ 1, %1 ], [ %73, %52 ]
  %8 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %15, %6
  %11 = phi i64 [ 1, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 29
  br i1 %17, label %20, label %10, !llvm.loop !57

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !39
  %35 = sitofp i32 %34 to double
  %36 = sitofp i32 %31 to double
  %37 = fdiv double %35, %36
  %38 = select i1 %32, double 0.000000e+00, double %37
  %39 = add nuw nsw i64 %7, 14
  %40 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %47, %20
  %43 = phi i64 [ 1, %20 ], [ %48, %47 ]
  %44 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = icmp eq i32 %45, %41
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, 29
  br i1 %49, label %52, label %42, !llvm.loop !57

50:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %51 = trunc i64 %.lcssa2 to i32
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 0, %47 ]
  %54 = sext i32 %41 to i64
  %55 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %54, i64 1
  %56 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !22
  %58 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = add nsw i32 %59, %57
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !25
  %63 = add nsw i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !39
  %67 = sitofp i32 %66 to double
  %68 = sitofp i32 %63 to double
  %69 = fdiv double %67, %68
  %70 = select i1 %64, double 0.000000e+00, double %69
  %71 = trunc i64 %7 to i32
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %71, i32 noundef %21, ptr noundef nonnull %23, double noundef %38, i32 noundef %34, i32 noundef %71, i32 noundef %53, ptr noundef nonnull %55, double noundef %70, i32 noundef %66) #25
  %73 = add nuw nsw i64 %7, 1
  %74 = icmp eq i64 %73, 15
  br i1 %74, label %75, label %6, !llvm.loop !71

75:                                               ; preds = %52
  %76 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_offence(ptr nocapture noundef %0) #10 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i32 @fputc(i32 10, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.94, i64 47, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 54, i64 1, ptr %0)
  br label %6

6:                                                ; preds = %52, %1
  %7 = phi i64 [ 1, %1 ], [ %73, %52 ]
  %8 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %15, %6
  %11 = phi i64 [ 1, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 29
  br i1 %17, label %20, label %10, !llvm.loop !57

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = sitofp i32 %34 to double
  %36 = sitofp i32 %31 to double
  %37 = fdiv double %35, %36
  %38 = select i1 %32, double 0.000000e+00, double %37
  %39 = add nuw nsw i64 %7, 14
  %40 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %39
  %41 = load i32, ptr %40, align 4, !tbaa !7
  br label %42

42:                                               ; preds = %47, %20
  %43 = phi i64 [ 1, %20 ], [ %48, %47 ]
  %44 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %43
  %45 = load i32, ptr %44, align 4, !tbaa !7
  %46 = icmp eq i32 %45, %41
  br i1 %46, label %50, label %47

47:                                               ; preds = %42
  %48 = add nuw nsw i64 %43, 1
  %49 = icmp eq i64 %48, 29
  br i1 %49, label %52, label %42, !llvm.loop !57

50:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %51 = trunc i64 %.lcssa2 to i32
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 0, %47 ]
  %54 = sext i32 %41 to i64
  %55 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %54, i64 1
  %56 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !22
  %58 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !26
  %60 = add nsw i32 %59, %57
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !25
  %63 = add nsw i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = sitofp i32 %66 to double
  %68 = sitofp i32 %63 to double
  %69 = fdiv double %67, %68
  %70 = select i1 %64, double 0.000000e+00, double %69
  %71 = trunc i64 %7 to i32
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %71, i32 noundef %21, ptr noundef nonnull %23, double noundef %38, i32 noundef %34, i32 noundef %71, i32 noundef %53, ptr noundef nonnull %55, double noundef %70, i32 noundef %66) #25
  %73 = add nuw nsw i64 %7, 1
  %74 = icmp eq i64 %73, 15
  br i1 %74, label %75, label %6, !llvm.loop !72

75:                                               ; preds = %52
  %76 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_net(ptr nocapture noundef %0) #10 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i32 @fputc(i32 10, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.95, i64 48, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.92, i64 54, i64 1, ptr %0)
  br label %6

6:                                                ; preds = %55, %1
  %7 = phi i64 [ 1, %1 ], [ %79, %55 ]
  %8 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  br label %10

10:                                               ; preds = %15, %6
  %11 = phi i64 [ 1, %6 ], [ %16, %15 ]
  %12 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %11
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = icmp eq i32 %13, %9
  br i1 %14, label %18, label %15

15:                                               ; preds = %10
  %16 = add nuw nsw i64 %11, 1
  %17 = icmp eq i64 %16, 29
  br i1 %17, label %20, label %10, !llvm.loop !57

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !22
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !26
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !25
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !39
  %37 = sub nsw i32 %34, %36
  %38 = sitofp i32 %37 to double
  %39 = sitofp i32 %31 to double
  %40 = fdiv double %38, %39
  %41 = select i1 %32, double 0.000000e+00, double %40
  %42 = add nuw nsw i64 %7, 14
  %43 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !7
  br label %45

45:                                               ; preds = %50, %20
  %46 = phi i64 [ 1, %20 ], [ %51, %50 ]
  %47 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %46
  %48 = load i32, ptr %47, align 4, !tbaa !7
  %49 = icmp eq i32 %48, %44
  br i1 %49, label %53, label %50

50:                                               ; preds = %45
  %51 = add nuw nsw i64 %46, 1
  %52 = icmp eq i64 %51, 29
  br i1 %52, label %55, label %45, !llvm.loop !57

53:                                               ; preds = %45
  %.lcssa2 = phi i64 [ %46, %45 ]
  %54 = trunc i64 %.lcssa2 to i32
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %54, %53 ], [ 0, %50 ]
  %57 = sext i32 %44 to i64
  %58 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %57, i64 1
  %59 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !22
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !26
  %63 = add nsw i32 %62, %60
  %64 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !25
  %66 = add nsw i32 %63, %65
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !38
  %70 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !39
  %72 = sub nsw i32 %69, %71
  %73 = sitofp i32 %72 to double
  %74 = sitofp i32 %66 to double
  %75 = fdiv double %73, %74
  %76 = select i1 %67, double 0.000000e+00, double %75
  %77 = trunc i64 %7 to i32
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.96, i32 noundef %77, i32 noundef %21, ptr noundef nonnull %23, double noundef %41, i32 noundef %37, i32 noundef %77, i32 noundef %56, ptr noundef nonnull %58, double noundef %76, i32 noundef %72) #25
  %79 = add nuw nsw i64 %7, 1
  %80 = icmp eq i64 %79, 15
  br i1 %80, label %81, label %6, !llvm.loop !73

81:                                               ; preds = %55
  %82 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_standings(ptr nocapture noundef %0) #5 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.97, i64 65, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.98, i64 65, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  %8 = tail call i32 @fputc(i32 10, ptr %0)
  br label %9

9:                                                ; preds = %97, %1
  %10 = phi i64 [ 1, %1 ], [ %106, %97 ]
  %11 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %13, i64 1
  %15 = tail call i32 @a_champ(i32 noundef %12) #27
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %22

17:                                               ; preds = %9
  %18 = load i32, ptr %11, align 4, !tbaa !7
  %19 = tail call i32 @a_wild_card(i32 noundef %18) #27
  %20 = icmp eq i32 %19, 0
  %21 = select i1 %20, ptr @.str.22, ptr @.str.21
  br label %22

22:                                               ; preds = %17, %9
  %23 = phi ptr [ %21, %17 ], [ @.str.20, %9 ]
  %24 = load i32, ptr %11, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !25
  %32 = add nsw i32 %29, %27
  %33 = add nsw i32 %32, %31
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %22
  %36 = sitofp i32 %27 to double
  %37 = sitofp i32 %31 to double
  %38 = tail call double @llvm.fmuladd.f64(double %37, double 5.000000e-01, double %36)
  %39 = sitofp i32 %33 to double
  %40 = fdiv double %38, %39
  %41 = fcmp oge double %40, 1.000000e+00
  %42 = select i1 %41, ptr @.str.23, ptr @.str.22
  %43 = fcmp ult double %40, 1.000000e+00
  br i1 %43, label %44, label %49

44:                                               ; preds = %35, %22
  %45 = phi ptr [ @.str.22, %22 ], [ %42, %35 ]
  %46 = phi double [ 0.000000e+00, %22 ], [ %40, %35 ]
  %47 = tail call double @llvm.fmuladd.f64(double %46, double 1.000000e+03, double 5.000000e-01)
  %48 = fptosi double %47 to i32
  br label %49

49:                                               ; preds = %44, %35
  %50 = phi ptr [ %45, %44 ], [ %42, %35 ]
  %51 = phi i32 [ %48, %44 ], [ 0, %35 ]
  %52 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 4
  %55 = load i32, ptr %54, align 4, !tbaa !39
  %56 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %14, ptr noundef nonnull %23, i32 noundef %27, i32 noundef %29, i32 noundef %31, ptr noundef nonnull %50, i32 noundef %51, i32 noundef %53, i32 noundef %55) #25
  %57 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %58 = add nuw nsw i64 %10, 14
  %59 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %61, i64 1
  %63 = tail call i32 @a_champ(i32 noundef %60) #27
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %70

65:                                               ; preds = %49
  %66 = load i32, ptr %59, align 4, !tbaa !7
  %67 = tail call i32 @a_wild_card(i32 noundef %66) #27
  %68 = icmp eq i32 %67, 0
  %69 = select i1 %68, ptr @.str.22, ptr @.str.21
  br label %70

70:                                               ; preds = %65, %49
  %71 = phi ptr [ %69, %65 ], [ @.str.20, %49 ]
  %72 = load i32, ptr %59, align 4, !tbaa !7
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %73
  %75 = load i32, ptr %74, align 4, !tbaa !22
  %76 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %73, i32 1
  %77 = load i32, ptr %76, align 4, !tbaa !26
  %78 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %73, i32 2
  %79 = load i32, ptr %78, align 4, !tbaa !25
  %80 = add nsw i32 %77, %75
  %81 = add nsw i32 %80, %79
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %92, label %83

83:                                               ; preds = %70
  %84 = sitofp i32 %75 to double
  %85 = sitofp i32 %79 to double
  %86 = tail call double @llvm.fmuladd.f64(double %85, double 5.000000e-01, double %84)
  %87 = sitofp i32 %81 to double
  %88 = fdiv double %86, %87
  %89 = fcmp oge double %88, 1.000000e+00
  %90 = select i1 %89, ptr @.str.23, ptr @.str.22
  %91 = fcmp ult double %88, 1.000000e+00
  br i1 %91, label %92, label %97

92:                                               ; preds = %83, %70
  %93 = phi ptr [ @.str.22, %70 ], [ %90, %83 ]
  %94 = phi double [ 0.000000e+00, %70 ], [ %88, %83 ]
  %95 = tail call double @llvm.fmuladd.f64(double %94, double 1.000000e+03, double 5.000000e-01)
  %96 = fptosi double %95 to i32
  br label %97

97:                                               ; preds = %92, %83
  %98 = phi ptr [ %93, %92 ], [ %90, %83 ]
  %99 = phi i32 [ %96, %92 ], [ 0, %83 ]
  %100 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %73, i32 3
  %101 = load i32, ptr %100, align 4, !tbaa !38
  %102 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %73, i32 4
  %103 = load i32, ptr %102, align 4, !tbaa !39
  %104 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %62, ptr noundef nonnull %71, i32 noundef %75, i32 noundef %77, i32 noundef %79, ptr noundef nonnull %98, i32 noundef %99, i32 noundef %101, i32 noundef %103) #25
  %105 = tail call i32 @fputc(i32 10, ptr %0)
  %106 = add nuw nsw i64 %10, 1
  %107 = icmp eq i64 %106, 6
  br i1 %107, label %108, label %9, !llvm.loop !74

108:                                              ; preds = %97
  %109 = tail call i64 @fwrite(ptr nonnull @.str.100, i64 67, i64 1, ptr %0)
  br label %110

110:                                              ; preds = %198, %108
  %111 = phi i64 [ 6, %108 ], [ %207, %198 ]
  %112 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %111
  %113 = load i32, ptr %112, align 4, !tbaa !7
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %114, i64 1
  %116 = tail call i32 @a_champ(i32 noundef %113) #27
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %123

118:                                              ; preds = %110
  %119 = load i32, ptr %112, align 4, !tbaa !7
  %120 = tail call i32 @a_wild_card(i32 noundef %119) #27
  %121 = icmp eq i32 %120, 0
  %122 = select i1 %121, ptr @.str.22, ptr @.str.21
  br label %123

123:                                              ; preds = %118, %110
  %124 = phi ptr [ %122, %118 ], [ @.str.20, %110 ]
  %125 = load i32, ptr %112, align 4, !tbaa !7
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %126
  %128 = load i32, ptr %127, align 4, !tbaa !22
  %129 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %126, i32 1
  %130 = load i32, ptr %129, align 4, !tbaa !26
  %131 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %126, i32 2
  %132 = load i32, ptr %131, align 4, !tbaa !25
  %133 = add nsw i32 %130, %128
  %134 = add nsw i32 %133, %132
  %135 = icmp eq i32 %134, 0
  br i1 %135, label %145, label %136

136:                                              ; preds = %123
  %137 = sitofp i32 %128 to double
  %138 = sitofp i32 %132 to double
  %139 = tail call double @llvm.fmuladd.f64(double %138, double 5.000000e-01, double %137)
  %140 = sitofp i32 %134 to double
  %141 = fdiv double %139, %140
  %142 = fcmp oge double %141, 1.000000e+00
  %143 = select i1 %142, ptr @.str.23, ptr @.str.22
  %144 = fcmp ult double %141, 1.000000e+00
  br i1 %144, label %145, label %150

145:                                              ; preds = %136, %123
  %146 = phi ptr [ @.str.22, %123 ], [ %143, %136 ]
  %147 = phi double [ 0.000000e+00, %123 ], [ %141, %136 ]
  %148 = tail call double @llvm.fmuladd.f64(double %147, double 1.000000e+03, double 5.000000e-01)
  %149 = fptosi double %148 to i32
  br label %150

150:                                              ; preds = %145, %136
  %151 = phi ptr [ %146, %145 ], [ %143, %136 ]
  %152 = phi i32 [ %149, %145 ], [ 0, %136 ]
  %153 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %126, i32 3
  %154 = load i32, ptr %153, align 4, !tbaa !38
  %155 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %126, i32 4
  %156 = load i32, ptr %155, align 4, !tbaa !39
  %157 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %115, ptr noundef nonnull %124, i32 noundef %128, i32 noundef %130, i32 noundef %132, ptr noundef nonnull %151, i32 noundef %152, i32 noundef %154, i32 noundef %156) #25
  %158 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %159 = add nuw nsw i64 %111, 14
  %160 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %159
  %161 = load i32, ptr %160, align 4, !tbaa !7
  %162 = sext i32 %161 to i64
  %163 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %162, i64 1
  %164 = tail call i32 @a_champ(i32 noundef %161) #27
  %165 = icmp eq i32 %164, 0
  br i1 %165, label %166, label %171

166:                                              ; preds = %150
  %167 = load i32, ptr %160, align 4, !tbaa !7
  %168 = tail call i32 @a_wild_card(i32 noundef %167) #27
  %169 = icmp eq i32 %168, 0
  %170 = select i1 %169, ptr @.str.22, ptr @.str.21
  br label %171

171:                                              ; preds = %166, %150
  %172 = phi ptr [ %170, %166 ], [ @.str.20, %150 ]
  %173 = load i32, ptr %160, align 4, !tbaa !7
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %174
  %176 = load i32, ptr %175, align 4, !tbaa !22
  %177 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %174, i32 1
  %178 = load i32, ptr %177, align 4, !tbaa !26
  %179 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %174, i32 2
  %180 = load i32, ptr %179, align 4, !tbaa !25
  %181 = add nsw i32 %178, %176
  %182 = add nsw i32 %181, %180
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %193, label %184

184:                                              ; preds = %171
  %185 = sitofp i32 %176 to double
  %186 = sitofp i32 %180 to double
  %187 = tail call double @llvm.fmuladd.f64(double %186, double 5.000000e-01, double %185)
  %188 = sitofp i32 %182 to double
  %189 = fdiv double %187, %188
  %190 = fcmp oge double %189, 1.000000e+00
  %191 = select i1 %190, ptr @.str.23, ptr @.str.22
  %192 = fcmp ult double %189, 1.000000e+00
  br i1 %192, label %193, label %198

193:                                              ; preds = %184, %171
  %194 = phi ptr [ @.str.22, %171 ], [ %191, %184 ]
  %195 = phi double [ 0.000000e+00, %171 ], [ %189, %184 ]
  %196 = tail call double @llvm.fmuladd.f64(double %195, double 1.000000e+03, double 5.000000e-01)
  %197 = fptosi double %196 to i32
  br label %198

198:                                              ; preds = %193, %184
  %199 = phi ptr [ %194, %193 ], [ %191, %184 ]
  %200 = phi i32 [ %197, %193 ], [ 0, %184 ]
  %201 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %174, i32 3
  %202 = load i32, ptr %201, align 4, !tbaa !38
  %203 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %174, i32 4
  %204 = load i32, ptr %203, align 4, !tbaa !39
  %205 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %163, ptr noundef nonnull %172, i32 noundef %176, i32 noundef %178, i32 noundef %180, ptr noundef nonnull %199, i32 noundef %200, i32 noundef %202, i32 noundef %204) #25
  %206 = tail call i32 @fputc(i32 10, ptr %0)
  %207 = add nuw nsw i64 %111, 1
  %208 = icmp eq i64 %207, 10
  br i1 %208, label %209, label %110, !llvm.loop !75

209:                                              ; preds = %198
  %210 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 10), align 8, !tbaa !7
  %211 = sext i32 %210 to i64
  %212 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %211, i64 1
  %213 = tail call i32 @a_champ(i32 noundef %210) #27
  %214 = icmp eq i32 %213, 0
  br i1 %214, label %215, label %220

215:                                              ; preds = %209
  %216 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 10), align 8, !tbaa !7
  %217 = tail call i32 @a_wild_card(i32 noundef %216) #27
  %218 = icmp eq i32 %217, 0
  %219 = select i1 %218, ptr @.str.22, ptr @.str.21
  br label %220

220:                                              ; preds = %215, %209
  %221 = phi ptr [ %219, %215 ], [ @.str.20, %209 ]
  %222 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 10), align 8, !tbaa !7
  %223 = sext i32 %222 to i64
  %224 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %223
  %225 = load i32, ptr %224, align 4, !tbaa !22
  %226 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %223, i32 1
  %227 = load i32, ptr %226, align 4, !tbaa !26
  %228 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %223, i32 2
  %229 = load i32, ptr %228, align 4, !tbaa !25
  %230 = add nsw i32 %227, %225
  %231 = add nsw i32 %230, %229
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %242, label %233

233:                                              ; preds = %220
  %234 = sitofp i32 %225 to double
  %235 = sitofp i32 %229 to double
  %236 = tail call double @llvm.fmuladd.f64(double %235, double 5.000000e-01, double %234)
  %237 = sitofp i32 %231 to double
  %238 = fdiv double %236, %237
  %239 = fcmp oge double %238, 1.000000e+00
  %240 = select i1 %239, ptr @.str.23, ptr @.str.22
  %241 = fcmp ult double %238, 1.000000e+00
  br i1 %241, label %242, label %247

242:                                              ; preds = %233, %220
  %243 = phi ptr [ @.str.22, %220 ], [ %240, %233 ]
  %244 = phi double [ 0.000000e+00, %220 ], [ %238, %233 ]
  %245 = tail call double @llvm.fmuladd.f64(double %244, double 1.000000e+03, double 5.000000e-01)
  %246 = fptosi double %245 to i32
  br label %247

247:                                              ; preds = %242, %233
  %248 = phi ptr [ %243, %242 ], [ %240, %233 ]
  %249 = phi i32 [ %246, %242 ], [ 0, %233 ]
  %250 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %223, i32 3
  %251 = load i32, ptr %250, align 4, !tbaa !38
  %252 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %223, i32 4
  %253 = load i32, ptr %252, align 4, !tbaa !39
  %254 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %212, ptr noundef nonnull %221, i32 noundef %225, i32 noundef %227, i32 noundef %229, ptr noundef nonnull %248, i32 noundef %249, i32 noundef %251, i32 noundef %253) #25
  %255 = tail call i32 @fputc(i32 10, ptr %0)
  %256 = tail call i64 @fwrite(ptr nonnull @.str.101, i64 64, i64 1, ptr %0)
  %257 = tail call i64 @fwrite(ptr nonnull @.str.102, i64 41, i64 1, ptr %0)
  %258 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 24), align 16, !tbaa !7
  %259 = sext i32 %258 to i64
  %260 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %259, i64 1
  %261 = tail call i32 @a_champ(i32 noundef %258) #27
  %262 = icmp eq i32 %261, 0
  br i1 %262, label %263, label %268

263:                                              ; preds = %247
  %264 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 24), align 16, !tbaa !7
  %265 = tail call i32 @a_wild_card(i32 noundef %264) #27
  %266 = icmp eq i32 %265, 0
  %267 = select i1 %266, ptr @.str.22, ptr @.str.21
  br label %268

268:                                              ; preds = %263, %247
  %269 = phi ptr [ %267, %263 ], [ @.str.20, %247 ]
  %270 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 24), align 16, !tbaa !7
  %271 = sext i32 %270 to i64
  %272 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %271
  %273 = load i32, ptr %272, align 4, !tbaa !22
  %274 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %271, i32 1
  %275 = load i32, ptr %274, align 4, !tbaa !26
  %276 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %271, i32 2
  %277 = load i32, ptr %276, align 4, !tbaa !25
  %278 = add nsw i32 %275, %273
  %279 = add nsw i32 %278, %277
  %280 = icmp eq i32 %279, 0
  br i1 %280, label %290, label %281

281:                                              ; preds = %268
  %282 = sitofp i32 %273 to double
  %283 = sitofp i32 %277 to double
  %284 = tail call double @llvm.fmuladd.f64(double %283, double 5.000000e-01, double %282)
  %285 = sitofp i32 %279 to double
  %286 = fdiv double %284, %285
  %287 = fcmp oge double %286, 1.000000e+00
  %288 = select i1 %287, ptr @.str.23, ptr @.str.22
  %289 = fcmp ult double %286, 1.000000e+00
  br i1 %289, label %290, label %295

290:                                              ; preds = %281, %268
  %291 = phi ptr [ @.str.22, %268 ], [ %288, %281 ]
  %292 = phi double [ 0.000000e+00, %268 ], [ %286, %281 ]
  %293 = tail call double @llvm.fmuladd.f64(double %292, double 1.000000e+03, double 5.000000e-01)
  %294 = fptosi double %293 to i32
  br label %295

295:                                              ; preds = %290, %281
  %296 = phi ptr [ %291, %290 ], [ %288, %281 ]
  %297 = phi i32 [ %294, %290 ], [ 0, %281 ]
  %298 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %271, i32 3
  %299 = load i32, ptr %298, align 4, !tbaa !38
  %300 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %271, i32 4
  %301 = load i32, ptr %300, align 4, !tbaa !39
  %302 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %260, ptr noundef nonnull %269, i32 noundef %273, i32 noundef %275, i32 noundef %277, ptr noundef nonnull %296, i32 noundef %297, i32 noundef %299, i32 noundef %301) #25
  %303 = tail call i32 @fputc(i32 10, ptr %0)
  br label %304

304:                                              ; preds = %392, %295
  %305 = phi i64 [ 11, %295 ], [ %401, %392 ]
  %306 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %305
  %307 = load i32, ptr %306, align 4, !tbaa !7
  %308 = sext i32 %307 to i64
  %309 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %308, i64 1
  %310 = tail call i32 @a_champ(i32 noundef %307) #27
  %311 = icmp eq i32 %310, 0
  br i1 %311, label %312, label %317

312:                                              ; preds = %304
  %313 = load i32, ptr %306, align 4, !tbaa !7
  %314 = tail call i32 @a_wild_card(i32 noundef %313) #27
  %315 = icmp eq i32 %314, 0
  %316 = select i1 %315, ptr @.str.22, ptr @.str.21
  br label %317

317:                                              ; preds = %312, %304
  %318 = phi ptr [ %316, %312 ], [ @.str.20, %304 ]
  %319 = load i32, ptr %306, align 4, !tbaa !7
  %320 = sext i32 %319 to i64
  %321 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %320
  %322 = load i32, ptr %321, align 4, !tbaa !22
  %323 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %320, i32 1
  %324 = load i32, ptr %323, align 4, !tbaa !26
  %325 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %320, i32 2
  %326 = load i32, ptr %325, align 4, !tbaa !25
  %327 = add nsw i32 %324, %322
  %328 = add nsw i32 %327, %326
  %329 = icmp eq i32 %328, 0
  br i1 %329, label %339, label %330

330:                                              ; preds = %317
  %331 = sitofp i32 %322 to double
  %332 = sitofp i32 %326 to double
  %333 = tail call double @llvm.fmuladd.f64(double %332, double 5.000000e-01, double %331)
  %334 = sitofp i32 %328 to double
  %335 = fdiv double %333, %334
  %336 = fcmp oge double %335, 1.000000e+00
  %337 = select i1 %336, ptr @.str.23, ptr @.str.22
  %338 = fcmp ult double %335, 1.000000e+00
  br i1 %338, label %339, label %344

339:                                              ; preds = %330, %317
  %340 = phi ptr [ @.str.22, %317 ], [ %337, %330 ]
  %341 = phi double [ 0.000000e+00, %317 ], [ %335, %330 ]
  %342 = tail call double @llvm.fmuladd.f64(double %341, double 1.000000e+03, double 5.000000e-01)
  %343 = fptosi double %342 to i32
  br label %344

344:                                              ; preds = %339, %330
  %345 = phi ptr [ %340, %339 ], [ %337, %330 ]
  %346 = phi i32 [ %343, %339 ], [ 0, %330 ]
  %347 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %320, i32 3
  %348 = load i32, ptr %347, align 4, !tbaa !38
  %349 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %320, i32 4
  %350 = load i32, ptr %349, align 4, !tbaa !39
  %351 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %309, ptr noundef nonnull %318, i32 noundef %322, i32 noundef %324, i32 noundef %326, ptr noundef nonnull %345, i32 noundef %346, i32 noundef %348, i32 noundef %350) #25
  %352 = tail call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %353 = add nuw nsw i64 %305, 14
  %354 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %353
  %355 = load i32, ptr %354, align 4, !tbaa !7
  %356 = sext i32 %355 to i64
  %357 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %356, i64 1
  %358 = tail call i32 @a_champ(i32 noundef %355) #27
  %359 = icmp eq i32 %358, 0
  br i1 %359, label %360, label %365

360:                                              ; preds = %344
  %361 = load i32, ptr %354, align 4, !tbaa !7
  %362 = tail call i32 @a_wild_card(i32 noundef %361) #27
  %363 = icmp eq i32 %362, 0
  %364 = select i1 %363, ptr @.str.22, ptr @.str.21
  br label %365

365:                                              ; preds = %360, %344
  %366 = phi ptr [ %364, %360 ], [ @.str.20, %344 ]
  %367 = load i32, ptr %354, align 4, !tbaa !7
  %368 = sext i32 %367 to i64
  %369 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %368
  %370 = load i32, ptr %369, align 4, !tbaa !22
  %371 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %368, i32 1
  %372 = load i32, ptr %371, align 4, !tbaa !26
  %373 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %368, i32 2
  %374 = load i32, ptr %373, align 4, !tbaa !25
  %375 = add nsw i32 %372, %370
  %376 = add nsw i32 %375, %374
  %377 = icmp eq i32 %376, 0
  br i1 %377, label %387, label %378

378:                                              ; preds = %365
  %379 = sitofp i32 %370 to double
  %380 = sitofp i32 %374 to double
  %381 = tail call double @llvm.fmuladd.f64(double %380, double 5.000000e-01, double %379)
  %382 = sitofp i32 %376 to double
  %383 = fdiv double %381, %382
  %384 = fcmp oge double %383, 1.000000e+00
  %385 = select i1 %384, ptr @.str.23, ptr @.str.22
  %386 = fcmp ult double %383, 1.000000e+00
  br i1 %386, label %387, label %392

387:                                              ; preds = %378, %365
  %388 = phi ptr [ @.str.22, %365 ], [ %385, %378 ]
  %389 = phi double [ 0.000000e+00, %365 ], [ %383, %378 ]
  %390 = tail call double @llvm.fmuladd.f64(double %389, double 1.000000e+03, double 5.000000e-01)
  %391 = fptosi double %390 to i32
  br label %392

392:                                              ; preds = %387, %378
  %393 = phi ptr [ %388, %387 ], [ %385, %378 ]
  %394 = phi i32 [ %391, %387 ], [ 0, %378 ]
  %395 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %368, i32 3
  %396 = load i32, ptr %395, align 4, !tbaa !38
  %397 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %368, i32 4
  %398 = load i32, ptr %397, align 4, !tbaa !39
  %399 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %357, ptr noundef nonnull %366, i32 noundef %370, i32 noundef %372, i32 noundef %374, ptr noundef nonnull %393, i32 noundef %394, i32 noundef %396, i32 noundef %398) #25
  %400 = tail call i32 @fputc(i32 10, ptr %0)
  %401 = add nuw nsw i64 %305, 1
  %402 = icmp eq i64 %401, 15
  br i1 %402, label %403, label %304, !llvm.loop !76

403:                                              ; preds = %392
  %404 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @display_team(ptr nocapture noundef %0) #10 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 1, %1 ], [ %11, %3 ]
  %5 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %4
  %6 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %4, i64 1
  %7 = add nuw nsw i64 %4, 14
  %8 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %7
  %9 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %7, i64 1
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %8) #25
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 15
  br i1 %12, label %13, label %3, !llvm.loop !77

13:                                               ; preds = %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @display_main_menu(ptr noundef %0, ptr nocapture noundef %1) #5 {
  %3 = alloca [28 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, ptr @got_unused_responce, align 4, !tbaa !7
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %31

8:                                                ; preds = %2
  %9 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 17, i64 1, ptr %0)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 30, i64 1, ptr %0)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 18, i64 1, ptr %0)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 23, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 43, i64 1, ptr %0)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 13, i64 1, ptr %0)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 23, i64 1, ptr %0)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 17, i64 1, ptr %0)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 16, i64 1, ptr %0)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 18, i64 1, ptr %0)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 24, i64 1, ptr %0)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 53, i64 1, ptr %0)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 19, i64 1, ptr %0)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 27, i64 1, ptr %0)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 25, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.119, i64 5, i64 1, ptr %0)
  %26 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 5, i64 1, ptr %0)
  %27 = load i32, ptr @current_with_disk, align 4, !tbaa !7
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %8
  %30 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 46, i64 1, ptr %0)
  br label %31

31:                                               ; preds = %29, %8, %2
  br label %32

32:                                               ; preds = %242, %31
  %33 = load i32, ptr @got_unused_responce, align 4, !tbaa !7
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %32
  %36 = call i64 @fwrite(ptr nonnull @.str.122, i64 31, i64 1, ptr %0)
  br label %37

37:                                               ; preds = %35, %32
  %38 = call ptr @get_responce(ptr noundef %1) #25
  %39 = call i32 @matches(ptr noundef nonnull %38, ptr noundef nonnull @.str.83, i32 noundef 1) #25, !range !66
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = call i32 @feof(ptr noundef %1) #27
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %46, label %44

44:                                               ; preds = %41, %37
  %45 = call i32 @fputc(i32 10, ptr %0)
  store i32 1, ptr @terminate, align 4, !tbaa !7
  br label %46

46:                                               ; preds = %44, %41
  %47 = phi i32 [ 1, %44 ], [ 0, %41 ]
  %48 = call i32 @matches(ptr noundef nonnull %38, ptr noundef nonnull @.str.123, i32 noundef 1) #25, !range !66
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %46
  %51 = call ptr @skip_first(ptr noundef nonnull %38) #25
  %52 = call i32 @matches(ptr noundef %51, ptr noundef nonnull @.str.124, i32 noundef 1) #25, !range !66
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @fputc(i32 10, ptr %0)
  call void @break_ties(ptr noundef nonnull @team_info, ptr noundef nonnull @standings, i32 noundef 1, i32 noundef 1) #27
  br label %245

56:                                               ; preds = %50
  %57 = call i32 @matches(ptr noundef %51, ptr noundef nonnull @.str.125, i32 noundef 1) #25, !range !66
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %242, label %59

59:                                               ; preds = %56
  %60 = call i32 @fputc(i32 10, ptr %0)
  call void @break_ties(ptr noundef nonnull @team_info, ptr noundef nonnull @conf_standings, i32 noundef 0, i32 noundef 1) #27
  br label %245

61:                                               ; preds = %46
  %62 = call i32 @matches(ptr noundef nonnull %38, ptr noundef nonnull @.str.126, i32 noundef 1) #25, !range !66
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %204, label %64

64:                                               ; preds = %61
  %65 = call ptr @skip_first(ptr noundef nonnull %38) #25
  %66 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.127, i32 noundef 1) #25, !range !66
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %245

68:                                               ; preds = %64
  %69 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.128, i32 noundef 1) #25, !range !66
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %68
  call void @display_standings(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

72:                                               ; preds = %68
  %73 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.129, i32 noundef 1) #25, !range !66
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %80, label %75

75:                                               ; preds = %72
  %76 = call ptr @skip_first(ptr noundef %65) #25
  %77 = call i32 @find_name(ptr noundef %0, ptr noundef %76) #27
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %199, label %79

79:                                               ; preds = %75
  %.lcssa11 = phi i32 [ %77, %75 ]
  call void @display_info(ptr noundef %0, i32 noundef %.lcssa11) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

80:                                               ; preds = %72
  %81 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.130, i32 noundef 2) #25, !range !66
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %161, label %83

83:                                               ; preds = %80
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  %84 = call ptr @skip_first(ptr noundef %65) #25
  %85 = load i1, ptr @white_space.commentP, align 4
  br label %86

86:                                               ; preds = %95, %83
  %87 = phi i1 [ %85, %83 ], [ %96, %95 ]
  %88 = phi ptr [ %84, %83 ], [ %97, %95 ]
  %89 = load i8, ptr %88, align 1, !tbaa !45
  %90 = icmp eq i8 %89, 37
  br i1 %90, label %94, label %91

91:                                               ; preds = %86
  br i1 %87, label %92, label %93

92:                                               ; preds = %91
  switch i8 %89, label %95 [
    i8 10, label %94
    i8 0, label %144
  ]

93:                                               ; preds = %91
  switch i8 %89, label %98 [
    i8 32, label %95
    i8 10, label %95
    i8 9, label %95
    i8 0, label %144
  ]

94:                                               ; preds = %92, %86
  store i1 %90, ptr @white_space.commentP, align 4
  br label %95

95:                                               ; preds = %94, %93, %93, %93, %92
  %96 = phi i1 [ true, %92 ], [ false, %93 ], [ false, %93 ], [ false, %93 ], [ %90, %94 ]
  %97 = getelementptr inbounds i8, ptr %88, i64 1
  br label %86, !llvm.loop !50

98:                                               ; preds = %141, %93
  %99 = phi i32 [ %124, %141 ], [ 0, %93 ]
  %100 = phi ptr [ %.lcssa4, %141 ], [ %88, %93 ]
  %101 = phi i32 [ %142, %141 ], [ %47, %93 ]
  %102 = call i32 @find_next_name(ptr noundef %0, ptr noundef nonnull %100) #25
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %139, label %104

104:                                              ; preds = %98
  %105 = icmp sgt i32 %99, 0
  br i1 %105, label %106, label %119

106:                                              ; preds = %104
  %107 = zext i32 %99 to i64
  br label %108

108:                                              ; preds = %108, %106
  %109 = phi i64 [ 0, %106 ], [ %115, %108 ]
  %110 = phi i32 [ 1, %106 ], [ %114, %108 ]
  %111 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %109
  %112 = load i32, ptr %111, align 4, !tbaa !7
  %113 = icmp eq i32 %112, %102
  %114 = select i1 %113, i32 0, i32 %110
  %115 = add nuw nsw i64 %109, 1
  %116 = icmp eq i64 %115, %107
  br i1 %116, label %117, label %108, !llvm.loop !78

117:                                              ; preds = %108
  %.lcssa = phi i32 [ %114, %108 ]
  %118 = icmp eq i32 %.lcssa, 0
  br i1 %118, label %123, label %119

119:                                              ; preds = %117, %104
  %120 = sext i32 %99 to i64
  %121 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %120
  store i32 %102, ptr %121, align 4, !tbaa !7
  %122 = add nsw i32 %99, 1
  br label %123

123:                                              ; preds = %119, %117
  %124 = phi i32 [ %122, %119 ], [ %99, %117 ]
  %125 = call ptr @skip_first(ptr noundef nonnull %100) #25
  %126 = load i1, ptr @white_space.commentP, align 4
  br label %127

127:                                              ; preds = %136, %123
  %128 = phi i1 [ %126, %123 ], [ %137, %136 ]
  %129 = phi ptr [ %125, %123 ], [ %138, %136 ]
  %130 = load i8, ptr %129, align 1, !tbaa !45
  %131 = icmp eq i8 %130, 37
  br i1 %131, label %135, label %132

132:                                              ; preds = %127
  br i1 %128, label %133, label %134

133:                                              ; preds = %132
  switch i8 %130, label %136 [
    i8 10, label %135
    i8 0, label %141
  ]

134:                                              ; preds = %132
  switch i8 %130, label %140 [
    i8 32, label %136
    i8 10, label %136
    i8 9, label %136
    i8 0, label %141
  ]

135:                                              ; preds = %133, %127
  store i1 %131, ptr @white_space.commentP, align 4
  br label %136

136:                                              ; preds = %135, %134, %134, %134, %133
  %137 = phi i1 [ true, %133 ], [ false, %134 ], [ false, %134 ], [ false, %134 ], [ %131, %135 ]
  %138 = getelementptr inbounds i8, ptr %129, i64 1
  br label %127, !llvm.loop !50

139:                                              ; preds = %98
  %.lcssa7 = phi ptr [ %100, %98 ]
  %.lcssa5 = phi i32 [ %101, %98 ]
  store i8 0, ptr %.lcssa7, align 1, !tbaa !45
  br label %144

140:                                              ; preds = %134
  %.lcssa3 = phi ptr [ %129, %134 ]
  %.lcssa1 = phi i8 [ %130, %134 ]
  br label %141

141:                                              ; preds = %140, %134, %133
  %.lcssa4 = phi ptr [ %.lcssa3, %140 ], [ %129, %134 ], [ %129, %133 ]
  %.lcssa2 = phi i8 [ %.lcssa1, %140 ], [ %130, %134 ], [ %130, %133 ]
  %142 = phi i32 [ %101, %140 ], [ 1, %133 ], [ 1, %134 ]
  %143 = icmp eq i8 %.lcssa2, 0
  br i1 %143, label %147, label %98, !llvm.loop !79

144:                                              ; preds = %139, %93, %92
  %145 = phi i32 [ %.lcssa5, %139 ], [ %47, %93 ], [ %47, %92 ]
  %146 = icmp eq i32 %145, 0
  br i1 %146, label %159, label %154

147:                                              ; preds = %141
  %.lcssa10 = phi i32 [ %142, %141 ]
  %.lcssa9 = phi i32 [ %124, %141 ]
  %148 = icmp eq i32 %.lcssa9, 1
  %149 = icmp ne i32 %.lcssa10, 0
  %150 = select i1 %148, i1 %149, i1 false
  br i1 %150, label %151, label %153

151:                                              ; preds = %147
  %152 = load i32, ptr %3, align 16, !tbaa !7
  call void @display_tiebreaker(ptr noundef %0, i32 noundef %152) #25
  br label %157

153:                                              ; preds = %147
  br i1 %149, label %154, label %159

154:                                              ; preds = %153, %144
  %155 = phi i32 [ %145, %144 ], [ %.lcssa10, %153 ]
  %156 = phi i32 [ 0, %144 ], [ %.lcssa9, %153 ]
  call void @display_multi_tiebreaker(ptr noundef %0, ptr noundef nonnull %3, i32 noundef %156) #25
  br label %157

157:                                              ; preds = %154, %151
  %158 = phi i32 [ %.lcssa10, %151 ], [ %155, %154 ]
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %159

159:                                              ; preds = %157, %153, %144
  %160 = phi i32 [ %.lcssa10, %153 ], [ 0, %144 ], [ %158, %157 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #23
  br label %199

161:                                              ; preds = %80
  %162 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.131, i32 noundef 1) #25, !range !66
  %163 = icmp eq i32 %162, 0
  br i1 %163, label %165, label %164

164:                                              ; preds = %161
  call void @display_records(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

165:                                              ; preds = %161
  %166 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.132, i32 noundef 1) #25, !range !66
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  call void @display_rankings(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

169:                                              ; preds = %165
  %170 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.133, i32 noundef 1) #25, !range !66
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %173, label %172

172:                                              ; preds = %169
  call void @display_defence(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

173:                                              ; preds = %169
  %174 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.134, i32 noundef 1) #25, !range !66
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %177, label %176

176:                                              ; preds = %173
  call void @display_offence(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

177:                                              ; preds = %173
  %178 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.135, i32 noundef 1) #25, !range !66
  %179 = icmp eq i32 %178, 0
  br i1 %179, label %181, label %180

180:                                              ; preds = %177
  call void @display_net(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

181:                                              ; preds = %177
  %182 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.136, i32 noundef 1) #25, !range !66
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %195, label %184

184:                                              ; preds = %181
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %185 = call ptr @skip_first(ptr noundef %65) #25
  %186 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %185, ptr noundef nonnull @.str.84, ptr noundef nonnull %4) #27
  %187 = load i32, ptr %4, align 4, !tbaa !7
  %188 = icmp slt i32 %187, 1
  %189 = load i32, ptr @num_games, align 4
  %190 = icmp sgt i32 %187, %189
  %191 = select i1 %188, i1 true, i1 %190
  br i1 %191, label %193, label %192

192:                                              ; preds = %184
  call void @display_week(ptr noundef %0, i32 noundef %187) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %193

193:                                              ; preds = %192, %184
  %194 = phi i32 [ 1, %192 ], [ %47, %184 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %199

195:                                              ; preds = %181
  %196 = call i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.137, i32 noundef 2) #25, !range !66
  %197 = icmp eq i32 %196, 0
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  call void @display_team(ptr noundef %0) #25
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %245

199:                                              ; preds = %195, %193, %159, %75
  %200 = phi i32 [ %160, %159 ], [ %194, %193 ], [ %47, %195 ], [ %47, %75 ]
  %201 = icmp eq i32 %200, 0
  br i1 %201, label %202, label %245

202:                                              ; preds = %199
  %203 = call i64 @fwrite(ptr nonnull @.str.138, i64 25, i64 1, ptr %0)
  br label %242

204:                                              ; preds = %61
  %205 = call i32 @matches(ptr noundef nonnull %38, ptr noundef nonnull @.str.139, i32 noundef 1) #25, !range !66
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %238, label %207

207:                                              ; preds = %204
  %208 = call ptr @skip_first(ptr noundef nonnull %38) #25
  %209 = call i32 @matches(ptr noundef %208, ptr noundef nonnull @.str.136, i32 noundef 1) #25, !range !66
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %233, label %211

211:                                              ; preds = %207
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %212 = call ptr @skip_first(ptr noundef %208) #25
  %213 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %212, ptr noundef nonnull @.str.84, ptr noundef nonnull %5) #27
  %214 = load i32, ptr %5, align 4, !tbaa !7
  %215 = icmp slt i32 %214, 1
  %216 = load i32, ptr @num_games, align 4
  %217 = icmp sgt i32 %214, %216
  %218 = select i1 %215, i1 true, i1 %217
  br i1 %218, label %231, label %219

219:                                              ; preds = %211
  %220 = call ptr @skip_first(ptr noundef %212) #25
  %221 = load i8, ptr %220, align 1, !tbaa !45
  %222 = icmp eq i8 %221, 0
  br i1 %222, label %223, label %225

223:                                              ; preds = %219
  %224 = load i32, ptr %5, align 4, !tbaa !7
  call void @enter_week(ptr noundef %0, ptr noundef %1, i32 noundef %224) #25
  br label %230

225:                                              ; preds = %219
  %226 = call i32 @matches(ptr noundef nonnull %220, ptr noundef nonnull @.str.140, i32 noundef 1) #25, !range !66
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %231, label %228

228:                                              ; preds = %225
  %229 = load i32, ptr %5, align 4, !tbaa !7
  call void @enter_prompt_week(ptr noundef %0, ptr noundef %1, i32 noundef %229) #25
  br label %230

230:                                              ; preds = %228, %223
  call void @compute_team_info() #27
  call void @sort_all() #27
  call void @prompt(ptr noundef %0, ptr noundef %1) #25
  br label %231

231:                                              ; preds = %230, %225, %211
  %232 = phi i32 [ %47, %225 ], [ %47, %211 ], [ 1, %230 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  br label %233

233:                                              ; preds = %231, %207
  %234 = phi i32 [ %232, %231 ], [ %47, %207 ]
  %235 = icmp eq i32 %234, 0
  br i1 %235, label %236, label %245

236:                                              ; preds = %233
  %237 = call i64 @fwrite(ptr nonnull @.str.141, i64 23, i64 1, ptr %0)
  br label %242

238:                                              ; preds = %204
  %239 = call i32 @matches(ptr noundef nonnull %38, ptr noundef nonnull @.str.142, i32 noundef 1) #25, !range !66
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %242, label %241

241:                                              ; preds = %238
  call void @save_scores(ptr noundef %0, ptr noundef nonnull @input_score) #27
  br label %245

242:                                              ; preds = %238, %236, %202, %56
  %243 = phi i32 [ %47, %56 ], [ 0, %202 ], [ 0, %236 ], [ %47, %238 ]
  %244 = icmp eq i32 %243, 0
  br i1 %244, label %32, label %245, !llvm.loop !80

245:                                              ; preds = %242, %241, %233, %199, %198, %180, %176, %172, %168, %164, %79, %71, %64, %59, %54
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define internal i32 @absolute_standing_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = add nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = sitofp i32 %6 to double
  %16 = sitofp i32 %11 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 5.000000e-01, double %15)
  %18 = sitofp i32 %12 to double
  %19 = fdiv double %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi double [ %19, %14 ], [ 0.000000e+00, %3 ]
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.info, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = sitofp i32 %24 to double
  %34 = sitofp i32 %29 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 5.000000e-01, double %33)
  %36 = sitofp i32 %30 to double
  %37 = fdiv double %35, %36
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi double [ %37, %32 ], [ 0.000000e+00, %20 ]
  %40 = fcmp une double %21, %39
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  br i1 %13, label %48, label %42

42:                                               ; preds = %41
  %43 = sitofp i32 %6 to double
  %44 = sitofp i32 %11 to double
  %45 = tail call double @llvm.fmuladd.f64(double %44, double 5.000000e-01, double %43)
  %46 = sitofp i32 %12 to double
  %47 = fdiv double %45, %46
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi double [ %47, %42 ], [ 0.000000e+00, %41 ]
  br i1 %31, label %56, label %50

50:                                               ; preds = %48
  %51 = sitofp i32 %24 to double
  %52 = sitofp i32 %29 to double
  %53 = tail call double @llvm.fmuladd.f64(double %52, double 5.000000e-01, double %51)
  %54 = sitofp i32 %30 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi double [ %55, %50 ], [ 0.000000e+00, %48 ]
  %58 = fcmp ogt double %49, %57
  %59 = zext i1 %58 to i32
  br label %96

60:                                               ; preds = %38
  %61 = or i32 %26, %8
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = icmp sgt i32 %6, %24
  %65 = zext i1 %64 to i32
  br label %96

66:                                               ; preds = %60
  %67 = or i32 %24, %6
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = icmp slt i32 %8, %26
  %71 = zext i1 %70 to i32
  br label %96

72:                                               ; preds = %66
  %73 = tail call i32 @a_champ(i32 noundef %1) #27
  %74 = tail call i32 @a_champ(i32 noundef %2) #27
  %75 = icmp eq i32 %73, %74
  br i1 %75, label %78, label %76

76:                                               ; preds = %72
  %77 = tail call i32 @a_champ(i32 noundef %1) #27
  br label %96

78:                                               ; preds = %72
  %79 = tail call i32 @a_wild_card(i32 noundef %1) #27
  %80 = tail call i32 @a_wild_card(i32 noundef %2) #27
  %81 = icmp eq i32 %79, %80
  br i1 %81, label %84, label %82

82:                                               ; preds = %78
  %83 = tail call i32 @a_wild_card(i32 noundef %1) #27
  br label %96

84:                                               ; preds = %78
  %85 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %86 = load i32, ptr %85, align 8, !tbaa !7
  %87 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %22
  %88 = load i32, ptr %87, align 8, !tbaa !7
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %93, label %90

90:                                               ; preds = %84
  %91 = icmp slt i32 %86, %88
  %92 = zext i1 %91 to i32
  br label %96

93:                                               ; preds = %84
  %94 = icmp slt i32 %1, %2
  %95 = zext i1 %94 to i32
  br label %96

96:                                               ; preds = %93, %90, %82, %76, %69, %63, %56
  %97 = phi i32 [ %59, %56 ], [ %65, %63 ], [ %71, %69 ], [ %77, %76 ], [ %83, %82 ], [ %92, %90 ], [ %95, %93 ]
  ret i32 %97
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @standing_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = icmp slt i32 %6, %9
  %13 = zext i1 %12 to i32
  br label %25

14:                                               ; preds = %3
  %15 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4, i64 1
  %16 = load i32, ptr %15, align 4, !tbaa !7
  %17 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7, i64 1
  %18 = load i32, ptr %17, align 4, !tbaa !7
  %19 = icmp eq i32 %16, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %14
  %21 = icmp slt i32 %16, %18
  %22 = zext i1 %21 to i32
  br label %25

23:                                               ; preds = %14
  %24 = tail call i32 @absolute_standing_lt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #25
  br label %25

25:                                               ; preds = %23, %20, %11
  %26 = phi i32 [ %13, %11 ], [ %22, %20 ], [ %24, %23 ]
  ret i32 %26
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @conf_standing_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #5 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = icmp slt i32 %6, %9
  %13 = zext i1 %12 to i32
  br label %16

14:                                               ; preds = %3
  %15 = tail call i32 @absolute_standing_lt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #25
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %13, %11 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @defence_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #17 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp slt i32 %6, %9
  br label %69

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %15 = load i32, ptr %14, align 4, !tbaa !22
  %16 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !26
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = add nsw i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %25 = load i32, ptr %24, align 4, !tbaa !39
  %26 = sitofp i32 %25 to double
  %27 = sitofp i32 %21 to double
  %28 = fdiv double %26, %27
  br label %29

29:                                               ; preds = %23, %13
  %30 = phi double [ %28, %23 ], [ 0.000000e+00, %13 ]
  %31 = getelementptr inbounds %struct.info, ptr %0, i64 %7
  %32 = load i32, ptr %31, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !26
  %35 = add nsw i32 %34, %32
  %36 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = add nsw i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 4
  %42 = load i32, ptr %41, align 4, !tbaa !39
  %43 = sitofp i32 %42 to double
  %44 = sitofp i32 %38 to double
  %45 = fdiv double %43, %44
  br label %46

46:                                               ; preds = %40, %29
  %47 = phi double [ %45, %40 ], [ 0.000000e+00, %29 ]
  %48 = fcmp une double %30, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  br i1 %22, label %56, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %21 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi double [ %55, %50 ], [ 0.000000e+00, %49 ]
  br i1 %39, label %64, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 4
  %60 = load i32, ptr %59, align 4, !tbaa !39
  %61 = sitofp i32 %60 to double
  %62 = sitofp i32 %38 to double
  %63 = fdiv double %61, %62
  br label %64

64:                                               ; preds = %58, %56
  %65 = phi double [ %63, %58 ], [ 0.000000e+00, %56 ]
  %66 = fcmp olt double %57, %65
  br label %69

67:                                               ; preds = %46
  %68 = icmp slt i32 %1, %2
  br label %69

69:                                               ; preds = %67, %64, %11
  %70 = phi i1 [ %12, %11 ], [ %66, %64 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @defence_nfl_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #18 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = add nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !39
  %17 = sitofp i32 %16 to double
  %18 = sitofp i32 %12 to double
  %19 = fdiv double %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi double [ %19, %14 ], [ 0.000000e+00, %3 ]
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.info, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !39
  %35 = sitofp i32 %34 to double
  %36 = sitofp i32 %30 to double
  %37 = fdiv double %35, %36
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi double [ %37, %32 ], [ 0.000000e+00, %20 ]
  %40 = fcmp une double %21, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  br i1 %13, label %48, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %44 = load i32, ptr %43, align 4, !tbaa !39
  %45 = sitofp i32 %44 to double
  %46 = sitofp i32 %12 to double
  %47 = fdiv double %45, %46
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi double [ %47, %42 ], [ 0.000000e+00, %41 ]
  br i1 %31, label %56, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %30 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi double [ %55, %50 ], [ 0.000000e+00, %48 ]
  %58 = fcmp olt double %49, %57
  br label %61

59:                                               ; preds = %38
  %60 = icmp slt i32 %1, %2
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i1 [ %58, %56 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @offence_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #17 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = icmp slt i32 %6, %9
  br label %69

13:                                               ; preds = %3
  %14 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %15 = load i32, ptr %14, align 4, !tbaa !22
  %16 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %17 = load i32, ptr %16, align 4, !tbaa !26
  %18 = add nsw i32 %17, %15
  %19 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %20 = load i32, ptr %19, align 4, !tbaa !25
  %21 = add nsw i32 %18, %20
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %29, label %23

23:                                               ; preds = %13
  %24 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %25 = load i32, ptr %24, align 4, !tbaa !38
  %26 = sitofp i32 %25 to double
  %27 = sitofp i32 %21 to double
  %28 = fdiv double %26, %27
  br label %29

29:                                               ; preds = %23, %13
  %30 = phi double [ %28, %23 ], [ 0.000000e+00, %13 ]
  %31 = getelementptr inbounds %struct.info, ptr %0, i64 %7
  %32 = load i32, ptr %31, align 4, !tbaa !22
  %33 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 1
  %34 = load i32, ptr %33, align 4, !tbaa !26
  %35 = add nsw i32 %34, %32
  %36 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 2
  %37 = load i32, ptr %36, align 4, !tbaa !25
  %38 = add nsw i32 %35, %37
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %46, label %40

40:                                               ; preds = %29
  %41 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 3
  %42 = load i32, ptr %41, align 4, !tbaa !38
  %43 = sitofp i32 %42 to double
  %44 = sitofp i32 %38 to double
  %45 = fdiv double %43, %44
  br label %46

46:                                               ; preds = %40, %29
  %47 = phi double [ %45, %40 ], [ 0.000000e+00, %29 ]
  %48 = fcmp une double %30, %47
  br i1 %48, label %49, label %67

49:                                               ; preds = %46
  br i1 %22, label %56, label %50

50:                                               ; preds = %49
  %51 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %21 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %50, %49
  %57 = phi double [ %55, %50 ], [ 0.000000e+00, %49 ]
  br i1 %39, label %64, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.info, ptr %0, i64 %7, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = sitofp i32 %60 to double
  %62 = sitofp i32 %38 to double
  %63 = fdiv double %61, %62
  br label %64

64:                                               ; preds = %58, %56
  %65 = phi double [ %63, %58 ], [ 0.000000e+00, %56 ]
  %66 = fcmp ogt double %57, %65
  br label %69

67:                                               ; preds = %46
  %68 = icmp slt i32 %1, %2
  br label %69

69:                                               ; preds = %67, %64, %11
  %70 = phi i1 [ %12, %11 ], [ %66, %64 ], [ %68, %67 ]
  %71 = zext i1 %70 to i32
  ret i32 %71
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @offence_nfl_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #18 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = add nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !38
  %17 = sitofp i32 %16 to double
  %18 = sitofp i32 %12 to double
  %19 = fdiv double %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi double [ %19, %14 ], [ 0.000000e+00, %3 ]
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.info, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = sitofp i32 %34 to double
  %36 = sitofp i32 %30 to double
  %37 = fdiv double %35, %36
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi double [ %37, %32 ], [ 0.000000e+00, %20 ]
  %40 = fcmp une double %21, %39
  br i1 %40, label %41, label %59

41:                                               ; preds = %38
  br i1 %13, label %48, label %42

42:                                               ; preds = %41
  %43 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !38
  %45 = sitofp i32 %44 to double
  %46 = sitofp i32 %12 to double
  %47 = fdiv double %45, %46
  br label %48

48:                                               ; preds = %42, %41
  %49 = phi double [ %47, %42 ], [ 0.000000e+00, %41 ]
  br i1 %31, label %56, label %50

50:                                               ; preds = %48
  %51 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 3
  %52 = load i32, ptr %51, align 4, !tbaa !38
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %30 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %50, %48
  %57 = phi double [ %55, %50 ], [ 0.000000e+00, %48 ]
  %58 = fcmp ogt double %49, %57
  br label %61

59:                                               ; preds = %38
  %60 = icmp slt i32 %1, %2
  br label %61

61:                                               ; preds = %59, %56
  %62 = phi i1 [ %58, %56 ], [ %60, %59 ]
  %63 = zext i1 %62 to i32
  ret i32 %63
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @net_nfl_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #18 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = add nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %23, label %14

14:                                               ; preds = %3
  %15 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !38
  %17 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %18 = load i32, ptr %17, align 4, !tbaa !39
  %19 = sub nsw i32 %16, %18
  %20 = sitofp i32 %19 to double
  %21 = sitofp i32 %12 to double
  %22 = fdiv double %20, %21
  br label %23

23:                                               ; preds = %14, %3
  %24 = phi double [ %22, %14 ], [ 0.000000e+00, %3 ]
  %25 = sext i32 %2 to i64
  %26 = getelementptr inbounds %struct.info, ptr %0, i64 %25
  %27 = load i32, ptr %26, align 4, !tbaa !22
  %28 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 1
  %29 = load i32, ptr %28, align 4, !tbaa !26
  %30 = add nsw i32 %29, %27
  %31 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 2
  %32 = load i32, ptr %31, align 4, !tbaa !25
  %33 = add nsw i32 %30, %32
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %44, label %35

35:                                               ; preds = %23
  %36 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 3
  %37 = load i32, ptr %36, align 4, !tbaa !38
  %38 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 4
  %39 = load i32, ptr %38, align 4, !tbaa !39
  %40 = sub nsw i32 %37, %39
  %41 = sitofp i32 %40 to double
  %42 = sitofp i32 %33 to double
  %43 = fdiv double %41, %42
  br label %44

44:                                               ; preds = %35, %23
  %45 = phi double [ %43, %35 ], [ 0.000000e+00, %23 ]
  %46 = fcmp une double %24, %45
  br i1 %46, label %47, label %71

47:                                               ; preds = %44
  br i1 %13, label %57, label %48

48:                                               ; preds = %47
  %49 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 3
  %50 = load i32, ptr %49, align 4, !tbaa !38
  %51 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 4
  %52 = load i32, ptr %51, align 4, !tbaa !39
  %53 = sub nsw i32 %50, %52
  %54 = sitofp i32 %53 to double
  %55 = sitofp i32 %12 to double
  %56 = fdiv double %54, %55
  br label %57

57:                                               ; preds = %48, %47
  %58 = phi double [ %56, %48 ], [ 0.000000e+00, %47 ]
  br i1 %34, label %68, label %59

59:                                               ; preds = %57
  %60 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 3
  %61 = load i32, ptr %60, align 4, !tbaa !38
  %62 = getelementptr inbounds %struct.info, ptr %0, i64 %25, i32 4
  %63 = load i32, ptr %62, align 4, !tbaa !39
  %64 = sub nsw i32 %61, %63
  %65 = sitofp i32 %64 to double
  %66 = sitofp i32 %33 to double
  %67 = fdiv double %65, %66
  br label %68

68:                                               ; preds = %59, %57
  %69 = phi double [ %67, %59 ], [ 0.000000e+00, %57 ]
  %70 = fcmp ogt double %58, %69
  br label %73

71:                                               ; preds = %44
  %72 = icmp slt i32 %1, %2
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i1 [ %70, %68 ], [ %72, %71 ]
  %75 = zext i1 %74 to i32
  ret i32 %75
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable
define internal i32 @net_lt(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #17 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %4
  %6 = load i32, ptr %5, align 8, !tbaa !7
  %7 = sext i32 %2 to i64
  %8 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %7
  %9 = load i32, ptr %8, align 8, !tbaa !7
  %10 = icmp eq i32 %6, %9
  br i1 %10, label %14, label %11

11:                                               ; preds = %3
  %12 = icmp slt i32 %6, %9
  %13 = zext i1 %12 to i32
  br label %16

14:                                               ; preds = %3
  %15 = tail call i32 @net_nfl_lt(ptr noundef %0, i32 noundef %1, i32 noundef %2) #25, !range !66
  br label %16

16:                                               ; preds = %14, %11
  %17 = phi i32 [ %13, %11 ], [ %15, %14 ]
  ret i32 %17
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable
define internal i32 @tied(ptr nocapture noundef readonly %0, i32 noundef %1, i32 noundef %2) #19 {
  %4 = sext i32 %1 to i64
  %5 = getelementptr inbounds %struct.info, ptr %0, i64 %4
  %6 = load i32, ptr %5, align 4, !tbaa !22
  %7 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 1
  %8 = load i32, ptr %7, align 4, !tbaa !26
  %9 = add nsw i32 %8, %6
  %10 = getelementptr inbounds %struct.info, ptr %0, i64 %4, i32 2
  %11 = load i32, ptr %10, align 4, !tbaa !25
  %12 = add nsw i32 %9, %11
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %20, label %14

14:                                               ; preds = %3
  %15 = sitofp i32 %6 to double
  %16 = sitofp i32 %11 to double
  %17 = tail call double @llvm.fmuladd.f64(double %16, double 5.000000e-01, double %15)
  %18 = sitofp i32 %12 to double
  %19 = fdiv double %17, %18
  br label %20

20:                                               ; preds = %14, %3
  %21 = phi double [ %19, %14 ], [ 0.000000e+00, %3 ]
  %22 = sext i32 %2 to i64
  %23 = getelementptr inbounds %struct.info, ptr %0, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !22
  %25 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 1
  %26 = load i32, ptr %25, align 4, !tbaa !26
  %27 = add nsw i32 %26, %24
  %28 = getelementptr inbounds %struct.info, ptr %0, i64 %22, i32 2
  %29 = load i32, ptr %28, align 4, !tbaa !25
  %30 = add nsw i32 %27, %29
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %38, label %32

32:                                               ; preds = %20
  %33 = sitofp i32 %24 to double
  %34 = sitofp i32 %29 to double
  %35 = tail call double @llvm.fmuladd.f64(double %34, double 5.000000e-01, double %33)
  %36 = sitofp i32 %30 to double
  %37 = fdiv double %35, %36
  br label %38

38:                                               ; preds = %32, %20
  %39 = phi double [ %37, %32 ], [ 0.000000e+00, %20 ]
  %40 = fcmp une double %21, %39
  br i1 %40, label %51, label %41

41:                                               ; preds = %38
  %42 = or i32 %26, %8
  %43 = icmp eq i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %41
  %45 = icmp eq i32 %6, %24
  br label %51

46:                                               ; preds = %41
  %47 = or i32 %24, %6
  %48 = icmp ne i32 %47, 0
  %49 = icmp eq i32 %8, %26
  %50 = or i1 %48, %49
  br label %51

51:                                               ; preds = %46, %44, %38
  %52 = phi i1 [ %45, %44 ], [ false, %38 ], [ %50, %46 ]
  %53 = zext i1 %52 to i32
  ret i32 %53
}

; Function Attrs: nounwind optsize uwtable
define internal void @break_ties(ptr nocapture noundef readonly %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) #5 {
  %5 = icmp ne i32 %2, 1
  %6 = icmp ne i32 %3, 0
  %7 = or i1 %5, %6
  br i1 %7, label %9, label %8

8:                                                ; preds = %4
  store i32 0, ptr @nfc_west_champ, align 4, !tbaa !7
  store i32 0, ptr @nfc_central_champ, align 4, !tbaa !7
  store i32 0, ptr @nfc_east_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_west_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_central_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_east_champ, align 4, !tbaa !7
  br label %9

9:                                                ; preds = %8, %4
  %10 = icmp eq i32 %2, 2
  %11 = or i1 %10, %6
  br i1 %11, label %13, label %12

12:                                               ; preds = %9
  store i32 0, ptr @nfc_wild_card3, align 4, !tbaa !7
  store i32 0, ptr @nfc_wild_card2, align 4, !tbaa !7
  store i32 0, ptr @nfc_wild_card1, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card3, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card2, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card1, align 4, !tbaa !7
  br label %13

13:                                               ; preds = %12, %9
  br label %14

14:                                               ; preds = %85, %13
  %15 = phi i64 [ %86, %85 ], [ 1, %13 ]
  %16 = phi i32 [ %88, %85 ], [ 1, %13 ]
  %17 = phi i32 [ %87, %85 ], [ %3, %13 ]
  %18 = icmp eq i64 %15, 28
  br i1 %18, label %66, label %19

19:                                               ; preds = %14
  %20 = getelementptr inbounds i32, ptr %1, i64 %15
  %21 = load i32, ptr %20, align 4, !tbaa !7
  %22 = add nuw nsw i64 %15, 1
  %23 = getelementptr inbounds i32, ptr %1, i64 %22
  %24 = load i32, ptr %23, align 4, !tbaa !7
  %25 = tail call i32 @tied(ptr noundef %0, i32 noundef %21, i32 noundef %24) #25, !range !66
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %66, label %27

27:                                               ; preds = %19
  switch i32 %2, label %55 [
    i32 1, label %28
    i32 0, label %42
  ]

28:                                               ; preds = %27
  %29 = sext i32 %21 to i64
  %30 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %29, i64 1
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = sext i32 %24 to i64
  %33 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = icmp eq i32 %31, %34
  br i1 %35, label %36, label %66

36:                                               ; preds = %28
  %37 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32
  %38 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %29
  %39 = load i32, ptr %38, align 8, !tbaa !7
  %40 = load i32, ptr %37, align 8, !tbaa !7
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %85, label %66

42:                                               ; preds = %27
  %43 = sext i32 %21 to i64
  %44 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %43
  %45 = load i32, ptr %44, align 8, !tbaa !7
  %46 = sext i32 %24 to i64
  %47 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %46
  %48 = load i32, ptr %47, align 8, !tbaa !7
  %49 = icmp eq i32 %45, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %42
  %51 = tail call i32 @a_champ(i32 noundef %21) #27
  %52 = load i32, ptr %23, align 4, !tbaa !7
  %53 = tail call i32 @a_champ(i32 noundef %52) #27
  %54 = icmp eq i32 %51, %53
  br i1 %54, label %85, label %66

55:                                               ; preds = %27
  %56 = tail call i32 @a_champ(i32 noundef %21) #27
  %57 = load i32, ptr %23, align 4, !tbaa !7
  %58 = tail call i32 @a_champ(i32 noundef %57) #27
  %59 = icmp eq i32 %56, %58
  br i1 %59, label %60, label %66

60:                                               ; preds = %55
  %61 = load i32, ptr %20, align 4, !tbaa !7
  %62 = tail call i32 @a_wild_card(i32 noundef %61) #27
  %63 = load i32, ptr %23, align 4, !tbaa !7
  %64 = tail call i32 @a_wild_card(i32 noundef %63) #27
  %65 = icmp eq i32 %62, %64
  br i1 %65, label %85, label %66

66:                                               ; preds = %60, %55, %50, %42, %36, %28, %19, %14
  %67 = zext i32 %16 to i64
  %68 = icmp eq i64 %15, %67
  br i1 %68, label %69, label %72

69:                                               ; preds = %66
  %70 = add nuw nsw i64 %15, 1
  %71 = trunc i64 %70 to i32
  br label %85

72:                                               ; preds = %66
  %73 = sext i32 %16 to i64
  %74 = getelementptr inbounds i32, ptr %1, i64 %73
  %75 = add nuw nsw i64 %15, 1
  %76 = trunc i64 %75 to i32
  %77 = sub i32 %76, %16
  tail call void @break_a_tie(ptr noundef %74, i32 noundef %77, i32 noundef %17) #27
  %78 = icmp eq i32 %17, 0
  br i1 %78, label %85, label %79

79:                                               ; preds = %72
  %80 = load ptr, ptr @stdout, align 8, !tbaa !42
  %81 = load ptr, ptr @stdin, align 8, !tbaa !42
  tail call void @prompt(ptr noundef %80, ptr noundef %81) #27
  %82 = load i32, ptr @got_unused_responce, align 4, !tbaa !7
  %83 = icmp eq i32 %82, 0
  %84 = select i1 %83, i32 %17, i32 0
  br label %85

85:                                               ; preds = %79, %72, %69, %60, %50, %36
  %86 = phi i64 [ %22, %36 ], [ %22, %50 ], [ %22, %60 ], [ %70, %69 ], [ %75, %79 ], [ %75, %72 ]
  %87 = phi i32 [ %17, %36 ], [ %17, %50 ], [ %17, %60 ], [ %17, %69 ], [ %84, %79 ], [ 0, %72 ]
  %88 = phi i32 [ %16, %36 ], [ %16, %50 ], [ %16, %60 ], [ %71, %69 ], [ %76, %79 ], [ %76, %72 ]
  %89 = icmp eq i64 %86, 29
  br i1 %89, label %90, label %14, !llvm.loop !81

90:                                               ; preds = %85
  switch i32 %2, label %234 [
    i32 1, label %91
    i32 0, label %198
  ]

91:                                               ; preds = %90
  %92 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %93 = load i32, ptr @nfc_central_champ, align 4, !tbaa !7
  %94 = load i32, ptr @nfc_west_champ, align 4, !tbaa !7
  %95 = load i32, ptr @afc_east_champ, align 4, !tbaa !7
  %96 = load i32, ptr @afc_central_champ, align 4, !tbaa !7
  %97 = load i32, ptr @afc_west_champ, align 4, !tbaa !7
  br label %98

98:                                               ; preds = %194, %91
  %99 = phi i64 [ 1, %91 ], [ %196, %194 ]
  %100 = phi i32 [ %92, %91 ], [ %120, %194 ]
  %101 = phi i32 [ %93, %91 ], [ %135, %194 ]
  %102 = phi i32 [ %94, %91 ], [ %150, %194 ]
  %103 = phi i32 [ %95, %91 ], [ %165, %194 ]
  %104 = phi i32 [ %96, %91 ], [ %180, %194 ]
  %105 = phi i32 [ %97, %91 ], [ %195, %194 ]
  %106 = icmp eq i32 %100, 0
  br i1 %106, label %107, label %119

107:                                              ; preds = %98
  %108 = getelementptr inbounds i32, ptr %1, i64 %99
  %109 = load i32, ptr %108, align 4, !tbaa !7
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %110
  %112 = load i32, ptr %111, align 8, !tbaa !7
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %107
  %115 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %110, i64 1
  %116 = load i32, ptr %115, align 4, !tbaa !7
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %114
  store i32 %109, ptr @nfc_east_champ, align 4, !tbaa !7
  br label %119

119:                                              ; preds = %118, %114, %107, %98
  %120 = phi i32 [ %109, %118 ], [ 0, %114 ], [ 0, %107 ], [ %100, %98 ]
  %121 = icmp eq i32 %101, 0
  br i1 %121, label %122, label %134

122:                                              ; preds = %119
  %123 = getelementptr inbounds i32, ptr %1, i64 %99
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %125
  %127 = load i32, ptr %126, align 8, !tbaa !7
  %128 = icmp eq i32 %127, 0
  br i1 %128, label %129, label %134

129:                                              ; preds = %122
  %130 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %125, i64 1
  %131 = load i32, ptr %130, align 4, !tbaa !7
  %132 = icmp eq i32 %131, 1
  br i1 %132, label %133, label %134

133:                                              ; preds = %129
  store i32 %124, ptr @nfc_central_champ, align 4, !tbaa !7
  br label %134

134:                                              ; preds = %133, %129, %122, %119
  %135 = phi i32 [ %124, %133 ], [ 0, %129 ], [ 0, %122 ], [ %101, %119 ]
  %136 = icmp eq i32 %102, 0
  br i1 %136, label %137, label %149

137:                                              ; preds = %134
  %138 = getelementptr inbounds i32, ptr %1, i64 %99
  %139 = load i32, ptr %138, align 4, !tbaa !7
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %140
  %142 = load i32, ptr %141, align 8, !tbaa !7
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %149

144:                                              ; preds = %137
  %145 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %140, i64 1
  %146 = load i32, ptr %145, align 4, !tbaa !7
  %147 = icmp eq i32 %146, 2
  br i1 %147, label %148, label %149

148:                                              ; preds = %144
  store i32 %139, ptr @nfc_west_champ, align 4, !tbaa !7
  br label %149

149:                                              ; preds = %148, %144, %137, %134
  %150 = phi i32 [ %139, %148 ], [ 0, %144 ], [ 0, %137 ], [ %102, %134 ]
  %151 = icmp eq i32 %103, 0
  br i1 %151, label %152, label %164

152:                                              ; preds = %149
  %153 = getelementptr inbounds i32, ptr %1, i64 %99
  %154 = load i32, ptr %153, align 4, !tbaa !7
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %155
  %157 = load i32, ptr %156, align 8, !tbaa !7
  %158 = icmp eq i32 %157, 1
  br i1 %158, label %159, label %164

159:                                              ; preds = %152
  %160 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %155, i64 1
  %161 = load i32, ptr %160, align 4, !tbaa !7
  %162 = icmp eq i32 %161, 0
  br i1 %162, label %163, label %164

163:                                              ; preds = %159
  store i32 %154, ptr @afc_east_champ, align 4, !tbaa !7
  br label %164

164:                                              ; preds = %163, %159, %152, %149
  %165 = phi i32 [ %154, %163 ], [ 0, %159 ], [ 0, %152 ], [ %103, %149 ]
  %166 = icmp eq i32 %104, 0
  br i1 %166, label %167, label %179

167:                                              ; preds = %164
  %168 = getelementptr inbounds i32, ptr %1, i64 %99
  %169 = load i32, ptr %168, align 4, !tbaa !7
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %170
  %172 = load i32, ptr %171, align 8, !tbaa !7
  %173 = icmp eq i32 %172, 1
  br i1 %173, label %174, label %179

174:                                              ; preds = %167
  %175 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %170, i64 1
  %176 = load i32, ptr %175, align 4, !tbaa !7
  %177 = icmp eq i32 %176, 1
  br i1 %177, label %178, label %179

178:                                              ; preds = %174
  store i32 %169, ptr @afc_central_champ, align 4, !tbaa !7
  br label %179

179:                                              ; preds = %178, %174, %167, %164
  %180 = phi i32 [ %169, %178 ], [ 0, %174 ], [ 0, %167 ], [ %104, %164 ]
  %181 = icmp eq i32 %105, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %179
  %183 = getelementptr inbounds i32, ptr %1, i64 %99
  %184 = load i32, ptr %183, align 4, !tbaa !7
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %185
  %187 = load i32, ptr %186, align 8, !tbaa !7
  %188 = icmp eq i32 %187, 1
  br i1 %188, label %189, label %194

189:                                              ; preds = %182
  %190 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %185, i64 1
  %191 = load i32, ptr %190, align 4, !tbaa !7
  %192 = icmp eq i32 %191, 2
  br i1 %192, label %193, label %194

193:                                              ; preds = %189
  store i32 %184, ptr @afc_west_champ, align 4, !tbaa !7
  br label %194

194:                                              ; preds = %193, %189, %182, %179
  %195 = phi i32 [ %105, %179 ], [ 0, %182 ], [ 0, %189 ], [ %184, %193 ]
  %196 = add nuw nsw i64 %99, 1
  %197 = icmp eq i64 %196, 29
  br i1 %197, label %234, label %98, !llvm.loop !82

198:                                              ; preds = %229, %90
  %199 = phi i64 [ %232, %229 ], [ 1, %90 ]
  %200 = phi i32 [ %231, %229 ], [ %2, %90 ]
  %201 = phi i32 [ %230, %229 ], [ %2, %90 ]
  %202 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %199
  %203 = load i32, ptr %202, align 4, !tbaa !7
  %204 = sext i32 %203 to i64
  %205 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %204
  %206 = load i32, ptr %205, align 8, !tbaa !7
  %207 = icmp eq i32 %206, 0
  %208 = tail call i32 @a_champ(i32 noundef %203) #27
  %209 = icmp eq i32 %208, 0
  br i1 %207, label %210, label %217

210:                                              ; preds = %198
  br i1 %209, label %211, label %229

211:                                              ; preds = %210
  switch i32 %200, label %229 [
    i32 0, label %224
    i32 1, label %212
    i32 2, label %213
  ]

212:                                              ; preds = %211
  br label %224

213:                                              ; preds = %211
  %214 = load i32, ptr @iyear, align 4
  %215 = add i32 %214, -90
  %216 = icmp ult i32 %215, -19
  br i1 %216, label %224, label %229

217:                                              ; preds = %198
  br i1 %209, label %218, label %229

218:                                              ; preds = %217
  switch i32 %201, label %229 [
    i32 0, label %224
    i32 1, label %219
    i32 2, label %220
  ]

219:                                              ; preds = %218
  br label %224

220:                                              ; preds = %218
  %221 = load i32, ptr @iyear, align 4
  %222 = add i32 %221, -90
  %223 = icmp ult i32 %222, -19
  br i1 %223, label %224, label %229

224:                                              ; preds = %220, %219, %218, %213, %212, %211
  %225 = phi ptr [ @nfc_wild_card2, %212 ], [ @afc_wild_card2, %219 ], [ @nfc_wild_card1, %211 ], [ @nfc_wild_card3, %213 ], [ @afc_wild_card1, %218 ], [ @afc_wild_card3, %220 ]
  %226 = phi i32 [ %201, %212 ], [ 2, %219 ], [ %201, %211 ], [ %201, %213 ], [ 1, %218 ], [ 3, %220 ]
  %227 = phi i32 [ 2, %212 ], [ %200, %219 ], [ 1, %211 ], [ 3, %213 ], [ %200, %218 ], [ %200, %220 ]
  %228 = load i32, ptr %202, align 4, !tbaa !7
  store i32 %228, ptr %225, align 4, !tbaa !7
  br label %229

229:                                              ; preds = %224, %220, %218, %217, %213, %211, %210
  %230 = phi i32 [ %201, %210 ], [ %201, %213 ], [ %201, %217 ], [ 2, %220 ], [ %201, %211 ], [ %201, %218 ], [ %226, %224 ]
  %231 = phi i32 [ %200, %210 ], [ 2, %213 ], [ %200, %217 ], [ %200, %220 ], [ %200, %211 ], [ %200, %218 ], [ %227, %224 ]
  %232 = add nuw nsw i64 %199, 1
  %233 = icmp eq i64 %232, 29
  br i1 %233, label %234, label %198, !llvm.loop !83

234:                                              ; preds = %229, %194, %90
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @sort_all() #5 {
  br label %1

1:                                                ; preds = %20, %0
  %2 = phi i64 [ 1, %0 ], [ %21, %20 ]
  %3 = icmp ult i64 %2, 28
  br i1 %3, label %4, label %24

4:                                                ; preds = %17, %1
  %5 = phi i64 [ %9, %17 ], [ 28, %1 ]
  %6 = phi i32 [ %18, %17 ], [ 0, %1 ]
  %7 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %5
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %9 = add nsw i64 %5, -1
  %10 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %9
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = tail call i32 @standing_lt(ptr noundef nonnull @team_info, i32 noundef %8, i32 noundef %11) #25
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load <2 x i32>, ptr %10, align 4, !tbaa !7
  %16 = shufflevector <2 x i32> %15, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %16, ptr %10, align 4, !tbaa !7
  br label %17

17:                                               ; preds = %14, %4
  %18 = phi i32 [ 1, %14 ], [ %6, %4 ]
  %19 = icmp ugt i64 %9, %2
  br i1 %19, label %4, label %20, !llvm.loop !84

20:                                               ; preds = %17
  %.lcssa8 = phi i32 [ %18, %17 ]
  %21 = add nuw nsw i64 %2, 1
  %22 = icmp ne i32 %.lcssa8, 0
  %23 = select i1 %3, i1 %22, i1 false
  br i1 %23, label %1, label %24, !llvm.loop !85

24:                                               ; preds = %20, %1
  tail call void @break_ties(ptr noundef nonnull @team_info, ptr noundef nonnull @standings, i32 noundef 1, i32 noundef 0) #25
  br label %25

25:                                               ; preds = %44, %24
  %26 = phi i64 [ 1, %24 ], [ %45, %44 ]
  %27 = icmp ult i64 %26, 28
  br i1 %27, label %28, label %48

28:                                               ; preds = %41, %25
  %29 = phi i64 [ %33, %41 ], [ 28, %25 ]
  %30 = phi i32 [ %42, %41 ], [ 0, %25 ]
  %31 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %29
  %32 = load i32, ptr %31, align 4, !tbaa !7
  %33 = add nsw i64 %29, -1
  %34 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !7
  %36 = tail call i32 @conf_standing_lt(ptr noundef nonnull @team_info, i32 noundef %32, i32 noundef %35) #25
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %41, label %38

38:                                               ; preds = %28
  %39 = load <2 x i32>, ptr %34, align 4, !tbaa !7
  %40 = shufflevector <2 x i32> %39, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %40, ptr %34, align 4, !tbaa !7
  br label %41

41:                                               ; preds = %38, %28
  %42 = phi i32 [ 1, %38 ], [ %30, %28 ]
  %43 = icmp ugt i64 %33, %26
  br i1 %43, label %28, label %44, !llvm.loop !86

44:                                               ; preds = %41
  %.lcssa7 = phi i32 [ %42, %41 ]
  %45 = add nuw nsw i64 %26, 1
  %46 = icmp ne i32 %.lcssa7, 0
  %47 = select i1 %27, i1 %46, i1 false
  br i1 %47, label %25, label %48, !llvm.loop !87

48:                                               ; preds = %44, %25
  tail call void @break_ties(ptr noundef nonnull @team_info, ptr noundef nonnull @conf_standings, i32 noundef 0, i32 noundef 0) #25
  br label %49

49:                                               ; preds = %68, %48
  %50 = phi i64 [ 1, %48 ], [ %69, %68 ]
  %51 = icmp ult i64 %50, 28
  br i1 %51, label %52, label %72

52:                                               ; preds = %65, %49
  %53 = phi i64 [ %57, %65 ], [ 28, %49 ]
  %54 = phi i32 [ %66, %65 ], [ 0, %49 ]
  %55 = getelementptr inbounds [29 x i32], ptr @abs_standings, i64 0, i64 %53
  %56 = load i32, ptr %55, align 4, !tbaa !7
  %57 = add nsw i64 %53, -1
  %58 = getelementptr inbounds [29 x i32], ptr @abs_standings, i64 0, i64 %57
  %59 = load i32, ptr %58, align 4, !tbaa !7
  %60 = tail call i32 @absolute_standing_lt(ptr noundef nonnull @team_info, i32 noundef %56, i32 noundef %59) #25
  %61 = icmp eq i32 %60, 0
  br i1 %61, label %65, label %62

62:                                               ; preds = %52
  %63 = load <2 x i32>, ptr %58, align 4, !tbaa !7
  %64 = shufflevector <2 x i32> %63, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %64, ptr %58, align 4, !tbaa !7
  br label %65

65:                                               ; preds = %62, %52
  %66 = phi i32 [ 1, %62 ], [ %54, %52 ]
  %67 = icmp ugt i64 %57, %50
  br i1 %67, label %52, label %68, !llvm.loop !88

68:                                               ; preds = %65
  %.lcssa6 = phi i32 [ %66, %65 ]
  %69 = add nuw nsw i64 %50, 1
  %70 = icmp ne i32 %.lcssa6, 0
  %71 = select i1 %51, i1 %70, i1 false
  br i1 %71, label %49, label %72, !llvm.loop !89

72:                                               ; preds = %68, %49
  tail call void @break_ties(ptr noundef nonnull @team_info, ptr noundef nonnull @abs_standings, i32 noundef 2, i32 noundef 0) #25
  br label %73

73:                                               ; preds = %93, %72
  %74 = phi i64 [ 1, %72 ], [ %94, %93 ]
  %75 = icmp ult i64 %74, 28
  br i1 %75, label %76, label %97

76:                                               ; preds = %73
  %77 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @defence_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %78

78:                                               ; preds = %89, %76
  %79 = phi i32 [ %77, %76 ], [ %90, %89 ]
  %80 = phi i64 [ 28, %76 ], [ %82, %89 ]
  %81 = phi i32 [ 0, %76 ], [ %91, %89 ]
  %82 = add nsw i64 %80, -1
  %83 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %82
  %84 = load i32, ptr %83, align 4, !tbaa !7
  %85 = tail call i32 @defence_lt(ptr noundef nonnull @team_info, i32 noundef %79, i32 noundef %84) #25, !range !66
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %89, label %87

87:                                               ; preds = %78
  %88 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %80
  store i32 %79, ptr %83, align 4, !tbaa !7
  store i32 %84, ptr %88, align 4, !tbaa !7
  br label %89

89:                                               ; preds = %87, %78
  %90 = phi i32 [ %79, %87 ], [ %84, %78 ]
  %91 = phi i32 [ 1, %87 ], [ %81, %78 ]
  %92 = icmp ugt i64 %82, %74
  br i1 %92, label %78, label %93, !llvm.loop !90

93:                                               ; preds = %89
  %.lcssa5 = phi i32 [ %91, %89 ]
  %94 = add nuw nsw i64 %74, 1
  %95 = icmp ne i32 %.lcssa5, 0
  %96 = select i1 %75, i1 %95, i1 false
  br i1 %96, label %73, label %97, !llvm.loop !91

97:                                               ; preds = %93, %73
  br label %98

98:                                               ; preds = %118, %97
  %99 = phi i64 [ %119, %118 ], [ 1, %97 ]
  %100 = icmp ult i64 %99, 28
  br i1 %100, label %101, label %122

101:                                              ; preds = %98
  %102 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @defence_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %103

103:                                              ; preds = %114, %101
  %104 = phi i32 [ %102, %101 ], [ %115, %114 ]
  %105 = phi i64 [ 28, %101 ], [ %107, %114 ]
  %106 = phi i32 [ 0, %101 ], [ %116, %114 ]
  %107 = add nsw i64 %105, -1
  %108 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %107
  %109 = load i32, ptr %108, align 4, !tbaa !7
  %110 = tail call i32 @defence_nfl_lt(ptr noundef nonnull @team_info, i32 noundef %104, i32 noundef %109) #25, !range !66
  %111 = icmp eq i32 %110, 0
  br i1 %111, label %114, label %112

112:                                              ; preds = %103
  %113 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %105
  store i32 %104, ptr %108, align 4, !tbaa !7
  store i32 %109, ptr %113, align 4, !tbaa !7
  br label %114

114:                                              ; preds = %112, %103
  %115 = phi i32 [ %104, %112 ], [ %109, %103 ]
  %116 = phi i32 [ 1, %112 ], [ %106, %103 ]
  %117 = icmp ugt i64 %107, %99
  br i1 %117, label %103, label %118, !llvm.loop !92

118:                                              ; preds = %114
  %.lcssa4 = phi i32 [ %116, %114 ]
  %119 = add nuw nsw i64 %99, 1
  %120 = icmp ne i32 %.lcssa4, 0
  %121 = select i1 %100, i1 %120, i1 false
  br i1 %121, label %98, label %122, !llvm.loop !93

122:                                              ; preds = %118, %98
  br label %123

123:                                              ; preds = %143, %122
  %124 = phi i64 [ %144, %143 ], [ 1, %122 ]
  %125 = icmp ult i64 %124, 28
  br i1 %125, label %126, label %147

126:                                              ; preds = %123
  %127 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @offence_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %128

128:                                              ; preds = %139, %126
  %129 = phi i32 [ %127, %126 ], [ %140, %139 ]
  %130 = phi i64 [ 28, %126 ], [ %132, %139 ]
  %131 = phi i32 [ 0, %126 ], [ %141, %139 ]
  %132 = add nsw i64 %130, -1
  %133 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %132
  %134 = load i32, ptr %133, align 4, !tbaa !7
  %135 = tail call i32 @offence_lt(ptr noundef nonnull @team_info, i32 noundef %129, i32 noundef %134) #25, !range !66
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %139, label %137

137:                                              ; preds = %128
  %138 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %130
  store i32 %129, ptr %133, align 4, !tbaa !7
  store i32 %134, ptr %138, align 4, !tbaa !7
  br label %139

139:                                              ; preds = %137, %128
  %140 = phi i32 [ %129, %137 ], [ %134, %128 ]
  %141 = phi i32 [ 1, %137 ], [ %131, %128 ]
  %142 = icmp ugt i64 %132, %124
  br i1 %142, label %128, label %143, !llvm.loop !94

143:                                              ; preds = %139
  %.lcssa3 = phi i32 [ %141, %139 ]
  %144 = add nuw nsw i64 %124, 1
  %145 = icmp ne i32 %.lcssa3, 0
  %146 = select i1 %125, i1 %145, i1 false
  br i1 %146, label %123, label %147, !llvm.loop !95

147:                                              ; preds = %143, %123
  br label %148

148:                                              ; preds = %168, %147
  %149 = phi i64 [ %169, %168 ], [ 1, %147 ]
  %150 = icmp ult i64 %149, 28
  br i1 %150, label %151, label %172

151:                                              ; preds = %148
  %152 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @offence_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %153

153:                                              ; preds = %164, %151
  %154 = phi i32 [ %152, %151 ], [ %165, %164 ]
  %155 = phi i64 [ 28, %151 ], [ %157, %164 ]
  %156 = phi i32 [ 0, %151 ], [ %166, %164 ]
  %157 = add nsw i64 %155, -1
  %158 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %157
  %159 = load i32, ptr %158, align 4, !tbaa !7
  %160 = tail call i32 @offence_nfl_lt(ptr noundef nonnull @team_info, i32 noundef %154, i32 noundef %159) #25, !range !66
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %164, label %162

162:                                              ; preds = %153
  %163 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %155
  store i32 %154, ptr %158, align 4, !tbaa !7
  store i32 %159, ptr %163, align 4, !tbaa !7
  br label %164

164:                                              ; preds = %162, %153
  %165 = phi i32 [ %154, %162 ], [ %159, %153 ]
  %166 = phi i32 [ 1, %162 ], [ %156, %153 ]
  %167 = icmp ugt i64 %157, %149
  br i1 %167, label %153, label %168, !llvm.loop !96

168:                                              ; preds = %164
  %.lcssa2 = phi i32 [ %166, %164 ]
  %169 = add nuw nsw i64 %149, 1
  %170 = icmp ne i32 %.lcssa2, 0
  %171 = select i1 %150, i1 %170, i1 false
  br i1 %171, label %148, label %172, !llvm.loop !97

172:                                              ; preds = %168, %148
  br label %173

173:                                              ; preds = %193, %172
  %174 = phi i64 [ %194, %193 ], [ 1, %172 ]
  %175 = icmp ult i64 %174, 28
  br i1 %175, label %176, label %197

176:                                              ; preds = %173
  %177 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @net_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %178

178:                                              ; preds = %189, %176
  %179 = phi i32 [ %177, %176 ], [ %190, %189 ]
  %180 = phi i64 [ 28, %176 ], [ %182, %189 ]
  %181 = phi i32 [ 0, %176 ], [ %191, %189 ]
  %182 = add nsw i64 %180, -1
  %183 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %182
  %184 = load i32, ptr %183, align 4, !tbaa !7
  %185 = tail call i32 @net_lt(ptr noundef nonnull @team_info, i32 noundef %179, i32 noundef %184) #25, !range !66
  %186 = icmp eq i32 %185, 0
  br i1 %186, label %189, label %187

187:                                              ; preds = %178
  %188 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %180
  store i32 %179, ptr %183, align 4, !tbaa !7
  store i32 %184, ptr %188, align 4, !tbaa !7
  br label %189

189:                                              ; preds = %187, %178
  %190 = phi i32 [ %179, %187 ], [ %184, %178 ]
  %191 = phi i32 [ 1, %187 ], [ %181, %178 ]
  %192 = icmp ugt i64 %182, %174
  br i1 %192, label %178, label %193, !llvm.loop !98

193:                                              ; preds = %189
  %.lcssa1 = phi i32 [ %191, %189 ]
  %194 = add nuw nsw i64 %174, 1
  %195 = icmp ne i32 %.lcssa1, 0
  %196 = select i1 %175, i1 %195, i1 false
  br i1 %196, label %173, label %197, !llvm.loop !99

197:                                              ; preds = %193, %173
  br label %198

198:                                              ; preds = %218, %197
  %199 = phi i64 [ %219, %218 ], [ 1, %197 ]
  %200 = icmp ult i64 %199, 28
  br i1 %200, label %201, label %222

201:                                              ; preds = %198
  %202 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @net_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %203

203:                                              ; preds = %214, %201
  %204 = phi i32 [ %202, %201 ], [ %215, %214 ]
  %205 = phi i64 [ 28, %201 ], [ %207, %214 ]
  %206 = phi i32 [ 0, %201 ], [ %216, %214 ]
  %207 = add nsw i64 %205, -1
  %208 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %207
  %209 = load i32, ptr %208, align 4, !tbaa !7
  %210 = tail call i32 @net_nfl_lt(ptr noundef nonnull @team_info, i32 noundef %204, i32 noundef %209) #25, !range !66
  %211 = icmp eq i32 %210, 0
  br i1 %211, label %214, label %212

212:                                              ; preds = %203
  %213 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %205
  store i32 %204, ptr %208, align 4, !tbaa !7
  store i32 %209, ptr %213, align 4, !tbaa !7
  br label %214

214:                                              ; preds = %212, %203
  %215 = phi i32 [ %204, %212 ], [ %209, %203 ]
  %216 = phi i32 [ 1, %212 ], [ %206, %203 ]
  %217 = icmp ugt i64 %207, %199
  br i1 %217, label %203, label %218, !llvm.loop !100

218:                                              ; preds = %214
  %.lcssa = phi i32 [ %216, %214 ]
  %219 = add nuw nsw i64 %199, 1
  %220 = icmp ne i32 %.lcssa, 0
  %221 = select i1 %200, i1 %220, i1 false
  br i1 %221, label %198, label %222, !llvm.loop !101

222:                                              ; preds = %218, %198
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @a_wild_card(i32 noundef %0) #20 {
  %2 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %3 = icmp eq i32 %2, %0
  %4 = load i32, ptr @nfc_wild_card2, align 4
  %5 = icmp eq i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = load i32, ptr @nfc_wild_card3, align 4
  %8 = icmp eq i32 %7, %0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load i32, ptr @afc_wild_card1, align 4
  %11 = icmp eq i32 %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = load i32, ptr @afc_wild_card2, align 4
  %14 = icmp eq i32 %13, %0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i32, ptr @afc_wild_card3, align 4
  %17 = icmp eq i32 %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal i32 @a_champ(i32 noundef %0) #20 {
  %2 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %3 = icmp eq i32 %2, %0
  %4 = load i32, ptr @nfc_central_champ, align 4
  %5 = icmp eq i32 %4, %0
  %6 = select i1 %3, i1 true, i1 %5
  %7 = load i32, ptr @nfc_west_champ, align 4
  %8 = icmp eq i32 %7, %0
  %9 = select i1 %6, i1 true, i1 %8
  %10 = load i32, ptr @afc_east_champ, align 4
  %11 = icmp eq i32 %10, %0
  %12 = select i1 %9, i1 true, i1 %11
  %13 = load i32, ptr @afc_central_champ, align 4
  %14 = icmp eq i32 %13, %0
  %15 = select i1 %12, i1 true, i1 %14
  %16 = load i32, ptr @afc_west_champ, align 4
  %17 = icmp eq i32 %16, %0
  %18 = select i1 %15, i1 true, i1 %17
  %19 = zext i1 %18 to i32
  ret i32 %19
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @find_name(ptr nocapture noundef %0, ptr noundef %1) #5 {
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #23
  br label %4

4:                                                ; preds = %14, %2
  %5 = phi i64 [ 1, %2 ], [ %15, %14 ]
  %6 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %5
  %7 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %5, i64 1
  %8 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %7) #27
  call void @lower_case(ptr noundef nonnull %3) #27
  %9 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #26
  %10 = icmp eq i32 %9, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %4
  %12 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #26
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %19, label %14

14:                                               ; preds = %11
  %15 = add nuw nsw i64 %5, 1
  %16 = icmp eq i64 %15, 30
  br i1 %16, label %17, label %4, !llvm.loop !102

17:                                               ; preds = %14
  %18 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.143, ptr noundef %1) #25
  br label %21

19:                                               ; preds = %11, %4
  %.lcssa = phi i64 [ %5, %11 ], [ %5, %4 ]
  %20 = trunc i64 %.lcssa to i32
  br label %21

21:                                               ; preds = %19, %17
  %22 = phi i32 [ 0, %17 ], [ %20, %19 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #23
  ret i32 %22
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #11

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @compute_team_info() #0 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = mul nuw nsw i64 %2, 116
  %4 = add nuw nsw i64 %3, 120
  %5 = getelementptr i8, ptr @team_plays, i64 %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %5, i8 0, i64 112, i1 false), !tbaa !7
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 28
  br i1 %7, label %13, label %1, !llvm.loop !103

8:                                                ; preds = %23
  %9 = load i32, ptr @num_games, align 4, !tbaa !7
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %222, label %11

11:                                               ; preds = %8
  %12 = sext i32 %9 to i64
  br label %26

13:                                               ; preds = %23, %1
  %14 = phi i64 [ %24, %23 ], [ 1, %1 ]
  %15 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %14
  %16 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %15, i8 0, i64 20, i1 false)
  %17 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %14
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %16, i8 0, i64 20, i1 false)
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %17, i8 0, i64 20, i1 false)
  br label %18

18:                                               ; preds = %18, %13
  %19 = phi i64 [ 1, %13 ], [ %21, %18 ]
  %20 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %14, i64 %19
  %21 = add nuw nsw i64 %19, 1
  %22 = icmp eq i64 %21, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %20, i8 0, i64 20, i1 false)
  br i1 %22, label %23, label %18, !llvm.loop !104

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, 29
  br i1 %25, label %8, label %13, !llvm.loop !105

26:                                               ; preds = %219, %11
  %27 = phi i64 [ 1, %11 ], [ %220, %219 ]
  br label %28

28:                                               ; preds = %216, %26
  %29 = phi i64 [ 1, %26 ], [ %217, %216 ]
  %30 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %27, i64 %29, i64 2
  %31 = load i32, ptr %30, align 4, !tbaa !7
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %27, i64 %29, i64 1
  %34 = load i32, ptr %33, align 4, !tbaa !7
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds [29 x [29 x i32]], ptr @team_plays, i64 0, i64 %32, i64 %35
  store i32 1, ptr %36, align 4, !tbaa !7
  %37 = getelementptr inbounds [29 x [29 x i32]], ptr @team_plays, i64 0, i64 %35, i64 %32
  store i32 1, ptr %37, align 4, !tbaa !7
  %38 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %27, i64 %29, i64 2
  %39 = load i32, ptr %38, align 4, !tbaa !7
  %40 = icmp sgt i32 %39, -1
  br i1 %40, label %41, label %216

41:                                               ; preds = %28
  %42 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %27, i64 %29, i64 1
  %43 = load i32, ptr %42, align 4, !tbaa !7
  %44 = icmp sgt i32 %43, -1
  br i1 %44, label %45, label %216

45:                                               ; preds = %41
  %46 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 3
  %47 = load i32, ptr %46, align 4, !tbaa !38
  %48 = add nsw i32 %47, %39
  store i32 %48, ptr %46, align 4, !tbaa !38
  %49 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 4
  %50 = load i32, ptr %49, align 4, !tbaa !39
  %51 = add nsw i32 %50, %43
  store i32 %51, ptr %49, align 4, !tbaa !39
  %52 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = add nsw i32 %53, %43
  store i32 %54, ptr %52, align 4, !tbaa !38
  %55 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !39
  %57 = add nsw i32 %56, %39
  store i32 %57, ptr %55, align 4, !tbaa !39
  %58 = icmp ult i32 %39, %43
  br i1 %58, label %59, label %94

59:                                               ; preds = %45
  %60 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !26
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 4, !tbaa !26
  %63 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35
  %64 = load i32, ptr %63, align 4, !tbaa !22
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !22
  %66 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !26
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !26
  %69 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32
  %70 = load i32, ptr %69, align 4, !tbaa !22
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !22
  %72 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32
  %73 = load i32, ptr %72, align 8, !tbaa !7
  %74 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35
  %75 = load i32, ptr %74, align 8, !tbaa !7
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %169

77:                                               ; preds = %59
  %78 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !26
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %78, align 4, !tbaa !26
  %81 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35
  %82 = load i32, ptr %81, align 4, !tbaa !22
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !22
  %84 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !7
  %86 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %87 = load i32, ptr %86, align 4, !tbaa !7
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %169

89:                                               ; preds = %77
  %90 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !26
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !26
  %93 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35
  br label %164

94:                                               ; preds = %45
  %95 = icmp ugt i32 %39, %43
  %96 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32
  %97 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35
  br i1 %95, label %98, label %131

98:                                               ; preds = %94
  %99 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32
  %100 = load i32, ptr %99, align 4, !tbaa !22
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !22
  %102 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !26
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %102, align 4, !tbaa !26
  %105 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35
  %106 = load i32, ptr %105, align 4, !tbaa !22
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !22
  %108 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !26
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 4, !tbaa !26
  %111 = load i32, ptr %96, align 8, !tbaa !7
  %112 = load i32, ptr %97, align 8, !tbaa !7
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %169

114:                                              ; preds = %98
  %115 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32
  %116 = load i32, ptr %115, align 4, !tbaa !22
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %115, align 4, !tbaa !22
  %118 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !26
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !26
  %121 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %122 = load i32, ptr %121, align 4, !tbaa !7
  %123 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %169

126:                                              ; preds = %114
  %127 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32
  %128 = load i32, ptr %127, align 4, !tbaa !22
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !22
  %130 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 1
  br label %164

131:                                              ; preds = %94
  %132 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !25
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !25
  %135 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !25
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %135, align 4, !tbaa !25
  %138 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !25
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %138, align 4, !tbaa !25
  %141 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !25
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !25
  %144 = load i32, ptr %96, align 8, !tbaa !7
  %145 = load i32, ptr %97, align 8, !tbaa !7
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %131
  %148 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !25
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %148, align 4, !tbaa !25
  %151 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !25
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %151, align 4, !tbaa !25
  %154 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %155 = load i32, ptr %154, align 4, !tbaa !7
  %156 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %157 = load i32, ptr %156, align 4, !tbaa !7
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %147
  %160 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !25
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %160, align 4, !tbaa !25
  %163 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 2
  br label %164

164:                                              ; preds = %159, %126, %89
  %165 = phi ptr [ %130, %126 ], [ %163, %159 ], [ %93, %89 ]
  %166 = phi i32 [ %111, %126 ], [ %144, %159 ], [ %73, %89 ]
  %167 = load i32, ptr %165, align 4, !tbaa !7
  %168 = add nsw i32 %167, 1
  store i32 %168, ptr %165, align 4, !tbaa !7
  br label %169

169:                                              ; preds = %164, %147, %131, %114, %98, %77, %59
  %170 = phi i32 [ %111, %114 ], [ %112, %98 ], [ %144, %147 ], [ %145, %131 ], [ %75, %59 ], [ %73, %77 ], [ %166, %164 ]
  %171 = phi i32 [ %111, %114 ], [ %111, %98 ], [ %144, %147 ], [ %144, %131 ], [ %73, %59 ], [ %73, %77 ], [ %166, %164 ]
  %172 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 3
  %173 = load i32, ptr %172, align 4, !tbaa !38
  %174 = add nsw i32 %173, %39
  store i32 %174, ptr %172, align 4, !tbaa !38
  %175 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 4
  %176 = load i32, ptr %175, align 4, !tbaa !39
  %177 = add nsw i32 %176, %43
  store i32 %177, ptr %175, align 4, !tbaa !39
  %178 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !38
  %180 = add nsw i32 %179, %43
  store i32 %180, ptr %178, align 4, !tbaa !38
  %181 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 4
  %182 = load i32, ptr %181, align 4, !tbaa !39
  %183 = add nsw i32 %182, %39
  store i32 %183, ptr %181, align 4, !tbaa !39
  %184 = icmp eq i32 %171, %170
  br i1 %184, label %185, label %216

185:                                              ; preds = %169
  %186 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 3
  %187 = load i32, ptr %186, align 4, !tbaa !38
  %188 = add nsw i32 %187, %39
  store i32 %188, ptr %186, align 4, !tbaa !38
  %189 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 4
  %190 = load i32, ptr %189, align 4, !tbaa !39
  %191 = add nsw i32 %190, %43
  store i32 %191, ptr %189, align 4, !tbaa !39
  %192 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 3
  %193 = load i32, ptr %192, align 4, !tbaa !38
  %194 = add nsw i32 %193, %43
  store i32 %194, ptr %192, align 4, !tbaa !38
  %195 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 4
  %196 = load i32, ptr %195, align 4, !tbaa !39
  %197 = add nsw i32 %196, %39
  store i32 %197, ptr %195, align 4, !tbaa !39
  %198 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %199 = load i32, ptr %198, align 4, !tbaa !7
  %200 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %201 = load i32, ptr %200, align 4, !tbaa !7
  %202 = icmp eq i32 %199, %201
  br i1 %202, label %203, label %216

203:                                              ; preds = %185
  %204 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 3
  %205 = load i32, ptr %204, align 4, !tbaa !38
  %206 = add nsw i32 %205, %39
  store i32 %206, ptr %204, align 4, !tbaa !38
  %207 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 4
  %208 = load i32, ptr %207, align 4, !tbaa !39
  %209 = add nsw i32 %208, %43
  store i32 %209, ptr %207, align 4, !tbaa !39
  %210 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !38
  %212 = add nsw i32 %211, %43
  store i32 %212, ptr %210, align 4, !tbaa !38
  %213 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 4
  %214 = load i32, ptr %213, align 4, !tbaa !39
  %215 = add nsw i32 %214, %39
  store i32 %215, ptr %213, align 4, !tbaa !39
  br label %216

216:                                              ; preds = %203, %185, %169, %41, %28
  %217 = add nuw nsw i64 %29, 1
  %218 = icmp eq i64 %217, 15
  br i1 %218, label %219, label %28, !llvm.loop !106

219:                                              ; preds = %216
  %220 = add nuw nsw i64 %27, 1
  %221 = icmp slt i64 %27, %12
  br i1 %221, label %26, label %222, !llvm.loop !107

222:                                              ; preds = %219, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @read_sched_into(ptr nocapture noundef %0, ptr nocapture noundef %1) #5 {
  %3 = alloca [18 x i32], align 16
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #23
  %5 = load i32, ptr @num_games, align 4, !tbaa !7
  %6 = icmp slt i32 %5, 1
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = add nuw i32 %5, 1
  %9 = zext i32 %8 to i64
  br label %12

10:                                               ; preds = %12, %2
  %11 = getelementptr inbounds i8, ptr %4, i64 1
  br label %17

12:                                               ; preds = %12, %7
  %13 = phi i64 [ 1, %7 ], [ %15, %12 ]
  %14 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %13
  store i32 1, ptr %14, align 4, !tbaa !7
  %15 = add nuw nsw i64 %13, 1
  %16 = icmp eq i64 %15, %9
  br i1 %16, label %10, label %12, !llvm.loop !108

17:                                               ; preds = %145, %10
  %18 = phi i32 [ %5, %10 ], [ %146, %145 ]
  %19 = phi i64 [ 1, %10 ], [ %148, %145 ]
  %20 = phi i32 [ 0, %10 ], [ %147, %145 ]
  %21 = icmp slt i32 %18, 1
  br i1 %21, label %145, label %22

22:                                               ; preds = %17
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %19, i64 1
  %24 = trunc i64 %19 to i32
  br label %25

25:                                               ; preds = %139, %22
  %26 = phi i64 [ 1, %22 ], [ %141, %139 ]
  %27 = phi i32 [ %20, %22 ], [ %140, %139 ]
  br label %28

28:                                               ; preds = %28, %25
  %29 = call i32 @getc(ptr noundef %0) #25
  %30 = trunc i32 %29 to i8
  %31 = call i32 @white_space(i8 noundef signext %30) #27
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %28, !llvm.loop !109

33:                                               ; preds = %38, %28
  %34 = phi i64 [ %40, %38 ], [ 0, %28 ]
  %35 = phi i8 [ %42, %38 ], [ %30, %28 ]
  %36 = call i32 @white_space(i8 noundef signext %35) #27
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %33
  %39 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 %34
  store i8 %35, ptr %39, align 1, !tbaa !45
  %40 = add nuw i64 %34, 1
  %41 = call i32 @getc(ptr noundef %0) #25
  %42 = trunc i32 %41 to i8
  br label %33, !llvm.loop !110

43:                                               ; preds = %33
  %.lcssa = phi i64 [ %34, %33 ]
  %44 = and i64 %.lcssa, 4294967295
  %45 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 %44
  store i8 0, ptr %45, align 1, !tbaa !45
  %46 = load i8, ptr %4, align 1, !tbaa !45
  %47 = icmp eq i8 %46, 64
  %48 = load ptr, ptr @stderr, align 8, !tbaa !42
  br i1 %47, label %51, label %49

49:                                               ; preds = %43
  %50 = call i32 @find_name(ptr noundef %48, ptr noundef nonnull %4) #25
  br label %53

51:                                               ; preds = %43
  %52 = call i32 @find_name(ptr noundef %48, ptr noundef nonnull %11) #25
  br label %53

53:                                               ; preds = %51, %49
  %54 = phi i32 [ %50, %49 ], [ %24, %51 ]
  %55 = phi i32 [ %24, %49 ], [ %52, %51 ]
  %56 = phi i64 [ 2, %49 ], [ 1, %51 ]
  %57 = phi i32 [ %50, %49 ], [ %52, %51 ]
  %58 = phi i64 [ 1, %49 ], [ 2, %51 ]
  %59 = sext i32 %57 to i64
  %60 = icmp sgt i64 %19, %59
  br i1 %60, label %61, label %98

61:                                               ; preds = %53
  %62 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %26
  %63 = load i32, ptr %62, align 4, !tbaa !7
  %64 = icmp sgt i32 %63, 1
  br i1 %64, label %65, label %90

65:                                               ; preds = %61
  %66 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %59, i64 1
  %67 = add nuw nsw i32 %63, 2
  %68 = trunc i64 %26 to i32
  br label %69

69:                                               ; preds = %85, %65
  %70 = phi i32 [ 1, %65 ], [ %88, %85 ]
  %71 = phi i32 [ %27, %65 ], [ %86, %85 ]
  %72 = sext i32 %70 to i64
  %73 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %72, i64 %56
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = zext i32 %74 to i64
  %76 = icmp eq i64 %19, %75
  br i1 %76, label %77, label %85

77:                                               ; preds = %69
  %78 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %72, i64 %58
  %79 = load i32, ptr %78, align 4, !tbaa !7
  %80 = icmp eq i32 %79, %57
  br i1 %80, label %85, label %81

81:                                               ; preds = %77
  %82 = sext i32 %79 to i64
  %83 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %82, i64 1
  %84 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.164, ptr noundef nonnull %23, i32 noundef %24, ptr noundef nonnull %83, i32 noundef %79, ptr noundef nonnull %66, i32 noundef %57, i32 noundef %68) #25
  br label %85

85:                                               ; preds = %81, %77, %69
  %86 = phi i32 [ %71, %69 ], [ 1, %81 ], [ %71, %77 ]
  %87 = phi i32 [ %70, %69 ], [ %67, %81 ], [ %67, %77 ]
  %88 = add nsw i32 %87, 1
  %89 = icmp slt i32 %88, %63
  br i1 %89, label %69, label %90, !llvm.loop !111

90:                                               ; preds = %85, %61
  %91 = phi i32 [ %27, %61 ], [ %86, %85 ]
  %92 = phi i32 [ 1, %61 ], [ %88, %85 ]
  %93 = icmp eq i32 %92, %63
  br i1 %93, label %94, label %139

94:                                               ; preds = %90
  %95 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %59, i64 1
  %96 = trunc i64 %26 to i32
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.165, ptr noundef nonnull %95, i32 noundef %57, ptr noundef nonnull %23, i32 noundef %24, i32 noundef %96, ptr noundef nonnull %4) #25
  br label %139

98:                                               ; preds = %53
  %99 = icmp eq i32 %57, 29
  br i1 %99, label %139, label %100

100:                                              ; preds = %98
  %101 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %26
  %102 = load i32, ptr %101, align 4, !tbaa !7
  %103 = icmp sgt i32 %102, 1
  br i1 %103, label %104, label %134

104:                                              ; preds = %100
  %105 = zext i32 %102 to i64
  br label %106

106:                                              ; preds = %106, %104
  %107 = phi i64 [ 1, %104 ], [ %119, %106 ]
  %108 = phi i32 [ 0, %104 ], [ %118, %106 ]
  %109 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %107, i64 1
  %110 = load i32, ptr %109, align 4, !tbaa !7
  %111 = zext i32 %110 to i64
  %112 = icmp eq i64 %19, %111
  %113 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %107, i64 2
  %114 = load i32, ptr %113, align 4, !tbaa !7
  %115 = select i1 %112, i32 %114, i32 %108
  %116 = zext i32 %114 to i64
  %117 = icmp eq i64 %19, %116
  %118 = select i1 %117, i32 %110, i32 %115
  %119 = add nuw nsw i64 %107, 1
  %120 = icmp eq i64 %119, %105
  br i1 %120, label %121, label %106, !llvm.loop !112

121:                                              ; preds = %106
  %.lcssa1 = phi i32 [ %118, %106 ]
  %122 = icmp eq i32 %.lcssa1, 0
  br i1 %122, label %129, label %123

123:                                              ; preds = %121
  %124 = sext i32 %.lcssa1 to i64
  %125 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %124, i64 1
  %126 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %59, i64 1
  %127 = trunc i64 %26 to i32
  %128 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.166, ptr noundef nonnull %23, i32 noundef %24, ptr noundef nonnull %125, i32 noundef %.lcssa1, ptr noundef nonnull %126, i32 noundef %57, i32 noundef %127) #25
  br label %139

129:                                              ; preds = %121
  %130 = icmp sgt i32 %102, 14
  br i1 %130, label %131, label %134

131:                                              ; preds = %129
  %132 = trunc i64 %26 to i32
  %133 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.167, i32 noundef %132) #25
  br label %139

134:                                              ; preds = %129, %100
  %135 = sext i32 %102 to i64
  %136 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %135, i64 1
  store i32 %54, ptr %136, align 4, !tbaa !7
  %137 = getelementptr inbounds [15 x [3 x i32]], ptr %1, i64 %26, i64 %135, i64 2
  store i32 %55, ptr %137, align 4, !tbaa !7
  %138 = add nsw i32 %102, 1
  store i32 %138, ptr %101, align 4, !tbaa !7
  br label %139

139:                                              ; preds = %134, %131, %123, %98, %94, %90
  %140 = phi i32 [ 1, %94 ], [ %91, %90 ], [ %27, %98 ], [ 1, %123 ], [ 1, %131 ], [ %27, %134 ]
  %141 = add nuw nsw i64 %26, 1
  %142 = load i32, ptr @num_games, align 4, !tbaa !7
  %143 = sext i32 %142 to i64
  %144 = icmp slt i64 %26, %143
  br i1 %144, label %25, label %145, !llvm.loop !113

145:                                              ; preds = %139, %17
  %146 = phi i32 [ %18, %17 ], [ %142, %139 ]
  %147 = phi i32 [ %20, %17 ], [ %140, %139 ]
  %148 = add nuw nsw i64 %19, 1
  %149 = icmp eq i64 %148, 29
  br i1 %149, label %150, label %17, !llvm.loop !114

150:                                              ; preds = %145
  %.lcssa2 = phi i32 [ %147, %145 ]
  %151 = icmp eq i32 %.lcssa2, 0
  br i1 %151, label %153, label %152

152:                                              ; preds = %150
  call void @exit(i32 noundef 1) #24
  unreachable

153:                                              ; preds = %150
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize uwtable
define internal void @save_scores(ptr nocapture noundef %0, ptr noundef %1) #10 {
  %3 = tail call noalias ptr @fopen(ptr noundef %1, ptr noundef nonnull @.str.5.170) #25
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %2
  %6 = load i32, ptr @num_games, align 4, !tbaa !7
  %7 = icmp slt i32 %6, 0
  br i1 %7, label %27, label %10

8:                                                ; preds = %2
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6.171, ptr noundef %1) #25
  br label %31

10:                                               ; preds = %21, %5
  %11 = phi i64 [ %23, %21 ], [ 1, %5 ]
  br label %12

12:                                               ; preds = %12, %10
  %13 = phi i64 [ 1, %10 ], [ %19, %12 ]
  %14 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %11, i64 %13, i64 2
  %15 = load i32, ptr %14, align 4, !tbaa !7
  %16 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %11, i64 %13, i64 1
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %3, ptr noundef nonnull @.str.7.172, i32 noundef %15, i32 noundef %17) #25
  %19 = add nuw nsw i64 %13, 1
  %20 = icmp eq i64 %19, 15
  br i1 %20, label %21, label %12, !llvm.loop !115

21:                                               ; preds = %12
  %22 = tail call i32 @fputc(i32 10, ptr nonnull %3)
  %23 = add nuw nsw i64 %11, 1
  %24 = load i32, ptr @num_games, align 4, !tbaa !7
  %25 = sext i32 %24 to i64
  %26 = icmp sgt i64 %11, %25
  br i1 %26, label %27, label %10, !llvm.loop !116

27:                                               ; preds = %21, %5
  %28 = load ptr, ptr @the_scores, align 8, !tbaa !42
  %29 = tail call i32 @fclose(ptr noundef %28) #25
  %30 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef %1) #25
  store i32 1, ptr @current_with_disk, align 4, !tbaa !7
  br label %31

31:                                               ; preds = %27, %8
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #9

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #5 {
  br label %3

3:                                                ; preds = %3, %2
  %4 = phi i64 [ 0, %2 ], [ %16, %3 ]
  %5 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %2 ], [ %17, %3 ]
  %6 = or i64 %4, 1
  %7 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %6
  store <4 x i32> %5, ptr %7, align 4, !tbaa !7
  %8 = getelementptr inbounds [29 x i32], ptr @abs_standings, i64 0, i64 %6
  store <4 x i32> %5, ptr %8, align 4, !tbaa !7
  %9 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %6
  store <4 x i32> %5, ptr %9, align 4, !tbaa !7
  %10 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %6
  store <4 x i32> %5, ptr %10, align 4, !tbaa !7
  %11 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %6
  store <4 x i32> %5, ptr %11, align 4, !tbaa !7
  %12 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %6
  store <4 x i32> %5, ptr %12, align 4, !tbaa !7
  %13 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %6
  store <4 x i32> %5, ptr %13, align 4, !tbaa !7
  %14 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %6
  store <4 x i32> %5, ptr %14, align 4, !tbaa !7
  %15 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %6
  store <4 x i32> %5, ptr %15, align 4, !tbaa !7
  %16 = add nuw i64 %4, 4
  %17 = add <4 x i32> %5, <i32 4, i32 4, i32 4, i32 4>
  %18 = icmp eq i64 %16, 28
  br i1 %18, label %19, label %3, !llvm.loop !117

19:                                               ; preds = %3
  %20 = icmp slt i32 %0, 2
  br i1 %20, label %41, label %21

21:                                               ; preds = %19
  %22 = getelementptr inbounds ptr, ptr %1, i64 1
  %23 = load ptr, ptr %22, align 8, !tbaa !42
  %24 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %23, ptr noundef nonnull dereferenceable(3) @.str.10) #26
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %21
  store i32 1, ptr @preseason, align 4, !tbaa !7
  %27 = getelementptr inbounds ptr, ptr %1, i64 2
  %28 = load ptr, ptr %27, align 8, !tbaa !42
  %29 = tail call i32 @str_to_int(ptr noundef %28) #27
  store i32 %29, ptr @iyear, align 4, !tbaa !7
  store i32 5, ptr @num_games, align 4, !tbaa !7
  %30 = icmp eq i32 %0, 4
  br i1 %30, label %44, label %39

31:                                               ; preds = %21
  %32 = icmp ult i32 %0, 4
  br i1 %32, label %33, label %41

33:                                               ; preds = %31
  %34 = tail call i32 @str_to_int(ptr noundef %23) #27
  store i32 %34, ptr @iyear, align 4, !tbaa !7
  %35 = add i32 %34, -78
  %36 = icmp ult i32 %35, 12
  %37 = select i1 %36, i32 16, i32 17
  store i32 %37, ptr @num_games, align 4, !tbaa !7
  %38 = icmp eq i32 %0, 3
  br i1 %38, label %44, label %48

39:                                               ; preds = %26
  %40 = icmp ult i32 %0, 5
  br i1 %40, label %48, label %41

41:                                               ; preds = %39, %31, %19
  %42 = load ptr, ptr @stderr, align 8, !tbaa !42
  %43 = tail call i64 @fwrite(ptr nonnull @.str.11.195, i64 66, i64 1, ptr %42) #28
  tail call void @exit(i32 noundef 1) #24
  unreachable

44:                                               ; preds = %33, %26
  %45 = phi i32 [ 3, %26 ], [ 2, %33 ]
  %46 = phi i32 [ %29, %26 ], [ %34, %33 ]
  %47 = phi ptr [ %28, %26 ], [ %23, %33 ]
  store i32 %45, ptr @in_fileP, align 4, !tbaa !7
  br label %48

48:                                               ; preds = %44, %39, %33
  %49 = phi i32 [ %29, %39 ], [ %34, %33 ], [ %46, %44 ]
  %50 = phi ptr [ %28, %39 ], [ %23, %33 ], [ %47, %44 ]
  %51 = icmp slt i32 %49, 88
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) getelementptr inbounds ([30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 11), ptr noundef nonnull align 1 dereferenceable(3) @.str.12.198, i64 3, i1 false) #27
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 11, i64 1), ptr noundef nonnull align 1 dereferenceable(10) @.str.13.199, i64 10, i1 false) #27
  br label %53

53:                                               ; preds = %52, %48
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @inp_sched, ptr noundef nonnull align 1 dereferenceable(14) @.str.14.200, i64 14, i1 false) #27
  %54 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @inp_sched, ptr noundef nonnull dereferenceable(1) %50) #27
  %55 = load i32, ptr @preseason, align 4, !tbaa !7
  %56 = icmp eq i32 %55, 0
  br i1 %56, label %60, label %57

57:                                               ; preds = %53
  %58 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @inp_sched)
  %59 = getelementptr inbounds i8, ptr @inp_sched, i64 %58
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %59, ptr noundef nonnull align 1 dereferenceable(5) @.str.15.201, i64 5, i1 false)
  br label %60

60:                                               ; preds = %57, %53
  %61 = tail call noalias ptr @fopen(ptr noundef nonnull @inp_sched, ptr noundef nonnull @.str.16.202) #25
  store ptr %61, ptr @schedule, align 8, !tbaa !42
  %62 = icmp eq ptr %61, null
  br i1 %62, label %63, label %66

63:                                               ; preds = %60
  %64 = load ptr, ptr @stderr, align 8, !tbaa !42
  %65 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %64, ptr noundef nonnull @.str.17.203, ptr noundef nonnull @inp_sched) #29
  tail call void @exit(i32 noundef 1) #24
  unreachable

66:                                               ; preds = %60
  tail call void @read_sched_into(ptr noundef nonnull %61, ptr noundef nonnull @sched) #25
  %67 = load ptr, ptr @schedule, align 8, !tbaa !42
  %68 = tail call i32 @fclose(ptr noundef %67) #25
  %69 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %84, label %71

71:                                               ; preds = %66
  %72 = sext i32 %69 to i64
  %73 = getelementptr inbounds ptr, ptr %1, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !42
  %75 = tail call noalias ptr @fopen(ptr noundef %74, ptr noundef nonnull @.str.16.202) #25
  %76 = icmp eq ptr %75, null
  br i1 %76, label %77, label %84

77:                                               ; preds = %71
  %78 = load ptr, ptr @stderr, align 8, !tbaa !42
  %79 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds ptr, ptr %1, i64 %80
  %82 = load ptr, ptr %81, align 8, !tbaa !42
  %83 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %78, ptr noundef nonnull @.str.18.204, ptr noundef %82) #29
  tail call void @exit(i32 noundef 1) #24
  unreachable

84:                                               ; preds = %71, %66
  %85 = phi ptr [ %75, %71 ], [ undef, %66 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) @input_score, ptr noundef nonnull align 1 dereferenceable(15) @.str.19.207, i64 15, i1 false) #27
  %86 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @input_score, ptr noundef nonnull dereferenceable(1) %50) #27
  %87 = load i32, ptr @preseason, align 4, !tbaa !7
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %92, label %89

89:                                               ; preds = %84
  %90 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @input_score)
  %91 = getelementptr inbounds i8, ptr @input_score, i64 %90
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %91, ptr noundef nonnull align 1 dereferenceable(5) @.str.15.201, i64 5, i1 false)
  br label %92

92:                                               ; preds = %89, %84
  %93 = tail call noalias ptr @fopen(ptr noundef nonnull @input_score, ptr noundef nonnull @.str.16.202) #25
  store ptr %93, ptr @the_scores, align 8, !tbaa !42
  %94 = icmp eq ptr %93, null
  %95 = load i32, ptr @num_games, align 4, !tbaa !7
  %96 = icmp slt i32 %95, 0
  br i1 %94, label %98, label %97

97:                                               ; preds = %92
  br i1 %96, label %141, label %117

98:                                               ; preds = %92
  br i1 %96, label %113, label %99

99:                                               ; preds = %98
  %100 = add nuw i32 %95, 2
  %101 = zext i32 %100 to i64
  br label %102

102:                                              ; preds = %110, %99
  %103 = phi i64 [ 1, %99 ], [ %111, %110 ]
  br label %104

104:                                              ; preds = %104, %102
  %105 = phi i64 [ 1, %102 ], [ %108, %104 ]
  %106 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %103, i64 %105, i64 2
  store i32 -1, ptr %106, align 4, !tbaa !7
  %107 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %103, i64 %105, i64 1
  store i32 -1, ptr %107, align 4, !tbaa !7
  %108 = add nuw nsw i64 %105, 1
  %109 = icmp eq i64 %108, 15
  br i1 %109, label %110, label %104, !llvm.loop !118

110:                                              ; preds = %104
  %111 = add nuw nsw i64 %103, 1
  %112 = icmp eq i64 %111, %101
  br i1 %112, label %113, label %102, !llvm.loop !119

113:                                              ; preds = %110, %98
  %114 = load ptr, ptr @stderr, align 8, !tbaa !42
  %115 = tail call i64 @fwrite(ptr nonnull @.str.20.208, i64 29, i64 1, ptr %114) #28
  %116 = load ptr, ptr @stdout, align 8, !tbaa !42
  tail call void @save_scores(ptr noundef %116, ptr noundef nonnull @input_score) #25
  br label %144

117:                                              ; preds = %134, %97
  %118 = phi i64 [ %135, %134 ], [ 1, %97 ]
  br label %119

119:                                              ; preds = %127, %117
  %120 = phi i64 [ 1, %117 ], [ %132, %127 ]
  %121 = load ptr, ptr @the_scores, align 8, !tbaa !42
  %122 = tail call i32 @feof(ptr noundef %121) #27
  %123 = icmp eq i32 %122, 0
  br i1 %123, label %127, label %124

124:                                              ; preds = %119
  %125 = load ptr, ptr @stderr, align 8, !tbaa !42
  %126 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %125, ptr noundef nonnull @.str.21.209, ptr noundef nonnull @input_score) #29
  tail call void @exit(i32 noundef 1) #24
  unreachable

127:                                              ; preds = %119
  %128 = load ptr, ptr @the_scores, align 8, !tbaa !42
  %129 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %118, i64 %120, i64 2
  %130 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %118, i64 %120, i64 1
  %131 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %128, ptr noundef nonnull @.str.22.210, ptr noundef nonnull %129, ptr noundef nonnull %130) #27
  %132 = add nuw nsw i64 %120, 1
  %133 = icmp eq i64 %132, 15
  br i1 %133, label %134, label %119, !llvm.loop !120

134:                                              ; preds = %127
  %135 = add nuw nsw i64 %118, 1
  %136 = load i32, ptr @num_games, align 4, !tbaa !7
  %137 = sext i32 %136 to i64
  %138 = icmp sgt i64 %118, %137
  br i1 %138, label %139, label %117, !llvm.loop !121

139:                                              ; preds = %134
  %140 = load ptr, ptr @the_scores, align 8, !tbaa !42
  br label %141

141:                                              ; preds = %139, %97
  %142 = phi ptr [ %140, %139 ], [ %93, %97 ]
  %143 = tail call i32 @fclose(ptr noundef %142) #25
  br label %144

144:                                              ; preds = %141, %113
  %145 = phi i32 [ 0, %113 ], [ 1, %141 ]
  store i32 %145, ptr @current_with_disk, align 4, !tbaa !7
  tail call void @compute_team_info() #25
  tail call void @sort_all() #27
  %146 = load i32, ptr @terminate, align 4, !tbaa !7
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %156

148:                                              ; preds = %148, %144
  %149 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %150 = icmp eq i32 %149, 0
  %151 = load ptr, ptr @stdout, align 8, !tbaa !42
  %152 = load ptr, ptr @stdin, align 8
  %153 = select i1 %150, ptr %152, ptr %85
  tail call void @display_main_menu(ptr noundef %151, ptr noundef %153) #27
  %154 = load i32, ptr @terminate, align 4, !tbaa !7
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %148, label %156, !llvm.loop !122

156:                                              ; preds = %148, %144
  %157 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %158 = icmp eq i32 %157, 0
  br i1 %158, label %161, label %159

159:                                              ; preds = %156
  %160 = tail call i32 @fclose(ptr noundef %85) #25
  br label %161

161:                                              ; preds = %159, %156
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #21

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #22

attributes #0 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #3 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nofree norecurse nosync nounwind optsize memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #9 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { mustprogress nofree nosync nounwind optsize willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { noreturn nounwind optsize }
attributes #25 = { optsize }
attributes #26 = { nounwind optsize willreturn memory(read) }
attributes #27 = { nounwind optsize }
attributes #28 = { cold }
attributes #29 = { cold optsize }

!llvm.ident = !{!0, !0, !0, !0}
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
!11 = distinct !{!11, !12, !13, !14}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.isvectorized", i32 1}
!14 = !{!"llvm.loop.unroll.runtime.disable"}
!15 = distinct !{!15, !12, !13, !14}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = !{!23, !8, i64 0}
!23 = !{!"info", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20}
!24 = distinct !{!24, !12}
!25 = !{!23, !8, i64 8}
!26 = !{!23, !8, i64 4}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = !{!31, !31, i64 0}
!31 = !{!"double", !9, i64 0}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = !{!23, !8, i64 12}
!39 = !{!23, !8, i64 16}
!40 = distinct !{!40, !12}
!41 = distinct !{!41, !12}
!42 = !{!43, !43, i64 0}
!43 = !{!"any pointer", !9, i64 0}
!44 = distinct !{!44, !12}
!45 = !{!9, !9, i64 0}
!46 = distinct !{!46, !12}
!47 = distinct !{!47, !12}
!48 = distinct !{!48, !12}
!49 = distinct !{!49, !12}
!50 = distinct !{!50, !12}
!51 = distinct !{!51, !12}
!52 = distinct !{!52, !12}
!53 = distinct !{!53, !12}
!54 = distinct !{!54, !12}
!55 = distinct !{!55, !12}
!56 = distinct !{!56, !12}
!57 = distinct !{!57, !12}
!58 = distinct !{!58, !12}
!59 = distinct !{!59, !12}
!60 = distinct !{!60, !12}
!61 = distinct !{!61, !12}
!62 = distinct !{!62, !12}
!63 = distinct !{!63, !12}
!64 = distinct !{!64, !12}
!65 = distinct !{!65, !12}
!66 = !{i32 0, i32 2}
!67 = distinct !{!67, !12}
!68 = distinct !{!68, !12}
!69 = distinct !{!69, !12}
!70 = distinct !{!70, !12}
!71 = distinct !{!71, !12}
!72 = distinct !{!72, !12}
!73 = distinct !{!73, !12}
!74 = distinct !{!74, !12}
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
!98 = distinct !{!98, !12}
!99 = distinct !{!99, !12}
!100 = distinct !{!100, !12}
!101 = distinct !{!101, !12}
!102 = distinct !{!102, !12}
!103 = distinct !{!103, !12}
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
!117 = distinct !{!117, !12, !13, !14}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
!121 = distinct !{!121, !12}
!122 = distinct !{!122, !12}
