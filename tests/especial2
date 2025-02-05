; ModuleID = '/src/llvm-test-suite/build/MultiSource/Benchmarks/MiBench/security-blowfish/security-blowfish.e.bc'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bf_key_st = type { [18 x i64], [1024 x i64] }

@bf_init = internal unnamed_addr constant %struct.bf_key_st { [18 x i64] [i64 608135816, i64 2242054355, i64 320440878, i64 57701188, i64 2752067618, i64 698298832, i64 137296536, i64 3964562569, i64 1160258022, i64 953160567, i64 3193202383, i64 887688300, i64 3232508343, i64 3380367581, i64 1065670069, i64 3041331479, i64 2450970073, i64 2306472731], [1024 x i64] [i64 3509652390, i64 2564797868, i64 805139163, i64 3491422135, i64 3101798381, i64 1780907670, i64 3128725573, i64 4046225305, i64 614570311, i64 3012652279, i64 134345442, i64 2240740374, i64 1667834072, i64 1901547113, i64 2757295779, i64 4103290238, i64 227898511, i64 1921955416, i64 1904987480, i64 2182433518, i64 2069144605, i64 3260701109, i64 2620446009, i64 720527379, i64 3318853667, i64 677414384, i64 3393288472, i64 3101374703, i64 2390351024, i64 1614419982, i64 1822297739, i64 2954791486, i64 3608508353, i64 3174124327, i64 2024746970, i64 1432378464, i64 3864339955, i64 2857741204, i64 1464375394, i64 1676153920, i64 1439316330, i64 715854006, i64 3033291828, i64 289532110, i64 2706671279, i64 2087905683, i64 3018724369, i64 1668267050, i64 732546397, i64 1947742710, i64 3462151702, i64 2609353502, i64 2950085171, i64 1814351708, i64 2050118529, i64 680887927, i64 999245976, i64 1800124847, i64 3300911131, i64 1713906067, i64 1641548236, i64 4213287313, i64 1216130144, i64 1575780402, i64 4018429277, i64 3917837745, i64 3693486850, i64 3949271944, i64 596196993, i64 3549867205, i64 258830323, i64 2213823033, i64 772490370, i64 2760122372, i64 1774776394, i64 2652871518, i64 566650946, i64 4142492826, i64 1728879713, i64 2882767088, i64 1783734482, i64 3629395816, i64 2517608232, i64 2874225571, i64 1861159788, i64 326777828, i64 3124490320, i64 2130389656, i64 2716951837, i64 967770486, i64 1724537150, i64 2185432712, i64 2364442137, i64 1164943284, i64 2105845187, i64 998989502, i64 3765401048, i64 2244026483, i64 1075463327, i64 1455516326, i64 1322494562, i64 910128902, i64 469688178, i64 1117454909, i64 936433444, i64 3490320968, i64 3675253459, i64 1240580251, i64 122909385, i64 2157517691, i64 634681816, i64 4142456567, i64 3825094682, i64 3061402683, i64 2540495037, i64 79693498, i64 3249098678, i64 1084186820, i64 1583128258, i64 426386531, i64 1761308591, i64 1047286709, i64 322548459, i64 995290223, i64 1845252383, i64 2603652396, i64 3431023940, i64 2942221577, i64 3202600964, i64 3727903485, i64 1712269319, i64 422464435, i64 3234572375, i64 1170764815, i64 3523960633, i64 3117677531, i64 1434042557, i64 442511882, i64 3600875718, i64 1076654713, i64 1738483198, i64 4213154764, i64 2393238008, i64 3677496056, i64 1014306527, i64 4251020053, i64 793779912, i64 2902807211, i64 842905082, i64 4246964064, i64 1395751752, i64 1040244610, i64 2656851899, i64 3396308128, i64 445077038, i64 3742853595, i64 3577915638, i64 679411651, i64 2892444358, i64 2354009459, i64 1767581616, i64 3150600392, i64 3791627101, i64 3102740896, i64 284835224, i64 4246832056, i64 1258075500, i64 768725851, i64 2589189241, i64 3069724005, i64 3532540348, i64 1274779536, i64 3789419226, i64 2764799539, i64 1660621633, i64 3471099624, i64 4011903706, i64 913787905, i64 3497959166, i64 737222580, i64 2514213453, i64 2928710040, i64 3937242737, i64 1804850592, i64 3499020752, i64 2949064160, i64 2386320175, i64 2390070455, i64 2415321851, i64 4061277028, i64 2290661394, i64 2416832540, i64 1336762016, i64 1754252060, i64 3520065937, i64 3014181293, i64 791618072, i64 3188594551, i64 3933548030, i64 2332172193, i64 3852520463, i64 3043980520, i64 413987798, i64 3465142937, i64 3030929376, i64 4245938359, i64 2093235073, i64 3534596313, i64 375366246, i64 2157278981, i64 2479649556, i64 555357303, i64 3870105701, i64 2008414854, i64 3344188149, i64 4221384143, i64 3956125452, i64 2067696032, i64 3594591187, i64 2921233993, i64 2428461, i64 544322398, i64 577241275, i64 1471733935, i64 610547355, i64 4027169054, i64 1432588573, i64 1507829418, i64 2025931657, i64 3646575487, i64 545086370, i64 48609733, i64 2200306550, i64 1653985193, i64 298326376, i64 1316178497, i64 3007786442, i64 2064951626, i64 458293330, i64 2589141269, i64 3591329599, i64 3164325604, i64 727753846, i64 2179363840, i64 146436021, i64 1461446943, i64 4069977195, i64 705550613, i64 3059967265, i64 3887724982, i64 4281599278, i64 3313849956, i64 1404054877, i64 2845806497, i64 146425753, i64 1854211946, i64 1266315497, i64 3048417604, i64 3681880366, i64 3289982499, i64 2909710000, i64 1235738493, i64 2632868024, i64 2414719590, i64 3970600049, i64 1771706367, i64 1449415276, i64 3266420449, i64 422970021, i64 1963543593, i64 2690192192, i64 3826793022, i64 1062508698, i64 1531092325, i64 1804592342, i64 2583117782, i64 2714934279, i64 4024971509, i64 1294809318, i64 4028980673, i64 1289560198, i64 2221992742, i64 1669523910, i64 35572830, i64 157838143, i64 1052438473, i64 1016535060, i64 1802137761, i64 1753167236, i64 1386275462, i64 3080475397, i64 2857371447, i64 1040679964, i64 2145300060, i64 2390574316, i64 1461121720, i64 2956646967, i64 4031777805, i64 4028374788, i64 33600511, i64 2920084762, i64 1018524850, i64 629373528, i64 3691585981, i64 3515945977, i64 2091462646, i64 2486323059, i64 586499841, i64 988145025, i64 935516892, i64 3367335476, i64 2599673255, i64 2839830854, i64 265290510, i64 3972581182, i64 2759138881, i64 3795373465, i64 1005194799, i64 847297441, i64 406762289, i64 1314163512, i64 1332590856, i64 1866599683, i64 4127851711, i64 750260880, i64 613907577, i64 1450815602, i64 3165620655, i64 3734664991, i64 3650291728, i64 3012275730, i64 3704569646, i64 1427272223, i64 778793252, i64 1343938022, i64 2676280711, i64 2052605720, i64 1946737175, i64 3164576444, i64 3914038668, i64 3967478842, i64 3682934266, i64 1661551462, i64 3294938066, i64 4011595847, i64 840292616, i64 3712170807, i64 616741398, i64 312560963, i64 711312465, i64 1351876610, i64 322626781, i64 1910503582, i64 271666773, i64 2175563734, i64 1594956187, i64 70604529, i64 3617834859, i64 1007753275, i64 1495573769, i64 4069517037, i64 2549218298, i64 2663038764, i64 504708206, i64 2263041392, i64 3941167025, i64 2249088522, i64 1514023603, i64 1998579484, i64 1312622330, i64 694541497, i64 2582060303, i64 2151582166, i64 1382467621, i64 776784248, i64 2618340202, i64 3323268794, i64 2497899128, i64 2784771155, i64 503983604, i64 4076293799, i64 907881277, i64 423175695, i64 432175456, i64 1378068232, i64 4145222326, i64 3954048622, i64 3938656102, i64 3820766613, i64 2793130115, i64 2977904593, i64 26017576, i64 3274890735, i64 3194772133, i64 1700274565, i64 1756076034, i64 4006520079, i64 3677328699, i64 720338349, i64 1533947780, i64 354530856, i64 688349552, i64 3973924725, i64 1637815568, i64 332179504, i64 3949051286, i64 53804574, i64 2852348879, i64 3044236432, i64 1282449977, i64 3583942155, i64 3416972820, i64 4006381244, i64 1617046695, i64 2628476075, i64 3002303598, i64 1686838959, i64 431878346, i64 2686675385, i64 1700445008, i64 1080580658, i64 1009431731, i64 832498133, i64 3223435511, i64 2605976345, i64 2271191193, i64 2516031870, i64 1648197032, i64 4164389018, i64 2548247927, i64 300782431, i64 375919233, i64 238389289, i64 3353747414, i64 2531188641, i64 2019080857, i64 1475708069, i64 455242339, i64 2609103871, i64 448939670, i64 3451063019, i64 1395535956, i64 2413381860, i64 1841049896, i64 1491858159, i64 885456874, i64 4264095073, i64 4001119347, i64 1565136089, i64 3898914787, i64 1108368660, i64 540939232, i64 1173283510, i64 2745871338, i64 3681308437, i64 4207628240, i64 3343053890, i64 4016749493, i64 1699691293, i64 1103962373, i64 3625875870, i64 2256883143, i64 3830138730, i64 1031889488, i64 3479347698, i64 1535977030, i64 4236805024, i64 3251091107, i64 2132092099, i64 1774941330, i64 1199868427, i64 1452454533, i64 157007616, i64 2904115357, i64 342012276, i64 595725824, i64 1480756522, i64 206960106, i64 497939518, i64 591360097, i64 863170706, i64 2375253569, i64 3596610801, i64 1814182875, i64 2094937945, i64 3421402208, i64 1082520231, i64 3463918190, i64 2785509508, i64 435703966, i64 3908032597, i64 1641649973, i64 2842273706, i64 3305899714, i64 1510255612, i64 2148256476, i64 2655287854, i64 3276092548, i64 4258621189, i64 236887753, i64 3681803219, i64 274041037, i64 1734335097, i64 3815195456, i64 3317970021, i64 1899903192, i64 1026095262, i64 4050517792, i64 356393447, i64 2410691914, i64 3873677099, i64 3682840055, i64 3913112168, i64 2491498743, i64 4132185628, i64 2489919796, i64 1091903735, i64 1979897079, i64 3170134830, i64 3567386728, i64 3557303409, i64 857797738, i64 1136121015, i64 1342202287, i64 507115054, i64 2535736646, i64 337727348, i64 3213592640, i64 1301675037, i64 2528481711, i64 1895095763, i64 1721773893, i64 3216771564, i64 62756741, i64 2142006736, i64 835421444, i64 2531993523, i64 1442658625, i64 3659876326, i64 2882144922, i64 676362277, i64 1392781812, i64 170690266, i64 3921047035, i64 1759253602, i64 3611846912, i64 1745797284, i64 664899054, i64 1329594018, i64 3901205900, i64 3045908486, i64 2062866102, i64 2865634940, i64 3543621612, i64 3464012697, i64 1080764994, i64 553557557, i64 3656615353, i64 3996768171, i64 991055499, i64 499776247, i64 1265440854, i64 648242737, i64 3940784050, i64 980351604, i64 3713745714, i64 1749149687, i64 3396870395, i64 4211799374, i64 3640570775, i64 1161844396, i64 3125318951, i64 1431517754, i64 545492359, i64 4268468663, i64 3499529547, i64 1437099964, i64 2702547544, i64 3433638243, i64 2581715763, i64 2787789398, i64 1060185593, i64 1593081372, i64 2418618748, i64 4260947970, i64 69676912, i64 2159744348, i64 86519011, i64 2512459080, i64 3838209314, i64 1220612927, i64 3339683548, i64 133810670, i64 1090789135, i64 1078426020, i64 1569222167, i64 845107691, i64 3583754449, i64 4072456591, i64 1091646820, i64 628848692, i64 1613405280, i64 3757631651, i64 526609435, i64 236106946, i64 48312990, i64 2942717905, i64 3402727701, i64 1797494240, i64 859738849, i64 992217954, i64 4005476642, i64 2243076622, i64 3870952857, i64 3732016268, i64 765654824, i64 3490871365, i64 2511836413, i64 1685915746, i64 3888969200, i64 1414112111, i64 2273134842, i64 3281911079, i64 4080962846, i64 172450625, i64 2569994100, i64 980381355, i64 4109958455, i64 2819808352, i64 2716589560, i64 2568741196, i64 3681446669, i64 3329971472, i64 1835478071, i64 660984891, i64 3704678404, i64 4045999559, i64 3422617507, i64 3040415634, i64 1762651403, i64 1719377915, i64 3470491036, i64 2693910283, i64 3642056355, i64 3138596744, i64 1364962596, i64 2073328063, i64 1983633131, i64 926494387, i64 3423689081, i64 2150032023, i64 4096667949, i64 1749200295, i64 3328846651, i64 309677260, i64 2016342300, i64 1779581495, i64 3079819751, i64 111262694, i64 1274766160, i64 443224088, i64 298511866, i64 1025883608, i64 3806446537, i64 1145181785, i64 168956806, i64 3641502830, i64 3584813610, i64 1689216846, i64 3666258015, i64 3200248200, i64 1692713982, i64 2646376535, i64 4042768518, i64 1618508792, i64 1610833997, i64 3523052358, i64 4130873264, i64 2001055236, i64 3610705100, i64 2202168115, i64 4028541809, i64 2961195399, i64 1006657119, i64 2006996926, i64 3186142756, i64 1430667929, i64 3210227297, i64 1314452623, i64 4074634658, i64 4101304120, i64 2273951170, i64 1399257539, i64 3367210612, i64 3027628629, i64 1190975929, i64 2062231137, i64 2333990788, i64 2221543033, i64 2438960610, i64 1181637006, i64 548689776, i64 2362791313, i64 3372408396, i64 3104550113, i64 3145860560, i64 296247880, i64 1970579870, i64 3078560182, i64 3769228297, i64 1714227617, i64 3291629107, i64 3898220290, i64 166772364, i64 1251581989, i64 493813264, i64 448347421, i64 195405023, i64 2709975567, i64 677966185, i64 3703036547, i64 1463355134, i64 2715995803, i64 1338867538, i64 1343315457, i64 2802222074, i64 2684532164, i64 233230375, i64 2599980071, i64 2000651841, i64 3277868038, i64 1638401717, i64 4028070440, i64 3237316320, i64 6314154, i64 819756386, i64 300326615, i64 590932579, i64 1405279636, i64 3267499572, i64 3150704214, i64 2428286686, i64 3959192993, i64 3461946742, i64 1862657033, i64 1266418056, i64 963775037, i64 2089974820, i64 2263052895, i64 1917689273, i64 448879540, i64 3550394620, i64 3981727096, i64 150775221, i64 3627908307, i64 1303187396, i64 508620638, i64 2975983352, i64 2726630617, i64 1817252668, i64 1876281319, i64 1457606340, i64 908771278, i64 3720792119, i64 3617206836, i64 2455994898, i64 1729034894, i64 1080033504, i64 976866871, i64 3556439503, i64 2881648439, i64 1522871579, i64 1555064734, i64 1336096578, i64 3548522304, i64 2579274686, i64 3574697629, i64 3205460757, i64 3593280638, i64 3338716283, i64 3079412587, i64 564236357, i64 2993598910, i64 1781952180, i64 1464380207, i64 3163844217, i64 3332601554, i64 1699332808, i64 1393555694, i64 1183702653, i64 3581086237, i64 1288719814, i64 691649499, i64 2847557200, i64 2895455976, i64 3193889540, i64 2717570544, i64 1781354906, i64 1676643554, i64 2592534050, i64 3230253752, i64 1126444790, i64 2770207658, i64 2633158820, i64 2210423226, i64 2615765581, i64 2414155088, i64 3127139286, i64 673620729, i64 2805611233, i64 1269405062, i64 4015350505, i64 3341807571, i64 4149409754, i64 1057255273, i64 2012875353, i64 2162469141, i64 2276492801, i64 2601117357, i64 993977747, i64 3918593370, i64 2654263191, i64 753973209, i64 36408145, i64 2530585658, i64 25011837, i64 3520020182, i64 2088578344, i64 530523599, i64 2918365339, i64 1524020338, i64 1518925132, i64 3760827505, i64 3759777254, i64 1202760957, i64 3985898139, i64 3906192525, i64 674977740, i64 4174734889, i64 2031300136, i64 2019492241, i64 3983892565, i64 4153806404, i64 3822280332, i64 352677332, i64 2297720250, i64 60907813, i64 90501309, i64 3286998549, i64 1016092578, i64 2535922412, i64 2839152426, i64 457141659, i64 509813237, i64 4120667899, i64 652014361, i64 1966332200, i64 2975202805, i64 55981186, i64 2327461051, i64 676427537, i64 3255491064, i64 2882294119, i64 3433927263, i64 1307055953, i64 942726286, i64 933058658, i64 2468411793, i64 3933900994, i64 4215176142, i64 1361170020, i64 2001714738, i64 2830558078, i64 3274259782, i64 1222529897, i64 1679025792, i64 2729314320, i64 3714953764, i64 1770335741, i64 151462246, i64 3013232138, i64 1682292957, i64 1483529935, i64 471910574, i64 1539241949, i64 458788160, i64 3436315007, i64 1807016891, i64 3718408830, i64 978976581, i64 1043663428, i64 3165965781, i64 1927990952, i64 4200891579, i64 2372276910, i64 3208408903, i64 3533431907, i64 1412390302, i64 2931980059, i64 4132332400, i64 1947078029, i64 3881505623, i64 4168226417, i64 2941484381, i64 1077988104, i64 1320477388, i64 886195818, i64 18198404, i64 3786409000, i64 2509781533, i64 112762804, i64 3463356488, i64 1866414978, i64 891333506, i64 18488651, i64 661792760, i64 1628790961, i64 3885187036, i64 3141171499, i64 876946877, i64 2693282273, i64 1372485963, i64 791857591, i64 2686433993, i64 3759982718, i64 3167212022, i64 3472953795, i64 2716379847, i64 445679433, i64 3561995674, i64 3504004811, i64 3574258232, i64 54117162, i64 3331405415, i64 2381918588, i64 3769707343, i64 4154350007, i64 1140177722, i64 4074052095, i64 668550556, i64 3214352940, i64 367459370, i64 261225585, i64 2610173221, i64 4209349473, i64 3468074219, i64 3265815641, i64 314222801, i64 3066103646, i64 3808782860, i64 282218597, i64 3406013506, i64 3773591054, i64 379116347, i64 1285071038, i64 846784868, i64 2669647154, i64 3771962079, i64 3550491691, i64 2305946142, i64 453669953, i64 1268987020, i64 3317592352, i64 3279303384, i64 3744833421, i64 2610507566, i64 3859509063, i64 266596637, i64 3847019092, i64 517658769, i64 3462560207, i64 3443424879, i64 370717030, i64 4247526661, i64 2224018117, i64 4143653529, i64 4112773975, i64 2788324899, i64 2477274417, i64 1456262402, i64 2901442914, i64 1517677493, i64 1846949527, i64 2295493580, i64 3734397586, i64 2176403920, i64 1280348187, i64 1908823572, i64 3871786941, i64 846861322, i64 1172426758, i64 3287448474, i64 3383383037, i64 1655181056, i64 3139813346, i64 901632758, i64 1897031941, i64 2986607138, i64 3066810236, i64 3447102507, i64 1393639104, i64 373351379, i64 950779232, i64 625454576, i64 3124240540, i64 4148612726, i64 2007998917, i64 544563296, i64 2244738638, i64 2330496472, i64 2058025392, i64 1291430526, i64 424198748, i64 50039436, i64 29584100, i64 3605783033, i64 2429876329, i64 2791104160, i64 1057563949, i64 3255363231, i64 3075367218, i64 3463963227, i64 1469046755, i64 985887462] }, align 8
@.str = private unnamed_addr constant [27 x i8] c"abcdefghijklmnopqrstuvwxyz\00", align 1
@.str.1 = private unnamed_addr constant [18 x i8] c"Who is John Galt?\00", align 1
@bf_key = internal global [2 x ptr] [ptr @.str, ptr @.str.1], align 16
@bf_plain = internal global [2 x [2 x i64]] [[2 x i64] [i64 1112297303, i64 1179210568], [2 x i64] [i64 4275878552, i64 1985229328]], align 16
@bf_cipher = internal global [2 x [2 x i64]] [[2 x i64] [i64 844026110, i64 4094927363], [2 x i64] [i64 3432084267, i64 2149774980]], align 16
@key_test = internal global [25 x i8] c"\F0\E1\D2\C3\B4\A5\96\87xiZK<-\1E\0F\00\11\223DUfw\88", align 16
@key_data = internal global [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@key_out = internal global [25 x [8 x i8]] [[8 x i8] c"\F9\ADY|I\DB\00^", [8 x i8] c"\E9\1D!\C1\D9a\A6\D6", [8 x i8] c"\E9\C2\B7\0A\1B\C6\\\F3", [8 x i8] c"\BE\1Ec\94\08d\0F\05", [8 x i8] c"\B3\9EDH\1B\DB\1En", [8 x i8] c"\94W\AA\83\B1\92\8C\0D", [8 x i8] c"\8B\B7p2\F9`b\9D", [8 x i8] c"\E8z$N,\C8^\82", [8 x i8] c"\15u\0EzON\C5w", [8 x i8] c"\12+\A7\0B:\B6J\E0", [8 x i8] c":\83<\9A\FF\C57\F6", [8 x i8] c"\94\09\DA\87\A9\0Fk\F2", [8 x i8] c"\88O\80bP`\B8\B4", [8 x i8] c"\1F\85\03\1C\19\E1\19h", [8 x i8] c"y\D97:qL\A3O", [8 x i8] c"\93\14(\87\EE;\E1\\", [8 x i8] c"\03B\9E\83\8C\E2\D1K", [8 x i8] c"\A4)\9E'F\9F\F6{", [8 x i8] c"\AF\D5\AE\D1\C1\BC\96\A8", [8 x i8] c"\10\85\1C\0E8X\DA\9F", [8 x i8] c"\E6\F5\1E\D7\9B\9D\B2\1F", [8 x i8] c"d\A6\E1J\FD6\B4o", [8 x i8] c"\80\C7\D7\D4ZTy\AD", [8 x i8] c"\05\04Kb\FAR\D0\80", [8 x i8] zeroinitializer], align 16
@.str.4 = private unnamed_addr constant [5 x i8] c"%02X\00", align 1
@ecb_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"0\00\00\00\00\00\00\00", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] zeroinitializer, [8 x i8] c"\FE\DC\BA\98vT2\10", [8 x i8] c"|\A1\10EJ\1AnW", [8 x i8] c"\011\D9a\9D\C17n", [8 x i8] c"\07\A1\13>J\0B&\86", [8 x i8] c"8IgL&\021\9E", [8 x i8] c"\04\B9\15\BAC\FE\B5\B6", [8 x i8] c"\01\13\B9p\FD4\F2\CE", [8 x i8] c"\01p\F1uF\8F\B5\E6", [8 x i8] c"C)\7F\AD8\E3s\FE", [8 x i8] c"\07\A7\13pE\DA*\16", [8 x i8] c"\04h\91\04\C2\FD;/", [8 x i8] c"7\D0k\B5\16\CBuF", [8 x i8] c"\1F\08&\0D\1A\C2F^", [8 x i8] c"X@#d\1A\BAav", [8 x i8] c"\02X\16\16F)\B0\07", [8 x i8] c"Iy>\BCy\B3%\8F", [8 x i8] c"O\B0^\15\15\ABs\A7", [8 x i8] c"I\E9]mL\A2)\BF", [8 x i8] c"\01\83\10\DC@\9B&\D6", [8 x i8] c"\1CX\7F\1C\13\92O\EF", [8 x i8] c"\01\01\01\01\01\01\01\01", [8 x i8] c"\1F\1F\1F\1F\0E\0E\0E\0E", [8 x i8] c"\E0\FE\E0\FE\F1\FE\F1\FE", [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FE\DC\BA\98vT2\10"], align 16
@plain_data = internal global [34 x [8 x i8]] [[8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] c"\10\00\00\00\00\00\00\01", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\11\11\11\11\11\11\11\11", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] zeroinitializer, [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01\A1\D6\D09wgB", [8 x i8] c"\\\D5L\A8=\EFW\DA", [8 x i8] c"\02H\D48\06\F6qr", [8 x i8] c"QEKX-\DFD\0A", [8 x i8] c"B\FDD0YW\7F\A2", [8 x i8] c"\05\9B^\08Q\CF\14:", [8 x i8] c"\07V\D8\E0wGa\D2", [8 x i8] c"v%\14\B8)\BFHj", [8 x i8] c";\DD\11\90I7(\02", [8 x i8] c"&\95_h5\AF`\9A", [8 x i8] c"\16M^@O'R2", [8 x i8] c"k\05n\18u\9F\\\CA", [8 x i8] c"\00K\D6\EF\09\17`b", [8 x i8] c"H\0D9\00n\E7b\F2", [8 x i8] c"Cu@\C8i\8F<\FA", [8 x i8] c"\07-C\A0w\07R\92", [8 x i8] c"\02\FEUw\81\17\F1*", [8 x i8] c"\1D\9D\\P\18\F7(\C2", [8 x i8] c"0U2(mo)Z", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\01#Eg\89\AB\CD\EF", [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF", [8 x i8] zeroinitializer, [8 x i8] zeroinitializer, [8 x i8] c"\FF\FF\FF\FF\FF\FF\FF\FF"], align 16
@cipher_data = internal global [34 x [8 x i8]] [[8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"Q\86o\D5\B8^\CB\8A", [8 x i8] c"}\85o\9Aa0c\F2", [8 x i8] c"$f\DD\87\8B\96<\9D", [8 x i8] c"a\F9\C3\80\22\81\B0\96", [8 x i8] c"}\0C\C60\AF\DA\1E\C7", [8 x i8] c"N\F9\97Ea\98\DDx", [8 x i8] c"\0A\CE\AB\0F\C6\A0\A2\8D", [8 x i8] c"Y\C6\82E\EB\05(+", [8 x i8] c"\B1\B8\CC\0B%\0F\09\A0", [8 x i8] c"\170\E5w\8B\EA\1D\A4", [8 x i8] c"\A2^xV\CF&Q\EB", [8 x i8] c"58\82\B1\09\CE\8F\1A", [8 x i8] c"H\F4\D0\88L7\99\18", [8 x i8] c"C!\93\B7\89Q\FC\98", [8 x i8] c"\13\F0AT\D6\9D\1A\E5", [8 x i8] c".\ED\DA\93\FF\D3\9Cy", [8 x i8] c"\D8\87\E09<-\A6\E3", [8 x i8] c"_\99\D0O[\169i", [8 x i8] c"J\05z;$\D3\97{", [8 x i8] c"E 1\C1\E4\FA\DA\8E", [8 x i8] c"uU\AE9\F5\9B\87\BD", [8 x i8] c"S\C5_\9C\B4\9F\C0\19", [8 x i8] c"z\8E{\FA\93~\89\A3", [8 x i8] c"\CF\9C]zI\86\AD\B5", [8 x i8] c"\D1\AB\B2\90e\8B\C7x", [8 x i8] c"U\CB7t\D1>\F2\01", [8 x i8] c"\FA4\ECHG\B2h\B2", [8 x i8] c"\A7\90yQ\08\EA<\AE", [8 x i8] c"\C3\9E\07-\9F\ACc\1D", [8 x i8] c"\01I3\E0\CD\AF\F6\E4", [8 x i8] c"\F2\1E\9Aw\B7\1CI\BC", [8 x i8] c"$YF\88WT6\9A", [8 x i8] c"k\\Z\9C]\9E\0AZ"], align 16
@.str.8 = private unnamed_addr constant [10 x i8] c"data[8]= \00", align 1
@.str.9 = private unnamed_addr constant [3 x i8] c"c=\00", align 1
@.str.10 = private unnamed_addr constant [9 x i8] c" k[%2d]=\00", align 1
@.str.12 = private unnamed_addr constant [13 x i8] c"key[16]   = \00", align 1
@cbc_key = internal global [16 x i8] c"\01#Eg\89\AB\CD\EF\F0\E1\D2\C3\B4\A5\96\87", align 16
@.str.13 = private unnamed_addr constant [14 x i8] c"\0Aiv[8]     = \00", align 1
@cbc_iv = internal unnamed_addr constant [8 x i8] c"\FE\DC\BA\98vT2\10", align 1
@.str.14 = private unnamed_addr constant [18 x i8] c"\0Adata[%d]  = '%s'\00", align 1
@cbc_data = internal global [40 x i8] c"7654321 Now is the time for \00\00\00\00\00\00\00\00\00\00\00\00", align 16
@.str.15 = private unnamed_addr constant [14 x i8] c"\0Adata[%d]  = \00", align 1
@.str.17 = private unnamed_addr constant [13 x i8] c"cipher[%d]= \00", align 1
@cbc_ok = internal global [32 x i8] c"kw\B4\D60\06\DE\E6\05\B1V\E2t\03\97\93X\DE\B9\E7\15F\16\D9Y\F1e+\D5\FF\92\CC", align 16
@cfb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CA\F2n\CFm.\B9\E7n=\A3\DE\04\D1Qr\00Q\9DW\A6\C3", align 16
@ofb64_ok = internal global [29 x i8] c"\E72\14\A2\82!9\CAb\B3C\CC[eXs\10\DD\90\8D\0C$\1B\22c\C2\CF\80\DA", align 16
@.str.24 = private unnamed_addr constant [10 x i8] c"got     :\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"%08lX \00", align 1
@.str.26 = private unnamed_addr constant [10 x i8] c"expected:\00", align 1
@.str.31 = private unnamed_addr constant [6 x i8] c"%02X \00", align 1
@.str.37 = private unnamed_addr constant [8 x i8] c"0x%02X,\00", align 1
@str = private unnamed_addr constant [14 x i8] c"ecb test data\00", align 1
@str.45 = private unnamed_addr constant [37 x i8] c"key bytes\09\09clear bytes\09\09cipher bytes\00", align 1
@str.46 = private unnamed_addr constant [18 x i8] c"set_key test data\00", align 1
@str.47 = private unnamed_addr constant [25 x i8] c"\0Achaining mode test data\00", align 1
@str.48 = private unnamed_addr constant [16 x i8] c"cbc cipher text\00", align 1
@str.49 = private unnamed_addr constant [18 x i8] c"cfb64 cipher text\00", align 1
@str.50 = private unnamed_addr constant [18 x i8] c"ofb64 cipher text\00", align 1
@str.51 = private unnamed_addr constant [33 x i8] c"testing blowfish in raw ecb mode\00", align 1
@str.52 = private unnamed_addr constant [29 x i8] c"testing blowfish in ecb mode\00", align 1
@str.53 = private unnamed_addr constant [25 x i8] c"testing blowfish set_key\00", align 1
@str.54 = private unnamed_addr constant [29 x i8] c"testing blowfish in cbc mode\00", align 1
@str.55 = private unnamed_addr constant [31 x i8] c"testing blowfish in cfb64 mode\00", align 1
@str.56 = private unnamed_addr constant [26 x i8] c"testing blowfish in ofb64\00", align 1
@str.57 = private unnamed_addr constant [31 x i8] c"BF_ofb64_encrypt decrypt error\00", align 1
@str.58 = private unnamed_addr constant [31 x i8] c"BF_ofb64_encrypt encrypt error\00", align 1
@str.59 = private unnamed_addr constant [31 x i8] c"BF_cfb64_encrypt decrypt error\00", align 1
@str.60 = private unnamed_addr constant [31 x i8] c"BF_cfb64_encrypt encrypt error\00", align 1
@str.61 = private unnamed_addr constant [29 x i8] c"BF_cbc_encrypt decrypt error\00", align 1
@str.62 = private unnamed_addr constant [29 x i8] c"BF_cbc_encrypt encrypt error\00", align 1
@str.63 = private unnamed_addr constant [22 x i8] c"blowfish setkey error\00", align 1
@str.64 = private unnamed_addr constant [32 x i8] c"BF_ecb_encrypt error decrypting\00", align 1
@str.65 = private unnamed_addr constant [41 x i8] c"BF_ecb_encrypt blowfish error encrypting\00", align 1
@str.66 = private unnamed_addr constant [9 x i8] c"Set key.\00", align 1
@str.67 = private unnamed_addr constant [11 x i8] c"Encrypted.\00", align 1
@str.68 = private unnamed_addr constant [11 x i8] c"decrypted.\00", align 1
@str.69 = private unnamed_addr constant [28 x i8] c"BF_encrypt error decrypting\00", align 1
@str.70 = private unnamed_addr constant [28 x i8] c"BF_encrypt error encrypting\00", align 1

; Function Attrs: nounwind optsize uwtable
define internal void @BF_cbc_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, i32 noundef %5) #0 {
  %7 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %7) #13
  %8 = icmp eq i32 %5, 0
  %9 = getelementptr inbounds i8, ptr %4, i64 1
  %10 = load i8, ptr %4, align 1, !tbaa !7
  %11 = zext i8 %10 to i64
  %12 = shl nuw nsw i64 %11, 24
  %13 = getelementptr inbounds i8, ptr %4, i64 2
  %14 = load i8, ptr %9, align 1, !tbaa !7
  %15 = zext i8 %14 to i64
  %16 = shl nuw nsw i64 %15, 16
  %17 = or i64 %16, %12
  %18 = getelementptr inbounds i8, ptr %4, i64 3
  %19 = load i8, ptr %13, align 1, !tbaa !7
  %20 = zext i8 %19 to i64
  %21 = shl nuw nsw i64 %20, 8
  %22 = or i64 %17, %21
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %18, align 1, !tbaa !7
  %25 = zext i8 %24 to i64
  %26 = or i64 %22, %25
  %27 = getelementptr inbounds i8, ptr %4, i64 5
  %28 = load i8, ptr %23, align 1, !tbaa !7
  %29 = zext i8 %28 to i64
  %30 = shl nuw nsw i64 %29, 24
  %31 = getelementptr inbounds i8, ptr %4, i64 6
  %32 = load i8, ptr %27, align 1, !tbaa !7
  %33 = zext i8 %32 to i64
  %34 = shl nuw nsw i64 %33, 16
  %35 = or i64 %34, %30
  %36 = getelementptr inbounds i8, ptr %4, i64 7
  %37 = load i8, ptr %31, align 1, !tbaa !7
  %38 = zext i8 %37 to i64
  %39 = shl nuw nsw i64 %38, 8
  %40 = or i64 %35, %39
  %41 = load i8, ptr %36, align 1, !tbaa !7
  %42 = zext i8 %41 to i64
  %43 = or i64 %40, %42
  %44 = icmp sgt i64 %2, 7
  br i1 %8, label %234, label %45

45:                                               ; preds = %6
  br i1 %44, label %46, label %118

46:                                               ; preds = %45
  %47 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %2, %46 ], [ %54, %48 ]
  %50 = phi i64 [ %43, %46 ], [ %94, %48 ]
  %51 = phi i64 [ %26, %46 ], [ %93, %48 ]
  %52 = phi ptr [ %0, %46 ], [ %87, %48 ]
  %53 = phi ptr [ %1, %46 ], [ %116, %48 ]
  %54 = add nsw i64 %49, -8
  %55 = getelementptr inbounds i8, ptr %52, i64 1
  %56 = load i8, ptr %52, align 1, !tbaa !7
  %57 = zext i8 %56 to i64
  %58 = shl nuw nsw i64 %57, 24
  %59 = getelementptr inbounds i8, ptr %52, i64 2
  %60 = load i8, ptr %55, align 1, !tbaa !7
  %61 = zext i8 %60 to i64
  %62 = shl nuw nsw i64 %61, 16
  %63 = or i64 %62, %58
  %64 = getelementptr inbounds i8, ptr %52, i64 3
  %65 = load i8, ptr %59, align 1, !tbaa !7
  %66 = zext i8 %65 to i64
  %67 = shl nuw nsw i64 %66, 8
  %68 = or i64 %63, %67
  %69 = getelementptr inbounds i8, ptr %52, i64 4
  %70 = load i8, ptr %64, align 1, !tbaa !7
  %71 = zext i8 %70 to i64
  %72 = or i64 %68, %71
  %73 = getelementptr inbounds i8, ptr %52, i64 5
  %74 = load i8, ptr %69, align 1, !tbaa !7
  %75 = zext i8 %74 to i64
  %76 = shl nuw nsw i64 %75, 24
  %77 = getelementptr inbounds i8, ptr %52, i64 6
  %78 = load i8, ptr %73, align 1, !tbaa !7
  %79 = zext i8 %78 to i64
  %80 = shl nuw nsw i64 %79, 16
  %81 = or i64 %80, %76
  %82 = getelementptr inbounds i8, ptr %52, i64 7
  %83 = load i8, ptr %77, align 1, !tbaa !7
  %84 = zext i8 %83 to i64
  %85 = shl nuw nsw i64 %84, 8
  %86 = or i64 %81, %85
  %87 = getelementptr inbounds i8, ptr %52, i64 8
  %88 = load i8, ptr %82, align 1, !tbaa !7
  %89 = zext i8 %88 to i64
  %90 = or i64 %86, %89
  %91 = xor i64 %72, %51
  %92 = xor i64 %90, %50
  store i64 %91, ptr %7, align 16, !tbaa !10
  store i64 %92, ptr %47, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #14
  %93 = load i64, ptr %7, align 16, !tbaa !10
  %94 = load i64, ptr %47, align 8, !tbaa !10
  %95 = lshr i64 %93, 24
  %96 = trunc i64 %95 to i8
  %97 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %96, ptr %53, align 1, !tbaa !7
  %98 = lshr i64 %93, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %53, i64 2
  store i8 %99, ptr %97, align 1, !tbaa !7
  %101 = lshr i64 %93, 8
  %102 = trunc i64 %101 to i8
  %103 = getelementptr inbounds i8, ptr %53, i64 3
  store i8 %102, ptr %100, align 1, !tbaa !7
  %104 = trunc i64 %93 to i8
  %105 = getelementptr inbounds i8, ptr %53, i64 4
  store i8 %104, ptr %103, align 1, !tbaa !7
  %106 = lshr i64 %94, 24
  %107 = trunc i64 %106 to i8
  %108 = getelementptr inbounds i8, ptr %53, i64 5
  store i8 %107, ptr %105, align 1, !tbaa !7
  %109 = lshr i64 %94, 16
  %110 = trunc i64 %109 to i8
  %111 = getelementptr inbounds i8, ptr %53, i64 6
  store i8 %110, ptr %108, align 1, !tbaa !7
  %112 = lshr i64 %94, 8
  %113 = trunc i64 %112 to i8
  %114 = getelementptr inbounds i8, ptr %53, i64 7
  store i8 %113, ptr %111, align 1, !tbaa !7
  %115 = trunc i64 %94 to i8
  %116 = getelementptr inbounds i8, ptr %53, i64 8
  store i8 %115, ptr %114, align 1, !tbaa !7
  %117 = icmp ugt i64 %49, 15
  br i1 %117, label %48, label %118, !llvm.loop !12

118:                                              ; preds = %48, %45
  %119 = phi ptr [ %1, %45 ], [ %116, %48 ]
  %120 = phi ptr [ %0, %45 ], [ %87, %48 ]
  %121 = phi i64 [ %26, %45 ], [ %93, %48 ]
  %122 = phi i64 [ %43, %45 ], [ %94, %48 ]
  %123 = phi i64 [ %2, %45 ], [ %54, %48 ]
  %124 = icmp eq i64 %123, 0
  br i1 %124, label %125, label %140

125:                                              ; preds = %118
  %126 = lshr i64 %121, 24
  %127 = trunc i64 %126 to i8
  %128 = lshr i64 %121, 16
  %129 = trunc i64 %128 to i8
  %130 = lshr i64 %121, 8
  %131 = trunc i64 %130 to i8
  %132 = trunc i64 %121 to i8
  %133 = lshr i64 %122, 24
  %134 = trunc i64 %133 to i8
  %135 = lshr i64 %122, 16
  %136 = trunc i64 %135 to i8
  %137 = lshr i64 %122, 8
  %138 = trunc i64 %137 to i8
  %139 = trunc i64 %122 to i8
  br label %225

140:                                              ; preds = %118
  %141 = getelementptr inbounds i8, ptr %120, i64 %123
  switch i64 %123, label %196 [
    i64 1, label %187
    i64 7, label %142
    i64 6, label %147
    i64 5, label %155
    i64 4, label %163
    i64 3, label %169
    i64 2, label %178
  ]

142:                                              ; preds = %140
  %143 = getelementptr inbounds i8, ptr %141, i64 -1
  %144 = load i8, ptr %143, align 1, !tbaa !7
  %145 = zext i8 %144 to i64
  %146 = shl nuw nsw i64 %145, 8
  br label %147

147:                                              ; preds = %142, %140
  %148 = phi ptr [ %141, %140 ], [ %143, %142 ]
  %149 = phi i64 [ 0, %140 ], [ %146, %142 ]
  %150 = getelementptr inbounds i8, ptr %148, i64 -1
  %151 = load i8, ptr %150, align 1, !tbaa !7
  %152 = zext i8 %151 to i64
  %153 = shl nuw nsw i64 %152, 16
  %154 = or i64 %153, %149
  br label %155

155:                                              ; preds = %147, %140
  %156 = phi ptr [ %141, %140 ], [ %150, %147 ]
  %157 = phi i64 [ 0, %140 ], [ %154, %147 ]
  %158 = getelementptr inbounds i8, ptr %156, i64 -1
  %159 = load i8, ptr %158, align 1, !tbaa !7
  %160 = zext i8 %159 to i64
  %161 = shl nuw nsw i64 %160, 24
  %162 = or i64 %161, %157
  br label %163

163:                                              ; preds = %155, %140
  %164 = phi ptr [ %141, %140 ], [ %158, %155 ]
  %165 = phi i64 [ 0, %140 ], [ %162, %155 ]
  %166 = getelementptr inbounds i8, ptr %164, i64 -1
  %167 = load i8, ptr %166, align 1, !tbaa !7
  %168 = zext i8 %167 to i64
  br label %169

169:                                              ; preds = %163, %140
  %170 = phi ptr [ %141, %140 ], [ %166, %163 ]
  %171 = phi i64 [ 0, %140 ], [ %168, %163 ]
  %172 = phi i64 [ 0, %140 ], [ %165, %163 ]
  %173 = getelementptr inbounds i8, ptr %170, i64 -1
  %174 = load i8, ptr %173, align 1, !tbaa !7
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 8
  %177 = or i64 %176, %171
  br label %178

178:                                              ; preds = %169, %140
  %179 = phi ptr [ %141, %140 ], [ %173, %169 ]
  %180 = phi i64 [ 0, %140 ], [ %177, %169 ]
  %181 = phi i64 [ 0, %140 ], [ %172, %169 ]
  %182 = getelementptr inbounds i8, ptr %179, i64 -1
  %183 = load i8, ptr %182, align 1, !tbaa !7
  %184 = zext i8 %183 to i64
  %185 = shl nuw nsw i64 %184, 16
  %186 = or i64 %185, %180
  br label %187

187:                                              ; preds = %178, %140
  %188 = phi ptr [ %141, %140 ], [ %182, %178 ]
  %189 = phi i64 [ 0, %140 ], [ %186, %178 ]
  %190 = phi i64 [ 0, %140 ], [ %181, %178 ]
  %191 = getelementptr inbounds i8, ptr %188, i64 -1
  %192 = load i8, ptr %191, align 1, !tbaa !7
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 24
  %195 = or i64 %194, %189
  br label %196

196:                                              ; preds = %187, %140
  %197 = phi i64 [ 0, %140 ], [ %195, %187 ]
  %198 = phi i64 [ 0, %140 ], [ %190, %187 ]
  %199 = xor i64 %197, %121
  %200 = xor i64 %198, %122
  store i64 %199, ptr %7, align 16, !tbaa !10
  %201 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %200, ptr %201, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 1) #14
  %202 = load i64, ptr %7, align 16, !tbaa !10
  %203 = load i64, ptr %201, align 8, !tbaa !10
  %204 = lshr i64 %202, 24
  %205 = trunc i64 %204 to i8
  %206 = getelementptr inbounds i8, ptr %119, i64 1
  store i8 %205, ptr %119, align 1, !tbaa !7
  %207 = lshr i64 %202, 16
  %208 = trunc i64 %207 to i8
  %209 = getelementptr inbounds i8, ptr %119, i64 2
  store i8 %208, ptr %206, align 1, !tbaa !7
  %210 = lshr i64 %202, 8
  %211 = trunc i64 %210 to i8
  %212 = getelementptr inbounds i8, ptr %119, i64 3
  store i8 %211, ptr %209, align 1, !tbaa !7
  %213 = trunc i64 %202 to i8
  %214 = getelementptr inbounds i8, ptr %119, i64 4
  store i8 %213, ptr %212, align 1, !tbaa !7
  %215 = lshr i64 %203, 24
  %216 = trunc i64 %215 to i8
  %217 = getelementptr inbounds i8, ptr %119, i64 5
  store i8 %216, ptr %214, align 1, !tbaa !7
  %218 = lshr i64 %203, 16
  %219 = trunc i64 %218 to i8
  %220 = getelementptr inbounds i8, ptr %119, i64 6
  store i8 %219, ptr %217, align 1, !tbaa !7
  %221 = lshr i64 %203, 8
  %222 = trunc i64 %221 to i8
  %223 = getelementptr inbounds i8, ptr %119, i64 7
  store i8 %222, ptr %220, align 1, !tbaa !7
  %224 = trunc i64 %203 to i8
  store i8 %224, ptr %223, align 1, !tbaa !7
  br label %225

225:                                              ; preds = %196, %125
  %226 = phi i8 [ %139, %125 ], [ %224, %196 ]
  %227 = phi i8 [ %138, %125 ], [ %222, %196 ]
  %228 = phi i8 [ %136, %125 ], [ %219, %196 ]
  %229 = phi i8 [ %134, %125 ], [ %216, %196 ]
  %230 = phi i8 [ %132, %125 ], [ %213, %196 ]
  %231 = phi i8 [ %131, %125 ], [ %211, %196 ]
  %232 = phi i8 [ %129, %125 ], [ %208, %196 ]
  %233 = phi i8 [ %127, %125 ], [ %205, %196 ]
  store i8 %233, ptr %4, align 1, !tbaa !7
  store i8 %232, ptr %9, align 1, !tbaa !7
  store i8 %231, ptr %13, align 1, !tbaa !7
  store i8 %230, ptr %18, align 1, !tbaa !7
  store i8 %229, ptr %23, align 1, !tbaa !7
  store i8 %228, ptr %27, align 1, !tbaa !7
  store i8 %227, ptr %31, align 1, !tbaa !7
  br label %406

234:                                              ; preds = %6
  br i1 %44, label %235, label %307

235:                                              ; preds = %234
  %236 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  br label %237

237:                                              ; preds = %237, %235
  %238 = phi i64 [ %2, %235 ], [ %243, %237 ]
  %239 = phi i64 [ %43, %235 ], [ %279, %237 ]
  %240 = phi i64 [ %26, %235 ], [ %261, %237 ]
  %241 = phi ptr [ %0, %235 ], [ %276, %237 ]
  %242 = phi ptr [ %1, %235 ], [ %305, %237 ]
  %243 = add nsw i64 %238, -8
  %244 = getelementptr inbounds i8, ptr %241, i64 1
  %245 = load i8, ptr %241, align 1, !tbaa !7
  %246 = zext i8 %245 to i64
  %247 = shl nuw nsw i64 %246, 24
  %248 = getelementptr inbounds i8, ptr %241, i64 2
  %249 = load i8, ptr %244, align 1, !tbaa !7
  %250 = zext i8 %249 to i64
  %251 = shl nuw nsw i64 %250, 16
  %252 = or i64 %251, %247
  %253 = getelementptr inbounds i8, ptr %241, i64 3
  %254 = load i8, ptr %248, align 1, !tbaa !7
  %255 = zext i8 %254 to i64
  %256 = shl nuw nsw i64 %255, 8
  %257 = or i64 %252, %256
  %258 = getelementptr inbounds i8, ptr %241, i64 4
  %259 = load i8, ptr %253, align 1, !tbaa !7
  %260 = zext i8 %259 to i64
  %261 = or i64 %257, %260
  %262 = getelementptr inbounds i8, ptr %241, i64 5
  %263 = load i8, ptr %258, align 1, !tbaa !7
  %264 = zext i8 %263 to i64
  %265 = shl nuw nsw i64 %264, 24
  %266 = getelementptr inbounds i8, ptr %241, i64 6
  %267 = load i8, ptr %262, align 1, !tbaa !7
  %268 = zext i8 %267 to i64
  %269 = shl nuw nsw i64 %268, 16
  %270 = or i64 %269, %265
  %271 = getelementptr inbounds i8, ptr %241, i64 7
  %272 = load i8, ptr %266, align 1, !tbaa !7
  %273 = zext i8 %272 to i64
  %274 = shl nuw nsw i64 %273, 8
  %275 = or i64 %270, %274
  %276 = getelementptr inbounds i8, ptr %241, i64 8
  %277 = load i8, ptr %271, align 1, !tbaa !7
  %278 = zext i8 %277 to i64
  %279 = or i64 %275, %278
  store i64 %261, ptr %7, align 16, !tbaa !10
  store i64 %279, ptr %236, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #14
  %280 = load i64, ptr %7, align 16, !tbaa !10
  %281 = xor i64 %280, %240
  %282 = load i64, ptr %236, align 8, !tbaa !10
  %283 = xor i64 %282, %239
  %284 = lshr i64 %281, 24
  %285 = trunc i64 %284 to i8
  %286 = getelementptr inbounds i8, ptr %242, i64 1
  store i8 %285, ptr %242, align 1, !tbaa !7
  %287 = lshr i64 %281, 16
  %288 = trunc i64 %287 to i8
  %289 = getelementptr inbounds i8, ptr %242, i64 2
  store i8 %288, ptr %286, align 1, !tbaa !7
  %290 = lshr i64 %281, 8
  %291 = trunc i64 %290 to i8
  %292 = getelementptr inbounds i8, ptr %242, i64 3
  store i8 %291, ptr %289, align 1, !tbaa !7
  %293 = trunc i64 %281 to i8
  %294 = getelementptr inbounds i8, ptr %242, i64 4
  store i8 %293, ptr %292, align 1, !tbaa !7
  %295 = lshr i64 %283, 24
  %296 = trunc i64 %295 to i8
  %297 = getelementptr inbounds i8, ptr %242, i64 5
  store i8 %296, ptr %294, align 1, !tbaa !7
  %298 = lshr i64 %283, 16
  %299 = trunc i64 %298 to i8
  %300 = getelementptr inbounds i8, ptr %242, i64 6
  store i8 %299, ptr %297, align 1, !tbaa !7
  %301 = lshr i64 %283, 8
  %302 = trunc i64 %301 to i8
  %303 = getelementptr inbounds i8, ptr %242, i64 7
  store i8 %302, ptr %300, align 1, !tbaa !7
  %304 = trunc i64 %283 to i8
  %305 = getelementptr inbounds i8, ptr %242, i64 8
  store i8 %304, ptr %303, align 1, !tbaa !7
  %306 = icmp ugt i64 %238, 15
  br i1 %306, label %237, label %307, !llvm.loop !14

307:                                              ; preds = %237, %234
  %308 = phi ptr [ %1, %234 ], [ %305, %237 ]
  %309 = phi ptr [ %0, %234 ], [ %276, %237 ]
  %310 = phi i64 [ %26, %234 ], [ %261, %237 ]
  %311 = phi i64 [ %43, %234 ], [ %279, %237 ]
  %312 = phi i64 [ %2, %234 ], [ %243, %237 ]
  %313 = icmp eq i64 %312, 0
  br i1 %313, label %389, label %314

314:                                              ; preds = %307
  %315 = getelementptr inbounds i8, ptr %309, i64 1
  %316 = load i8, ptr %309, align 1, !tbaa !7
  %317 = zext i8 %316 to i64
  %318 = shl nuw nsw i64 %317, 24
  %319 = getelementptr inbounds i8, ptr %309, i64 2
  %320 = load i8, ptr %315, align 1, !tbaa !7
  %321 = zext i8 %320 to i64
  %322 = shl nuw nsw i64 %321, 16
  %323 = or i64 %322, %318
  %324 = getelementptr inbounds i8, ptr %309, i64 3
  %325 = load i8, ptr %319, align 1, !tbaa !7
  %326 = zext i8 %325 to i64
  %327 = shl nuw nsw i64 %326, 8
  %328 = or i64 %323, %327
  %329 = getelementptr inbounds i8, ptr %309, i64 4
  %330 = load i8, ptr %324, align 1, !tbaa !7
  %331 = zext i8 %330 to i64
  %332 = or i64 %328, %331
  %333 = getelementptr inbounds i8, ptr %309, i64 5
  %334 = load i8, ptr %329, align 1, !tbaa !7
  %335 = zext i8 %334 to i64
  %336 = shl nuw nsw i64 %335, 24
  %337 = getelementptr inbounds i8, ptr %309, i64 6
  %338 = load i8, ptr %333, align 1, !tbaa !7
  %339 = zext i8 %338 to i64
  %340 = shl nuw nsw i64 %339, 16
  %341 = or i64 %340, %336
  %342 = getelementptr inbounds i8, ptr %309, i64 7
  %343 = load i8, ptr %337, align 1, !tbaa !7
  %344 = zext i8 %343 to i64
  %345 = shl nuw nsw i64 %344, 8
  %346 = or i64 %341, %345
  %347 = load i8, ptr %342, align 1, !tbaa !7
  %348 = zext i8 %347 to i64
  %349 = or i64 %346, %348
  store i64 %332, ptr %7, align 16, !tbaa !10
  %350 = getelementptr inbounds [2 x i64], ptr %7, i64 0, i64 1
  store i64 %349, ptr %350, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %7, ptr noundef %3, i32 noundef 0) #14
  %351 = load i64, ptr %7, align 16, !tbaa !10
  %352 = xor i64 %351, %310
  %353 = load i64, ptr %350, align 8, !tbaa !10
  %354 = xor i64 %353, %311
  %355 = getelementptr inbounds i8, ptr %308, i64 %312
  switch i64 %312, label %389 [
    i64 1, label %384
    i64 7, label %356
    i64 6, label %360
    i64 5, label %365
    i64 4, label %370
    i64 3, label %374
    i64 2, label %379
  ]

356:                                              ; preds = %314
  %357 = lshr i64 %354, 8
  %358 = trunc i64 %357 to i8
  %359 = getelementptr inbounds i8, ptr %355, i64 -1
  store i8 %358, ptr %359, align 1, !tbaa !7
  br label %360

360:                                              ; preds = %356, %314
  %361 = phi ptr [ %355, %314 ], [ %359, %356 ]
  %362 = lshr i64 %354, 16
  %363 = trunc i64 %362 to i8
  %364 = getelementptr inbounds i8, ptr %361, i64 -1
  store i8 %363, ptr %364, align 1, !tbaa !7
  br label %365

365:                                              ; preds = %360, %314
  %366 = phi ptr [ %355, %314 ], [ %364, %360 ]
  %367 = lshr i64 %354, 24
  %368 = trunc i64 %367 to i8
  %369 = getelementptr inbounds i8, ptr %366, i64 -1
  store i8 %368, ptr %369, align 1, !tbaa !7
  br label %370

370:                                              ; preds = %365, %314
  %371 = phi ptr [ %355, %314 ], [ %369, %365 ]
  %372 = trunc i64 %352 to i8
  %373 = getelementptr inbounds i8, ptr %371, i64 -1
  store i8 %372, ptr %373, align 1, !tbaa !7
  br label %374

374:                                              ; preds = %370, %314
  %375 = phi ptr [ %355, %314 ], [ %373, %370 ]
  %376 = lshr i64 %352, 8
  %377 = trunc i64 %376 to i8
  %378 = getelementptr inbounds i8, ptr %375, i64 -1
  store i8 %377, ptr %378, align 1, !tbaa !7
  br label %379

379:                                              ; preds = %374, %314
  %380 = phi ptr [ %355, %314 ], [ %378, %374 ]
  %381 = lshr i64 %352, 16
  %382 = trunc i64 %381 to i8
  %383 = getelementptr inbounds i8, ptr %380, i64 -1
  store i8 %382, ptr %383, align 1, !tbaa !7
  br label %384

384:                                              ; preds = %379, %314
  %385 = phi ptr [ %355, %314 ], [ %383, %379 ]
  %386 = lshr i64 %352, 24
  %387 = trunc i64 %386 to i8
  %388 = getelementptr inbounds i8, ptr %385, i64 -1
  store i8 %387, ptr %388, align 1, !tbaa !7
  br label %389

389:                                              ; preds = %384, %314, %307
  %390 = phi i64 [ %310, %307 ], [ %332, %384 ], [ %332, %314 ]
  %391 = phi i64 [ %311, %307 ], [ %349, %384 ], [ %349, %314 ]
  %392 = lshr i64 %390, 24
  %393 = trunc i64 %392 to i8
  store i8 %393, ptr %4, align 1, !tbaa !7
  %394 = lshr i64 %390, 16
  %395 = trunc i64 %394 to i8
  store i8 %395, ptr %9, align 1, !tbaa !7
  %396 = lshr i64 %390, 8
  %397 = trunc i64 %396 to i8
  store i8 %397, ptr %13, align 1, !tbaa !7
  %398 = trunc i64 %390 to i8
  store i8 %398, ptr %18, align 1, !tbaa !7
  %399 = lshr i64 %391, 24
  %400 = trunc i64 %399 to i8
  store i8 %400, ptr %23, align 1, !tbaa !7
  %401 = lshr i64 %391, 16
  %402 = trunc i64 %401 to i8
  store i8 %402, ptr %27, align 1, !tbaa !7
  %403 = lshr i64 %391, 8
  %404 = trunc i64 %403 to i8
  store i8 %404, ptr %31, align 1, !tbaa !7
  %405 = trunc i64 %391 to i8
  br label %406

406:                                              ; preds = %389, %225
  %407 = phi i8 [ %405, %389 ], [ %226, %225 ]
  store i8 %407, ptr %36, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal void @BF_cfb64_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5, i32 noundef %6) #0 {
  %8 = alloca [2 x i64], align 16
  %9 = load i32, ptr %5, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %10 = icmp eq i32 %6, 0
  %11 = icmp eq i64 %2, 0
  br i1 %10, label %22, label %12

12:                                               ; preds = %7
  br i1 %11, label %158, label %13

13:                                               ; preds = %12
  %14 = getelementptr inbounds i8, ptr %4, i64 1
  %15 = getelementptr inbounds i8, ptr %4, i64 2
  %16 = getelementptr inbounds i8, ptr %4, i64 3
  %17 = getelementptr inbounds i8, ptr %4, i64 4
  %18 = getelementptr inbounds i8, ptr %4, i64 5
  %19 = getelementptr inbounds i8, ptr %4, i64 6
  %20 = getelementptr inbounds i8, ptr %4, i64 7
  %21 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  br label %32

22:                                               ; preds = %7
  br i1 %11, label %158, label %23

23:                                               ; preds = %22
  %24 = getelementptr inbounds i8, ptr %4, i64 1
  %25 = getelementptr inbounds i8, ptr %4, i64 2
  %26 = getelementptr inbounds i8, ptr %4, i64 3
  %27 = getelementptr inbounds i8, ptr %4, i64 4
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  %29 = getelementptr inbounds i8, ptr %4, i64 6
  %30 = getelementptr inbounds i8, ptr %4, i64 7
  %31 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  br label %95

32:                                               ; preds = %84, %13
  %33 = phi i64 [ %2, %13 ], [ %37, %84 ]
  %34 = phi i32 [ %9, %13 ], [ %93, %84 ]
  %35 = phi ptr [ %0, %13 ], [ %85, %84 ]
  %36 = phi ptr [ %1, %13 ], [ %91, %84 ]
  %37 = add nsw i64 %33, -1
  %38 = icmp eq i32 %34, 0
  br i1 %38, label %39, label %84

39:                                               ; preds = %32
  %40 = load i8, ptr %4, align 1, !tbaa !7
  %41 = zext i8 %40 to i64
  %42 = shl nuw nsw i64 %41, 24
  %43 = load i8, ptr %14, align 1, !tbaa !7
  %44 = zext i8 %43 to i64
  %45 = shl nuw nsw i64 %44, 16
  %46 = or i64 %45, %42
  %47 = load i8, ptr %15, align 1, !tbaa !7
  %48 = zext i8 %47 to i64
  %49 = shl nuw nsw i64 %48, 8
  %50 = or i64 %46, %49
  %51 = load i8, ptr %16, align 1, !tbaa !7
  %52 = zext i8 %51 to i64
  %53 = or i64 %50, %52
  store i64 %53, ptr %8, align 16, !tbaa !10
  %54 = load i8, ptr %17, align 1, !tbaa !7
  %55 = zext i8 %54 to i64
  %56 = shl nuw nsw i64 %55, 24
  %57 = load i8, ptr %18, align 1, !tbaa !7
  %58 = zext i8 %57 to i64
  %59 = shl nuw nsw i64 %58, 16
  %60 = or i64 %59, %56
  %61 = load i8, ptr %19, align 1, !tbaa !7
  %62 = zext i8 %61 to i64
  %63 = shl nuw nsw i64 %62, 8
  %64 = or i64 %60, %63
  %65 = load i8, ptr %20, align 1, !tbaa !7
  %66 = zext i8 %65 to i64
  %67 = or i64 %64, %66
  store i64 %67, ptr %21, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #14
  %68 = load i64, ptr %8, align 16, !tbaa !10
  %69 = lshr i64 %68, 24
  %70 = trunc i64 %69 to i8
  store i8 %70, ptr %4, align 1, !tbaa !7
  %71 = lshr i64 %68, 16
  %72 = trunc i64 %71 to i8
  store i8 %72, ptr %14, align 1, !tbaa !7
  %73 = lshr i64 %68, 8
  %74 = trunc i64 %73 to i8
  store i8 %74, ptr %15, align 1, !tbaa !7
  %75 = trunc i64 %68 to i8
  store i8 %75, ptr %16, align 1, !tbaa !7
  %76 = load i64, ptr %21, align 8, !tbaa !10
  %77 = lshr i64 %76, 24
  %78 = trunc i64 %77 to i8
  store i8 %78, ptr %17, align 1, !tbaa !7
  %79 = lshr i64 %76, 16
  %80 = trunc i64 %79 to i8
  store i8 %80, ptr %18, align 1, !tbaa !7
  %81 = lshr i64 %76, 8
  %82 = trunc i64 %81 to i8
  store i8 %82, ptr %19, align 1, !tbaa !7
  %83 = trunc i64 %76 to i8
  store i8 %83, ptr %20, align 1, !tbaa !7
  br label %84

84:                                               ; preds = %39, %32
  %85 = getelementptr inbounds i8, ptr %35, i64 1
  %86 = load i8, ptr %35, align 1, !tbaa !7
  %87 = sext i32 %34 to i64
  %88 = getelementptr inbounds i8, ptr %4, i64 %87
  %89 = load i8, ptr %88, align 1, !tbaa !7
  %90 = xor i8 %89, %86
  %91 = getelementptr inbounds i8, ptr %36, i64 1
  store i8 %90, ptr %36, align 1, !tbaa !7
  store i8 %90, ptr %88, align 1, !tbaa !7
  %92 = add nsw i32 %34, 1
  %93 = and i32 %92, 7
  %94 = icmp eq i64 %37, 0
  br i1 %94, label %158, label %32, !llvm.loop !17

95:                                               ; preds = %147, %23
  %96 = phi i64 [ %2, %23 ], [ %100, %147 ]
  %97 = phi i32 [ %9, %23 ], [ %156, %147 ]
  %98 = phi ptr [ %0, %23 ], [ %148, %147 ]
  %99 = phi ptr [ %1, %23 ], [ %154, %147 ]
  %100 = add nsw i64 %96, -1
  %101 = icmp eq i32 %97, 0
  br i1 %101, label %102, label %147

102:                                              ; preds = %95
  %103 = load i8, ptr %4, align 1, !tbaa !7
  %104 = zext i8 %103 to i64
  %105 = shl nuw nsw i64 %104, 24
  %106 = load i8, ptr %24, align 1, !tbaa !7
  %107 = zext i8 %106 to i64
  %108 = shl nuw nsw i64 %107, 16
  %109 = or i64 %108, %105
  %110 = load i8, ptr %25, align 1, !tbaa !7
  %111 = zext i8 %110 to i64
  %112 = shl nuw nsw i64 %111, 8
  %113 = or i64 %109, %112
  %114 = load i8, ptr %26, align 1, !tbaa !7
  %115 = zext i8 %114 to i64
  %116 = or i64 %113, %115
  store i64 %116, ptr %8, align 16, !tbaa !10
  %117 = load i8, ptr %27, align 1, !tbaa !7
  %118 = zext i8 %117 to i64
  %119 = shl nuw nsw i64 %118, 24
  %120 = load i8, ptr %28, align 1, !tbaa !7
  %121 = zext i8 %120 to i64
  %122 = shl nuw nsw i64 %121, 16
  %123 = or i64 %122, %119
  %124 = load i8, ptr %29, align 1, !tbaa !7
  %125 = zext i8 %124 to i64
  %126 = shl nuw nsw i64 %125, 8
  %127 = or i64 %123, %126
  %128 = load i8, ptr %30, align 1, !tbaa !7
  %129 = zext i8 %128 to i64
  %130 = or i64 %127, %129
  store i64 %130, ptr %31, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #14
  %131 = load i64, ptr %8, align 16, !tbaa !10
  %132 = lshr i64 %131, 24
  %133 = trunc i64 %132 to i8
  store i8 %133, ptr %4, align 1, !tbaa !7
  %134 = lshr i64 %131, 16
  %135 = trunc i64 %134 to i8
  store i8 %135, ptr %24, align 1, !tbaa !7
  %136 = lshr i64 %131, 8
  %137 = trunc i64 %136 to i8
  store i8 %137, ptr %25, align 1, !tbaa !7
  %138 = trunc i64 %131 to i8
  store i8 %138, ptr %26, align 1, !tbaa !7
  %139 = load i64, ptr %31, align 8, !tbaa !10
  %140 = lshr i64 %139, 24
  %141 = trunc i64 %140 to i8
  store i8 %141, ptr %27, align 1, !tbaa !7
  %142 = lshr i64 %139, 16
  %143 = trunc i64 %142 to i8
  store i8 %143, ptr %28, align 1, !tbaa !7
  %144 = lshr i64 %139, 8
  %145 = trunc i64 %144 to i8
  store i8 %145, ptr %29, align 1, !tbaa !7
  %146 = trunc i64 %139 to i8
  store i8 %146, ptr %30, align 1, !tbaa !7
  br label %147

147:                                              ; preds = %102, %95
  %148 = getelementptr inbounds i8, ptr %98, i64 1
  %149 = load i8, ptr %98, align 1, !tbaa !7
  %150 = sext i32 %97 to i64
  %151 = getelementptr inbounds i8, ptr %4, i64 %150
  %152 = load i8, ptr %151, align 1, !tbaa !7
  store i8 %149, ptr %151, align 1, !tbaa !7
  %153 = xor i8 %152, %149
  %154 = getelementptr inbounds i8, ptr %99, i64 1
  store i8 %153, ptr %99, align 1, !tbaa !7
  %155 = add nsw i32 %97, 1
  %156 = and i32 %155, 7
  %157 = icmp eq i64 %100, 0
  br i1 %157, label %158, label %95, !llvm.loop !18

158:                                              ; preds = %147, %84, %22, %12
  %159 = phi i32 [ %9, %22 ], [ %9, %12 ], [ %156, %147 ], [ %93, %84 ]
  store i32 %159, ptr %5, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BF_ecb_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, ptr noundef %2, i32 noundef %3) #0 {
  %5 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %5) #13
  %6 = getelementptr inbounds i8, ptr %0, i64 1
  %7 = load i8, ptr %0, align 1, !tbaa !7
  %8 = zext i8 %7 to i64
  %9 = shl nuw nsw i64 %8, 24
  %10 = getelementptr inbounds i8, ptr %0, i64 2
  %11 = load i8, ptr %6, align 1, !tbaa !7
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 16
  %14 = or i64 %13, %9
  %15 = getelementptr inbounds i8, ptr %0, i64 3
  %16 = load i8, ptr %10, align 1, !tbaa !7
  %17 = zext i8 %16 to i64
  %18 = shl nuw nsw i64 %17, 8
  %19 = or i64 %14, %18
  %20 = getelementptr inbounds i8, ptr %0, i64 4
  %21 = load i8, ptr %15, align 1, !tbaa !7
  %22 = zext i8 %21 to i64
  %23 = or i64 %19, %22
  store i64 %23, ptr %5, align 16, !tbaa !10
  %24 = getelementptr inbounds i8, ptr %0, i64 5
  %25 = load i8, ptr %20, align 1, !tbaa !7
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 24
  %28 = getelementptr inbounds i8, ptr %0, i64 6
  %29 = load i8, ptr %24, align 1, !tbaa !7
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 16
  %32 = or i64 %31, %27
  %33 = getelementptr inbounds i8, ptr %0, i64 7
  %34 = load i8, ptr %28, align 1, !tbaa !7
  %35 = zext i8 %34 to i64
  %36 = shl nuw nsw i64 %35, 8
  %37 = or i64 %32, %36
  %38 = load i8, ptr %33, align 1, !tbaa !7
  %39 = zext i8 %38 to i64
  %40 = or i64 %37, %39
  %41 = getelementptr inbounds [2 x i64], ptr %5, i64 0, i64 1
  store i64 %40, ptr %41, align 8, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %5, ptr noundef %2, i32 noundef %3) #14
  %42 = load i64, ptr %5, align 16, !tbaa !10
  %43 = lshr i64 %42, 24
  %44 = trunc i64 %43 to i8
  %45 = getelementptr inbounds i8, ptr %1, i64 1
  store i8 %44, ptr %1, align 1, !tbaa !7
  %46 = lshr i64 %42, 16
  %47 = trunc i64 %46 to i8
  %48 = getelementptr inbounds i8, ptr %1, i64 2
  store i8 %47, ptr %45, align 1, !tbaa !7
  %49 = lshr i64 %42, 8
  %50 = trunc i64 %49 to i8
  %51 = getelementptr inbounds i8, ptr %1, i64 3
  store i8 %50, ptr %48, align 1, !tbaa !7
  %52 = trunc i64 %42 to i8
  %53 = getelementptr inbounds i8, ptr %1, i64 4
  store i8 %52, ptr %51, align 1, !tbaa !7
  %54 = load i64, ptr %41, align 8, !tbaa !10
  %55 = lshr i64 %54, 24
  %56 = trunc i64 %55 to i8
  %57 = getelementptr inbounds i8, ptr %1, i64 5
  store i8 %56, ptr %53, align 1, !tbaa !7
  %58 = lshr i64 %54, 16
  %59 = trunc i64 %58 to i8
  %60 = getelementptr inbounds i8, ptr %1, i64 6
  store i8 %59, ptr %57, align 1, !tbaa !7
  %61 = lshr i64 %54, 8
  %62 = trunc i64 %61 to i8
  %63 = getelementptr inbounds i8, ptr %1, i64 7
  store i8 %62, ptr %60, align 1, !tbaa !7
  %64 = trunc i64 %54 to i8
  store i8 %64, ptr %63, align 1, !tbaa !7
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %5) #13
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @BF_encrypt(ptr nocapture noundef %0, ptr noundef readonly %1, i32 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.bf_key_st, ptr %1, i64 0, i32 1
  %5 = load i64, ptr %0, align 8, !tbaa !10
  %6 = getelementptr inbounds i64, ptr %0, i64 1
  %7 = load i64, ptr %6, align 8, !tbaa !10
  %8 = icmp eq i32 %2, 0
  br i1 %8, label %413, label %9

9:                                                ; preds = %3
  %10 = load i64, ptr %1, align 8, !tbaa !10
  %11 = xor i64 %10, %5
  %12 = getelementptr inbounds i64, ptr %1, i64 1
  %13 = load i64, ptr %12, align 8, !tbaa !10
  %14 = lshr i64 %11, 24
  %15 = getelementptr inbounds i64, ptr %4, i64 %14
  %16 = load i64, ptr %15, align 8, !tbaa !10
  %17 = lshr i64 %11, 16
  %18 = and i64 %17, 255
  %19 = or i64 %18, 256
  %20 = getelementptr inbounds i64, ptr %4, i64 %19
  %21 = load i64, ptr %20, align 8, !tbaa !10
  %22 = add i64 %21, %16
  %23 = lshr i64 %11, 8
  %24 = and i64 %23, 255
  %25 = or i64 %24, 512
  %26 = getelementptr inbounds i64, ptr %4, i64 %25
  %27 = load i64, ptr %26, align 8, !tbaa !10
  %28 = xor i64 %22, %27
  %29 = and i64 %11, 255
  %30 = or i64 %29, 768
  %31 = getelementptr inbounds i64, ptr %4, i64 %30
  %32 = load i64, ptr %31, align 8, !tbaa !10
  %33 = add i64 %28, %32
  %34 = and i64 %33, 4294967295
  %35 = xor i64 %13, %34
  %36 = xor i64 %35, %7
  %37 = getelementptr inbounds i64, ptr %1, i64 2
  %38 = load i64, ptr %37, align 8, !tbaa !10
  %39 = lshr i64 %36, 24
  %40 = getelementptr inbounds i64, ptr %4, i64 %39
  %41 = load i64, ptr %40, align 8, !tbaa !10
  %42 = lshr i64 %36, 16
  %43 = and i64 %42, 255
  %44 = or i64 %43, 256
  %45 = getelementptr inbounds i64, ptr %4, i64 %44
  %46 = load i64, ptr %45, align 8, !tbaa !10
  %47 = add i64 %46, %41
  %48 = lshr i64 %36, 8
  %49 = and i64 %48, 255
  %50 = or i64 %49, 512
  %51 = getelementptr inbounds i64, ptr %4, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !10
  %53 = xor i64 %47, %52
  %54 = and i64 %36, 255
  %55 = or i64 %54, 768
  %56 = getelementptr inbounds i64, ptr %4, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !10
  %58 = add i64 %53, %57
  %59 = and i64 %58, 4294967295
  %60 = xor i64 %38, %59
  %61 = xor i64 %60, %11
  %62 = getelementptr inbounds i64, ptr %1, i64 3
  %63 = load i64, ptr %62, align 8, !tbaa !10
  %64 = lshr i64 %61, 24
  %65 = getelementptr inbounds i64, ptr %4, i64 %64
  %66 = load i64, ptr %65, align 8, !tbaa !10
  %67 = lshr i64 %61, 16
  %68 = and i64 %67, 255
  %69 = or i64 %68, 256
  %70 = getelementptr inbounds i64, ptr %4, i64 %69
  %71 = load i64, ptr %70, align 8, !tbaa !10
  %72 = add i64 %71, %66
  %73 = lshr i64 %61, 8
  %74 = and i64 %73, 255
  %75 = or i64 %74, 512
  %76 = getelementptr inbounds i64, ptr %4, i64 %75
  %77 = load i64, ptr %76, align 8, !tbaa !10
  %78 = xor i64 %72, %77
  %79 = and i64 %61, 255
  %80 = or i64 %79, 768
  %81 = getelementptr inbounds i64, ptr %4, i64 %80
  %82 = load i64, ptr %81, align 8, !tbaa !10
  %83 = add i64 %78, %82
  %84 = and i64 %83, 4294967295
  %85 = xor i64 %63, %84
  %86 = xor i64 %85, %36
  %87 = getelementptr inbounds i64, ptr %1, i64 4
  %88 = load i64, ptr %87, align 8, !tbaa !10
  %89 = lshr i64 %86, 24
  %90 = getelementptr inbounds i64, ptr %4, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !10
  %92 = lshr i64 %86, 16
  %93 = and i64 %92, 255
  %94 = or i64 %93, 256
  %95 = getelementptr inbounds i64, ptr %4, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !10
  %97 = add i64 %96, %91
  %98 = lshr i64 %86, 8
  %99 = and i64 %98, 255
  %100 = or i64 %99, 512
  %101 = getelementptr inbounds i64, ptr %4, i64 %100
  %102 = load i64, ptr %101, align 8, !tbaa !10
  %103 = xor i64 %97, %102
  %104 = and i64 %86, 255
  %105 = or i64 %104, 768
  %106 = getelementptr inbounds i64, ptr %4, i64 %105
  %107 = load i64, ptr %106, align 8, !tbaa !10
  %108 = add i64 %103, %107
  %109 = and i64 %108, 4294967295
  %110 = xor i64 %88, %109
  %111 = xor i64 %110, %61
  %112 = getelementptr inbounds i64, ptr %1, i64 5
  %113 = load i64, ptr %112, align 8, !tbaa !10
  %114 = lshr i64 %111, 24
  %115 = getelementptr inbounds i64, ptr %4, i64 %114
  %116 = load i64, ptr %115, align 8, !tbaa !10
  %117 = lshr i64 %111, 16
  %118 = and i64 %117, 255
  %119 = or i64 %118, 256
  %120 = getelementptr inbounds i64, ptr %4, i64 %119
  %121 = load i64, ptr %120, align 8, !tbaa !10
  %122 = add i64 %121, %116
  %123 = lshr i64 %111, 8
  %124 = and i64 %123, 255
  %125 = or i64 %124, 512
  %126 = getelementptr inbounds i64, ptr %4, i64 %125
  %127 = load i64, ptr %126, align 8, !tbaa !10
  %128 = xor i64 %122, %127
  %129 = and i64 %111, 255
  %130 = or i64 %129, 768
  %131 = getelementptr inbounds i64, ptr %4, i64 %130
  %132 = load i64, ptr %131, align 8, !tbaa !10
  %133 = add i64 %128, %132
  %134 = and i64 %133, 4294967295
  %135 = xor i64 %113, %134
  %136 = xor i64 %135, %86
  %137 = getelementptr inbounds i64, ptr %1, i64 6
  %138 = load i64, ptr %137, align 8, !tbaa !10
  %139 = lshr i64 %136, 24
  %140 = getelementptr inbounds i64, ptr %4, i64 %139
  %141 = load i64, ptr %140, align 8, !tbaa !10
  %142 = lshr i64 %136, 16
  %143 = and i64 %142, 255
  %144 = or i64 %143, 256
  %145 = getelementptr inbounds i64, ptr %4, i64 %144
  %146 = load i64, ptr %145, align 8, !tbaa !10
  %147 = add i64 %146, %141
  %148 = lshr i64 %136, 8
  %149 = and i64 %148, 255
  %150 = or i64 %149, 512
  %151 = getelementptr inbounds i64, ptr %4, i64 %150
  %152 = load i64, ptr %151, align 8, !tbaa !10
  %153 = xor i64 %147, %152
  %154 = and i64 %136, 255
  %155 = or i64 %154, 768
  %156 = getelementptr inbounds i64, ptr %4, i64 %155
  %157 = load i64, ptr %156, align 8, !tbaa !10
  %158 = add i64 %153, %157
  %159 = and i64 %158, 4294967295
  %160 = xor i64 %138, %159
  %161 = xor i64 %160, %111
  %162 = getelementptr inbounds i64, ptr %1, i64 7
  %163 = load i64, ptr %162, align 8, !tbaa !10
  %164 = lshr i64 %161, 24
  %165 = getelementptr inbounds i64, ptr %4, i64 %164
  %166 = load i64, ptr %165, align 8, !tbaa !10
  %167 = lshr i64 %161, 16
  %168 = and i64 %167, 255
  %169 = or i64 %168, 256
  %170 = getelementptr inbounds i64, ptr %4, i64 %169
  %171 = load i64, ptr %170, align 8, !tbaa !10
  %172 = add i64 %171, %166
  %173 = lshr i64 %161, 8
  %174 = and i64 %173, 255
  %175 = or i64 %174, 512
  %176 = getelementptr inbounds i64, ptr %4, i64 %175
  %177 = load i64, ptr %176, align 8, !tbaa !10
  %178 = xor i64 %172, %177
  %179 = and i64 %161, 255
  %180 = or i64 %179, 768
  %181 = getelementptr inbounds i64, ptr %4, i64 %180
  %182 = load i64, ptr %181, align 8, !tbaa !10
  %183 = add i64 %178, %182
  %184 = and i64 %183, 4294967295
  %185 = xor i64 %163, %184
  %186 = xor i64 %185, %136
  %187 = getelementptr inbounds i64, ptr %1, i64 8
  %188 = load i64, ptr %187, align 8, !tbaa !10
  %189 = lshr i64 %186, 24
  %190 = getelementptr inbounds i64, ptr %4, i64 %189
  %191 = load i64, ptr %190, align 8, !tbaa !10
  %192 = lshr i64 %186, 16
  %193 = and i64 %192, 255
  %194 = or i64 %193, 256
  %195 = getelementptr inbounds i64, ptr %4, i64 %194
  %196 = load i64, ptr %195, align 8, !tbaa !10
  %197 = add i64 %196, %191
  %198 = lshr i64 %186, 8
  %199 = and i64 %198, 255
  %200 = or i64 %199, 512
  %201 = getelementptr inbounds i64, ptr %4, i64 %200
  %202 = load i64, ptr %201, align 8, !tbaa !10
  %203 = xor i64 %197, %202
  %204 = and i64 %186, 255
  %205 = or i64 %204, 768
  %206 = getelementptr inbounds i64, ptr %4, i64 %205
  %207 = load i64, ptr %206, align 8, !tbaa !10
  %208 = add i64 %203, %207
  %209 = and i64 %208, 4294967295
  %210 = xor i64 %188, %209
  %211 = xor i64 %210, %161
  %212 = getelementptr inbounds i64, ptr %1, i64 9
  %213 = load i64, ptr %212, align 8, !tbaa !10
  %214 = lshr i64 %211, 24
  %215 = getelementptr inbounds i64, ptr %4, i64 %214
  %216 = load i64, ptr %215, align 8, !tbaa !10
  %217 = lshr i64 %211, 16
  %218 = and i64 %217, 255
  %219 = or i64 %218, 256
  %220 = getelementptr inbounds i64, ptr %4, i64 %219
  %221 = load i64, ptr %220, align 8, !tbaa !10
  %222 = add i64 %221, %216
  %223 = lshr i64 %211, 8
  %224 = and i64 %223, 255
  %225 = or i64 %224, 512
  %226 = getelementptr inbounds i64, ptr %4, i64 %225
  %227 = load i64, ptr %226, align 8, !tbaa !10
  %228 = xor i64 %222, %227
  %229 = and i64 %211, 255
  %230 = or i64 %229, 768
  %231 = getelementptr inbounds i64, ptr %4, i64 %230
  %232 = load i64, ptr %231, align 8, !tbaa !10
  %233 = add i64 %228, %232
  %234 = and i64 %233, 4294967295
  %235 = xor i64 %213, %234
  %236 = xor i64 %235, %186
  %237 = getelementptr inbounds i64, ptr %1, i64 10
  %238 = load i64, ptr %237, align 8, !tbaa !10
  %239 = lshr i64 %236, 24
  %240 = getelementptr inbounds i64, ptr %4, i64 %239
  %241 = load i64, ptr %240, align 8, !tbaa !10
  %242 = lshr i64 %236, 16
  %243 = and i64 %242, 255
  %244 = or i64 %243, 256
  %245 = getelementptr inbounds i64, ptr %4, i64 %244
  %246 = load i64, ptr %245, align 8, !tbaa !10
  %247 = add i64 %246, %241
  %248 = lshr i64 %236, 8
  %249 = and i64 %248, 255
  %250 = or i64 %249, 512
  %251 = getelementptr inbounds i64, ptr %4, i64 %250
  %252 = load i64, ptr %251, align 8, !tbaa !10
  %253 = xor i64 %247, %252
  %254 = and i64 %236, 255
  %255 = or i64 %254, 768
  %256 = getelementptr inbounds i64, ptr %4, i64 %255
  %257 = load i64, ptr %256, align 8, !tbaa !10
  %258 = add i64 %253, %257
  %259 = and i64 %258, 4294967295
  %260 = xor i64 %238, %259
  %261 = xor i64 %260, %211
  %262 = getelementptr inbounds i64, ptr %1, i64 11
  %263 = load i64, ptr %262, align 8, !tbaa !10
  %264 = lshr i64 %261, 24
  %265 = getelementptr inbounds i64, ptr %4, i64 %264
  %266 = load i64, ptr %265, align 8, !tbaa !10
  %267 = lshr i64 %261, 16
  %268 = and i64 %267, 255
  %269 = or i64 %268, 256
  %270 = getelementptr inbounds i64, ptr %4, i64 %269
  %271 = load i64, ptr %270, align 8, !tbaa !10
  %272 = add i64 %271, %266
  %273 = lshr i64 %261, 8
  %274 = and i64 %273, 255
  %275 = or i64 %274, 512
  %276 = getelementptr inbounds i64, ptr %4, i64 %275
  %277 = load i64, ptr %276, align 8, !tbaa !10
  %278 = xor i64 %272, %277
  %279 = and i64 %261, 255
  %280 = or i64 %279, 768
  %281 = getelementptr inbounds i64, ptr %4, i64 %280
  %282 = load i64, ptr %281, align 8, !tbaa !10
  %283 = add i64 %278, %282
  %284 = and i64 %283, 4294967295
  %285 = xor i64 %263, %284
  %286 = xor i64 %285, %236
  %287 = getelementptr inbounds i64, ptr %1, i64 12
  %288 = load i64, ptr %287, align 8, !tbaa !10
  %289 = lshr i64 %286, 24
  %290 = getelementptr inbounds i64, ptr %4, i64 %289
  %291 = load i64, ptr %290, align 8, !tbaa !10
  %292 = lshr i64 %286, 16
  %293 = and i64 %292, 255
  %294 = or i64 %293, 256
  %295 = getelementptr inbounds i64, ptr %4, i64 %294
  %296 = load i64, ptr %295, align 8, !tbaa !10
  %297 = add i64 %296, %291
  %298 = lshr i64 %286, 8
  %299 = and i64 %298, 255
  %300 = or i64 %299, 512
  %301 = getelementptr inbounds i64, ptr %4, i64 %300
  %302 = load i64, ptr %301, align 8, !tbaa !10
  %303 = xor i64 %297, %302
  %304 = and i64 %286, 255
  %305 = or i64 %304, 768
  %306 = getelementptr inbounds i64, ptr %4, i64 %305
  %307 = load i64, ptr %306, align 8, !tbaa !10
  %308 = add i64 %303, %307
  %309 = and i64 %308, 4294967295
  %310 = xor i64 %288, %309
  %311 = xor i64 %310, %261
  %312 = getelementptr inbounds i64, ptr %1, i64 13
  %313 = load i64, ptr %312, align 8, !tbaa !10
  %314 = lshr i64 %311, 24
  %315 = getelementptr inbounds i64, ptr %4, i64 %314
  %316 = load i64, ptr %315, align 8, !tbaa !10
  %317 = lshr i64 %311, 16
  %318 = and i64 %317, 255
  %319 = or i64 %318, 256
  %320 = getelementptr inbounds i64, ptr %4, i64 %319
  %321 = load i64, ptr %320, align 8, !tbaa !10
  %322 = add i64 %321, %316
  %323 = lshr i64 %311, 8
  %324 = and i64 %323, 255
  %325 = or i64 %324, 512
  %326 = getelementptr inbounds i64, ptr %4, i64 %325
  %327 = load i64, ptr %326, align 8, !tbaa !10
  %328 = xor i64 %322, %327
  %329 = and i64 %311, 255
  %330 = or i64 %329, 768
  %331 = getelementptr inbounds i64, ptr %4, i64 %330
  %332 = load i64, ptr %331, align 8, !tbaa !10
  %333 = add i64 %328, %332
  %334 = and i64 %333, 4294967295
  %335 = xor i64 %313, %334
  %336 = xor i64 %335, %286
  %337 = getelementptr inbounds i64, ptr %1, i64 14
  %338 = load i64, ptr %337, align 8, !tbaa !10
  %339 = lshr i64 %336, 24
  %340 = getelementptr inbounds i64, ptr %4, i64 %339
  %341 = load i64, ptr %340, align 8, !tbaa !10
  %342 = lshr i64 %336, 16
  %343 = and i64 %342, 255
  %344 = or i64 %343, 256
  %345 = getelementptr inbounds i64, ptr %4, i64 %344
  %346 = load i64, ptr %345, align 8, !tbaa !10
  %347 = add i64 %346, %341
  %348 = lshr i64 %336, 8
  %349 = and i64 %348, 255
  %350 = or i64 %349, 512
  %351 = getelementptr inbounds i64, ptr %4, i64 %350
  %352 = load i64, ptr %351, align 8, !tbaa !10
  %353 = xor i64 %347, %352
  %354 = and i64 %336, 255
  %355 = or i64 %354, 768
  %356 = getelementptr inbounds i64, ptr %4, i64 %355
  %357 = load i64, ptr %356, align 8, !tbaa !10
  %358 = add i64 %353, %357
  %359 = and i64 %358, 4294967295
  %360 = xor i64 %338, %359
  %361 = xor i64 %360, %311
  %362 = getelementptr inbounds i64, ptr %1, i64 15
  %363 = load i64, ptr %362, align 8, !tbaa !10
  %364 = lshr i64 %361, 24
  %365 = getelementptr inbounds i64, ptr %4, i64 %364
  %366 = load i64, ptr %365, align 8, !tbaa !10
  %367 = lshr i64 %361, 16
  %368 = and i64 %367, 255
  %369 = or i64 %368, 256
  %370 = getelementptr inbounds i64, ptr %4, i64 %369
  %371 = load i64, ptr %370, align 8, !tbaa !10
  %372 = add i64 %371, %366
  %373 = lshr i64 %361, 8
  %374 = and i64 %373, 255
  %375 = or i64 %374, 512
  %376 = getelementptr inbounds i64, ptr %4, i64 %375
  %377 = load i64, ptr %376, align 8, !tbaa !10
  %378 = xor i64 %372, %377
  %379 = and i64 %361, 255
  %380 = or i64 %379, 768
  %381 = getelementptr inbounds i64, ptr %4, i64 %380
  %382 = load i64, ptr %381, align 8, !tbaa !10
  %383 = add i64 %378, %382
  %384 = and i64 %383, 4294967295
  %385 = xor i64 %363, %384
  %386 = xor i64 %385, %336
  %387 = getelementptr inbounds i64, ptr %1, i64 16
  %388 = load i64, ptr %387, align 8, !tbaa !10
  %389 = lshr i64 %386, 24
  %390 = getelementptr inbounds i64, ptr %4, i64 %389
  %391 = load i64, ptr %390, align 8, !tbaa !10
  %392 = lshr i64 %386, 16
  %393 = and i64 %392, 255
  %394 = or i64 %393, 256
  %395 = getelementptr inbounds i64, ptr %4, i64 %394
  %396 = load i64, ptr %395, align 8, !tbaa !10
  %397 = add i64 %396, %391
  %398 = lshr i64 %386, 8
  %399 = and i64 %398, 255
  %400 = or i64 %399, 512
  %401 = getelementptr inbounds i64, ptr %4, i64 %400
  %402 = load i64, ptr %401, align 8, !tbaa !10
  %403 = xor i64 %397, %402
  %404 = and i64 %386, 255
  %405 = or i64 %404, 768
  %406 = getelementptr inbounds i64, ptr %4, i64 %405
  %407 = load i64, ptr %406, align 8, !tbaa !10
  %408 = add i64 %403, %407
  %409 = and i64 %408, 4294967295
  %410 = xor i64 %388, %409
  %411 = xor i64 %410, %361
  %412 = getelementptr inbounds i64, ptr %1, i64 17
  br label %817

413:                                              ; preds = %3
  %414 = getelementptr inbounds i64, ptr %1, i64 17
  %415 = load i64, ptr %414, align 8, !tbaa !10
  %416 = xor i64 %415, %5
  %417 = getelementptr inbounds i64, ptr %1, i64 16
  %418 = load i64, ptr %417, align 8, !tbaa !10
  %419 = lshr i64 %416, 24
  %420 = getelementptr inbounds i64, ptr %4, i64 %419
  %421 = load i64, ptr %420, align 8, !tbaa !10
  %422 = lshr i64 %416, 16
  %423 = and i64 %422, 255
  %424 = or i64 %423, 256
  %425 = getelementptr inbounds i64, ptr %4, i64 %424
  %426 = load i64, ptr %425, align 8, !tbaa !10
  %427 = add i64 %426, %421
  %428 = lshr i64 %416, 8
  %429 = and i64 %428, 255
  %430 = or i64 %429, 512
  %431 = getelementptr inbounds i64, ptr %4, i64 %430
  %432 = load i64, ptr %431, align 8, !tbaa !10
  %433 = xor i64 %427, %432
  %434 = and i64 %416, 255
  %435 = or i64 %434, 768
  %436 = getelementptr inbounds i64, ptr %4, i64 %435
  %437 = load i64, ptr %436, align 8, !tbaa !10
  %438 = add i64 %433, %437
  %439 = and i64 %438, 4294967295
  %440 = xor i64 %418, %439
  %441 = xor i64 %440, %7
  %442 = getelementptr inbounds i64, ptr %1, i64 15
  %443 = load i64, ptr %442, align 8, !tbaa !10
  %444 = lshr i64 %441, 24
  %445 = getelementptr inbounds i64, ptr %4, i64 %444
  %446 = load i64, ptr %445, align 8, !tbaa !10
  %447 = lshr i64 %441, 16
  %448 = and i64 %447, 255
  %449 = or i64 %448, 256
  %450 = getelementptr inbounds i64, ptr %4, i64 %449
  %451 = load i64, ptr %450, align 8, !tbaa !10
  %452 = add i64 %451, %446
  %453 = lshr i64 %441, 8
  %454 = and i64 %453, 255
  %455 = or i64 %454, 512
  %456 = getelementptr inbounds i64, ptr %4, i64 %455
  %457 = load i64, ptr %456, align 8, !tbaa !10
  %458 = xor i64 %452, %457
  %459 = and i64 %441, 255
  %460 = or i64 %459, 768
  %461 = getelementptr inbounds i64, ptr %4, i64 %460
  %462 = load i64, ptr %461, align 8, !tbaa !10
  %463 = add i64 %458, %462
  %464 = and i64 %463, 4294967295
  %465 = xor i64 %443, %464
  %466 = xor i64 %465, %416
  %467 = getelementptr inbounds i64, ptr %1, i64 14
  %468 = load i64, ptr %467, align 8, !tbaa !10
  %469 = lshr i64 %466, 24
  %470 = getelementptr inbounds i64, ptr %4, i64 %469
  %471 = load i64, ptr %470, align 8, !tbaa !10
  %472 = lshr i64 %466, 16
  %473 = and i64 %472, 255
  %474 = or i64 %473, 256
  %475 = getelementptr inbounds i64, ptr %4, i64 %474
  %476 = load i64, ptr %475, align 8, !tbaa !10
  %477 = add i64 %476, %471
  %478 = lshr i64 %466, 8
  %479 = and i64 %478, 255
  %480 = or i64 %479, 512
  %481 = getelementptr inbounds i64, ptr %4, i64 %480
  %482 = load i64, ptr %481, align 8, !tbaa !10
  %483 = xor i64 %477, %482
  %484 = and i64 %466, 255
  %485 = or i64 %484, 768
  %486 = getelementptr inbounds i64, ptr %4, i64 %485
  %487 = load i64, ptr %486, align 8, !tbaa !10
  %488 = add i64 %483, %487
  %489 = and i64 %488, 4294967295
  %490 = xor i64 %468, %489
  %491 = xor i64 %490, %441
  %492 = getelementptr inbounds i64, ptr %1, i64 13
  %493 = load i64, ptr %492, align 8, !tbaa !10
  %494 = lshr i64 %491, 24
  %495 = getelementptr inbounds i64, ptr %4, i64 %494
  %496 = load i64, ptr %495, align 8, !tbaa !10
  %497 = lshr i64 %491, 16
  %498 = and i64 %497, 255
  %499 = or i64 %498, 256
  %500 = getelementptr inbounds i64, ptr %4, i64 %499
  %501 = load i64, ptr %500, align 8, !tbaa !10
  %502 = add i64 %501, %496
  %503 = lshr i64 %491, 8
  %504 = and i64 %503, 255
  %505 = or i64 %504, 512
  %506 = getelementptr inbounds i64, ptr %4, i64 %505
  %507 = load i64, ptr %506, align 8, !tbaa !10
  %508 = xor i64 %502, %507
  %509 = and i64 %491, 255
  %510 = or i64 %509, 768
  %511 = getelementptr inbounds i64, ptr %4, i64 %510
  %512 = load i64, ptr %511, align 8, !tbaa !10
  %513 = add i64 %508, %512
  %514 = and i64 %513, 4294967295
  %515 = xor i64 %493, %514
  %516 = xor i64 %515, %466
  %517 = getelementptr inbounds i64, ptr %1, i64 12
  %518 = load i64, ptr %517, align 8, !tbaa !10
  %519 = lshr i64 %516, 24
  %520 = getelementptr inbounds i64, ptr %4, i64 %519
  %521 = load i64, ptr %520, align 8, !tbaa !10
  %522 = lshr i64 %516, 16
  %523 = and i64 %522, 255
  %524 = or i64 %523, 256
  %525 = getelementptr inbounds i64, ptr %4, i64 %524
  %526 = load i64, ptr %525, align 8, !tbaa !10
  %527 = add i64 %526, %521
  %528 = lshr i64 %516, 8
  %529 = and i64 %528, 255
  %530 = or i64 %529, 512
  %531 = getelementptr inbounds i64, ptr %4, i64 %530
  %532 = load i64, ptr %531, align 8, !tbaa !10
  %533 = xor i64 %527, %532
  %534 = and i64 %516, 255
  %535 = or i64 %534, 768
  %536 = getelementptr inbounds i64, ptr %4, i64 %535
  %537 = load i64, ptr %536, align 8, !tbaa !10
  %538 = add i64 %533, %537
  %539 = and i64 %538, 4294967295
  %540 = xor i64 %518, %539
  %541 = xor i64 %540, %491
  %542 = getelementptr inbounds i64, ptr %1, i64 11
  %543 = load i64, ptr %542, align 8, !tbaa !10
  %544 = lshr i64 %541, 24
  %545 = getelementptr inbounds i64, ptr %4, i64 %544
  %546 = load i64, ptr %545, align 8, !tbaa !10
  %547 = lshr i64 %541, 16
  %548 = and i64 %547, 255
  %549 = or i64 %548, 256
  %550 = getelementptr inbounds i64, ptr %4, i64 %549
  %551 = load i64, ptr %550, align 8, !tbaa !10
  %552 = add i64 %551, %546
  %553 = lshr i64 %541, 8
  %554 = and i64 %553, 255
  %555 = or i64 %554, 512
  %556 = getelementptr inbounds i64, ptr %4, i64 %555
  %557 = load i64, ptr %556, align 8, !tbaa !10
  %558 = xor i64 %552, %557
  %559 = and i64 %541, 255
  %560 = or i64 %559, 768
  %561 = getelementptr inbounds i64, ptr %4, i64 %560
  %562 = load i64, ptr %561, align 8, !tbaa !10
  %563 = add i64 %558, %562
  %564 = and i64 %563, 4294967295
  %565 = xor i64 %543, %564
  %566 = xor i64 %565, %516
  %567 = getelementptr inbounds i64, ptr %1, i64 10
  %568 = load i64, ptr %567, align 8, !tbaa !10
  %569 = lshr i64 %566, 24
  %570 = getelementptr inbounds i64, ptr %4, i64 %569
  %571 = load i64, ptr %570, align 8, !tbaa !10
  %572 = lshr i64 %566, 16
  %573 = and i64 %572, 255
  %574 = or i64 %573, 256
  %575 = getelementptr inbounds i64, ptr %4, i64 %574
  %576 = load i64, ptr %575, align 8, !tbaa !10
  %577 = add i64 %576, %571
  %578 = lshr i64 %566, 8
  %579 = and i64 %578, 255
  %580 = or i64 %579, 512
  %581 = getelementptr inbounds i64, ptr %4, i64 %580
  %582 = load i64, ptr %581, align 8, !tbaa !10
  %583 = xor i64 %577, %582
  %584 = and i64 %566, 255
  %585 = or i64 %584, 768
  %586 = getelementptr inbounds i64, ptr %4, i64 %585
  %587 = load i64, ptr %586, align 8, !tbaa !10
  %588 = add i64 %583, %587
  %589 = and i64 %588, 4294967295
  %590 = xor i64 %568, %589
  %591 = xor i64 %590, %541
  %592 = getelementptr inbounds i64, ptr %1, i64 9
  %593 = load i64, ptr %592, align 8, !tbaa !10
  %594 = lshr i64 %591, 24
  %595 = getelementptr inbounds i64, ptr %4, i64 %594
  %596 = load i64, ptr %595, align 8, !tbaa !10
  %597 = lshr i64 %591, 16
  %598 = and i64 %597, 255
  %599 = or i64 %598, 256
  %600 = getelementptr inbounds i64, ptr %4, i64 %599
  %601 = load i64, ptr %600, align 8, !tbaa !10
  %602 = add i64 %601, %596
  %603 = lshr i64 %591, 8
  %604 = and i64 %603, 255
  %605 = or i64 %604, 512
  %606 = getelementptr inbounds i64, ptr %4, i64 %605
  %607 = load i64, ptr %606, align 8, !tbaa !10
  %608 = xor i64 %602, %607
  %609 = and i64 %591, 255
  %610 = or i64 %609, 768
  %611 = getelementptr inbounds i64, ptr %4, i64 %610
  %612 = load i64, ptr %611, align 8, !tbaa !10
  %613 = add i64 %608, %612
  %614 = and i64 %613, 4294967295
  %615 = xor i64 %593, %614
  %616 = xor i64 %615, %566
  %617 = getelementptr inbounds i64, ptr %1, i64 8
  %618 = load i64, ptr %617, align 8, !tbaa !10
  %619 = lshr i64 %616, 24
  %620 = getelementptr inbounds i64, ptr %4, i64 %619
  %621 = load i64, ptr %620, align 8, !tbaa !10
  %622 = lshr i64 %616, 16
  %623 = and i64 %622, 255
  %624 = or i64 %623, 256
  %625 = getelementptr inbounds i64, ptr %4, i64 %624
  %626 = load i64, ptr %625, align 8, !tbaa !10
  %627 = add i64 %626, %621
  %628 = lshr i64 %616, 8
  %629 = and i64 %628, 255
  %630 = or i64 %629, 512
  %631 = getelementptr inbounds i64, ptr %4, i64 %630
  %632 = load i64, ptr %631, align 8, !tbaa !10
  %633 = xor i64 %627, %632
  %634 = and i64 %616, 255
  %635 = or i64 %634, 768
  %636 = getelementptr inbounds i64, ptr %4, i64 %635
  %637 = load i64, ptr %636, align 8, !tbaa !10
  %638 = add i64 %633, %637
  %639 = and i64 %638, 4294967295
  %640 = xor i64 %618, %639
  %641 = xor i64 %640, %591
  %642 = getelementptr inbounds i64, ptr %1, i64 7
  %643 = load i64, ptr %642, align 8, !tbaa !10
  %644 = lshr i64 %641, 24
  %645 = getelementptr inbounds i64, ptr %4, i64 %644
  %646 = load i64, ptr %645, align 8, !tbaa !10
  %647 = lshr i64 %641, 16
  %648 = and i64 %647, 255
  %649 = or i64 %648, 256
  %650 = getelementptr inbounds i64, ptr %4, i64 %649
  %651 = load i64, ptr %650, align 8, !tbaa !10
  %652 = add i64 %651, %646
  %653 = lshr i64 %641, 8
  %654 = and i64 %653, 255
  %655 = or i64 %654, 512
  %656 = getelementptr inbounds i64, ptr %4, i64 %655
  %657 = load i64, ptr %656, align 8, !tbaa !10
  %658 = xor i64 %652, %657
  %659 = and i64 %641, 255
  %660 = or i64 %659, 768
  %661 = getelementptr inbounds i64, ptr %4, i64 %660
  %662 = load i64, ptr %661, align 8, !tbaa !10
  %663 = add i64 %658, %662
  %664 = and i64 %663, 4294967295
  %665 = xor i64 %643, %664
  %666 = xor i64 %665, %616
  %667 = getelementptr inbounds i64, ptr %1, i64 6
  %668 = load i64, ptr %667, align 8, !tbaa !10
  %669 = lshr i64 %666, 24
  %670 = getelementptr inbounds i64, ptr %4, i64 %669
  %671 = load i64, ptr %670, align 8, !tbaa !10
  %672 = lshr i64 %666, 16
  %673 = and i64 %672, 255
  %674 = or i64 %673, 256
  %675 = getelementptr inbounds i64, ptr %4, i64 %674
  %676 = load i64, ptr %675, align 8, !tbaa !10
  %677 = add i64 %676, %671
  %678 = lshr i64 %666, 8
  %679 = and i64 %678, 255
  %680 = or i64 %679, 512
  %681 = getelementptr inbounds i64, ptr %4, i64 %680
  %682 = load i64, ptr %681, align 8, !tbaa !10
  %683 = xor i64 %677, %682
  %684 = and i64 %666, 255
  %685 = or i64 %684, 768
  %686 = getelementptr inbounds i64, ptr %4, i64 %685
  %687 = load i64, ptr %686, align 8, !tbaa !10
  %688 = add i64 %683, %687
  %689 = and i64 %688, 4294967295
  %690 = xor i64 %668, %689
  %691 = xor i64 %690, %641
  %692 = getelementptr inbounds i64, ptr %1, i64 5
  %693 = load i64, ptr %692, align 8, !tbaa !10
  %694 = lshr i64 %691, 24
  %695 = getelementptr inbounds i64, ptr %4, i64 %694
  %696 = load i64, ptr %695, align 8, !tbaa !10
  %697 = lshr i64 %691, 16
  %698 = and i64 %697, 255
  %699 = or i64 %698, 256
  %700 = getelementptr inbounds i64, ptr %4, i64 %699
  %701 = load i64, ptr %700, align 8, !tbaa !10
  %702 = add i64 %701, %696
  %703 = lshr i64 %691, 8
  %704 = and i64 %703, 255
  %705 = or i64 %704, 512
  %706 = getelementptr inbounds i64, ptr %4, i64 %705
  %707 = load i64, ptr %706, align 8, !tbaa !10
  %708 = xor i64 %702, %707
  %709 = and i64 %691, 255
  %710 = or i64 %709, 768
  %711 = getelementptr inbounds i64, ptr %4, i64 %710
  %712 = load i64, ptr %711, align 8, !tbaa !10
  %713 = add i64 %708, %712
  %714 = and i64 %713, 4294967295
  %715 = xor i64 %693, %714
  %716 = xor i64 %715, %666
  %717 = getelementptr inbounds i64, ptr %1, i64 4
  %718 = load i64, ptr %717, align 8, !tbaa !10
  %719 = lshr i64 %716, 24
  %720 = getelementptr inbounds i64, ptr %4, i64 %719
  %721 = load i64, ptr %720, align 8, !tbaa !10
  %722 = lshr i64 %716, 16
  %723 = and i64 %722, 255
  %724 = or i64 %723, 256
  %725 = getelementptr inbounds i64, ptr %4, i64 %724
  %726 = load i64, ptr %725, align 8, !tbaa !10
  %727 = add i64 %726, %721
  %728 = lshr i64 %716, 8
  %729 = and i64 %728, 255
  %730 = or i64 %729, 512
  %731 = getelementptr inbounds i64, ptr %4, i64 %730
  %732 = load i64, ptr %731, align 8, !tbaa !10
  %733 = xor i64 %727, %732
  %734 = and i64 %716, 255
  %735 = or i64 %734, 768
  %736 = getelementptr inbounds i64, ptr %4, i64 %735
  %737 = load i64, ptr %736, align 8, !tbaa !10
  %738 = add i64 %733, %737
  %739 = and i64 %738, 4294967295
  %740 = xor i64 %718, %739
  %741 = xor i64 %740, %691
  %742 = getelementptr inbounds i64, ptr %1, i64 3
  %743 = load i64, ptr %742, align 8, !tbaa !10
  %744 = lshr i64 %741, 24
  %745 = getelementptr inbounds i64, ptr %4, i64 %744
  %746 = load i64, ptr %745, align 8, !tbaa !10
  %747 = lshr i64 %741, 16
  %748 = and i64 %747, 255
  %749 = or i64 %748, 256
  %750 = getelementptr inbounds i64, ptr %4, i64 %749
  %751 = load i64, ptr %750, align 8, !tbaa !10
  %752 = add i64 %751, %746
  %753 = lshr i64 %741, 8
  %754 = and i64 %753, 255
  %755 = or i64 %754, 512
  %756 = getelementptr inbounds i64, ptr %4, i64 %755
  %757 = load i64, ptr %756, align 8, !tbaa !10
  %758 = xor i64 %752, %757
  %759 = and i64 %741, 255
  %760 = or i64 %759, 768
  %761 = getelementptr inbounds i64, ptr %4, i64 %760
  %762 = load i64, ptr %761, align 8, !tbaa !10
  %763 = add i64 %758, %762
  %764 = and i64 %763, 4294967295
  %765 = xor i64 %743, %764
  %766 = xor i64 %765, %716
  %767 = getelementptr inbounds i64, ptr %1, i64 2
  %768 = load i64, ptr %767, align 8, !tbaa !10
  %769 = lshr i64 %766, 24
  %770 = getelementptr inbounds i64, ptr %4, i64 %769
  %771 = load i64, ptr %770, align 8, !tbaa !10
  %772 = lshr i64 %766, 16
  %773 = and i64 %772, 255
  %774 = or i64 %773, 256
  %775 = getelementptr inbounds i64, ptr %4, i64 %774
  %776 = load i64, ptr %775, align 8, !tbaa !10
  %777 = add i64 %776, %771
  %778 = lshr i64 %766, 8
  %779 = and i64 %778, 255
  %780 = or i64 %779, 512
  %781 = getelementptr inbounds i64, ptr %4, i64 %780
  %782 = load i64, ptr %781, align 8, !tbaa !10
  %783 = xor i64 %777, %782
  %784 = and i64 %766, 255
  %785 = or i64 %784, 768
  %786 = getelementptr inbounds i64, ptr %4, i64 %785
  %787 = load i64, ptr %786, align 8, !tbaa !10
  %788 = add i64 %783, %787
  %789 = and i64 %788, 4294967295
  %790 = xor i64 %768, %789
  %791 = xor i64 %790, %741
  %792 = getelementptr inbounds i64, ptr %1, i64 1
  %793 = load i64, ptr %792, align 8, !tbaa !10
  %794 = lshr i64 %791, 24
  %795 = getelementptr inbounds i64, ptr %4, i64 %794
  %796 = load i64, ptr %795, align 8, !tbaa !10
  %797 = lshr i64 %791, 16
  %798 = and i64 %797, 255
  %799 = or i64 %798, 256
  %800 = getelementptr inbounds i64, ptr %4, i64 %799
  %801 = load i64, ptr %800, align 8, !tbaa !10
  %802 = add i64 %801, %796
  %803 = lshr i64 %791, 8
  %804 = and i64 %803, 255
  %805 = or i64 %804, 512
  %806 = getelementptr inbounds i64, ptr %4, i64 %805
  %807 = load i64, ptr %806, align 8, !tbaa !10
  %808 = xor i64 %802, %807
  %809 = and i64 %791, 255
  %810 = or i64 %809, 768
  %811 = getelementptr inbounds i64, ptr %4, i64 %810
  %812 = load i64, ptr %811, align 8, !tbaa !10
  %813 = add i64 %808, %812
  %814 = and i64 %813, 4294967295
  %815 = xor i64 %793, %814
  %816 = xor i64 %815, %766
  br label %817

817:                                              ; preds = %413, %9
  %818 = phi ptr [ %1, %413 ], [ %412, %9 ]
  %819 = phi i64 [ %791, %413 ], [ %386, %9 ]
  %820 = phi i64 [ %816, %413 ], [ %411, %9 ]
  %821 = load i64, ptr %818, align 8, !tbaa !10
  %822 = xor i64 %821, %819
  %823 = and i64 %820, 4294967295
  store i64 %823, ptr %6, align 8, !tbaa !10
  %824 = and i64 %822, 4294967295
  store i64 %824, ptr %0, align 8, !tbaa !10
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BF_ofb64_encrypt(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1, i64 noundef %2, ptr noundef %3, ptr nocapture noundef %4, ptr nocapture noundef %5) #0 {
  %7 = alloca [8 x i8], align 1
  %8 = alloca [2 x i64], align 16
  %9 = load i32, ptr %5, align 4, !tbaa !15
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %8) #13
  %10 = getelementptr inbounds i8, ptr %4, i64 1
  %11 = load i8, ptr %4, align 1, !tbaa !7
  %12 = zext i8 %11 to i64
  %13 = shl nuw nsw i64 %12, 24
  %14 = getelementptr inbounds i8, ptr %4, i64 2
  %15 = load i8, ptr %10, align 1, !tbaa !7
  %16 = zext i8 %15 to i64
  %17 = shl nuw nsw i64 %16, 16
  %18 = or i64 %17, %13
  %19 = getelementptr inbounds i8, ptr %4, i64 3
  %20 = load i8, ptr %14, align 1, !tbaa !7
  %21 = zext i8 %20 to i64
  %22 = shl nuw nsw i64 %21, 8
  %23 = getelementptr inbounds i8, ptr %4, i64 4
  %24 = load i8, ptr %19, align 1, !tbaa !7
  %25 = zext i8 %24 to i64
  %26 = or i64 %18, %22
  %27 = or i64 %26, %25
  %28 = getelementptr inbounds i8, ptr %4, i64 5
  %29 = load i8, ptr %23, align 1, !tbaa !7
  %30 = zext i8 %29 to i64
  %31 = shl nuw nsw i64 %30, 24
  %32 = getelementptr inbounds i8, ptr %4, i64 6
  %33 = load i8, ptr %28, align 1, !tbaa !7
  %34 = zext i8 %33 to i64
  %35 = shl nuw nsw i64 %34, 16
  %36 = or i64 %35, %31
  %37 = getelementptr inbounds i8, ptr %4, i64 7
  %38 = load i8, ptr %32, align 1, !tbaa !7
  %39 = zext i8 %38 to i64
  %40 = shl nuw nsw i64 %39, 8
  %41 = load i8, ptr %37, align 1, !tbaa !7
  %42 = zext i8 %41 to i64
  %43 = or i64 %36, %40
  %44 = or i64 %43, %42
  store i64 %27, ptr %8, align 16, !tbaa !10
  %45 = getelementptr inbounds [2 x i64], ptr %8, i64 0, i64 1
  store i64 %44, ptr %45, align 8, !tbaa !10
  %46 = getelementptr inbounds i8, ptr %7, i64 1
  store i8 %11, ptr %7, align 1, !tbaa !7
  %47 = getelementptr inbounds i8, ptr %7, i64 2
  store i8 %15, ptr %46, align 1, !tbaa !7
  %48 = getelementptr inbounds i8, ptr %7, i64 3
  store i8 %20, ptr %47, align 1, !tbaa !7
  %49 = getelementptr inbounds i8, ptr %7, i64 4
  store i8 %24, ptr %48, align 1, !tbaa !7
  %50 = getelementptr inbounds i8, ptr %7, i64 5
  store i8 %29, ptr %49, align 1, !tbaa !7
  %51 = getelementptr inbounds i8, ptr %7, i64 6
  store i8 %33, ptr %50, align 1, !tbaa !7
  %52 = getelementptr inbounds i8, ptr %7, i64 7
  store i8 %38, ptr %51, align 1, !tbaa !7
  store i8 %41, ptr %52, align 1, !tbaa !7
  %53 = icmp eq i64 %2, 0
  br i1 %53, label %113, label %54

54:                                               ; preds = %82, %6
  %55 = phi i64 [ %83, %82 ], [ %44, %6 ]
  %56 = phi i64 [ %84, %82 ], [ %27, %6 ]
  %57 = phi i64 [ %62, %82 ], [ %2, %6 ]
  %58 = phi i32 [ %85, %82 ], [ 0, %6 ]
  %59 = phi i32 [ %94, %82 ], [ %9, %6 ]
  %60 = phi ptr [ %86, %82 ], [ %0, %6 ]
  %61 = phi ptr [ %92, %82 ], [ %1, %6 ]
  %62 = add nsw i64 %57, -1
  %63 = icmp eq i32 %59, 0
  br i1 %63, label %64, label %82

64:                                               ; preds = %54
  call void @BF_encrypt(ptr noundef nonnull %8, ptr noundef %3, i32 noundef 1) #14
  %65 = load i64, ptr %8, align 16, !tbaa !10
  %66 = lshr i64 %65, 24
  %67 = trunc i64 %66 to i8
  store i8 %67, ptr %7, align 1, !tbaa !7
  %68 = lshr i64 %65, 16
  %69 = trunc i64 %68 to i8
  store i8 %69, ptr %46, align 1, !tbaa !7
  %70 = lshr i64 %65, 8
  %71 = trunc i64 %70 to i8
  store i8 %71, ptr %47, align 1, !tbaa !7
  %72 = trunc i64 %65 to i8
  store i8 %72, ptr %48, align 1, !tbaa !7
  %73 = load i64, ptr %45, align 8, !tbaa !10
  %74 = lshr i64 %73, 24
  %75 = trunc i64 %74 to i8
  store i8 %75, ptr %49, align 1, !tbaa !7
  %76 = lshr i64 %73, 16
  %77 = trunc i64 %76 to i8
  store i8 %77, ptr %50, align 1, !tbaa !7
  %78 = lshr i64 %73, 8
  %79 = trunc i64 %78 to i8
  store i8 %79, ptr %51, align 1, !tbaa !7
  %80 = trunc i64 %73 to i8
  store i8 %80, ptr %52, align 1, !tbaa !7
  %81 = add nsw i32 %58, 1
  br label %82

82:                                               ; preds = %64, %54
  %83 = phi i64 [ %73, %64 ], [ %55, %54 ]
  %84 = phi i64 [ %65, %64 ], [ %56, %54 ]
  %85 = phi i32 [ %81, %64 ], [ %58, %54 ]
  %86 = getelementptr inbounds i8, ptr %60, i64 1
  %87 = load i8, ptr %60, align 1, !tbaa !7
  %88 = sext i32 %59 to i64
  %89 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %88
  %90 = load i8, ptr %89, align 1, !tbaa !7
  %91 = xor i8 %90, %87
  %92 = getelementptr inbounds i8, ptr %61, i64 1
  store i8 %91, ptr %61, align 1, !tbaa !7
  %93 = add nsw i32 %59, 1
  %94 = and i32 %93, 7
  %95 = icmp eq i64 %62, 0
  br i1 %95, label %96, label %54, !llvm.loop !19

96:                                               ; preds = %82
  %.lcssa3 = phi i64 [ %83, %82 ]
  %.lcssa2 = phi i64 [ %84, %82 ]
  %.lcssa1 = phi i32 [ %85, %82 ]
  %.lcssa = phi i32 [ %94, %82 ]
  %97 = icmp eq i32 %.lcssa1, 0
  br i1 %97, label %113, label %98

98:                                               ; preds = %96
  %99 = lshr i64 %.lcssa2, 24
  %100 = trunc i64 %99 to i8
  store i8 %100, ptr %4, align 1, !tbaa !7
  %101 = lshr i64 %.lcssa2, 16
  %102 = trunc i64 %101 to i8
  store i8 %102, ptr %10, align 1, !tbaa !7
  %103 = lshr i64 %.lcssa2, 8
  %104 = trunc i64 %103 to i8
  store i8 %104, ptr %14, align 1, !tbaa !7
  %105 = trunc i64 %.lcssa2 to i8
  store i8 %105, ptr %19, align 1, !tbaa !7
  %106 = lshr i64 %.lcssa3, 24
  %107 = trunc i64 %106 to i8
  store i8 %107, ptr %23, align 1, !tbaa !7
  %108 = lshr i64 %.lcssa3, 16
  %109 = trunc i64 %108 to i8
  store i8 %109, ptr %28, align 1, !tbaa !7
  %110 = lshr i64 %.lcssa3, 8
  %111 = trunc i64 %110 to i8
  store i8 %111, ptr %32, align 1, !tbaa !7
  %112 = trunc i64 %.lcssa3 to i8
  store i8 %112, ptr %37, align 1, !tbaa !7
  br label %113

113:                                              ; preds = %98, %96, %6
  %114 = phi i32 [ %.lcssa, %98 ], [ %.lcssa, %96 ], [ %9, %6 ]
  store i32 %114, ptr %5, align 4, !tbaa !15
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %8) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @BF_set_key(ptr noundef %0, i32 noundef %1, ptr noundef readonly %2) #0 {
  %4 = alloca [2 x i64], align 16
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %4) #13
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(8336) %0, ptr noundef nonnull align 8 dereferenceable(8336) @bf_init, i64 8336, i1 false)
  %5 = tail call i32 @llvm.smin.i32(i32 %1, i32 72)
  %6 = sext i32 %5 to i64
  %7 = getelementptr inbounds i8, ptr %2, i64 %6
  br label %8

8:                                                ; preds = %8, %3
  %9 = phi i64 [ 0, %3 ], [ %40, %8 ]
  %10 = phi ptr [ %2, %3 ], [ %36, %8 ]
  %11 = getelementptr inbounds i8, ptr %10, i64 1
  %12 = load i8, ptr %10, align 1, !tbaa !7
  %13 = zext i8 %12 to i64
  %14 = icmp ult ptr %11, %7
  %15 = select i1 %14, ptr %11, ptr %2
  %16 = getelementptr inbounds i8, ptr %15, i64 1
  %17 = load i8, ptr %15, align 1, !tbaa !7
  %18 = zext i8 %17 to i64
  %19 = icmp ult ptr %16, %7
  %20 = select i1 %19, ptr %16, ptr %2
  %21 = shl nuw nsw i64 %13, 16
  %22 = shl nuw nsw i64 %18, 8
  %23 = or i64 %22, %21
  %24 = getelementptr inbounds i8, ptr %20, i64 1
  %25 = load i8, ptr %20, align 1, !tbaa !7
  %26 = zext i8 %25 to i64
  %27 = or i64 %23, %26
  %28 = icmp ult ptr %24, %7
  %29 = select i1 %28, ptr %24, ptr %2
  %30 = shl nuw nsw i64 %27, 8
  %31 = getelementptr inbounds i8, ptr %29, i64 1
  %32 = load i8, ptr %29, align 1, !tbaa !7
  %33 = zext i8 %32 to i64
  %34 = or i64 %30, %33
  %35 = icmp ult ptr %31, %7
  %36 = select i1 %35, ptr %31, ptr %2
  %37 = getelementptr inbounds i64, ptr %0, i64 %9
  %38 = load i64, ptr %37, align 8, !tbaa !10
  %39 = xor i64 %34, %38
  store i64 %39, ptr %37, align 8, !tbaa !10
  %40 = add nuw nsw i64 %9, 1
  %41 = icmp eq i64 %40, 18
  br i1 %41, label %42, label %8, !llvm.loop !20

42:                                               ; preds = %8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %4, i8 0, i64 16, i1 false)
  br label %43

43:                                               ; preds = %43, %42
  %44 = phi i64 [ 0, %42 ], [ %47, %43 ]
  call void @BF_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 1) #14
  %45 = getelementptr inbounds i64, ptr %0, i64 %44
  %46 = load <2 x i64>, ptr %4, align 16, !tbaa !10
  store <2 x i64> %46, ptr %45, align 8, !tbaa !10
  %47 = add nuw nsw i64 %44, 2
  %48 = icmp ult i64 %44, 16
  br i1 %48, label %43, label %49, !llvm.loop !21

49:                                               ; preds = %43
  %50 = getelementptr inbounds %struct.bf_key_st, ptr %0, i64 0, i32 1
  br label %51

51:                                               ; preds = %51, %49
  %52 = phi i64 [ 0, %49 ], [ %55, %51 ]
  call void @BF_encrypt(ptr noundef nonnull %4, ptr noundef nonnull %0, i32 noundef 1) #14
  %53 = getelementptr inbounds i64, ptr %50, i64 %52
  %54 = load <2 x i64>, ptr %4, align 16, !tbaa !10
  store <2 x i64> %54, ptr %53, align 8, !tbaa !10
  %55 = add nuw nsw i64 %52, 2
  %56 = icmp ult i64 %52, 1022
  br i1 %56, label %51, label %57, !llvm.loop !22

57:                                               ; preds = %51
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %4) #13
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: nofree nounwind optsize uwtable
define internal i32 @print_test_data() #6 {
  %1 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str)
  %2 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.45)
  br label %3

3:                                                ; preds = %33, %0
  %4 = phi i64 [ 0, %0 ], [ %35, %33 ]
  br label %5

5:                                                ; preds = %5, %3
  %6 = phi i64 [ 0, %3 ], [ %11, %5 ]
  %7 = getelementptr inbounds [34 x [8 x i8]], ptr @ecb_data, i64 0, i64 %4, i64 %6
  %8 = load i8, ptr %7, align 1, !tbaa !7
  %9 = zext i8 %8 to i32
  %10 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %9) #15
  %11 = add nuw nsw i64 %6, 1
  %12 = icmp eq i64 %11, 8
  br i1 %12, label %13, label %5, !llvm.loop !23

13:                                               ; preds = %5
  %14 = tail call i32 @putchar(i32 9)
  br label %15

15:                                               ; preds = %15, %13
  %16 = phi i64 [ 0, %13 ], [ %21, %15 ]
  %17 = getelementptr inbounds [34 x [8 x i8]], ptr @plain_data, i64 0, i64 %4, i64 %16
  %18 = load i8, ptr %17, align 1, !tbaa !7
  %19 = zext i8 %18 to i32
  %20 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %19) #15
  %21 = add nuw nsw i64 %16, 1
  %22 = icmp eq i64 %21, 8
  br i1 %22, label %23, label %15, !llvm.loop !24

23:                                               ; preds = %15
  %24 = tail call i32 @putchar(i32 9)
  br label %25

25:                                               ; preds = %25, %23
  %26 = phi i64 [ 0, %23 ], [ %31, %25 ]
  %27 = getelementptr inbounds [34 x [8 x i8]], ptr @cipher_data, i64 0, i64 %4, i64 %26
  %28 = load i8, ptr %27, align 1, !tbaa !7
  %29 = zext i8 %28 to i32
  %30 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %29) #15
  %31 = add nuw nsw i64 %26, 1
  %32 = icmp eq i64 %31, 8
  br i1 %32, label %33, label %25, !llvm.loop !25

33:                                               ; preds = %25
  %34 = tail call i32 @putchar(i32 10)
  %35 = add nuw nsw i64 %4, 1
  %36 = icmp eq i64 %35, 34
  br i1 %36, label %37, label %3, !llvm.loop !26

37:                                               ; preds = %33
  %38 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.46)
  %39 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8) #15
  br label %40

40:                                               ; preds = %40, %37
  %41 = phi i64 [ 0, %37 ], [ %46, %40 ]
  %42 = getelementptr inbounds [8 x i8], ptr @key_data, i64 0, i64 %41
  %43 = load i8, ptr %42, align 1, !tbaa !7
  %44 = zext i8 %43 to i32
  %45 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %44) #15
  %46 = add nuw nsw i64 %41, 1
  %47 = icmp eq i64 %46, 8
  br i1 %47, label %48, label %40, !llvm.loop !27

48:                                               ; preds = %40
  %49 = tail call i32 @putchar(i32 10)
  br label %50

50:                                               ; preds = %74, %48
  %51 = phi i64 [ 0, %48 ], [ %63, %74 ]
  %52 = phi i64 [ 1, %48 ], [ %76, %74 ]
  %53 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9) #15
  br label %54

54:                                               ; preds = %54, %50
  %55 = phi i64 [ 0, %50 ], [ %60, %54 ]
  %56 = getelementptr inbounds [25 x [8 x i8]], ptr @key_out, i64 0, i64 %51, i64 %55
  %57 = load i8, ptr %56, align 1, !tbaa !7
  %58 = zext i8 %57 to i32
  %59 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %58) #15
  %60 = add nuw nsw i64 %55, 1
  %61 = icmp eq i64 %60, 8
  br i1 %61, label %62, label %54, !llvm.loop !28

62:                                               ; preds = %54
  %63 = add nuw nsw i64 %51, 1
  %64 = trunc i64 %63 to i32
  %65 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, i32 noundef %64) #15
  br label %66

66:                                               ; preds = %66, %62
  %67 = phi i64 [ 0, %62 ], [ %72, %66 ]
  %68 = getelementptr inbounds [25 x i8], ptr @key_test, i64 0, i64 %67
  %69 = load i8, ptr %68, align 1, !tbaa !7
  %70 = zext i8 %69 to i32
  %71 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %70) #15
  %72 = add nuw nsw i64 %67, 1
  %73 = icmp eq i64 %72, %52
  br i1 %73, label %74, label %66, !llvm.loop !29

74:                                               ; preds = %66
  %75 = tail call i32 @putchar(i32 10)
  %76 = add nuw nsw i64 %52, 1
  %77 = icmp eq i64 %63, 24
  br i1 %77, label %78, label %50, !llvm.loop !30

78:                                               ; preds = %74
  %79 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.47)
  %80 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12) #15
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi i64 [ 0, %78 ], [ %87, %81 ]
  %83 = getelementptr inbounds [16 x i8], ptr @cbc_key, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !7
  %85 = zext i8 %84 to i32
  %86 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %85) #15
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, 16
  br i1 %88, label %89, label %81, !llvm.loop !31

89:                                               ; preds = %81
  %90 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13) #15
  br label %91

91:                                               ; preds = %91, %89
  %92 = phi i64 [ 0, %89 ], [ %97, %91 ]
  %93 = getelementptr inbounds [8 x i8], ptr @cbc_iv, i64 0, i64 %92
  %94 = load i8, ptr %93, align 1, !tbaa !7
  %95 = zext i8 %94 to i32
  %96 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %95) #15
  %97 = add nuw nsw i64 %92, 1
  %98 = icmp eq i64 %97, 8
  br i1 %98, label %99, label %91, !llvm.loop !32

99:                                               ; preds = %91
  %100 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %101 = add i64 %100, 1
  %102 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, i64 noundef %101, ptr noundef nonnull @cbc_data) #15
  %103 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %104 = add i64 %103, 1
  %105 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, i64 noundef %104) #15
  br label %106

106:                                              ; preds = %111, %99
  %107 = phi i64 [ %116, %111 ], [ 0, %99 ]
  %108 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %109 = add i64 %108, 1
  %110 = icmp ugt i64 %109, %107
  br i1 %110, label %111, label %117

111:                                              ; preds = %106
  %112 = getelementptr inbounds [40 x i8], ptr @cbc_data, i64 0, i64 %107
  %113 = load i8, ptr %112, align 1, !tbaa !7
  %114 = sext i8 %113 to i32
  %115 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %114) #15
  %116 = add nuw i64 %107, 1
  br label %106, !llvm.loop !33

117:                                              ; preds = %106
  %118 = tail call i32 @putchar(i32 10)
  %119 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.48)
  %120 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i32 noundef 32) #15
  br label %121

121:                                              ; preds = %121, %117
  %122 = phi i64 [ 0, %117 ], [ %127, %121 ]
  %123 = getelementptr inbounds [32 x i8], ptr @cbc_ok, i64 0, i64 %122
  %124 = load i8, ptr %123, align 1, !tbaa !7
  %125 = zext i8 %124 to i32
  %126 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %125) #15
  %127 = add nuw nsw i64 %122, 1
  %128 = icmp eq i64 %127, 32
  br i1 %128, label %129, label %121, !llvm.loop !34

129:                                              ; preds = %121
  %130 = tail call i32 @putchar(i32 10)
  %131 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.49)
  %132 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %133 = add i64 %132, 1
  %134 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %133) #15
  br label %135

135:                                              ; preds = %140, %129
  %136 = phi i64 [ %145, %140 ], [ 0, %129 ]
  %137 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %138 = add i64 %137, 1
  %139 = icmp ugt i64 %138, %136
  br i1 %139, label %140, label %146

140:                                              ; preds = %135
  %141 = getelementptr inbounds [29 x i8], ptr @cfb64_ok, i64 0, i64 %136
  %142 = load i8, ptr %141, align 1, !tbaa !7
  %143 = zext i8 %142 to i32
  %144 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %143) #15
  %145 = add nuw i64 %136, 1
  br label %135, !llvm.loop !35

146:                                              ; preds = %135
  %147 = tail call i32 @putchar(i32 10)
  %148 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.50)
  %149 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %150 = add i64 %149, 1
  %151 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, i64 noundef %150) #15
  br label %152

152:                                              ; preds = %157, %146
  %153 = phi i64 [ %162, %157 ], [ 0, %146 ]
  %154 = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %155 = add i64 %154, 1
  %156 = icmp ugt i64 %155, %153
  br i1 %156, label %157, label %163

157:                                              ; preds = %152
  %158 = getelementptr inbounds [29 x i8], ptr @ofb64_ok, i64 0, i64 %153
  %159 = load i8, ptr %158, align 1, !tbaa !7
  %160 = zext i8 %159 to i32
  %161 = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.4, i32 noundef %160) #15
  %162 = add nuw i64 %153, 1
  br label %152, !llvm.loop !36

163:                                              ; preds = %152
  %164 = tail call i32 @putchar(i32 10)
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr nocapture noundef readonly) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @printf(ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(argmem: read)
declare i64 @strlen(ptr nocapture noundef) local_unnamed_addr #9

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readnone %1) #10 {
  %3 = icmp sgt i32 %0, 1
  br i1 %3, label %4, label %6

4:                                                ; preds = %2
  %5 = tail call i32 @print_test_data() #15
  br label %8

6:                                                ; preds = %2
  %7 = tail call i32 @test() #15, !range !37
  br label %8

8:                                                ; preds = %6, %4
  %9 = phi i32 [ 0, %4 ], [ %7, %6 ]
  tail call void @exit(i32 noundef %9) #17
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @test() #0 {
  %1 = alloca [40 x i8], align 16
  %2 = alloca [40 x i8], align 16
  %3 = alloca [8 x i8], align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.bf_key_st, align 8
  %6 = alloca [2 x i64], align 16
  %7 = alloca [8 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %1) #13
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %2) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.start.p0(i64 8336, ptr nonnull %5) #13
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %7) #13
  %8 = tail call i32 @puts(ptr nonnull dereferenceable(1) @str.51)
  store i32 0, ptr %4, align 4, !tbaa !15
  %9 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  %10 = getelementptr inbounds [2 x i64], ptr %6, i64 0, i64 1
  br label %11

11:                                               ; preds = %65, %0
  %12 = phi i32 [ 0, %0 ], [ %66, %65 ]
  %13 = phi i1 [ true, %0 ], [ false, %65 ]
  %14 = phi i64 [ 0, %0 ], [ 1, %65 ]
  %15 = getelementptr inbounds [2 x ptr], ptr @bf_key, i64 0, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !38
  %17 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) %16) #16
  %18 = trunc i64 %17 to i32
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef %18, ptr noundef %16) #14
  %19 = call i32 @puts(ptr nonnull dereferenceable(1) @str.66)
  %20 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_plain, i64 0, i64 %14
  %21 = load <2 x i64>, ptr %20, align 16, !tbaa !10
  store <2 x i64> %21, ptr %6, align 16, !tbaa !10
  call void @BF_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 1) #14
  %22 = call i32 @puts(ptr nonnull dereferenceable(1) @str.67)
  %23 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_cipher, i64 0, i64 %14
  %24 = load i64, ptr %23, align 16
  %25 = load i64, ptr %6, align 16
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %43, label %27

27:                                               ; preds = %11
  %28 = call i32 @puts(ptr nonnull dereferenceable(1) @str.70)
  %29 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) #15
  %30 = load i64, ptr %6, align 16, !tbaa !10
  %31 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %30) #15
  %32 = load i64, ptr %9, align 8, !tbaa !10
  %33 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %32) #15
  %34 = call i32 @putchar(i32 10)
  %35 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #15
  %36 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_cipher, i64 0, i64 %14, i64 0
  %37 = load i64, ptr %36, align 16, !tbaa !10
  %38 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %37) #15
  %39 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_cipher, i64 0, i64 %14, i64 1
  %40 = load i64, ptr %39, align 8, !tbaa !10
  %41 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %40) #15
  %42 = call i32 @putchar(i32 10)
  br label %43

43:                                               ; preds = %27, %11
  %44 = phi i32 [ 1, %27 ], [ %12, %11 ]
  call void @BF_encrypt(ptr noundef nonnull %6, ptr noundef nonnull %5, i32 noundef 0) #14
  %45 = call i32 @puts(ptr nonnull dereferenceable(1) @str.68)
  %46 = load i64, ptr %20, align 16
  %47 = load i64, ptr %6, align 16
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %65, label %49

49:                                               ; preds = %43
  %50 = call i32 @puts(ptr nonnull dereferenceable(1) @str.69)
  %51 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) #15
  %52 = load i64, ptr %6, align 16, !tbaa !10
  %53 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %52) #15
  %54 = load i64, ptr %10, align 8, !tbaa !10
  %55 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %54) #15
  %56 = call i32 @putchar(i32 10)
  %57 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #15
  %58 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_plain, i64 0, i64 %14, i64 0
  %59 = load i64, ptr %58, align 16, !tbaa !10
  %60 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %59) #15
  %61 = getelementptr inbounds [2 x [2 x i64]], ptr @bf_plain, i64 0, i64 %14, i64 1
  %62 = load i64, ptr %61, align 8, !tbaa !10
  %63 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.25, i64 noundef %62) #15
  %64 = call i32 @putchar(i32 10)
  br label %65

65:                                               ; preds = %49, %43
  %66 = phi i32 [ 1, %49 ], [ %44, %43 ]
  br i1 %13, label %11, label %67, !llvm.loop !40

67:                                               ; preds = %65
  %.lcssa2 = phi i32 [ %66, %65 ]
  %68 = call i32 @puts(ptr nonnull dereferenceable(1) @str.52)
  store i32 0, ptr %4, align 4, !tbaa !15
  br label %69

69:                                               ; preds = %130, %67
  %70 = phi i32 [ %.lcssa2, %67 ], [ %131, %130 ]
  %71 = phi i32 [ 0, %67 ], [ %132, %130 ]
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds [34 x [8 x i8]], ptr @ecb_data, i64 0, i64 %72
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef 8, ptr noundef nonnull %73) #14
  %74 = getelementptr inbounds [34 x [8 x i8]], ptr @plain_data, i64 0, i64 %72
  call void @BF_ecb_encrypt(ptr noundef nonnull %74, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 1) #14
  %75 = getelementptr inbounds [34 x [8 x i8]], ptr @cipher_data, i64 0, i64 %72
  %76 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %75, ptr noundef nonnull dereferenceable(8) %7, i64 8)
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %102, label %78

78:                                               ; preds = %69
  %79 = call i32 @puts(ptr nonnull dereferenceable(1) @str.65)
  %80 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) #15
  br label %81

81:                                               ; preds = %81, %78
  %82 = phi i64 [ 0, %78 ], [ %87, %81 ]
  %83 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %82
  %84 = load i8, ptr %83, align 1, !tbaa !7
  %85 = zext i8 %84 to i32
  %86 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %85) #15
  %87 = add nuw nsw i64 %82, 1
  %88 = icmp eq i64 %87, 8
  br i1 %88, label %89, label %81, !llvm.loop !41

89:                                               ; preds = %81
  %90 = call i32 @putchar(i32 10)
  %91 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #15
  br label %92

92:                                               ; preds = %92, %89
  %93 = phi i64 [ 0, %89 ], [ %98, %92 ]
  %94 = getelementptr inbounds [34 x [8 x i8]], ptr @cipher_data, i64 0, i64 %72, i64 %93
  %95 = load i8, ptr %94, align 1, !tbaa !7
  %96 = zext i8 %95 to i32
  %97 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %96) #15
  %98 = add nuw nsw i64 %93, 1
  %99 = icmp eq i64 %98, 8
  br i1 %99, label %100, label %92, !llvm.loop !42

100:                                              ; preds = %92
  %101 = call i32 @putchar(i32 10)
  br label %102

102:                                              ; preds = %100, %69
  %103 = phi i32 [ 1, %100 ], [ %70, %69 ]
  call void @BF_ecb_encrypt(ptr noundef nonnull %7, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 0) #14
  %104 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %74, ptr noundef nonnull dereferenceable(8) %7, i64 8)
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %130, label %106

106:                                              ; preds = %102
  %107 = call i32 @puts(ptr nonnull dereferenceable(1) @str.64)
  %108 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.24) #15
  br label %109

109:                                              ; preds = %109, %106
  %110 = phi i64 [ 0, %106 ], [ %115, %109 ]
  %111 = getelementptr inbounds [8 x i8], ptr %7, i64 0, i64 %110
  %112 = load i8, ptr %111, align 1, !tbaa !7
  %113 = zext i8 %112 to i32
  %114 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %113) #15
  %115 = add nuw nsw i64 %110, 1
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %117, label %109, !llvm.loop !43

117:                                              ; preds = %109
  %118 = call i32 @putchar(i32 10)
  %119 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.26) #15
  br label %120

120:                                              ; preds = %120, %117
  %121 = phi i64 [ 0, %117 ], [ %126, %120 ]
  %122 = getelementptr inbounds [34 x [8 x i8]], ptr @plain_data, i64 0, i64 %72, i64 %121
  %123 = load i8, ptr %122, align 1, !tbaa !7
  %124 = zext i8 %123 to i32
  %125 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.31, i32 noundef %124) #15
  %126 = add nuw nsw i64 %121, 1
  %127 = icmp eq i64 %126, 8
  br i1 %127, label %128, label %120, !llvm.loop !44

128:                                              ; preds = %120
  %129 = call i32 @putchar(i32 10)
  br label %130

130:                                              ; preds = %128, %102
  %131 = phi i32 [ 1, %128 ], [ %103, %102 ]
  %132 = add nuw nsw i32 %71, 1
  %133 = icmp ult i32 %71, 33
  br i1 %133, label %69, label %134, !llvm.loop !45

134:                                              ; preds = %130
  %.lcssa1 = phi i32 [ %131, %130 ]
  %135 = call i32 @puts(ptr nonnull dereferenceable(1) @str.53)
  store i32 1, ptr %4, align 4, !tbaa !15
  br label %136

136:                                              ; preds = %146, %134
  %137 = phi i32 [ %.lcssa1, %134 ], [ %147, %146 ]
  %138 = phi i32 [ 1, %134 ], [ %148, %146 ]
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef %138, ptr noundef nonnull @key_test) #14
  call void @BF_ecb_encrypt(ptr noundef nonnull @key_data, ptr noundef nonnull %7, ptr noundef nonnull %5, i32 noundef 1) #14
  %139 = add nsw i32 %138, -1
  %140 = zext i32 %139 to i64
  %141 = getelementptr inbounds [25 x [8 x i8]], ptr @key_out, i64 0, i64 %140
  %142 = call i32 @bcmp(ptr noundef nonnull dereferenceable(8) %7, ptr noundef nonnull dereferenceable(8) %141, i64 8)
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %146, label %144

144:                                              ; preds = %136
  %145 = call i32 @puts(ptr nonnull dereferenceable(1) @str.63)
  br label %146

146:                                              ; preds = %144, %136
  %147 = phi i32 [ 1, %144 ], [ %137, %136 ]
  %148 = add nuw nsw i32 %138, 1
  %149 = icmp ult i32 %138, 24
  br i1 %149, label %136, label %150, !llvm.loop !46

150:                                              ; preds = %146
  %.lcssa = phi i32 [ %147, %146 ]
  %151 = call i32 @puts(ptr nonnull dereferenceable(1) @str.54)
  %152 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %153 = add i64 %152, 1
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @cbc_key) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  store i64 1167088121787636990, ptr %3, align 8
  call void @BF_cbc_encrypt(ptr noundef nonnull @cbc_data, ptr noundef nonnull %2, i64 noundef %153, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 1) #14
  %154 = call i32 @bcmp(ptr noundef nonnull dereferenceable(32) %2, ptr noundef nonnull dereferenceable(32) @cbc_ok, i64 32)
  %155 = icmp eq i32 %154, 0
  br i1 %155, label %166, label %156

156:                                              ; preds = %150
  %157 = call i32 @puts(ptr nonnull dereferenceable(1) @str.62)
  br label %158

158:                                              ; preds = %158, %156
  %159 = phi i64 [ 0, %156 ], [ %164, %158 ]
  %160 = getelementptr inbounds [40 x i8], ptr %2, i64 0, i64 %159
  %161 = load i8, ptr %160, align 1, !tbaa !7
  %162 = zext i8 %161 to i32
  %163 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %162) #15
  %164 = add nuw nsw i64 %159, 1
  %165 = icmp eq i64 %164, 32
  br i1 %165, label %166, label %158, !llvm.loop !47

166:                                              ; preds = %158, %150
  %167 = phi i32 [ %.lcssa, %150 ], [ 1, %158 ]
  store i64 1167088121787636990, ptr %3, align 8
  call void @BF_cbc_encrypt(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef %153, ptr noundef nonnull %5, ptr noundef nonnull %3, i32 noundef 0) #14
  %168 = call i64 @strlen(ptr noundef nonnull dereferenceable(1) @cbc_data) #16
  %169 = add i64 %168, 1
  %170 = call i32 @bcmp(ptr nonnull %1, ptr nonnull @cbc_data, i64 %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %174, label %172

172:                                              ; preds = %166
  %173 = call i32 @puts(ptr nonnull dereferenceable(1) @str.61)
  br label %174

174:                                              ; preds = %172, %166
  %175 = phi i32 [ 1, %172 ], [ %167, %166 ]
  %176 = call i32 @puts(ptr nonnull dereferenceable(1) @str.55)
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @cbc_key) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  store i64 1167088121787636990, ptr %3, align 8
  store i32 0, ptr %4, align 4, !tbaa !15
  call void @BF_cfb64_encrypt(ptr noundef nonnull @cbc_data, ptr noundef nonnull %2, i64 noundef 13, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #14
  %177 = getelementptr inbounds [40 x i8], ptr %2, i64 0, i64 13
  %178 = add i64 %152, -12
  call void @BF_cfb64_encrypt(ptr noundef nonnull getelementptr inbounds ([40 x i8], ptr @cbc_data, i64 0, i64 13), ptr noundef nonnull %177, i64 noundef %178, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 1) #14
  %179 = trunc i64 %153 to i32
  %180 = shl i64 %153, 32
  %181 = ashr exact i64 %180, 32
  %182 = call i32 @bcmp(ptr nonnull %2, ptr nonnull @cfb64_ok, i64 %181)
  %183 = icmp eq i32 %182, 0
  br i1 %183, label %197, label %184

184:                                              ; preds = %174
  %185 = call i32 @puts(ptr nonnull dereferenceable(1) @str.60)
  %186 = icmp sgt i32 %179, 0
  br i1 %186, label %187, label %197

187:                                              ; preds = %184
  %188 = and i64 %153, 4294967295
  br label %189

189:                                              ; preds = %189, %187
  %190 = phi i64 [ 0, %187 ], [ %195, %189 ]
  %191 = getelementptr inbounds [40 x i8], ptr %2, i64 0, i64 %190
  %192 = load i8, ptr %191, align 1, !tbaa !7
  %193 = zext i8 %192 to i32
  %194 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %193) #15
  %195 = add nuw nsw i64 %190, 1
  %196 = icmp eq i64 %195, %188
  br i1 %196, label %197, label %189, !llvm.loop !48

197:                                              ; preds = %189, %184, %174
  %198 = phi i32 [ %175, %174 ], [ 1, %184 ], [ 1, %189 ]
  store i32 0, ptr %4, align 4, !tbaa !15
  store i64 1167088121787636990, ptr %3, align 8
  call void @BF_cfb64_encrypt(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #14
  %199 = getelementptr inbounds [40 x i8], ptr %2, i64 0, i64 17
  %200 = getelementptr inbounds [40 x i8], ptr %1, i64 0, i64 17
  %201 = add i64 %152, -16
  call void @BF_cfb64_encrypt(ptr noundef nonnull %199, ptr noundef nonnull %200, i64 noundef %201, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4, i32 noundef 0) #14
  %202 = call i32 @bcmp(ptr nonnull %1, ptr nonnull @cbc_data, i64 %181)
  %203 = icmp eq i32 %202, 0
  br i1 %203, label %206, label %204

204:                                              ; preds = %197
  %205 = call i32 @puts(ptr nonnull dereferenceable(1) @str.59)
  br label %206

206:                                              ; preds = %204, %197
  %207 = phi i32 [ 1, %204 ], [ %198, %197 ]
  %208 = call i32 @puts(ptr nonnull dereferenceable(1) @str.56)
  call void @BF_set_key(ptr noundef nonnull %5, i32 noundef 16, ptr noundef nonnull @cbc_key) #14
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %1, i8 0, i64 40, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(40) %2, i8 0, i64 40, i1 false)
  store i64 1167088121787636990, ptr %3, align 8
  store i32 0, ptr %4, align 4, !tbaa !15
  call void @BF_ofb64_encrypt(ptr noundef nonnull @cbc_data, ptr noundef nonnull %2, i64 noundef 13, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  call void @BF_ofb64_encrypt(ptr noundef nonnull getelementptr inbounds ([40 x i8], ptr @cbc_data, i64 0, i64 13), ptr noundef nonnull %177, i64 noundef %178, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %209 = call i32 @bcmp(ptr nonnull %2, ptr nonnull @ofb64_ok, i64 %181)
  %210 = icmp eq i32 %209, 0
  br i1 %210, label %224, label %211

211:                                              ; preds = %206
  %212 = call i32 @puts(ptr nonnull dereferenceable(1) @str.58)
  %213 = icmp sgt i32 %179, 0
  br i1 %213, label %214, label %224

214:                                              ; preds = %211
  %215 = and i64 %153, 4294967295
  br label %216

216:                                              ; preds = %216, %214
  %217 = phi i64 [ 0, %214 ], [ %222, %216 ]
  %218 = getelementptr inbounds [40 x i8], ptr %2, i64 0, i64 %217
  %219 = load i8, ptr %218, align 1, !tbaa !7
  %220 = zext i8 %219 to i32
  %221 = call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.37, i32 noundef %220) #15
  %222 = add nuw nsw i64 %217, 1
  %223 = icmp eq i64 %222, %215
  br i1 %223, label %224, label %216, !llvm.loop !49

224:                                              ; preds = %216, %211, %206
  %225 = phi i32 [ %207, %206 ], [ 1, %211 ], [ 1, %216 ]
  store i32 0, ptr %4, align 4, !tbaa !15
  store i64 1167088121787636990, ptr %3, align 8
  call void @BF_ofb64_encrypt(ptr noundef nonnull %2, ptr noundef nonnull %1, i64 noundef 17, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  call void @BF_ofb64_encrypt(ptr noundef nonnull %199, ptr noundef nonnull %200, i64 noundef %201, ptr noundef nonnull %5, ptr noundef nonnull %3, ptr noundef nonnull %4) #14
  %226 = call i32 @bcmp(ptr nonnull %1, ptr nonnull @cbc_data, i64 %181)
  %227 = icmp eq i32 %226, 0
  br i1 %227, label %230, label %228

228:                                              ; preds = %224
  %229 = call i32 @puts(ptr nonnull dereferenceable(1) @str.57)
  br label %230

230:                                              ; preds = %228, %224
  %231 = phi i32 [ 1, %228 ], [ %225, %224 ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %7) #13
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %6) #13
  call void @llvm.lifetime.end.p0(i64 8336, ptr nonnull %5) #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %4) #13
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %3) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %2) #13
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %1) #13
  ret i32 %231
}

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #11

; Function Attrs: nofree nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr nocapture, ptr nocapture, i64) local_unnamed_addr #12

attributes #0 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(read, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree nounwind optsize willreturn memory(argmem: read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nofree nounwind willreturn memory(argmem: read) }
attributes #13 = { nounwind }
attributes #14 = { nounwind optsize }
attributes #15 = { optsize }
attributes #16 = { nounwind optsize willreturn memory(read) }
attributes #17 = { noreturn nounwind optsize }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0}
!llvm.module.flags = !{!1, !2, !3, !4, !5, !6}

!0 = !{!"clang version 17.0.6 (https://github.com/Casperento/llvm-project.git 9b0073551ece0d22bf3378af2b03e456a26031b6)"}
!1 = !{i32 1, !"wchar_size", i32 4}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 1, !"ThinLTO", i32 0}
!6 = !{i32 1, !"EnableSplitLTOUnit", i32 1}
!7 = !{!8, !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!11, !11, i64 0}
!11 = !{!"long", !8, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = !{!16, !16, i64 0}
!16 = !{!"int", !8, i64 0}
!17 = distinct !{!17, !13}
!18 = distinct !{!18, !13}
!19 = distinct !{!19, !13}
!20 = distinct !{!20, !13}
!21 = distinct !{!21, !13}
!22 = distinct !{!22, !13}
!23 = distinct !{!23, !13}
!24 = distinct !{!24, !13}
!25 = distinct !{!25, !13}
!26 = distinct !{!26, !13}
!27 = distinct !{!27, !13}
!28 = distinct !{!28, !13}
!29 = distinct !{!29, !13}
!30 = distinct !{!30, !13}
!31 = distinct !{!31, !13}
!32 = distinct !{!32, !13}
!33 = distinct !{!33, !13}
!34 = distinct !{!34, !13}
!35 = distinct !{!35, !13}
!36 = distinct !{!36, !13}
!37 = !{i32 0, i32 2}
!38 = !{!39, !39, i64 0}
!39 = !{!"any pointer", !8, i64 0}
!40 = distinct !{!40, !13}
!41 = distinct !{!41, !13}
!42 = distinct !{!42, !13}
!43 = distinct !{!43, !13}
!44 = distinct !{!44, !13}
!45 = distinct !{!45, !13}
!46 = distinct !{!46, !13}
!47 = distinct !{!47, !13}
!48 = distinct !{!48, !13}
!49 = distinct !{!49, !13}
