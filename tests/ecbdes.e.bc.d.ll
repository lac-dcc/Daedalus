; ModuleID = 'ecbdes.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.des_ks_struct = type { %union.anon }
%union.anon = type { [2 x i64] }

@key_data = internal unnamed_addr constant [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@plain_data = internal unnamed_addr constant [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"sY\B2\16>N\DCX", [8 x i8] c"\95\8Enbz\05U{", [8 x i8] c"\F4\03y\AB\9E\0E\C53", [8 x i8] c"\17f\8D\FCr\92S-", [8 x i8] c"\8AZ\E1\F8\1A\B8\F2\DD", [8 x i8] c"\8C\A6M\E9\C1\B1#\A7", [8 x i8] c"\ED9\D9P\FAt\BC\C4", [8 x i8] c"i\0F[\0D\9A&\93\9B", [8 x i8] c"z8\9D\105K\D2q", [8 x i8] c"\86\8E\BBQ\CA\B4Y\9A", [8 x i8] c"qx\87n\01\F1\9B*", [8 x i8] c"\AF7\FBB\1F\8C@\95", [8 x i8] c"\86\A5`\F1\0E\C6\D8[", [8 x i8] c"\0C\D3\DA\02\00!\DC\09", [8 x i8] c"\EAgk,\B7\DB+z", [8 x i8] c"\DF\D6J\81\\\AF\1A\0F", [8 x i8] c"\\Q<\9CH\86\C0\88", [8 x i8] c"\0A*\EE\AE?\F4\ABw", [8 x i8] c"\EF\1B\F0>]\FAWZ", [8 x i8] c"\88\BF\0D\B6\D7\0D\EEV", [8 x i8] c"\A1\F9\91UA\02\0BV", [8 x i8] c"o\BF\1C\AF\CF\FD\05V", [8 x i8] c"/\22\E4\9B\AB|\A1\AC", [8 x i8] c"Zka,\C2l\CEJ", [8 x i8] c"_L\03\8E\D1+.A", [8 x i8] c"c\FA\C0\D04\D9\F7\93", [8 x i8] c"a{:\0C\E8\F0q\00", [8 x i8] c"\DB\95\86\05\F8\C8\C6\06", [8 x i8] c"\ED\BF\D1\C6l)\CC\C7", [8 x i8] c"5UP\B2\15\0E$Q", [8 x i8] c"\CA\AA\AFM\EA\F1\DB\AE", [8 x i8] c"\D5\D4O\F7 h=\0D", [8 x i8] c"*+\B0\08\DF\97\C2\F2"], align 16
@.str.3 = private unnamed_addr constant [147 x i8] c"Driver for Data Encryption Standard benchmark.\0A\0Ausage: %s <size> (where size <= 34)\0A\0Asize is the number of processing node for hardware version \0A\0A\00", align 1
@str = private unnamed_addr constant [21 x i8] c"Encrypted correctly.\00", align 1
@str.4 = private unnamed_addr constant [18 x i8] c"Encryption error.\00", align 1
@des_SPtrans = internal unnamed_addr constant [8 x [64 x i64]] [[64 x i64] [i64 34080768, i64 524288, i64 33554434, i64 34080770, i64 33554432, i64 526338, i64 524290, i64 33554434, i64 526338, i64 34080768, i64 34078720, i64 2050, i64 33556482, i64 33554432, i64 0, i64 524290, i64 524288, i64 2, i64 33556480, i64 526336, i64 34080770, i64 34078720, i64 2050, i64 33556480, i64 2, i64 2048, i64 526336, i64 34078722, i64 2048, i64 33556482, i64 34078722, i64 0, i64 0, i64 34080770, i64 33556480, i64 524290, i64 34080768, i64 524288, i64 2050, i64 33556480, i64 34078722, i64 2048, i64 526336, i64 33554434, i64 526338, i64 2, i64 33554434, i64 34078720, i64 34080770, i64 526336, i64 34078720, i64 33556482, i64 33554432, i64 2050, i64 524290, i64 0, i64 524288, i64 33554432, i64 33556482, i64 34080768, i64 2, i64 34078722, i64 2048, i64 526338], [64 x i64] [i64 1074823184, i64 0, i64 1081344, i64 1074790400, i64 1073741840, i64 32784, i64 1073774592, i64 1081344, i64 32768, i64 1074790416, i64 16, i64 1073774592, i64 1048592, i64 1074823168, i64 1074790400, i64 16, i64 1048576, i64 1073774608, i64 1074790416, i64 32768, i64 1081360, i64 1073741824, i64 0, i64 1048592, i64 1073774608, i64 1081360, i64 1074823168, i64 1073741840, i64 1073741824, i64 1048576, i64 32784, i64 1074823184, i64 1048592, i64 1074823168, i64 1073774592, i64 1081360, i64 1074823184, i64 1048592, i64 1073741840, i64 0, i64 1073741824, i64 32784, i64 1048576, i64 1074790416, i64 32768, i64 1073741824, i64 1081360, i64 1073774608, i64 1074823168, i64 32768, i64 0, i64 1073741840, i64 16, i64 1074823184, i64 1081344, i64 1074790400, i64 1074790416, i64 1048576, i64 32784, i64 1073774592, i64 1073774608, i64 16, i64 1074790400, i64 1081344], [64 x i64] [i64 67108865, i64 67371264, i64 256, i64 67109121, i64 262145, i64 67108864, i64 67109121, i64 262400, i64 67109120, i64 262144, i64 67371008, i64 1, i64 67371265, i64 257, i64 1, i64 67371009, i64 0, i64 262145, i64 67371264, i64 256, i64 257, i64 67371265, i64 262144, i64 67108865, i64 67371009, i64 67109120, i64 262401, i64 67371008, i64 262400, i64 0, i64 67108864, i64 262401, i64 67371264, i64 256, i64 1, i64 262144, i64 257, i64 262145, i64 67371008, i64 67109121, i64 0, i64 67371264, i64 262400, i64 67371009, i64 262145, i64 67108864, i64 67371265, i64 1, i64 262401, i64 67108865, i64 67108864, i64 67371265, i64 262144, i64 67109120, i64 67109121, i64 262400, i64 67109120, i64 0, i64 67371009, i64 257, i64 67108865, i64 262401, i64 256, i64 67371008], [64 x i64] [i64 4198408, i64 268439552, i64 8, i64 272633864, i64 0, i64 272629760, i64 268439560, i64 4194312, i64 272633856, i64 268435464, i64 268435456, i64 4104, i64 268435464, i64 4198408, i64 4194304, i64 268435456, i64 272629768, i64 4198400, i64 4096, i64 8, i64 4198400, i64 268439560, i64 272629760, i64 4096, i64 4104, i64 0, i64 4194312, i64 272633856, i64 268439552, i64 272629768, i64 272633864, i64 4194304, i64 272629768, i64 4104, i64 4194304, i64 268435464, i64 4198400, i64 268439552, i64 8, i64 272629760, i64 268439560, i64 0, i64 4096, i64 4194312, i64 0, i64 272629768, i64 272633856, i64 4096, i64 268435456, i64 272633864, i64 4198408, i64 4194304, i64 272633864, i64 8, i64 268439552, i64 4198408, i64 4194312, i64 4198400, i64 272629760, i64 268439560, i64 4104, i64 268435456, i64 268435464, i64 272633856], [64 x i64] [i64 134217728, i64 65536, i64 1024, i64 134284320, i64 134283296, i64 134218752, i64 66592, i64 134283264, i64 65536, i64 32, i64 134217760, i64 66560, i64 134218784, i64 134283296, i64 134284288, i64 0, i64 66560, i64 134217728, i64 65568, i64 1056, i64 134218752, i64 66592, i64 0, i64 134217760, i64 32, i64 134218784, i64 134284320, i64 65568, i64 134283264, i64 1024, i64 1056, i64 134284288, i64 134284288, i64 134218784, i64 65568, i64 134283264, i64 65536, i64 32, i64 134217760, i64 134218752, i64 134217728, i64 66560, i64 134284320, i64 0, i64 66592, i64 134217728, i64 1024, i64 65568, i64 134218784, i64 1024, i64 0, i64 134284320, i64 134283296, i64 134284288, i64 1056, i64 65536, i64 66560, i64 134283296, i64 134218752, i64 1056, i64 32, i64 66592, i64 134283264, i64 134217760], [64 x i64] [i64 2147483712, i64 2097216, i64 0, i64 2149588992, i64 2097216, i64 8192, i64 2147491904, i64 2097152, i64 8256, i64 2149589056, i64 2105344, i64 2147483648, i64 2147491840, i64 2147483712, i64 2149580800, i64 2105408, i64 2097152, i64 2147491904, i64 2149580864, i64 0, i64 8192, i64 64, i64 2149588992, i64 2149580864, i64 2149589056, i64 2149580800, i64 2147483648, i64 8256, i64 64, i64 2105344, i64 2105408, i64 2147491840, i64 8256, i64 2147483648, i64 2147491840, i64 2105408, i64 2149588992, i64 2097216, i64 0, i64 2147491840, i64 2147483648, i64 8192, i64 2149580864, i64 2097152, i64 2097216, i64 2149589056, i64 2105344, i64 64, i64 2149589056, i64 2105344, i64 2097152, i64 2147491904, i64 2147483712, i64 2149580800, i64 2105408, i64 0, i64 8192, i64 2147483712, i64 2147491904, i64 2149588992, i64 2149580800, i64 8256, i64 64, i64 2149580864], [64 x i64] [i64 16384, i64 512, i64 16777728, i64 16777220, i64 16794116, i64 16388, i64 16896, i64 0, i64 16777216, i64 16777732, i64 516, i64 16793600, i64 4, i64 16794112, i64 16793600, i64 516, i64 16777732, i64 16384, i64 16388, i64 16794116, i64 0, i64 16777728, i64 16777220, i64 16896, i64 16793604, i64 16900, i64 16794112, i64 4, i64 16900, i64 16793604, i64 512, i64 16777216, i64 16900, i64 16793600, i64 16793604, i64 516, i64 16384, i64 512, i64 16777216, i64 16793604, i64 16777732, i64 16900, i64 16896, i64 0, i64 512, i64 16777220, i64 4, i64 16777728, i64 0, i64 16777732, i64 16777728, i64 16896, i64 516, i64 16384, i64 16794116, i64 16777216, i64 16794112, i64 4, i64 16388, i64 16794116, i64 16777220, i64 16794112, i64 16793600, i64 16388], [64 x i64] [i64 545259648, i64 545390592, i64 131200, i64 0, i64 537001984, i64 8388736, i64 545259520, i64 545390720, i64 128, i64 536870912, i64 8519680, i64 131200, i64 8519808, i64 537002112, i64 536871040, i64 545259520, i64 131072, i64 8519808, i64 8388736, i64 537001984, i64 545390720, i64 536871040, i64 0, i64 8519680, i64 536870912, i64 8388608, i64 537002112, i64 545259648, i64 8388608, i64 131072, i64 545390592, i64 128, i64 8388608, i64 131072, i64 536871040, i64 545390720, i64 131200, i64 536870912, i64 0, i64 8519680, i64 545259648, i64 537002112, i64 537001984, i64 8388736, i64 545390592, i64 128, i64 8388736, i64 537001984, i64 545390720, i64 8388608, i64 545259520, i64 536871040, i64 8519680, i64 131200, i64 537002112, i64 545259520, i64 128, i64 545390592, i64 8519808, i64 0, i64 536870912, i64 545259648, i64 131072, i64 8519808]], align 16
@des_skb = internal unnamed_addr constant [8 x [64 x i64]] [[64 x i64] [i64 0, i64 16, i64 536870912, i64 536870928, i64 65536, i64 65552, i64 536936448, i64 536936464, i64 2048, i64 2064, i64 536872960, i64 536872976, i64 67584, i64 67600, i64 536938496, i64 536938512, i64 32, i64 48, i64 536870944, i64 536870960, i64 65568, i64 65584, i64 536936480, i64 536936496, i64 2080, i64 2096, i64 536872992, i64 536873008, i64 67616, i64 67632, i64 536938528, i64 536938544, i64 524288, i64 524304, i64 537395200, i64 537395216, i64 589824, i64 589840, i64 537460736, i64 537460752, i64 526336, i64 526352, i64 537397248, i64 537397264, i64 591872, i64 591888, i64 537462784, i64 537462800, i64 524320, i64 524336, i64 537395232, i64 537395248, i64 589856, i64 589872, i64 537460768, i64 537460784, i64 526368, i64 526384, i64 537397280, i64 537397296, i64 591904, i64 591920, i64 537462816, i64 537462832], [64 x i64] [i64 0, i64 33554432, i64 8192, i64 33562624, i64 2097152, i64 35651584, i64 2105344, i64 35659776, i64 4, i64 33554436, i64 8196, i64 33562628, i64 2097156, i64 35651588, i64 2105348, i64 35659780, i64 1024, i64 33555456, i64 9216, i64 33563648, i64 2098176, i64 35652608, i64 2106368, i64 35660800, i64 1028, i64 33555460, i64 9220, i64 33563652, i64 2098180, i64 35652612, i64 2106372, i64 35660804, i64 268435456, i64 301989888, i64 268443648, i64 301998080, i64 270532608, i64 304087040, i64 270540800, i64 304095232, i64 268435460, i64 301989892, i64 268443652, i64 301998084, i64 270532612, i64 304087044, i64 270540804, i64 304095236, i64 268436480, i64 301990912, i64 268444672, i64 301999104, i64 270533632, i64 304088064, i64 270541824, i64 304096256, i64 268436484, i64 301990916, i64 268444676, i64 301999108, i64 270533636, i64 304088068, i64 270541828, i64 304096260], [64 x i64] [i64 0, i64 1, i64 262144, i64 262145, i64 16777216, i64 16777217, i64 17039360, i64 17039361, i64 2, i64 3, i64 262146, i64 262147, i64 16777218, i64 16777219, i64 17039362, i64 17039363, i64 512, i64 513, i64 262656, i64 262657, i64 16777728, i64 16777729, i64 17039872, i64 17039873, i64 514, i64 515, i64 262658, i64 262659, i64 16777730, i64 16777731, i64 17039874, i64 17039875, i64 134217728, i64 134217729, i64 134479872, i64 134479873, i64 150994944, i64 150994945, i64 151257088, i64 151257089, i64 134217730, i64 134217731, i64 134479874, i64 134479875, i64 150994946, i64 150994947, i64 151257090, i64 151257091, i64 134218240, i64 134218241, i64 134480384, i64 134480385, i64 150995456, i64 150995457, i64 151257600, i64 151257601, i64 134218242, i64 134218243, i64 134480386, i64 134480387, i64 150995458, i64 150995459, i64 151257602, i64 151257603], [64 x i64] [i64 0, i64 1048576, i64 256, i64 1048832, i64 8, i64 1048584, i64 264, i64 1048840, i64 4096, i64 1052672, i64 4352, i64 1052928, i64 4104, i64 1052680, i64 4360, i64 1052936, i64 67108864, i64 68157440, i64 67109120, i64 68157696, i64 67108872, i64 68157448, i64 67109128, i64 68157704, i64 67112960, i64 68161536, i64 67113216, i64 68161792, i64 67112968, i64 68161544, i64 67113224, i64 68161800, i64 131072, i64 1179648, i64 131328, i64 1179904, i64 131080, i64 1179656, i64 131336, i64 1179912, i64 135168, i64 1183744, i64 135424, i64 1184000, i64 135176, i64 1183752, i64 135432, i64 1184008, i64 67239936, i64 68288512, i64 67240192, i64 68288768, i64 67239944, i64 68288520, i64 67240200, i64 68288776, i64 67244032, i64 68292608, i64 67244288, i64 68292864, i64 67244040, i64 68292616, i64 67244296, i64 68292872], [64 x i64] [i64 0, i64 268435456, i64 65536, i64 268500992, i64 4, i64 268435460, i64 65540, i64 268500996, i64 536870912, i64 805306368, i64 536936448, i64 805371904, i64 536870916, i64 805306372, i64 536936452, i64 805371908, i64 1048576, i64 269484032, i64 1114112, i64 269549568, i64 1048580, i64 269484036, i64 1114116, i64 269549572, i64 537919488, i64 806354944, i64 537985024, i64 806420480, i64 537919492, i64 806354948, i64 537985028, i64 806420484, i64 4096, i64 268439552, i64 69632, i64 268505088, i64 4100, i64 268439556, i64 69636, i64 268505092, i64 536875008, i64 805310464, i64 536940544, i64 805376000, i64 536875012, i64 805310468, i64 536940548, i64 805376004, i64 1052672, i64 269488128, i64 1118208, i64 269553664, i64 1052676, i64 269488132, i64 1118212, i64 269553668, i64 537923584, i64 806359040, i64 537989120, i64 806424576, i64 537923588, i64 806359044, i64 537989124, i64 806424580], [64 x i64] [i64 0, i64 134217728, i64 8, i64 134217736, i64 1024, i64 134218752, i64 1032, i64 134218760, i64 131072, i64 134348800, i64 131080, i64 134348808, i64 132096, i64 134349824, i64 132104, i64 134349832, i64 1, i64 134217729, i64 9, i64 134217737, i64 1025, i64 134218753, i64 1033, i64 134218761, i64 131073, i64 134348801, i64 131081, i64 134348809, i64 132097, i64 134349825, i64 132105, i64 134349833, i64 33554432, i64 167772160, i64 33554440, i64 167772168, i64 33555456, i64 167773184, i64 33555464, i64 167773192, i64 33685504, i64 167903232, i64 33685512, i64 167903240, i64 33686528, i64 167904256, i64 33686536, i64 167904264, i64 33554433, i64 167772161, i64 33554441, i64 167772169, i64 33555457, i64 167773185, i64 33555465, i64 167773193, i64 33685505, i64 167903233, i64 33685513, i64 167903241, i64 33686529, i64 167904257, i64 33686537, i64 167904265], [64 x i64] [i64 0, i64 256, i64 524288, i64 524544, i64 16777216, i64 16777472, i64 17301504, i64 17301760, i64 16, i64 272, i64 524304, i64 524560, i64 16777232, i64 16777488, i64 17301520, i64 17301776, i64 2097152, i64 2097408, i64 2621440, i64 2621696, i64 18874368, i64 18874624, i64 19398656, i64 19398912, i64 2097168, i64 2097424, i64 2621456, i64 2621712, i64 18874384, i64 18874640, i64 19398672, i64 19398928, i64 512, i64 768, i64 524800, i64 525056, i64 16777728, i64 16777984, i64 17302016, i64 17302272, i64 528, i64 784, i64 524816, i64 525072, i64 16777744, i64 16778000, i64 17302032, i64 17302288, i64 2097664, i64 2097920, i64 2621952, i64 2622208, i64 18874880, i64 18875136, i64 19399168, i64 19399424, i64 2097680, i64 2097936, i64 2621968, i64 2622224, i64 18874896, i64 18875152, i64 19399184, i64 19399440], [64 x i64] [i64 0, i64 67108864, i64 262144, i64 67371008, i64 2, i64 67108866, i64 262146, i64 67371010, i64 8192, i64 67117056, i64 270336, i64 67379200, i64 8194, i64 67117058, i64 270338, i64 67379202, i64 32, i64 67108896, i64 262176, i64 67371040, i64 34, i64 67108898, i64 262178, i64 67371042, i64 8224, i64 67117088, i64 270368, i64 67379232, i64 8226, i64 67117090, i64 270370, i64 67379234, i64 2048, i64 67110912, i64 264192, i64 67373056, i64 2050, i64 67110914, i64 264194, i64 67373058, i64 10240, i64 67119104, i64 272384, i64 67381248, i64 10242, i64 67119106, i64 272386, i64 67381250, i64 2080, i64 67110944, i64 264224, i64 67373088, i64 2082, i64 67110946, i64 264226, i64 67373090, i64 10272, i64 67119136, i64 272416, i64 67381280, i64 10274, i64 67119138, i64 272418, i64 67381282]], align 16

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = icmp eq i32 %0, 2
  br i1 %3, label %7, label %4

4:                                                ; preds = %2
  %5 = load ptr, ptr %1, align 8, !tbaa !7
  %6 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %5) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

7:                                                ; preds = %2
  %8 = getelementptr inbounds ptr, ptr %1, i64 1
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = tail call i32 @atoi(ptr nocapture noundef %9) #10
  %11 = icmp sgt i32 %10, 34
  br i1 %11, label %12, label %15

12:                                               ; preds = %7
  %13 = load ptr, ptr %1, align 8, !tbaa !7
  %14 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.3, ptr noundef %13) #8
  tail call void @exit(i32 noundef -1) #9
  unreachable

15:                                               ; preds = %7
  tail call fastcc void @driver(i32 noundef %10) #8
  tail call void @exit(i32 noundef 0) #9
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #1

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @atoi(ptr nocapture noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc void @driver(i32 noundef %0) unnamed_addr #4 {
  %2 = alloca [34 x [8 x i8]], align 16
  %3 = alloca [34 x [16 x %struct.des_ks_struct]], align 16
  call void @llvm.lifetime.start.p0(i64 272, ptr nonnull %2) #11
  call void @llvm.lifetime.start.p0(i64 8704, ptr nonnull %3) #11
  br label %7

4:                                                ; preds = %173
  %5 = icmp sgt i32 %0, 0
  %6 = zext i32 %0 to i64
  br label %176

7:                                                ; preds = %173, %1
  %8 = phi i64 [ 0, %1 ], [ %174, %173 ]
  %9 = getelementptr inbounds [34 x [8 x i8]], ptr @key_data, i64 0, i64 %8
  %10 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], ptr %3, i64 0, i64 %8
  %11 = load i16, ptr %9, align 8
  %12 = zext i16 %11 to i64
  %13 = getelementptr inbounds i8, ptr %9, i64 2
  %14 = getelementptr inbounds i8, ptr %9, i64 3
  %15 = load i8, ptr %13, align 2, !tbaa !11
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or i64 %17, %12
  %19 = getelementptr inbounds i8, ptr %9, i64 4
  %20 = load i8, ptr %14, align 1, !tbaa !11
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 24
  %23 = or i64 %18, %22
  %24 = load i16, ptr %19, align 4
  %25 = zext i16 %24 to i64
  %26 = getelementptr inbounds i8, ptr %9, i64 6
  %27 = getelementptr inbounds i8, ptr %9, i64 7
  %28 = load i8, ptr %26, align 2, !tbaa !11
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 16
  %31 = or i64 %30, %25
  %32 = load i8, ptr %27, align 1, !tbaa !11
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 24
  %35 = or i64 %31, %34
  %36 = lshr i64 %35, 4
  %37 = xor i64 %36, %23
  %38 = and i64 %37, 252645135
  %39 = xor i64 %38, %23
  %40 = shl nuw nsw i64 %38, 4
  %41 = xor i64 %40, %35
  %42 = shl nuw nsw i64 %39, 18
  %43 = xor i64 %42, %39
  %44 = and i64 %43, 3435921408
  %45 = lshr exact i64 %44, 18
  %46 = or i64 %45, %44
  %47 = xor i64 %46, %39
  %48 = shl nuw nsw i64 %41, 18
  %49 = xor i64 %48, %41
  %50 = and i64 %49, 3435921408
  %51 = lshr exact i64 %50, 18
  %52 = or i64 %51, %50
  %53 = xor i64 %52, %41
  %54 = lshr i64 %53, 1
  %55 = xor i64 %54, %47
  %56 = and i64 %55, 1431655765
  %57 = xor i64 %56, %47
  %58 = shl nuw nsw i64 %56, 1
  %59 = xor i64 %58, %53
  %60 = lshr i64 %57, 8
  %61 = xor i64 %60, %59
  %62 = and i64 %61, 16711935
  %63 = xor i64 %62, %59
  %64 = shl nuw nsw i64 %62, 8
  %65 = xor i64 %64, %57
  %66 = lshr i64 %63, 1
  %67 = xor i64 %66, %65
  %68 = and i64 %67, 1431655765
  %69 = xor i64 %68, %65
  %70 = shl nuw nsw i64 %68, 1
  %71 = xor i64 %70, %63
  %72 = shl nuw nsw i64 %71, 16
  %73 = and i64 %72, 16711680
  %74 = and i64 %71, 65280
  %75 = lshr i64 %71, 16
  %76 = and i64 %75, 255
  %77 = lshr i64 %69, 4
  %78 = and i64 %77, 251658240
  %79 = or i64 %78, %74
  %80 = or i64 %79, %73
  %81 = or i64 %80, %76
  br label %82

82:                                               ; preds = %82, %7
  %83 = phi i64 [ 0, %7 ], [ %171, %82 ]
  %84 = phi i64 [ %69, %7 ], [ %95, %82 ]
  %85 = phi ptr [ %10, %7 ], [ %170, %82 ]
  %86 = phi i64 [ %81, %7 ], [ %99, %82 ]
  %87 = and i64 %84, 268435455
  %88 = lshr i64 33027, %83
  %89 = and i64 %88, 1
  %90 = icmp eq i64 %89, 0
  %91 = select i1 %90, i64 2, i64 1
  %92 = or i64 %89, 26
  %93 = lshr i64 %87, %91
  %94 = shl nuw nsw i64 %87, %92
  %95 = or i64 %93, %94
  %96 = lshr i64 %86, %91
  %97 = shl nuw nsw i64 %86, %92
  %98 = or i64 %96, %97
  %99 = and i64 %98, 268435455
  %100 = and i64 %93, 63
  %101 = getelementptr inbounds [64 x i64], ptr @des_skb, i64 0, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !12
  %103 = lshr i64 %93, 6
  %104 = and i64 %103, 3
  %105 = lshr i64 %93, 7
  %106 = and i64 %105, 60
  %107 = or i64 %104, %106
  %108 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 1, i64 %107
  %109 = load i64, ptr %108, align 8, !tbaa !12
  %110 = or i64 %109, %102
  %111 = lshr i64 %93, 13
  %112 = and i64 %111, 15
  %113 = lshr i64 %93, 14
  %114 = and i64 %113, 48
  %115 = or i64 %112, %114
  %116 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 2, i64 %115
  %117 = load i64, ptr %116, align 8, !tbaa !12
  %118 = or i64 %110, %117
  %119 = lshr i64 %93, 20
  %120 = and i64 %119, 1
  %121 = lshr i64 %93, 21
  %122 = and i64 %121, 6
  %123 = or i64 %120, %122
  %124 = lshr i64 %95, 22
  %125 = and i64 %124, 56
  %126 = or i64 %123, %125
  %127 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 3, i64 %126
  %128 = load i64, ptr %127, align 8, !tbaa !12
  %129 = or i64 %118, %128
  %130 = and i64 %96, 63
  %131 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 4, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !12
  %133 = lshr i64 %96, 7
  %134 = and i64 %133, 3
  %135 = lshr i64 %96, 8
  %136 = and i64 %135, 60
  %137 = or i64 %134, %136
  %138 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 5, i64 %137
  %139 = load i64, ptr %138, align 8, !tbaa !12
  %140 = or i64 %139, %132
  %141 = lshr i64 %96, 15
  %142 = and i64 %141, 63
  %143 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 6, i64 %142
  %144 = load i64, ptr %143, align 8, !tbaa !12
  %145 = or i64 %140, %144
  %146 = lshr i64 %96, 21
  %147 = and i64 %146, 15
  %148 = lshr i64 %98, 22
  %149 = and i64 %148, 48
  %150 = or i64 %149, %147
  %151 = getelementptr inbounds [8 x [64 x i64]], ptr @des_skb, i64 0, i64 7, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !12
  %153 = or i64 %145, %152
  %154 = shl i64 %153, 16
  %155 = and i64 %129, 65535
  %156 = and i64 %154, 4294901760
  %157 = or i64 %156, %155
  %158 = shl nuw nsw i64 %157, 2
  %159 = lshr i64 %156, 30
  %160 = and i64 %158, 4294967292
  %161 = or i64 %160, %159
  %162 = getelementptr inbounds i64, ptr %85, i64 1
  store i64 %161, ptr %85, align 8, !tbaa !12
  %163 = lshr i64 %129, 16
  %164 = and i64 %153, 4294901760
  %165 = or i64 %164, %163
  %166 = shl nuw nsw i64 %165, 6
  %167 = lshr i64 %165, 26
  %168 = and i64 %166, 4294967232
  %169 = or i64 %168, %167
  %170 = getelementptr inbounds i64, ptr %85, i64 2
  store i64 %169, ptr %162, align 8, !tbaa !12
  %171 = add nuw nsw i64 %83, 1
  %172 = icmp eq i64 %171, 16
  br i1 %172, label %173, label %82, !llvm.loop !14

173:                                              ; preds = %82
  %174 = add nuw nsw i64 %8, 1
  %175 = icmp eq i64 %174, 34
  br i1 %175, label %4, label %7, !llvm.loop !16

176:                                              ; preds = %496, %4
  %177 = phi i32 [ 0, %4 ], [ %497, %496 ]
  br i1 %5, label %178, label %496

178:                                              ; preds = %433, %176
  %179 = phi i64 [ %494, %433 ], [ 0, %176 ]
  %180 = getelementptr inbounds [34 x [8 x i8]], ptr @plain_data, i64 0, i64 %179
  %181 = getelementptr inbounds [34 x [16 x %struct.des_ks_struct]], ptr %3, i64 0, i64 %179
  %182 = load <2 x i32>, ptr %180, align 8
  %183 = zext <2 x i32> %182 to <2 x i64>
  %184 = extractelement <2 x i64> %183, i64 0
  %185 = extractelement <2 x i64> %183, i64 1
  %186 = lshr i64 %185, 4
  %187 = xor i64 %186, %184
  %188 = and i64 %187, 252645135
  %189 = xor i64 %188, %184
  %190 = shl nuw nsw i64 %188, 4
  %191 = xor i64 %190, %185
  %192 = lshr i64 %189, 16
  %193 = and i64 %191, 65535
  %194 = xor i64 %193, %192
  %195 = xor i64 %194, %191
  %196 = shl nuw nsw i64 %194, 16
  %197 = xor i64 %196, %189
  %198 = lshr i64 %195, 2
  %199 = xor i64 %198, %197
  %200 = and i64 %199, 858993459
  %201 = xor i64 %200, %197
  %202 = shl nuw nsw i64 %200, 2
  %203 = xor i64 %202, %195
  %204 = lshr i64 %201, 8
  %205 = xor i64 %204, %203
  %206 = and i64 %205, 16711935
  %207 = xor i64 %206, %203
  %208 = shl nuw nsw i64 %206, 8
  %209 = xor i64 %208, %201
  %210 = lshr i64 %207, 1
  %211 = xor i64 %210, %209
  %212 = and i64 %211, 1431655765
  %213 = xor i64 %212, %209
  %214 = shl nuw nsw i64 %212, 1
  %215 = xor i64 %214, %207
  %216 = lshr i64 %213, 29
  %217 = shl i64 %213, 3
  %218 = add i64 %216, %217
  %219 = and i64 %218, 4294967295
  %220 = lshr i64 %215, 29
  %221 = shl i64 %215, 3
  %222 = add i64 %220, %221
  %223 = and i64 %222, 4294967295
  br label %224

224:                                              ; preds = %224, %178
  %225 = phi i64 [ %431, %224 ], [ 0, %178 ]
  %226 = phi i64 [ %379, %224 ], [ %223, %178 ]
  %227 = phi i64 [ %430, %224 ], [ %219, %178 ]
  %228 = getelementptr inbounds i64, ptr %181, i64 %225
  %229 = load i64, ptr %228, align 16, !tbaa !12
  %230 = xor i64 %229, %227
  %231 = or i64 %225, 1
  %232 = getelementptr inbounds i64, ptr %181, i64 %231
  %233 = load i64, ptr %232, align 8, !tbaa !12
  %234 = xor i64 %233, %227
  %235 = lshr i64 %234, 4
  %236 = shl i64 %234, 28
  %237 = add i64 %235, %236
  %238 = lshr i64 %230, 2
  %239 = and i64 %238, 63
  %240 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !12
  %242 = lshr i64 %230, 10
  %243 = and i64 %242, 63
  %244 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %243
  %245 = load i64, ptr %244, align 8, !tbaa !12
  %246 = lshr i64 %230, 18
  %247 = and i64 %246, 63
  %248 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %247
  %249 = load i64, ptr %248, align 8, !tbaa !12
  %250 = lshr i64 %230, 26
  %251 = and i64 %250, 63
  %252 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %251
  %253 = load i64, ptr %252, align 8, !tbaa !12
  %254 = lshr i64 %234, 6
  %255 = and i64 %254, 63
  %256 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !12
  %258 = lshr i64 %234, 14
  %259 = and i64 %258, 63
  %260 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %259
  %261 = load i64, ptr %260, align 8, !tbaa !12
  %262 = lshr i64 %234, 22
  %263 = and i64 %262, 63
  %264 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %263
  %265 = load i64, ptr %264, align 8, !tbaa !12
  %266 = lshr i64 %237, 26
  %267 = and i64 %266, 63
  %268 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %267
  %269 = load i64, ptr %268, align 8, !tbaa !12
  %270 = xor i64 %241, %226
  %271 = xor i64 %270, %245
  %272 = xor i64 %271, %249
  %273 = xor i64 %272, %253
  %274 = xor i64 %273, %257
  %275 = xor i64 %274, %261
  %276 = xor i64 %275, %265
  %277 = xor i64 %276, %269
  %278 = or i64 %225, 2
  %279 = getelementptr inbounds i64, ptr %181, i64 %278
  %280 = load i64, ptr %279, align 16, !tbaa !12
  %281 = xor i64 %277, %280
  %282 = or i64 %225, 3
  %283 = getelementptr inbounds i64, ptr %181, i64 %282
  %284 = load i64, ptr %283, align 8, !tbaa !12
  %285 = xor i64 %284, %277
  %286 = lshr i64 %285, 4
  %287 = shl i64 %285, 28
  %288 = add i64 %286, %287
  %289 = lshr i64 %281, 2
  %290 = and i64 %289, 63
  %291 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %290
  %292 = load i64, ptr %291, align 8, !tbaa !12
  %293 = lshr i64 %281, 10
  %294 = and i64 %293, 63
  %295 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !12
  %297 = lshr i64 %281, 18
  %298 = and i64 %297, 63
  %299 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %298
  %300 = load i64, ptr %299, align 8, !tbaa !12
  %301 = lshr i64 %281, 26
  %302 = and i64 %301, 63
  %303 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %302
  %304 = load i64, ptr %303, align 8, !tbaa !12
  %305 = lshr i64 %285, 6
  %306 = and i64 %305, 63
  %307 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %306
  %308 = load i64, ptr %307, align 8, !tbaa !12
  %309 = lshr i64 %285, 14
  %310 = and i64 %309, 63
  %311 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %310
  %312 = load i64, ptr %311, align 8, !tbaa !12
  %313 = lshr i64 %285, 22
  %314 = and i64 %313, 63
  %315 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !12
  %317 = lshr i64 %288, 26
  %318 = and i64 %317, 63
  %319 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %318
  %320 = load i64, ptr %319, align 8, !tbaa !12
  %321 = xor i64 %292, %296
  %322 = xor i64 %321, %300
  %323 = xor i64 %322, %304
  %324 = xor i64 %323, %308
  %325 = xor i64 %324, %312
  %326 = xor i64 %325, %316
  %327 = xor i64 %326, %320
  %328 = xor i64 %327, %227
  %329 = or i64 %225, 4
  %330 = getelementptr inbounds i64, ptr %181, i64 %329
  %331 = load i64, ptr %330, align 16, !tbaa !12
  %332 = xor i64 %328, %331
  %333 = or i64 %225, 5
  %334 = getelementptr inbounds i64, ptr %181, i64 %333
  %335 = load i64, ptr %334, align 8, !tbaa !12
  %336 = xor i64 %328, %335
  %337 = lshr i64 %336, 4
  %338 = shl i64 %336, 28
  %339 = add i64 %337, %338
  %340 = lshr i64 %332, 2
  %341 = and i64 %340, 63
  %342 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %341
  %343 = load i64, ptr %342, align 8, !tbaa !12
  %344 = lshr i64 %332, 10
  %345 = and i64 %344, 63
  %346 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %345
  %347 = load i64, ptr %346, align 8, !tbaa !12
  %348 = lshr i64 %332, 18
  %349 = and i64 %348, 63
  %350 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %349
  %351 = load i64, ptr %350, align 8, !tbaa !12
  %352 = lshr i64 %332, 26
  %353 = and i64 %352, 63
  %354 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %353
  %355 = load i64, ptr %354, align 8, !tbaa !12
  %356 = lshr i64 %336, 6
  %357 = and i64 %356, 63
  %358 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %357
  %359 = load i64, ptr %358, align 8, !tbaa !12
  %360 = lshr i64 %336, 14
  %361 = and i64 %360, 63
  %362 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %361
  %363 = load i64, ptr %362, align 8, !tbaa !12
  %364 = lshr i64 %336, 22
  %365 = and i64 %364, 63
  %366 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %365
  %367 = load i64, ptr %366, align 8, !tbaa !12
  %368 = lshr i64 %339, 26
  %369 = and i64 %368, 63
  %370 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !12
  %372 = xor i64 %343, %347
  %373 = xor i64 %372, %351
  %374 = xor i64 %373, %355
  %375 = xor i64 %374, %359
  %376 = xor i64 %375, %363
  %377 = xor i64 %376, %367
  %378 = xor i64 %377, %371
  %379 = xor i64 %378, %277
  %380 = or i64 %225, 6
  %381 = getelementptr inbounds i64, ptr %181, i64 %380
  %382 = load i64, ptr %381, align 16, !tbaa !12
  %383 = xor i64 %379, %382
  %384 = or i64 %225, 7
  %385 = getelementptr inbounds i64, ptr %181, i64 %384
  %386 = load i64, ptr %385, align 8, !tbaa !12
  %387 = xor i64 %379, %386
  %388 = lshr i64 %387, 4
  %389 = shl i64 %387, 28
  %390 = add i64 %388, %389
  %391 = lshr i64 %383, 2
  %392 = and i64 %391, 63
  %393 = getelementptr inbounds [64 x i64], ptr @des_SPtrans, i64 0, i64 %392
  %394 = load i64, ptr %393, align 8, !tbaa !12
  %395 = lshr i64 %383, 10
  %396 = and i64 %395, 63
  %397 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 2, i64 %396
  %398 = load i64, ptr %397, align 8, !tbaa !12
  %399 = lshr i64 %383, 18
  %400 = and i64 %399, 63
  %401 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 4, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !12
  %403 = lshr i64 %383, 26
  %404 = and i64 %403, 63
  %405 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 6, i64 %404
  %406 = load i64, ptr %405, align 8, !tbaa !12
  %407 = lshr i64 %387, 6
  %408 = and i64 %407, 63
  %409 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 1, i64 %408
  %410 = load i64, ptr %409, align 8, !tbaa !12
  %411 = lshr i64 %387, 14
  %412 = and i64 %411, 63
  %413 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 3, i64 %412
  %414 = load i64, ptr %413, align 8, !tbaa !12
  %415 = lshr i64 %387, 22
  %416 = and i64 %415, 63
  %417 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 5, i64 %416
  %418 = load i64, ptr %417, align 8, !tbaa !12
  %419 = lshr i64 %390, 26
  %420 = and i64 %419, 63
  %421 = getelementptr inbounds [8 x [64 x i64]], ptr @des_SPtrans, i64 0, i64 7, i64 %420
  %422 = load i64, ptr %421, align 8, !tbaa !12
  %423 = xor i64 %394, %398
  %424 = xor i64 %423, %402
  %425 = xor i64 %424, %406
  %426 = xor i64 %425, %410
  %427 = xor i64 %426, %414
  %428 = xor i64 %427, %418
  %429 = xor i64 %428, %422
  %430 = xor i64 %429, %328
  %431 = add nuw nsw i64 %225, 8
  %432 = icmp ult i64 %225, 24
  br i1 %432, label %224, label %433, !llvm.loop !17

433:                                              ; preds = %224
  %.lcssa1 = phi i64 [ %379, %224 ]
  %.lcssa = phi i64 [ %430, %224 ]
  %434 = getelementptr inbounds [34 x [8 x i8]], ptr %2, i64 0, i64 %179
  %435 = lshr i64 %.lcssa1, 3
  %436 = shl i64 %.lcssa1, 29
  %437 = add i64 %435, %436
  %438 = and i64 %437, 4294967295
  %439 = lshr i64 %.lcssa, 3
  %440 = shl i64 %.lcssa, 29
  %441 = add i64 %439, %440
  %442 = and i64 %441, 4294967295
  %443 = lshr i64 %441, 1
  %444 = xor i64 %443, %437
  %445 = and i64 %444, 1431655765
  %446 = xor i64 %445, %438
  %447 = shl nuw nsw i64 %445, 1
  %448 = xor i64 %447, %442
  %449 = lshr i64 %446, 8
  %450 = xor i64 %449, %448
  %451 = and i64 %450, 16711935
  %452 = xor i64 %451, %448
  %453 = shl nuw nsw i64 %451, 8
  %454 = xor i64 %453, %446
  %455 = lshr i64 %452, 2
  %456 = xor i64 %455, %454
  %457 = and i64 %456, 858993459
  %458 = xor i64 %457, %454
  %459 = shl nuw nsw i64 %457, 2
  %460 = xor i64 %459, %452
  %461 = lshr i64 %458, 16
  %462 = and i64 %460, 65535
  %463 = xor i64 %462, %461
  %464 = xor i64 %463, %460
  %465 = shl nuw nsw i64 %463, 16
  %466 = xor i64 %465, %458
  %467 = lshr i64 %464, 4
  %468 = xor i64 %467, %466
  %469 = and i64 %468, 252645135
  %470 = xor i64 %469, %466
  %471 = shl nuw nsw i64 %469, 4
  %472 = xor i64 %471, %464
  %473 = trunc i64 %470 to i8
  %474 = getelementptr inbounds i8, ptr %434, i64 1
  store i8 %473, ptr %434, align 8, !tbaa !11
  %475 = lshr i64 %470, 8
  %476 = trunc i64 %475 to i8
  %477 = getelementptr inbounds i8, ptr %434, i64 2
  store i8 %476, ptr %474, align 1, !tbaa !11
  %478 = lshr i64 %470, 16
  %479 = trunc i64 %478 to i8
  %480 = getelementptr inbounds i8, ptr %434, i64 3
  store i8 %479, ptr %477, align 2, !tbaa !11
  %481 = lshr i64 %470, 24
  %482 = trunc i64 %481 to i8
  %483 = getelementptr inbounds i8, ptr %434, i64 4
  store i8 %482, ptr %480, align 1, !tbaa !11
  %484 = trunc i64 %472 to i8
  %485 = getelementptr inbounds i8, ptr %434, i64 5
  store i8 %484, ptr %483, align 4, !tbaa !11
  %486 = lshr i64 %472, 8
  %487 = trunc i64 %486 to i8
  %488 = getelementptr inbounds i8, ptr %434, i64 6
  store i8 %487, ptr %485, align 1, !tbaa !11
  %489 = lshr i64 %472, 16
  %490 = trunc i64 %489 to i8
  %491 = getelementptr inbounds i8, ptr %434, i64 7
  store i8 %490, ptr %488, align 2, !tbaa !11
  %492 = lshr i64 %472, 24
  %493 = trunc i64 %492 to i8
  store i8 %493, ptr %491, align 1, !tbaa !11
  %494 = add nuw nsw i64 %179, 1
  %495 = icmp eq i64 %494, %6
  br i1 %495, label %496, label %178, !llvm.loop !18

496:                                              ; preds = %433, %176
  %497 = add nuw nsw i32 %177, 1
  %498 = icmp eq i32 %497, 1000000
  br i1 %498, label %499, label %176, !llvm.loop !19

499:                                              ; preds = %496
  %500 = shl nsw i32 %0, 3
  %501 = sext i32 %500 to i64
  %502 = call i32 @bcmp(ptr nonnull @cipher_data, ptr nonnull %2, i64 %501)
  %503 = icmp eq i32 %502, 0
  %504 = select i1 %503, ptr @str, ptr @str.4
  %505 = tail call i32 @puts(ptr nonnull dereferenceable(1) %504)
  call void @llvm.lifetime.end.p0(i64 8704, ptr nonnull %3) #11
  call void @llvm.lifetime.end.p0(i64 272, ptr nonnull %2) #11
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #5

; Function Attrs: mustprogress nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #6

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #5

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { mustprogress nofree nounwind willreturn memory(argmem: read) }
attributes #7 = { nofree nounwind }
attributes #8 = { optsize }
attributes #9 = { noreturn nounwind optsize }
attributes #10 = { nounwind optsize willreturn memory(read) }
attributes #11 = { nounwind }

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
!8 = !{!"any pointer", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"long", !9, i64 0}
!14 = distinct !{!14, !15}
!15 = !{!"llvm.loop.mustprogress"}
!16 = distinct !{!16, !15}
!17 = distinct !{!17, !15}
!18 = distinct !{!18, !15}
!19 = distinct !{!19, !15}
