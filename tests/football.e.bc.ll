; ModuleID = 'football.e.bc.ll'
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
@common_teams = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
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
@common_games = internal unnamed_addr global [29 x %struct.info] zeroinitializer, align 16
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
@got_unused_responce = internal unnamed_addr global i1 false, align 4
@preseason = internal unnamed_addr global i1 false, align 4
@terminate = internal unnamed_addr global i1 false, align 4
@team = internal global [30 x [2 x [15 x i8]]] [[2 x [15 x i8]] [[15 x i8] c"error\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"   \00\00\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"min\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Minnesota\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"atl\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Atlanta\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"chi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Chicago\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"dal\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Dallas\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"det\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Detroit\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Green Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ram\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Rams\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"no\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New Orleans\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"gia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Giants\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"phi\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Philadelphia\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pho\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Phoenix\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sf\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Francisco\00\00"], [2 x [15 x i8]] [[15 x i8] c"tb\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Tampa Bay\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"was\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Washington\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"buf\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Buffalo\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cin\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cincinnati\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"cle\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Cleveland\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"den\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Denver\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"hou\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Houston\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ind\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Indianapolis\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"kc\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Kansas City\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"rai\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"L.A. Raiders\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"mia\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Miami\00\00\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"ne\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"New England\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"jet\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"N.Y. Jets\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"pit\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Pittsburgh\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sd\00\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"San Diego\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"sea\00\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"Seattle\00\00\00\00\00\00\00\00"], [2 x [15 x i8]] [[15 x i8] c"none\00\00\00\00\00\00\00\00\00\00\00", [15 x i8] c"None\00\00\00\00\00\00\00\00\00\00\00"]], align 16
@divisions = internal unnamed_addr constant [29 x [2 x i32]] [[2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 1], [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 2], [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] zeroinitializer, [2 x i32] [i32 0, i32 2], [2 x i32] [i32 0, i32 1], [2 x i32] zeroinitializer, [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 0], [2 x i32] [i32 1, i32 1], [2 x i32] [i32 1, i32 2], [2 x i32] [i32 1, i32 2]], align 16
@nfc_wild_card1 = internal unnamed_addr global i32 0, align 4
@nfc_wild_card2 = internal unnamed_addr global i32 0, align 4
@nfc_wild_card3 = internal unnamed_addr global i32 0, align 4
@afc_wild_card1 = internal unnamed_addr global i32 0, align 4
@afc_wild_card2 = internal unnamed_addr global i32 0, align 4
@afc_wild_card3 = internal unnamed_addr global i32 0, align 4
@nfc_east_champ = internal unnamed_addr global i32 0, align 4
@nfc_central_champ = internal unnamed_addr global i32 0, align 4
@nfc_west_champ = internal unnamed_addr global i32 0, align 4
@afc_east_champ = internal unnamed_addr global i32 0, align 4
@afc_central_champ = internal unnamed_addr global i32 0, align 4
@afc_west_champ = internal unnamed_addr global i32 0, align 4
@.str.143 = private unnamed_addr constant [17 x i8] c"No such team %s\0A\00", align 1
@team_plays = internal unnamed_addr global [29 x [29 x i32]] zeroinitializer, align 16
@team_info = internal unnamed_addr global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_conf = internal unnamed_addr global [29 x %struct.info] zeroinitializer, align 16
@team_info_wi_div = internal unnamed_addr global [29 x %struct.info] zeroinitializer, align 16
@h_to_h_stats = internal unnamed_addr global [29 x [29 x %struct.info]] zeroinitializer, align 16
@num_games = internal unnamed_addr global i32 0, align 4
@sched = internal unnamed_addr global [18 x [15 x [3 x i32]]] zeroinitializer, align 16
@scores = internal global [19 x [15 x [3 x i32]]] zeroinitializer, align 16
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.164 = private unnamed_addr constant [71 x i8] c"Error in opponent for %s(%d). Expected %s(%d), Found %s(%d). Week #%d\0A\00", align 1
@.str.2.165 = private unnamed_addr constant [60 x i8] c"%s(%d) not found yet: team: %s(%d); week# %d; opp. str: %s\0A\00", align 1
@.str.3.166 = private unnamed_addr constant [67 x i8] c"%s(%d) has opponent %s(%d), but wants %s(%d); \0A          week# %d\0A\00", align 1
@.str.4.167 = private unnamed_addr constant [37 x i8] c"ERROR: Week %d, to many games seen.\0A\00", align 1
@.str.5.170 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.6.171 = private unnamed_addr constant [33 x i8] c"Can not write to %s. Not saved.\0A\00", align 1
@.str.7.172 = private unnamed_addr constant [7 x i8] c" %d %d\00", align 1
@the_scores = internal unnamed_addr global ptr null, align 8
@.str.9 = private unnamed_addr constant [14 x i8] c"Saved in %s.\0A\00", align 1
@current_with_disk = internal unnamed_addr global i32 0, align 4
@in_fileP = internal unnamed_addr global i32 0, align 4
@standings = internal global [29 x i32] zeroinitializer, align 16
@abs_standings = internal global [29 x i32] zeroinitializer, align 16
@conf_standings = internal global [29 x i32] zeroinitializer, align 16
@defence_ranks_nfl = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@defence_ranks = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@offence_ranks_nfl = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@offence_ranks = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@net_ranks_nfl = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@net_ranks = internal unnamed_addr global [29 x i32] zeroinitializer, align 16
@.str.10 = private unnamed_addr constant [3 x i8] c"-p\00", align 1
@iyear = internal unnamed_addr global i32 0, align 4
@.str.11.195 = private unnamed_addr constant [67 x i8] c"Usage: stats [-p] <yy> [input-file]\0A   <yy> is 2 digit year code.\0A\00", align 1
@.str.12.198 = private unnamed_addr constant [3 x i8] c"sl\00", align 1
@.str.13.199 = private unnamed_addr constant [10 x i8] c"St. Louis\00", align 1
@inp_sched = internal global [101 x i8] zeroinitializer, align 16
@.str.14.200 = private unnamed_addr constant [14 x i8] c"data/sched.19\00", align 1
@.str.15.201 = private unnamed_addr constant [5 x i8] c".pre\00", align 1
@.str.16.202 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@schedule = internal unnamed_addr global ptr null, align 8
@.str.17.203 = private unnamed_addr constant [25 x i8] c"ERROR: Can not open %s.\0A\00", align 1
@.str.18.204 = private unnamed_addr constant [36 x i8] c"ERROR: Can not open input file %s.\0A\00", align 1
@input_score = internal global [101 x i8] zeroinitializer, align 16
@.str.19.207 = private unnamed_addr constant [15 x i8] c"data/scores.19\00", align 1
@.str.20.208 = private unnamed_addr constant [30 x i8] c"No score file. Creating one.\0A\00", align 1
@stdout = external local_unnamed_addr global ptr, align 8
@.str.21.209 = private unnamed_addr constant [49 x i8] c"ERROR: %s is not a legally formated score file.\0A\00", align 1
@.str.22.210 = private unnamed_addr constant [6 x i8] c"%d %d\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8

; Function Attrs: nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca [18 x i32], align 16
  %4 = alloca [10 x i8], align 1
  br label %5

5:                                                ; preds = %5, %2
  %6 = phi i64 [ 0, %2 ], [ %18, %5 ]
  %7 = phi <4 x i32> [ <i32 1, i32 2, i32 3, i32 4>, %2 ], [ %19, %5 ]
  %8 = or i64 %6, 1
  %9 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %8
  store <4 x i32> %7, ptr %9, align 4, !tbaa !7
  %10 = getelementptr inbounds [29 x i32], ptr @abs_standings, i64 0, i64 %8
  store <4 x i32> %7, ptr %10, align 4, !tbaa !7
  %11 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %8
  store <4 x i32> %7, ptr %11, align 4, !tbaa !7
  %12 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %8
  store <4 x i32> %7, ptr %12, align 4, !tbaa !7
  %13 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %8
  store <4 x i32> %7, ptr %13, align 4, !tbaa !7
  %14 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %8
  store <4 x i32> %7, ptr %14, align 4, !tbaa !7
  %15 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %8
  store <4 x i32> %7, ptr %15, align 4, !tbaa !7
  %16 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %8
  store <4 x i32> %7, ptr %16, align 4, !tbaa !7
  %17 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %8
  store <4 x i32> %7, ptr %17, align 4, !tbaa !7
  %18 = add nuw nsw i64 %6, 4
  %19 = add <4 x i32> %7, <i32 4, i32 4, i32 4, i32 4>
  %20 = icmp eq i64 %18, 28
  br i1 %20, label %21, label %5, !llvm.loop !11

21:                                               ; preds = %5
  %22 = icmp slt i32 %0, 2
  br i1 %22, label %77, label %23

23:                                               ; preds = %21
  %24 = getelementptr inbounds ptr, ptr %1, i64 1
  %25 = load ptr, ptr %24, align 8, !tbaa !15
  %26 = tail call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %25, ptr noundef nonnull dereferenceable(3) @.str.10) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %50

28:                                               ; preds = %23
  store i1 true, ptr @preseason, align 4
  %29 = getelementptr inbounds ptr, ptr %1, i64 2
  %30 = load ptr, ptr %29, align 8, !tbaa !15
  %31 = load i8, ptr %30, align 1, !tbaa !17
  %32 = icmp eq i8 %31, 0
  br i1 %32, label %47, label %33

33:                                               ; preds = %33, %28
  %34 = phi i8 [ %45, %33 ], [ %31, %28 ]
  %35 = phi ptr [ %44, %33 ], [ %30, %28 ]
  %36 = phi i32 [ %43, %33 ], [ 0, %28 ]
  %37 = sext i8 %34 to i32
  %38 = mul nsw i32 %36, 10
  %39 = add i8 %34, -48
  %40 = icmp ult i8 %39, 10
  %41 = add nsw i32 %37, -48
  %42 = select i1 %40, i32 %41, i32 0
  %43 = add nsw i32 %42, %38
  %44 = getelementptr inbounds i8, ptr %35, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !17
  %46 = icmp eq i8 %45, 0
  br i1 %46, label %47, label %33, !llvm.loop !18

47:                                               ; preds = %33, %28
  %48 = phi i32 [ 0, %28 ], [ %43, %33 ]
  store i32 %48, ptr @iyear, align 4, !tbaa !7
  store i32 5, ptr @num_games, align 4, !tbaa !7
  %49 = icmp eq i32 %0, 4
  br i1 %49, label %80, label %75

50:                                               ; preds = %23
  %51 = icmp ult i32 %0, 4
  br i1 %51, label %52, label %77

52:                                               ; preds = %50
  %53 = load i8, ptr %25, align 1, !tbaa !17
  %54 = icmp eq i8 %53, 0
  br i1 %54, label %69, label %55

55:                                               ; preds = %55, %52
  %56 = phi i8 [ %67, %55 ], [ %53, %52 ]
  %57 = phi ptr [ %66, %55 ], [ %25, %52 ]
  %58 = phi i32 [ %65, %55 ], [ 0, %52 ]
  %59 = sext i8 %56 to i32
  %60 = mul nsw i32 %58, 10
  %61 = add i8 %56, -48
  %62 = icmp ult i8 %61, 10
  %63 = add nsw i32 %59, -48
  %64 = select i1 %62, i32 %63, i32 0
  %65 = add nsw i32 %64, %60
  %66 = getelementptr inbounds i8, ptr %57, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !17
  %68 = icmp eq i8 %67, 0
  br i1 %68, label %69, label %55, !llvm.loop !18

69:                                               ; preds = %55, %52
  %70 = phi i32 [ 0, %52 ], [ %65, %55 ]
  store i32 %70, ptr @iyear, align 4, !tbaa !7
  %71 = add i32 %70, -78
  %72 = icmp ult i32 %71, 12
  %73 = select i1 %72, i32 16, i32 17
  store i32 %73, ptr @num_games, align 4, !tbaa !7
  %74 = icmp eq i32 %0, 3
  br i1 %74, label %80, label %84

75:                                               ; preds = %47
  %76 = icmp ult i32 %0, 5
  br i1 %76, label %84, label %77

77:                                               ; preds = %75, %50, %21
  %78 = load ptr, ptr @stderr, align 8, !tbaa !15
  %79 = tail call i64 @fwrite(ptr nonnull @.str.11.195, i64 66, i64 1, ptr %78) #18
  tail call void @exit(i32 noundef 1) #19
  unreachable

80:                                               ; preds = %69, %47
  %81 = phi i32 [ 3, %47 ], [ 2, %69 ]
  %82 = phi i32 [ %48, %47 ], [ %70, %69 ]
  %83 = phi ptr [ %30, %47 ], [ %25, %69 ]
  store i32 %81, ptr @in_fileP, align 4, !tbaa !7
  br label %84

84:                                               ; preds = %80, %75, %69
  %85 = phi i32 [ %48, %75 ], [ %70, %69 ], [ %82, %80 ]
  %86 = phi ptr [ %30, %75 ], [ %25, %69 ], [ %83, %80 ]
  %87 = icmp slt i32 %85, 88
  br i1 %87, label %88, label %89

88:                                               ; preds = %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(3) getelementptr inbounds ([30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 11), ptr noundef nonnull align 1 dereferenceable(3) @.str.12.198, i64 3, i1 false) #20
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(10) getelementptr inbounds ([30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 11, i64 1), ptr noundef nonnull align 1 dereferenceable(10) @.str.13.199, i64 10, i1 false) #20
  br label %89

89:                                               ; preds = %88, %84
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(14) @inp_sched, ptr noundef nonnull align 1 dereferenceable(14) @.str.14.200, i64 14, i1 false) #20
  %90 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @inp_sched, ptr noundef nonnull dereferenceable(1) %86) #20
  %91 = load i1, ptr @preseason, align 4
  br i1 %91, label %92, label %95

92:                                               ; preds = %89
  %93 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @inp_sched)
  %94 = getelementptr inbounds i8, ptr @inp_sched, i64 %93
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %94, ptr noundef nonnull align 1 dereferenceable(5) @.str.15.201, i64 5, i1 false)
  br label %95

95:                                               ; preds = %92, %89
  %96 = tail call noalias ptr @fopen(ptr noundef nonnull @inp_sched, ptr noundef nonnull @.str.16.202) #21
  store ptr %96, ptr @schedule, align 8, !tbaa !15
  %97 = icmp eq ptr %96, null
  br i1 %97, label %98, label %101

98:                                               ; preds = %95
  %99 = load ptr, ptr @stderr, align 8, !tbaa !15
  %100 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %99, ptr noundef nonnull @.str.17.203, ptr noundef nonnull @inp_sched) #22
  tail call void @exit(i32 noundef 1) #19
  unreachable

101:                                              ; preds = %95
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #23
  %102 = load i32, ptr @num_games, align 4, !tbaa !7
  %103 = icmp slt i32 %102, 1
  br i1 %103, label %107, label %104

104:                                              ; preds = %101
  %105 = add nuw nsw i32 %102, 1
  %106 = zext i32 %105 to i64
  br label %109

107:                                              ; preds = %109, %101
  %108 = getelementptr inbounds i8, ptr %4, i64 1
  br label %114

109:                                              ; preds = %109, %104
  %110 = phi i64 [ 1, %104 ], [ %112, %109 ]
  %111 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %110
  store i32 1, ptr %111, align 4, !tbaa !7
  %112 = add nuw nsw i64 %110, 1
  %113 = icmp eq i64 %112, %106
  br i1 %113, label %107, label %109, !llvm.loop !19

114:                                              ; preds = %253, %107
  %115 = phi i32 [ %102, %107 ], [ %254, %253 ]
  %116 = phi i64 [ 1, %107 ], [ %256, %253 ]
  %117 = phi i32 [ 0, %107 ], [ %255, %253 ]
  %118 = icmp slt i32 %115, 1
  br i1 %118, label %253, label %119

119:                                              ; preds = %114
  %120 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %116, i64 1
  %121 = trunc i64 %116 to i32
  br label %122

122:                                              ; preds = %247, %119
  %123 = phi i64 [ 1, %119 ], [ %249, %247 ]
  %124 = phi i32 [ %117, %119 ], [ %248, %247 ]
  br label %126

125:                                              ; preds = %132, %126
  store i1 %129, ptr @white_space.commentP, align 4
  br label %135

126:                                              ; preds = %135, %122
  %127 = call i32 @getc(ptr noundef nonnull %96) #21
  %128 = trunc i32 %127 to i8
  %129 = icmp eq i8 %128, 37
  br i1 %129, label %125, label %130

130:                                              ; preds = %126
  %131 = load i1, ptr @white_space.commentP, align 4
  br i1 %131, label %132, label %134

132:                                              ; preds = %130
  %133 = icmp eq i8 %128, 10
  br i1 %133, label %125, label %135

134:                                              ; preds = %130
  switch i8 %128, label %140 [
    i8 32, label %135
    i8 10, label %135
    i8 9, label %135
  ]

135:                                              ; preds = %134, %134, %134, %132, %125
  br label %126, !llvm.loop !20

136:                                              ; preds = %143
  %137 = load i1, ptr @white_space.commentP, align 4
  br i1 %137, label %138, label %140

138:                                              ; preds = %136
  %.lcssa5 = phi i64 [ %145, %136 ]
  %.lcssa3 = phi i8 [ %147, %136 ]
  %.lcssa1 = phi i1 [ %148, %136 ]
  %139 = icmp eq i8 %.lcssa3, 10
  br i1 %139, label %149, label %150

140:                                              ; preds = %136, %134
  %141 = phi i64 [ %145, %136 ], [ 0, %134 ]
  %142 = phi i8 [ %147, %136 ], [ %128, %134 ]
  switch i8 %142, label %143 [
    i8 32, label %150
    i8 10, label %150
    i8 9, label %150
  ]

143:                                              ; preds = %140
  %144 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 %141
  store i8 %142, ptr %144, align 1, !tbaa !17
  %145 = add nuw i64 %141, 1
  %146 = call i32 @getc(ptr noundef nonnull %96) #21
  %147 = trunc i32 %146 to i8
  %148 = icmp eq i8 %147, 37
  br i1 %148, label %149, label %136, !llvm.loop !21

149:                                              ; preds = %143, %138
  %.lcssa4 = phi i64 [ %145, %143 ], [ %.lcssa5, %138 ]
  %.lcssa = phi i1 [ %148, %143 ], [ %.lcssa1, %138 ]
  store i1 %.lcssa, ptr @white_space.commentP, align 4
  br label %150

150:                                              ; preds = %149, %140, %140, %140, %138
  %151 = phi i64 [ %.lcssa5, %138 ], [ %.lcssa4, %149 ], [ %141, %140 ], [ %141, %140 ], [ %141, %140 ]
  %152 = and i64 %151, 4294967295
  %153 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 %152
  store i8 0, ptr %153, align 1, !tbaa !17
  %154 = load i8, ptr %4, align 1, !tbaa !17
  %155 = icmp eq i8 %154, 64
  %156 = load ptr, ptr @stderr, align 8, !tbaa !15
  br i1 %155, label %159, label %157

157:                                              ; preds = %150
  %158 = call fastcc i32 @find_name(ptr noundef %156, ptr noundef nonnull %4) #21
  br label %161

159:                                              ; preds = %150
  %160 = call fastcc i32 @find_name(ptr noundef %156, ptr noundef nonnull %108) #21
  br label %161

161:                                              ; preds = %159, %157
  %162 = phi i32 [ %158, %157 ], [ %121, %159 ]
  %163 = phi i32 [ %121, %157 ], [ %160, %159 ]
  %164 = phi i64 [ 2, %157 ], [ 1, %159 ]
  %165 = phi i32 [ %158, %157 ], [ %160, %159 ]
  %166 = phi i64 [ 1, %157 ], [ 2, %159 ]
  %167 = sext i32 %165 to i64
  %168 = icmp sgt i64 %116, %167
  br i1 %168, label %169, label %206

169:                                              ; preds = %161
  %170 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %123
  %171 = load i32, ptr %170, align 4, !tbaa !7
  %172 = icmp sgt i32 %171, 1
  br i1 %172, label %173, label %198

173:                                              ; preds = %169
  %174 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %167, i64 1
  %175 = add nuw nsw i32 %171, 2
  %176 = trunc i64 %123 to i32
  br label %177

177:                                              ; preds = %193, %173
  %178 = phi i32 [ 1, %173 ], [ %196, %193 ]
  %179 = phi i32 [ %124, %173 ], [ %194, %193 ]
  %180 = sext i32 %178 to i64
  %181 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %180, i64 %164
  %182 = load i32, ptr %181, align 4, !tbaa !7
  %183 = zext i32 %182 to i64
  %184 = icmp eq i64 %116, %183
  br i1 %184, label %185, label %193

185:                                              ; preds = %177
  %186 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %180, i64 %166
  %187 = load i32, ptr %186, align 4, !tbaa !7
  %188 = icmp eq i32 %187, %165
  br i1 %188, label %193, label %189

189:                                              ; preds = %185
  %190 = sext i32 %187 to i64
  %191 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %190, i64 1
  %192 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.1.164, ptr noundef nonnull %120, i32 noundef %121, ptr noundef nonnull %191, i32 noundef %187, ptr noundef nonnull %174, i32 noundef %165, i32 noundef %176) #21
  br label %193

193:                                              ; preds = %189, %185, %177
  %194 = phi i32 [ %179, %177 ], [ 1, %189 ], [ %179, %185 ]
  %195 = phi i32 [ %178, %177 ], [ %175, %189 ], [ %175, %185 ]
  %196 = add nsw i32 %195, 1
  %197 = icmp slt i32 %196, %171
  br i1 %197, label %177, label %198, !llvm.loop !22

198:                                              ; preds = %193, %169
  %199 = phi i32 [ %124, %169 ], [ %194, %193 ]
  %200 = phi i32 [ 1, %169 ], [ %196, %193 ]
  %201 = icmp eq i32 %200, %171
  br i1 %201, label %202, label %247

202:                                              ; preds = %198
  %203 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %167, i64 1
  %204 = trunc i64 %123 to i32
  %205 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2.165, ptr noundef nonnull %203, i32 noundef %165, ptr noundef nonnull %120, i32 noundef %121, i32 noundef %204, ptr noundef nonnull %4) #21
  br label %247

206:                                              ; preds = %161
  %207 = icmp eq i32 %165, 29
  br i1 %207, label %247, label %208

208:                                              ; preds = %206
  %209 = getelementptr inbounds [18 x i32], ptr %3, i64 0, i64 %123
  %210 = load i32, ptr %209, align 4, !tbaa !7
  %211 = icmp sgt i32 %210, 1
  br i1 %211, label %212, label %242

212:                                              ; preds = %208
  %213 = zext i32 %210 to i64
  br label %214

214:                                              ; preds = %214, %212
  %215 = phi i64 [ 1, %212 ], [ %227, %214 ]
  %216 = phi i32 [ 0, %212 ], [ %226, %214 ]
  %217 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %215, i64 1
  %218 = load i32, ptr %217, align 4, !tbaa !7
  %219 = zext i32 %218 to i64
  %220 = icmp eq i64 %116, %219
  %221 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %215, i64 2
  %222 = load i32, ptr %221, align 4, !tbaa !7
  %223 = select i1 %220, i32 %222, i32 %216
  %224 = zext i32 %222 to i64
  %225 = icmp eq i64 %116, %224
  %226 = select i1 %225, i32 %218, i32 %223
  %227 = add nuw nsw i64 %215, 1
  %228 = icmp eq i64 %227, %213
  br i1 %228, label %229, label %214, !llvm.loop !23

229:                                              ; preds = %214
  %.lcssa6 = phi i32 [ %226, %214 ]
  %230 = icmp eq i32 %.lcssa6, 0
  br i1 %230, label %237, label %231

231:                                              ; preds = %229
  %232 = sext i32 %.lcssa6 to i64
  %233 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %232, i64 1
  %234 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %167, i64 1
  %235 = trunc i64 %123 to i32
  %236 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3.166, ptr noundef nonnull %120, i32 noundef %121, ptr noundef nonnull %233, i32 noundef %.lcssa6, ptr noundef nonnull %234, i32 noundef %165, i32 noundef %235) #21
  br label %247

237:                                              ; preds = %229
  %238 = icmp sgt i32 %210, 14
  br i1 %238, label %239, label %242

239:                                              ; preds = %237
  %240 = trunc i64 %123 to i32
  %241 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4.167, i32 noundef %240) #21
  br label %247

242:                                              ; preds = %237, %208
  %243 = sext i32 %210 to i64
  %244 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %243, i64 1
  store i32 %162, ptr %244, align 4, !tbaa !7
  %245 = getelementptr inbounds [15 x [3 x i32]], ptr @sched, i64 %123, i64 %243, i64 2
  store i32 %163, ptr %245, align 4, !tbaa !7
  %246 = add nsw i32 %210, 1
  store i32 %246, ptr %209, align 4, !tbaa !7
  br label %247

247:                                              ; preds = %242, %239, %231, %206, %202, %198
  %248 = phi i32 [ 1, %202 ], [ %199, %198 ], [ %124, %206 ], [ 1, %231 ], [ 1, %239 ], [ %124, %242 ]
  %249 = add nuw nsw i64 %123, 1
  %250 = load i32, ptr @num_games, align 4, !tbaa !7
  %251 = zext i32 %250 to i64
  %252 = icmp ult i64 %123, %251
  br i1 %252, label %122, label %253, !llvm.loop !24

253:                                              ; preds = %247, %114
  %254 = phi i32 [ 0, %114 ], [ %250, %247 ]
  %255 = phi i32 [ %117, %114 ], [ %248, %247 ]
  %256 = add nuw nsw i64 %116, 1
  %257 = icmp eq i64 %256, 29
  br i1 %257, label %258, label %114, !llvm.loop !25

258:                                              ; preds = %253
  %.lcssa7 = phi i32 [ %255, %253 ]
  %259 = icmp eq i32 %.lcssa7, 0
  br i1 %259, label %261, label %260

260:                                              ; preds = %258
  call void @exit(i32 noundef 1) #19
  unreachable

261:                                              ; preds = %258
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %3) #23
  %262 = load ptr, ptr @schedule, align 8, !tbaa !15
  %263 = tail call i32 @fclose(ptr noundef %262) #21
  %264 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %265 = icmp eq i32 %264, 0
  br i1 %265, label %279, label %266

266:                                              ; preds = %261
  %267 = zext i32 %264 to i64
  %268 = getelementptr inbounds ptr, ptr %1, i64 %267
  %269 = load ptr, ptr %268, align 8, !tbaa !15
  %270 = tail call noalias ptr @fopen(ptr noundef %269, ptr noundef nonnull @.str.16.202) #21
  %271 = icmp eq ptr %270, null
  br i1 %271, label %272, label %279

272:                                              ; preds = %266
  %273 = load ptr, ptr @stderr, align 8, !tbaa !15
  %274 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %275 = zext i32 %274 to i64
  %276 = getelementptr inbounds ptr, ptr %1, i64 %275
  %277 = load ptr, ptr %276, align 8, !tbaa !15
  %278 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %273, ptr noundef nonnull @.str.18.204, ptr noundef %277) #22
  tail call void @exit(i32 noundef 1) #19
  unreachable

279:                                              ; preds = %266, %261
  %280 = phi ptr [ %270, %266 ], [ undef, %261 ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(15) @input_score, ptr noundef nonnull align 1 dereferenceable(15) @.str.19.207, i64 15, i1 false) #20
  %281 = tail call ptr @strcat(ptr noundef nonnull dereferenceable(1) @input_score, ptr noundef nonnull dereferenceable(1) %86) #20
  %282 = load i1, ptr @preseason, align 4
  br i1 %282, label %283, label %286

283:                                              ; preds = %279
  %284 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @input_score)
  %285 = getelementptr inbounds i8, ptr @input_score, i64 %284
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %285, ptr noundef nonnull align 1 dereferenceable(5) @.str.15.201, i64 5, i1 false)
  br label %286

286:                                              ; preds = %283, %279
  %287 = tail call noalias ptr @fopen(ptr noundef nonnull @input_score, ptr noundef nonnull @.str.16.202) #21
  store ptr %287, ptr @the_scores, align 8, !tbaa !15
  %288 = icmp eq ptr %287, null
  br i1 %288, label %289, label %308

289:                                              ; preds = %286
  %290 = load i32, ptr @num_games, align 4, !tbaa !7
  %291 = add nuw nsw i32 %290, 2
  %292 = zext i32 %291 to i64
  br label %293

293:                                              ; preds = %301, %289
  %294 = phi i64 [ 1, %289 ], [ %302, %301 ]
  br label %295

295:                                              ; preds = %295, %293
  %296 = phi i64 [ 1, %293 ], [ %299, %295 ]
  %297 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %294, i64 %296, i64 2
  store i32 -1, ptr %297, align 4, !tbaa !7
  %298 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %294, i64 %296, i64 1
  store i32 -1, ptr %298, align 4, !tbaa !7
  %299 = add nuw nsw i64 %296, 1
  %300 = icmp eq i64 %299, 15
  br i1 %300, label %301, label %295, !llvm.loop !26

301:                                              ; preds = %295
  %302 = add nuw nsw i64 %294, 1
  %303 = icmp eq i64 %302, %292
  br i1 %303, label %304, label %293, !llvm.loop !27

304:                                              ; preds = %301
  %305 = load ptr, ptr @stderr, align 8, !tbaa !15
  %306 = tail call i64 @fwrite(ptr nonnull @.str.20.208, i64 29, i64 1, ptr %305) #18
  %307 = load ptr, ptr @stdout, align 8, !tbaa !15
  tail call fastcc void @save_scores(ptr noundef %307) #21
  br label %333

308:                                              ; preds = %325, %286
  %309 = phi i64 [ %326, %325 ], [ 1, %286 ]
  br label %310

310:                                              ; preds = %318, %308
  %311 = phi i64 [ 1, %308 ], [ %323, %318 ]
  %312 = load ptr, ptr @the_scores, align 8, !tbaa !15
  %313 = tail call i32 @feof(ptr noundef %312) #20
  %314 = icmp eq i32 %313, 0
  br i1 %314, label %318, label %315

315:                                              ; preds = %310
  %316 = load ptr, ptr @stderr, align 8, !tbaa !15
  %317 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %316, ptr noundef nonnull @.str.21.209, ptr noundef nonnull @input_score) #22
  tail call void @exit(i32 noundef 1) #19
  unreachable

318:                                              ; preds = %310
  %319 = load ptr, ptr @the_scores, align 8, !tbaa !15
  %320 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %309, i64 %311, i64 2
  %321 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %309, i64 %311, i64 1
  %322 = tail call i32 (ptr, ptr, ...) @__isoc99_fscanf(ptr noundef %319, ptr noundef nonnull @.str.22.210, ptr noundef nonnull %320, ptr noundef nonnull %321) #20
  %323 = add nuw nsw i64 %311, 1
  %324 = icmp eq i64 %323, 15
  br i1 %324, label %325, label %310, !llvm.loop !28

325:                                              ; preds = %318
  %326 = add nuw nsw i64 %309, 1
  %327 = load i32, ptr @num_games, align 4, !tbaa !7
  %328 = zext i32 %327 to i64
  %329 = icmp ugt i64 %309, %328
  br i1 %329, label %330, label %308, !llvm.loop !29

330:                                              ; preds = %325
  %331 = load ptr, ptr @the_scores, align 8, !tbaa !15
  %332 = tail call i32 @fclose(ptr noundef %331) #21
  br label %333

333:                                              ; preds = %330, %304
  %334 = phi i32 [ 0, %304 ], [ 1, %330 ]
  store i32 %334, ptr @current_with_disk, align 4, !tbaa !7
  tail call fastcc void @compute_team_info() #21
  tail call fastcc void @sort_all() #20
  %335 = load i1, ptr @terminate, align 4
  br i1 %335, label %343, label %336

336:                                              ; preds = %336, %333
  %337 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %338 = icmp eq i32 %337, 0
  %339 = load ptr, ptr @stdout, align 8, !tbaa !15
  %340 = load ptr, ptr @stdin, align 8
  %341 = select i1 %338, ptr %340, ptr %280
  tail call fastcc void @display_main_menu(ptr noundef %339, ptr noundef %341) #20
  %342 = load i1, ptr @terminate, align 4
  br i1 %342, label %343, label %336, !llvm.loop !30

343:                                              ; preds = %336, %333
  %344 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %345 = icmp eq i32 %344, 0
  br i1 %345, label %348, label %346

346:                                              ; preds = %343
  %347 = tail call i32 @fclose(ptr noundef %280) #21
  br label %348

348:                                              ; preds = %346, %343
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #4

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcat(ptr noalias noundef returned, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @find_name(ptr nocapture noundef %0, ptr noundef %1) unnamed_addr #8 {
  %3 = alloca [15 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 15, ptr nonnull %3) #23
  br label %4

4:                                                ; preds = %28, %2
  %5 = phi i64 [ 1, %2 ], [ %29, %28 ]
  %6 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %5
  %7 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %5, i64 1
  %8 = call ptr @strcpy(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %7) #20
  %9 = load i8, ptr %3, align 1, !tbaa !17
  %10 = icmp eq i8 %9, 0
  br i1 %10, label %22, label %11

11:                                               ; preds = %18, %4
  %12 = phi i8 [ %20, %18 ], [ %9, %4 ]
  %13 = phi ptr [ %19, %18 ], [ %3, %4 ]
  %14 = add i8 %12, -65
  %15 = icmp ult i8 %14, 26
  br i1 %15, label %16, label %18

16:                                               ; preds = %11
  %17 = add nuw nsw i8 %12, 32
  store i8 %17, ptr %13, align 1, !tbaa !17
  br label %18

18:                                               ; preds = %16, %11
  %19 = getelementptr inbounds i8, ptr %13, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !17
  %21 = icmp eq i8 %20, 0
  br i1 %21, label %22, label %11, !llvm.loop !31

22:                                               ; preds = %18, %4
  %23 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %6, ptr noundef nonnull dereferenceable(1) %1) #17
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %22
  %26 = call i32 @strcmp(ptr noundef nonnull dereferenceable(1) %3, ptr noundef nonnull dereferenceable(1) %1) #17
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %25
  %29 = add nuw nsw i64 %5, 1
  %30 = icmp eq i64 %29, 30
  br i1 %30, label %31, label %4, !llvm.loop !32

31:                                               ; preds = %28
  %32 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.143, ptr noundef %1) #21
  br label %35

33:                                               ; preds = %25, %22
  %.lcssa = phi i64 [ %5, %25 ], [ %5, %22 ]
  %34 = trunc i64 %.lcssa to i32
  br label %35

35:                                               ; preds = %33, %31
  %36 = phi i32 [ 0, %31 ], [ %34, %33 ]
  call void @llvm.lifetime.end.p0(i64 15, ptr nonnull %3) #23
  ret i32 %36
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @save_scores(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call noalias ptr @fopen(ptr noundef nonnull @input_score, ptr noundef nonnull @.str.5.170) #21
  %3 = icmp eq ptr %2, null
  br i1 %3, label %4, label %6

4:                                                ; preds = %1
  %5 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.6.171, ptr noundef nonnull @input_score) #21
  br label %27

6:                                                ; preds = %17, %1
  %7 = phi i64 [ %19, %17 ], [ 1, %1 ]
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi i64 [ 1, %6 ], [ %15, %8 ]
  %10 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %7, i64 %9, i64 2
  %11 = load i32, ptr %10, align 4, !tbaa !7
  %12 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %7, i64 %9, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !7
  %14 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef nonnull %2, ptr noundef nonnull @.str.7.172, i32 noundef %11, i32 noundef %13) #21
  %15 = add nuw nsw i64 %9, 1
  %16 = icmp eq i64 %15, 15
  br i1 %16, label %17, label %8, !llvm.loop !33

17:                                               ; preds = %8
  %18 = tail call i32 @fputc(i32 10, ptr nonnull %2)
  %19 = add nuw nsw i64 %7, 1
  %20 = load i32, ptr @num_games, align 4, !tbaa !7
  %21 = zext i32 %20 to i64
  %22 = icmp ugt i64 %7, %21
  br i1 %22, label %23, label %6, !llvm.loop !34

23:                                               ; preds = %17
  %24 = load ptr, ptr @the_scores, align 8, !tbaa !15
  %25 = tail call i32 @fclose(ptr noundef %24) #21
  %26 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.9, ptr noundef nonnull @input_score) #21
  store i32 1, ptr @current_with_disk, align 4, !tbaa !7
  br label %27

27:                                               ; preds = %23, %4
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @feof(ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: optsize
declare i32 @__isoc99_fscanf(ptr noundef, ptr noundef, ...) local_unnamed_addr #9

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @compute_team_info() unnamed_addr #10 {
  br label %1

1:                                                ; preds = %1, %0
  %2 = phi i64 [ 0, %0 ], [ %6, %1 ]
  %3 = mul nuw nsw i64 %2, 116
  %4 = add nuw nsw i64 %3, 120
  %5 = getelementptr i8, ptr @team_plays, i64 %4
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %5, i8 0, i64 112, i1 false), !tbaa !7
  %6 = add nuw nsw i64 %2, 1
  %7 = icmp eq i64 %6, 28
  br i1 %7, label %13, label %1, !llvm.loop !35

8:                                                ; preds = %23
  %9 = load i32, ptr @num_games, align 4, !tbaa !7
  %10 = icmp slt i32 %9, 1
  br i1 %10, label %222, label %11

11:                                               ; preds = %8
  %12 = zext i32 %9 to i64
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
  br i1 %22, label %23, label %18, !llvm.loop !36

23:                                               ; preds = %18
  %24 = add nuw nsw i64 %14, 1
  %25 = icmp eq i64 %24, 29
  br i1 %25, label %8, label %13, !llvm.loop !37

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
  %50 = load i32, ptr %49, align 4, !tbaa !40
  %51 = add nsw i32 %50, %43
  store i32 %51, ptr %49, align 4, !tbaa !40
  %52 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 3
  %53 = load i32, ptr %52, align 4, !tbaa !38
  %54 = add nsw i32 %53, %43
  store i32 %54, ptr %52, align 4, !tbaa !38
  %55 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 4
  %56 = load i32, ptr %55, align 4, !tbaa !40
  %57 = add nsw i32 %56, %39
  store i32 %57, ptr %55, align 4, !tbaa !40
  %58 = icmp ult i32 %39, %43
  br i1 %58, label %59, label %94

59:                                               ; preds = %45
  %60 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 1
  %61 = load i32, ptr %60, align 4, !tbaa !41
  %62 = add nsw i32 %61, 1
  store i32 %62, ptr %60, align 4, !tbaa !41
  %63 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35
  %64 = load i32, ptr %63, align 4, !tbaa !42
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !42
  %66 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !41
  %68 = add nsw i32 %67, 1
  store i32 %68, ptr %66, align 4, !tbaa !41
  %69 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32
  %70 = load i32, ptr %69, align 4, !tbaa !42
  %71 = add nsw i32 %70, 1
  store i32 %71, ptr %69, align 4, !tbaa !42
  %72 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32
  %73 = load i32, ptr %72, align 8, !tbaa !7
  %74 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35
  %75 = load i32, ptr %74, align 8, !tbaa !7
  %76 = icmp eq i32 %73, %75
  br i1 %76, label %77, label %169

77:                                               ; preds = %59
  %78 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 1
  %79 = load i32, ptr %78, align 4, !tbaa !41
  %80 = add nsw i32 %79, 1
  store i32 %80, ptr %78, align 4, !tbaa !41
  %81 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35
  %82 = load i32, ptr %81, align 4, !tbaa !42
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !42
  %84 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %85 = load i32, ptr %84, align 4, !tbaa !7
  %86 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %87 = load i32, ptr %86, align 4, !tbaa !7
  %88 = icmp eq i32 %85, %87
  br i1 %88, label %89, label %169

89:                                               ; preds = %77
  %90 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 1
  %91 = load i32, ptr %90, align 4, !tbaa !41
  %92 = add nsw i32 %91, 1
  store i32 %92, ptr %90, align 4, !tbaa !41
  %93 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35
  br label %164

94:                                               ; preds = %45
  %95 = icmp ugt i32 %39, %43
  %96 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32
  %97 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35
  br i1 %95, label %98, label %131

98:                                               ; preds = %94
  %99 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32
  %100 = load i32, ptr %99, align 4, !tbaa !42
  %101 = add nsw i32 %100, 1
  store i32 %101, ptr %99, align 4, !tbaa !42
  %102 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 1
  %103 = load i32, ptr %102, align 4, !tbaa !41
  %104 = add nsw i32 %103, 1
  store i32 %104, ptr %102, align 4, !tbaa !41
  %105 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35
  %106 = load i32, ptr %105, align 4, !tbaa !42
  %107 = add nsw i32 %106, 1
  store i32 %107, ptr %105, align 4, !tbaa !42
  %108 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 1
  %109 = load i32, ptr %108, align 4, !tbaa !41
  %110 = add nsw i32 %109, 1
  store i32 %110, ptr %108, align 4, !tbaa !41
  %111 = load i32, ptr %96, align 8, !tbaa !7
  %112 = load i32, ptr %97, align 8, !tbaa !7
  %113 = icmp eq i32 %111, %112
  br i1 %113, label %114, label %169

114:                                              ; preds = %98
  %115 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32
  %116 = load i32, ptr %115, align 4, !tbaa !42
  %117 = add nsw i32 %116, 1
  store i32 %117, ptr %115, align 4, !tbaa !42
  %118 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 1
  %119 = load i32, ptr %118, align 4, !tbaa !41
  %120 = add nsw i32 %119, 1
  store i32 %120, ptr %118, align 4, !tbaa !41
  %121 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %122 = load i32, ptr %121, align 4, !tbaa !7
  %123 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %124 = load i32, ptr %123, align 4, !tbaa !7
  %125 = icmp eq i32 %122, %124
  br i1 %125, label %126, label %169

126:                                              ; preds = %114
  %127 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32
  %128 = load i32, ptr %127, align 4, !tbaa !42
  %129 = add nsw i32 %128, 1
  store i32 %129, ptr %127, align 4, !tbaa !42
  %130 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 1
  br label %164

131:                                              ; preds = %94
  %132 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %32, i32 2
  %133 = load i32, ptr %132, align 4, !tbaa !43
  %134 = add nsw i32 %133, 1
  store i32 %134, ptr %132, align 4, !tbaa !43
  %135 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 2
  %136 = load i32, ptr %135, align 4, !tbaa !43
  %137 = add nsw i32 %136, 1
  store i32 %137, ptr %135, align 4, !tbaa !43
  %138 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %32, i64 %35, i32 2
  %139 = load i32, ptr %138, align 4, !tbaa !43
  %140 = add nsw i32 %139, 1
  store i32 %140, ptr %138, align 4, !tbaa !43
  %141 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %35, i64 %32, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !43
  %143 = add nsw i32 %142, 1
  store i32 %143, ptr %141, align 4, !tbaa !43
  %144 = load i32, ptr %96, align 8, !tbaa !7
  %145 = load i32, ptr %97, align 8, !tbaa !7
  %146 = icmp eq i32 %144, %145
  br i1 %146, label %147, label %169

147:                                              ; preds = %131
  %148 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 2
  %149 = load i32, ptr %148, align 4, !tbaa !43
  %150 = add nsw i32 %149, 1
  store i32 %150, ptr %148, align 4, !tbaa !43
  %151 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 2
  %152 = load i32, ptr %151, align 4, !tbaa !43
  %153 = add nsw i32 %152, 1
  store i32 %153, ptr %151, align 4, !tbaa !43
  %154 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %32, i64 1
  %155 = load i32, ptr %154, align 4, !tbaa !7
  %156 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %35, i64 1
  %157 = load i32, ptr %156, align 4, !tbaa !7
  %158 = icmp eq i32 %155, %157
  br i1 %158, label %159, label %169

159:                                              ; preds = %147
  %160 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %32, i32 2
  %161 = load i32, ptr %160, align 4, !tbaa !43
  %162 = add nsw i32 %161, 1
  store i32 %162, ptr %160, align 4, !tbaa !43
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
  %176 = load i32, ptr %175, align 4, !tbaa !40
  %177 = add nsw i32 %176, %43
  store i32 %177, ptr %175, align 4, !tbaa !40
  %178 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 3
  %179 = load i32, ptr %178, align 4, !tbaa !38
  %180 = add nsw i32 %179, %43
  store i32 %180, ptr %178, align 4, !tbaa !38
  %181 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %35, i32 4
  %182 = load i32, ptr %181, align 4, !tbaa !40
  %183 = add nsw i32 %182, %39
  store i32 %183, ptr %181, align 4, !tbaa !40
  %184 = icmp eq i32 %171, %170
  br i1 %184, label %185, label %216

185:                                              ; preds = %169
  %186 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 3
  %187 = load i32, ptr %186, align 4, !tbaa !38
  %188 = add nsw i32 %187, %39
  store i32 %188, ptr %186, align 4, !tbaa !38
  %189 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %32, i32 4
  %190 = load i32, ptr %189, align 4, !tbaa !40
  %191 = add nsw i32 %190, %43
  store i32 %191, ptr %189, align 4, !tbaa !40
  %192 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 3
  %193 = load i32, ptr %192, align 4, !tbaa !38
  %194 = add nsw i32 %193, %43
  store i32 %194, ptr %192, align 4, !tbaa !38
  %195 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %35, i32 4
  %196 = load i32, ptr %195, align 4, !tbaa !40
  %197 = add nsw i32 %196, %39
  store i32 %197, ptr %195, align 4, !tbaa !40
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
  %208 = load i32, ptr %207, align 4, !tbaa !40
  %209 = add nsw i32 %208, %43
  store i32 %209, ptr %207, align 4, !tbaa !40
  %210 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 3
  %211 = load i32, ptr %210, align 4, !tbaa !38
  %212 = add nsw i32 %211, %43
  store i32 %212, ptr %210, align 4, !tbaa !38
  %213 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %35, i32 4
  %214 = load i32, ptr %213, align 4, !tbaa !40
  %215 = add nsw i32 %214, %39
  store i32 %215, ptr %213, align 4, !tbaa !40
  br label %216

216:                                              ; preds = %203, %185, %169, %41, %28
  %217 = add nuw nsw i64 %29, 1
  %218 = icmp eq i64 %217, 15
  br i1 %218, label %219, label %28, !llvm.loop !44

219:                                              ; preds = %216
  %220 = add nuw nsw i64 %27, 1
  %221 = icmp eq i64 %27, %12
  br i1 %221, label %222, label %26, !llvm.loop !45

222:                                              ; preds = %219, %8
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @sort_all() unnamed_addr #0 {
  br label %1

1:                                                ; preds = %45, %0
  %2 = phi i64 [ 1, %0 ], [ %46, %45 ]
  %3 = icmp eq i64 %2, 28
  br i1 %3, label %48, label %4

4:                                                ; preds = %1
  %5 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 28), align 16, !tbaa !7
  br label %6

6:                                                ; preds = %41, %4
  %7 = phi i32 [ %42, %41 ], [ %5, %4 ]
  %8 = phi i64 [ %10, %41 ], [ 28, %4 ]
  %9 = phi i32 [ %43, %41 ], [ 0, %4 ]
  %10 = add nsw i64 %8, -1
  %11 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sext i32 %7 to i64
  %14 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %13
  %15 = load i32, ptr %14, align 8, !tbaa !7
  %16 = sext i32 %12 to i64
  %17 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %16
  %18 = load i32, ptr %17, align 8, !tbaa !7
  %19 = icmp eq i32 %15, %18
  br i1 %19, label %23, label %20

20:                                               ; preds = %6
  %21 = icmp slt i32 %15, %18
  %22 = zext i1 %21 to i32
  br label %34

23:                                               ; preds = %6
  %24 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %13, i64 1
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %16, i64 1
  %27 = load i32, ptr %26, align 4, !tbaa !7
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = icmp slt i32 %25, %27
  %31 = zext i1 %30 to i32
  br label %34

32:                                               ; preds = %23
  %33 = tail call fastcc i32 @absolute_standing_lt(i32 noundef %7, i32 noundef %12) #21
  br label %34

34:                                               ; preds = %32, %29, %20
  %35 = phi i32 [ %22, %20 ], [ %31, %29 ], [ %33, %32 ]
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %34
  %38 = load <2 x i32>, ptr %11, align 4, !tbaa !7
  %39 = shufflevector <2 x i32> %38, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %39, ptr %11, align 4, !tbaa !7
  %40 = extractelement <2 x i32> %38, i64 1
  br label %41

41:                                               ; preds = %37, %34
  %42 = phi i32 [ %40, %37 ], [ %12, %34 ]
  %43 = phi i32 [ 1, %37 ], [ %9, %34 ]
  %44 = icmp ugt i64 %10, %2
  br i1 %44, label %6, label %45, !llvm.loop !46

45:                                               ; preds = %41
  %.lcssa8 = phi i32 [ %43, %41 ]
  %46 = add nuw nsw i64 %2, 1
  %47 = icmp eq i32 %.lcssa8, 0
  br i1 %47, label %48, label %1, !llvm.loop !47

48:                                               ; preds = %45, %1
  tail call fastcc void @break_ties(ptr noundef nonnull @standings, i32 noundef 1, i32 noundef 0) #21
  br label %49

49:                                               ; preds = %84, %48
  %50 = phi i64 [ 1, %48 ], [ %85, %84 ]
  %51 = icmp eq i64 %50, 28
  br i1 %51, label %87, label %52

52:                                               ; preds = %49
  %53 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @conf_standings, i64 0, i64 28), align 16, !tbaa !7
  br label %54

54:                                               ; preds = %80, %52
  %55 = phi i32 [ %81, %80 ], [ %53, %52 ]
  %56 = phi i64 [ %58, %80 ], [ 28, %52 ]
  %57 = phi i32 [ %82, %80 ], [ 0, %52 ]
  %58 = add nsw i64 %56, -1
  %59 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %58
  %60 = load i32, ptr %59, align 4, !tbaa !7
  %61 = sext i32 %55 to i64
  %62 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %61
  %63 = load i32, ptr %62, align 8, !tbaa !7
  %64 = sext i32 %60 to i64
  %65 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %64
  %66 = load i32, ptr %65, align 8, !tbaa !7
  %67 = icmp eq i32 %63, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %54
  %69 = icmp slt i32 %63, %66
  %70 = zext i1 %69 to i32
  br label %73

71:                                               ; preds = %54
  %72 = tail call fastcc i32 @absolute_standing_lt(i32 noundef %55, i32 noundef %60) #21
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %70, %68 ], [ %72, %71 ]
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %73
  %77 = load <2 x i32>, ptr %59, align 4, !tbaa !7
  %78 = shufflevector <2 x i32> %77, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %78, ptr %59, align 4, !tbaa !7
  %79 = extractelement <2 x i32> %77, i64 1
  br label %80

80:                                               ; preds = %76, %73
  %81 = phi i32 [ %79, %76 ], [ %60, %73 ]
  %82 = phi i32 [ 1, %76 ], [ %57, %73 ]
  %83 = icmp ugt i64 %58, %50
  br i1 %83, label %54, label %84, !llvm.loop !48

84:                                               ; preds = %80
  %.lcssa7 = phi i32 [ %82, %80 ]
  %85 = add nuw nsw i64 %50, 1
  %86 = icmp eq i32 %.lcssa7, 0
  br i1 %86, label %87, label %49, !llvm.loop !49

87:                                               ; preds = %84, %49
  tail call fastcc void @break_ties(ptr noundef nonnull @conf_standings, i32 noundef 0, i32 noundef 0) #21
  br label %88

88:                                               ; preds = %110, %87
  %89 = phi i64 [ 1, %87 ], [ %111, %110 ]
  %90 = icmp eq i64 %89, 28
  br i1 %90, label %113, label %91

91:                                               ; preds = %88
  %92 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @abs_standings, i64 0, i64 28), align 16, !tbaa !7
  br label %93

93:                                               ; preds = %106, %91
  %94 = phi i32 [ %107, %106 ], [ %92, %91 ]
  %95 = phi i64 [ %97, %106 ], [ 28, %91 ]
  %96 = phi i32 [ %108, %106 ], [ 0, %91 ]
  %97 = add nsw i64 %95, -1
  %98 = getelementptr inbounds [29 x i32], ptr @abs_standings, i64 0, i64 %97
  %99 = load i32, ptr %98, align 4, !tbaa !7
  %100 = tail call fastcc i32 @absolute_standing_lt(i32 noundef %94, i32 noundef %99) #21
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %106, label %102

102:                                              ; preds = %93
  %103 = load <2 x i32>, ptr %98, align 4, !tbaa !7
  %104 = shufflevector <2 x i32> %103, <2 x i32> poison, <2 x i32> <i32 1, i32 0>
  store <2 x i32> %104, ptr %98, align 4, !tbaa !7
  %105 = extractelement <2 x i32> %103, i64 1
  br label %106

106:                                              ; preds = %102, %93
  %107 = phi i32 [ %105, %102 ], [ %99, %93 ]
  %108 = phi i32 [ 1, %102 ], [ %96, %93 ]
  %109 = icmp ugt i64 %97, %89
  br i1 %109, label %93, label %110, !llvm.loop !50

110:                                              ; preds = %106
  %.lcssa6 = phi i32 [ %108, %106 ]
  %111 = add nuw nsw i64 %89, 1
  %112 = icmp eq i32 %.lcssa6, 0
  br i1 %112, label %113, label %88, !llvm.loop !51

113:                                              ; preds = %110, %88
  tail call fastcc void @break_ties(ptr noundef nonnull @abs_standings, i32 noundef 2, i32 noundef 0) #21
  br label %114

114:                                              ; preds = %197, %113
  %115 = phi i64 [ 1, %113 ], [ %198, %197 ]
  %116 = icmp eq i64 %115, 28
  br i1 %116, label %200, label %117

117:                                              ; preds = %114
  %118 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @defence_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %119

119:                                              ; preds = %193, %117
  %120 = phi i32 [ %118, %117 ], [ %194, %193 ]
  %121 = phi i64 [ 28, %117 ], [ %123, %193 ]
  %122 = phi i32 [ 0, %117 ], [ %195, %193 ]
  %123 = add nsw i64 %121, -1
  %124 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %123
  %125 = load i32, ptr %124, align 4, !tbaa !7
  %126 = sext i32 %120 to i64
  %127 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %126
  %128 = load i32, ptr %127, align 8, !tbaa !7
  %129 = sext i32 %125 to i64
  %130 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %129
  %131 = load i32, ptr %130, align 8, !tbaa !7
  %132 = icmp eq i32 %128, %131
  br i1 %132, label %135, label %133

133:                                              ; preds = %119
  %134 = icmp slt i32 %128, %131
  br i1 %134, label %191, label %193

135:                                              ; preds = %119
  %136 = getelementptr inbounds %struct.info, ptr @team_info, i64 %126
  %137 = load i32, ptr %136, align 4, !tbaa !42
  %138 = getelementptr inbounds %struct.info, ptr @team_info, i64 %126, i32 1
  %139 = load i32, ptr %138, align 4, !tbaa !41
  %140 = add nsw i32 %139, %137
  %141 = getelementptr inbounds %struct.info, ptr @team_info, i64 %126, i32 2
  %142 = load i32, ptr %141, align 4, !tbaa !43
  %143 = add nsw i32 %140, %142
  %144 = icmp eq i32 %143, 0
  br i1 %144, label %151, label %145

145:                                              ; preds = %135
  %146 = getelementptr inbounds %struct.info, ptr @team_info, i64 %126, i32 4
  %147 = load i32, ptr %146, align 4, !tbaa !40
  %148 = sitofp i32 %147 to double
  %149 = sitofp i32 %143 to double
  %150 = fdiv double %148, %149
  br label %151

151:                                              ; preds = %145, %135
  %152 = phi double [ %150, %145 ], [ 0.000000e+00, %135 ]
  %153 = getelementptr inbounds %struct.info, ptr @team_info, i64 %129
  %154 = load i32, ptr %153, align 4, !tbaa !42
  %155 = getelementptr inbounds %struct.info, ptr @team_info, i64 %129, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !41
  %157 = add nsw i32 %156, %154
  %158 = getelementptr inbounds %struct.info, ptr @team_info, i64 %129, i32 2
  %159 = load i32, ptr %158, align 4, !tbaa !43
  %160 = add nsw i32 %157, %159
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %168, label %162

162:                                              ; preds = %151
  %163 = getelementptr inbounds %struct.info, ptr @team_info, i64 %129, i32 4
  %164 = load i32, ptr %163, align 4, !tbaa !40
  %165 = sitofp i32 %164 to double
  %166 = sitofp i32 %160 to double
  %167 = fdiv double %165, %166
  br label %168

168:                                              ; preds = %162, %151
  %169 = phi double [ %167, %162 ], [ 0.000000e+00, %151 ]
  %170 = fcmp une double %152, %169
  br i1 %170, label %171, label %189

171:                                              ; preds = %168
  br i1 %144, label %178, label %172

172:                                              ; preds = %171
  %173 = getelementptr inbounds %struct.info, ptr @team_info, i64 %126, i32 4
  %174 = load i32, ptr %173, align 4, !tbaa !40
  %175 = sitofp i32 %174 to double
  %176 = sitofp i32 %143 to double
  %177 = fdiv double %175, %176
  br label %178

178:                                              ; preds = %172, %171
  %179 = phi double [ %177, %172 ], [ 0.000000e+00, %171 ]
  br i1 %161, label %186, label %180

180:                                              ; preds = %178
  %181 = getelementptr inbounds %struct.info, ptr @team_info, i64 %129, i32 4
  %182 = load i32, ptr %181, align 4, !tbaa !40
  %183 = sitofp i32 %182 to double
  %184 = sitofp i32 %160 to double
  %185 = fdiv double %183, %184
  br label %186

186:                                              ; preds = %180, %178
  %187 = phi double [ %185, %180 ], [ 0.000000e+00, %178 ]
  %188 = fcmp olt double %179, %187
  br i1 %188, label %191, label %193

189:                                              ; preds = %168
  %190 = icmp slt i32 %120, %125
  br i1 %190, label %191, label %193

191:                                              ; preds = %189, %186, %133
  %192 = getelementptr inbounds [29 x i32], ptr @defence_ranks, i64 0, i64 %121
  store i32 %120, ptr %124, align 4, !tbaa !7
  store i32 %125, ptr %192, align 4, !tbaa !7
  br label %193

193:                                              ; preds = %191, %189, %186, %133
  %194 = phi i32 [ %120, %191 ], [ %125, %189 ], [ %125, %133 ], [ %125, %186 ]
  %195 = phi i32 [ 1, %191 ], [ %122, %189 ], [ %122, %133 ], [ %122, %186 ]
  %196 = icmp ugt i64 %123, %115
  br i1 %196, label %119, label %197, !llvm.loop !52

197:                                              ; preds = %193
  %.lcssa5 = phi i32 [ %195, %193 ]
  %198 = add nuw nsw i64 %115, 1
  %199 = icmp eq i32 %.lcssa5, 0
  br i1 %199, label %200, label %114, !llvm.loop !53

200:                                              ; preds = %197, %114
  br label %201

201:                                              ; preds = %276, %200
  %202 = phi i64 [ %277, %276 ], [ 1, %200 ]
  %203 = icmp eq i64 %202, 28
  br i1 %203, label %279, label %204

204:                                              ; preds = %201
  %205 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @defence_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %206

206:                                              ; preds = %272, %204
  %207 = phi i32 [ %205, %204 ], [ %273, %272 ]
  %208 = phi i64 [ 28, %204 ], [ %210, %272 ]
  %209 = phi i32 [ 0, %204 ], [ %274, %272 ]
  %210 = add nsw i64 %208, -1
  %211 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %210
  %212 = load i32, ptr %211, align 4, !tbaa !7
  %213 = sext i32 %207 to i64
  %214 = getelementptr inbounds %struct.info, ptr @team_info, i64 %213
  %215 = load i32, ptr %214, align 4, !tbaa !42
  %216 = getelementptr inbounds %struct.info, ptr @team_info, i64 %213, i32 1
  %217 = load i32, ptr %216, align 4, !tbaa !41
  %218 = add nsw i32 %217, %215
  %219 = getelementptr inbounds %struct.info, ptr @team_info, i64 %213, i32 2
  %220 = load i32, ptr %219, align 4, !tbaa !43
  %221 = add nsw i32 %218, %220
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %229, label %223

223:                                              ; preds = %206
  %224 = getelementptr inbounds %struct.info, ptr @team_info, i64 %213, i32 4
  %225 = load i32, ptr %224, align 4, !tbaa !40
  %226 = sitofp i32 %225 to double
  %227 = sitofp i32 %221 to double
  %228 = fdiv double %226, %227
  br label %229

229:                                              ; preds = %223, %206
  %230 = phi double [ %228, %223 ], [ 0.000000e+00, %206 ]
  %231 = sext i32 %212 to i64
  %232 = getelementptr inbounds %struct.info, ptr @team_info, i64 %231
  %233 = load i32, ptr %232, align 4, !tbaa !42
  %234 = getelementptr inbounds %struct.info, ptr @team_info, i64 %231, i32 1
  %235 = load i32, ptr %234, align 4, !tbaa !41
  %236 = add nsw i32 %235, %233
  %237 = getelementptr inbounds %struct.info, ptr @team_info, i64 %231, i32 2
  %238 = load i32, ptr %237, align 4, !tbaa !43
  %239 = add nsw i32 %236, %238
  %240 = icmp eq i32 %239, 0
  br i1 %240, label %247, label %241

241:                                              ; preds = %229
  %242 = getelementptr inbounds %struct.info, ptr @team_info, i64 %231, i32 4
  %243 = load i32, ptr %242, align 4, !tbaa !40
  %244 = sitofp i32 %243 to double
  %245 = sitofp i32 %239 to double
  %246 = fdiv double %244, %245
  br label %247

247:                                              ; preds = %241, %229
  %248 = phi double [ %246, %241 ], [ 0.000000e+00, %229 ]
  %249 = fcmp une double %230, %248
  br i1 %249, label %250, label %268

250:                                              ; preds = %247
  br i1 %222, label %257, label %251

251:                                              ; preds = %250
  %252 = getelementptr inbounds %struct.info, ptr @team_info, i64 %213, i32 4
  %253 = load i32, ptr %252, align 4, !tbaa !40
  %254 = sitofp i32 %253 to double
  %255 = sitofp i32 %221 to double
  %256 = fdiv double %254, %255
  br label %257

257:                                              ; preds = %251, %250
  %258 = phi double [ %256, %251 ], [ 0.000000e+00, %250 ]
  br i1 %240, label %265, label %259

259:                                              ; preds = %257
  %260 = getelementptr inbounds %struct.info, ptr @team_info, i64 %231, i32 4
  %261 = load i32, ptr %260, align 4, !tbaa !40
  %262 = sitofp i32 %261 to double
  %263 = sitofp i32 %239 to double
  %264 = fdiv double %262, %263
  br label %265

265:                                              ; preds = %259, %257
  %266 = phi double [ %264, %259 ], [ 0.000000e+00, %257 ]
  %267 = fcmp olt double %258, %266
  br i1 %267, label %270, label %272

268:                                              ; preds = %247
  %269 = icmp slt i32 %207, %212
  br i1 %269, label %270, label %272

270:                                              ; preds = %268, %265
  %271 = getelementptr inbounds [29 x i32], ptr @defence_ranks_nfl, i64 0, i64 %208
  store i32 %207, ptr %211, align 4, !tbaa !7
  store i32 %212, ptr %271, align 4, !tbaa !7
  br label %272

272:                                              ; preds = %270, %268, %265
  %273 = phi i32 [ %207, %270 ], [ %212, %268 ], [ %212, %265 ]
  %274 = phi i32 [ 1, %270 ], [ %209, %268 ], [ %209, %265 ]
  %275 = icmp ugt i64 %210, %202
  br i1 %275, label %206, label %276, !llvm.loop !54

276:                                              ; preds = %272
  %.lcssa4 = phi i32 [ %274, %272 ]
  %277 = add nuw nsw i64 %202, 1
  %278 = icmp eq i32 %.lcssa4, 0
  br i1 %278, label %279, label %201, !llvm.loop !55

279:                                              ; preds = %276, %201
  br label %280

280:                                              ; preds = %363, %279
  %281 = phi i64 [ %364, %363 ], [ 1, %279 ]
  %282 = icmp eq i64 %281, 28
  br i1 %282, label %366, label %283

283:                                              ; preds = %280
  %284 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @offence_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %285

285:                                              ; preds = %359, %283
  %286 = phi i32 [ %284, %283 ], [ %360, %359 ]
  %287 = phi i64 [ 28, %283 ], [ %289, %359 ]
  %288 = phi i32 [ 0, %283 ], [ %361, %359 ]
  %289 = add nsw i64 %287, -1
  %290 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %289
  %291 = load i32, ptr %290, align 4, !tbaa !7
  %292 = sext i32 %286 to i64
  %293 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %292
  %294 = load i32, ptr %293, align 8, !tbaa !7
  %295 = sext i32 %291 to i64
  %296 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %295
  %297 = load i32, ptr %296, align 8, !tbaa !7
  %298 = icmp eq i32 %294, %297
  br i1 %298, label %301, label %299

299:                                              ; preds = %285
  %300 = icmp slt i32 %294, %297
  br i1 %300, label %357, label %359

301:                                              ; preds = %285
  %302 = getelementptr inbounds %struct.info, ptr @team_info, i64 %292
  %303 = load i32, ptr %302, align 4, !tbaa !42
  %304 = getelementptr inbounds %struct.info, ptr @team_info, i64 %292, i32 1
  %305 = load i32, ptr %304, align 4, !tbaa !41
  %306 = add nsw i32 %305, %303
  %307 = getelementptr inbounds %struct.info, ptr @team_info, i64 %292, i32 2
  %308 = load i32, ptr %307, align 4, !tbaa !43
  %309 = add nsw i32 %306, %308
  %310 = icmp eq i32 %309, 0
  br i1 %310, label %317, label %311

311:                                              ; preds = %301
  %312 = getelementptr inbounds %struct.info, ptr @team_info, i64 %292, i32 3
  %313 = load i32, ptr %312, align 4, !tbaa !38
  %314 = sitofp i32 %313 to double
  %315 = sitofp i32 %309 to double
  %316 = fdiv double %314, %315
  br label %317

317:                                              ; preds = %311, %301
  %318 = phi double [ %316, %311 ], [ 0.000000e+00, %301 ]
  %319 = getelementptr inbounds %struct.info, ptr @team_info, i64 %295
  %320 = load i32, ptr %319, align 4, !tbaa !42
  %321 = getelementptr inbounds %struct.info, ptr @team_info, i64 %295, i32 1
  %322 = load i32, ptr %321, align 4, !tbaa !41
  %323 = add nsw i32 %322, %320
  %324 = getelementptr inbounds %struct.info, ptr @team_info, i64 %295, i32 2
  %325 = load i32, ptr %324, align 4, !tbaa !43
  %326 = add nsw i32 %323, %325
  %327 = icmp eq i32 %326, 0
  br i1 %327, label %334, label %328

328:                                              ; preds = %317
  %329 = getelementptr inbounds %struct.info, ptr @team_info, i64 %295, i32 3
  %330 = load i32, ptr %329, align 4, !tbaa !38
  %331 = sitofp i32 %330 to double
  %332 = sitofp i32 %326 to double
  %333 = fdiv double %331, %332
  br label %334

334:                                              ; preds = %328, %317
  %335 = phi double [ %333, %328 ], [ 0.000000e+00, %317 ]
  %336 = fcmp une double %318, %335
  br i1 %336, label %337, label %355

337:                                              ; preds = %334
  br i1 %310, label %344, label %338

338:                                              ; preds = %337
  %339 = getelementptr inbounds %struct.info, ptr @team_info, i64 %292, i32 3
  %340 = load i32, ptr %339, align 4, !tbaa !38
  %341 = sitofp i32 %340 to double
  %342 = sitofp i32 %309 to double
  %343 = fdiv double %341, %342
  br label %344

344:                                              ; preds = %338, %337
  %345 = phi double [ %343, %338 ], [ 0.000000e+00, %337 ]
  br i1 %327, label %352, label %346

346:                                              ; preds = %344
  %347 = getelementptr inbounds %struct.info, ptr @team_info, i64 %295, i32 3
  %348 = load i32, ptr %347, align 4, !tbaa !38
  %349 = sitofp i32 %348 to double
  %350 = sitofp i32 %326 to double
  %351 = fdiv double %349, %350
  br label %352

352:                                              ; preds = %346, %344
  %353 = phi double [ %351, %346 ], [ 0.000000e+00, %344 ]
  %354 = fcmp ogt double %345, %353
  br i1 %354, label %357, label %359

355:                                              ; preds = %334
  %356 = icmp slt i32 %286, %291
  br i1 %356, label %357, label %359

357:                                              ; preds = %355, %352, %299
  %358 = getelementptr inbounds [29 x i32], ptr @offence_ranks, i64 0, i64 %287
  store i32 %286, ptr %290, align 4, !tbaa !7
  store i32 %291, ptr %358, align 4, !tbaa !7
  br label %359

359:                                              ; preds = %357, %355, %352, %299
  %360 = phi i32 [ %286, %357 ], [ %291, %355 ], [ %291, %299 ], [ %291, %352 ]
  %361 = phi i32 [ 1, %357 ], [ %288, %355 ], [ %288, %299 ], [ %288, %352 ]
  %362 = icmp ugt i64 %289, %281
  br i1 %362, label %285, label %363, !llvm.loop !56

363:                                              ; preds = %359
  %.lcssa3 = phi i32 [ %361, %359 ]
  %364 = add nuw nsw i64 %281, 1
  %365 = icmp eq i32 %.lcssa3, 0
  br i1 %365, label %366, label %280, !llvm.loop !57

366:                                              ; preds = %363, %280
  br label %367

367:                                              ; preds = %442, %366
  %368 = phi i64 [ %443, %442 ], [ 1, %366 ]
  %369 = icmp eq i64 %368, 28
  br i1 %369, label %445, label %370

370:                                              ; preds = %367
  %371 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @offence_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %372

372:                                              ; preds = %438, %370
  %373 = phi i32 [ %371, %370 ], [ %439, %438 ]
  %374 = phi i64 [ 28, %370 ], [ %376, %438 ]
  %375 = phi i32 [ 0, %370 ], [ %440, %438 ]
  %376 = add nsw i64 %374, -1
  %377 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %376
  %378 = load i32, ptr %377, align 4, !tbaa !7
  %379 = sext i32 %373 to i64
  %380 = getelementptr inbounds %struct.info, ptr @team_info, i64 %379
  %381 = load i32, ptr %380, align 4, !tbaa !42
  %382 = getelementptr inbounds %struct.info, ptr @team_info, i64 %379, i32 1
  %383 = load i32, ptr %382, align 4, !tbaa !41
  %384 = add nsw i32 %383, %381
  %385 = getelementptr inbounds %struct.info, ptr @team_info, i64 %379, i32 2
  %386 = load i32, ptr %385, align 4, !tbaa !43
  %387 = add nsw i32 %384, %386
  %388 = icmp eq i32 %387, 0
  br i1 %388, label %395, label %389

389:                                              ; preds = %372
  %390 = getelementptr inbounds %struct.info, ptr @team_info, i64 %379, i32 3
  %391 = load i32, ptr %390, align 4, !tbaa !38
  %392 = sitofp i32 %391 to double
  %393 = sitofp i32 %387 to double
  %394 = fdiv double %392, %393
  br label %395

395:                                              ; preds = %389, %372
  %396 = phi double [ %394, %389 ], [ 0.000000e+00, %372 ]
  %397 = sext i32 %378 to i64
  %398 = getelementptr inbounds %struct.info, ptr @team_info, i64 %397
  %399 = load i32, ptr %398, align 4, !tbaa !42
  %400 = getelementptr inbounds %struct.info, ptr @team_info, i64 %397, i32 1
  %401 = load i32, ptr %400, align 4, !tbaa !41
  %402 = add nsw i32 %401, %399
  %403 = getelementptr inbounds %struct.info, ptr @team_info, i64 %397, i32 2
  %404 = load i32, ptr %403, align 4, !tbaa !43
  %405 = add nsw i32 %402, %404
  %406 = icmp eq i32 %405, 0
  br i1 %406, label %413, label %407

407:                                              ; preds = %395
  %408 = getelementptr inbounds %struct.info, ptr @team_info, i64 %397, i32 3
  %409 = load i32, ptr %408, align 4, !tbaa !38
  %410 = sitofp i32 %409 to double
  %411 = sitofp i32 %405 to double
  %412 = fdiv double %410, %411
  br label %413

413:                                              ; preds = %407, %395
  %414 = phi double [ %412, %407 ], [ 0.000000e+00, %395 ]
  %415 = fcmp une double %396, %414
  br i1 %415, label %416, label %434

416:                                              ; preds = %413
  br i1 %388, label %423, label %417

417:                                              ; preds = %416
  %418 = getelementptr inbounds %struct.info, ptr @team_info, i64 %379, i32 3
  %419 = load i32, ptr %418, align 4, !tbaa !38
  %420 = sitofp i32 %419 to double
  %421 = sitofp i32 %387 to double
  %422 = fdiv double %420, %421
  br label %423

423:                                              ; preds = %417, %416
  %424 = phi double [ %422, %417 ], [ 0.000000e+00, %416 ]
  br i1 %406, label %431, label %425

425:                                              ; preds = %423
  %426 = getelementptr inbounds %struct.info, ptr @team_info, i64 %397, i32 3
  %427 = load i32, ptr %426, align 4, !tbaa !38
  %428 = sitofp i32 %427 to double
  %429 = sitofp i32 %405 to double
  %430 = fdiv double %428, %429
  br label %431

431:                                              ; preds = %425, %423
  %432 = phi double [ %430, %425 ], [ 0.000000e+00, %423 ]
  %433 = fcmp ogt double %424, %432
  br i1 %433, label %436, label %438

434:                                              ; preds = %413
  %435 = icmp slt i32 %373, %378
  br i1 %435, label %436, label %438

436:                                              ; preds = %434, %431
  %437 = getelementptr inbounds [29 x i32], ptr @offence_ranks_nfl, i64 0, i64 %374
  store i32 %373, ptr %377, align 4, !tbaa !7
  store i32 %378, ptr %437, align 4, !tbaa !7
  br label %438

438:                                              ; preds = %436, %434, %431
  %439 = phi i32 [ %373, %436 ], [ %378, %434 ], [ %378, %431 ]
  %440 = phi i32 [ 1, %436 ], [ %375, %434 ], [ %375, %431 ]
  %441 = icmp ugt i64 %376, %368
  br i1 %441, label %372, label %442, !llvm.loop !58

442:                                              ; preds = %438
  %.lcssa2 = phi i32 [ %440, %438 ]
  %443 = add nuw nsw i64 %368, 1
  %444 = icmp eq i32 %.lcssa2, 0
  br i1 %444, label %445, label %367, !llvm.loop !59

445:                                              ; preds = %442, %367
  br label %446

446:                                              ; preds = %479, %445
  %447 = phi i64 [ %480, %479 ], [ 1, %445 ]
  %448 = icmp eq i64 %447, 28
  br i1 %448, label %482, label %449

449:                                              ; preds = %446
  %450 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @net_ranks, i64 0, i64 28), align 16, !tbaa !7
  br label %451

451:                                              ; preds = %475, %449
  %452 = phi i32 [ %450, %449 ], [ %476, %475 ]
  %453 = phi i64 [ 28, %449 ], [ %455, %475 ]
  %454 = phi i32 [ 0, %449 ], [ %477, %475 ]
  %455 = add nsw i64 %453, -1
  %456 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %455
  %457 = load i32, ptr %456, align 4, !tbaa !7
  %458 = sext i32 %452 to i64
  %459 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %458
  %460 = load i32, ptr %459, align 8, !tbaa !7
  %461 = sext i32 %457 to i64
  %462 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %461
  %463 = load i32, ptr %462, align 8, !tbaa !7
  %464 = icmp eq i32 %460, %463
  br i1 %464, label %468, label %465

465:                                              ; preds = %451
  %466 = icmp slt i32 %460, %463
  %467 = zext i1 %466 to i32
  br label %470

468:                                              ; preds = %451
  %469 = tail call fastcc i32 @net_nfl_lt(i32 noundef %452, i32 noundef %457) #21
  br label %470

470:                                              ; preds = %468, %465
  %471 = phi i32 [ %467, %465 ], [ %469, %468 ]
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %470
  %474 = getelementptr inbounds [29 x i32], ptr @net_ranks, i64 0, i64 %453
  store i32 %452, ptr %456, align 4, !tbaa !7
  store i32 %457, ptr %474, align 4, !tbaa !7
  br label %475

475:                                              ; preds = %473, %470
  %476 = phi i32 [ %452, %473 ], [ %457, %470 ]
  %477 = phi i32 [ 1, %473 ], [ %454, %470 ]
  %478 = icmp ugt i64 %455, %447
  br i1 %478, label %451, label %479, !llvm.loop !60

479:                                              ; preds = %475
  %.lcssa1 = phi i32 [ %477, %475 ]
  %480 = add nuw nsw i64 %447, 1
  %481 = icmp eq i32 %.lcssa1, 0
  br i1 %481, label %482, label %446, !llvm.loop !61

482:                                              ; preds = %479, %446
  br label %483

483:                                              ; preds = %503, %482
  %484 = phi i64 [ %504, %503 ], [ 1, %482 ]
  %485 = icmp eq i64 %484, 28
  br i1 %485, label %506, label %486

486:                                              ; preds = %483
  %487 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @net_ranks_nfl, i64 0, i64 28), align 16, !tbaa !7
  br label %488

488:                                              ; preds = %499, %486
  %489 = phi i32 [ %487, %486 ], [ %500, %499 ]
  %490 = phi i64 [ 28, %486 ], [ %492, %499 ]
  %491 = phi i32 [ 0, %486 ], [ %501, %499 ]
  %492 = add nsw i64 %490, -1
  %493 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %492
  %494 = load i32, ptr %493, align 4, !tbaa !7
  %495 = tail call fastcc i32 @net_nfl_lt(i32 noundef %489, i32 noundef %494) #21
  %496 = icmp eq i32 %495, 0
  br i1 %496, label %499, label %497

497:                                              ; preds = %488
  %498 = getelementptr inbounds [29 x i32], ptr @net_ranks_nfl, i64 0, i64 %490
  store i32 %489, ptr %493, align 4, !tbaa !7
  store i32 %494, ptr %498, align 4, !tbaa !7
  br label %499

499:                                              ; preds = %497, %488
  %500 = phi i32 [ %489, %497 ], [ %494, %488 ]
  %501 = phi i32 [ 1, %497 ], [ %491, %488 ]
  %502 = icmp ugt i64 %492, %484
  br i1 %502, label %488, label %503, !llvm.loop !62

503:                                              ; preds = %499
  %.lcssa = phi i32 [ %501, %499 ]
  %504 = add nuw nsw i64 %484, 1
  %505 = icmp eq i32 %.lcssa, 0
  br i1 %505, label %506, label %483, !llvm.loop !63

506:                                              ; preds = %503, %483
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @display_main_menu(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #0 {
  %3 = alloca [28 x i32], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i1, ptr @got_unused_responce, align 4
  br i1 %6, label %30, label %7

7:                                                ; preds = %2
  %8 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %9 = tail call i64 @fwrite(ptr nonnull @.str.104, i64 17, i64 1, ptr %0)
  %10 = tail call i64 @fwrite(ptr nonnull @.str.105, i64 30, i64 1, ptr %0)
  %11 = tail call i64 @fwrite(ptr nonnull @.str.106, i64 18, i64 1, ptr %0)
  %12 = tail call i64 @fwrite(ptr nonnull @.str.107, i64 23, i64 1, ptr %0)
  %13 = tail call i64 @fwrite(ptr nonnull @.str.108, i64 43, i64 1, ptr %0)
  %14 = tail call i64 @fwrite(ptr nonnull @.str.109, i64 13, i64 1, ptr %0)
  %15 = tail call i64 @fwrite(ptr nonnull @.str.110, i64 23, i64 1, ptr %0)
  %16 = tail call i64 @fwrite(ptr nonnull @.str.111, i64 17, i64 1, ptr %0)
  %17 = tail call i64 @fwrite(ptr nonnull @.str.112, i64 16, i64 1, ptr %0)
  %18 = tail call i64 @fwrite(ptr nonnull @.str.113, i64 18, i64 1, ptr %0)
  %19 = tail call i64 @fwrite(ptr nonnull @.str.114, i64 24, i64 1, ptr %0)
  %20 = tail call i64 @fwrite(ptr nonnull @.str.115, i64 53, i64 1, ptr %0)
  %21 = tail call i64 @fwrite(ptr nonnull @.str.116, i64 19, i64 1, ptr %0)
  %22 = tail call i64 @fwrite(ptr nonnull @.str.117, i64 27, i64 1, ptr %0)
  %23 = tail call i64 @fwrite(ptr nonnull @.str.118, i64 25, i64 1, ptr %0)
  %24 = tail call i64 @fwrite(ptr nonnull @.str.119, i64 5, i64 1, ptr %0)
  %25 = tail call i64 @fwrite(ptr nonnull @.str.120, i64 5, i64 1, ptr %0)
  %26 = load i32, ptr @current_with_disk, align 4, !tbaa !7
  %27 = icmp eq i32 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.121, i64 46, i64 1, ptr %0)
  br label %30

30:                                               ; preds = %28, %7, %2
  %31 = getelementptr inbounds i8, ptr %3, i64 4
  br label %32

32:                                               ; preds = %1892, %30
  %33 = load i1, ptr @got_unused_responce, align 4
  br i1 %33, label %36, label %34

34:                                               ; preds = %32
  %35 = call i64 @fwrite(ptr nonnull @.str.122, i64 31, i64 1, ptr %0)
  br label %36

36:                                               ; preds = %34, %32
  %37 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %38 = call fastcc i32 @matches(ptr noundef nonnull %37, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %36
  %41 = call i32 @feof(ptr noundef %1) #20
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %40, %36
  %44 = call i32 @fputc(i32 10, ptr %0)
  store i1 true, ptr @terminate, align 4
  br label %45

45:                                               ; preds = %43, %40
  %46 = phi i1 [ false, %43 ], [ true, %40 ]
  %47 = phi i32 [ 1, %43 ], [ 0, %40 ]
  %48 = call fastcc i32 @matches(ptr noundef nonnull %37, ptr noundef nonnull @.str.123, i32 noundef 1) #21, !range !64
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %61, label %50

50:                                               ; preds = %45
  %51 = call fastcc ptr @skip_first(ptr noundef nonnull %37) #21
  %52 = call fastcc i32 @matches(ptr noundef %51, ptr noundef nonnull @.str.124, i32 noundef 1) #21, !range !64
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %56, label %54

54:                                               ; preds = %50
  %55 = call i32 @fputc(i32 10, ptr %0)
  call fastcc void @break_ties(ptr noundef nonnull @standings, i32 noundef 1, i32 noundef 1) #20
  br label %1895

56:                                               ; preds = %50
  %57 = call fastcc i32 @matches(ptr noundef %51, ptr noundef nonnull @.str.125, i32 noundef 1) #21, !range !64
  %58 = icmp eq i32 %57, 0
  br i1 %58, label %1892, label %59

59:                                               ; preds = %56
  %60 = call i32 @fputc(i32 10, ptr %0)
  call fastcc void @break_ties(ptr noundef nonnull @conf_standings, i32 noundef 0, i32 noundef 1) #20
  br label %1895

61:                                               ; preds = %45
  %62 = call fastcc i32 @matches(ptr noundef nonnull %37, ptr noundef nonnull @.str.126, i32 noundef 1) #21, !range !64
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %1684, label %64

64:                                               ; preds = %61
  %65 = call fastcc ptr @skip_first(ptr noundef nonnull %37) #21
  %66 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.127, i32 noundef 1) #21, !range !64
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %1895

68:                                               ; preds = %64
  %69 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.128, i32 noundef 1) #21, !range !64
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %691, label %71

71:                                               ; preds = %68
  %72 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %73 = call i64 @fwrite(ptr nonnull @.str.97, i64 65, i64 1, ptr %0)
  %74 = call i64 @fwrite(ptr nonnull @.str.98, i64 65, i64 1, ptr %0)
  %75 = call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  %76 = call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %77 = call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  %78 = call i32 @fputc(i32 10, ptr %0)
  br label %79

79:                                               ; preds = %221, %71
  %80 = phi i64 [ 1, %71 ], [ %230, %221 ]
  %81 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !7
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %83, i64 1
  %85 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %86 = icmp ne i32 %85, %82
  %87 = load i32, ptr @nfc_central_champ, align 4
  %88 = icmp ne i32 %87, %82
  %89 = select i1 %86, i1 %88, i1 false
  %90 = load i32, ptr @nfc_west_champ, align 4
  %91 = icmp ne i32 %90, %82
  %92 = select i1 %89, i1 %91, i1 false
  %93 = load i32, ptr @afc_east_champ, align 4
  %94 = icmp ne i32 %93, %82
  %95 = select i1 %92, i1 %94, i1 false
  %96 = load i32, ptr @afc_central_champ, align 4
  %97 = icmp ne i32 %96, %82
  %98 = select i1 %95, i1 %97, i1 false
  %99 = load i32, ptr @afc_west_champ, align 4
  %100 = icmp ne i32 %99, %82
  %101 = select i1 %98, i1 %100, i1 false
  br i1 %101, label %102, label %121

102:                                              ; preds = %79
  %103 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %104 = icmp ne i32 %103, %82
  %105 = load i32, ptr @nfc_wild_card2, align 4
  %106 = icmp ne i32 %105, %82
  %107 = select i1 %104, i1 %106, i1 false
  %108 = load i32, ptr @nfc_wild_card3, align 4
  %109 = icmp ne i32 %108, %82
  %110 = select i1 %107, i1 %109, i1 false
  %111 = load i32, ptr @afc_wild_card1, align 4
  %112 = icmp ne i32 %111, %82
  %113 = select i1 %110, i1 %112, i1 false
  %114 = load i32, ptr @afc_wild_card2, align 4
  %115 = icmp ne i32 %114, %82
  %116 = select i1 %113, i1 %115, i1 false
  %117 = load i32, ptr @afc_wild_card3, align 4
  %118 = icmp ne i32 %117, %82
  %119 = select i1 %116, i1 %118, i1 false
  %120 = select i1 %119, ptr @.str.22, ptr @.str.21
  br label %121

121:                                              ; preds = %102, %79
  %122 = phi ptr [ %120, %102 ], [ @.str.20, %79 ]
  %123 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %83
  %124 = load i32, ptr %123, align 4, !tbaa !42
  %125 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %83, i32 1
  %126 = load i32, ptr %125, align 4, !tbaa !41
  %127 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %83, i32 2
  %128 = load i32, ptr %127, align 4, !tbaa !43
  %129 = add nsw i32 %126, %124
  %130 = add nsw i32 %129, %128
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %141, label %132

132:                                              ; preds = %121
  %133 = sitofp i32 %124 to double
  %134 = sitofp i32 %128 to double
  %135 = call double @llvm.fmuladd.f64(double %134, double 5.000000e-01, double %133)
  %136 = sitofp i32 %130 to double
  %137 = fdiv double %135, %136
  %138 = fcmp oge double %137, 1.000000e+00
  %139 = select i1 %138, ptr @.str.23, ptr @.str.22
  %140 = fcmp ult double %137, 1.000000e+00
  br i1 %140, label %141, label %146

141:                                              ; preds = %132, %121
  %142 = phi ptr [ @.str.22, %121 ], [ %139, %132 ]
  %143 = phi double [ 0.000000e+00, %121 ], [ %137, %132 ]
  %144 = call double @llvm.fmuladd.f64(double %143, double 1.000000e+03, double 5.000000e-01)
  %145 = fptosi double %144 to i32
  br label %146

146:                                              ; preds = %141, %132
  %147 = phi ptr [ %142, %141 ], [ %139, %132 ]
  %148 = phi i32 [ %145, %141 ], [ 0, %132 ]
  %149 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %83, i32 3
  %150 = load i32, ptr %149, align 4, !tbaa !38
  %151 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %83, i32 4
  %152 = load i32, ptr %151, align 4, !tbaa !40
  %153 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %84, ptr noundef nonnull %122, i32 noundef %124, i32 noundef %126, i32 noundef %128, ptr noundef nonnull %147, i32 noundef %148, i32 noundef %150, i32 noundef %152) #21
  %154 = call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %155 = add nuw nsw i64 %80, 14
  %156 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %155
  %157 = load i32, ptr %156, align 4, !tbaa !7
  %158 = sext i32 %157 to i64
  %159 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %158, i64 1
  %160 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %161 = icmp ne i32 %160, %157
  %162 = load i32, ptr @nfc_central_champ, align 4
  %163 = icmp ne i32 %162, %157
  %164 = select i1 %161, i1 %163, i1 false
  %165 = load i32, ptr @nfc_west_champ, align 4
  %166 = icmp ne i32 %165, %157
  %167 = select i1 %164, i1 %166, i1 false
  %168 = load i32, ptr @afc_east_champ, align 4
  %169 = icmp ne i32 %168, %157
  %170 = select i1 %167, i1 %169, i1 false
  %171 = load i32, ptr @afc_central_champ, align 4
  %172 = icmp ne i32 %171, %157
  %173 = select i1 %170, i1 %172, i1 false
  %174 = load i32, ptr @afc_west_champ, align 4
  %175 = icmp ne i32 %174, %157
  %176 = select i1 %173, i1 %175, i1 false
  br i1 %176, label %177, label %196

177:                                              ; preds = %146
  %178 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %179 = icmp ne i32 %178, %157
  %180 = load i32, ptr @nfc_wild_card2, align 4
  %181 = icmp ne i32 %180, %157
  %182 = select i1 %179, i1 %181, i1 false
  %183 = load i32, ptr @nfc_wild_card3, align 4
  %184 = icmp ne i32 %183, %157
  %185 = select i1 %182, i1 %184, i1 false
  %186 = load i32, ptr @afc_wild_card1, align 4
  %187 = icmp ne i32 %186, %157
  %188 = select i1 %185, i1 %187, i1 false
  %189 = load i32, ptr @afc_wild_card2, align 4
  %190 = icmp ne i32 %189, %157
  %191 = select i1 %188, i1 %190, i1 false
  %192 = load i32, ptr @afc_wild_card3, align 4
  %193 = icmp ne i32 %192, %157
  %194 = select i1 %191, i1 %193, i1 false
  %195 = select i1 %194, ptr @.str.22, ptr @.str.21
  br label %196

196:                                              ; preds = %177, %146
  %197 = phi ptr [ %195, %177 ], [ @.str.20, %146 ]
  %198 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %158
  %199 = load i32, ptr %198, align 4, !tbaa !42
  %200 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %158, i32 1
  %201 = load i32, ptr %200, align 4, !tbaa !41
  %202 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %158, i32 2
  %203 = load i32, ptr %202, align 4, !tbaa !43
  %204 = add nsw i32 %201, %199
  %205 = add nsw i32 %204, %203
  %206 = icmp eq i32 %205, 0
  br i1 %206, label %216, label %207

207:                                              ; preds = %196
  %208 = sitofp i32 %199 to double
  %209 = sitofp i32 %203 to double
  %210 = call double @llvm.fmuladd.f64(double %209, double 5.000000e-01, double %208)
  %211 = sitofp i32 %205 to double
  %212 = fdiv double %210, %211
  %213 = fcmp oge double %212, 1.000000e+00
  %214 = select i1 %213, ptr @.str.23, ptr @.str.22
  %215 = fcmp ult double %212, 1.000000e+00
  br i1 %215, label %216, label %221

216:                                              ; preds = %207, %196
  %217 = phi ptr [ @.str.22, %196 ], [ %214, %207 ]
  %218 = phi double [ 0.000000e+00, %196 ], [ %212, %207 ]
  %219 = call double @llvm.fmuladd.f64(double %218, double 1.000000e+03, double 5.000000e-01)
  %220 = fptosi double %219 to i32
  br label %221

221:                                              ; preds = %216, %207
  %222 = phi ptr [ %217, %216 ], [ %214, %207 ]
  %223 = phi i32 [ %220, %216 ], [ 0, %207 ]
  %224 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %158, i32 3
  %225 = load i32, ptr %224, align 4, !tbaa !38
  %226 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %158, i32 4
  %227 = load i32, ptr %226, align 4, !tbaa !40
  %228 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %159, ptr noundef nonnull %197, i32 noundef %199, i32 noundef %201, i32 noundef %203, ptr noundef nonnull %222, i32 noundef %223, i32 noundef %225, i32 noundef %227) #21
  %229 = call i32 @fputc(i32 10, ptr %0)
  %230 = add nuw nsw i64 %80, 1
  %231 = icmp eq i64 %230, 6
  br i1 %231, label %232, label %79, !llvm.loop !65

232:                                              ; preds = %221
  %233 = call i64 @fwrite(ptr nonnull @.str.100, i64 67, i64 1, ptr %0)
  br label %234

234:                                              ; preds = %376, %232
  %235 = phi i64 [ 6, %232 ], [ %385, %376 ]
  %236 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %235
  %237 = load i32, ptr %236, align 4, !tbaa !7
  %238 = sext i32 %237 to i64
  %239 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %238, i64 1
  %240 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %241 = icmp ne i32 %240, %237
  %242 = load i32, ptr @nfc_central_champ, align 4
  %243 = icmp ne i32 %242, %237
  %244 = select i1 %241, i1 %243, i1 false
  %245 = load i32, ptr @nfc_west_champ, align 4
  %246 = icmp ne i32 %245, %237
  %247 = select i1 %244, i1 %246, i1 false
  %248 = load i32, ptr @afc_east_champ, align 4
  %249 = icmp ne i32 %248, %237
  %250 = select i1 %247, i1 %249, i1 false
  %251 = load i32, ptr @afc_central_champ, align 4
  %252 = icmp ne i32 %251, %237
  %253 = select i1 %250, i1 %252, i1 false
  %254 = load i32, ptr @afc_west_champ, align 4
  %255 = icmp ne i32 %254, %237
  %256 = select i1 %253, i1 %255, i1 false
  br i1 %256, label %257, label %276

257:                                              ; preds = %234
  %258 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %259 = icmp ne i32 %258, %237
  %260 = load i32, ptr @nfc_wild_card2, align 4
  %261 = icmp ne i32 %260, %237
  %262 = select i1 %259, i1 %261, i1 false
  %263 = load i32, ptr @nfc_wild_card3, align 4
  %264 = icmp ne i32 %263, %237
  %265 = select i1 %262, i1 %264, i1 false
  %266 = load i32, ptr @afc_wild_card1, align 4
  %267 = icmp ne i32 %266, %237
  %268 = select i1 %265, i1 %267, i1 false
  %269 = load i32, ptr @afc_wild_card2, align 4
  %270 = icmp ne i32 %269, %237
  %271 = select i1 %268, i1 %270, i1 false
  %272 = load i32, ptr @afc_wild_card3, align 4
  %273 = icmp ne i32 %272, %237
  %274 = select i1 %271, i1 %273, i1 false
  %275 = select i1 %274, ptr @.str.22, ptr @.str.21
  br label %276

276:                                              ; preds = %257, %234
  %277 = phi ptr [ %275, %257 ], [ @.str.20, %234 ]
  %278 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %238
  %279 = load i32, ptr %278, align 4, !tbaa !42
  %280 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %238, i32 1
  %281 = load i32, ptr %280, align 4, !tbaa !41
  %282 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %238, i32 2
  %283 = load i32, ptr %282, align 4, !tbaa !43
  %284 = add nsw i32 %281, %279
  %285 = add nsw i32 %284, %283
  %286 = icmp eq i32 %285, 0
  br i1 %286, label %296, label %287

287:                                              ; preds = %276
  %288 = sitofp i32 %279 to double
  %289 = sitofp i32 %283 to double
  %290 = call double @llvm.fmuladd.f64(double %289, double 5.000000e-01, double %288)
  %291 = sitofp i32 %285 to double
  %292 = fdiv double %290, %291
  %293 = fcmp oge double %292, 1.000000e+00
  %294 = select i1 %293, ptr @.str.23, ptr @.str.22
  %295 = fcmp ult double %292, 1.000000e+00
  br i1 %295, label %296, label %301

296:                                              ; preds = %287, %276
  %297 = phi ptr [ @.str.22, %276 ], [ %294, %287 ]
  %298 = phi double [ 0.000000e+00, %276 ], [ %292, %287 ]
  %299 = call double @llvm.fmuladd.f64(double %298, double 1.000000e+03, double 5.000000e-01)
  %300 = fptosi double %299 to i32
  br label %301

301:                                              ; preds = %296, %287
  %302 = phi ptr [ %297, %296 ], [ %294, %287 ]
  %303 = phi i32 [ %300, %296 ], [ 0, %287 ]
  %304 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %238, i32 3
  %305 = load i32, ptr %304, align 4, !tbaa !38
  %306 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %238, i32 4
  %307 = load i32, ptr %306, align 4, !tbaa !40
  %308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %239, ptr noundef nonnull %277, i32 noundef %279, i32 noundef %281, i32 noundef %283, ptr noundef nonnull %302, i32 noundef %303, i32 noundef %305, i32 noundef %307) #21
  %309 = call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %310 = add nuw nsw i64 %235, 14
  %311 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %310
  %312 = load i32, ptr %311, align 4, !tbaa !7
  %313 = sext i32 %312 to i64
  %314 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %313, i64 1
  %315 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %316 = icmp ne i32 %315, %312
  %317 = load i32, ptr @nfc_central_champ, align 4
  %318 = icmp ne i32 %317, %312
  %319 = select i1 %316, i1 %318, i1 false
  %320 = load i32, ptr @nfc_west_champ, align 4
  %321 = icmp ne i32 %320, %312
  %322 = select i1 %319, i1 %321, i1 false
  %323 = load i32, ptr @afc_east_champ, align 4
  %324 = icmp ne i32 %323, %312
  %325 = select i1 %322, i1 %324, i1 false
  %326 = load i32, ptr @afc_central_champ, align 4
  %327 = icmp ne i32 %326, %312
  %328 = select i1 %325, i1 %327, i1 false
  %329 = load i32, ptr @afc_west_champ, align 4
  %330 = icmp ne i32 %329, %312
  %331 = select i1 %328, i1 %330, i1 false
  br i1 %331, label %332, label %351

332:                                              ; preds = %301
  %333 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %334 = icmp ne i32 %333, %312
  %335 = load i32, ptr @nfc_wild_card2, align 4
  %336 = icmp ne i32 %335, %312
  %337 = select i1 %334, i1 %336, i1 false
  %338 = load i32, ptr @nfc_wild_card3, align 4
  %339 = icmp ne i32 %338, %312
  %340 = select i1 %337, i1 %339, i1 false
  %341 = load i32, ptr @afc_wild_card1, align 4
  %342 = icmp ne i32 %341, %312
  %343 = select i1 %340, i1 %342, i1 false
  %344 = load i32, ptr @afc_wild_card2, align 4
  %345 = icmp ne i32 %344, %312
  %346 = select i1 %343, i1 %345, i1 false
  %347 = load i32, ptr @afc_wild_card3, align 4
  %348 = icmp ne i32 %347, %312
  %349 = select i1 %346, i1 %348, i1 false
  %350 = select i1 %349, ptr @.str.22, ptr @.str.21
  br label %351

351:                                              ; preds = %332, %301
  %352 = phi ptr [ %350, %332 ], [ @.str.20, %301 ]
  %353 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %313
  %354 = load i32, ptr %353, align 4, !tbaa !42
  %355 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %313, i32 1
  %356 = load i32, ptr %355, align 4, !tbaa !41
  %357 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %313, i32 2
  %358 = load i32, ptr %357, align 4, !tbaa !43
  %359 = add nsw i32 %356, %354
  %360 = add nsw i32 %359, %358
  %361 = icmp eq i32 %360, 0
  br i1 %361, label %371, label %362

362:                                              ; preds = %351
  %363 = sitofp i32 %354 to double
  %364 = sitofp i32 %358 to double
  %365 = call double @llvm.fmuladd.f64(double %364, double 5.000000e-01, double %363)
  %366 = sitofp i32 %360 to double
  %367 = fdiv double %365, %366
  %368 = fcmp oge double %367, 1.000000e+00
  %369 = select i1 %368, ptr @.str.23, ptr @.str.22
  %370 = fcmp ult double %367, 1.000000e+00
  br i1 %370, label %371, label %376

371:                                              ; preds = %362, %351
  %372 = phi ptr [ @.str.22, %351 ], [ %369, %362 ]
  %373 = phi double [ 0.000000e+00, %351 ], [ %367, %362 ]
  %374 = call double @llvm.fmuladd.f64(double %373, double 1.000000e+03, double 5.000000e-01)
  %375 = fptosi double %374 to i32
  br label %376

376:                                              ; preds = %371, %362
  %377 = phi ptr [ %372, %371 ], [ %369, %362 ]
  %378 = phi i32 [ %375, %371 ], [ 0, %362 ]
  %379 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %313, i32 3
  %380 = load i32, ptr %379, align 4, !tbaa !38
  %381 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %313, i32 4
  %382 = load i32, ptr %381, align 4, !tbaa !40
  %383 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %314, ptr noundef nonnull %352, i32 noundef %354, i32 noundef %356, i32 noundef %358, ptr noundef nonnull %377, i32 noundef %378, i32 noundef %380, i32 noundef %382) #21
  %384 = call i32 @fputc(i32 10, ptr %0)
  %385 = add nuw nsw i64 %235, 1
  %386 = icmp eq i64 %385, 10
  br i1 %386, label %387, label %234, !llvm.loop !66

387:                                              ; preds = %376
  %388 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 10), align 8, !tbaa !7
  %389 = sext i32 %388 to i64
  %390 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %389, i64 1
  %391 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %392 = icmp ne i32 %391, %388
  %393 = load i32, ptr @nfc_central_champ, align 4
  %394 = icmp ne i32 %393, %388
  %395 = select i1 %392, i1 %394, i1 false
  %396 = load i32, ptr @nfc_west_champ, align 4
  %397 = icmp ne i32 %396, %388
  %398 = select i1 %395, i1 %397, i1 false
  %399 = load i32, ptr @afc_east_champ, align 4
  %400 = icmp ne i32 %399, %388
  %401 = select i1 %398, i1 %400, i1 false
  %402 = load i32, ptr @afc_central_champ, align 4
  %403 = icmp ne i32 %402, %388
  %404 = select i1 %401, i1 %403, i1 false
  %405 = load i32, ptr @afc_west_champ, align 4
  %406 = icmp ne i32 %405, %388
  %407 = select i1 %404, i1 %406, i1 false
  br i1 %407, label %408, label %427

408:                                              ; preds = %387
  %409 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %410 = icmp ne i32 %409, %388
  %411 = load i32, ptr @nfc_wild_card2, align 4
  %412 = icmp ne i32 %411, %388
  %413 = select i1 %410, i1 %412, i1 false
  %414 = load i32, ptr @nfc_wild_card3, align 4
  %415 = icmp ne i32 %414, %388
  %416 = select i1 %413, i1 %415, i1 false
  %417 = load i32, ptr @afc_wild_card1, align 4
  %418 = icmp ne i32 %417, %388
  %419 = select i1 %416, i1 %418, i1 false
  %420 = load i32, ptr @afc_wild_card2, align 4
  %421 = icmp ne i32 %420, %388
  %422 = select i1 %419, i1 %421, i1 false
  %423 = load i32, ptr @afc_wild_card3, align 4
  %424 = icmp ne i32 %423, %388
  %425 = select i1 %422, i1 %424, i1 false
  %426 = select i1 %425, ptr @.str.22, ptr @.str.21
  br label %427

427:                                              ; preds = %408, %387
  %428 = phi ptr [ %426, %408 ], [ @.str.20, %387 ]
  %429 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %389
  %430 = load i32, ptr %429, align 4, !tbaa !42
  %431 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %389, i32 1
  %432 = load i32, ptr %431, align 4, !tbaa !41
  %433 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %389, i32 2
  %434 = load i32, ptr %433, align 4, !tbaa !43
  %435 = add nsw i32 %432, %430
  %436 = add nsw i32 %435, %434
  %437 = icmp eq i32 %436, 0
  br i1 %437, label %447, label %438

438:                                              ; preds = %427
  %439 = sitofp i32 %430 to double
  %440 = sitofp i32 %434 to double
  %441 = call double @llvm.fmuladd.f64(double %440, double 5.000000e-01, double %439)
  %442 = sitofp i32 %436 to double
  %443 = fdiv double %441, %442
  %444 = fcmp oge double %443, 1.000000e+00
  %445 = select i1 %444, ptr @.str.23, ptr @.str.22
  %446 = fcmp ult double %443, 1.000000e+00
  br i1 %446, label %447, label %452

447:                                              ; preds = %438, %427
  %448 = phi ptr [ @.str.22, %427 ], [ %445, %438 ]
  %449 = phi double [ 0.000000e+00, %427 ], [ %443, %438 ]
  %450 = call double @llvm.fmuladd.f64(double %449, double 1.000000e+03, double 5.000000e-01)
  %451 = fptosi double %450 to i32
  br label %452

452:                                              ; preds = %447, %438
  %453 = phi ptr [ %448, %447 ], [ %445, %438 ]
  %454 = phi i32 [ %451, %447 ], [ 0, %438 ]
  %455 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %389, i32 3
  %456 = load i32, ptr %455, align 4, !tbaa !38
  %457 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %389, i32 4
  %458 = load i32, ptr %457, align 4, !tbaa !40
  %459 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %390, ptr noundef nonnull %428, i32 noundef %430, i32 noundef %432, i32 noundef %434, ptr noundef nonnull %453, i32 noundef %454, i32 noundef %456, i32 noundef %458) #21
  %460 = call i32 @fputc(i32 10, ptr %0)
  %461 = call i64 @fwrite(ptr nonnull @.str.101, i64 64, i64 1, ptr %0)
  %462 = call i64 @fwrite(ptr nonnull @.str.102, i64 41, i64 1, ptr %0)
  %463 = load i32, ptr getelementptr inbounds ([29 x i32], ptr @standings, i64 0, i64 24), align 16, !tbaa !7
  %464 = sext i32 %463 to i64
  %465 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %464, i64 1
  %466 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %467 = icmp ne i32 %466, %463
  %468 = load i32, ptr @nfc_central_champ, align 4
  %469 = icmp ne i32 %468, %463
  %470 = select i1 %467, i1 %469, i1 false
  %471 = load i32, ptr @nfc_west_champ, align 4
  %472 = icmp ne i32 %471, %463
  %473 = select i1 %470, i1 %472, i1 false
  %474 = load i32, ptr @afc_east_champ, align 4
  %475 = icmp ne i32 %474, %463
  %476 = select i1 %473, i1 %475, i1 false
  %477 = load i32, ptr @afc_central_champ, align 4
  %478 = icmp ne i32 %477, %463
  %479 = select i1 %476, i1 %478, i1 false
  %480 = load i32, ptr @afc_west_champ, align 4
  %481 = icmp ne i32 %480, %463
  %482 = select i1 %479, i1 %481, i1 false
  br i1 %482, label %483, label %502

483:                                              ; preds = %452
  %484 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %485 = icmp ne i32 %484, %463
  %486 = load i32, ptr @nfc_wild_card2, align 4
  %487 = icmp ne i32 %486, %463
  %488 = select i1 %485, i1 %487, i1 false
  %489 = load i32, ptr @nfc_wild_card3, align 4
  %490 = icmp ne i32 %489, %463
  %491 = select i1 %488, i1 %490, i1 false
  %492 = load i32, ptr @afc_wild_card1, align 4
  %493 = icmp ne i32 %492, %463
  %494 = select i1 %491, i1 %493, i1 false
  %495 = load i32, ptr @afc_wild_card2, align 4
  %496 = icmp ne i32 %495, %463
  %497 = select i1 %494, i1 %496, i1 false
  %498 = load i32, ptr @afc_wild_card3, align 4
  %499 = icmp ne i32 %498, %463
  %500 = select i1 %497, i1 %499, i1 false
  %501 = select i1 %500, ptr @.str.22, ptr @.str.21
  br label %502

502:                                              ; preds = %483, %452
  %503 = phi ptr [ %501, %483 ], [ @.str.20, %452 ]
  %504 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %464
  %505 = load i32, ptr %504, align 4, !tbaa !42
  %506 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %464, i32 1
  %507 = load i32, ptr %506, align 4, !tbaa !41
  %508 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %464, i32 2
  %509 = load i32, ptr %508, align 4, !tbaa !43
  %510 = add nsw i32 %507, %505
  %511 = add nsw i32 %510, %509
  %512 = icmp eq i32 %511, 0
  br i1 %512, label %522, label %513

513:                                              ; preds = %502
  %514 = sitofp i32 %505 to double
  %515 = sitofp i32 %509 to double
  %516 = call double @llvm.fmuladd.f64(double %515, double 5.000000e-01, double %514)
  %517 = sitofp i32 %511 to double
  %518 = fdiv double %516, %517
  %519 = fcmp oge double %518, 1.000000e+00
  %520 = select i1 %519, ptr @.str.23, ptr @.str.22
  %521 = fcmp ult double %518, 1.000000e+00
  br i1 %521, label %522, label %527

522:                                              ; preds = %513, %502
  %523 = phi ptr [ @.str.22, %502 ], [ %520, %513 ]
  %524 = phi double [ 0.000000e+00, %502 ], [ %518, %513 ]
  %525 = call double @llvm.fmuladd.f64(double %524, double 1.000000e+03, double 5.000000e-01)
  %526 = fptosi double %525 to i32
  br label %527

527:                                              ; preds = %522, %513
  %528 = phi ptr [ %523, %522 ], [ %520, %513 ]
  %529 = phi i32 [ %526, %522 ], [ 0, %513 ]
  %530 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %464, i32 3
  %531 = load i32, ptr %530, align 4, !tbaa !38
  %532 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %464, i32 4
  %533 = load i32, ptr %532, align 4, !tbaa !40
  %534 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %465, ptr noundef nonnull %503, i32 noundef %505, i32 noundef %507, i32 noundef %509, ptr noundef nonnull %528, i32 noundef %529, i32 noundef %531, i32 noundef %533) #21
  %535 = call i32 @fputc(i32 10, ptr %0)
  br label %536

536:                                              ; preds = %678, %527
  %537 = phi i64 [ 11, %527 ], [ %687, %678 ]
  %538 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %537
  %539 = load i32, ptr %538, align 4, !tbaa !7
  %540 = sext i32 %539 to i64
  %541 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %540, i64 1
  %542 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %543 = icmp ne i32 %542, %539
  %544 = load i32, ptr @nfc_central_champ, align 4
  %545 = icmp ne i32 %544, %539
  %546 = select i1 %543, i1 %545, i1 false
  %547 = load i32, ptr @nfc_west_champ, align 4
  %548 = icmp ne i32 %547, %539
  %549 = select i1 %546, i1 %548, i1 false
  %550 = load i32, ptr @afc_east_champ, align 4
  %551 = icmp ne i32 %550, %539
  %552 = select i1 %549, i1 %551, i1 false
  %553 = load i32, ptr @afc_central_champ, align 4
  %554 = icmp ne i32 %553, %539
  %555 = select i1 %552, i1 %554, i1 false
  %556 = load i32, ptr @afc_west_champ, align 4
  %557 = icmp ne i32 %556, %539
  %558 = select i1 %555, i1 %557, i1 false
  br i1 %558, label %559, label %578

559:                                              ; preds = %536
  %560 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %561 = icmp ne i32 %560, %539
  %562 = load i32, ptr @nfc_wild_card2, align 4
  %563 = icmp ne i32 %562, %539
  %564 = select i1 %561, i1 %563, i1 false
  %565 = load i32, ptr @nfc_wild_card3, align 4
  %566 = icmp ne i32 %565, %539
  %567 = select i1 %564, i1 %566, i1 false
  %568 = load i32, ptr @afc_wild_card1, align 4
  %569 = icmp ne i32 %568, %539
  %570 = select i1 %567, i1 %569, i1 false
  %571 = load i32, ptr @afc_wild_card2, align 4
  %572 = icmp ne i32 %571, %539
  %573 = select i1 %570, i1 %572, i1 false
  %574 = load i32, ptr @afc_wild_card3, align 4
  %575 = icmp ne i32 %574, %539
  %576 = select i1 %573, i1 %575, i1 false
  %577 = select i1 %576, ptr @.str.22, ptr @.str.21
  br label %578

578:                                              ; preds = %559, %536
  %579 = phi ptr [ %577, %559 ], [ @.str.20, %536 ]
  %580 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %540
  %581 = load i32, ptr %580, align 4, !tbaa !42
  %582 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %540, i32 1
  %583 = load i32, ptr %582, align 4, !tbaa !41
  %584 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %540, i32 2
  %585 = load i32, ptr %584, align 4, !tbaa !43
  %586 = add nsw i32 %583, %581
  %587 = add nsw i32 %586, %585
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %598, label %589

589:                                              ; preds = %578
  %590 = sitofp i32 %581 to double
  %591 = sitofp i32 %585 to double
  %592 = call double @llvm.fmuladd.f64(double %591, double 5.000000e-01, double %590)
  %593 = sitofp i32 %587 to double
  %594 = fdiv double %592, %593
  %595 = fcmp oge double %594, 1.000000e+00
  %596 = select i1 %595, ptr @.str.23, ptr @.str.22
  %597 = fcmp ult double %594, 1.000000e+00
  br i1 %597, label %598, label %603

598:                                              ; preds = %589, %578
  %599 = phi ptr [ @.str.22, %578 ], [ %596, %589 ]
  %600 = phi double [ 0.000000e+00, %578 ], [ %594, %589 ]
  %601 = call double @llvm.fmuladd.f64(double %600, double 1.000000e+03, double 5.000000e-01)
  %602 = fptosi double %601 to i32
  br label %603

603:                                              ; preds = %598, %589
  %604 = phi ptr [ %599, %598 ], [ %596, %589 ]
  %605 = phi i32 [ %602, %598 ], [ 0, %589 ]
  %606 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %540, i32 3
  %607 = load i32, ptr %606, align 4, !tbaa !38
  %608 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %540, i32 4
  %609 = load i32, ptr %608, align 4, !tbaa !40
  %610 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %541, ptr noundef nonnull %579, i32 noundef %581, i32 noundef %583, i32 noundef %585, ptr noundef nonnull %604, i32 noundef %605, i32 noundef %607, i32 noundef %609) #21
  %611 = call i64 @fwrite(ptr nonnull @.str.99, i64 3, i64 1, ptr %0)
  %612 = add nuw nsw i64 %537, 14
  %613 = getelementptr inbounds [29 x i32], ptr @standings, i64 0, i64 %612
  %614 = load i32, ptr %613, align 4, !tbaa !7
  %615 = sext i32 %614 to i64
  %616 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %615, i64 1
  %617 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %618 = icmp ne i32 %617, %614
  %619 = load i32, ptr @nfc_central_champ, align 4
  %620 = icmp ne i32 %619, %614
  %621 = select i1 %618, i1 %620, i1 false
  %622 = load i32, ptr @nfc_west_champ, align 4
  %623 = icmp ne i32 %622, %614
  %624 = select i1 %621, i1 %623, i1 false
  %625 = load i32, ptr @afc_east_champ, align 4
  %626 = icmp ne i32 %625, %614
  %627 = select i1 %624, i1 %626, i1 false
  %628 = load i32, ptr @afc_central_champ, align 4
  %629 = icmp ne i32 %628, %614
  %630 = select i1 %627, i1 %629, i1 false
  %631 = load i32, ptr @afc_west_champ, align 4
  %632 = icmp ne i32 %631, %614
  %633 = select i1 %630, i1 %632, i1 false
  br i1 %633, label %634, label %653

634:                                              ; preds = %603
  %635 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %636 = icmp ne i32 %635, %614
  %637 = load i32, ptr @nfc_wild_card2, align 4
  %638 = icmp ne i32 %637, %614
  %639 = select i1 %636, i1 %638, i1 false
  %640 = load i32, ptr @nfc_wild_card3, align 4
  %641 = icmp ne i32 %640, %614
  %642 = select i1 %639, i1 %641, i1 false
  %643 = load i32, ptr @afc_wild_card1, align 4
  %644 = icmp ne i32 %643, %614
  %645 = select i1 %642, i1 %644, i1 false
  %646 = load i32, ptr @afc_wild_card2, align 4
  %647 = icmp ne i32 %646, %614
  %648 = select i1 %645, i1 %647, i1 false
  %649 = load i32, ptr @afc_wild_card3, align 4
  %650 = icmp ne i32 %649, %614
  %651 = select i1 %648, i1 %650, i1 false
  %652 = select i1 %651, ptr @.str.22, ptr @.str.21
  br label %653

653:                                              ; preds = %634, %603
  %654 = phi ptr [ %652, %634 ], [ @.str.20, %603 ]
  %655 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %615
  %656 = load i32, ptr %655, align 4, !tbaa !42
  %657 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %615, i32 1
  %658 = load i32, ptr %657, align 4, !tbaa !41
  %659 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %615, i32 2
  %660 = load i32, ptr %659, align 4, !tbaa !43
  %661 = add nsw i32 %658, %656
  %662 = add nsw i32 %661, %660
  %663 = icmp eq i32 %662, 0
  br i1 %663, label %673, label %664

664:                                              ; preds = %653
  %665 = sitofp i32 %656 to double
  %666 = sitofp i32 %660 to double
  %667 = call double @llvm.fmuladd.f64(double %666, double 5.000000e-01, double %665)
  %668 = sitofp i32 %662 to double
  %669 = fdiv double %667, %668
  %670 = fcmp oge double %669, 1.000000e+00
  %671 = select i1 %670, ptr @.str.23, ptr @.str.22
  %672 = fcmp ult double %669, 1.000000e+00
  br i1 %672, label %673, label %678

673:                                              ; preds = %664, %653
  %674 = phi ptr [ @.str.22, %653 ], [ %671, %664 ]
  %675 = phi double [ 0.000000e+00, %653 ], [ %669, %664 ]
  %676 = call double @llvm.fmuladd.f64(double %675, double 1.000000e+03, double 5.000000e-01)
  %677 = fptosi double %676 to i32
  br label %678

678:                                              ; preds = %673, %664
  %679 = phi ptr [ %674, %673 ], [ %671, %664 ]
  %680 = phi i32 [ %677, %673 ], [ 0, %664 ]
  %681 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %615, i32 3
  %682 = load i32, ptr %681, align 4, !tbaa !38
  %683 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %615, i32 4
  %684 = load i32, ptr %683, align 4, !tbaa !40
  %685 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %616, ptr noundef nonnull %654, i32 noundef %656, i32 noundef %658, i32 noundef %660, ptr noundef nonnull %679, i32 noundef %680, i32 noundef %682, i32 noundef %684) #21
  %686 = call i32 @fputc(i32 10, ptr %0)
  %687 = add nuw nsw i64 %537, 1
  %688 = icmp eq i64 %687, 15
  br i1 %688, label %689, label %536, !llvm.loop !67

689:                                              ; preds = %678
  %690 = call i32 @fputc(i32 10, ptr %0)
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

691:                                              ; preds = %68
  %692 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.129, i32 noundef 1) #21, !range !64
  %693 = icmp eq i32 %692, 0
  br i1 %693, label %1179, label %694

694:                                              ; preds = %691
  %695 = call fastcc ptr @skip_first(ptr noundef %65) #21
  %696 = call fastcc i32 @find_name(ptr noundef %0, ptr noundef %695) #20
  %697 = icmp eq i32 %696, 0
  br i1 %697, label %1679, label %698

698:                                              ; preds = %694
  %.lcssa41 = phi i32 [ %696, %694 ]
  %699 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %700 = sext i32 %.lcssa41 to i64
  %701 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %700, i64 1
  %702 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.3, ptr noundef nonnull %701) #21
  %703 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %700
  %704 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %700, i32 3
  %705 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %700, i32 4
  %706 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %700, i32 1
  %707 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %700, i32 2
  %708 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %700
  %709 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %700
  %710 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %700, i32 1
  %711 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %700, i32 2
  %712 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %700, i32 3
  %713 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %700, i32 4
  %714 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %700, i64 1
  %715 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %700
  %716 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %700, i32 3
  %717 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %700, i32 4
  %718 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %700, i32 1
  %719 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %700, i32 2
  %720 = lshr i64 59821585, %700
  %721 = and i64 %720, 1
  %722 = icmp eq i64 %721, 0
  %723 = lshr i64 67838058, %700
  %724 = and i64 %723, 1
  %725 = icmp eq i64 %724, 0
  %726 = select i1 %725, ptr @.str.17, ptr @.str.16
  %727 = select i1 %722, ptr %726, ptr @.str.15.3
  br label %728

728:                                              ; preds = %1174, %698
  %729 = phi i64 [ 1, %698 ], [ %1176, %1174 ]
  %730 = load i32, ptr @num_games, align 4, !tbaa !7
  %731 = zext i32 %730 to i64
  %732 = icmp ugt i64 %729, %731
  br i1 %732, label %741, label %733

733:                                              ; preds = %728
  %734 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %729, i64 1, i64 2
  %735 = load i32, ptr %734, align 4, !tbaa !7
  %736 = icmp eq i32 %735, %.lcssa41
  br i1 %736, label %761, label %737

737:                                              ; preds = %733
  %738 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %729, i64 1, i64 1
  %739 = load i32, ptr %738, align 4, !tbaa !7
  %740 = icmp eq i32 %739, %.lcssa41
  br i1 %740, label %761, label %749

741:                                              ; preds = %728
  %742 = call i64 @fwrite(ptr nonnull @.str.4.1, i64 28, i64 1, ptr %0)
  br label %790

743:                                              ; preds = %749
  %744 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %729, i64 %751, i64 1
  %745 = load i32, ptr %744, align 4, !tbaa !7
  %746 = icmp ne i32 %745, %.lcssa41
  %747 = icmp ult i64 %750, 14
  %748 = and i1 %747, %746
  br i1 %748, label %749, label %755, !llvm.loop !68

749:                                              ; preds = %743, %737
  %750 = phi i64 [ %751, %743 ], [ 1, %737 ]
  %751 = add nuw nsw i64 %750, 1
  %752 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %729, i64 %751, i64 2
  %753 = load i32, ptr %752, align 4, !tbaa !7
  %754 = icmp eq i32 %753, %.lcssa41
  br i1 %754, label %755, label %743, !llvm.loop !68

755:                                              ; preds = %749, %743
  %.lcssa = phi i64 [ %751, %749 ], [ %751, %743 ]
  %756 = phi i32 [ %.lcssa41, %749 ], [ %753, %743 ]
  %757 = and i64 %.lcssa, 4294967295
  %758 = icmp eq i64 %757, 15
  br i1 %758, label %759, label %761

759:                                              ; preds = %755
  %760 = call i64 @fwrite(ptr nonnull @.str.4.1, i64 28, i64 1, ptr %0)
  br label %790

761:                                              ; preds = %755, %737, %733
  %762 = phi i32 [ %756, %755 ], [ %.lcssa41, %733 ], [ %735, %737 ]
  %763 = phi i64 [ %.lcssa, %755 ], [ 1, %733 ], [ 1, %737 ]
  %764 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %729, i64 %763, i64 1
  %765 = load i32, ptr %764, align 4, !tbaa !7
  %766 = icmp eq i32 %765, %.lcssa41
  %767 = select i1 %766, i32 %762, i32 %765
  %768 = select i1 %766, ptr @.str.5, ptr @.str.6
  %769 = select i1 %766, i64 1, i64 2
  %770 = select i1 %766, i64 2, i64 1
  %771 = sext i32 %767 to i64
  %772 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %771, i64 1
  %773 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull %768, ptr noundef nonnull %772) #21
  %774 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %729, i64 %763, i64 %769
  %775 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %729, i64 %763, i64 %770
  %776 = load i32, ptr %775, align 4, !tbaa !7
  %777 = load i32, ptr %774, align 4, !tbaa !7
  %778 = icmp eq i32 %777, -1
  %779 = icmp eq i32 %776, -1
  %780 = select i1 %778, i1 true, i1 %779
  br i1 %780, label %781, label %783

781:                                              ; preds = %761
  %782 = call i64 @fwrite(ptr nonnull @.str.7, i64 9, i64 1, ptr %0)
  br label %790

783:                                              ; preds = %761
  %784 = icmp eq i32 %777, %776
  %785 = icmp sgt i32 %777, %776
  %786 = select i1 %785, i32 87, i32 76
  %787 = select i1 %784, i32 84, i32 %786
  %788 = call i32 @fputc(i32 %787, ptr %0)
  %789 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.11, i32 noundef %777, i32 noundef %776) #21
  br label %790

790:                                              ; preds = %783, %781, %759, %741
  %791 = trunc i64 %729 to i32
  switch i32 %791, label %1174 [
    i32 1, label %792
    i32 2, label %797
    i32 3, label %799
    i32 4, label %799
    i32 5, label %799
    i32 6, label %799
    i32 7, label %799
    i32 9, label %899
    i32 10, label %947
    i32 11, label %999
    i32 12, label %1051
    i32 14, label %1105
    i32 15, label %1107
    i32 16, label %1109
    i32 17, label %1114
    i32 18, label %1119
    i32 19, label %1121
    i32 20, label %1139
    i32 21, label %1159
  ]

792:                                              ; preds = %790
  %793 = load i32, ptr %708, align 8, !tbaa !7
  %794 = icmp eq i32 %793, 0
  %795 = select i1 %794, ptr @.str.13, ptr @.str.14.2
  %796 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.12, ptr noundef nonnull %795, ptr noundef nonnull %727) #21
  br label %1174

797:                                              ; preds = %790
  %798 = call i64 @fwrite(ptr nonnull @.str.18, i64 38, i64 1, ptr %0)
  br label %1174

799:                                              ; preds = %790, %790, %790, %790, %790
  %800 = load i32, ptr %708, align 8, !tbaa !7
  %801 = load i32, ptr %714, align 4, !tbaa !7
  %802 = icmp eq i32 %800, 999
  %803 = add nsw i32 %791, -2
  br label %804

804:                                              ; preds = %822, %799
  %805 = phi i64 [ 1, %799 ], [ %824, %822 ]
  %806 = phi i32 [ 1, %799 ], [ %823, %822 ]
  %807 = getelementptr inbounds i32, ptr @standings, i64 %805
  %808 = load i32, ptr %807, align 4, !tbaa !7
  %809 = sext i32 %808 to i64
  %810 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %809
  %811 = load i32, ptr %810, align 8, !tbaa !7
  %812 = icmp eq i32 %811, %800
  %813 = or i1 %802, %812
  br i1 %813, label %814, label %822

814:                                              ; preds = %804
  %815 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %809, i64 1
  %816 = load i32, ptr %815, align 4, !tbaa !7
  %817 = icmp eq i32 %816, %801
  br i1 %817, label %818, label %822

818:                                              ; preds = %814
  %819 = icmp eq i32 %806, %803
  br i1 %819, label %826, label %820

820:                                              ; preds = %818
  %821 = add nsw i32 %806, 1
  br label %822

822:                                              ; preds = %820, %814, %804
  %823 = phi i32 [ %821, %820 ], [ %806, %814 ], [ %806, %804 ]
  %824 = add nuw nsw i64 %805, 1
  %825 = icmp eq i64 %824, 29
  br i1 %825, label %1174, label %804, !llvm.loop !69

826:                                              ; preds = %818
  %.lcssa22 = phi i32 [ %808, %818 ]
  %.lcssa21 = phi i64 [ %809, %818 ]
  %827 = icmp eq i32 %.lcssa22, 0
  br i1 %827, label %1174, label %828

828:                                              ; preds = %826
  %829 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %.lcssa21, i64 1
  %830 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %831 = icmp ne i32 %830, %.lcssa22
  %832 = load i32, ptr @nfc_central_champ, align 4
  %833 = icmp ne i32 %832, %.lcssa22
  %834 = select i1 %831, i1 %833, i1 false
  %835 = load i32, ptr @nfc_west_champ, align 4
  %836 = icmp ne i32 %835, %.lcssa22
  %837 = select i1 %834, i1 %836, i1 false
  %838 = load i32, ptr @afc_east_champ, align 4
  %839 = icmp ne i32 %838, %.lcssa22
  %840 = select i1 %837, i1 %839, i1 false
  %841 = load i32, ptr @afc_central_champ, align 4
  %842 = icmp ne i32 %841, %.lcssa22
  %843 = select i1 %840, i1 %842, i1 false
  %844 = load i32, ptr @afc_west_champ, align 4
  %845 = icmp ne i32 %844, %.lcssa22
  %846 = select i1 %843, i1 %845, i1 false
  br i1 %846, label %847, label %866

847:                                              ; preds = %828
  %848 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %849 = icmp ne i32 %848, %.lcssa22
  %850 = load i32, ptr @nfc_wild_card2, align 4
  %851 = icmp ne i32 %850, %.lcssa22
  %852 = select i1 %849, i1 %851, i1 false
  %853 = load i32, ptr @nfc_wild_card3, align 4
  %854 = icmp ne i32 %853, %.lcssa22
  %855 = select i1 %852, i1 %854, i1 false
  %856 = load i32, ptr @afc_wild_card1, align 4
  %857 = icmp ne i32 %856, %.lcssa22
  %858 = select i1 %855, i1 %857, i1 false
  %859 = load i32, ptr @afc_wild_card2, align 4
  %860 = icmp ne i32 %859, %.lcssa22
  %861 = select i1 %858, i1 %860, i1 false
  %862 = load i32, ptr @afc_wild_card3, align 4
  %863 = icmp ne i32 %862, %.lcssa22
  %864 = select i1 %861, i1 %863, i1 false
  %865 = select i1 %864, ptr @.str.22, ptr @.str.21
  br label %866

866:                                              ; preds = %847, %828
  %867 = phi ptr [ %865, %847 ], [ @.str.20, %828 ]
  %868 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa21
  %869 = load i32, ptr %868, align 4, !tbaa !42
  %870 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa21, i32 1
  %871 = load i32, ptr %870, align 4, !tbaa !41
  %872 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa21, i32 2
  %873 = load i32, ptr %872, align 4, !tbaa !43
  %874 = add nsw i32 %871, %869
  %875 = add nsw i32 %874, %873
  %876 = icmp eq i32 %875, 0
  br i1 %876, label %886, label %877

877:                                              ; preds = %866
  %878 = sitofp i32 %869 to double
  %879 = sitofp i32 %873 to double
  %880 = call double @llvm.fmuladd.f64(double %879, double 5.000000e-01, double %878)
  %881 = sitofp i32 %875 to double
  %882 = fdiv double %880, %881
  %883 = fcmp oge double %882, 1.000000e+00
  %884 = select i1 %883, ptr @.str.23, ptr @.str.22
  %885 = fcmp ult double %882, 1.000000e+00
  br i1 %885, label %886, label %891

886:                                              ; preds = %877, %866
  %887 = phi ptr [ @.str.22, %866 ], [ %884, %877 ]
  %888 = phi double [ 0.000000e+00, %866 ], [ %882, %877 ]
  %889 = call double @llvm.fmuladd.f64(double %888, double 1.000000e+03, double 5.000000e-01)
  %890 = fptosi double %889 to i32
  br label %891

891:                                              ; preds = %886, %877
  %892 = phi ptr [ %887, %886 ], [ %884, %877 ]
  %893 = phi i32 [ %890, %886 ], [ 0, %877 ]
  %894 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa21, i32 3
  %895 = load i32, ptr %894, align 4, !tbaa !38
  %896 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %.lcssa21, i32 4
  %897 = load i32, ptr %896, align 4, !tbaa !40
  %898 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.19, ptr noundef nonnull %829, ptr noundef nonnull %867, i32 noundef %869, i32 noundef %871, i32 noundef %873, ptr noundef nonnull %892, i32 noundef %893, i32 noundef %895, i32 noundef %897) #21
  br label %1174

899:                                              ; preds = %790
  %900 = load i32, ptr %703, align 4, !tbaa !42
  %901 = load i32, ptr %706, align 4, !tbaa !41
  %902 = load i32, ptr %707, align 4, !tbaa !43
  %903 = icmp slt i32 %900, 10
  %904 = icmp slt i32 %901, 10
  %905 = select i1 %903, i1 %904, i1 false
  %906 = select i1 %905, ptr @.str.25, ptr @.str.22
  %907 = load i32, ptr %708, align 8, !tbaa !7
  %908 = icmp eq i32 %907, 0
  br i1 %908, label %909, label %919

909:                                              ; preds = %914, %899
  %910 = phi i64 [ %915, %914 ], [ 1, %899 ]
  %911 = getelementptr inbounds i32, ptr @conf_standings, i64 %910
  %912 = load i32, ptr %911, align 4, !tbaa !7
  %913 = icmp eq i32 %912, %.lcssa41
  br i1 %913, label %917, label %914

914:                                              ; preds = %909
  %915 = add nuw nsw i64 %910, 1
  %916 = icmp eq i64 %915, 29
  br i1 %916, label %932, label %909, !llvm.loop !70

917:                                              ; preds = %909
  %.lcssa18 = phi i64 [ %910, %909 ]
  %918 = trunc i64 %.lcssa18 to i32
  br label %932

919:                                              ; preds = %924, %899
  %920 = phi i64 [ %925, %924 ], [ 1, %899 ]
  %921 = getelementptr inbounds i32, ptr @conf_standings, i64 %920
  %922 = load i32, ptr %921, align 4, !tbaa !7
  %923 = icmp eq i32 %922, %.lcssa41
  br i1 %923, label %927, label %924

924:                                              ; preds = %919
  %925 = add nuw nsw i64 %920, 1
  %926 = icmp eq i64 %925, 29
  br i1 %926, label %929, label %919, !llvm.loop !70

927:                                              ; preds = %919
  %.lcssa16 = phi i64 [ %920, %919 ]
  %928 = trunc i64 %.lcssa16 to i32
  br label %929

929:                                              ; preds = %927, %924
  %930 = phi i32 [ %928, %927 ], [ 0, %924 ]
  %931 = add nsw i32 %930, -14
  br label %932

932:                                              ; preds = %929, %917, %914
  %933 = phi i32 [ %931, %929 ], [ %918, %917 ], [ 0, %914 ]
  br label %934

934:                                              ; preds = %939, %932
  %935 = phi i64 [ 1, %932 ], [ %940, %939 ]
  %936 = getelementptr inbounds i32, ptr @abs_standings, i64 %935
  %937 = load i32, ptr %936, align 4, !tbaa !7
  %938 = icmp eq i32 %937, %.lcssa41
  br i1 %938, label %942, label %939

939:                                              ; preds = %934
  %940 = add nuw nsw i64 %935, 1
  %941 = icmp eq i64 %940, 29
  br i1 %941, label %944, label %934, !llvm.loop !70

942:                                              ; preds = %934
  %.lcssa19 = phi i64 [ %935, %934 ]
  %943 = trunc i64 %.lcssa19 to i32
  br label %944

944:                                              ; preds = %942, %939
  %945 = phi i32 [ %943, %942 ], [ 0, %939 ]
  %946 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.24, i32 noundef %900, i32 noundef %901, i32 noundef %902, ptr noundef nonnull %906, i32 noundef %933, i32 noundef %945) #21
  br label %1174

947:                                              ; preds = %790
  %948 = load i32, ptr %704, align 4, !tbaa !38
  %949 = load i32, ptr %703, align 4, !tbaa !42
  %950 = load i32, ptr %706, align 4, !tbaa !41
  %951 = add nsw i32 %950, %949
  %952 = load i32, ptr %707, align 4, !tbaa !43
  %953 = add nsw i32 %951, %952
  %954 = icmp eq i32 %953, 0
  %955 = sitofp i32 %948 to double
  %956 = sitofp i32 %953 to double
  %957 = fdiv double %955, %956
  %958 = select i1 %954, double 0.000000e+00, double %957
  %959 = load i32, ptr %708, align 8, !tbaa !7
  %960 = icmp eq i32 %959, 0
  br i1 %960, label %961, label %971

961:                                              ; preds = %966, %947
  %962 = phi i64 [ %967, %966 ], [ 1, %947 ]
  %963 = getelementptr inbounds i32, ptr @offence_ranks, i64 %962
  %964 = load i32, ptr %963, align 4, !tbaa !7
  %965 = icmp eq i32 %964, %.lcssa41
  br i1 %965, label %969, label %966

966:                                              ; preds = %961
  %967 = add nuw nsw i64 %962, 1
  %968 = icmp eq i64 %967, 29
  br i1 %968, label %984, label %961, !llvm.loop !70

969:                                              ; preds = %961
  %.lcssa13 = phi i64 [ %962, %961 ]
  %970 = trunc i64 %.lcssa13 to i32
  br label %984

971:                                              ; preds = %976, %947
  %972 = phi i64 [ %977, %976 ], [ 1, %947 ]
  %973 = getelementptr inbounds i32, ptr @offence_ranks, i64 %972
  %974 = load i32, ptr %973, align 4, !tbaa !7
  %975 = icmp eq i32 %974, %.lcssa41
  br i1 %975, label %979, label %976

976:                                              ; preds = %971
  %977 = add nuw nsw i64 %972, 1
  %978 = icmp eq i64 %977, 29
  br i1 %978, label %981, label %971, !llvm.loop !70

979:                                              ; preds = %971
  %.lcssa11 = phi i64 [ %972, %971 ]
  %980 = trunc i64 %.lcssa11 to i32
  br label %981

981:                                              ; preds = %979, %976
  %982 = phi i32 [ %980, %979 ], [ 0, %976 ]
  %983 = add nsw i32 %982, -14
  br label %984

984:                                              ; preds = %981, %969, %966
  %985 = phi i32 [ %983, %981 ], [ %970, %969 ], [ 0, %966 ]
  br label %986

986:                                              ; preds = %991, %984
  %987 = phi i64 [ 1, %984 ], [ %992, %991 ]
  %988 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %987
  %989 = load i32, ptr %988, align 4, !tbaa !7
  %990 = icmp eq i32 %989, %.lcssa41
  br i1 %990, label %994, label %991

991:                                              ; preds = %986
  %992 = add nuw nsw i64 %987, 1
  %993 = icmp eq i64 %992, 29
  br i1 %993, label %996, label %986, !llvm.loop !70

994:                                              ; preds = %986
  %.lcssa14 = phi i64 [ %987, %986 ]
  %995 = trunc i64 %.lcssa14 to i32
  br label %996

996:                                              ; preds = %994, %991
  %997 = phi i32 [ %995, %994 ], [ 0, %991 ]
  %998 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.26, i32 noundef %948, double noundef %958, i32 noundef %985, i32 noundef %997) #21
  br label %1174

999:                                              ; preds = %790
  %1000 = load i32, ptr %705, align 4, !tbaa !40
  %1001 = load i32, ptr %703, align 4, !tbaa !42
  %1002 = load i32, ptr %706, align 4, !tbaa !41
  %1003 = add nsw i32 %1002, %1001
  %1004 = load i32, ptr %707, align 4, !tbaa !43
  %1005 = add nsw i32 %1003, %1004
  %1006 = icmp eq i32 %1005, 0
  %1007 = sitofp i32 %1000 to double
  %1008 = sitofp i32 %1005 to double
  %1009 = fdiv double %1007, %1008
  %1010 = select i1 %1006, double 0.000000e+00, double %1009
  %1011 = load i32, ptr %708, align 8, !tbaa !7
  %1012 = icmp eq i32 %1011, 0
  br i1 %1012, label %1013, label %1023

1013:                                             ; preds = %1018, %999
  %1014 = phi i64 [ %1019, %1018 ], [ 1, %999 ]
  %1015 = getelementptr inbounds i32, ptr @defence_ranks, i64 %1014
  %1016 = load i32, ptr %1015, align 4, !tbaa !7
  %1017 = icmp eq i32 %1016, %.lcssa41
  br i1 %1017, label %1021, label %1018

1018:                                             ; preds = %1013
  %1019 = add nuw nsw i64 %1014, 1
  %1020 = icmp eq i64 %1019, 29
  br i1 %1020, label %1036, label %1013, !llvm.loop !70

1021:                                             ; preds = %1013
  %.lcssa8 = phi i64 [ %1014, %1013 ]
  %1022 = trunc i64 %.lcssa8 to i32
  br label %1036

1023:                                             ; preds = %1028, %999
  %1024 = phi i64 [ %1029, %1028 ], [ 1, %999 ]
  %1025 = getelementptr inbounds i32, ptr @defence_ranks, i64 %1024
  %1026 = load i32, ptr %1025, align 4, !tbaa !7
  %1027 = icmp eq i32 %1026, %.lcssa41
  br i1 %1027, label %1031, label %1028

1028:                                             ; preds = %1023
  %1029 = add nuw nsw i64 %1024, 1
  %1030 = icmp eq i64 %1029, 29
  br i1 %1030, label %1033, label %1023, !llvm.loop !70

1031:                                             ; preds = %1023
  %.lcssa6 = phi i64 [ %1024, %1023 ]
  %1032 = trunc i64 %.lcssa6 to i32
  br label %1033

1033:                                             ; preds = %1031, %1028
  %1034 = phi i32 [ %1032, %1031 ], [ 0, %1028 ]
  %1035 = add nsw i32 %1034, -14
  br label %1036

1036:                                             ; preds = %1033, %1021, %1018
  %1037 = phi i32 [ %1035, %1033 ], [ %1022, %1021 ], [ 0, %1018 ]
  br label %1038

1038:                                             ; preds = %1043, %1036
  %1039 = phi i64 [ 1, %1036 ], [ %1044, %1043 ]
  %1040 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %1039
  %1041 = load i32, ptr %1040, align 4, !tbaa !7
  %1042 = icmp eq i32 %1041, %.lcssa41
  br i1 %1042, label %1046, label %1043

1043:                                             ; preds = %1038
  %1044 = add nuw nsw i64 %1039, 1
  %1045 = icmp eq i64 %1044, 29
  br i1 %1045, label %1048, label %1038, !llvm.loop !70

1046:                                             ; preds = %1038
  %.lcssa9 = phi i64 [ %1039, %1038 ]
  %1047 = trunc i64 %.lcssa9 to i32
  br label %1048

1048:                                             ; preds = %1046, %1043
  %1049 = phi i32 [ %1047, %1046 ], [ 0, %1043 ]
  %1050 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.27, i32 noundef %1000, double noundef %1010, i32 noundef %1037, i32 noundef %1049) #21
  br label %1174

1051:                                             ; preds = %790
  %1052 = load i32, ptr %704, align 4, !tbaa !38
  %1053 = load i32, ptr %705, align 4, !tbaa !40
  %1054 = sub nsw i32 %1052, %1053
  %1055 = load i32, ptr %703, align 4, !tbaa !42
  %1056 = load i32, ptr %706, align 4, !tbaa !41
  %1057 = add nsw i32 %1056, %1055
  %1058 = load i32, ptr %707, align 4, !tbaa !43
  %1059 = add nsw i32 %1057, %1058
  %1060 = icmp eq i32 %1059, 0
  %1061 = sitofp i32 %1054 to double
  %1062 = sitofp i32 %1059 to double
  %1063 = fdiv double %1061, %1062
  %1064 = select i1 %1060, double 0.000000e+00, double %1063
  %1065 = load i32, ptr %708, align 8, !tbaa !7
  %1066 = icmp eq i32 %1065, 0
  br i1 %1066, label %1067, label %1077

1067:                                             ; preds = %1072, %1051
  %1068 = phi i64 [ %1073, %1072 ], [ 1, %1051 ]
  %1069 = getelementptr inbounds i32, ptr @net_ranks, i64 %1068
  %1070 = load i32, ptr %1069, align 4, !tbaa !7
  %1071 = icmp eq i32 %1070, %.lcssa41
  br i1 %1071, label %1075, label %1072

1072:                                             ; preds = %1067
  %1073 = add nuw nsw i64 %1068, 1
  %1074 = icmp eq i64 %1073, 29
  br i1 %1074, label %1090, label %1067, !llvm.loop !70

1075:                                             ; preds = %1067
  %.lcssa3 = phi i64 [ %1068, %1067 ]
  %1076 = trunc i64 %.lcssa3 to i32
  br label %1090

1077:                                             ; preds = %1082, %1051
  %1078 = phi i64 [ %1083, %1082 ], [ 1, %1051 ]
  %1079 = getelementptr inbounds i32, ptr @net_ranks, i64 %1078
  %1080 = load i32, ptr %1079, align 4, !tbaa !7
  %1081 = icmp eq i32 %1080, %.lcssa41
  br i1 %1081, label %1085, label %1082

1082:                                             ; preds = %1077
  %1083 = add nuw nsw i64 %1078, 1
  %1084 = icmp eq i64 %1083, 29
  br i1 %1084, label %1087, label %1077, !llvm.loop !70

1085:                                             ; preds = %1077
  %.lcssa1 = phi i64 [ %1078, %1077 ]
  %1086 = trunc i64 %.lcssa1 to i32
  br label %1087

1087:                                             ; preds = %1085, %1082
  %1088 = phi i32 [ %1086, %1085 ], [ 0, %1082 ]
  %1089 = add nsw i32 %1088, -14
  br label %1090

1090:                                             ; preds = %1087, %1075, %1072
  %1091 = phi i32 [ %1089, %1087 ], [ %1076, %1075 ], [ 0, %1072 ]
  br label %1092

1092:                                             ; preds = %1097, %1090
  %1093 = phi i64 [ 1, %1090 ], [ %1098, %1097 ]
  %1094 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %1093
  %1095 = load i32, ptr %1094, align 4, !tbaa !7
  %1096 = icmp eq i32 %1095, %.lcssa41
  br i1 %1096, label %1100, label %1097

1097:                                             ; preds = %1092
  %1098 = add nuw nsw i64 %1093, 1
  %1099 = icmp eq i64 %1098, 29
  br i1 %1099, label %1102, label %1092, !llvm.loop !70

1100:                                             ; preds = %1092
  %.lcssa4 = phi i64 [ %1093, %1092 ]
  %1101 = trunc i64 %.lcssa4 to i32
  br label %1102

1102:                                             ; preds = %1100, %1097
  %1103 = phi i32 [ %1101, %1100 ], [ 0, %1097 ]
  %1104 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.28, i32 noundef %1054, double noundef %1064, i32 noundef %1091, i32 noundef %1103) #21
  br label %1174

1105:                                             ; preds = %790
  %1106 = call i64 @fwrite(ptr nonnull @.str.29, i64 19, i64 1, ptr %0)
  br label %1174

1107:                                             ; preds = %790
  %1108 = call i64 @fwrite(ptr nonnull @.str.30, i64 19, i64 1, ptr %0)
  br label %1174

1109:                                             ; preds = %790
  %1110 = load i32, ptr %715, align 4, !tbaa !42
  %1111 = load i32, ptr %718, align 4, !tbaa !41
  %1112 = load i32, ptr %719, align 4, !tbaa !43
  %1113 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.31, i32 noundef %1110, i32 noundef %1111, i32 noundef %1112) #21
  br label %1174

1114:                                             ; preds = %790
  %1115 = load i32, ptr %709, align 4, !tbaa !42
  %1116 = load i32, ptr %710, align 4, !tbaa !41
  %1117 = load i32, ptr %711, align 4, !tbaa !43
  %1118 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.32, i32 noundef %1115, i32 noundef %1116, i32 noundef %1117) #21
  br label %1174

1119:                                             ; preds = %790
  %1120 = call i64 @fwrite(ptr nonnull @.str.33, i64 19, i64 1, ptr %0)
  br label %1174

1121:                                             ; preds = %790
  %1122 = load i32, ptr %708, align 8, !tbaa !7
  %1123 = icmp eq i32 %1122, 0
  %1124 = select i1 %1123, ptr @.str.13, ptr @.str.14.2
  %1125 = load i32, ptr %716, align 4, !tbaa !38
  %1126 = load i32, ptr %717, align 4, !tbaa !40
  %1127 = sub nsw i32 %1125, %1126
  %1128 = load i32, ptr %715, align 4, !tbaa !42
  %1129 = load i32, ptr %718, align 4, !tbaa !41
  %1130 = add nsw i32 %1129, %1128
  %1131 = load i32, ptr %719, align 4, !tbaa !43
  %1132 = add nsw i32 %1130, %1131
  %1133 = icmp eq i32 %1132, 0
  %1134 = sitofp i32 %1127 to double
  %1135 = sitofp i32 %1132 to double
  %1136 = fdiv double %1134, %1135
  %1137 = select i1 %1133, double 0.000000e+00, double %1136
  %1138 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.34, ptr noundef nonnull %1124, ptr noundef nonnull %727, i32 noundef %1127, double noundef %1137) #21
  br label %1174

1139:                                             ; preds = %790
  %1140 = load i32, ptr %708, align 8, !tbaa !7
  %1141 = icmp eq i32 %1140, 0
  %1142 = select i1 %1141, ptr @.str.13, ptr @.str.14.2
  %1143 = load i32, ptr %709, align 4, !tbaa !42
  %1144 = load i32, ptr %710, align 4, !tbaa !41
  %1145 = add nsw i32 %1144, %1143
  %1146 = load i32, ptr %711, align 4, !tbaa !43
  %1147 = add nsw i32 %1145, %1146
  %1148 = icmp eq i32 %1147, 0
  br i1 %1148, label %1156, label %1149

1149:                                             ; preds = %1139
  %1150 = load i32, ptr %712, align 4, !tbaa !38
  %1151 = load i32, ptr %713, align 4, !tbaa !40
  %1152 = sub nsw i32 %1150, %1151
  %1153 = sitofp i32 %1152 to double
  %1154 = sitofp i32 %1147 to double
  %1155 = fdiv double %1153, %1154
  br label %1156

1156:                                             ; preds = %1149, %1139
  %1157 = phi double [ %1155, %1149 ], [ 0.000000e+00, %1139 ]
  %1158 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.35, ptr noundef nonnull %1142, double noundef %1157) #21
  br label %1174

1159:                                             ; preds = %790
  %1160 = load i32, ptr %704, align 4, !tbaa !38
  %1161 = load i32, ptr %705, align 4, !tbaa !40
  %1162 = sub nsw i32 %1160, %1161
  %1163 = load i32, ptr %703, align 4, !tbaa !42
  %1164 = load i32, ptr %706, align 4, !tbaa !41
  %1165 = add nsw i32 %1164, %1163
  %1166 = load i32, ptr %707, align 4, !tbaa !43
  %1167 = add nsw i32 %1165, %1166
  %1168 = icmp eq i32 %1167, 0
  %1169 = sitofp i32 %1162 to double
  %1170 = sitofp i32 %1167 to double
  %1171 = fdiv double %1169, %1170
  %1172 = select i1 %1168, double 0.000000e+00, double %1171
  %1173 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.36, i32 noundef %1162, double noundef %1172) #21
  br label %1174

1174:                                             ; preds = %1159, %1156, %1121, %1119, %1114, %1109, %1107, %1105, %1102, %1048, %996, %944, %891, %826, %822, %797, %792, %790
  %1175 = call i32 @fputc(i32 10, ptr %0)
  %1176 = add nuw nsw i64 %729, 1
  %1177 = icmp eq i64 %1176, 22
  br i1 %1177, label %1178, label %728, !llvm.loop !71

1178:                                             ; preds = %1174
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1179:                                             ; preds = %691
  %1180 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.130, i32 noundef 2) #21, !range !64
  %1181 = icmp eq i32 %1180, 0
  br i1 %1181, label %1548, label %1182

1182:                                             ; preds = %1179
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %3) #23
  %1183 = call fastcc ptr @skip_first(ptr noundef %65) #21
  %1184 = load i1, ptr @white_space.commentP, align 4
  br label %1185

1185:                                             ; preds = %1195, %1182
  %1186 = phi i1 [ %1184, %1182 ], [ %1196, %1195 ]
  %1187 = phi i1 [ %1184, %1182 ], [ %1197, %1195 ]
  %1188 = phi ptr [ %1183, %1182 ], [ %1198, %1195 ]
  %1189 = load i8, ptr %1188, align 1, !tbaa !17
  %1190 = icmp eq i8 %1189, 37
  br i1 %1190, label %1194, label %1191

1191:                                             ; preds = %1185
  br i1 %1187, label %1192, label %1193

1192:                                             ; preds = %1191
  switch i8 %1189, label %1195 [
    i8 10, label %1194
    i8 0, label %1271
  ]

1193:                                             ; preds = %1191
  switch i8 %1189, label %1199 [
    i8 32, label %1195
    i8 10, label %1195
    i8 9, label %1195
    i8 0, label %1271
  ]

1194:                                             ; preds = %1192, %1185
  store i1 %1190, ptr @white_space.commentP, align 4
  br label %1195

1195:                                             ; preds = %1194, %1193, %1193, %1193, %1192
  %1196 = phi i1 [ %1186, %1192 ], [ %1186, %1193 ], [ %1186, %1193 ], [ %1186, %1193 ], [ %1190, %1194 ]
  %1197 = phi i1 [ true, %1192 ], [ false, %1193 ], [ false, %1193 ], [ false, %1193 ], [ %1190, %1194 ]
  %1198 = getelementptr inbounds i8, ptr %1188, i64 1
  br label %1185, !llvm.loop !72

1199:                                             ; preds = %1264, %1193
  %1200 = phi i8 [ %1189, %1193 ], [ %1260, %1264 ]
  %1201 = phi i1 [ %1186, %1193 ], [ %1257, %1264 ]
  %1202 = phi i32 [ 0, %1193 ], [ %1253, %1264 ]
  %1203 = phi ptr [ %1188, %1193 ], [ %1259, %1264 ]
  br label %1204

1204:                                             ; preds = %1215, %1199
  %1205 = phi i8 [ %1200, %1199 ], [ %1219, %1215 ]
  %1206 = phi i1 [ %1201, %1199 ], [ %1216, %1215 ]
  %1207 = phi i1 [ %1201, %1199 ], [ %1217, %1215 ]
  %1208 = phi ptr [ %1203, %1199 ], [ %1218, %1215 ]
  %1209 = icmp eq i8 %1205, 37
  br i1 %1209, label %1214, label %1210

1210:                                             ; preds = %1204
  br i1 %1207, label %1211, label %1213

1211:                                             ; preds = %1210
  switch i8 %1205, label %1215 [
    i8 10, label %1214
    i8 0, label %1212
  ]

1212:                                             ; preds = %1213, %1211
  %.lcssa25 = phi i8 [ %1205, %1213 ], [ %1205, %1211 ]
  %.lcssa24 = phi i1 [ %1206, %1213 ], [ %1206, %1211 ]
  %.lcssa23 = phi ptr [ %1208, %1213 ], [ %1208, %1211 ]
  br i1 %.lcssa24, label %1228, label %1220

1213:                                             ; preds = %1210
  switch i8 %1205, label %1212 [
    i8 32, label %1215
    i8 10, label %1215
    i8 9, label %1215
  ]

1214:                                             ; preds = %1211, %1204
  store i1 %1209, ptr @white_space.commentP, align 4
  br label %1215

1215:                                             ; preds = %1214, %1213, %1213, %1213, %1211
  %1216 = phi i1 [ %1206, %1211 ], [ %1206, %1213 ], [ %1206, %1213 ], [ %1206, %1213 ], [ %1209, %1214 ]
  %1217 = phi i1 [ true, %1211 ], [ false, %1213 ], [ false, %1213 ], [ false, %1213 ], [ %1209, %1214 ]
  %1218 = getelementptr inbounds i8, ptr %1208, i64 1
  %1219 = load i8, ptr %1218, align 1, !tbaa !17
  br label %1204, !llvm.loop !72

1220:                                             ; preds = %1223, %1212
  %1221 = phi i8 [ %1225, %1223 ], [ %.lcssa25, %1212 ]
  %1222 = phi ptr [ %1224, %1223 ], [ %.lcssa23, %1212 ]
  switch i8 %1221, label %1223 [
    i8 32, label %1228
    i8 10, label %1228
    i8 9, label %1228
  ]

1223:                                             ; preds = %1220
  %1224 = getelementptr inbounds i8, ptr %1222, i64 1
  %1225 = load i8, ptr %1224, align 1, !tbaa !17
  %1226 = icmp eq i8 %1225, 37
  br i1 %1226, label %1227, label %1220, !llvm.loop !73

1227:                                             ; preds = %1223
  %.lcssa26 = phi ptr [ %1224, %1223 ]
  store i1 true, ptr @white_space.commentP, align 4
  br label %1228

1228:                                             ; preds = %1227, %1220, %1220, %1220, %1212
  %1229 = phi ptr [ %.lcssa26, %1227 ], [ %.lcssa23, %1212 ], [ %1222, %1220 ], [ %1222, %1220 ], [ %1222, %1220 ]
  %1230 = phi i8 [ 37, %1227 ], [ %.lcssa25, %1212 ], [ %1221, %1220 ], [ %1221, %1220 ], [ %1221, %1220 ]
  store i8 0, ptr %1229, align 1, !tbaa !17
  %1231 = call fastcc i32 @find_name(ptr noundef %0, ptr noundef nonnull %.lcssa23) #20
  store i8 %1230, ptr %1229, align 1, !tbaa !17
  %1232 = icmp eq i32 %1231, 0
  br i1 %1232, label %1270, label %1233

1233:                                             ; preds = %1228
  %1234 = icmp sgt i32 %1202, 0
  br i1 %1234, label %1235, label %1248

1235:                                             ; preds = %1233
  %1236 = zext i32 %1202 to i64
  br label %1237

1237:                                             ; preds = %1237, %1235
  %1238 = phi i64 [ 0, %1235 ], [ %1244, %1237 ]
  %1239 = phi i32 [ 1, %1235 ], [ %1243, %1237 ]
  %1240 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %1238
  %1241 = load i32, ptr %1240, align 4, !tbaa !7
  %1242 = icmp eq i32 %1241, %1231
  %1243 = select i1 %1242, i32 0, i32 %1239
  %1244 = add nuw nsw i64 %1238, 1
  %1245 = icmp eq i64 %1244, %1236
  br i1 %1245, label %1246, label %1237, !llvm.loop !74

1246:                                             ; preds = %1237
  %.lcssa27 = phi i32 [ %1243, %1237 ]
  %1247 = icmp eq i32 %.lcssa27, 0
  br i1 %1247, label %1252, label %1248

1248:                                             ; preds = %1246, %1233
  %1249 = sext i32 %1202 to i64
  %1250 = getelementptr inbounds [28 x i32], ptr %3, i64 0, i64 %1249
  store i32 %1231, ptr %1250, align 4, !tbaa !7
  %1251 = add nsw i32 %1202, 1
  br label %1252

1252:                                             ; preds = %1248, %1246
  %1253 = phi i32 [ %1251, %1248 ], [ %1202, %1246 ]
  %1254 = call fastcc ptr @skip_first(ptr noundef nonnull %1203) #21
  %1255 = load i1, ptr @white_space.commentP, align 4
  br label %1256

1256:                                             ; preds = %1266, %1252
  %1257 = phi i1 [ %1255, %1252 ], [ %1267, %1266 ]
  %1258 = phi i1 [ %1255, %1252 ], [ %1268, %1266 ]
  %1259 = phi ptr [ %1254, %1252 ], [ %1269, %1266 ]
  %1260 = load i8, ptr %1259, align 1, !tbaa !17
  %1261 = icmp eq i8 %1260, 37
  br i1 %1261, label %1265, label %1262

1262:                                             ; preds = %1256
  br i1 %1258, label %1263, label %1264

1263:                                             ; preds = %1262
  switch i8 %1260, label %1266 [
    i8 10, label %1265
    i8 0, label %1272
  ]

1264:                                             ; preds = %1262
  switch i8 %1260, label %1199 [
    i8 32, label %1266
    i8 10, label %1266
    i8 9, label %1266
    i8 0, label %1272
  ]

1265:                                             ; preds = %1263, %1256
  store i1 %1261, ptr @white_space.commentP, align 4
  br label %1266

1266:                                             ; preds = %1265, %1264, %1264, %1264, %1263
  %1267 = phi i1 [ %1257, %1263 ], [ %1257, %1264 ], [ %1257, %1264 ], [ %1257, %1264 ], [ %1261, %1265 ]
  %1268 = phi i1 [ true, %1263 ], [ false, %1264 ], [ false, %1264 ], [ false, %1264 ], [ %1261, %1265 ]
  %1269 = getelementptr inbounds i8, ptr %1259, i64 1
  br label %1256, !llvm.loop !72

1270:                                             ; preds = %1228
  %.lcssa28 = phi ptr [ %1203, %1228 ]
  store i8 0, ptr %.lcssa28, align 1, !tbaa !17
  br label %1271

1271:                                             ; preds = %1270, %1193, %1192
  br i1 %46, label %1546, label %1545

1272:                                             ; preds = %1264, %1263
  %.lcssa30 = phi i32 [ %1253, %1264 ], [ %1253, %1263 ]
  %1273 = icmp eq i32 %.lcssa30, 1
  br i1 %1273, label %1274, label %1402

1274:                                             ; preds = %1272
  %1275 = load i32, ptr %3, align 16, !tbaa !7
  %1276 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  store i32 %1275, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 1), align 4, !tbaa !7
  %1277 = call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %0)
  %1278 = call i64 @fwrite(ptr nonnull @.str.53, i64 33, i64 1, ptr %0)
  %1279 = call i64 @fwrite(ptr nonnull @.str.54, i64 42, i64 1, ptr %0)
  %1280 = call i64 @fwrite(ptr nonnull @.str.55, i64 38, i64 1, ptr %0)
  %1281 = sext i32 %1275 to i64
  %1282 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1281
  %1283 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.56, ptr noundef nonnull %1282) #21
  %1284 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.57, ptr noundef nonnull %1282) #21
  %1285 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1281
  %1286 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1281, i64 1
  %1287 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1281
  %1288 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1281, i32 1
  %1289 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1281, i32 2
  %1290 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1281, i32 3
  %1291 = load i32, ptr %1285, align 8, !tbaa !7
  br label %1292

1292:                                             ; preds = %1399, %1274
  %1293 = phi i64 [ 1, %1274 ], [ %1400, %1399 ]
  %1294 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %1293
  %1295 = load i32, ptr %1294, align 4, !tbaa !7
  %1296 = sext i32 %1295 to i64
  %1297 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1296
  %1298 = load i32, ptr %1297, align 8, !tbaa !7
  %1299 = icmp eq i32 %1298, %1291
  br i1 %1299, label %1300, label %1399

1300:                                             ; preds = %1292
  store i32 %1295, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 2), align 8, !tbaa !7
  %1301 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1296, i64 1
  %1302 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1296
  %1303 = load i32, ptr %1302, align 4, !tbaa !42
  %1304 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1296, i32 1
  %1305 = load i32, ptr %1304, align 4, !tbaa !41
  %1306 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1296, i32 2
  %1307 = load i32, ptr %1306, align 4, !tbaa !43
  %1308 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %1301, i32 noundef %1303, i32 noundef %1305, i32 noundef %1307) #21
  %1309 = icmp eq i32 %1295, %1275
  br i1 %1309, label %1318, label %1310

1310:                                             ; preds = %1300
  %1311 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1296, i64 %1281
  %1312 = load i32, ptr %1311, align 4, !tbaa !42
  %1313 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1296, i64 %1281, i32 1
  %1314 = load i32, ptr %1313, align 4, !tbaa !41
  %1315 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1296, i64 %1281, i32 2
  %1316 = load i32, ptr %1315, align 4, !tbaa !43
  %1317 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %1312, i32 noundef %1314, i32 noundef %1316) #21
  br label %1320

1318:                                             ; preds = %1300
  %1319 = call i64 @fwrite(ptr nonnull @.str.58, i64 5, i64 1, ptr %0)
  br label %1320

1320:                                             ; preds = %1318, %1310
  %1321 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1296, i64 1
  %1322 = load i32, ptr %1321, align 4, !tbaa !7
  %1323 = load i32, ptr %1286, align 4, !tbaa !7
  %1324 = icmp eq i32 %1322, %1323
  br i1 %1324, label %1325, label %1333

1325:                                             ; preds = %1320
  %1326 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1296
  %1327 = load i32, ptr %1326, align 4, !tbaa !42
  %1328 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1296, i32 1
  %1329 = load i32, ptr %1328, align 4, !tbaa !41
  %1330 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1296, i32 2
  %1331 = load i32, ptr %1330, align 4, !tbaa !43
  %1332 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %1327, i32 noundef %1329, i32 noundef %1331) #21
  br label %1335

1333:                                             ; preds = %1320
  %1334 = call i64 @fwrite(ptr nonnull @.str.59, i64 6, i64 1, ptr %0)
  br label %1335

1335:                                             ; preds = %1333, %1325
  %1336 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1296
  %1337 = load i32, ptr %1336, align 4, !tbaa !42
  %1338 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1296, i32 1
  %1339 = load i32, ptr %1338, align 4, !tbaa !41
  %1340 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1296, i32 2
  %1341 = load i32, ptr %1340, align 4, !tbaa !43
  %1342 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %1337, i32 noundef %1339, i32 noundef %1341) #21
  call fastcc void @common(i32 noundef 2) #20
  br i1 %1309, label %1361, label %1343

1343:                                             ; preds = %1335
  %1344 = load i32, ptr %1287, align 4, !tbaa !42
  %1345 = icmp eq i32 %1344, -1
  br i1 %1345, label %1361, label %1346

1346:                                             ; preds = %1343
  %1347 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1296
  %1348 = load i32, ptr %1347, align 4, !tbaa !42
  %1349 = icmp eq i32 %1348, -1
  br i1 %1349, label %1361, label %1350

1350:                                             ; preds = %1346
  %1351 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1296, i32 1
  %1352 = load i32, ptr %1351, align 4, !tbaa !41
  %1353 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1296, i32 2
  %1354 = load i32, ptr %1353, align 4, !tbaa !43
  %1355 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1296, i32 3
  %1356 = load i32, ptr %1355, align 4, !tbaa !38
  %1357 = load i32, ptr %1288, align 4, !tbaa !41
  %1358 = load i32, ptr %1289, align 4, !tbaa !43
  %1359 = load i32, ptr %1290, align 4, !tbaa !38
  %1360 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.60, i32 noundef %1348, i32 noundef %1352, i32 noundef %1354, i32 noundef %1356, i32 noundef %1344, i32 noundef %1357, i32 noundef %1358, i32 noundef %1359) #21
  br label %1363

1361:                                             ; preds = %1346, %1343, %1335
  %1362 = call i64 @fwrite(ptr nonnull @.str.61, i64 24, i64 1, ptr %0)
  br label %1363

1363:                                             ; preds = %1361, %1350
  br i1 %1324, label %1364, label %1371

1364:                                             ; preds = %1363
  %1365 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1296, i32 3
  %1366 = load i32, ptr %1365, align 4, !tbaa !38
  %1367 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1296, i32 4
  %1368 = load i32, ptr %1367, align 4, !tbaa !40
  %1369 = sub nsw i32 %1366, %1368
  %1370 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %1369) #21
  br label %1373

1371:                                             ; preds = %1363
  %1372 = call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  br label %1373

1373:                                             ; preds = %1371, %1364
  %1374 = load i32, ptr %1336, align 4, !tbaa !42
  %1375 = load i32, ptr %1338, align 4, !tbaa !41
  %1376 = add nsw i32 %1375, %1374
  %1377 = load i32, ptr %1340, align 4, !tbaa !43
  %1378 = add nsw i32 %1376, %1377
  %1379 = icmp eq i32 %1378, 0
  br i1 %1379, label %1389, label %1380

1380:                                             ; preds = %1373
  %1381 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1296, i32 3
  %1382 = load i32, ptr %1381, align 4, !tbaa !38
  %1383 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1296, i32 4
  %1384 = load i32, ptr %1383, align 4, !tbaa !40
  %1385 = sub nsw i32 %1382, %1384
  %1386 = sitofp i32 %1385 to double
  %1387 = sitofp i32 %1378 to double
  %1388 = fdiv double %1386, %1387
  br label %1389

1389:                                             ; preds = %1380, %1373
  %1390 = phi double [ %1388, %1380 ], [ 0.000000e+00, %1373 ]
  %1391 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.63, double noundef %1390) #21
  %1392 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1296, i32 3
  %1393 = load i32, ptr %1392, align 4, !tbaa !38
  %1394 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1296, i32 4
  %1395 = load i32, ptr %1394, align 4, !tbaa !40
  %1396 = sub nsw i32 %1393, %1395
  %1397 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %1396) #21
  %1398 = call i32 @fputc(i32 10, ptr %0)
  br label %1399

1399:                                             ; preds = %1389, %1292
  %1400 = add nuw nsw i64 %1293, 1
  %1401 = icmp eq i64 %1400, 29
  br i1 %1401, label %1545, label %1292, !llvm.loop !75

1402:                                             ; preds = %1272
  %1403 = icmp slt i32 %.lcssa30, 2
  br i1 %1403, label %1545, label %1404

1404:                                             ; preds = %1402
  %1405 = load i32, ptr %3, align 16, !tbaa !7
  store i32 %1405, ptr getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 1), align 4, !tbaa !7
  %1406 = zext i32 %.lcssa30 to i64
  %1407 = sext i32 %1405 to i64
  %1408 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1407
  %1409 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1407, i64 1
  %1410 = shl nuw nsw i64 %1406, 2
  %1411 = add nsw i64 %1410, -4
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 8 getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 2), ptr nonnull align 4 %31, i64 %1411, i1 false), !tbaa !7
  br label %1412

1412:                                             ; preds = %1436, %1404
  %1413 = phi i64 [ 1, %1404 ], [ %1418, %1436 ]
  %1414 = phi i32 [ 1, %1404 ], [ %1438, %1436 ]
  %1415 = phi i32 [ 1, %1404 ], [ %1428, %1436 ]
  %1416 = getelementptr inbounds i32, ptr %3, i64 %1413
  %1417 = load i32, ptr %1416, align 4, !tbaa !7
  %1418 = add nuw nsw i64 %1413, 1
  %1419 = icmp eq i32 %1415, 0
  br i1 %1419, label %1426, label %1420

1420:                                             ; preds = %1412
  %1421 = sext i32 %1417 to i64
  %1422 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1421
  %1423 = load i32, ptr %1422, align 8, !tbaa !7
  %1424 = load i32, ptr %1408, align 8, !tbaa !7
  %1425 = icmp eq i32 %1423, %1424
  br label %1426

1426:                                             ; preds = %1420, %1412
  %1427 = phi i1 [ false, %1412 ], [ %1425, %1420 ]
  %1428 = zext i1 %1427 to i32
  %1429 = icmp eq i32 %1414, 0
  br i1 %1429, label %1436, label %1430

1430:                                             ; preds = %1426
  %1431 = sext i32 %1417 to i64
  %1432 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %1431, i64 1
  %1433 = load i32, ptr %1432, align 4, !tbaa !7
  %1434 = load i32, ptr %1409, align 4, !tbaa !7
  %1435 = icmp eq i32 %1433, %1434
  br label %1436

1436:                                             ; preds = %1430, %1426
  %1437 = phi i1 [ false, %1426 ], [ %1435, %1430 ]
  %1438 = zext i1 %1437 to i32
  %1439 = icmp eq i64 %1418, %1406
  br i1 %1439, label %1440, label %1412, !llvm.loop !76

1440:                                             ; preds = %1436
  %.lcssa32 = phi i1 [ %1437, %1436 ]
  %.lcssa31 = phi i1 [ %1427, %1436 ]
  br i1 %.lcssa31, label %1443, label %1441

1441:                                             ; preds = %1440
  %1442 = call i64 @fwrite(ptr nonnull @.str.38, i64 51, i64 1, ptr %0)
  br label %1545

1443:                                             ; preds = %1440
  %1444 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  br i1 %.lcssa32, label %1445, label %1545

1445:                                             ; preds = %1443
  %1446 = call i64 @fwrite(ptr nonnull @.str.39, i64 42, i64 1, ptr %0)
  %1447 = call i64 @fwrite(ptr nonnull @.str.40, i64 16, i64 1, ptr %0)
  %1448 = call i64 @fwrite(ptr nonnull @.str.41, i64 42, i64 1, ptr %0)
  %1449 = call i64 @fwrite(ptr nonnull @.str.42, i64 21, i64 1, ptr %0)
  %1450 = call i64 @fwrite(ptr nonnull @.str.43, i64 42, i64 1, ptr %0)
  %1451 = call i64 @fwrite(ptr nonnull @.str.44, i64 22, i64 1, ptr %0)
  br label %1452

1452:                                             ; preds = %1542, %1445
  %1453 = phi i64 [ 1, %1445 ], [ %1543, %1542 ]
  %1454 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %1453
  %1455 = load i32, ptr %1454, align 4, !tbaa !7
  br label %1459

1456:                                             ; preds = %1459
  %1457 = add nuw nsw i64 %1460, 1
  %1458 = icmp eq i64 %1457, %1406
  br i1 %1458, label %1542, label %1459, !llvm.loop !77

1459:                                             ; preds = %1456, %1452
  %1460 = phi i64 [ 0, %1452 ], [ %1457, %1456 ]
  %1461 = getelementptr inbounds i32, ptr %3, i64 %1460
  %1462 = load i32, ptr %1461, align 4, !tbaa !7
  %1463 = icmp eq i32 %1462, %1455
  br i1 %1463, label %1464, label %1456

1464:                                             ; preds = %1459
  %1465 = sext i32 %1455 to i64
  %1466 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1465, i64 1
  %1467 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1465
  %1468 = load i32, ptr %1467, align 4, !tbaa !42
  %1469 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1465, i32 1
  %1470 = load i32, ptr %1469, align 4, !tbaa !41
  %1471 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1465, i32 2
  %1472 = load i32, ptr %1471, align 4, !tbaa !43
  %1473 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.45, ptr noundef nonnull %1466, i32 noundef %1468, i32 noundef %1470, i32 noundef %1472) #21
  br label %1474

1474:                                             ; preds = %1493, %1464
  %1475 = phi i64 [ %1497, %1493 ], [ 0, %1464 ]
  %1476 = phi i32 [ %1496, %1493 ], [ 0, %1464 ]
  %1477 = phi i32 [ %1495, %1493 ], [ 0, %1464 ]
  %1478 = phi i32 [ %1494, %1493 ], [ 0, %1464 ]
  %1479 = getelementptr inbounds i32, ptr %3, i64 %1475
  %1480 = load i32, ptr %1479, align 4, !tbaa !7
  %1481 = icmp eq i32 %1480, %1455
  br i1 %1481, label %1493, label %1482

1482:                                             ; preds = %1474
  %1483 = sext i32 %1480 to i64
  %1484 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1465, i64 %1483
  %1485 = load i32, ptr %1484, align 4, !tbaa !42
  %1486 = add nsw i32 %1485, %1478
  %1487 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1465, i64 %1483, i32 1
  %1488 = load i32, ptr %1487, align 4, !tbaa !41
  %1489 = add nsw i32 %1488, %1477
  %1490 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %1465, i64 %1483, i32 2
  %1491 = load i32, ptr %1490, align 4, !tbaa !43
  %1492 = add nsw i32 %1491, %1476
  br label %1493

1493:                                             ; preds = %1482, %1474
  %1494 = phi i32 [ %1486, %1482 ], [ %1478, %1474 ]
  %1495 = phi i32 [ %1489, %1482 ], [ %1477, %1474 ]
  %1496 = phi i32 [ %1492, %1482 ], [ %1476, %1474 ]
  %1497 = add nuw nsw i64 %1475, 1
  %1498 = icmp eq i64 %1497, %1406
  br i1 %1498, label %1499, label %1474, !llvm.loop !78

1499:                                             ; preds = %1493
  %.lcssa35 = phi i32 [ %1494, %1493 ]
  %.lcssa34 = phi i32 [ %1495, %1493 ]
  %.lcssa33 = phi i32 [ %1496, %1493 ]
  %1500 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.46, i32 noundef %.lcssa35, i32 noundef %.lcssa34, i32 noundef %.lcssa33) #21
  %1501 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1465
  %1502 = load i32, ptr %1501, align 4, !tbaa !42
  %1503 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1465, i32 1
  %1504 = load i32, ptr %1503, align 4, !tbaa !41
  %1505 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1465, i32 2
  %1506 = load i32, ptr %1505, align 4, !tbaa !43
  %1507 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.47, i32 noundef %1502, i32 noundef %1504, i32 noundef %1506) #21
  %1508 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1465
  %1509 = load i32, ptr %1508, align 4, !tbaa !42
  %1510 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1465, i32 1
  %1511 = load i32, ptr %1510, align 4, !tbaa !41
  %1512 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %1465, i32 2
  %1513 = load i32, ptr %1512, align 4, !tbaa !43
  %1514 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.48, i32 noundef %1509, i32 noundef %1511, i32 noundef %1513) #21
  call fastcc void @common(i32 noundef %.lcssa30) #20
  %1515 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1465
  %1516 = load i32, ptr %1515, align 4, !tbaa !42
  %1517 = icmp eq i32 %1516, -1
  br i1 %1517, label %1526, label %1518

1518:                                             ; preds = %1499
  %1519 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1465, i32 1
  %1520 = load i32, ptr %1519, align 4, !tbaa !41
  %1521 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1465, i32 2
  %1522 = load i32, ptr %1521, align 4, !tbaa !43
  %1523 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %1465, i32 3
  %1524 = load i32, ptr %1523, align 4, !tbaa !38
  %1525 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.49, i32 noundef %1516, i32 noundef %1520, i32 noundef %1522, i32 noundef %1524) #21
  br label %1528

1526:                                             ; preds = %1499
  %1527 = call i64 @fwrite(ptr nonnull @.str.50, i64 12, i64 1, ptr %0)
  br label %1528

1528:                                             ; preds = %1526, %1518
  %1529 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1465, i32 3
  %1530 = load i32, ptr %1529, align 4, !tbaa !38
  %1531 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %1465, i32 4
  %1532 = load i32, ptr %1531, align 4, !tbaa !40
  %1533 = sub nsw i32 %1530, %1532
  %1534 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.51, i32 noundef %1533) #21
  %1535 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1465, i32 3
  %1536 = load i32, ptr %1535, align 4, !tbaa !38
  %1537 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %1465, i32 4
  %1538 = load i32, ptr %1537, align 4, !tbaa !40
  %1539 = sub nsw i32 %1536, %1538
  %1540 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.52, i32 noundef %1539) #21
  %1541 = call i32 @fputc(i32 10, ptr %0)
  br label %1542

1542:                                             ; preds = %1528, %1456
  %1543 = add nuw nsw i64 %1453, 1
  %1544 = icmp eq i64 %1543, 29
  br i1 %1544, label %1545, label %1452, !llvm.loop !79

1545:                                             ; preds = %1542, %1443, %1441, %1402, %1399, %1271
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1546

1546:                                             ; preds = %1545, %1271
  %1547 = phi i32 [ 0, %1271 ], [ 1, %1545 ]
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %3) #23
  br label %1679

1548:                                             ; preds = %1179
  %1549 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.131, i32 noundef 1) #21, !range !64
  %1550 = icmp eq i32 %1549, 0
  br i1 %1550, label %1552, label %1551

1551:                                             ; preds = %1548
  call fastcc void @display_records(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1552:                                             ; preds = %1548
  %1553 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.132, i32 noundef 1) #21, !range !64
  %1554 = icmp eq i32 %1553, 0
  br i1 %1554, label %1556, label %1555

1555:                                             ; preds = %1552
  call fastcc void @display_rankings(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1556:                                             ; preds = %1552
  %1557 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.133, i32 noundef 1) #21, !range !64
  %1558 = icmp eq i32 %1557, 0
  br i1 %1558, label %1560, label %1559

1559:                                             ; preds = %1556
  call fastcc void @display_defence(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1560:                                             ; preds = %1556
  %1561 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.134, i32 noundef 1) #21, !range !64
  %1562 = icmp eq i32 %1561, 0
  br i1 %1562, label %1564, label %1563

1563:                                             ; preds = %1560
  call fastcc void @display_offence(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1564:                                             ; preds = %1560
  %1565 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.135, i32 noundef 1) #21, !range !64
  %1566 = icmp eq i32 %1565, 0
  br i1 %1566, label %1568, label %1567

1567:                                             ; preds = %1564
  call fastcc void @display_net(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1568:                                             ; preds = %1564
  %1569 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.136, i32 noundef 1) #21, !range !64
  %1570 = icmp eq i32 %1569, 0
  br i1 %1570, label %1675, label %1571

1571:                                             ; preds = %1568
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #23
  %1572 = call fastcc ptr @skip_first(ptr noundef %65) #21
  %1573 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1572, ptr noundef nonnull @.str.84, ptr noundef nonnull %4) #20
  %1574 = load i32, ptr %4, align 4, !tbaa !7
  %1575 = icmp slt i32 %1574, 1
  %1576 = load i32, ptr @num_games, align 4
  %1577 = icmp sgt i32 %1574, %1576
  %1578 = select i1 %1575, i1 true, i1 %1577
  br i1 %1578, label %1673, label %1579

1579:                                             ; preds = %1571
  %1580 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %1581 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.72, i32 noundef %1574) #21
  %1582 = zext i32 %1574 to i64
  br label %1583

1583:                                             ; preds = %1668, %1579
  %1584 = phi i64 [ 1, %1579 ], [ %1670, %1668 ]
  %1585 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1584, i64 1
  %1586 = load i32, ptr %1585, align 4, !tbaa !7
  %1587 = sext i32 %1586 to i64
  %1588 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1587, i64 1
  %1589 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1588) #21
  %1590 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1584, i64 1
  %1591 = load i32, ptr %1590, align 4, !tbaa !7
  %1592 = icmp slt i32 %1591, 0
  br i1 %1592, label %1593, label %1595

1593:                                             ; preds = %1583
  %1594 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1597

1595:                                             ; preds = %1583
  %1596 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %1591) #21
  br label %1597

1597:                                             ; preds = %1595, %1593
  %1598 = add nuw nsw i64 %1584, 1
  %1599 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1598, i64 1
  %1600 = load i32, ptr %1599, align 4, !tbaa !7
  %1601 = sext i32 %1600 to i64
  %1602 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1601, i64 1
  %1603 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1602) #21
  %1604 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1598, i64 1
  %1605 = load i32, ptr %1604, align 4, !tbaa !7
  %1606 = icmp slt i32 %1605, 0
  br i1 %1606, label %1607, label %1609

1607:                                             ; preds = %1597
  %1608 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1611

1609:                                             ; preds = %1597
  %1610 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %1605) #21
  br label %1611

1611:                                             ; preds = %1609, %1607
  %1612 = add nuw nsw i64 %1584, 2
  %1613 = icmp ult i64 %1584, 13
  br i1 %1613, label %1614, label %1627

1614:                                             ; preds = %1611
  %1615 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1612, i64 1
  %1616 = load i32, ptr %1615, align 4, !tbaa !7
  %1617 = sext i32 %1616 to i64
  %1618 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1617, i64 1
  %1619 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1618) #21
  %1620 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1612, i64 1
  %1621 = load i32, ptr %1620, align 4, !tbaa !7
  %1622 = icmp slt i32 %1621, 0
  br i1 %1622, label %1623, label %1625

1623:                                             ; preds = %1614
  %1624 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1627

1625:                                             ; preds = %1614
  %1626 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %1621) #21
  br label %1627

1627:                                             ; preds = %1625, %1623, %1611
  %1628 = call i32 @fputc(i32 10, ptr %0)
  %1629 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1584, i64 2
  %1630 = load i32, ptr %1629, align 4, !tbaa !7
  %1631 = sext i32 %1630 to i64
  %1632 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1631, i64 1
  %1633 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1632) #21
  %1634 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1584, i64 2
  %1635 = load i32, ptr %1634, align 4, !tbaa !7
  %1636 = icmp slt i32 %1635, 0
  br i1 %1636, label %1637, label %1639

1637:                                             ; preds = %1627
  %1638 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1641

1639:                                             ; preds = %1627
  %1640 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %1635) #21
  br label %1641

1641:                                             ; preds = %1639, %1637
  %1642 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1598, i64 2
  %1643 = load i32, ptr %1642, align 4, !tbaa !7
  %1644 = sext i32 %1643 to i64
  %1645 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1644, i64 1
  %1646 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1645) #21
  %1647 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1598, i64 2
  %1648 = load i32, ptr %1647, align 4, !tbaa !7
  %1649 = icmp slt i32 %1648, 0
  br i1 %1649, label %1650, label %1652

1650:                                             ; preds = %1641
  %1651 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1654

1652:                                             ; preds = %1641
  %1653 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.75, i32 noundef %1648) #21
  br label %1654

1654:                                             ; preds = %1652, %1650
  br i1 %1613, label %1655, label %1671

1655:                                             ; preds = %1654
  %1656 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1582, i64 %1612, i64 2
  %1657 = load i32, ptr %1656, align 4, !tbaa !7
  %1658 = sext i32 %1657 to i64
  %1659 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1658, i64 1
  %1660 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1659) #21
  %1661 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1582, i64 %1612, i64 2
  %1662 = load i32, ptr %1661, align 4, !tbaa !7
  %1663 = icmp slt i32 %1662, 0
  br i1 %1663, label %1664, label %1666

1664:                                             ; preds = %1655
  %1665 = call i64 @fwrite(ptr nonnull @.str.74, i64 10, i64 1, ptr %0)
  br label %1668

1666:                                             ; preds = %1655
  %1667 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.76, i32 noundef %1662) #21
  br label %1668

1668:                                             ; preds = %1666, %1664
  %1669 = call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %0)
  %1670 = add nuw nsw i64 %1584, 3
  br label %1583, !llvm.loop !80

1671:                                             ; preds = %1654
  %1672 = call i64 @fwrite(ptr nonnull @.str.77, i64 2, i64 1, ptr %0)
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1673

1673:                                             ; preds = %1671, %1571
  %1674 = phi i32 [ 1, %1671 ], [ %47, %1571 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #23
  br label %1679

1675:                                             ; preds = %1568
  %1676 = call fastcc i32 @matches(ptr noundef %65, ptr noundef nonnull @.str.137, i32 noundef 2) #21, !range !64
  %1677 = icmp eq i32 %1676, 0
  br i1 %1677, label %1679, label %1678

1678:                                             ; preds = %1675
  call fastcc void @display_team(ptr noundef %0) #21
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1895

1679:                                             ; preds = %1675, %1673, %1546, %694
  %1680 = phi i32 [ %1547, %1546 ], [ %1674, %1673 ], [ %47, %1675 ], [ %47, %694 ]
  %1681 = icmp eq i32 %1680, 0
  br i1 %1681, label %1682, label %1895

1682:                                             ; preds = %1679
  %1683 = call i64 @fwrite(ptr nonnull @.str.138, i64 25, i64 1, ptr %0)
  br label %1892

1684:                                             ; preds = %61
  %1685 = call fastcc i32 @matches(ptr noundef nonnull %37, ptr noundef nonnull @.str.139, i32 noundef 1) #21, !range !64
  %1686 = icmp eq i32 %1685, 0
  br i1 %1686, label %1888, label %1687

1687:                                             ; preds = %1684
  %1688 = call fastcc ptr @skip_first(ptr noundef nonnull %37) #21
  %1689 = call fastcc i32 @matches(ptr noundef %1688, ptr noundef nonnull @.str.136, i32 noundef 1) #21, !range !64
  %1690 = icmp eq i32 %1689, 0
  br i1 %1690, label %1883, label %1691

1691:                                             ; preds = %1687
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  %1692 = call fastcc ptr @skip_first(ptr noundef %1688) #21
  %1693 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %1692, ptr noundef nonnull @.str.84, ptr noundef nonnull %5) #20
  %1694 = load i32, ptr %5, align 4, !tbaa !7
  %1695 = icmp slt i32 %1694, 1
  %1696 = load i32, ptr @num_games, align 4
  %1697 = icmp sgt i32 %1694, %1696
  %1698 = select i1 %1695, i1 true, i1 %1697
  br i1 %1698, label %1881, label %1699

1699:                                             ; preds = %1691
  %1700 = call fastcc ptr @skip_first(ptr noundef %1692) #21
  %1701 = load i8, ptr %1700, align 1, !tbaa !17
  %1702 = icmp eq i8 %1701, 0
  br i1 %1702, label %1703, label %1809

1703:                                             ; preds = %1699
  %1704 = load i32, ptr %5, align 4, !tbaa !7
  %1705 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %1706 = call i64 @fwrite(ptr nonnull @.str.78, i64 46, i64 1, ptr %0)
  %1707 = call i64 @fwrite(ptr nonnull @.str.79, i64 52, i64 1, ptr %0)
  %1708 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %1704) #21
  %1709 = sext i32 %1704 to i64
  br label %1710

1710:                                             ; preds = %1806, %1703
  %1711 = phi i32 [ undef, %1703 ], [ %.lcssa39, %1806 ]
  %1712 = phi i32 [ undef, %1703 ], [ %.lcssa40, %1806 ]
  br label %1713

1713:                                             ; preds = %1723, %1710
  %1714 = call i64 @fwrite(ptr nonnull @.str.85, i64 19, i64 1, ptr %0)
  %1715 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %1716 = load i8, ptr @responce, align 16, !tbaa !17
  %1717 = icmp eq i8 %1716, 0
  br i1 %1717, label %1880, label %1718

1718:                                             ; preds = %1713
  %1719 = call fastcc i32 @matches(ptr noundef nonnull @responce, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %1720 = icmp eq i32 %1719, 0
  br i1 %1720, label %1721, label %1880

1721:                                             ; preds = %1718
  %1722 = call fastcc i32 @find_name(ptr noundef %0, ptr noundef nonnull %1715) #20
  switch i32 %1722, label %1724 [
    i32 29, label %1723
    i32 0, label %1723
  ]

1723:                                             ; preds = %1721, %1721
  br label %1713

1724:                                             ; preds = %1736, %1721
  %.lcssa36 = phi i32 [ %.lcssa36, %1736 ], [ %1722, %1721 ]
  %1725 = phi i64 [ %1746, %1736 ], [ 1, %1721 ]
  %1726 = phi i32 [ %1745, %1736 ], [ %1711, %1721 ]
  %1727 = phi i32 [ %1744, %1736 ], [ %1712, %1721 ]
  %1728 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1709, i64 %1725, i64 2
  %1729 = load i32, ptr %1728, align 4, !tbaa !7
  %1730 = icmp eq i32 %1729, %.lcssa36
  %1731 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1709, i64 %1725, i64 1
  %1732 = load i32, ptr %1731, align 4, !tbaa !7
  br i1 %1730, label %1733, label %1736

1733:                                             ; preds = %1724
  %1734 = icmp eq i32 %1732, 29
  br i1 %1734, label %1736, label %1735

1735:                                             ; preds = %1733
  br label %1736

1736:                                             ; preds = %1735, %1733, %1724
  %1737 = phi i32 [ %1732, %1735 ], [ 29, %1733 ], [ %1732, %1724 ]
  %1738 = phi i1 [ false, %1735 ], [ true, %1733 ], [ true, %1724 ]
  %1739 = phi i32 [ 2, %1735 ], [ %1727, %1733 ], [ %1727, %1724 ]
  %1740 = phi i32 [ 1, %1735 ], [ %1726, %1733 ], [ %1726, %1724 ]
  %1741 = icmp ne i32 %1737, %.lcssa36
  %1742 = icmp eq i32 %1729, 29
  %1743 = or i1 %1742, %1741
  %1744 = select i1 %1743, i32 %1739, i32 1
  %1745 = select i1 %1743, i32 %1740, i32 2
  %1746 = add nuw nsw i64 %1725, 1
  %1747 = icmp ult i64 %1725, 14
  %1748 = and i1 %1738, %1743
  %1749 = select i1 %1747, i1 %1748, i1 false
  br i1 %1749, label %1724, label %1750, !llvm.loop !81

1750:                                             ; preds = %1736
  %.lcssa40 = phi i32 [ %1744, %1736 ]
  %.lcssa39 = phi i32 [ %1745, %1736 ]
  %.lcssa38 = phi i1 [ %1748, %1736 ]
  %.lcssa37 = phi i64 [ %1725, %1736 ]
  %.lcssa36.lcssa = phi i32 [ %.lcssa36, %1736 ]
  br i1 %.lcssa38, label %1751, label %1755

1751:                                             ; preds = %1750
  %1752 = sext i32 %.lcssa36.lcssa to i64
  %1753 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1752, i64 1
  %1754 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.86, ptr noundef nonnull %1753, i32 noundef %1704) #21
  br label %1806

1755:                                             ; preds = %1750
  %1756 = and i64 %.lcssa37, 4294967295
  %1757 = sext i32 %.lcssa40 to i64
  %1758 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1709, i64 %1756, i64 %1757
  %1759 = load i32, ptr %1758, align 4, !tbaa !7
  %1760 = sext i32 %1759 to i64
  %1761 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1760, i64 1
  %1762 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1761) #21
  %1763 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1709, i64 %1756, i64 %1757
  %1764 = load i32, ptr %1763, align 4, !tbaa !7
  %1765 = icmp slt i32 %1764, 0
  br i1 %1765, label %1766, label %1768

1766:                                             ; preds = %1755
  %1767 = call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %1770

1768:                                             ; preds = %1755
  %1769 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %1764) #21
  br label %1770

1770:                                             ; preds = %1768, %1766
  %1771 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %1772 = call fastcc i32 @matches(ptr noundef nonnull %1771, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %1773 = icmp ne i32 %1772, 0
  %1774 = load i8, ptr %1771, align 1, !tbaa !17
  %1775 = icmp eq i8 %1774, 0
  %1776 = or i1 %1773, %1775
  br i1 %1776, label %1779, label %1777

1777:                                             ; preds = %1770
  %1778 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1771, ptr noundef nonnull @.str.84, ptr noundef nonnull %1763) #20
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %1780

1779:                                             ; preds = %1770
  br i1 %1773, label %1803, label %1780

1780:                                             ; preds = %1779, %1777
  %1781 = sext i32 %.lcssa39 to i64
  %1782 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1709, i64 %1756, i64 %1781
  %1783 = load i32, ptr %1782, align 4, !tbaa !7
  %1784 = sext i32 %1783 to i64
  %1785 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1784, i64 1
  %1786 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1785) #21
  %1787 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1709, i64 %1756, i64 %1781
  %1788 = load i32, ptr %1787, align 4, !tbaa !7
  %1789 = icmp slt i32 %1788, 0
  br i1 %1789, label %1790, label %1792

1790:                                             ; preds = %1780
  %1791 = call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %1794

1792:                                             ; preds = %1780
  %1793 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %1788) #21
  br label %1794

1794:                                             ; preds = %1792, %1790
  %1795 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %1796 = call fastcc i32 @matches(ptr noundef nonnull %1795, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %1797 = icmp ne i32 %1796, 0
  %1798 = load i8, ptr %1795, align 1, !tbaa !17
  %1799 = icmp eq i8 %1798, 0
  %1800 = or i1 %1797, %1799
  br i1 %1800, label %1803, label %1801

1801:                                             ; preds = %1794
  %1802 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1795, ptr noundef nonnull @.str.84, ptr noundef nonnull %1787) #20
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %1803

1803:                                             ; preds = %1801, %1794, %1779
  %1804 = phi i32 [ 1, %1779 ], [ %1796, %1794 ], [ 0, %1801 ]
  %1805 = call i32 @fputc(i32 10, ptr %0)
  br label %1806

1806:                                             ; preds = %1803, %1751
  %1807 = phi i32 [ %1804, %1803 ], [ 0, %1751 ]
  %1808 = icmp eq i32 %1807, 0
  br i1 %1808, label %1710, label %1880, !llvm.loop !82

1809:                                             ; preds = %1699
  %1810 = call fastcc i32 @matches(ptr noundef nonnull %1700, ptr noundef nonnull @.str.140, i32 noundef 1) #21, !range !64
  %1811 = icmp eq i32 %1810, 0
  br i1 %1811, label %1881, label %1812

1812:                                             ; preds = %1809
  %1813 = load i32, ptr %5, align 4, !tbaa !7
  %1814 = call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %1815 = call i64 @fwrite(ptr nonnull @.str.78, i64 46, i64 1, ptr %0)
  %1816 = call i64 @fwrite(ptr nonnull @.str.79, i64 52, i64 1, ptr %0)
  %1817 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.80, i32 noundef %1813) #21
  %1818 = sext i32 %1813 to i64
  br label %1819

1819:                                             ; preds = %1876, %1812
  %1820 = phi i64 [ 1, %1812 ], [ %1878, %1876 ]
  %1821 = phi i32 [ 0, %1812 ], [ %1877, %1876 ]
  %1822 = icmp eq i32 %1821, 0
  br i1 %1822, label %1823, label %1876

1823:                                             ; preds = %1819
  %1824 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1818, i64 %1820, i64 1
  %1825 = load i32, ptr %1824, align 4, !tbaa !7
  %1826 = icmp eq i32 %1825, 0
  br i1 %1826, label %1876, label %1827

1827:                                             ; preds = %1823
  %1828 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %1818, i64 %1820, i64 2
  %1829 = load i32, ptr %1828, align 4, !tbaa !7
  %1830 = icmp eq i32 %1829, 0
  br i1 %1830, label %1876, label %1831

1831:                                             ; preds = %1827
  %1832 = sext i32 %1825 to i64
  %1833 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1832, i64 1
  %1834 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1833) #21
  %1835 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1818, i64 %1820, i64 1
  %1836 = load i32, ptr %1835, align 4, !tbaa !7
  %1837 = icmp slt i32 %1836, 0
  br i1 %1837, label %1838, label %1840

1838:                                             ; preds = %1831
  %1839 = call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %1842

1840:                                             ; preds = %1831
  %1841 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %1836) #21
  br label %1842

1842:                                             ; preds = %1840, %1838
  %1843 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %1844 = call fastcc i32 @matches(ptr noundef nonnull %1843, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %1845 = icmp ne i32 %1844, 0
  %1846 = load i8, ptr %1843, align 1, !tbaa !17
  %1847 = icmp eq i8 %1846, 0
  %1848 = or i1 %1845, %1847
  br i1 %1848, label %1851, label %1849

1849:                                             ; preds = %1842
  %1850 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1843, ptr noundef nonnull @.str.84, ptr noundef nonnull %1835) #20
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %1852

1851:                                             ; preds = %1842
  br i1 %1845, label %1873, label %1852

1852:                                             ; preds = %1851, %1849
  %1853 = load i32, ptr %1828, align 4, !tbaa !7
  %1854 = sext i32 %1853 to i64
  %1855 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %1854, i64 1
  %1856 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.73, ptr noundef nonnull %1855) #21
  %1857 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %1818, i64 %1820, i64 2
  %1858 = load i32, ptr %1857, align 4, !tbaa !7
  %1859 = icmp slt i32 %1858, 0
  br i1 %1859, label %1860, label %1862

1860:                                             ; preds = %1852
  %1861 = call i64 @fwrite(ptr nonnull @.str.81, i64 11, i64 1, ptr %0)
  br label %1864

1862:                                             ; preds = %1852
  %1863 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.82, i32 noundef %1858) #21
  br label %1864

1864:                                             ; preds = %1862, %1860
  %1865 = call fastcc ptr @get_responce(ptr noundef %1) #21
  %1866 = call fastcc i32 @matches(ptr noundef nonnull %1865, ptr noundef nonnull @.str.83, i32 noundef 1) #21, !range !64
  %1867 = icmp ne i32 %1866, 0
  %1868 = load i8, ptr %1865, align 1, !tbaa !17
  %1869 = icmp eq i8 %1868, 0
  %1870 = or i1 %1867, %1869
  br i1 %1870, label %1873, label %1871

1871:                                             ; preds = %1864
  %1872 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %1865, ptr noundef nonnull @.str.84, ptr noundef nonnull %1857) #20
  store i32 0, ptr @current_with_disk, align 4, !tbaa !7
  br label %1873

1873:                                             ; preds = %1871, %1864, %1851
  %1874 = phi i32 [ 1, %1851 ], [ %1866, %1864 ], [ 0, %1871 ]
  %1875 = call i32 @fputc(i32 10, ptr %0)
  br label %1876

1876:                                             ; preds = %1873, %1827, %1823, %1819
  %1877 = phi i32 [ 1, %1819 ], [ %1874, %1873 ], [ 0, %1827 ], [ 0, %1823 ]
  %1878 = add nuw nsw i64 %1820, 1
  %1879 = icmp eq i64 %1878, 15
  br i1 %1879, label %1880, label %1819, !llvm.loop !83

1880:                                             ; preds = %1876, %1806, %1718, %1713
  call fastcc void @compute_team_info() #20
  call fastcc void @sort_all() #20
  call fastcc void @prompt(ptr noundef %0, ptr noundef %1) #21
  br label %1881

1881:                                             ; preds = %1880, %1809, %1691
  %1882 = phi i32 [ %47, %1809 ], [ %47, %1691 ], [ 1, %1880 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  br label %1883

1883:                                             ; preds = %1881, %1687
  %1884 = phi i32 [ %1882, %1881 ], [ %47, %1687 ]
  %1885 = icmp eq i32 %1884, 0
  br i1 %1885, label %1886, label %1895

1886:                                             ; preds = %1883
  %1887 = call i64 @fwrite(ptr nonnull @.str.141, i64 23, i64 1, ptr %0)
  br label %1892

1888:                                             ; preds = %1684
  %1889 = call fastcc i32 @matches(ptr noundef nonnull %37, ptr noundef nonnull @.str.142, i32 noundef 1) #21, !range !64
  %1890 = icmp eq i32 %1889, 0
  br i1 %1890, label %1892, label %1891

1891:                                             ; preds = %1888
  call fastcc void @save_scores(ptr noundef %0) #20
  br label %1895

1892:                                             ; preds = %1888, %1886, %1682, %56
  %1893 = phi i32 [ %47, %56 ], [ 0, %1682 ], [ 0, %1886 ], [ %47, %1888 ]
  %1894 = icmp eq i32 %1893, 0
  br i1 %1894, label %32, label %1895, !llvm.loop !84

1895:                                             ; preds = %1892, %1891, %1883, %1679, %1678, %1567, %1563, %1559, %1555, %1551, %1178, %689, %64, %59, %54
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc nonnull ptr @get_responce(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = load i1, ptr @got_unused_responce, align 4
  br i1 %2, label %46, label %3

3:                                                ; preds = %1
  %4 = tail call ptr @fgets(ptr noundef nonnull @responce, i32 noundef 50, ptr noundef %0) #21
  %5 = load i32, ptr @in_fileP, align 4, !tbaa !7
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = load ptr, ptr @stdout, align 8, !tbaa !15
  %9 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %8, ptr noundef nonnull @.str.2, ptr noundef nonnull @responce) #21
  br label %10

10:                                               ; preds = %7, %3
  %11 = load i8, ptr @responce, align 16, !tbaa !17
  %12 = icmp eq i8 %11, 0
  br i1 %12, label %24, label %13

13:                                               ; preds = %20, %10
  %14 = phi i8 [ %22, %20 ], [ %11, %10 ]
  %15 = phi ptr [ %21, %20 ], [ @responce, %10 ]
  %16 = add i8 %14, -65
  %17 = icmp ult i8 %16, 26
  br i1 %17, label %18, label %20

18:                                               ; preds = %13
  %19 = add nuw nsw i8 %14, 32
  store i8 %19, ptr %15, align 1, !tbaa !17
  br label %20

20:                                               ; preds = %18, %13
  %21 = getelementptr inbounds i8, ptr %15, i64 1
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = icmp eq i8 %22, 0
  br i1 %23, label %24, label %13, !llvm.loop !31

24:                                               ; preds = %20, %10
  %25 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @responce) #17
  %26 = getelementptr inbounds i8, ptr @responce, i64 %25
  %27 = load i1, ptr @white_space.commentP, align 4
  %28 = getelementptr inbounds i8, ptr %26, i64 -1
  %29 = icmp ult ptr %28, @responce
  br i1 %29, label %48, label %30

30:                                               ; preds = %41, %24
  %31 = phi i1 [ %42, %41 ], [ %27, %24 ]
  %32 = phi ptr [ %44, %41 ], [ %28, %24 ]
  %33 = phi i1 [ %43, %41 ], [ %27, %24 ]
  %34 = load i8, ptr %32, align 1, !tbaa !17
  %35 = icmp eq i8 %34, 37
  br i1 %35, label %40, label %36

36:                                               ; preds = %30
  br i1 %33, label %37, label %39

37:                                               ; preds = %36
  %38 = icmp eq i8 %34, 10
  br i1 %38, label %40, label %41

39:                                               ; preds = %36
  switch i8 %34, label %48 [
    i8 32, label %41
    i8 10, label %41
    i8 9, label %41
  ]

40:                                               ; preds = %37, %30
  store i1 %35, ptr @white_space.commentP, align 4
  br label %41

41:                                               ; preds = %40, %39, %39, %39, %37
  %42 = phi i1 [ %31, %37 ], [ %31, %39 ], [ %31, %39 ], [ %31, %39 ], [ %35, %40 ]
  %43 = phi i1 [ true, %37 ], [ false, %39 ], [ false, %39 ], [ false, %39 ], [ %35, %40 ]
  store i8 0, ptr %32, align 1, !tbaa !17
  %44 = getelementptr inbounds i8, ptr %32, i64 -1
  %45 = icmp ult ptr %44, @responce
  br i1 %45, label %48, label %30, !llvm.loop !85

46:                                               ; preds = %1
  store i1 false, ptr @got_unused_responce, align 4
  %47 = load i1, ptr @white_space.commentP, align 4
  br label %48

48:                                               ; preds = %46, %41, %39, %24
  %49 = phi i1 [ %27, %24 ], [ %47, %46 ], [ %31, %39 ], [ %42, %41 ]
  br label %50

50:                                               ; preds = %60, %48
  %51 = phi i1 [ %61, %60 ], [ %49, %48 ]
  %52 = phi ptr [ %62, %60 ], [ @responce, %48 ]
  %53 = load i8, ptr %52, align 1, !tbaa !17
  switch i8 %53, label %54 [
    i8 0, label %63
    i8 37, label %58
  ]

54:                                               ; preds = %50
  br i1 %51, label %55, label %57

55:                                               ; preds = %54
  %56 = icmp eq i8 %53, 10
  br i1 %56, label %58, label %60

57:                                               ; preds = %54
  switch i8 %53, label %63 [
    i8 32, label %60
    i8 10, label %60
    i8 9, label %60
  ]

58:                                               ; preds = %55, %50
  %59 = phi i1 [ true, %50 ], [ false, %55 ]
  store i1 %59, ptr @white_space.commentP, align 4
  br label %60

60:                                               ; preds = %58, %57, %57, %57, %55
  %61 = phi i1 [ true, %55 ], [ false, %57 ], [ false, %57 ], [ false, %57 ], [ %59, %58 ]
  %62 = getelementptr inbounds i8, ptr %52, i64 1
  br label %50, !llvm.loop !86

63:                                               ; preds = %57, %50
  %.lcssa = phi ptr [ %52, %57 ], [ %52, %50 ]
  ret ptr %.lcssa
}

; Function Attrs: nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc i32 @matches(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #11 {
  %4 = load i8, ptr %0, align 1, !tbaa !17
  %5 = icmp eq i8 %4, 37
  br i1 %5, label %10, label %6

6:                                                ; preds = %3
  %7 = load i1, ptr @white_space.commentP, align 4
  br i1 %7, label %16, label %13

8:                                                ; preds = %19
  %.lcssa2 = phi i64 [ %20, %19 ]
  %9 = trunc i64 %.lcssa2 to i32
  br label %10

10:                                               ; preds = %8, %3
  %11 = phi i32 [ 0, %3 ], [ %9, %8 ]
  %12 = phi i64 [ 0, %3 ], [ %.lcssa2, %8 ]
  store i1 true, ptr @white_space.commentP, align 4
  br label %26

13:                                               ; preds = %19, %6
  %14 = phi i64 [ %20, %19 ], [ 0, %6 ]
  %15 = phi i8 [ %22, %19 ], [ %4, %6 ]
  switch i8 %15, label %19 [
    i8 32, label %24
    i8 10, label %24
    i8 9, label %24
    i8 0, label %24
  ]

16:                                               ; preds = %6
  %17 = icmp eq i8 %4, 10
  br i1 %17, label %18, label %26

18:                                               ; preds = %16
  store i1 false, ptr @white_space.commentP, align 4
  br label %26

19:                                               ; preds = %13
  %20 = add nuw i64 %14, 1
  %21 = getelementptr inbounds i8, ptr %0, i64 %20
  %22 = load i8, ptr %21, align 1, !tbaa !17
  %23 = icmp eq i8 %22, 37
  br i1 %23, label %8, label %13, !llvm.loop !87

24:                                               ; preds = %13, %13, %13, %13
  %.lcssa = phi i64 [ %14, %13 ], [ %14, %13 ], [ %14, %13 ], [ %14, %13 ]
  %25 = trunc i64 %.lcssa to i32
  br label %26

26:                                               ; preds = %24, %18, %16, %10
  %27 = phi i1 [ true, %16 ], [ false, %18 ], [ true, %10 ], [ false, %24 ]
  %28 = phi i32 [ 0, %16 ], [ 0, %18 ], [ %11, %10 ], [ %25, %24 ]
  %29 = phi i64 [ 0, %16 ], [ 0, %18 ], [ %12, %10 ], [ %.lcssa, %24 ]
  %30 = icmp slt i32 %28, %2
  br i1 %30, label %52, label %31

31:                                               ; preds = %26
  %32 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #17
  %33 = icmp ult i64 %32, %29
  br i1 %33, label %34, label %48

34:                                               ; preds = %31
  %35 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %32) #17
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %37, label %52

37:                                               ; preds = %34
  %38 = getelementptr inbounds i8, ptr %0, i64 %32
  %39 = load i8, ptr %38, align 1, !tbaa !17
  %40 = icmp eq i8 %39, 37
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  store i1 true, ptr @white_space.commentP, align 4
  br label %52

42:                                               ; preds = %37
  br i1 %27, label %43, label %46

43:                                               ; preds = %42
  %44 = icmp eq i8 %39, 10
  br i1 %44, label %45, label %52

45:                                               ; preds = %43
  store i1 false, ptr @white_space.commentP, align 4
  br label %52

46:                                               ; preds = %42
  switch i8 %39, label %47 [
    i8 32, label %52
    i8 10, label %52
    i8 9, label %52
  ]

47:                                               ; preds = %46
  br label %52

48:                                               ; preds = %31
  %49 = tail call i32 @strncmp(ptr noundef nonnull %0, ptr noundef %1, i64 noundef %29) #17
  %50 = icmp eq i32 %49, 0
  %51 = zext i1 %50 to i32
  br label %52

52:                                               ; preds = %48, %47, %46, %46, %46, %45, %43, %41, %34, %26
  %53 = phi i32 [ %51, %48 ], [ 0, %26 ], [ 0, %34 ], [ 1, %41 ], [ 0, %47 ], [ 1, %45 ], [ 1, %43 ], [ 1, %46 ], [ 1, %46 ], [ 1, %46 ]
  ret i32 %53
}

; Function Attrs: nofree nounwind
declare noundef i32 @fputc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #2

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable
define internal fastcc ptr @skip_first(ptr noundef readonly %0) unnamed_addr #12 {
  %2 = load i8, ptr %0, align 1, !tbaa !17
  %3 = icmp eq i8 %2, 37
  br i1 %3, label %15, label %4

4:                                                ; preds = %1
  %5 = load i1, ptr @white_space.commentP, align 4
  br i1 %5, label %9, label %6

6:                                                ; preds = %11, %4
  %7 = phi i8 [ %13, %11 ], [ %2, %4 ]
  %8 = phi ptr [ %12, %11 ], [ %0, %4 ]
  switch i8 %7, label %11 [
    i8 32, label %19
    i8 10, label %19
    i8 9, label %19
    i8 0, label %19
  ]

9:                                                ; preds = %4
  %10 = icmp eq i8 %2, 10
  br i1 %10, label %15, label %19

11:                                               ; preds = %6
  %12 = getelementptr inbounds i8, ptr %8, i64 1
  %13 = load i8, ptr %12, align 1, !tbaa !17
  %14 = icmp eq i8 %13, 37
  br i1 %14, label %15, label %6, !llvm.loop !88

15:                                               ; preds = %11, %9, %1
  %16 = phi i8 [ 37, %1 ], [ 10, %9 ], [ 37, %11 ]
  %17 = phi i1 [ true, %1 ], [ false, %9 ], [ true, %11 ]
  %18 = phi ptr [ %0, %1 ], [ %0, %9 ], [ %12, %11 ]
  store i1 %17, ptr @white_space.commentP, align 4
  br label %19

19:                                               ; preds = %15, %9, %6, %6, %6, %6
  %20 = phi i8 [ %2, %9 ], [ %16, %15 ], [ %7, %6 ], [ %7, %6 ], [ %7, %6 ], [ %7, %6 ]
  %21 = phi i1 [ true, %9 ], [ %17, %15 ], [ false, %6 ], [ false, %6 ], [ false, %6 ], [ false, %6 ]
  %22 = phi ptr [ %0, %9 ], [ %18, %15 ], [ %8, %6 ], [ %8, %6 ], [ %8, %6 ], [ %8, %6 ]
  br label %23

23:                                               ; preds = %32, %19
  %24 = phi i8 [ %35, %32 ], [ %20, %19 ]
  %25 = phi i1 [ %33, %32 ], [ %21, %19 ]
  %26 = phi ptr [ %34, %32 ], [ %22, %19 ]
  %27 = icmp eq i8 %24, 37
  br i1 %27, label %31, label %28

28:                                               ; preds = %23
  br i1 %25, label %29, label %30

29:                                               ; preds = %28
  switch i8 %24, label %32 [
    i8 10, label %31
    i8 0, label %36
  ]

30:                                               ; preds = %28
  switch i8 %24, label %36 [
    i8 32, label %32
    i8 10, label %32
    i8 9, label %32
  ]

31:                                               ; preds = %29, %23
  store i1 %27, ptr @white_space.commentP, align 4
  br label %32

32:                                               ; preds = %31, %30, %30, %30, %29
  %33 = phi i1 [ true, %29 ], [ false, %30 ], [ false, %30 ], [ false, %30 ], [ %27, %31 ]
  %34 = getelementptr inbounds i8, ptr %26, i64 1
  %35 = load i8, ptr %34, align 1, !tbaa !17
  br label %23, !llvm.loop !89

36:                                               ; preds = %30, %29
  %.lcssa = phi ptr [ %26, %30 ], [ %26, %29 ]
  ret ptr %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @break_ties(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = icmp ne i32 %1, 1
  %5 = icmp ne i32 %2, 0
  %6 = or i1 %4, %5
  br i1 %6, label %8, label %7

7:                                                ; preds = %3
  store i32 0, ptr @nfc_west_champ, align 4, !tbaa !7
  store i32 0, ptr @nfc_central_champ, align 4, !tbaa !7
  store i32 0, ptr @nfc_east_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_west_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_central_champ, align 4, !tbaa !7
  store i32 0, ptr @afc_east_champ, align 4, !tbaa !7
  br label %8

8:                                                ; preds = %7, %3
  %9 = icmp eq i32 %1, 2
  %10 = or i1 %9, %5
  br i1 %10, label %12, label %11

11:                                               ; preds = %8
  store i32 0, ptr @nfc_wild_card3, align 4, !tbaa !7
  store i32 0, ptr @nfc_wild_card2, align 4, !tbaa !7
  store i32 0, ptr @nfc_wild_card1, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card3, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card2, align 4, !tbaa !7
  store i32 0, ptr @afc_wild_card1, align 4, !tbaa !7
  br label %12

12:                                               ; preds = %11, %8
  br label %13

13:                                               ; preds = %199, %12
  %14 = phi i64 [ %200, %199 ], [ 1, %12 ]
  %15 = phi i32 [ %202, %199 ], [ 1, %12 ]
  %16 = phi i32 [ %201, %199 ], [ %2, %12 ]
  %17 = icmp eq i64 %14, 28
  br i1 %17, label %180, label %18

18:                                               ; preds = %13
  %19 = getelementptr inbounds i32, ptr %0, i64 %14
  %20 = load i32, ptr %19, align 4, !tbaa !7
  %21 = add nuw nsw i64 %14, 1
  %22 = getelementptr inbounds i32, ptr %0, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = sext i32 %20 to i64
  %25 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = add nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !43
  %32 = add nsw i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %18
  %35 = sitofp i32 %26 to double
  %36 = sitofp i32 %31 to double
  %37 = tail call double @llvm.fmuladd.f64(double %36, double 5.000000e-01, double %35)
  %38 = sitofp i32 %32 to double
  %39 = fdiv double %37, %38
  br label %40

40:                                               ; preds = %34, %18
  %41 = phi double [ %39, %34 ], [ 0.000000e+00, %18 ]
  %42 = sext i32 %23 to i64
  %43 = getelementptr inbounds %struct.info, ptr @team_info, i64 %42
  %44 = load i32, ptr %43, align 4, !tbaa !42
  %45 = getelementptr inbounds %struct.info, ptr @team_info, i64 %42, i32 1
  %46 = load i32, ptr %45, align 4, !tbaa !41
  %47 = add nsw i32 %46, %44
  %48 = getelementptr inbounds %struct.info, ptr @team_info, i64 %42, i32 2
  %49 = load i32, ptr %48, align 4, !tbaa !43
  %50 = add nsw i32 %47, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %40
  %53 = sitofp i32 %44 to double
  %54 = sitofp i32 %49 to double
  %55 = tail call double @llvm.fmuladd.f64(double %54, double 5.000000e-01, double %53)
  %56 = sitofp i32 %50 to double
  %57 = fdiv double %55, %56
  br label %58

58:                                               ; preds = %52, %40
  %59 = phi double [ %57, %52 ], [ 0.000000e+00, %40 ]
  %60 = fcmp une double %41, %59
  br i1 %60, label %180, label %61

61:                                               ; preds = %58
  %62 = or i32 %46, %28
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %66

64:                                               ; preds = %61
  %65 = icmp eq i32 %26, %44
  br i1 %65, label %71, label %180

66:                                               ; preds = %61
  %67 = or i32 %44, %26
  %68 = icmp ne i32 %67, 0
  %69 = icmp eq i32 %28, %46
  %70 = or i1 %68, %69
  br i1 %70, label %71, label %180

71:                                               ; preds = %66, %64
  switch i32 %1, label %120 [
    i32 1, label %72
    i32 0, label %84
  ]

72:                                               ; preds = %71
  %73 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %24, i64 1
  %74 = load i32, ptr %73, align 4, !tbaa !7
  %75 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %42, i64 1
  %76 = load i32, ptr %75, align 4, !tbaa !7
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %180

78:                                               ; preds = %72
  %79 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %42
  %80 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %24
  %81 = load i32, ptr %80, align 8, !tbaa !7
  %82 = load i32, ptr %79, align 8, !tbaa !7
  %83 = icmp eq i32 %81, %82
  br i1 %83, label %199, label %180

84:                                               ; preds = %71
  %85 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %24
  %86 = load i32, ptr %85, align 8, !tbaa !7
  %87 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %42
  %88 = load i32, ptr %87, align 8, !tbaa !7
  %89 = icmp eq i32 %86, %88
  br i1 %89, label %90, label %180

90:                                               ; preds = %84
  %91 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %92 = icmp eq i32 %91, %20
  %93 = load i32, ptr @nfc_central_champ, align 4
  %94 = icmp eq i32 %93, %20
  %95 = select i1 %92, i1 true, i1 %94
  %96 = load i32, ptr @nfc_west_champ, align 4
  %97 = icmp eq i32 %96, %20
  %98 = select i1 %95, i1 true, i1 %97
  %99 = load i32, ptr @afc_east_champ, align 4
  %100 = icmp eq i32 %99, %20
  %101 = select i1 %98, i1 true, i1 %100
  %102 = load i32, ptr @afc_central_champ, align 4
  %103 = icmp eq i32 %102, %20
  %104 = select i1 %101, i1 true, i1 %103
  %105 = load i32, ptr @afc_west_champ, align 4
  %106 = icmp eq i32 %105, %20
  %107 = select i1 %104, i1 true, i1 %106
  %108 = icmp eq i32 %91, %23
  %109 = icmp eq i32 %93, %23
  %110 = select i1 %108, i1 true, i1 %109
  %111 = icmp eq i32 %96, %23
  %112 = select i1 %110, i1 true, i1 %111
  %113 = icmp eq i32 %99, %23
  %114 = select i1 %112, i1 true, i1 %113
  %115 = icmp eq i32 %102, %23
  %116 = select i1 %114, i1 true, i1 %115
  %117 = icmp eq i32 %105, %23
  %118 = select i1 %116, i1 true, i1 %117
  %119 = xor i1 %107, %118
  br i1 %119, label %180, label %199

120:                                              ; preds = %71
  %121 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %122 = icmp eq i32 %121, %20
  %123 = load i32, ptr @nfc_central_champ, align 4
  %124 = icmp eq i32 %123, %20
  %125 = select i1 %122, i1 true, i1 %124
  %126 = load i32, ptr @nfc_west_champ, align 4
  %127 = icmp eq i32 %126, %20
  %128 = select i1 %125, i1 true, i1 %127
  %129 = load i32, ptr @afc_east_champ, align 4
  %130 = icmp eq i32 %129, %20
  %131 = select i1 %128, i1 true, i1 %130
  %132 = load i32, ptr @afc_central_champ, align 4
  %133 = icmp eq i32 %132, %20
  %134 = select i1 %131, i1 true, i1 %133
  %135 = load i32, ptr @afc_west_champ, align 4
  %136 = icmp eq i32 %135, %20
  %137 = select i1 %134, i1 true, i1 %136
  %138 = icmp eq i32 %121, %23
  %139 = icmp eq i32 %123, %23
  %140 = select i1 %138, i1 true, i1 %139
  %141 = icmp eq i32 %126, %23
  %142 = select i1 %140, i1 true, i1 %141
  %143 = icmp eq i32 %129, %23
  %144 = select i1 %142, i1 true, i1 %143
  %145 = icmp eq i32 %132, %23
  %146 = select i1 %144, i1 true, i1 %145
  %147 = icmp eq i32 %135, %23
  %148 = select i1 %146, i1 true, i1 %147
  %149 = xor i1 %137, %148
  br i1 %149, label %180, label %150

150:                                              ; preds = %120
  %151 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %152 = icmp eq i32 %151, %20
  %153 = load i32, ptr @nfc_wild_card2, align 4
  %154 = icmp eq i32 %153, %20
  %155 = select i1 %152, i1 true, i1 %154
  %156 = load i32, ptr @nfc_wild_card3, align 4
  %157 = icmp eq i32 %156, %20
  %158 = select i1 %155, i1 true, i1 %157
  %159 = load i32, ptr @afc_wild_card1, align 4
  %160 = icmp eq i32 %159, %20
  %161 = select i1 %158, i1 true, i1 %160
  %162 = load i32, ptr @afc_wild_card2, align 4
  %163 = icmp eq i32 %162, %20
  %164 = select i1 %161, i1 true, i1 %163
  %165 = load i32, ptr @afc_wild_card3, align 4
  %166 = icmp eq i32 %165, %20
  %167 = select i1 %164, i1 true, i1 %166
  %168 = icmp eq i32 %151, %23
  %169 = icmp eq i32 %153, %23
  %170 = select i1 %168, i1 true, i1 %169
  %171 = icmp eq i32 %156, %23
  %172 = select i1 %170, i1 true, i1 %171
  %173 = icmp eq i32 %159, %23
  %174 = select i1 %172, i1 true, i1 %173
  %175 = icmp eq i32 %162, %23
  %176 = select i1 %174, i1 true, i1 %175
  %177 = icmp eq i32 %165, %23
  %178 = select i1 %176, i1 true, i1 %177
  %179 = xor i1 %167, %178
  br i1 %179, label %180, label %199

180:                                              ; preds = %150, %120, %90, %84, %78, %72, %66, %64, %58, %13
  %181 = zext i32 %15 to i64
  %182 = icmp eq i64 %14, %181
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = add nuw nsw i64 %14, 1
  %185 = trunc i64 %184 to i32
  br label %199

186:                                              ; preds = %180
  %187 = sext i32 %15 to i64
  %188 = getelementptr inbounds i32, ptr %0, i64 %187
  %189 = add nuw nsw i64 %14, 1
  %190 = trunc i64 %189 to i32
  %191 = sub i32 %190, %15
  tail call fastcc void @break_a_tie(ptr noundef %188, i32 noundef %191, i32 noundef %16) #20
  %192 = icmp eq i32 %16, 0
  br i1 %192, label %199, label %193

193:                                              ; preds = %186
  %194 = load ptr, ptr @stdout, align 8, !tbaa !15
  %195 = load ptr, ptr @stdin, align 8, !tbaa !15
  tail call fastcc void @prompt(ptr noundef %194, ptr noundef %195) #20
  %196 = load i1, ptr @got_unused_responce, align 4
  %197 = xor i1 %196, true
  %198 = zext i1 %197 to i32
  br label %199

199:                                              ; preds = %193, %186, %183, %150, %90, %78
  %200 = phi i64 [ %21, %78 ], [ %21, %90 ], [ %21, %150 ], [ %184, %183 ], [ %189, %193 ], [ %189, %186 ]
  %201 = phi i32 [ %16, %78 ], [ %16, %90 ], [ %16, %150 ], [ %16, %183 ], [ %198, %193 ], [ 0, %186 ]
  %202 = phi i32 [ %15, %78 ], [ %15, %90 ], [ %15, %150 ], [ %185, %183 ], [ %190, %193 ], [ %190, %186 ]
  %203 = icmp eq i64 %200, 29
  br i1 %203, label %204, label %13, !llvm.loop !90

204:                                              ; preds = %199
  switch i32 %1, label %360 [
    i32 1, label %215
    i32 0, label %205
  ]

205:                                              ; preds = %204
  %206 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %207 = load i32, ptr @nfc_central_champ, align 4
  %208 = load i32, ptr @nfc_west_champ, align 4
  %209 = load i32, ptr @afc_east_champ, align 4
  %210 = load i32, ptr @afc_central_champ, align 4
  %211 = load i32, ptr @afc_west_champ, align 4
  %212 = load i32, ptr @iyear, align 4
  %213 = add i32 %212, -90
  %214 = icmp ult i32 %213, -19
  br label %322

215:                                              ; preds = %204
  %216 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %217 = load i32, ptr @nfc_central_champ, align 4, !tbaa !7
  %218 = load i32, ptr @nfc_west_champ, align 4, !tbaa !7
  %219 = load i32, ptr @afc_east_champ, align 4, !tbaa !7
  %220 = load i32, ptr @afc_central_champ, align 4, !tbaa !7
  %221 = load i32, ptr @afc_west_champ, align 4, !tbaa !7
  br label %222

222:                                              ; preds = %318, %215
  %223 = phi i64 [ 1, %215 ], [ %320, %318 ]
  %224 = phi i32 [ %216, %215 ], [ %244, %318 ]
  %225 = phi i32 [ %217, %215 ], [ %259, %318 ]
  %226 = phi i32 [ %218, %215 ], [ %274, %318 ]
  %227 = phi i32 [ %219, %215 ], [ %289, %318 ]
  %228 = phi i32 [ %220, %215 ], [ %304, %318 ]
  %229 = phi i32 [ %221, %215 ], [ %319, %318 ]
  %230 = icmp eq i32 %224, 0
  br i1 %230, label %231, label %243

231:                                              ; preds = %222
  %232 = getelementptr inbounds i32, ptr %0, i64 %223
  %233 = load i32, ptr %232, align 4, !tbaa !7
  %234 = sext i32 %233 to i64
  %235 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %234
  %236 = load i32, ptr %235, align 8, !tbaa !7
  %237 = icmp eq i32 %236, 0
  br i1 %237, label %238, label %243

238:                                              ; preds = %231
  %239 = lshr i64 59821585, %234
  %240 = and i64 %239, 1
  %241 = icmp eq i64 %240, 0
  br i1 %241, label %243, label %242

242:                                              ; preds = %238
  store i32 %233, ptr @nfc_east_champ, align 4, !tbaa !7
  br label %243

243:                                              ; preds = %242, %238, %231, %222
  %244 = phi i32 [ %233, %242 ], [ 0, %238 ], [ 0, %231 ], [ %224, %222 ]
  %245 = icmp eq i32 %225, 0
  br i1 %245, label %246, label %258

246:                                              ; preds = %243
  %247 = getelementptr inbounds i32, ptr %0, i64 %223
  %248 = load i32, ptr %247, align 4, !tbaa !7
  %249 = sext i32 %248 to i64
  %250 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %249
  %251 = load i32, ptr %250, align 8, !tbaa !7
  %252 = icmp eq i32 %251, 0
  br i1 %252, label %253, label %258

253:                                              ; preds = %246
  %254 = lshr i64 67838058, %249
  %255 = and i64 %254, 1
  %256 = icmp eq i64 %255, 0
  br i1 %256, label %258, label %257

257:                                              ; preds = %253
  store i32 %248, ptr @nfc_central_champ, align 4, !tbaa !7
  br label %258

258:                                              ; preds = %257, %253, %246, %243
  %259 = phi i32 [ %248, %257 ], [ 0, %253 ], [ 0, %246 ], [ %225, %243 ]
  %260 = icmp eq i32 %226, 0
  br i1 %260, label %261, label %273

261:                                              ; preds = %258
  %262 = getelementptr inbounds i32, ptr %0, i64 %223
  %263 = load i32, ptr %262, align 4, !tbaa !7
  %264 = sext i32 %263 to i64
  %265 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %264
  %266 = load i32, ptr %265, align 8, !tbaa !7
  %267 = icmp eq i32 %266, 0
  br i1 %267, label %268, label %273

268:                                              ; preds = %261
  %269 = lshr i64 409211268, %264
  %270 = and i64 %269, 1
  %271 = icmp eq i64 %270, 0
  br i1 %271, label %273, label %272

272:                                              ; preds = %268
  store i32 %263, ptr @nfc_west_champ, align 4, !tbaa !7
  br label %273

273:                                              ; preds = %272, %268, %261, %258
  %274 = phi i32 [ %263, %272 ], [ 0, %268 ], [ 0, %261 ], [ %226, %258 ]
  %275 = icmp eq i32 %227, 0
  br i1 %275, label %276, label %288

276:                                              ; preds = %273
  %277 = getelementptr inbounds i32, ptr %0, i64 %223
  %278 = load i32, ptr %277, align 4, !tbaa !7
  %279 = sext i32 %278 to i64
  %280 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %279
  %281 = load i32, ptr %280, align 8, !tbaa !7
  %282 = icmp eq i32 %281, 1
  br i1 %282, label %283, label %288

283:                                              ; preds = %276
  %284 = lshr i64 59821585, %279
  %285 = and i64 %284, 1
  %286 = icmp eq i64 %285, 0
  br i1 %286, label %288, label %287

287:                                              ; preds = %283
  store i32 %278, ptr @afc_east_champ, align 4, !tbaa !7
  br label %288

288:                                              ; preds = %287, %283, %276, %273
  %289 = phi i32 [ %278, %287 ], [ 0, %283 ], [ 0, %276 ], [ %227, %273 ]
  %290 = icmp eq i32 %228, 0
  br i1 %290, label %291, label %303

291:                                              ; preds = %288
  %292 = getelementptr inbounds i32, ptr %0, i64 %223
  %293 = load i32, ptr %292, align 4, !tbaa !7
  %294 = sext i32 %293 to i64
  %295 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %294
  %296 = load i32, ptr %295, align 8, !tbaa !7
  %297 = icmp eq i32 %296, 1
  br i1 %297, label %298, label %303

298:                                              ; preds = %291
  %299 = lshr i64 67838058, %294
  %300 = and i64 %299, 1
  %301 = icmp eq i64 %300, 0
  br i1 %301, label %303, label %302

302:                                              ; preds = %298
  store i32 %293, ptr @afc_central_champ, align 4, !tbaa !7
  br label %303

303:                                              ; preds = %302, %298, %291, %288
  %304 = phi i32 [ %293, %302 ], [ 0, %298 ], [ 0, %291 ], [ %228, %288 ]
  %305 = icmp eq i32 %229, 0
  br i1 %305, label %306, label %318

306:                                              ; preds = %303
  %307 = getelementptr inbounds i32, ptr %0, i64 %223
  %308 = load i32, ptr %307, align 4, !tbaa !7
  %309 = sext i32 %308 to i64
  %310 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %309
  %311 = load i32, ptr %310, align 8, !tbaa !7
  %312 = icmp eq i32 %311, 1
  br i1 %312, label %313, label %318

313:                                              ; preds = %306
  %314 = lshr i64 409211268, %309
  %315 = and i64 %314, 1
  %316 = icmp eq i64 %315, 0
  br i1 %316, label %318, label %317

317:                                              ; preds = %313
  store i32 %308, ptr @afc_west_champ, align 4, !tbaa !7
  br label %318

318:                                              ; preds = %317, %313, %306, %303
  %319 = phi i32 [ %229, %303 ], [ 0, %306 ], [ 0, %313 ], [ %308, %317 ]
  %320 = add nuw nsw i64 %223, 1
  %321 = icmp eq i64 %320, 29
  br i1 %321, label %360, label %222, !llvm.loop !91

322:                                              ; preds = %355, %205
  %323 = phi i64 [ %358, %355 ], [ 1, %205 ]
  %324 = phi i32 [ %357, %355 ], [ 0, %205 ]
  %325 = phi i32 [ %356, %355 ], [ 0, %205 ]
  %326 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %323
  %327 = load i32, ptr %326, align 4, !tbaa !7
  %328 = sext i32 %327 to i64
  %329 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %328
  %330 = load i32, ptr %329, align 8, !tbaa !7
  %331 = icmp eq i32 %330, 0
  %332 = icmp ne i32 %206, %327
  %333 = icmp ne i32 %207, %327
  %334 = select i1 %332, i1 %333, i1 false
  %335 = icmp ne i32 %208, %327
  %336 = select i1 %334, i1 %335, i1 false
  %337 = icmp ne i32 %209, %327
  %338 = select i1 %336, i1 %337, i1 false
  %339 = icmp ne i32 %210, %327
  %340 = select i1 %338, i1 %339, i1 false
  %341 = icmp ne i32 %211, %327
  %342 = select i1 %340, i1 %341, i1 false
  br i1 %331, label %343, label %347

343:                                              ; preds = %322
  br i1 %342, label %344, label %355

344:                                              ; preds = %343
  switch i32 %324, label %355 [
    i32 0, label %351
    i32 1, label %345
    i32 2, label %346
  ]

345:                                              ; preds = %344
  br label %351

346:                                              ; preds = %344
  br i1 %214, label %351, label %355

347:                                              ; preds = %322
  br i1 %342, label %348, label %355

348:                                              ; preds = %347
  switch i32 %325, label %355 [
    i32 0, label %351
    i32 1, label %349
    i32 2, label %350
  ]

349:                                              ; preds = %348
  br label %351

350:                                              ; preds = %348
  br i1 %214, label %351, label %355

351:                                              ; preds = %350, %349, %348, %346, %345, %344
  %352 = phi ptr [ @nfc_wild_card2, %345 ], [ @afc_wild_card2, %349 ], [ @nfc_wild_card1, %344 ], [ @nfc_wild_card3, %346 ], [ @afc_wild_card1, %348 ], [ @afc_wild_card3, %350 ]
  %353 = phi i32 [ %325, %345 ], [ 2, %349 ], [ %325, %344 ], [ %325, %346 ], [ 1, %348 ], [ 3, %350 ]
  %354 = phi i32 [ 2, %345 ], [ %324, %349 ], [ 1, %344 ], [ 3, %346 ], [ %324, %348 ], [ %324, %350 ]
  store i32 %327, ptr %352, align 4, !tbaa !7
  br label %355

355:                                              ; preds = %351, %350, %348, %347, %346, %344, %343
  %356 = phi i32 [ %325, %343 ], [ %325, %346 ], [ %325, %347 ], [ 2, %350 ], [ %325, %344 ], [ %325, %348 ], [ %353, %351 ]
  %357 = phi i32 [ %324, %343 ], [ 2, %346 ], [ %324, %347 ], [ %324, %350 ], [ %324, %344 ], [ %324, %348 ], [ %354, %351 ]
  %358 = add nuw nsw i64 %323, 1
  %359 = icmp eq i64 %358, 29
  br i1 %359, label %360, label %322, !llvm.loop !92

360:                                              ; preds = %355, %318, %204
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #13

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @prompt(ptr nocapture noundef %0, ptr nocapture noundef %1) unnamed_addr #8 {
  %3 = tail call i64 @fwrite(ptr nonnull @.str, i64 24, i64 1, ptr %0)
  %4 = tail call fastcc ptr @get_responce(ptr noundef %1) #21
  %5 = load i8, ptr %4, align 1, !tbaa !17
  %6 = icmp eq i8 %5, 0
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  store i1 true, ptr @got_unused_responce, align 4
  br label %8

8:                                                ; preds = %7, %2
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @common(i32 noundef %0) unnamed_addr #10 {
  %2 = alloca [29 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 116, ptr nonnull %2) #23
  %3 = getelementptr inbounds i8, ptr %2, i64 4
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(112) %3, i8 0, i64 112, i1 false), !tbaa !7
  %4 = add nuw i32 %0, 1
  %5 = zext i32 %4 to i64
  br label %6

6:                                                ; preds = %33, %1
  %7 = phi i64 [ 1, %1 ], [ %34, %33 ]
  %8 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %7
  %9 = load i32, ptr %8, align 4, !tbaa !7
  %10 = sext i32 %9 to i64
  br label %11

11:                                               ; preds = %11, %6
  %12 = phi i64 [ 0, %6 ], [ %19, %11 ]
  %13 = or i64 %12, 1
  %14 = getelementptr inbounds [29 x [29 x i32]], ptr @team_plays, i64 0, i64 %10, i64 %13
  %15 = load <4 x i32>, ptr %14, align 4, !tbaa !7
  %16 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %13
  %17 = load <4 x i32>, ptr %16, align 4, !tbaa !7
  %18 = add nsw <4 x i32> %17, %15
  store <4 x i32> %18, ptr %16, align 4, !tbaa !7
  %19 = add nuw nsw i64 %12, 4
  %20 = icmp eq i64 %19, 28
  br i1 %20, label %33, label %11, !llvm.loop !93

21:                                               ; preds = %33
  %22 = insertelement <4 x i32> poison, i32 %0, i64 0
  %23 = shufflevector <4 x i32> %22, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %24

24:                                               ; preds = %24, %21
  %25 = phi i64 [ 0, %21 ], [ %31, %24 ]
  %26 = or i64 %25, 1
  %27 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %26
  %28 = load <4 x i32>, ptr %27, align 4, !tbaa !7
  %29 = icmp sge <4 x i32> %28, %23
  %30 = zext <4 x i1> %29 to <4 x i32>
  store <4 x i32> %30, ptr %27, align 4, !tbaa !7
  %31 = add nuw nsw i64 %25, 4
  %32 = icmp eq i64 %31, 28
  br i1 %32, label %42, label %24, !llvm.loop !94

33:                                               ; preds = %11
  %34 = add nuw nsw i64 %7, 1
  %35 = icmp eq i64 %34, %5
  br i1 %35, label %21, label %6, !llvm.loop !95

36:                                               ; preds = %42
  %37 = load i32, ptr @num_games, align 4, !tbaa !7
  %38 = icmp slt i32 %37, 1
  br i1 %38, label %117, label %39

39:                                               ; preds = %36
  %40 = add nuw nsw i32 %37, 1
  %41 = zext i32 %40 to i64
  br label %47

42:                                               ; preds = %42, %24
  %43 = phi i64 [ %45, %42 ], [ 1, %24 ]
  %44 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %43
  %45 = add nuw nsw i64 %43, 1
  %46 = icmp eq i64 %45, 29
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %44, i8 0, i64 20, i1 false)
  br i1 %46, label %36, label %42, !llvm.loop !96

47:                                               ; preds = %114, %39
  %48 = phi i64 [ 1, %39 ], [ %115, %114 ]
  br label %49

49:                                               ; preds = %111, %47
  %50 = phi i64 [ 1, %47 ], [ %112, %111 ]
  %51 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %48, i64 %50, i64 1
  %52 = getelementptr inbounds [18 x [15 x [3 x i32]]], ptr @sched, i64 0, i64 %48, i64 %50, i64 2
  %53 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %48, i64 %50, i64 2
  %54 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %48, i64 %50, i64 1
  br label %55

55:                                               ; preds = %110, %49
  %56 = phi i1 [ true, %49 ], [ false, %110 ]
  %57 = phi i1 [ false, %49 ], [ true, %110 ]
  %58 = select i1 %56, ptr %52, ptr %51
  %59 = select i1 %56, ptr %51, ptr %52
  %60 = select i1 %56, i64 2, i64 1
  %61 = select i1 %56, i64 1, i64 2
  %62 = load i32, ptr %59, align 4, !tbaa !7
  %63 = load i32, ptr %58, align 4, !tbaa !7
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %110, label %65

65:                                               ; preds = %55
  %66 = sext i32 %63 to i64
  %67 = getelementptr inbounds [29 x i32], ptr %2, i64 0, i64 %66
  %68 = load i32, ptr %67, align 4, !tbaa !7
  %69 = icmp eq i32 %68, 0
  br i1 %69, label %110, label %70

70:                                               ; preds = %75, %65
  %71 = phi i64 [ %76, %75 ], [ 1, %65 ]
  %72 = getelementptr inbounds [29 x i32], ptr @common_teams, i64 0, i64 %71
  %73 = load i32, ptr %72, align 4, !tbaa !7
  %74 = icmp eq i32 %73, %62
  br i1 %74, label %78, label %75

75:                                               ; preds = %70
  %76 = add nuw nsw i64 %71, 1
  %77 = icmp eq i64 %76, %5
  br i1 %77, label %110, label %70, !llvm.loop !97

78:                                               ; preds = %70
  %.lcssa = phi i64 [ %71, %70 ]
  %79 = and i64 %.lcssa, 4294967295
  %80 = icmp eq i64 %79, 0
  br i1 %80, label %110, label %81

81:                                               ; preds = %78
  %82 = load i32, ptr %53, align 4, !tbaa !7
  %83 = icmp sgt i32 %82, -1
  br i1 %83, label %84, label %103

84:                                               ; preds = %81
  %85 = load i32, ptr %54, align 4, !tbaa !7
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %87, label %103

87:                                               ; preds = %84
  %88 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %48, i64 %50, i64 %60
  %89 = load i32, ptr %88, align 4, !tbaa !7
  %90 = getelementptr inbounds [19 x [15 x [3 x i32]]], ptr @scores, i64 0, i64 %48, i64 %50, i64 %61
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = icmp slt i32 %89, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %87
  %94 = sext i32 %62 to i64
  %95 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %94
  br label %106

96:                                               ; preds = %87
  %97 = icmp sgt i32 %89, %91
  %98 = sext i32 %62 to i64
  br i1 %97, label %99, label %101

99:                                               ; preds = %96
  %100 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %98, i32 1
  br label %106

101:                                              ; preds = %96
  %102 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %98, i32 2
  br label %106

103:                                              ; preds = %84, %81
  %104 = sext i32 %62 to i64
  %105 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %104, i32 3
  br label %106

106:                                              ; preds = %103, %101, %99, %93
  %107 = phi ptr [ %105, %103 ], [ %100, %99 ], [ %102, %101 ], [ %95, %93 ]
  %108 = load i32, ptr %107, align 4, !tbaa !7
  %109 = add nsw i32 %108, 1
  store i32 %109, ptr %107, align 4, !tbaa !7
  br label %110

110:                                              ; preds = %106, %78, %75, %65, %55
  br i1 %57, label %111, label %55, !llvm.loop !98

111:                                              ; preds = %110
  %112 = add nuw nsw i64 %50, 1
  %113 = icmp eq i64 %112, 15
  br i1 %113, label %114, label %49, !llvm.loop !99

114:                                              ; preds = %111
  %115 = add nuw nsw i64 %48, 1
  %116 = icmp eq i64 %115, %41
  br i1 %116, label %117, label %47, !llvm.loop !100

117:                                              ; preds = %114, %36
  br label %118

118:                                              ; preds = %125, %117
  %119 = phi i64 [ %126, %125 ], [ 1, %117 ]
  %120 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %119
  %121 = load <4 x i32>, ptr %120, align 4, !tbaa !7
  %122 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %121)
  %123 = icmp slt i32 %122, 4
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  store i32 -1, ptr %120, align 4, !tbaa !42
  br label %125

125:                                              ; preds = %124, %118
  %126 = add nuw nsw i64 %119, 1
  %127 = icmp eq i64 %126, 29
  br i1 %127, label %128, label %118, !llvm.loop !101

128:                                              ; preds = %125
  call void @llvm.lifetime.end.p0(i64 116, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_records(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i64 @fwrite(ptr nonnull @.str.64, i64 37, i64 1, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.65, i64 22, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.66, i64 37, i64 1, ptr %0)
  %7 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %8 = tail call i64 @fwrite(ptr nonnull @.str.67, i64 38, i64 1, ptr %0)
  br label %9

9:                                                ; preds = %176, %1
  %10 = phi i64 [ 1, %1 ], [ %180, %176 ]
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
  br i1 %20, label %23, label %13, !llvm.loop !70

21:                                               ; preds = %13
  %.lcssa = phi i64 [ %14, %13 ]
  %22 = trunc i64 %.lcssa to i32
  br label %23

23:                                               ; preds = %21, %18
  %24 = phi i32 [ %22, %21 ], [ 0, %18 ]
  %25 = sext i32 %12 to i64
  %26 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %25, i64 1
  %27 = trunc i64 %10 to i32
  %28 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %27, i32 noundef %24, ptr noundef nonnull %26) #21
  %29 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %30 = icmp ne i32 %29, %12
  %31 = load i32, ptr @nfc_central_champ, align 4
  %32 = icmp ne i32 %31, %12
  %33 = select i1 %30, i1 %32, i1 false
  %34 = load i32, ptr @nfc_west_champ, align 4
  %35 = icmp ne i32 %34, %12
  %36 = select i1 %33, i1 %35, i1 false
  %37 = load i32, ptr @afc_east_champ, align 4
  %38 = icmp ne i32 %37, %12
  %39 = select i1 %36, i1 %38, i1 false
  %40 = load i32, ptr @afc_central_champ, align 4
  %41 = icmp ne i32 %40, %12
  %42 = select i1 %39, i1 %41, i1 false
  %43 = load i32, ptr @afc_west_champ, align 4
  %44 = icmp ne i32 %43, %12
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %65

46:                                               ; preds = %23
  %47 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %48 = icmp ne i32 %47, %12
  %49 = load i32, ptr @nfc_wild_card2, align 4
  %50 = icmp ne i32 %49, %12
  %51 = select i1 %48, i1 %50, i1 false
  %52 = load i32, ptr @nfc_wild_card3, align 4
  %53 = icmp ne i32 %52, %12
  %54 = select i1 %51, i1 %53, i1 false
  %55 = load i32, ptr @afc_wild_card1, align 4
  %56 = icmp ne i32 %55, %12
  %57 = select i1 %54, i1 %56, i1 false
  %58 = load i32, ptr @afc_wild_card2, align 4
  %59 = icmp ne i32 %58, %12
  %60 = select i1 %57, i1 %59, i1 false
  %61 = load i32, ptr @afc_wild_card3, align 4
  %62 = icmp ne i32 %61, %12
  %63 = select i1 %60, i1 %62, i1 false
  %64 = select i1 %63, i32 32, i32 43
  br label %65

65:                                               ; preds = %46, %23
  %66 = phi i32 [ 42, %23 ], [ %64, %46 ]
  %67 = tail call i32 @fputc(i32 %66, ptr %0)
  %68 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25
  %69 = load i32, ptr %68, align 4, !tbaa !42
  %70 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 1
  %71 = load i32, ptr %70, align 4, !tbaa !41
  %72 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %25, i32 2
  %73 = load i32, ptr %72, align 4, !tbaa !43
  %74 = add nsw i32 %71, %69
  %75 = add nsw i32 %74, %73
  %76 = icmp eq i32 %75, 0
  br i1 %76, label %86, label %77

77:                                               ; preds = %65
  %78 = sitofp i32 %69 to double
  %79 = sitofp i32 %73 to double
  %80 = tail call double @llvm.fmuladd.f64(double %79, double 5.000000e-01, double %78)
  %81 = sitofp i32 %75 to double
  %82 = fdiv double %80, %81
  %83 = fcmp oge double %82, 1.000000e+00
  %84 = select i1 %83, ptr @.str.23, ptr @.str.22
  %85 = fcmp ult double %82, 1.000000e+00
  br i1 %85, label %86, label %91

86:                                               ; preds = %77, %65
  %87 = phi ptr [ @.str.22, %65 ], [ %84, %77 ]
  %88 = phi double [ 0.000000e+00, %65 ], [ %82, %77 ]
  %89 = tail call double @llvm.fmuladd.f64(double %88, double 1.000000e+03, double 5.000000e-01)
  %90 = fptosi double %89 to i32
  br label %91

91:                                               ; preds = %86, %77
  %92 = phi ptr [ %87, %86 ], [ %84, %77 ]
  %93 = phi i32 [ %90, %86 ], [ 0, %77 ]
  %94 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.69, i32 noundef %69, i32 noundef %71, i32 noundef %73, ptr noundef nonnull %92, i32 noundef %93) #21
  %95 = tail call i64 @fwrite(ptr nonnull @.str.62, i64 4, i64 1, ptr %0)
  %96 = add nuw nsw i64 %10, 14
  %97 = getelementptr inbounds [29 x i32], ptr @conf_standings, i64 0, i64 %96
  %98 = load i32, ptr %97, align 4, !tbaa !7
  br label %99

99:                                               ; preds = %104, %91
  %100 = phi i64 [ 1, %91 ], [ %105, %104 ]
  %101 = getelementptr inbounds i32, ptr @abs_standings, i64 %100
  %102 = load i32, ptr %101, align 4, !tbaa !7
  %103 = icmp eq i32 %102, %98
  br i1 %103, label %107, label %104

104:                                              ; preds = %99
  %105 = add nuw nsw i64 %100, 1
  %106 = icmp eq i64 %105, 29
  br i1 %106, label %109, label %99, !llvm.loop !70

107:                                              ; preds = %99
  %.lcssa2 = phi i64 [ %100, %99 ]
  %108 = trunc i64 %.lcssa2 to i32
  br label %109

109:                                              ; preds = %107, %104
  %110 = phi i32 [ %108, %107 ], [ 0, %104 ]
  %111 = sext i32 %98 to i64
  %112 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %111, i64 1
  %113 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.68, i32 noundef %27, i32 noundef %110, ptr noundef nonnull %112) #21
  %114 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %115 = icmp ne i32 %114, %98
  %116 = load i32, ptr @nfc_central_champ, align 4
  %117 = icmp ne i32 %116, %98
  %118 = select i1 %115, i1 %117, i1 false
  %119 = load i32, ptr @nfc_west_champ, align 4
  %120 = icmp ne i32 %119, %98
  %121 = select i1 %118, i1 %120, i1 false
  %122 = load i32, ptr @afc_east_champ, align 4
  %123 = icmp ne i32 %122, %98
  %124 = select i1 %121, i1 %123, i1 false
  %125 = load i32, ptr @afc_central_champ, align 4
  %126 = icmp ne i32 %125, %98
  %127 = select i1 %124, i1 %126, i1 false
  %128 = load i32, ptr @afc_west_champ, align 4
  %129 = icmp ne i32 %128, %98
  %130 = select i1 %127, i1 %129, i1 false
  br i1 %130, label %131, label %150

131:                                              ; preds = %109
  %132 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %133 = icmp ne i32 %132, %98
  %134 = load i32, ptr @nfc_wild_card2, align 4
  %135 = icmp ne i32 %134, %98
  %136 = select i1 %133, i1 %135, i1 false
  %137 = load i32, ptr @nfc_wild_card3, align 4
  %138 = icmp ne i32 %137, %98
  %139 = select i1 %136, i1 %138, i1 false
  %140 = load i32, ptr @afc_wild_card1, align 4
  %141 = icmp ne i32 %140, %98
  %142 = select i1 %139, i1 %141, i1 false
  %143 = load i32, ptr @afc_wild_card2, align 4
  %144 = icmp ne i32 %143, %98
  %145 = select i1 %142, i1 %144, i1 false
  %146 = load i32, ptr @afc_wild_card3, align 4
  %147 = icmp ne i32 %146, %98
  %148 = select i1 %145, i1 %147, i1 false
  %149 = select i1 %148, i32 32, i32 43
  br label %150

150:                                              ; preds = %131, %109
  %151 = phi i32 [ 42, %109 ], [ %149, %131 ]
  %152 = tail call i32 @fputc(i32 %151, ptr %0)
  %153 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %111
  %154 = load i32, ptr %153, align 4, !tbaa !42
  %155 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %111, i32 1
  %156 = load i32, ptr %155, align 4, !tbaa !41
  %157 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %111, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !43
  %159 = add nsw i32 %156, %154
  %160 = add nsw i32 %159, %158
  %161 = icmp eq i32 %160, 0
  br i1 %161, label %171, label %162

162:                                              ; preds = %150
  %163 = sitofp i32 %154 to double
  %164 = sitofp i32 %158 to double
  %165 = tail call double @llvm.fmuladd.f64(double %164, double 5.000000e-01, double %163)
  %166 = sitofp i32 %160 to double
  %167 = fdiv double %165, %166
  %168 = fcmp oge double %167, 1.000000e+00
  %169 = select i1 %168, ptr @.str.23, ptr @.str.22
  %170 = fcmp ult double %167, 1.000000e+00
  br i1 %170, label %171, label %176

171:                                              ; preds = %162, %150
  %172 = phi ptr [ @.str.22, %150 ], [ %169, %162 ]
  %173 = phi double [ 0.000000e+00, %150 ], [ %167, %162 ]
  %174 = tail call double @llvm.fmuladd.f64(double %173, double 1.000000e+03, double 5.000000e-01)
  %175 = fptosi double %174 to i32
  br label %176

176:                                              ; preds = %171, %162
  %177 = phi ptr [ %172, %171 ], [ %169, %162 ]
  %178 = phi i32 [ %175, %171 ], [ 0, %162 ]
  %179 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.70, i32 noundef %154, i32 noundef %156, i32 noundef %158, ptr noundef nonnull %177, i32 noundef %178) #21
  %180 = add nuw nsw i64 %10, 1
  %181 = icmp eq i64 %180, 15
  br i1 %181, label %182, label %9, !llvm.loop !102

182:                                              ; preds = %176
  %183 = tail call i64 @fwrite(ptr nonnull @.str.71, i64 30, i64 1, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_rankings(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  %3 = tail call i32 @fputc(i32 10, ptr %0)
  %4 = tail call i64 @fwrite(ptr nonnull @.str.87, i64 43, i64 1, ptr %0)
  %5 = tail call i64 @fwrite(ptr nonnull @.str.88, i64 65, i64 1, ptr %0)
  %6 = tail call i64 @fwrite(ptr nonnull @.str.89, i64 81, i64 1, ptr %0)
  br label %7

7:                                                ; preds = %294, %1
  %8 = phi i64 [ 1, %1 ], [ %297, %294 ]
  %9 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %8, i64 1
  %10 = trunc i64 %8 to i32
  %11 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %12 = icmp ne i32 %11, %10
  %13 = load i32, ptr @nfc_central_champ, align 4
  %14 = icmp ne i32 %13, %10
  %15 = select i1 %12, i1 %14, i1 false
  %16 = load i32, ptr @nfc_west_champ, align 4
  %17 = icmp ne i32 %16, %10
  %18 = select i1 %15, i1 %17, i1 false
  %19 = load i32, ptr @afc_east_champ, align 4
  %20 = icmp ne i32 %19, %10
  %21 = select i1 %18, i1 %20, i1 false
  %22 = load i32, ptr @afc_central_champ, align 4
  %23 = icmp ne i32 %22, %10
  %24 = select i1 %21, i1 %23, i1 false
  %25 = load i32, ptr @afc_west_champ, align 4
  %26 = icmp ne i32 %25, %10
  %27 = select i1 %24, i1 %26, i1 false
  br i1 %27, label %28, label %47

28:                                               ; preds = %7
  %29 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %30 = icmp ne i32 %29, %10
  %31 = load i32, ptr @nfc_wild_card2, align 4
  %32 = icmp ne i32 %31, %10
  %33 = select i1 %30, i1 %32, i1 false
  %34 = load i32, ptr @nfc_wild_card3, align 4
  %35 = icmp ne i32 %34, %10
  %36 = select i1 %33, i1 %35, i1 false
  %37 = load i32, ptr @afc_wild_card1, align 4
  %38 = icmp ne i32 %37, %10
  %39 = select i1 %36, i1 %38, i1 false
  %40 = load i32, ptr @afc_wild_card2, align 4
  %41 = icmp ne i32 %40, %10
  %42 = select i1 %39, i1 %41, i1 false
  %43 = load i32, ptr @afc_wild_card3, align 4
  %44 = icmp ne i32 %43, %10
  %45 = select i1 %42, i1 %44, i1 false
  %46 = select i1 %45, ptr @.str.22, ptr @.str.21
  br label %47

47:                                               ; preds = %28, %7
  %48 = phi ptr [ %46, %28 ], [ @.str.20, %7 ]
  br label %49

49:                                               ; preds = %55, %47
  %50 = phi i64 [ 1, %47 ], [ %56, %55 ]
  %51 = getelementptr inbounds i32, ptr @conf_standings, i64 %50
  %52 = load i32, ptr %51, align 4, !tbaa !7
  %53 = zext i32 %52 to i64
  %54 = icmp eq i64 %8, %53
  br i1 %54, label %58, label %55

55:                                               ; preds = %49
  %56 = add nuw nsw i64 %50, 1
  %57 = icmp eq i64 %56, 29
  br i1 %57, label %60, label %49, !llvm.loop !70

58:                                               ; preds = %49
  %.lcssa = phi i64 [ %50, %49 ]
  %59 = trunc i64 %.lcssa to i32
  br label %60

60:                                               ; preds = %58, %55
  %61 = phi i32 [ %59, %58 ], [ 0, %55 ]
  br label %62

62:                                               ; preds = %68, %60
  %63 = phi i64 [ 1, %60 ], [ %69, %68 ]
  %64 = getelementptr inbounds i32, ptr @abs_standings, i64 %63
  %65 = load i32, ptr %64, align 4, !tbaa !7
  %66 = zext i32 %65 to i64
  %67 = icmp eq i64 %8, %66
  br i1 %67, label %71, label %68

68:                                               ; preds = %62
  %69 = add nuw nsw i64 %63, 1
  %70 = icmp eq i64 %69, 29
  br i1 %70, label %73, label %62, !llvm.loop !70

71:                                               ; preds = %62
  %.lcssa2 = phi i64 [ %63, %62 ]
  %72 = trunc i64 %.lcssa2 to i32
  br label %73

73:                                               ; preds = %71, %68
  %74 = phi i32 [ %72, %71 ], [ 0, %68 ]
  br label %75

75:                                               ; preds = %81, %73
  %76 = phi i64 [ 1, %73 ], [ %82, %81 ]
  %77 = getelementptr inbounds i32, ptr @offence_ranks, i64 %76
  %78 = load i32, ptr %77, align 4, !tbaa !7
  %79 = zext i32 %78 to i64
  %80 = icmp eq i64 %8, %79
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = add nuw nsw i64 %76, 1
  %83 = icmp eq i64 %82, 29
  br i1 %83, label %86, label %75, !llvm.loop !70

84:                                               ; preds = %75
  %.lcssa4 = phi i64 [ %76, %75 ]
  %85 = trunc i64 %.lcssa4 to i32
  br label %86

86:                                               ; preds = %84, %81
  %87 = phi i32 [ %85, %84 ], [ 0, %81 ]
  br label %88

88:                                               ; preds = %94, %86
  %89 = phi i64 [ 1, %86 ], [ %95, %94 ]
  %90 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %89
  %91 = load i32, ptr %90, align 4, !tbaa !7
  %92 = zext i32 %91 to i64
  %93 = icmp eq i64 %8, %92
  br i1 %93, label %97, label %94

94:                                               ; preds = %88
  %95 = add nuw nsw i64 %89, 1
  %96 = icmp eq i64 %95, 29
  br i1 %96, label %99, label %88, !llvm.loop !70

97:                                               ; preds = %88
  %.lcssa6 = phi i64 [ %89, %88 ]
  %98 = trunc i64 %.lcssa6 to i32
  br label %99

99:                                               ; preds = %97, %94
  %100 = phi i32 [ %98, %97 ], [ 0, %94 ]
  br label %101

101:                                              ; preds = %107, %99
  %102 = phi i64 [ 1, %99 ], [ %108, %107 ]
  %103 = getelementptr inbounds i32, ptr @defence_ranks, i64 %102
  %104 = load i32, ptr %103, align 4, !tbaa !7
  %105 = zext i32 %104 to i64
  %106 = icmp eq i64 %8, %105
  br i1 %106, label %110, label %107

107:                                              ; preds = %101
  %108 = add nuw nsw i64 %102, 1
  %109 = icmp eq i64 %108, 29
  br i1 %109, label %112, label %101, !llvm.loop !70

110:                                              ; preds = %101
  %.lcssa8 = phi i64 [ %102, %101 ]
  %111 = trunc i64 %.lcssa8 to i32
  br label %112

112:                                              ; preds = %110, %107
  %113 = phi i32 [ %111, %110 ], [ 0, %107 ]
  br label %114

114:                                              ; preds = %120, %112
  %115 = phi i64 [ 1, %112 ], [ %121, %120 ]
  %116 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %115
  %117 = load i32, ptr %116, align 4, !tbaa !7
  %118 = zext i32 %117 to i64
  %119 = icmp eq i64 %8, %118
  br i1 %119, label %123, label %120

120:                                              ; preds = %114
  %121 = add nuw nsw i64 %115, 1
  %122 = icmp eq i64 %121, 29
  br i1 %122, label %125, label %114, !llvm.loop !70

123:                                              ; preds = %114
  %.lcssa10 = phi i64 [ %115, %114 ]
  %124 = trunc i64 %.lcssa10 to i32
  br label %125

125:                                              ; preds = %123, %120
  %126 = phi i32 [ %124, %123 ], [ 0, %120 ]
  br label %127

127:                                              ; preds = %133, %125
  %128 = phi i64 [ 1, %125 ], [ %134, %133 ]
  %129 = getelementptr inbounds i32, ptr @net_ranks, i64 %128
  %130 = load i32, ptr %129, align 4, !tbaa !7
  %131 = zext i32 %130 to i64
  %132 = icmp eq i64 %8, %131
  br i1 %132, label %136, label %133

133:                                              ; preds = %127
  %134 = add nuw nsw i64 %128, 1
  %135 = icmp eq i64 %134, 29
  br i1 %135, label %138, label %127, !llvm.loop !70

136:                                              ; preds = %127
  %.lcssa12 = phi i64 [ %128, %127 ]
  %137 = trunc i64 %.lcssa12 to i32
  br label %138

138:                                              ; preds = %136, %133
  %139 = phi i32 [ %137, %136 ], [ 0, %133 ]
  br label %140

140:                                              ; preds = %146, %138
  %141 = phi i64 [ 1, %138 ], [ %147, %146 ]
  %142 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %141
  %143 = load i32, ptr %142, align 4, !tbaa !7
  %144 = zext i32 %143 to i64
  %145 = icmp eq i64 %8, %144
  br i1 %145, label %149, label %146

146:                                              ; preds = %140
  %147 = add nuw nsw i64 %141, 1
  %148 = icmp eq i64 %147, 29
  br i1 %148, label %151, label %140, !llvm.loop !70

149:                                              ; preds = %140
  %.lcssa14 = phi i64 [ %141, %140 ]
  %150 = trunc i64 %.lcssa14 to i32
  br label %151

151:                                              ; preds = %149, %146
  %152 = phi i32 [ %150, %149 ], [ 0, %146 ]
  %153 = add nuw nsw i64 %8, 14
  %154 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %153, i64 1
  %155 = trunc i64 %153 to i32
  %156 = icmp ne i32 %11, %155
  %157 = icmp ne i32 %13, %155
  %158 = select i1 %156, i1 %157, i1 false
  %159 = icmp ne i32 %16, %155
  %160 = select i1 %158, i1 %159, i1 false
  %161 = icmp ne i32 %19, %155
  %162 = select i1 %160, i1 %161, i1 false
  %163 = icmp ne i32 %22, %155
  %164 = select i1 %162, i1 %163, i1 false
  %165 = icmp ne i32 %25, %155
  %166 = select i1 %164, i1 %165, i1 false
  br i1 %166, label %167, label %186

167:                                              ; preds = %151
  %168 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %169 = icmp ne i32 %168, %155
  %170 = load i32, ptr @nfc_wild_card2, align 4
  %171 = icmp ne i32 %170, %155
  %172 = select i1 %169, i1 %171, i1 false
  %173 = load i32, ptr @nfc_wild_card3, align 4
  %174 = icmp ne i32 %173, %155
  %175 = select i1 %172, i1 %174, i1 false
  %176 = load i32, ptr @afc_wild_card1, align 4
  %177 = icmp ne i32 %176, %155
  %178 = select i1 %175, i1 %177, i1 false
  %179 = load i32, ptr @afc_wild_card2, align 4
  %180 = icmp ne i32 %179, %155
  %181 = select i1 %178, i1 %180, i1 false
  %182 = load i32, ptr @afc_wild_card3, align 4
  %183 = icmp ne i32 %182, %155
  %184 = select i1 %181, i1 %183, i1 false
  %185 = select i1 %184, ptr @.str.22, ptr @.str.21
  br label %186

186:                                              ; preds = %167, %151
  %187 = phi ptr [ %185, %167 ], [ @.str.20, %151 ]
  br label %188

188:                                              ; preds = %194, %186
  %189 = phi i64 [ 1, %186 ], [ %195, %194 ]
  %190 = getelementptr inbounds i32, ptr @conf_standings, i64 %189
  %191 = load i32, ptr %190, align 4, !tbaa !7
  %192 = zext i32 %191 to i64
  %193 = icmp eq i64 %153, %192
  br i1 %193, label %197, label %194

194:                                              ; preds = %188
  %195 = add nuw nsw i64 %189, 1
  %196 = icmp eq i64 %195, 29
  br i1 %196, label %199, label %188, !llvm.loop !70

197:                                              ; preds = %188
  %.lcssa16 = phi i64 [ %189, %188 ]
  %198 = trunc i64 %.lcssa16 to i32
  br label %199

199:                                              ; preds = %197, %194
  %200 = phi i32 [ %198, %197 ], [ 0, %194 ]
  %201 = add nsw i32 %200, -14
  br label %202

202:                                              ; preds = %208, %199
  %203 = phi i64 [ 1, %199 ], [ %209, %208 ]
  %204 = getelementptr inbounds i32, ptr @abs_standings, i64 %203
  %205 = load i32, ptr %204, align 4, !tbaa !7
  %206 = zext i32 %205 to i64
  %207 = icmp eq i64 %153, %206
  br i1 %207, label %211, label %208

208:                                              ; preds = %202
  %209 = add nuw nsw i64 %203, 1
  %210 = icmp eq i64 %209, 29
  br i1 %210, label %213, label %202, !llvm.loop !70

211:                                              ; preds = %202
  %.lcssa18 = phi i64 [ %203, %202 ]
  %212 = trunc i64 %.lcssa18 to i32
  br label %213

213:                                              ; preds = %211, %208
  %214 = phi i32 [ %212, %211 ], [ 0, %208 ]
  br label %215

215:                                              ; preds = %221, %213
  %216 = phi i64 [ 1, %213 ], [ %222, %221 ]
  %217 = getelementptr inbounds i32, ptr @offence_ranks, i64 %216
  %218 = load i32, ptr %217, align 4, !tbaa !7
  %219 = zext i32 %218 to i64
  %220 = icmp eq i64 %153, %219
  br i1 %220, label %224, label %221

221:                                              ; preds = %215
  %222 = add nuw nsw i64 %216, 1
  %223 = icmp eq i64 %222, 29
  br i1 %223, label %226, label %215, !llvm.loop !70

224:                                              ; preds = %215
  %.lcssa20 = phi i64 [ %216, %215 ]
  %225 = trunc i64 %.lcssa20 to i32
  br label %226

226:                                              ; preds = %224, %221
  %227 = phi i32 [ %225, %224 ], [ 0, %221 ]
  %228 = add nsw i32 %227, -14
  br label %229

229:                                              ; preds = %235, %226
  %230 = phi i64 [ 1, %226 ], [ %236, %235 ]
  %231 = getelementptr inbounds i32, ptr @offence_ranks_nfl, i64 %230
  %232 = load i32, ptr %231, align 4, !tbaa !7
  %233 = zext i32 %232 to i64
  %234 = icmp eq i64 %153, %233
  br i1 %234, label %238, label %235

235:                                              ; preds = %229
  %236 = add nuw nsw i64 %230, 1
  %237 = icmp eq i64 %236, 29
  br i1 %237, label %240, label %229, !llvm.loop !70

238:                                              ; preds = %229
  %.lcssa22 = phi i64 [ %230, %229 ]
  %239 = trunc i64 %.lcssa22 to i32
  br label %240

240:                                              ; preds = %238, %235
  %241 = phi i32 [ %239, %238 ], [ 0, %235 ]
  br label %242

242:                                              ; preds = %248, %240
  %243 = phi i64 [ 1, %240 ], [ %249, %248 ]
  %244 = getelementptr inbounds i32, ptr @defence_ranks, i64 %243
  %245 = load i32, ptr %244, align 4, !tbaa !7
  %246 = zext i32 %245 to i64
  %247 = icmp eq i64 %153, %246
  br i1 %247, label %251, label %248

248:                                              ; preds = %242
  %249 = add nuw nsw i64 %243, 1
  %250 = icmp eq i64 %249, 29
  br i1 %250, label %253, label %242, !llvm.loop !70

251:                                              ; preds = %242
  %.lcssa24 = phi i64 [ %243, %242 ]
  %252 = trunc i64 %.lcssa24 to i32
  br label %253

253:                                              ; preds = %251, %248
  %254 = phi i32 [ %252, %251 ], [ 0, %248 ]
  %255 = add nsw i32 %254, -14
  br label %256

256:                                              ; preds = %262, %253
  %257 = phi i64 [ 1, %253 ], [ %263, %262 ]
  %258 = getelementptr inbounds i32, ptr @defence_ranks_nfl, i64 %257
  %259 = load i32, ptr %258, align 4, !tbaa !7
  %260 = zext i32 %259 to i64
  %261 = icmp eq i64 %153, %260
  br i1 %261, label %265, label %262

262:                                              ; preds = %256
  %263 = add nuw nsw i64 %257, 1
  %264 = icmp eq i64 %263, 29
  br i1 %264, label %267, label %256, !llvm.loop !70

265:                                              ; preds = %256
  %.lcssa26 = phi i64 [ %257, %256 ]
  %266 = trunc i64 %.lcssa26 to i32
  br label %267

267:                                              ; preds = %265, %262
  %268 = phi i32 [ %266, %265 ], [ 0, %262 ]
  br label %269

269:                                              ; preds = %275, %267
  %270 = phi i64 [ 1, %267 ], [ %276, %275 ]
  %271 = getelementptr inbounds i32, ptr @net_ranks, i64 %270
  %272 = load i32, ptr %271, align 4, !tbaa !7
  %273 = zext i32 %272 to i64
  %274 = icmp eq i64 %153, %273
  br i1 %274, label %278, label %275

275:                                              ; preds = %269
  %276 = add nuw nsw i64 %270, 1
  %277 = icmp eq i64 %276, 29
  br i1 %277, label %280, label %269, !llvm.loop !70

278:                                              ; preds = %269
  %.lcssa28 = phi i64 [ %270, %269 ]
  %279 = trunc i64 %.lcssa28 to i32
  br label %280

280:                                              ; preds = %278, %275
  %281 = phi i32 [ %279, %278 ], [ 0, %275 ]
  %282 = add nsw i32 %281, -14
  br label %283

283:                                              ; preds = %289, %280
  %284 = phi i64 [ 1, %280 ], [ %290, %289 ]
  %285 = getelementptr inbounds i32, ptr @net_ranks_nfl, i64 %284
  %286 = load i32, ptr %285, align 4, !tbaa !7
  %287 = zext i32 %286 to i64
  %288 = icmp eq i64 %153, %287
  br i1 %288, label %292, label %289

289:                                              ; preds = %283
  %290 = add nuw nsw i64 %284, 1
  %291 = icmp eq i64 %290, 29
  br i1 %291, label %294, label %283, !llvm.loop !70

292:                                              ; preds = %283
  %.lcssa30 = phi i64 [ %284, %283 ]
  %293 = trunc i64 %.lcssa30 to i32
  br label %294

294:                                              ; preds = %292, %289
  %295 = phi i32 [ %293, %292 ], [ 0, %289 ]
  %296 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.90, ptr noundef nonnull %9, ptr noundef nonnull %48, i32 noundef %61, i32 noundef %74, i32 noundef %87, i32 noundef %100, i32 noundef %113, i32 noundef %126, i32 noundef %139, i32 noundef %152, ptr noundef nonnull %154, ptr noundef nonnull %187, i32 noundef %201, i32 noundef %214, i32 noundef %228, i32 noundef %241, i32 noundef %255, i32 noundef %268, i32 noundef %282, i32 noundef %295) #21
  %297 = add nuw nsw i64 %8, 1
  %298 = icmp eq i64 %297, 15
  br i1 %298, label %299, label %7, !llvm.loop !103

299:                                              ; preds = %294
  %300 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_defence(ptr nocapture noundef %0) unnamed_addr #8 {
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
  br i1 %17, label %20, label %10, !llvm.loop !70

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 4
  %34 = load i32, ptr %33, align 4, !tbaa !40
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
  br i1 %49, label %52, label %42, !llvm.loop !70

50:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %51 = trunc i64 %.lcssa2 to i32
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 0, %47 ]
  %54 = sext i32 %41 to i64
  %55 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %54, i64 1
  %56 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !42
  %58 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !41
  %60 = add nsw i32 %59, %57
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !43
  %63 = add nsw i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 4
  %66 = load i32, ptr %65, align 4, !tbaa !40
  %67 = sitofp i32 %66 to double
  %68 = sitofp i32 %63 to double
  %69 = fdiv double %67, %68
  %70 = select i1 %64, double 0.000000e+00, double %69
  %71 = trunc i64 %7 to i32
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %71, i32 noundef %21, ptr noundef nonnull %23, double noundef %38, i32 noundef %34, i32 noundef %71, i32 noundef %53, ptr noundef nonnull %55, double noundef %70, i32 noundef %66) #21
  %73 = add nuw nsw i64 %7, 1
  %74 = icmp eq i64 %73, 15
  br i1 %74, label %75, label %6, !llvm.loop !104

75:                                               ; preds = %52
  %76 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_offence(ptr nocapture noundef %0) unnamed_addr #8 {
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
  br i1 %17, label %20, label %10, !llvm.loop !70

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !43
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
  br i1 %49, label %52, label %42, !llvm.loop !70

50:                                               ; preds = %42
  %.lcssa2 = phi i64 [ %43, %42 ]
  %51 = trunc i64 %.lcssa2 to i32
  br label %52

52:                                               ; preds = %50, %47
  %53 = phi i32 [ %51, %50 ], [ 0, %47 ]
  %54 = sext i32 %41 to i64
  %55 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %54, i64 1
  %56 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54
  %57 = load i32, ptr %56, align 4, !tbaa !42
  %58 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 1
  %59 = load i32, ptr %58, align 4, !tbaa !41
  %60 = add nsw i32 %59, %57
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 2
  %62 = load i32, ptr %61, align 4, !tbaa !43
  %63 = add nsw i32 %60, %62
  %64 = icmp eq i32 %63, 0
  %65 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %54, i32 3
  %66 = load i32, ptr %65, align 4, !tbaa !38
  %67 = sitofp i32 %66 to double
  %68 = sitofp i32 %63 to double
  %69 = fdiv double %67, %68
  %70 = select i1 %64, double 0.000000e+00, double %69
  %71 = trunc i64 %7 to i32
  %72 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.93, i32 noundef %71, i32 noundef %21, ptr noundef nonnull %23, double noundef %38, i32 noundef %34, i32 noundef %71, i32 noundef %53, ptr noundef nonnull %55, double noundef %70, i32 noundef %66) #21
  %73 = add nuw nsw i64 %7, 1
  %74 = icmp eq i64 %73, 15
  br i1 %74, label %75, label %6, !llvm.loop !105

75:                                               ; preds = %52
  %76 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_net(ptr nocapture noundef %0) unnamed_addr #8 {
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
  br i1 %17, label %20, label %10, !llvm.loop !70

18:                                               ; preds = %10
  %.lcssa = phi i64 [ %11, %10 ]
  %19 = trunc i64 %.lcssa to i32
  br label %20

20:                                               ; preds = %18, %15
  %21 = phi i32 [ %19, %18 ], [ 0, %15 ]
  %22 = sext i32 %9 to i64
  %23 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %22, i64 1
  %24 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22
  %25 = load i32, ptr %24, align 4, !tbaa !42
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 1
  %27 = load i32, ptr %26, align 4, !tbaa !41
  %28 = add nsw i32 %27, %25
  %29 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !43
  %31 = add nsw i32 %28, %30
  %32 = icmp eq i32 %31, 0
  %33 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 3
  %34 = load i32, ptr %33, align 4, !tbaa !38
  %35 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %22, i32 4
  %36 = load i32, ptr %35, align 4, !tbaa !40
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
  br i1 %52, label %55, label %45, !llvm.loop !70

53:                                               ; preds = %45
  %.lcssa2 = phi i64 [ %46, %45 ]
  %54 = trunc i64 %.lcssa2 to i32
  br label %55

55:                                               ; preds = %53, %50
  %56 = phi i32 [ %54, %53 ], [ 0, %50 ]
  %57 = sext i32 %44 to i64
  %58 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %57, i64 1
  %59 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57
  %60 = load i32, ptr %59, align 4, !tbaa !42
  %61 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 1
  %62 = load i32, ptr %61, align 4, !tbaa !41
  %63 = add nsw i32 %62, %60
  %64 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 2
  %65 = load i32, ptr %64, align 4, !tbaa !43
  %66 = add nsw i32 %63, %65
  %67 = icmp eq i32 %66, 0
  %68 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 3
  %69 = load i32, ptr %68, align 4, !tbaa !38
  %70 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %57, i32 4
  %71 = load i32, ptr %70, align 4, !tbaa !40
  %72 = sub nsw i32 %69, %71
  %73 = sitofp i32 %72 to double
  %74 = sitofp i32 %66 to double
  %75 = fdiv double %73, %74
  %76 = select i1 %67, double 0.000000e+00, double %75
  %77 = trunc i64 %7 to i32
  %78 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.96, i32 noundef %77, i32 noundef %21, ptr noundef nonnull %23, double noundef %41, i32 noundef %37, i32 noundef %77, i32 noundef %56, ptr noundef nonnull %58, double noundef %76, i32 noundef %72) #21
  %79 = add nuw nsw i64 %7, 1
  %80 = icmp eq i64 %79, 15
  br i1 %80, label %81, label %6, !llvm.loop !106

81:                                               ; preds = %55
  %82 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_team(ptr nocapture noundef %0) unnamed_addr #8 {
  %2 = tail call i64 @fwrite(ptr nonnull @.str.1, i64 44, i64 1, ptr %0)
  br label %3

3:                                                ; preds = %3, %1
  %4 = phi i64 [ 1, %1 ], [ %11, %3 ]
  %5 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %4
  %6 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %4, i64 1
  %7 = add nuw nsw i64 %4, 14
  %8 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %7
  %9 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %7, i64 1
  %10 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.103, ptr noundef nonnull %6, ptr noundef nonnull %5, ptr noundef nonnull %9, ptr noundef nonnull %8) #21
  %11 = add nuw nsw i64 %4, 1
  %12 = icmp eq i64 %11, 15
  br i1 %12, label %13, label %3, !llvm.loop !107

13:                                               ; preds = %3
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #14

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #13

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @break_a_tie(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [28 x i32], align 16
  %5 = alloca [28 x double], align 16
  %6 = alloca [28 x i32], align 16
  %7 = alloca [5 x double], align 16
  %8 = icmp slt i32 %1, 2
  br i1 %8, label %302, label %9

9:                                                ; preds = %3
  %10 = icmp eq i32 %2, 0
  br label %11

11:                                               ; preds = %132, %9
  %12 = phi i32 [ %1, %9 ], [ %136, %132 ]
  %13 = phi ptr [ %0, %9 ], [ %135, %132 ]
  %14 = zext i32 %12 to i64
  br label %15

15:                                               ; preds = %30, %11
  %16 = phi i64 [ 1, %11 ], [ %33, %30 ]
  %17 = phi i32 [ 1, %11 ], [ %32, %30 ]
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %30, label %19

19:                                               ; preds = %15
  %20 = load i32, ptr %13, align 4, !tbaa !7
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %21, i64 1
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = getelementptr inbounds i32, ptr %13, i64 %16
  %25 = load i32, ptr %24, align 4, !tbaa !7
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %26, i64 1
  %28 = load i32, ptr %27, align 4, !tbaa !7
  %29 = icmp eq i32 %23, %28
  br label %30

30:                                               ; preds = %19, %15
  %31 = phi i1 [ false, %15 ], [ %29, %19 ]
  %32 = zext i1 %31 to i32
  %33 = add nuw nsw i64 %16, 1
  %34 = icmp eq i64 %33, %14
  br i1 %34, label %35, label %15, !llvm.loop !108

35:                                               ; preds = %30
  %.lcssa1 = phi i1 [ %31, %30 ]
  %.lcssa = phi i32 [ %32, %30 ]
  br i1 %10, label %39, label %36

36:                                               ; preds = %35
  %37 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %.lcssa) #21
  %38 = load ptr, ptr @stdout, align 8, !tbaa !15
  tail call fastcc void @display_split(ptr noundef %38, ptr noundef %13, i32 noundef %12, i32 noundef %12) #21
  br label %39

39:                                               ; preds = %36, %35
  %40 = icmp eq i32 %12, 2
  %41 = or i1 %40, %.lcssa1
  br i1 %41, label %42, label %138

42:                                               ; preds = %39
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %7) #23
  %43 = icmp sgt i32 %12, 5
  br i1 %43, label %44, label %46

44:                                               ; preds = %42
  %45 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  tail call void @exit(i32 noundef 1) #19
  unreachable

46:                                               ; preds = %88, %42
  %47 = phi i64 [ %97, %88 ], [ 0, %42 ]
  %48 = phi i32 [ %96, %88 ], [ 0, %42 ]
  %49 = phi double [ %92, %88 ], [ 0.000000e+00, %42 ]
  %50 = getelementptr inbounds i32, ptr %13, i64 %47
  br label %51

51:                                               ; preds = %72, %46
  %52 = phi i64 [ 0, %46 ], [ %76, %72 ]
  %53 = phi i32 [ 0, %46 ], [ %75, %72 ]
  %54 = phi i32 [ 0, %46 ], [ %74, %72 ]
  %55 = phi i32 [ 0, %46 ], [ %73, %72 ]
  %56 = icmp eq i64 %47, %52
  br i1 %56, label %72, label %57

57:                                               ; preds = %51
  %58 = load i32, ptr %50, align 4, !tbaa !7
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds i32, ptr %13, i64 %52
  %61 = load i32, ptr %60, align 4, !tbaa !7
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %59, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !42
  %65 = add nsw i32 %64, %55
  %66 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %59, i64 %62, i32 1
  %67 = load i32, ptr %66, align 4, !tbaa !41
  %68 = add nsw i32 %67, %54
  %69 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %59, i64 %62, i32 2
  %70 = load i32, ptr %69, align 4, !tbaa !43
  %71 = add nsw i32 %70, %53
  br label %72

72:                                               ; preds = %57, %51
  %73 = phi i32 [ %65, %57 ], [ %55, %51 ]
  %74 = phi i32 [ %68, %57 ], [ %54, %51 ]
  %75 = phi i32 [ %71, %57 ], [ %53, %51 ]
  %76 = add nuw nsw i64 %52, 1
  %77 = icmp eq i64 %76, %14
  br i1 %77, label %78, label %51, !llvm.loop !109

78:                                               ; preds = %72
  %.lcssa8 = phi i32 [ %73, %72 ]
  %.lcssa7 = phi i32 [ %74, %72 ]
  %.lcssa6 = phi i32 [ %75, %72 ]
  %79 = add nsw i32 %.lcssa7, %.lcssa8
  %80 = add nsw i32 %79, %.lcssa6
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %88, label %82

82:                                               ; preds = %78
  %83 = sitofp i32 %.lcssa8 to double
  %84 = sitofp i32 %.lcssa6 to double
  %85 = tail call double @llvm.fmuladd.f64(double %84, double 5.000000e-01, double %83)
  %86 = sitofp i32 %80 to double
  %87 = fdiv double %85, %86
  br label %88

88:                                               ; preds = %82, %78
  %89 = phi double [ %87, %82 ], [ 0.000000e+00, %78 ]
  %90 = getelementptr inbounds [5 x double], ptr %7, i64 0, i64 %47
  store double %89, ptr %90, align 8, !tbaa !110
  %91 = fcmp ogt double %89, %49
  %92 = select i1 %91, double %89, double %49
  %93 = select i1 %91, i32 0, i32 %48
  %94 = fcmp oeq double %89, %92
  %95 = zext i1 %94 to i32
  %96 = add nsw i32 %93, %95
  %97 = add nuw nsw i64 %47, 1
  %98 = icmp eq i64 %97, %14
  br i1 %98, label %99, label %46, !llvm.loop !112

99:                                               ; preds = %88
  %.lcssa10 = phi double [ %92, %88 ]
  %.lcssa9 = phi i32 [ %96, %88 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %6) #23
  br label %100

100:                                              ; preds = %118, %99
  %101 = phi i64 [ 0, %99 ], [ %121, %118 ]
  %102 = phi i32 [ 0, %99 ], [ %120, %118 ]
  %103 = phi i32 [ 0, %99 ], [ %119, %118 ]
  %104 = getelementptr inbounds double, ptr %7, i64 %101
  %105 = load double, ptr %104, align 8, !tbaa !110
  %106 = fcmp oeq double %105, %.lcssa10
  %107 = getelementptr inbounds i32, ptr %13, i64 %101
  %108 = load i32, ptr %107, align 4, !tbaa !7
  br i1 %106, label %109, label %113

109:                                              ; preds = %100
  %110 = sext i32 %103 to i64
  %111 = getelementptr inbounds [28 x i32], ptr %6, i64 0, i64 %110
  store i32 %108, ptr %111, align 4, !tbaa !7
  %112 = add nsw i32 %103, 1
  br label %118

113:                                              ; preds = %100
  %114 = add nsw i32 %102, %.lcssa9
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds [28 x i32], ptr %6, i64 0, i64 %115
  store i32 %108, ptr %116, align 4, !tbaa !7
  %117 = add nsw i32 %102, 1
  br label %118

118:                                              ; preds = %113, %109
  %119 = phi i32 [ %112, %109 ], [ %103, %113 ]
  %120 = phi i32 [ %102, %109 ], [ %117, %113 ]
  %121 = add nuw nsw i64 %101, 1
  %122 = icmp eq i64 %121, %14
  br i1 %122, label %123, label %100, !llvm.loop !113

123:                                              ; preds = %118
  %124 = shl nuw nsw i64 %14, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %13, ptr nonnull align 16 %6, i64 %124, i1 false), !tbaa !7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %7) #23
  %125 = icmp eq i32 %.lcssa9, %12
  br i1 %125, label %194, label %126

126:                                              ; preds = %123
  br i1 %10, label %132, label %127

127:                                              ; preds = %298, %294, %290, %285, %206, %198, %192, %126
  %128 = phi i32 [ %193, %192 ], [ %196, %198 ], [ %207, %206 ], [ %.lcssa11, %285 ], [ %288, %290 ], [ %292, %294 ], [ %296, %298 ], [ %.lcssa9, %126 ]
  %129 = phi ptr [ @str.27, %192 ], [ @str.26, %198 ], [ @str.25, %206 ], [ @str.24, %285 ], [ @str.23, %290 ], [ @str.22, %294 ], [ @str.21, %298 ], [ @str.28, %126 ]
  %130 = load ptr, ptr @stdout, align 8, !tbaa !15
  tail call fastcc void @display_split(ptr noundef %130, ptr noundef %13, i32 noundef %128, i32 noundef %12) #21
  %131 = tail call i32 @puts(ptr nonnull dereferenceable(1) %129)
  br label %132

132:                                              ; preds = %298, %294, %290, %285, %206, %198, %192, %127, %126
  %133 = phi i32 [ %193, %192 ], [ %196, %198 ], [ %207, %206 ], [ %.lcssa11, %285 ], [ %288, %290 ], [ %292, %294 ], [ %296, %298 ], [ %.lcssa9, %126 ], [ %128, %127 ]
  tail call fastcc void @break_a_tie(ptr noundef %13, i32 noundef %133, i32 noundef %2) #21
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i32, ptr %13, i64 %134
  %136 = sub nsw i32 %12, %133
  %137 = icmp slt i32 %136, 2
  br i1 %137, label %302, label %11

138:                                              ; preds = %183, %39
  %139 = phi i64 [ %184, %183 ], [ 0, %39 ]
  %140 = getelementptr inbounds i32, ptr %13, i64 %139
  br label %141

141:                                              ; preds = %166, %138
  %142 = phi i64 [ 0, %138 ], [ %169, %166 ]
  %143 = phi i32 [ 1, %138 ], [ %168, %166 ]
  %144 = phi i32 [ 1, %138 ], [ %167, %166 ]
  %145 = icmp eq i64 %139, %142
  br i1 %145, label %166, label %146

146:                                              ; preds = %141
  %147 = load i32, ptr %140, align 4, !tbaa !7
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, ptr %13, i64 %142
  %150 = load i32, ptr %149, align 4, !tbaa !7
  %151 = sext i32 %150 to i64
  %152 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %148, i64 %151, i32 2
  %153 = load i32, ptr %152, align 4, !tbaa !43
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %155, label %166

155:                                              ; preds = %146
  %156 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %148, i64 %151
  %157 = load i32, ptr %156, align 4, !tbaa !42
  %158 = icmp eq i32 %157, 0
  %159 = getelementptr inbounds [29 x [29 x %struct.info]], ptr @h_to_h_stats, i64 0, i64 %148, i64 %151, i32 1
  %160 = load i32, ptr %159, align 4, !tbaa !41
  %161 = icmp eq i32 %160, 0
  br i1 %158, label %164, label %162

162:                                              ; preds = %155
  %163 = select i1 %161, i32 %144, i32 0
  br label %166

164:                                              ; preds = %155
  %165 = select i1 %161, i32 0, i32 %143
  br label %166

166:                                              ; preds = %164, %162, %146, %141
  %167 = phi i32 [ %144, %141 ], [ %163, %162 ], [ 0, %164 ], [ 0, %146 ]
  %168 = phi i32 [ %143, %141 ], [ 0, %162 ], [ %165, %164 ], [ 0, %146 ]
  %169 = add nuw nsw i64 %142, 1
  %170 = icmp eq i64 %169, %14
  br i1 %170, label %171, label %141, !llvm.loop !114

171:                                              ; preds = %166
  %.lcssa3 = phi i32 [ %167, %166 ]
  %.lcssa2 = phi i32 [ %168, %166 ]
  %172 = icmp eq i32 %.lcssa3, 0
  br i1 %172, label %173, label %186

173:                                              ; preds = %171
  %174 = icmp eq i32 %.lcssa2, 0
  br i1 %174, label %183, label %175

175:                                              ; preds = %173
  %.lcssa5 = phi i64 [ %139, %173 ]
  %176 = add nsw i32 %12, -1
  %177 = zext i32 %176 to i64
  %178 = getelementptr inbounds i32, ptr %13, i64 %177
  %179 = load i32, ptr %178, align 4, !tbaa !7
  %180 = and i64 %.lcssa5, 4294967295
  %181 = getelementptr inbounds i32, ptr %13, i64 %180
  %182 = load i32, ptr %181, align 4, !tbaa !7
  store i32 %182, ptr %178, align 4, !tbaa !7
  store i32 %179, ptr %181, align 4, !tbaa !7
  br label %192

183:                                              ; preds = %173
  %184 = add nuw nsw i64 %139, 1
  %185 = icmp eq i64 %184, %14
  br i1 %185, label %199, label %138, !llvm.loop !115

186:                                              ; preds = %171
  %.lcssa4 = phi i64 [ %139, %171 ]
  %187 = load i32, ptr %13, align 4, !tbaa !7
  %188 = and i64 %.lcssa4, 4294967295
  %189 = getelementptr inbounds i32, ptr %13, i64 %188
  %190 = load i32, ptr %189, align 4, !tbaa !7
  store i32 %190, ptr %13, align 4, !tbaa !7
  store i32 %187, ptr %189, align 4, !tbaa !7
  %191 = icmp eq i32 %12, 1
  br i1 %191, label %202, label %192

192:                                              ; preds = %186, %175
  %193 = phi i32 [ %176, %175 ], [ 1, %186 ]
  br i1 %10, label %132, label %127

194:                                              ; preds = %123
  br i1 %.lcssa1, label %195, label %199

195:                                              ; preds = %194
  %196 = tail call fastcc i32 @div_conf_rec(ptr noundef nonnull %13, i32 noundef %12, i32 noundef 1) #21
  %197 = icmp eq i32 %196, %12
  br i1 %197, label %199, label %198

198:                                              ; preds = %195
  br i1 %10, label %132, label %127

199:                                              ; preds = %195, %194, %183
  %200 = tail call fastcc i32 @div_conf_rec(ptr noundef %13, i32 noundef %12, i32 noundef 0) #21
  %201 = icmp eq i32 %200, %12
  br i1 %201, label %208, label %206

202:                                              ; preds = %186
  %203 = tail call fastcc i32 @div_conf_rec(ptr noundef nonnull %13, i32 noundef 1, i32 noundef 0) #21
  %204 = icmp eq i32 %203, 1
  br i1 %204, label %205, label %206

205:                                              ; preds = %202
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  br label %210

206:                                              ; preds = %202, %199
  %207 = phi i32 [ %203, %202 ], [ %200, %199 ]
  br i1 %10, label %132, label %127

208:                                              ; preds = %199
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  %209 = icmp sgt i32 %12, 28
  br i1 %209, label %212, label %210

210:                                              ; preds = %208, %205
  %211 = shl nuw nsw i64 %14, 2
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 getelementptr inbounds ([29 x i32], ptr @common_teams, i64 0, i64 1), ptr align 4 %13, i64 %211, i1 false), !tbaa !7
  tail call fastcc void @common(i32 noundef %12) #21
  br label %217

212:                                              ; preds = %208
  %213 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.17)
  tail call void @exit(i32 noundef 1) #19
  unreachable

214:                                              ; preds = %217
  %215 = add nuw nsw i64 %218, 1
  %216 = icmp eq i64 %215, %14
  br i1 %216, label %226, label %217, !llvm.loop !116

217:                                              ; preds = %214, %210
  %218 = phi i64 [ 0, %210 ], [ %215, %214 ]
  %219 = getelementptr inbounds i32, ptr %13, i64 %218
  %220 = load i32, ptr %219, align 4, !tbaa !7
  %221 = sext i32 %220 to i64
  %222 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %221
  %223 = load i32, ptr %222, align 4, !tbaa !42
  %224 = icmp eq i32 %223, -1
  br i1 %224, label %225, label %214

225:                                              ; preds = %217
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  br label %286

226:                                              ; preds = %248, %214
  %227 = phi i64 [ %257, %248 ], [ 0, %214 ]
  %228 = phi i32 [ %256, %248 ], [ 0, %214 ]
  %229 = phi double [ %252, %248 ], [ 0.000000e+00, %214 ]
  %230 = getelementptr inbounds i32, ptr %13, i64 %227
  %231 = load i32, ptr %230, align 4, !tbaa !7
  %232 = sext i32 %231 to i64
  %233 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %232
  %234 = load i32, ptr %233, align 4, !tbaa !42
  %235 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %232, i32 1
  %236 = load i32, ptr %235, align 4, !tbaa !41
  %237 = add nsw i32 %236, %234
  %238 = getelementptr inbounds [29 x %struct.info], ptr @common_games, i64 0, i64 %232, i32 2
  %239 = load i32, ptr %238, align 4, !tbaa !43
  %240 = add nsw i32 %237, %239
  %241 = icmp eq i32 %240, 0
  br i1 %241, label %248, label %242

242:                                              ; preds = %226
  %243 = sitofp i32 %234 to double
  %244 = sitofp i32 %239 to double
  %245 = tail call double @llvm.fmuladd.f64(double %244, double 5.000000e-01, double %243)
  %246 = sitofp i32 %240 to double
  %247 = fdiv double %245, %246
  br label %248

248:                                              ; preds = %242, %226
  %249 = phi double [ %247, %242 ], [ 0.000000e+00, %226 ]
  %250 = getelementptr inbounds [28 x double], ptr %5, i64 0, i64 %227
  store double %249, ptr %250, align 8, !tbaa !110
  %251 = fcmp ogt double %249, %229
  %252 = select i1 %251, double %249, double %229
  %253 = select i1 %251, i32 0, i32 %228
  %254 = fcmp oeq double %249, %252
  %255 = zext i1 %254 to i32
  %256 = add nsw i32 %253, %255
  %257 = add nuw nsw i64 %227, 1
  %258 = icmp eq i64 %257, %14
  br i1 %258, label %259, label %226, !llvm.loop !117

259:                                              ; preds = %248
  %.lcssa12 = phi double [ %252, %248 ]
  %.lcssa11 = phi i32 [ %256, %248 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br label %260

260:                                              ; preds = %278, %259
  %261 = phi i64 [ 0, %259 ], [ %281, %278 ]
  %262 = phi i32 [ 0, %259 ], [ %280, %278 ]
  %263 = phi i32 [ 0, %259 ], [ %279, %278 ]
  %264 = getelementptr inbounds double, ptr %5, i64 %261
  %265 = load double, ptr %264, align 8, !tbaa !110
  %266 = fcmp oeq double %265, %.lcssa12
  %267 = getelementptr inbounds i32, ptr %13, i64 %261
  %268 = load i32, ptr %267, align 4, !tbaa !7
  br i1 %266, label %269, label %273

269:                                              ; preds = %260
  %270 = sext i32 %263 to i64
  %271 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %270
  store i32 %268, ptr %271, align 4, !tbaa !7
  %272 = add nsw i32 %263, 1
  br label %278

273:                                              ; preds = %260
  %274 = add nsw i32 %262, %.lcssa11
  %275 = sext i32 %274 to i64
  %276 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %275
  store i32 %268, ptr %276, align 4, !tbaa !7
  %277 = add nsw i32 %262, 1
  br label %278

278:                                              ; preds = %273, %269
  %279 = phi i32 [ %272, %269 ], [ %263, %273 ]
  %280 = phi i32 [ %262, %269 ], [ %277, %273 ]
  %281 = add nuw nsw i64 %261, 1
  %282 = icmp eq i64 %281, %14
  br i1 %282, label %283, label %260, !llvm.loop !113

283:                                              ; preds = %278
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %13, ptr nonnull align 16 %4, i64 %211, i1 false), !tbaa !7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  %284 = icmp eq i32 %.lcssa11, %12
  br i1 %284, label %286, label %285

285:                                              ; preds = %283
  br i1 %10, label %132, label %127

286:                                              ; preds = %283, %225
  br i1 %.lcssa1, label %287, label %291

287:                                              ; preds = %286
  %288 = tail call fastcc i32 @break_net_points(ptr noundef nonnull %13, i32 noundef %12, i32 noundef 1) #21
  %289 = icmp eq i32 %288, %12
  br i1 %289, label %295, label %290

290:                                              ; preds = %287
  br i1 %10, label %132, label %127

291:                                              ; preds = %286
  %292 = tail call fastcc i32 @break_net_points(ptr noundef nonnull %13, i32 noundef %12, i32 noundef 0) #21
  %293 = icmp eq i32 %292, %12
  br i1 %293, label %295, label %294

294:                                              ; preds = %291
  br i1 %10, label %132, label %127

295:                                              ; preds = %291, %287
  %296 = tail call fastcc i32 @break_net_points(ptr noundef nonnull %13, i32 noundef %12, i32 noundef 2) #21
  %297 = icmp eq i32 %296, %12
  br i1 %297, label %299, label %298

298:                                              ; preds = %295
  br i1 %10, label %132, label %127

299:                                              ; preds = %295
  br i1 %10, label %302, label %300

300:                                              ; preds = %299
  %301 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.20)
  br label %302

302:                                              ; preds = %300, %299, %132, %3
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @display_split(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, i32 noundef %3) unnamed_addr #8 {
  %5 = add nsw i32 %2, -1
  %6 = icmp eq i32 %2, %3
  %7 = zext i32 %5 to i64
  %8 = zext i32 %3 to i64
  br label %9

9:                                                ; preds = %20, %4
  %10 = phi i64 [ 0, %4 ], [ %21, %20 ]
  %11 = getelementptr inbounds i32, ptr %1, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !7
  %13 = sext i32 %12 to i64
  %14 = getelementptr inbounds [30 x [2 x [15 x i8]]], ptr @team, i64 0, i64 %13, i64 1
  %15 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %0, ptr noundef nonnull @.str.14, ptr noundef nonnull %14) #21
  %16 = icmp ne i64 %10, %7
  %17 = or i1 %6, %16
  br i1 %17, label %20, label %18

18:                                               ; preds = %9
  %19 = tail call i64 @fwrite(ptr nonnull @.str.15, i64 6, i64 1, ptr %0)
  br label %20

20:                                               ; preds = %18, %9
  %21 = add nuw nsw i64 %10, 1
  %22 = icmp eq i64 %21, %8
  br i1 %22, label %23, label %9, !llvm.loop !118

23:                                               ; preds = %20
  %24 = tail call i32 @fputc(i32 10, ptr %0)
  ret void
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #2

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @div_conf_rec(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [28 x i32], align 16
  %5 = alloca [28 x double], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  %6 = icmp sgt i32 %1, 28
  br i1 %6, label %10, label %7

7:                                                ; preds = %3
  %8 = icmp eq i32 %2, 1
  %9 = zext i32 %1 to i64
  br label %12

10:                                               ; preds = %3
  %11 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.18)
  tail call void @exit(i32 noundef 1) #19
  unreachable

12:                                               ; preds = %51, %7
  %13 = phi i64 [ 0, %7 ], [ %60, %51 ]
  %14 = phi i32 [ 0, %7 ], [ %59, %51 ]
  %15 = phi double [ 0.000000e+00, %7 ], [ %55, %51 ]
  %16 = getelementptr inbounds i32, ptr %0, i64 %13
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  br i1 %8, label %19, label %35

19:                                               ; preds = %12
  %20 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %18
  %21 = load i32, ptr %20, align 4, !tbaa !42
  %22 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %18, i32 1
  %23 = load i32, ptr %22, align 4, !tbaa !41
  %24 = add nsw i32 %23, %21
  %25 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %18, i32 2
  %26 = load i32, ptr %25, align 4, !tbaa !43
  %27 = add nsw i32 %24, %26
  %28 = icmp eq i32 %27, 0
  br i1 %28, label %51, label %29

29:                                               ; preds = %19
  %30 = sitofp i32 %21 to double
  %31 = sitofp i32 %26 to double
  %32 = tail call double @llvm.fmuladd.f64(double %31, double 5.000000e-01, double %30)
  %33 = sitofp i32 %27 to double
  %34 = fdiv double %32, %33
  br label %51

35:                                               ; preds = %12
  %36 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %18
  %37 = load i32, ptr %36, align 4, !tbaa !42
  %38 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %18, i32 1
  %39 = load i32, ptr %38, align 4, !tbaa !41
  %40 = add nsw i32 %39, %37
  %41 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %18, i32 2
  %42 = load i32, ptr %41, align 4, !tbaa !43
  %43 = add nsw i32 %40, %42
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %51, label %45

45:                                               ; preds = %35
  %46 = sitofp i32 %37 to double
  %47 = sitofp i32 %42 to double
  %48 = tail call double @llvm.fmuladd.f64(double %47, double 5.000000e-01, double %46)
  %49 = sitofp i32 %43 to double
  %50 = fdiv double %48, %49
  br label %51

51:                                               ; preds = %45, %35, %29, %19
  %52 = phi double [ %34, %29 ], [ 0.000000e+00, %19 ], [ %50, %45 ], [ 0.000000e+00, %35 ]
  %53 = getelementptr inbounds [28 x double], ptr %5, i64 0, i64 %13
  store double %52, ptr %53, align 8, !tbaa !110
  %54 = fcmp ogt double %52, %15
  %55 = select i1 %54, double %52, double %15
  %56 = select i1 %54, i32 0, i32 %14
  %57 = fcmp oeq double %52, %55
  %58 = zext i1 %57 to i32
  %59 = add nsw i32 %56, %58
  %60 = add nuw nsw i64 %13, 1
  %61 = icmp eq i64 %60, %9
  br i1 %61, label %62, label %12, !llvm.loop !119

62:                                               ; preds = %51
  %.lcssa1 = phi double [ %55, %51 ]
  %.lcssa = phi i32 [ %59, %51 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br label %65

63:                                               ; preds = %83
  %64 = shl nuw nsw i64 %9, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %4, i64 %64, i1 false), !tbaa !7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  ret i32 %.lcssa

65:                                               ; preds = %83, %62
  %66 = phi i64 [ 0, %62 ], [ %86, %83 ]
  %67 = phi i32 [ 0, %62 ], [ %85, %83 ]
  %68 = phi i32 [ 0, %62 ], [ %84, %83 ]
  %69 = getelementptr inbounds double, ptr %5, i64 %66
  %70 = load double, ptr %69, align 8, !tbaa !110
  %71 = fcmp oeq double %70, %.lcssa1
  %72 = getelementptr inbounds i32, ptr %0, i64 %66
  %73 = load i32, ptr %72, align 4, !tbaa !7
  br i1 %71, label %74, label %78

74:                                               ; preds = %65
  %75 = sext i32 %68 to i64
  %76 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %75
  store i32 %73, ptr %76, align 4, !tbaa !7
  %77 = add nsw i32 %68, 1
  br label %83

78:                                               ; preds = %65
  %79 = add nsw i32 %67, %.lcssa
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %80
  store i32 %73, ptr %81, align 4, !tbaa !7
  %82 = add nsw i32 %67, 1
  br label %83

83:                                               ; preds = %78, %74
  %84 = phi i32 [ %77, %74 ], [ %68, %78 ]
  %85 = phi i32 [ %67, %74 ], [ %82, %78 ]
  %86 = add nuw nsw i64 %66, 1
  %87 = icmp eq i64 %86, %9
  br i1 %87, label %63, label %65, !llvm.loop !113
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @break_net_points(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #0 {
  %4 = alloca [28 x i32], align 16
  %5 = alloca [28 x double], align 16
  call void @llvm.lifetime.start.p0(i64 224, ptr nonnull %5) #23
  %6 = icmp sgt i32 %1, 28
  br i1 %6, label %9, label %7

7:                                                ; preds = %3
  %8 = zext i32 %1 to i64
  br label %11

9:                                                ; preds = %3
  %10 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.19)
  tail call void @exit(i32 noundef 1) #19
  unreachable

11:                                               ; preds = %33, %7
  %12 = phi i64 [ 0, %7 ], [ %47, %33 ]
  %13 = phi i32 [ 0, %7 ], [ %46, %33 ]
  %14 = phi double [ -1.000000e+04, %7 ], [ %42, %33 ]
  switch i32 %2, label %27 [
    i32 1, label %15
    i32 0, label %21
  ]

15:                                               ; preds = %11
  %16 = getelementptr inbounds i32, ptr %0, i64 %12
  %17 = load i32, ptr %16, align 4, !tbaa !7
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %18, i32 3
  %20 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_div, i64 0, i64 %18, i32 4
  br label %33

21:                                               ; preds = %11
  %22 = getelementptr inbounds i32, ptr %0, i64 %12
  %23 = load i32, ptr %22, align 4, !tbaa !7
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %24, i32 3
  %26 = getelementptr inbounds [29 x %struct.info], ptr @team_info_wi_conf, i64 0, i64 %24, i32 4
  br label %33

27:                                               ; preds = %11
  %28 = getelementptr inbounds i32, ptr %0, i64 %12
  %29 = load i32, ptr %28, align 4, !tbaa !7
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %30, i32 3
  %32 = getelementptr inbounds [29 x %struct.info], ptr @team_info, i64 0, i64 %30, i32 4
  br label %33

33:                                               ; preds = %27, %21, %15
  %34 = phi ptr [ %26, %21 ], [ %32, %27 ], [ %20, %15 ]
  %35 = phi ptr [ %25, %21 ], [ %31, %27 ], [ %19, %15 ]
  %36 = load i32, ptr %35, align 4, !tbaa !38
  %37 = load i32, ptr %34, align 4, !tbaa !40
  %38 = sub nsw i32 %36, %37
  %39 = sitofp i32 %38 to double
  %40 = getelementptr inbounds [28 x double], ptr %5, i64 0, i64 %12
  store double %39, ptr %40, align 8, !tbaa !110
  %41 = fcmp olt double %14, %39
  %42 = select i1 %41, double %39, double %14
  %43 = select i1 %41, i32 0, i32 %13
  %44 = fcmp oeq double %42, %39
  %45 = zext i1 %44 to i32
  %46 = add nsw i32 %43, %45
  %47 = add nuw nsw i64 %12, 1
  %48 = icmp eq i64 %47, %8
  br i1 %48, label %49, label %11, !llvm.loop !120

49:                                               ; preds = %33
  %.lcssa1 = phi double [ %42, %33 ]
  %.lcssa = phi i32 [ %46, %33 ]
  call void @llvm.lifetime.start.p0(i64 112, ptr nonnull %4) #23
  br label %52

50:                                               ; preds = %70
  %51 = shl nuw nsw i64 %8, 2
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 4 %0, ptr nonnull align 16 %4, i64 %51, i1 false), !tbaa !7
  call void @llvm.lifetime.end.p0(i64 112, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 224, ptr nonnull %5) #23
  ret i32 %.lcssa

52:                                               ; preds = %70, %49
  %53 = phi i64 [ 0, %49 ], [ %73, %70 ]
  %54 = phi i32 [ 0, %49 ], [ %72, %70 ]
  %55 = phi i32 [ 0, %49 ], [ %71, %70 ]
  %56 = getelementptr inbounds double, ptr %5, i64 %53
  %57 = load double, ptr %56, align 8, !tbaa !110
  %58 = fcmp oeq double %57, %.lcssa1
  %59 = getelementptr inbounds i32, ptr %0, i64 %53
  %60 = load i32, ptr %59, align 4, !tbaa !7
  br i1 %58, label %61, label %65

61:                                               ; preds = %52
  %62 = sext i32 %55 to i64
  %63 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %62
  store i32 %60, ptr %63, align 4, !tbaa !7
  %64 = add nsw i32 %55, 1
  br label %70

65:                                               ; preds = %52
  %66 = add nsw i32 %54, %.lcssa
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds [28 x i32], ptr %4, i64 0, i64 %67
  store i32 %60, ptr %68, align 4, !tbaa !7
  %69 = add nsw i32 %54, 1
  br label %70

70:                                               ; preds = %65, %61
  %71 = phi i32 [ %64, %61 ], [ %55, %65 ]
  %72 = phi i32 [ %54, %61 ], [ %69, %65 ]
  %73 = add nuw nsw i64 %53, 1
  %74 = icmp eq i64 %73, %8
  br i1 %74, label %50, label %52, !llvm.loop !113
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i32 @strncmp(ptr nocapture noundef, ptr nocapture noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind optsize
declare noundef ptr @fgets(ptr noundef, i32 noundef, ptr nocapture noundef) local_unnamed_addr #6

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @absolute_standing_lt(i32 noundef %0, i32 noundef %1) unnamed_addr #15 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = add nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = add nsw i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %19, label %13

13:                                               ; preds = %2
  %14 = sitofp i32 %5 to double
  %15 = sitofp i32 %10 to double
  %16 = tail call double @llvm.fmuladd.f64(double %15, double 5.000000e-01, double %14)
  %17 = sitofp i32 %11 to double
  %18 = fdiv double %16, %17
  br label %19

19:                                               ; preds = %13, %2
  %20 = phi double [ %18, %13 ], [ 0.000000e+00, %2 ]
  %21 = sext i32 %1 to i64
  %22 = getelementptr inbounds %struct.info, ptr @team_info, i64 %21
  %23 = load i32, ptr %22, align 4, !tbaa !42
  %24 = getelementptr inbounds %struct.info, ptr @team_info, i64 %21, i32 1
  %25 = load i32, ptr %24, align 4, !tbaa !41
  %26 = add nsw i32 %25, %23
  %27 = getelementptr inbounds %struct.info, ptr @team_info, i64 %21, i32 2
  %28 = load i32, ptr %27, align 4, !tbaa !43
  %29 = add nsw i32 %26, %28
  %30 = icmp eq i32 %29, 0
  br i1 %30, label %37, label %31

31:                                               ; preds = %19
  %32 = sitofp i32 %23 to double
  %33 = sitofp i32 %28 to double
  %34 = tail call double @llvm.fmuladd.f64(double %33, double 5.000000e-01, double %32)
  %35 = sitofp i32 %29 to double
  %36 = fdiv double %34, %35
  br label %37

37:                                               ; preds = %31, %19
  %38 = phi double [ %36, %31 ], [ 0.000000e+00, %19 ]
  %39 = fcmp une double %20, %38
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  br i1 %12, label %47, label %41

41:                                               ; preds = %40
  %42 = sitofp i32 %5 to double
  %43 = sitofp i32 %10 to double
  %44 = tail call double @llvm.fmuladd.f64(double %43, double 5.000000e-01, double %42)
  %45 = sitofp i32 %11 to double
  %46 = fdiv double %44, %45
  br label %47

47:                                               ; preds = %41, %40
  %48 = phi double [ %46, %41 ], [ 0.000000e+00, %40 ]
  br i1 %30, label %55, label %49

49:                                               ; preds = %47
  %50 = sitofp i32 %23 to double
  %51 = sitofp i32 %28 to double
  %52 = tail call double @llvm.fmuladd.f64(double %51, double 5.000000e-01, double %50)
  %53 = sitofp i32 %29 to double
  %54 = fdiv double %52, %53
  br label %55

55:                                               ; preds = %49, %47
  %56 = phi double [ %54, %49 ], [ 0.000000e+00, %47 ]
  %57 = fcmp ogt double %48, %56
  br label %138

58:                                               ; preds = %37
  %59 = or i32 %25, %7
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %58
  %62 = icmp sgt i32 %5, %23
  br label %138

63:                                               ; preds = %58
  %64 = or i32 %23, %5
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %63
  %67 = icmp slt i32 %7, %25
  br label %138

68:                                               ; preds = %63
  %69 = load i32, ptr @nfc_east_champ, align 4, !tbaa !7
  %70 = icmp eq i32 %69, %0
  %71 = load i32, ptr @nfc_central_champ, align 4
  %72 = icmp eq i32 %71, %0
  %73 = select i1 %70, i1 true, i1 %72
  %74 = load i32, ptr @nfc_west_champ, align 4
  %75 = icmp eq i32 %74, %0
  %76 = select i1 %73, i1 true, i1 %75
  %77 = load i32, ptr @afc_east_champ, align 4
  %78 = icmp eq i32 %77, %0
  %79 = select i1 %76, i1 true, i1 %78
  %80 = load i32, ptr @afc_central_champ, align 4
  %81 = icmp eq i32 %80, %0
  %82 = select i1 %79, i1 true, i1 %81
  %83 = load i32, ptr @afc_west_champ, align 4
  %84 = icmp eq i32 %83, %0
  %85 = select i1 %82, i1 true, i1 %84
  %86 = icmp eq i32 %69, %1
  %87 = icmp eq i32 %71, %1
  %88 = select i1 %86, i1 true, i1 %87
  %89 = icmp eq i32 %74, %1
  %90 = select i1 %88, i1 true, i1 %89
  %91 = icmp eq i32 %77, %1
  %92 = select i1 %90, i1 true, i1 %91
  %93 = icmp eq i32 %80, %1
  %94 = select i1 %92, i1 true, i1 %93
  %95 = icmp eq i32 %83, %1
  %96 = select i1 %94, i1 true, i1 %95
  %97 = xor i1 %85, %96
  br i1 %97, label %138, label %98

98:                                               ; preds = %68
  %99 = load i32, ptr @nfc_wild_card1, align 4, !tbaa !7
  %100 = icmp eq i32 %99, %0
  %101 = load i32, ptr @nfc_wild_card2, align 4
  %102 = icmp eq i32 %101, %0
  %103 = select i1 %100, i1 true, i1 %102
  %104 = load i32, ptr @nfc_wild_card3, align 4
  %105 = icmp eq i32 %104, %0
  %106 = select i1 %103, i1 true, i1 %105
  %107 = load i32, ptr @afc_wild_card1, align 4
  %108 = icmp eq i32 %107, %0
  %109 = select i1 %106, i1 true, i1 %108
  %110 = load i32, ptr @afc_wild_card2, align 4
  %111 = icmp eq i32 %110, %0
  %112 = select i1 %109, i1 true, i1 %111
  %113 = load i32, ptr @afc_wild_card3, align 4
  %114 = icmp eq i32 %113, %0
  %115 = select i1 %112, i1 true, i1 %114
  %116 = icmp eq i32 %99, %1
  %117 = icmp eq i32 %101, %1
  %118 = select i1 %116, i1 true, i1 %117
  %119 = icmp eq i32 %104, %1
  %120 = select i1 %118, i1 true, i1 %119
  %121 = icmp eq i32 %107, %1
  %122 = select i1 %120, i1 true, i1 %121
  %123 = icmp eq i32 %110, %1
  %124 = select i1 %122, i1 true, i1 %123
  %125 = icmp eq i32 %113, %1
  %126 = select i1 %124, i1 true, i1 %125
  %127 = xor i1 %115, %126
  br i1 %127, label %138, label %128

128:                                              ; preds = %98
  %129 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %3
  %130 = load i32, ptr %129, align 8, !tbaa !7
  %131 = getelementptr inbounds [29 x [2 x i32]], ptr @divisions, i64 0, i64 %21
  %132 = load i32, ptr %131, align 8, !tbaa !7
  %133 = icmp eq i32 %130, %132
  br i1 %133, label %136, label %134

134:                                              ; preds = %128
  %135 = icmp slt i32 %130, %132
  br label %138

136:                                              ; preds = %128
  %137 = icmp slt i32 %0, %1
  br label %138

138:                                              ; preds = %136, %134, %98, %68, %66, %61, %55
  %139 = phi i1 [ %57, %55 ], [ %62, %61 ], [ %67, %66 ], [ %135, %134 ], [ %137, %136 ], [ %85, %68 ], [ %115, %98 ]
  %140 = zext i1 %139 to i32
  ret i32 %140
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable
define internal fastcc i32 @net_nfl_lt(i32 noundef %0, i32 noundef %1) unnamed_addr #16 {
  %3 = sext i32 %0 to i64
  %4 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3
  %5 = load i32, ptr %4, align 4, !tbaa !42
  %6 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 1
  %7 = load i32, ptr %6, align 4, !tbaa !41
  %8 = add nsw i32 %7, %5
  %9 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 2
  %10 = load i32, ptr %9, align 4, !tbaa !43
  %11 = add nsw i32 %8, %10
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %22, label %13

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 3
  %15 = load i32, ptr %14, align 4, !tbaa !38
  %16 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 4
  %17 = load i32, ptr %16, align 4, !tbaa !40
  %18 = sub nsw i32 %15, %17
  %19 = sitofp i32 %18 to double
  %20 = sitofp i32 %11 to double
  %21 = fdiv double %19, %20
  br label %22

22:                                               ; preds = %13, %2
  %23 = phi double [ %21, %13 ], [ 0.000000e+00, %2 ]
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24
  %26 = load i32, ptr %25, align 4, !tbaa !42
  %27 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !41
  %29 = add nsw i32 %28, %26
  %30 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 2
  %31 = load i32, ptr %30, align 4, !tbaa !43
  %32 = add nsw i32 %29, %31
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %43, label %34

34:                                               ; preds = %22
  %35 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 3
  %36 = load i32, ptr %35, align 4, !tbaa !38
  %37 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !40
  %39 = sub nsw i32 %36, %38
  %40 = sitofp i32 %39 to double
  %41 = sitofp i32 %32 to double
  %42 = fdiv double %40, %41
  br label %43

43:                                               ; preds = %34, %22
  %44 = phi double [ %42, %34 ], [ 0.000000e+00, %22 ]
  %45 = fcmp une double %23, %44
  br i1 %45, label %46, label %70

46:                                               ; preds = %43
  br i1 %12, label %56, label %47

47:                                               ; preds = %46
  %48 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 3
  %49 = load i32, ptr %48, align 4, !tbaa !38
  %50 = getelementptr inbounds %struct.info, ptr @team_info, i64 %3, i32 4
  %51 = load i32, ptr %50, align 4, !tbaa !40
  %52 = sub nsw i32 %49, %51
  %53 = sitofp i32 %52 to double
  %54 = sitofp i32 %11 to double
  %55 = fdiv double %53, %54
  br label %56

56:                                               ; preds = %47, %46
  %57 = phi double [ %55, %47 ], [ 0.000000e+00, %46 ]
  br i1 %33, label %67, label %58

58:                                               ; preds = %56
  %59 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 3
  %60 = load i32, ptr %59, align 4, !tbaa !38
  %61 = getelementptr inbounds %struct.info, ptr @team_info, i64 %24, i32 4
  %62 = load i32, ptr %61, align 4, !tbaa !40
  %63 = sub nsw i32 %60, %62
  %64 = sitofp i32 %63 to double
  %65 = sitofp i32 %32 to double
  %66 = fdiv double %64, %65
  br label %67

67:                                               ; preds = %58, %56
  %68 = phi double [ %66, %58 ], [ 0.000000e+00, %56 ]
  %69 = fcmp ogt double %57, %68
  br label %72

70:                                               ; preds = %43
  %71 = icmp slt i32 %0, %1
  br label %72

72:                                               ; preds = %70, %67
  %73 = phi i1 [ %69, %67 ], [ %71, %70 ]
  %74 = zext i1 %73 to i32
  ret i32 %74
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite)
declare ptr @strcpy(ptr noalias noundef returned writeonly, ptr noalias nocapture noundef readonly) local_unnamed_addr #5

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nofree nounwind }
attributes #3 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { mustprogress nofree nounwind optsize willreturn memory(argmem: readwrite) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #8 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nofree nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree norecurse nosync nounwind optsize memory(readwrite, argmem: read, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #13 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #15 = { mustprogress nofree nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: none, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { nounwind optsize willreturn memory(read) }
attributes #18 = { cold }
attributes #19 = { noreturn nounwind optsize }
attributes #20 = { nounwind optsize }
attributes #21 = { optsize }
attributes #22 = { cold optsize }
attributes #23 = { nounwind }

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
!15 = !{!16, !16, i64 0}
!16 = !{!"any pointer", !9, i64 0}
!17 = !{!9, !9, i64 0}
!18 = distinct !{!18, !12}
!19 = distinct !{!19, !12}
!20 = distinct !{!20, !12}
!21 = distinct !{!21, !12}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = distinct !{!25, !12}
!26 = distinct !{!26, !12}
!27 = distinct !{!27, !12}
!28 = distinct !{!28, !12}
!29 = distinct !{!29, !12}
!30 = distinct !{!30, !12}
!31 = distinct !{!31, !12}
!32 = distinct !{!32, !12}
!33 = distinct !{!33, !12}
!34 = distinct !{!34, !12}
!35 = distinct !{!35, !12}
!36 = distinct !{!36, !12}
!37 = distinct !{!37, !12}
!38 = !{!39, !8, i64 12}
!39 = !{!"info", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !8, i64 16, !9, i64 20}
!40 = !{!39, !8, i64 16}
!41 = !{!39, !8, i64 4}
!42 = !{!39, !8, i64 0}
!43 = !{!39, !8, i64 8}
!44 = distinct !{!44, !12}
!45 = distinct !{!45, !12}
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
!64 = !{i32 0, i32 2}
!65 = distinct !{!65, !12}
!66 = distinct !{!66, !12}
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
!93 = distinct !{!93, !12, !13, !14}
!94 = distinct !{!94, !12, !13, !14}
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
!110 = !{!111, !111, i64 0}
!111 = !{!"double", !9, i64 0}
!112 = distinct !{!112, !12}
!113 = distinct !{!113, !12}
!114 = distinct !{!114, !12}
!115 = distinct !{!115, !12}
!116 = distinct !{!116, !12}
!117 = distinct !{!117, !12}
!118 = distinct !{!118, !12}
!119 = distinct !{!119, !12}
!120 = distinct !{!120, !12}
