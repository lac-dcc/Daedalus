; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/VersaBench/ecbdes/ecbdes.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@key_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@.str = private unnamed_addr constant [15 x i8] c"Key %d error!\0A\00", align 1
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"sY\B2\16>N\DCX", [8 x i8] c"\95\8Enbz\05U{", [8 x i8] c"\F4\03y\AB\9E\0E\C53", [8 x i8] c"\17f\8D\FCr\92S-", [8 x i8] c"\8AZ\E1\F8\1A\B8\F2\DD", [8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"\ED9\D9P\FAt\BC\C4", [8 x i8] c"i\0F[\0D\9A&\93\9B", [8 x i8] c"z8\9D\105K\D2q", [8 x i8] c"\86\8E\BBQ\CA\B4Y\9A", [8 x i8] c"qx\87n\01\F1\9B*", [8 x i8] c"\AF7\FBB\1F\8C@\95", [8 x i8] c"\86\A5`\F1\0E\C6\D8[", [8 x i8] c"\0C\D3\DA\02\00!\DC\09", [8 x i8] c"\EAgk,\B7\DB+z", [8 x i8] c"\DF\D6J\81\\\AF\1A\0F", [8 x i8] c"\\Q<\9CH\86\C0\88", [8 x i8] c"\0A*\EE\AE?\F4\ABw", [8 x i8] c"\EF\1B\F0>]\FAWZ", [8 x i8] c"\88\BF\0D\B6\D7\0D\EEV", [8 x i8] c"\A1\F9\91UA\02\0BV", [8 x i8] c"o\BF\1C\AF\CF\FD\05V", [8 x i8] c"/\22\E4\9B\AB|\A1\AC", [8 x i8] c"Zka,\C2l\CEJ", [8 x i8] c"_L\03\8E\D1+.A", [8 x i8] c"c\FA\C0\D04\D9\F7\93", [8 x i8] c"a{:\0C\E8\F0q\00", [8 x i8] c"\DB\95\86\05\F8\C8\C6\06", [8 x i8] c"\ED\BF\D1\C6l)\CC\C7", [8 x i8] c"5UP\B2\15\0E$Q", [8 x i8] c"\CA\AA\AFM\EA\F1\DB\AE", [8 x i8] c"\D5\D4O\F7 h=\0D", [8 x i8] c"*+\B0\08\DF\97\C2\F2"], align 16
@.str.3 = private unnamed_addr constant [147 x i8] c"Driver for Data Encryption Standard benchmark.\0A\0Ausage: %s <size> (where size <= 34)\0A\0Asize is the number of processing node for hardware version \0A\0A\00", align 1
@str = private unnamed_addr constant [21 x i8] c"Encrypted correctly.\00", align 1
@str.4 = private unnamed_addr constant [18 x i8] c"Encryption error.\00", align 1
@des_SPtrans = internal constant [8 x [64 x i64]] [[64 x i64] [i64 34080768, i64 524288, i64 33554434, i64 34080770, i64 33554432, i64 526338, i64 524290, i64 33554434, i64 526338, i64 34080768, i64 34078720, i64 2050, i64 33556482, i64 33554432, i64 0, i64 524290, i64 524288, i64 2, i64 33556480, i64 526336, i64 34080770, i64 34078720, i64 2050, i64 33556480, i64 2, i64 2048, i64 526336, i64 34078722, i64 2048, i64 33556482, i64 34078722, i64 0, i64 0, i64 34080770, i64 33556480, i64 524290, i64 34080768, i64 524288, i64 2050, i64 33556480, i64 34078722, i64 2048, i64 526336, i64 33554434, i64 526338, i64 2, i64 33554434, i64 34078720, i64 34080770, i64 526336, i64 34078720, i64 33556482, i64 33554432, i64 2050, i64 524290, i64 0, i64 524288, i64 33554432, i64 33556482, i64 34080768, i64 2, i64 34078722, i64 2048, i64 526338], [64 x i64] [i64 1074823184, i64 0, i64 1081344, i64 1074790400, i64 1073741840, i64 32784, i64 1073774592, i64 1081344, i64 32768, i64 1074790416, i64 16, i64 1073774592, i64 1048592, i64 1074823168, i64 1074790400, i64 16, i64 1048576, i64 1073774608, i64 1074790416, i64 32768, i64 1081360, i64 1073741824, i64 0, i64 1048592, i64 1073774608, i64 1081360, i64 1074823168, i64 1073741840, i64 1073741824, i64 1048576, i64 32784, i64 1074823184, i64 1048592, i64 1074823168, i64 1073774592, i64 1081360, i64 1074823184, i64 1048592, i64 1073741840, i64 0, i64 1073741824, i64 32784, i64 1048576, i64 1074790416, i64 32768, i64 1073741824, i64 1081360, i64 1073774608, i64 1074823168, i64 32768, i64 0, i64 1073741840, i64 16, i64 1074823184, i64 1081344, i64 1074790400, i64 1074790416, i64 1048576, i64 32784, i64 1073774592, i64 1073774608, i64 16, i64 1074790400, i64 1081344], [64 x i64] [i64 67108865, i64 67371264, i64 256, i64 67109121, i64 262145, i64 67108864, i64 67109121, i64 262400, i64 67109120, i64 262144, i64 67371008, i64 1, i64 67371265, i64 257, i64 1, i64 67371009, i64 0, i64 262145, i64 67371264, i64 256, i64 257, i64 67371265, i64 262144, i64 67108865, i64 67371009, i64 67109120, i64 262401, i64 67371008, i64 262400, i64 0, i64 67108864, i64 262401, i64 67371264, i64 256, i64 1, i64 262144, i64 257, i64 262145, i64 67371008, i64 67109121, i64 0, i64 67371264, i64 262400, i64 67371009, i64 262145, i64 67108864, i64 67371265, i64 1, i64 262401, i64 67108865, i64 67108864, i64 67371265, i64 262144, i64 67109120, i64 67109121, i64 262400, i64 67109120, i64 0, i64 67371009, i64 257, i64 67108865, i64 262401, i64 256, i64 67371008], [64 x i64] [i64 4198408, i64 268439552, i64 8, i64 272633864, i64 0, i64 272629760, i64 268439560, i64 4194312, i64 272633856, i64 268435464, i64 268435456, i64 4104, i64 268435464, i64 4198408, i64 4194304, i64 268435456, i64 272629768, i64 4198400, i64 4096, i64 8, i64 4198400, i64 268439560, i64 272629760, i64 4096, i64 4104, i64 0, i64 4194312, i64 272633856, i64 268439552, i64 272629768, i64 272633864, i64 4194304, i64 272629768, i64 4104, i64 4194304, i64 268435464, i64 4198400, i64 268439552, i64 8, i64 272629760, i64 268439560, i64 0, i64 4096, i64 4194312, i64 0, i64 272629768, i64 272633856, i64 4096, i64 268435456, i64 272633864, i64 4198408, i64 4194304, i64 272633864, i64 8, i64 268439552, i64 4198408, i64 4194312, i64 4198400, i64 272629760, i64 268439560, i64 4104, i64 268435456, i64 268435464, i64 272633856], [64 x i64] [i64 134217728, i64 65536, i64 1024, i64 134284320, i64 134283296, i64 134218752, i64 66592, i64 134283264, i64 65536, i64 32, i64 134217760, i64 66560, i64 134218784, i64 134283296, i64 134284288, i64 0, i64 66560, i64 134217728, i64 65568, i64 1056, i64 134218752, i64 66592, i64 0, i64 134217760, i64 32, i64 134218784, i64 134284320, i64 65568, i64 134283264, i64 1024, i64 1056, i64 134284288, i64 134284288, i64 134218784, i64 65568, i64 134283264, i64 65536, i64 32, i64 134217760, i64 134218752, i64 134217728, i64 66560, i64 134284320, i64 0, i64 66592, i64 134217728, i64 1024, i64 65568, i64 134218784, i64 1024, i64 0, i64 134284320, i64 134283296, i64 134284288, i64 1056, i64 65536, i64 66560, i64 134283296, i64 134218752, i64 1056, i64 32, i64 66592, i64 134283264, i64 134217760], [64 x i64] [i64 2147483712, i64 2097216, i64 0, i64 2149588992, i64 2097216, i64 8192, i64 2147491904, i64 2097152, i64 8256, i64 2149589056, i64 2105344, i64 2147483648, i64 2147491840, i64 2147483712, i64 2149580800, i64 2105408, i64 2097152, i64 2147491904, i64 2149580864, i64 0, i64 8192, i64 64, i64 2149588992, i64 2149580864, i64 2149589056, i64 2149580800, i64 2147483648, i64 8256, i64 64, i64 2105344, i64 2105408, i64 2147491840, i64 8256, i64 2147483648, i64 2147491840, i64 2105408, i64 2149588992, i64 2097216, i64 0, i64 2147491840, i64 2147483648, i64 8192, i64 2149580864, i64 2097152, i64 2097216, i64 2149589056, i64 2105344, i64 64, i64 2149589056, i64 2105344, i64 2097152, i64 2147491904, i64 2147483712, i64 2149580800, i64 2105408, i64 0, i64 8192, i64 2147483712, i64 2147491904, i64 2149588992, i64 2149580800, i64 8256, i64 64, i64 2149580864], [64 x i64] [i64 16384, i64 512, i64 16777728, i64 16777220, i64 16794116, i64 16388, i64 16896, i64 0, i64 16777216, i64 16777732, i64 516, i64 16793600, i64 4, i64 16794112, i64 16793600, i64 516, i64 16777732, i64 16384, i64 16388, i64 16794116, i64 0, i64 16777728, i64 16777220, i64 16896, i64 16793604, i64 16900, i64 16794112, i64 4, i64 16900, i64 16793604, i64 512, i64 16777216, i64 16900, i64 16793600, i64 16793604, i64 516, i64 16384, i64 512, i64 16777216, i64 16793604, i64 16777732, i64 16900, i64 16896, i64 0, i64 512, i64 16777220, i64 4, i64 16777728, i64 0, i64 16777732, i64 16777728, i64 16896, i64 516, i64 16384, i64 16794116, i64 16777216, i64 16794112, i64 4, i64 16388, i64 16794116, i64 16777220, i64 16794112, i64 16793600, i64 16388], [64 x i64] [i64 545259648, i64 545390592, i64 131200, i64 0, i64 537001984, i64 8388736, i64 545259520, i64 545390720, i64 128, i64 536870912, i64 8519680, i64 131200, i64 8519808, i64 537002112, i64 536871040, i64 545259520, i64 131072, i64 8519808, i64 8388736, i64 537001984, i64 545390720, i64 536871040, i64 0, i64 8519680, i64 536870912, i64 8388608, i64 537002112, i64 545259648, i64 8388608, i64 131072, i64 545390592, i64 128, i64 8388608, i64 131072, i64 536871040, i64 545390720, i64 131200, i64 536870912, i64 0, i64 8519680, i64 545259648, i64 537002112, i64 537001984, i64 8388736, i64 545390592, i64 128, i64 8388736, i64 537001984, i64 545390720, i64 8388608, i64 545259520, i64 536871040, i64 8519680, i64 131200, i64 537002112, i64 545259520, i64 128, i64 545390592, i64 8519808, i64 0, i64 536870912, i64 545259648, i64 131072, i64 8519808]], align 16
@des_check_key = internal global i32 0, align 4
@odd_parity = internal unnamed_addr constant [256 x i8] c"\01\01\02\02\04\04\07\07\08\08\0B\0B\0D\0D\0E\0E\10\10\13\13\15\15\16\16\19\19\1A\1A\1C\1C\1F\1F  ##%%&&))**,,//1122447788;;==>>@@CCEEFFIIJJLLOOQQRRTTWWXX[[]]^^aabbddgghhkkmmnnppssuuvvyyzz||\7F\7F\80\80\83\83\85\85\86\86\89\89\8A\8A\8C\8C\8F\8F\91\91\92\92\94\94\97\97\98\98\9B\9B\9D\9D\9E\9E\A1\A1\A2\A2\A4\A4\A7\A7\A8\A8\AB\AB\AD\AD\AE\AE\B0\B0\B3\B3\B5\B5\B6\B6\B9\B9\BA\BA\BC\BC\BF\BF\C1\C1\C2\C2\C4\C4\C7\C7\C8\C8\CB\CB\CD\CD\CE\CE\D0\D0\D3\D3\D5\D5\D6\D6\D9\D9\DA\DA\DC\DC\DF\DF\E0\E0\E3\E3\E5\E5\E6\E6\E9\E9\EA\EA\EC\EC\EF\EF\F1\F1\F2\F2\F4\F4\F7\F7\F8\F8\FB\FB\FD\FD\FE\FE", align 16
@weak_keys = internal global [16 x [8 x i8]] [[8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\FE\FE\FE\FE\FE\FE\FE\FE", [8 x i8] c"\1F\1F\1F\1F\1F\1F\1F\1F", [8 x i8] c"\E0\E0\E0\E0\E0\E0\E0\E0", [8 x i8] c"\01\FE\01\FE\01\FE\01\FE", [8 x i8] c"\FE\01\FE\01\FE\01\FE\01", [8 x i8] c"\1F\E0\1F\E0\0E\F1\0E\F1", [8 x i8] c"\E0\1F\E0\1F\F1\0E\F1\0E", [8 x i8] c"\01\E0\01\E0\01\F1\01\F1", [8 x i8] c"\E0\01\E0\01\F1\01\F1\01", [8 x i8] c"\1F\FE\1F\FE\0E\FE\0E\FE", [8 x i8] c"\FE\1F\FE\1F\FE\0E\FE\0E", [8 x i8] c"\01\1F\01\1F\01\0E\01\0E", [8 x i8] c"\1F\01\1F\01\0E\01\0E\01", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] c"\FE\E0\FE\E0\FE\F1\FE\F1"], align 16
@des_skb = internal unnamed_addr constant [8 x [64 x i64]] [[64 x i64] [i64 0, i64 16, i64 536870912, i64 536870928, i64 65536, i64 65552, i64 536936448, i64 536936464, i64 2048, i64 2064, i64 536872960, i64 536872976, i64 67584, i64 67600, i64 536938496, i64 536938512, i64 32, i64 48, i64 536870944, i64 536870960, i64 65568, i64 65584, i64 536936480, i64 536936496, i64 2080, i64 2096, i64 536872992, i64 536873008, i64 67616, i64 67632, i64 536938528, i64 536938544, i64 524288, i64 524304, i64 537395200, i64 537395216, i64 589824, i64 589840, i64 537460736, i64 537460752, i64 526336, i64 526352, i64 537397248, i64 537397264, i64 591872, i64 591888, i64 537462784, i64 537462800, i64 524320, i64 524336, i64 537395232, i64 537395248, i64 589856, i64 589872, i64 537460768, i64 537460784, i64 526368, i64 526384, i64 537397280, i64 537397296, i64 591904, i64 591920, i64 537462816, i64 537462832], [64 x i64] [i64 0, i64 33554432, i64 8192, i64 33562624, i64 2097152, i64 35651584, i64 2105344, i64 35659776, i64 4, i64 33554436, i64 8196, i64 33562628, i64 2097156, i64 35651588, i64 2105348, i64 35659780, i64 1024, i64 33555456, i64 9216, i64 33563648, i64 2098176, i64 35652608, i64 2106368, i64 35660800, i64 1028, i64 33555460, i64 9220, i64 33563652, i64 2098180, i64 35652612, i64 2106372, i64 35660804, i64 268435456, i64 301989888, i64 268443648, i64 301998080, i64 270532608, i64 304087040, i64 270540800, i64 304095232, i64 268435460, i64 301989892, i64 268443652, i64 301998084, i64 270532612, i64 304087044, i64 270540804, i64 304095236, i64 268436480, i64 301990912, i64 268444672, i64 301999104, i64 270533632, i64 304088064, i64 270541824, i64 304096256, i64 268436484, i64 301990916, i64 268444676, i64 301999108, i64 270533636, i64 304088068, i64 270541828, i64 304096260], [64 x i64] [i64 0, i64 1, i64 262144, i64 262145, i64 16777216, i64 16777217, i64 17039360, i64 17039361, i64 2, i64 3, i64 262146, i64 262147, i64 16777218, i64 16777219, i64 17039362, i64 17039363, i64 512, i64 513, i64 262656, i64 262657, i64 16777728, i64 16777729, i64 17039872, i64 17039873, i64 514, i64 515, i64 262658, i64 262659, i64 16777730, i64 16777731, i64 17039874, i64 17039875, i64 134217728, i64 134217729, i64 134479872, i64 134479873, i64 150994944, i64 150994945, i64 151257088, i64 151257089, i64 134217730, i64 134217731, i64 134479874, i64 134479875, i64 150994946, i64 150994947, i64 151257090, i64 151257091, i64 134218240, i64 134218241, i64 134480384, i64 134480385, i64 150995456, i64 150995457, i64 151257600, i64 151257601, i64 134218242, i64 134218243, i64 134480386, i64 134480387, i64 150995458, i64 150995459, i64 151257602, i64 151257603], [64 x i64] [i64 0, i64 1048576, i64 256, i64 1048832, i64 8, i64 1048584, i64 264, i64 1048840, i64 4096, i64 1052672, i64 4352, i64 1052928, i64 4104, i64 1052680, i64 4360, i64 1052936, i64 67108864, i64 68157440, i64 67109120, i64 68157696, i64 67108872, i64 68157448, i64 67109128, i64 68157704, i64 67112960, i64 68161536, i64 67113216, i64 68161792, i64 67112968, i64 68161544, i64 67113224, i64 68161800, i64 131072, i64 1179648, i64 131328, i64 1179904, i64 131080, i64 1179656, i64 131336, i64 1179912, i64 135168, i64 1183744, i64 135424, i64 1184000, i64 135176, i64 1183752, i64 135432, i64 1184008, i64 67239936, i64 68288512, i64 67240192, i64 68288768, i64 67239944, i64 68288520, i64 67240200, i64 68288776, i64 67244032, i64 68292608, i64 67244288, i64 68292864, i64 67244040, i64 68292616, i64 67244296, i64 68292872], [64 x i64] [i64 0, i64 268435456, i64 65536, i64 268500992, i64 4, i64 268435460, i64 65540, i64 268500996, i64 536870912, i64 805306368, i64 536936448, i64 805371904, i64 536870916, i64 805306372, i64 536936452, i64 805371908, i64 1048576, i64 269484032, i64 1114112, i64 269549568, i64 1048580, i64 269484036, i64 1114116, i64 269549572, i64 537919488, i64 806354944, i64 537985024, i64 806420480, i64 537919492, i64 806354948, i64 537985028, i64 806420484, i64 4096, i64 268439552, i64 69632, i64 268505088, i64 4100, i64 268439556, i64 69636, i64 268505092, i64 536875008, i64 805310464, i64 536940544, i64 805376000, i64 536875012, i64 805310468, i64 536940548, i64 805376004, i64 1052672, i64 269488128, i64 1118208, i64 269553664, i64 1052676, i64 269488132, i64 1118212, i64 269553668, i64 537923584, i64 806359040, i64 537989120, i64 806424576, i64 537923588, i64 806359044, i64 537989124, i64 806424580], [64 x i64] [i64 0, i64 134217728, i64 8, i64 134217736, i64 1024, i64 134218752, i64 1032, i64 134218760, i64 131072, i64 134348800, i64 131080, i64 134348808, i64 132096, i64 134349824, i64 132104, i64 134349832, i64 1, i64 134217729, i64 9, i64 134217737, i64 1025, i64 134218753, i64 1033, i64 134218761, i64 131073, i64 134348801, i64 131081, i64 134348809, i64 132097, i64 134349825, i64 132105, i64 134349833, i64 33554432, i64 167772160, i64 33554440, i64 167772168, i64 33555456, i64 167773184, i64 33555464, i64 167773192, i64 33685504, i64 167903232, i64 33685512, i64 167903240, i64 33686528, i64 167904256, i64 33686536, i64 167904264, i64 33554433, i64 167772161, i64 33554441, i64 167772169, i64 33555457, i64 167773185, i64 33555465, i64 167773193, i64 33685505, i64 167903233, i64 33685513, i64 167903241, i64 33686529, i64 167904257, i64 33686537, i64 167904265], [64 x i64] [i64 0, i64 256, i64 524288, i64 524544, i64 16777216, i64 16777472, i64 17301504, i64 17301760, i64 16, i64 272, i64 524304, i64 524560, i64 16777232, i64 16777488, i64 17301520, i64 17301776, i64 2097152, i64 2097408, i64 2621440, i64 2621696, i64 18874368, i64 18874624, i64 19398656, i64 19398912, i64 2097168, i64 2097424, i64 2621456, i64 2621712, i64 18874384, i64 18874640, i64 19398672, i64 19398928, i64 512, i64 768, i64 524800, i64 525056, i64 16777728, i64 16777984, i64 17302016, i64 17302272, i64 528, i64 784, i64 524816, i64 525072, i64 16777744, i64 16778000, i64 17302032, i64 17302288, i64 2097664, i64 2097920, i64 2621952, i64 2622208, i64 18874880, i64 18875136, i64 19399168, i64 19399424, i64 2097680, i64 2097936, i64 2621968, i64 2622224, i64 18874896, i64 18875152, i64 19399184, i64 19399440], [64 x i64] [i64 0, i64 67108864, i64 262144, i64 67371008, i64 2, i64 67108866, i64 262146, i64 67371010, i64 8192, i64 67117056, i64 270336, i64 67379200, i64 8194, i64 67117058, i64 270338, i64 67379202, i64 32, i64 67108896, i64 262176, i64 67371040, i64 34, i64 67108898, i64 262178, i64 67371042, i64 8224, i64 67117088, i64 270368, i64 67379232, i64 8226, i64 67117090, i64 270370, i64 67379234, i64 2048, i64 67110912, i64 264192, i64 67373056, i64 2050, i64 67110914, i64 264194, i64 67373058, i64 10240, i64 67119104, i64 272384, i64 67381248, i64 10242, i64 67119106, i64 272386, i64 67381250, i64 2080, i64 67110944, i64 264224, i64 67373088, i64 2082, i64 67110946, i64 264226, i64 67373090, i64 10272, i64 67119136, i64 272416, i64 67381280, i64 10274, i64 67119138, i64 272418, i64 67381282]], align 16

; Function Attrs: nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @des_encrypt(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) #0 {
  %4 = load i64, ptr %0, align 8, !tbaa !7
  %5 = getelementptr inbounds i64, ptr %0, i64 1
  %6 = load i64, ptr %5, align 8, !tbaa !7
  %7 = lshr i64 %6, 4
  %8 = xor i64 %7, %4
  %9 = and i64 %8, 252645135
  %10 = xor i64 %9, %4
  %11 = shl nuw nsw i64 %9, 4
  %12 = xor i64 %11, %6
  %13 = lshr i64 %10, 16
  %14 = xor i64 %13, %12
  %15 = and i64 %14, 65535
  %16 = xor i64 %15, %12
  %17 = shl nuw nsw i64 %15, 16
  %18 = xor i64 %17, %10
  %19 = lshr i64 %16, 2
  %20 = xor i64 %19, %18
  %21 = and i64 %20, 858993459
  %22 = xor i64 %21, %18
  %23 = shl nuw nsw i64 %21, 2
  %24 = xor i64 %23, %16
  %25 = lshr i64 %22, 8
  %26 = xor i64 %25, %24
  %27 = and i64 %26, 16711935
  %28 = xor i64 %27, %24
  %29 = shl nuw nsw i64 %27, 8
  %30 = xor i64 %29, %22
  %31 = lshr i64 %28, 1
  %32 = xor i64 %31, %30
  %33 = and i64 %32, 1431655765
  %34 = xor i64 %33, %30
  %35 = shl nuw nsw i64 %33, 1
  %36 = xor i64 %35, %28
  %37 = lshr i64 %34, 29
  %38 = shl i64 %34, 3
  %39 = add i64 %37, %38
  %40 = and i64 %39, 4294967295
  %41 = lshr i64 %36, 29
  %42 = shl i64 %36, 3
  %43 = add i64 %41, %42
  %44 = and i64 %43, 4294967295
  %45 = icmp eq i32 %2, 0
  br i1 %45, label %255, label %46

46:                                               ; preds = %46, %3
  %47 = phi i64 [ %253, %46 ], [ 0, %3 ]
  %48 = phi i64 [ %201, %46 ], [ %44, %3 ]
  %49 = phi i64 [ %252, %46 ], [ %40, %3 ]
  %50 = getelementptr inbounds i64, ptr %1, i64 %47
  %51 = load i64, ptr %50, align 8, !tbaa !7
  %52 = xor i64 %51, %49
  %53 = or i64 %47, 1
  %54 = getelementptr inbounds i64, ptr %1, i64 %53
  %55 = load i64, ptr %54, align 8, !tbaa !7
  %56 = xor i64 %55, %49
  %57 = lshr i64 %56, 4
  %58 = shl i64 %56, 28
  %59 = add i64 %57, %58
  %60 = lshr i64 %52, 2
  %61 = and i64 %60, 63
  %62 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !7
  %64 = lshr i64 %52, 10
  %65 = and i64 %64, 63
  %66 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !7
  %68 = lshr i64 %52, 18
  %69 = and i64 %68, 63
  %70 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !7
  %72 = lshr i64 %52, 26
  %73 = and i64 %72, 63
  %74 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %73
  %75 = load i64, ptr %74, align 8, !tbaa !7
  %76 = lshr i64 %56, 6
  %77 = and i64 %76, 63
  %78 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !7
  %80 = lshr i64 %56, 14
  %81 = and i64 %80, 63
  %82 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %81
  %83 = load i64, ptr %82, align 8, !tbaa !7
  %84 = lshr i64 %56, 22
  %85 = and i64 %84, 63
  %86 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !7
  %88 = lshr i64 %59, 26
  %89 = and i64 %88, 63
  %90 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !7
  %92 = xor i64 %63, %48
  %93 = xor i64 %92, %67
  %94 = xor i64 %93, %71
  %95 = xor i64 %94, %75
  %96 = xor i64 %95, %79
  %97 = xor i64 %96, %83
  %98 = xor i64 %97, %87
  %99 = xor i64 %98, %91
  %100 = or i64 %47, 2
  %101 = getelementptr inbounds i64, ptr %1, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !7
  %103 = xor i64 %99, %102
  %104 = or i64 %47, 3
  %105 = getelementptr inbounds i64, ptr %1, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !7
  %107 = xor i64 %99, %106
  %108 = lshr i64 %107, 4
  %109 = shl i64 %107, 28
  %110 = add i64 %108, %109
  %111 = lshr i64 %103, 2
  %112 = and i64 %111, 63
  %113 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %112
  %114 = load i64, ptr %113, align 8, !tbaa !7
  %115 = lshr i64 %103, 10
  %116 = and i64 %115, 63
  %117 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !7
  %119 = lshr i64 %103, 18
  %120 = and i64 %119, 63
  %121 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %120
  %122 = load i64, ptr %121, align 8, !tbaa !7
  %123 = lshr i64 %103, 26
  %124 = and i64 %123, 63
  %125 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %124
  %126 = load i64, ptr %125, align 8, !tbaa !7
  %127 = lshr i64 %107, 6
  %128 = and i64 %127, 63
  %129 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %128
  %130 = load i64, ptr %129, align 8, !tbaa !7
  %131 = lshr i64 %107, 14
  %132 = and i64 %131, 63
  %133 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %132
  %134 = load i64, ptr %133, align 8, !tbaa !7
  %135 = lshr i64 %107, 22
  %136 = and i64 %135, 63
  %137 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %136
  %138 = load i64, ptr %137, align 8, !tbaa !7
  %139 = lshr i64 %110, 26
  %140 = and i64 %139, 63
  %141 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !7
  %143 = xor i64 %114, %118
  %144 = xor i64 %143, %122
  %145 = xor i64 %144, %126
  %146 = xor i64 %145, %130
  %147 = xor i64 %146, %134
  %148 = xor i64 %147, %138
  %149 = xor i64 %148, %142
  %150 = xor i64 %149, %49
  %151 = or i64 %47, 4
  %152 = getelementptr inbounds i64, ptr %1, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !7
  %154 = xor i64 %150, %153
  %155 = or i64 %47, 5
  %156 = getelementptr inbounds i64, ptr %1, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !7
  %158 = xor i64 %150, %157
  %159 = lshr i64 %158, 4
  %160 = shl i64 %158, 28
  %161 = add i64 %159, %160
  %162 = lshr i64 %154, 2
  %163 = and i64 %162, 63
  %164 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %163
  %165 = load i64, ptr %164, align 8, !tbaa !7
  %166 = lshr i64 %154, 10
  %167 = and i64 %166, 63
  %168 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %167
  %169 = load i64, ptr %168, align 8, !tbaa !7
  %170 = lshr i64 %154, 18
  %171 = and i64 %170, 63
  %172 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %171
  %173 = load i64, ptr %172, align 8, !tbaa !7
  %174 = lshr i64 %154, 26
  %175 = and i64 %174, 63
  %176 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !7
  %178 = lshr i64 %158, 6
  %179 = and i64 %178, 63
  %180 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %179
  %181 = load i64, ptr %180, align 8, !tbaa !7
  %182 = lshr i64 %158, 14
  %183 = and i64 %182, 63
  %184 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %183
  %185 = load i64, ptr %184, align 8, !tbaa !7
  %186 = lshr i64 %158, 22
  %187 = and i64 %186, 63
  %188 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %187
  %189 = load i64, ptr %188, align 8, !tbaa !7
  %190 = lshr i64 %161, 26
  %191 = and i64 %190, 63
  %192 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %191
  %193 = load i64, ptr %192, align 8, !tbaa !7
  %194 = xor i64 %165, %169
  %195 = xor i64 %194, %173
  %196 = xor i64 %195, %177
  %197 = xor i64 %196, %181
  %198 = xor i64 %197, %185
  %199 = xor i64 %198, %189
  %200 = xor i64 %199, %193
  %201 = xor i64 %200, %99
  %202 = or i64 %47, 6
  %203 = getelementptr inbounds i64, ptr %1, i64 %202
  %204 = load i64, ptr %203, align 8, !tbaa !7
  %205 = xor i64 %201, %204
  %206 = or i64 %47, 7
  %207 = getelementptr inbounds i64, ptr %1, i64 %206
  %208 = load i64, ptr %207, align 8, !tbaa !7
  %209 = xor i64 %201, %208
  %210 = lshr i64 %209, 4
  %211 = shl i64 %209, 28
  %212 = add i64 %210, %211
  %213 = lshr i64 %205, 2
  %214 = and i64 %213, 63
  %215 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !7
  %217 = lshr i64 %205, 10
  %218 = and i64 %217, 63
  %219 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %218
  %220 = load i64, ptr %219, align 8, !tbaa !7
  %221 = lshr i64 %205, 18
  %222 = and i64 %221, 63
  %223 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %222
  %224 = load i64, ptr %223, align 8, !tbaa !7
  %225 = lshr i64 %205, 26
  %226 = and i64 %225, 63
  %227 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %226
  %228 = load i64, ptr %227, align 8, !tbaa !7
  %229 = lshr i64 %209, 6
  %230 = and i64 %229, 63
  %231 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !7
  %233 = lshr i64 %209, 14
  %234 = and i64 %233, 63
  %235 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %234
  %236 = load i64, ptr %235, align 8, !tbaa !7
  %237 = lshr i64 %209, 22
  %238 = and i64 %237, 63
  %239 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %238
  %240 = load i64, ptr %239, align 8, !tbaa !7
  %241 = lshr i64 %212, 26
  %242 = and i64 %241, 63
  %243 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %242
  %244 = load i64, ptr %243, align 8, !tbaa !7
  %245 = xor i64 %216, %220
  %246 = xor i64 %245, %224
  %247 = xor i64 %246, %228
  %248 = xor i64 %247, %232
  %249 = xor i64 %248, %236
  %250 = xor i64 %249, %240
  %251 = xor i64 %250, %244
  %252 = xor i64 %251, %150
  %253 = add nuw nsw i64 %47, 8
  %254 = icmp ult i64 %47, 24
  br i1 %254, label %46, label %464, !llvm.loop !11

255:                                              ; preds = %255, %3
  %256 = phi i64 [ %462, %255 ], [ 30, %3 ]
  %257 = phi i64 [ %410, %255 ], [ %44, %3 ]
  %258 = phi i64 [ %461, %255 ], [ %40, %3 ]
  %259 = getelementptr inbounds i64, ptr %1, i64 %256
  %260 = load i64, ptr %259, align 8, !tbaa !7
  %261 = xor i64 %260, %258
  %262 = or i64 %256, 1
  %263 = getelementptr inbounds i64, ptr %1, i64 %262
  %264 = load i64, ptr %263, align 8, !tbaa !7
  %265 = xor i64 %264, %258
  %266 = lshr i64 %265, 4
  %267 = shl i64 %265, 28
  %268 = add i64 %266, %267
  %269 = lshr i64 %261, 2
  %270 = and i64 %269, 63
  %271 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %270
  %272 = load i64, ptr %271, align 8, !tbaa !7
  %273 = lshr i64 %261, 10
  %274 = and i64 %273, 63
  %275 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %274
  %276 = load i64, ptr %275, align 8, !tbaa !7
  %277 = lshr i64 %261, 18
  %278 = and i64 %277, 63
  %279 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %278
  %280 = load i64, ptr %279, align 8, !tbaa !7
  %281 = lshr i64 %261, 26
  %282 = and i64 %281, 63
  %283 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !7
  %285 = lshr i64 %265, 6
  %286 = and i64 %285, 63
  %287 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %286
  %288 = load i64, ptr %287, align 8, !tbaa !7
  %289 = lshr i64 %265, 14
  %290 = and i64 %289, 63
  %291 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !7
  %293 = lshr i64 %265, 22
  %294 = and i64 %293, 63
  %295 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !7
  %297 = lshr i64 %268, 26
  %298 = and i64 %297, 63
  %299 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !7
  %301 = xor i64 %272, %257
  %302 = xor i64 %301, %276
  %303 = xor i64 %302, %280
  %304 = xor i64 %303, %284
  %305 = xor i64 %304, %288
  %306 = xor i64 %305, %292
  %307 = xor i64 %306, %296
  %308 = xor i64 %307, %300
  %309 = add nsw i64 %256, -2
  %310 = getelementptr inbounds i64, ptr %1, i64 %309
  %311 = load i64, ptr %310, align 8, !tbaa !7
  %312 = xor i64 %308, %311
  %313 = add nsw i64 %256, -1
  %314 = getelementptr inbounds i64, ptr %1, i64 %313
  %315 = load i64, ptr %314, align 8, !tbaa !7
  %316 = xor i64 %308, %315
  %317 = lshr i64 %316, 4
  %318 = shl i64 %316, 28
  %319 = add i64 %317, %318
  %320 = lshr i64 %312, 2
  %321 = and i64 %320, 63
  %322 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %321
  %323 = load i64, ptr %322, align 8, !tbaa !7
  %324 = lshr i64 %312, 10
  %325 = and i64 %324, 63
  %326 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !7
  %328 = lshr i64 %312, 18
  %329 = and i64 %328, 63
  %330 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %329
  %331 = load i64, ptr %330, align 8, !tbaa !7
  %332 = lshr i64 %312, 26
  %333 = and i64 %332, 63
  %334 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !7
  %336 = lshr i64 %316, 6
  %337 = and i64 %336, 63
  %338 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %337
  %339 = load i64, ptr %338, align 8, !tbaa !7
  %340 = lshr i64 %316, 14
  %341 = and i64 %340, 63
  %342 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !7
  %344 = lshr i64 %316, 22
  %345 = and i64 %344, 63
  %346 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !7
  %348 = lshr i64 %319, 26
  %349 = and i64 %348, 63
  %350 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !7
  %352 = xor i64 %323, %327
  %353 = xor i64 %352, %331
  %354 = xor i64 %353, %335
  %355 = xor i64 %354, %339
  %356 = xor i64 %355, %343
  %357 = xor i64 %356, %347
  %358 = xor i64 %357, %351
  %359 = xor i64 %358, %258
  %360 = add nsw i64 %256, -4
  %361 = getelementptr inbounds i64, ptr %1, i64 %360
  %362 = load i64, ptr %361, align 8, !tbaa !7
  %363 = xor i64 %359, %362
  %364 = add nsw i64 %256, -3
  %365 = getelementptr inbounds i64, ptr %1, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !7
  %367 = xor i64 %359, %366
  %368 = lshr i64 %367, 4
  %369 = shl i64 %367, 28
  %370 = add i64 %368, %369
  %371 = lshr i64 %363, 2
  %372 = and i64 %371, 63
  %373 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %372
  %374 = load i64, ptr %373, align 8, !tbaa !7
  %375 = lshr i64 %363, 10
  %376 = and i64 %375, 63
  %377 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %376
  %378 = load i64, ptr %377, align 8, !tbaa !7
  %379 = lshr i64 %363, 18
  %380 = and i64 %379, 63
  %381 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !7
  %383 = lshr i64 %363, 26
  %384 = and i64 %383, 63
  %385 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %384
  %386 = load i64, ptr %385, align 8, !tbaa !7
  %387 = lshr i64 %367, 6
  %388 = and i64 %387, 63
  %389 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %388
  %390 = load i64, ptr %389, align 8, !tbaa !7
  %391 = lshr i64 %367, 14
  %392 = and i64 %391, 63
  %393 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !7
  %395 = lshr i64 %367, 22
  %396 = and i64 %395, 63
  %397 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !7
  %399 = lshr i64 %370, 26
  %400 = and i64 %399, 63
  %401 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !7
  %403 = xor i64 %374, %378
  %404 = xor i64 %403, %382
  %405 = xor i64 %404, %386
  %406 = xor i64 %405, %390
  %407 = xor i64 %406, %394
  %408 = xor i64 %407, %398
  %409 = xor i64 %408, %402
  %410 = xor i64 %409, %308
  %411 = add nsw i64 %256, -6
  %412 = getelementptr inbounds i64, ptr %1, i64 %411
  %413 = load i64, ptr %412, align 8, !tbaa !7
  %414 = xor i64 %410, %413
  %415 = add nsw i64 %256, -5
  %416 = getelementptr inbounds i64, ptr %1, i64 %415
  %417 = load i64, ptr %416, align 8, !tbaa !7
  %418 = xor i64 %410, %417
  %419 = lshr i64 %418, 4
  %420 = shl i64 %418, 28
  %421 = add i64 %419, %420
  %422 = lshr i64 %414, 2
  %423 = and i64 %422, 63
  %424 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %423
  %425 = load i64, ptr %424, align 8, !tbaa !7
  %426 = lshr i64 %414, 10
  %427 = and i64 %426, 63
  %428 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %427
  %429 = load i64, ptr %428, align 8, !tbaa !7
  %430 = lshr i64 %414, 18
  %431 = and i64 %430, 63
  %432 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %431
  %433 = load i64, ptr %432, align 8, !tbaa !7
  %434 = lshr i64 %414, 26
  %435 = and i64 %434, 63
  %436 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !7
  %438 = lshr i64 %418, 6
  %439 = and i64 %438, 63
  %440 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %439
  %441 = load i64, ptr %440, align 8, !tbaa !7
  %442 = lshr i64 %418, 14
  %443 = and i64 %442, 63
  %444 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %443
  %445 = load i64, ptr %444, align 8, !tbaa !7
  %446 = lshr i64 %418, 22
  %447 = and i64 %446, 63
  %448 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %447
  %449 = load i64, ptr %448, align 8, !tbaa !7
  %450 = lshr i64 %421, 26
  %451 = and i64 %450, 63
  %452 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %451
  %453 = load i64, ptr %452, align 8, !tbaa !7
  %454 = xor i64 %425, %429
  %455 = xor i64 %454, %433
  %456 = xor i64 %455, %437
  %457 = xor i64 %456, %441
  %458 = xor i64 %457, %445
  %459 = xor i64 %458, %449
  %460 = xor i64 %459, %453
  %461 = xor i64 %460, %359
  %462 = add nsw i64 %256, -8
  %463 = icmp ugt i64 %256, 8
  br i1 %463, label %255, label %464, !llvm.loop !13

464:                                              ; preds = %255, %46
  %465 = phi i64 [ %461, %255 ], [ %252, %46 ]
  %466 = phi i64 [ %410, %255 ], [ %201, %46 ]
  %467 = lshr i64 %466, 3
  %468 = shl i64 %466, 29
  %469 = add i64 %467, %468
  %470 = and i64 %469, 4294967295
  %471 = lshr i64 %465, 3
  %472 = shl i64 %465, 29
  %473 = add i64 %471, %472
  %474 = and i64 %473, 4294967295
  %475 = lshr i64 %473, 1
  %476 = xor i64 %475, %469
  %477 = and i64 %476, 1431655765
  %478 = xor i64 %477, %470
  %479 = shl nuw nsw i64 %477, 1
  %480 = xor i64 %479, %474
  %481 = lshr i64 %478, 8
  %482 = xor i64 %481, %480
  %483 = and i64 %482, 16711935
  %484 = xor i64 %483, %480
  %485 = shl nuw nsw i64 %483, 8
  %486 = xor i64 %485, %478
  %487 = lshr i64 %484, 2
  %488 = xor i64 %487, %486
  %489 = and i64 %488, 858993459
  %490 = xor i64 %489, %486
  %491 = shl nuw nsw i64 %489, 2
  %492 = xor i64 %491, %484
  %493 = lshr i64 %490, 16
  %494 = and i64 %492, 65535
  %495 = xor i64 %494, %493
  %496 = xor i64 %495, %492
  %497 = shl nuw nsw i64 %495, 16
  %498 = xor i64 %497, %490
  %499 = lshr i64 %496, 4
  %500 = xor i64 %499, %498
  %501 = and i64 %500, 252645135
  %502 = xor i64 %501, %498
  %503 = shl nuw nsw i64 %501, 4
  %504 = xor i64 %503, %496
  store i64 %502, ptr %0, align 8, !tbaa !7
  store i64 %504, ptr %5, align 8, !tbaa !7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @driver(i32 noundef %0) #1 {
  %2 = alloca [34 x [8 x i8]], align 16
  %3 = alloca [34 x [16 x %struct.des_ks_struct]], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #10
  call void @llvm.lifetime.start.p0(i64 8704, ptr nonnull %3) #10
  br label %7

4:                                                ; preds = %16
  %5 = icmp sgt i32 %0, 0
  %6 = zext i32 %0 to i64
  br label %19

7:                                                ; preds = %16, %1
  %8 = phi i64 [ 0, %1 ], [ %17, %16 ]
  %9 = getelementptr inbounds [34 x [8 x i8]], ptr @key_data, i64 0, i64 %8
  %10 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], ptr %3, i64 0, i64 %8
  %11 = call i32 @des_key_sched(ptr noundef nonnull %9, ptr noundef nonnull %10) #11
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %16, label %13

13:                                               ; preds = %7
  %.lcssa = phi i64 [ %8, %7 ]
  %14 = trunc i64 %.lcssa to i32
  %15 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str, i32 noundef %14) #12
  call void @exit(i32 noundef -1) #13
  unreachable

16:                                               ; preds = %7
  %17 = add nuw nsw i64 %8, 1
  %18 = icmp eq i64 %17, 34
  br i1 %18, label %4, label %7, !llvm.loop !14

19:                                               ; preds = %28, %4
  %20 = phi i32 [ 0, %4 ], [ %29, %28 ]
  br i1 %5, label %21, label %28

21:                                               ; preds = %21, %19
  %22 = phi i64 [ %26, %21 ], [ 0, %19 ]
  %23 = getelementptr inbounds [34 x [8 x i8]], ptr @plain_data, i64 0, i64 %22
  %24 = getelementptr inbounds [34 x [8 x i8]], ptr %2, i64 0, i64 %22
  %25 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], ptr %3, i64 0, i64 %22
  call void @des_ecb_encrypt(ptr noundef nonnull %23, ptr noundef nonnull %24, ptr noundef nonnull %25, i32 noundef 1) #11
  %26 = add nuw nsw i64 %22, 1
  %27 = icmp eq i64 %26, %6
  br i1 %27, label %28, label %21, !llvm.loop !15

28:                                               ; preds = %21, %19
  %29 = add nuw nsw i32 %20, 1
  %30 = icmp eq i32 %29, 1000000
  br i1 %30, label %31, label %19, !llvm.loop !16

31:                                               ; preds = %28
  %32 = shl nsw i32 %0, 3
  %33 = sext i32 %32 to i64
  %34 = call i32 @bcmp(ptr nonnull @cipher_data, ptr nonnull %2, i64 %33)
  %35 = icmp eq i32 %34, 0
  %36 = select i1 %35, ptr @str, ptr @str.4
  %37 = call i32 @puts(ptr nonnull dereferenceable(1) %36)
  call void @llvm.lifetime.end.p0(i64 8704, ptr nonnull %3) #10
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #4

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #7 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !17
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %5) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !17
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #14
  %11 = icmp sgt i32 %10, 34
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !17
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %13) #12
  tail call void @exit(i32 noundef -1) #13
  unreachable

15:                                               ; preds = %7
  tail call void @driver(i32 noundef %10) #12
  tail call void @exit(i32 noundef 0) #13
  unreachable
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal void @des_ecb_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) #1 {
  %5 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #10
  %6 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  %7 = load <2 x i32>, ptr %0, align 1
  %8 = zext <2 x i32> %7 to <2 x i64>
  store <2 x i64> %8, ptr %5, align 16, !tbaa !7
  call void @des_encrypt(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3) #11
  %9 = load i64, ptr %5, align 16, !tbaa !7
  %10 = trunc i64 %9 to i8
  %11 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %10, ptr %1, align 1, !tbaa !19
  %12 = lshr i64 %9, 8
  %13 = trunc i64 %12 to i8
  %14 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %13, ptr %11, align 1, !tbaa !19
  %15 = lshr i64 %9, 16
  %16 = trunc i64 %15 to i8
  %17 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %16, ptr %14, align 1, !tbaa !19
  %18 = lshr i64 %9, 24
  %19 = trunc i64 %18 to i8
  %20 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %19, ptr %17, align 1, !tbaa !19
  %21 = load i64, ptr %6, align 8, !tbaa !7
  %22 = trunc i64 %21 to i8
  %23 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %22, ptr %20, align 1, !tbaa !19
  %24 = lshr i64 %21, 8
  %25 = trunc i64 %24 to i8
  %26 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %25, ptr %23, align 1, !tbaa !19
  %27 = lshr i64 %21, 16
  %28 = trunc i64 %27 to i8
  %29 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %28, ptr %26, align 1, !tbaa !19
  %30 = lshr i64 %21, 24
  %31 = trunc i64 %30 to i8
  store i8 %31, ptr %29, align 1, !tbaa !19
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #10
  ret void
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @des_set_key(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = load i32, ptr @des_check_key, align 4, !tbaa !20
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %24, label %8

5:                                                ; preds = %8
  %6 = add nuw nsw i64 %9, 1
  %7 = icmp eq i64 %6, 8
  br i1 %7, label %19, label %8, !llvm.loop !22

8:                                                ; preds = %5, %2
  %9 = phi i64 [ %6, %5 ], [ 0, %2 ]
  %10 = getelementptr inbounds [8 x i8], ptr %0, i64 0, i64 %9
  %11 = load i8, ptr %10, align 1, !tbaa !19
  %12 = zext i8 %11 to i64
  %13 = getelementptr inbounds [256 x i8], ptr @odd_parity, i64 0, i64 %12
  %14 = load i8, ptr %13, align 1, !tbaa !19
  %15 = icmp eq i8 %11, %14
  br i1 %15, label %5, label %187

16:                                               ; preds = %19
  %17 = add nuw nsw i64 %20, 1
  %18 = icmp eq i64 %17, 16
  br i1 %18, label %24, label %19, !llvm.loop !23

19:                                               ; preds = %16, %5
  %20 = phi i64 [ %17, %16 ], [ 0, %5 ]
  %21 = getelementptr inbounds [16 x [8 x i8]], ptr @weak_keys, i64 0, i64 %20
  %22 = tail call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %21, ptr noundef nonnull dereferenceable(8) %0, i64 8)
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %187, label %16

24:                                               ; preds = %16, %2
  %25 = load i16, ptr %0, align 1
  %26 = zext i16 %25 to i64
  %27 = getelementptr inbounds i8, ptr %0, i64 2
  %28 = getelementptr inbounds i8, ptr %0, i64 3
  %29 = load i8, ptr %27, align 1, !tbaa !19
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 16
  %32 = or i64 %31, %26
  %33 = getelementptr inbounds i8, ptr %0, i64 4
  %34 = load i8, ptr %28, align 1, !tbaa !19
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 24
  %37 = or i64 %32, %36
  %38 = load i16, ptr %33, align 1
  %39 = zext i16 %38 to i64
  %40 = getelementptr inbounds i8, ptr %0, i64 6
  %41 = getelementptr inbounds i8, ptr %0, i64 7
  %42 = load i8, ptr %40, align 1, !tbaa !19
  %43 = zext i8 %42 to i64
  %44 = shl nuw nsw i64 %43, 16
  %45 = or i64 %44, %39
  %46 = load i8, ptr %41, align 1, !tbaa !19
  %47 = zext i8 %46 to i64
  %48 = shl nuw nsw i64 %47, 24
  %49 = or i64 %45, %48
  %50 = lshr i64 %49, 4
  %51 = xor i64 %50, %37
  %52 = and i64 %51, 252645135
  %53 = xor i64 %52, %37
  %54 = shl nuw nsw i64 %52, 4
  %55 = xor i64 %54, %49
  %56 = shl nuw nsw i64 %53, 18
  %57 = xor i64 %56, %53
  %58 = and i64 %57, 3435921408
  %59 = lshr exact i64 %58, 18
  %60 = or i64 %59, %58
  %61 = xor i64 %60, %53
  %62 = shl nuw nsw i64 %55, 18
  %63 = xor i64 %62, %55
  %64 = and i64 %63, 3435921408
  %65 = lshr exact i64 %64, 18
  %66 = or i64 %65, %64
  %67 = xor i64 %66, %55
  %68 = lshr i64 %67, 1
  %69 = xor i64 %68, %61
  %70 = and i64 %69, 1431655765
  %71 = xor i64 %70, %61
  %72 = shl nuw nsw i64 %70, 1
  %73 = xor i64 %72, %67
  %74 = lshr i64 %71, 8
  %75 = xor i64 %74, %73
  %76 = and i64 %75, 16711935
  %77 = xor i64 %76, %73
  %78 = shl nuw nsw i64 %76, 8
  %79 = xor i64 %78, %71
  %80 = lshr i64 %77, 1
  %81 = xor i64 %80, %79
  %82 = and i64 %81, 1431655765
  %83 = xor i64 %82, %79
  %84 = shl nuw nsw i64 %82, 1
  %85 = xor i64 %84, %77
  %86 = shl nuw nsw i64 %85, 16
  %87 = and i64 %86, 16711680
  %88 = and i64 %85, 65280
  %89 = lshr i64 %85, 16
  %90 = and i64 %89, 255
  %91 = lshr i64 %83, 4
  %92 = and i64 %91, 251658240
  %93 = or i64 %92, %88
  %94 = or i64 %93, %87
  %95 = or i64 %94, %90
  br label %96

96:                                               ; preds = %96, %24
  %97 = phi i64 [ 0, %24 ], [ %185, %96 ]
  %98 = phi i64 [ %83, %24 ], [ %109, %96 ]
  %99 = phi ptr [ %1, %24 ], [ %184, %96 ]
  %100 = phi i64 [ %95, %24 ], [ %113, %96 ]
  %101 = and i64 %98, 268435455
  %102 = lshr i64 33027, %97
  %103 = and i64 %102, 1
  %104 = icmp eq i64 %103, 0
  %105 = select i1 %104, i64 2, i64 1
  %106 = or i64 %103, 26
  %107 = lshr i64 %101, %105
  %108 = shl nuw nsw i64 %101, %106
  %109 = or i64 %107, %108
  %110 = lshr i64 %100, %105
  %111 = shl nuw nsw i64 %100, %106
  %112 = or i64 %110, %111
  %113 = and i64 %112, 268435455
  %114 = and i64 %107, 63
  %115 = getelementptr inbounds [64 x i64], ptr @des_skb, i64 0, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !7
  %117 = lshr i64 %107, 6
  %118 = and i64 %117, 3
  %119 = lshr i64 %107, 7
  %120 = and i64 %119, 60
  %121 = or i64 %118, %120
  %122 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 1, i64 %121
  %123 = load i64, ptr %122, align 8, !tbaa !7
  %124 = or i64 %123, %116
  %125 = lshr i64 %107, 13
  %126 = and i64 %125, 15
  %127 = lshr i64 %107, 14
  %128 = and i64 %127, 48
  %129 = or i64 %126, %128
  %130 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 2, i64 %129
  %131 = load i64, ptr %130, align 8, !tbaa !7
  %132 = or i64 %124, %131
  %133 = lshr i64 %107, 20
  %134 = and i64 %133, 1
  %135 = lshr i64 %107, 21
  %136 = and i64 %135, 6
  %137 = or i64 %134, %136
  %138 = lshr i64 %109, 22
  %139 = and i64 %138, 56
  %140 = or i64 %137, %139
  %141 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 3, i64 %140
  %142 = load i64, ptr %141, align 8, !tbaa !7
  %143 = or i64 %132, %142
  %144 = and i64 %110, 63
  %145 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 4, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !7
  %147 = lshr i64 %110, 7
  %148 = and i64 %147, 3
  %149 = lshr i64 %110, 8
  %150 = and i64 %149, 60
  %151 = or i64 %148, %150
  %152 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 5, i64 %151
  %153 = load i64, ptr %152, align 8, !tbaa !7
  %154 = or i64 %153, %146
  %155 = lshr i64 %110, 15
  %156 = and i64 %155, 63
  %157 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 6, i64 %156
  %158 = load i64, ptr %157, align 8, !tbaa !7
  %159 = or i64 %154, %158
  %160 = lshr i64 %110, 21
  %161 = and i64 %160, 15
  %162 = lshr i64 %112, 22
  %163 = and i64 %162, 48
  %164 = or i64 %161, %163
  %165 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 7, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !7
  %167 = or i64 %159, %166
  %168 = shl i64 %167, 16
  %169 = and i64 %143, 65535
  %170 = and i64 %168, 4294901760
  %171 = or i64 %170, %169
  %172 = shl nuw nsw i64 %171, 2
  %173 = lshr i64 %170, 30
  %174 = and i64 %172, 4294967292
  %175 = or i64 %174, %173
  %176 = getelementptr inbounds i64, ptr %99, i64 1
  store i64 %175, ptr %99, align 8, !tbaa !7
  %177 = lshr i64 %143, 16
  %178 = and i64 %167, 4294901760
  %179 = or i64 %178, %177
  %180 = shl nuw nsw i64 %179, 6
  %181 = lshr i64 %179, 26
  %182 = and i64 %180, 4294967232
  %183 = or i64 %182, %181
  %184 = getelementptr inbounds i64, ptr %99, i64 2
  store i64 %183, ptr %176, align 8, !tbaa !7
  %185 = add nuw nsw i64 %97, 1
  %186 = icmp eq i64 %185, 16
  br i1 %186, label %187, label %96, !llvm.loop !24

187:                                              ; preds = %96, %19, %8
  %188 = phi i32 [ 0, %96 ], [ -2, %19 ], [ -1, %8 ]
  ret i32 %188
}

; Function Attrs: nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @des_key_sched(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #9 {
  %3 = tail call i32 @des_set_key(ptr noundef %0, ptr noundef %1) #12, !range !25
  ret i32 %3
}

attributes #0 = { nofree norecurse nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind willreturn memory(argmem: read) }
attributes #6 = { nofree nounwind }
attributes #7 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nofree nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { nounwind optsize }
attributes #12 = { optsize }
attributes #13 = { noreturn nounwind optsize }
attributes #14 = { nounwind optsize willreturn memory(read) }

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
!8 = !{!"long", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = distinct !{!14, !12}
!15 = distinct !{!15, !12}
!16 = distinct !{!16, !12}
!17 = !{!18, !18, i64 0}
!18 = !{!"any pointer", !9, i64 0}
!19 = !{!9, !9, i64 0}
!20 = !{!21, !21, i64 0}
!21 = !{!"int", !9, i64 0}
!22 = distinct !{!22, !12}
!23 = distinct !{!23, !12}
!24 = distinct !{!24, !12}
!25 = !{i32 -2, i32 1}
