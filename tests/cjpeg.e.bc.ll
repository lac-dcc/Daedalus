; ModuleID = 'cjpeg.e.bc.ll'
source_filename = "ld-temp.o"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jpeg_compress_struct = type { ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i32, double, i32, i32, i32, ptr, [4 x ptr], [4 x ptr], [4 x ptr], [16 x i8], [16 x i8], [16 x i8], i32, ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, i16, i16, i32, i32, i32, i32, i32, i32, i32, [4 x ptr], i32, i32, i32, [10 x i32], i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_error_mgr = type { ptr, ptr, ptr, ptr, ptr, i32, %union.anon, i32, i64, ptr, i32, ptr, i32, i32 }
%union.anon = type { [8 x i32], [48 x i8] }
%struct.jpeg_memory_mgr.27 = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i64 }
%struct.my_memory_mgr = type { %struct.jpeg_memory_mgr.27, [2 x ptr], [2 x ptr], ptr, ptr, i64, i32 }
%struct.JHUFF_TBL = type { [17 x i8], [256 x i8], i32 }
%struct._tga_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, ptr, [4 x i8], i32, i32, i32, ptr }
%struct.cjpeg_source_struct = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct._bmp_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, ptr, i32, i32, i32 }
%struct.gif_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, [260 x i8], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr, ptr, ptr, i32, ptr, i32, i32, i32, i32 }
%struct.jpeg_destination_mgr = type { ptr, i64, ptr, ptr, ptr }
%struct.my_destination_mgr = type { %struct.jpeg_destination_mgr, ptr, ptr }
%struct.JQUANT_TBL = type { [64 x i16], i32 }
%struct.jpeg_comp_master = type { ptr, ptr, ptr, i32, i32 }
%struct.jpeg_component_info.19 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, ptr }
%struct.jpeg_scan_info = type { i32, [4 x i32], i32, i32, i32, i32 }
%struct.my_comp_master = type { %struct.jpeg_comp_master, i32, i32, i32, i32 }
%struct.jpeg_c_coef_controller = type { ptr, ptr }
%struct.jpeg_downsampler = type { ptr, ptr, i32 }
%struct.my_downsampler = type { %struct.jpeg_downsampler, [10 x ptr] }
%struct.my_prep_controller = type { %struct.jpeg_c_coef_controller, [10 x ptr], i32, i32, i32, i32 }
%struct.my_fdct_controller = type { %struct.jpeg_c_coef_controller, ptr, [4 x ptr], ptr, [4 x ptr] }
%struct.phuff_entropy_encoder = type { %struct.jpeg_entropy_encoder.37, i32, ptr, i64, i64, i32, ptr, [4 x i32], i32, i32, i32, ptr, i32, i32, [4 x ptr], [4 x ptr] }
%struct.jpeg_entropy_encoder.37 = type { ptr, ptr, ptr }
%struct.my_coef_controller.63 = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr], [10 x ptr] }
%struct.my_main_controller = type { %struct.jpeg_c_coef_controller, i32, i32, i32, i32, [10 x ptr] }
%struct.jpeg_marker_writer = type { ptr, ptr, ptr, ptr, ptr, ptr }
%struct.jpeg_progress_mgr = type { ptr, i64, i64, i32, i32 }
%struct.anon.0 = type { ptr, i64, i64 }
%union.large_pool_struct = type { %struct.anon.0 }
%struct.jvirt_sarray_control = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.backing_store_struct }
%struct.backing_store_struct = type { ptr, ptr, ptr, ptr, [64 x i8] }
%struct.cdjpeg_progress_mgr = type { %struct.jpeg_progress_mgr, i32, i32, i32 }
%struct.ppm_source_struct = type { %struct.cjpeg_source_struct, ptr, ptr, i64, ptr }
%struct.my_color_converter = type { %struct.jpeg_c_coef_controller, ptr }
%struct.huff_entropy_encoder = type { %struct.jpeg_entropy_encoder.37, %struct.savable_state, i32, i32, [4 x ptr], [4 x ptr], [4 x ptr], [4 x ptr] }
%struct.savable_state = type { i64, i32, [4 x i32] }
%struct.working_state = type { ptr, i64, %struct.savable_state, ptr }
%struct.c_derived_tbl = type { [256 x i32], [256 x i8] }

@jpeg_set_linear_quality.std_luminance_quant_tbl = internal constant [64 x i32] [i32 16, i32 11, i32 10, i32 16, i32 24, i32 40, i32 51, i32 61, i32 12, i32 12, i32 14, i32 19, i32 26, i32 58, i32 60, i32 55, i32 14, i32 13, i32 16, i32 24, i32 40, i32 57, i32 69, i32 56, i32 14, i32 17, i32 22, i32 29, i32 51, i32 87, i32 80, i32 62, i32 18, i32 22, i32 37, i32 56, i32 68, i32 109, i32 103, i32 77, i32 24, i32 35, i32 55, i32 64, i32 81, i32 104, i32 113, i32 92, i32 49, i32 64, i32 78, i32 87, i32 103, i32 121, i32 120, i32 101, i32 72, i32 92, i32 95, i32 98, i32 112, i32 100, i32 103, i32 99], align 16
@jpeg_set_linear_quality.std_chrominance_quant_tbl = internal constant [64 x i32] [i32 17, i32 18, i32 24, i32 47, i32 99, i32 99, i32 99, i32 99, i32 18, i32 21, i32 26, i32 66, i32 99, i32 99, i32 99, i32 99, i32 24, i32 26, i32 56, i32 99, i32 99, i32 99, i32 99, i32 99, i32 47, i32 66, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99, i32 99], align 16
@std_huff_tables.bits_dc_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\01\05\01\01\01\01\01\01\00\00\00\00\00\00\00", align 16
@std_huff_tables.bits_dc_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\03\01\01\01\01\01\01\01\01\01\00\00\00\00\00", align 16
@std_huff_tables.val_dc_chrominance = internal unnamed_addr constant [12 x i8] c"\00\01\02\03\04\05\06\07\08\09\0A\0B", align 1
@std_huff_tables.bits_ac_luminance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\03\03\02\04\03\05\05\04\04\00\00\01}", align 16
@std_huff_tables.val_ac_luminance = internal unnamed_addr constant [162 x i8] c"\01\02\03\00\04\11\05\12!1A\06\13Qa\07\22q\142\81\91\A1\08#B\B1\C1\15R\D1\F0$3br\82\09\0A\16\17\18\19\1A%&'()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E1\E2\E3\E4\E5\E6\E7\E8\E9\EA\F1\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@std_huff_tables.bits_ac_chrominance = internal unnamed_addr constant [17 x i8] c"\00\00\02\01\02\04\04\03\04\07\05\04\04\00\01\02w", align 16
@std_huff_tables.val_ac_chrominance = internal unnamed_addr constant [162 x i8] c"\00\01\02\03\11\04\05!1\06\12AQ\07aq\13\222\81\08\14B\91\A1\B1\C1\09#3R\F0\15br\D1\0A\16$4\E1%\F1\17\18\19\1A&'()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz\82\83\84\85\86\87\88\89\8A\92\93\94\95\96\97\98\99\9A\A2\A3\A4\A5\A6\A7\A8\A9\AA\B2\B3\B4\B5\B6\B7\B8\B9\BA\C2\C3\C4\C5\C6\C7\C8\C9\CA\D2\D3\D4\D5\D6\D7\D8\D9\DA\E2\E3\E4\E5\E6\E7\E8\E9\EA\F2\F3\F4\F5\F6\F7\F8\F9\FA", align 16
@start_pass_fdctmgr.aanscales = internal unnamed_addr constant [64 x i16] [i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 22725, i16 31521, i16 29692, i16 26722, i16 22725, i16 17855, i16 12299, i16 6270, i16 21407, i16 29692, i16 27969, i16 25172, i16 21407, i16 16819, i16 11585, i16 5906, i16 19266, i16 26722, i16 25172, i16 22654, i16 19266, i16 15137, i16 10426, i16 5315, i16 16384, i16 22725, i16 21407, i16 19266, i16 16384, i16 12873, i16 8867, i16 4520, i16 12873, i16 17855, i16 16819, i16 15137, i16 12873, i16 10114, i16 6967, i16 3552, i16 8867, i16 12299, i16 11585, i16 10426, i16 8867, i16 6967, i16 4799, i16 2446, i16 4520, i16 6270, i16 5906, i16 5315, i16 4520, i16 3552, i16 2446, i16 1247], align 16
@start_pass_fdctmgr.aanscalefactor = internal unnamed_addr constant [8 x double] [double 1.000000e+00, double 0x3FF63150B14861EF, double 0x3FF4E7AE914D6FCA, double 0x3FF2D062EF6C11AA, double 1.000000e+00, double 0x3FE92469C0A7BF3B, double 0x3FE1517A7BC720BB, double 0x3FD1A855DE72AB5D], align 16
@jpeg_natural_order = internal unnamed_addr constant [80 x i32] [i32 0, i32 1, i32 8, i32 16, i32 9, i32 2, i32 3, i32 10, i32 17, i32 24, i32 32, i32 25, i32 18, i32 11, i32 4, i32 5, i32 12, i32 19, i32 26, i32 33, i32 40, i32 48, i32 41, i32 34, i32 27, i32 20, i32 13, i32 6, i32 7, i32 14, i32 21, i32 28, i32 35, i32 42, i32 49, i32 56, i32 57, i32 50, i32 43, i32 36, i32 29, i32 22, i32 15, i32 23, i32 30, i32 37, i32 44, i32 51, i32 58, i32 59, i32 52, i32 45, i32 38, i32 31, i32 39, i32 46, i32 53, i32 60, i32 61, i32 54, i32 47, i32 55, i32 62, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63, i32 63], align 16
@.str = private unnamed_addr constant [22 x i8] c"Bogus message code %d\00", align 1
@.str.1 = private unnamed_addr constant [57 x i8] c"Sorry, there are legal restrictions on arithmetic coding\00", align 1
@.str.2 = private unnamed_addr constant [32 x i8] c"ALIGN_TYPE is wrong, please fix\00", align 1
@.str.3 = private unnamed_addr constant [37 x i8] c"MAX_ALLOC_CHUNK is wrong, please fix\00", align 1
@.str.4 = private unnamed_addr constant [26 x i8] c"Bogus buffer control mode\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Invalid component ID %d in SOS\00", align 1
@.str.6 = private unnamed_addr constant [40 x i8] c"IDCT output block size %d not supported\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Bogus input colorspace\00", align 1
@.str.8 = private unnamed_addr constant [22 x i8] c"Bogus JPEG colorspace\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"Bogus marker length\00", align 1
@.str.10 = private unnamed_addr constant [61 x i8] c"Wrong JPEG library version: library is %d, caller expects %d\00", align 1
@.str.11 = private unnamed_addr constant [48 x i8] c"Sampling factors too large for interleaved scan\00", align 1
@.str.12 = private unnamed_addr constant [28 x i8] c"Invalid memory pool code %d\00", align 1
@.str.13 = private unnamed_addr constant [35 x i8] c"Unsupported JPEG data precision %d\00", align 1
@.str.14 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters Ss=%d Se=%d Ah=%d Al=%d\00", align 1
@.str.15 = private unnamed_addr constant [55 x i8] c"Invalid progressive parameters at scan script entry %d\00", align 1
@.str.16 = private unnamed_addr constant [23 x i8] c"Bogus sampling factors\00", align 1
@.str.17 = private unnamed_addr constant [32 x i8] c"Invalid scan script at entry %d\00", align 1
@.str.18 = private unnamed_addr constant [42 x i8] c"Improper call to JPEG library in state %d\00", align 1
@.str.19 = private unnamed_addr constant [77 x i8] c"JPEG parameter struct mismatch: library thinks size is %u, caller expects %u\00", align 1
@.str.20 = private unnamed_addr constant [27 x i8] c"Bogus virtual array access\00", align 1
@.str.21 = private unnamed_addr constant [43 x i8] c"Buffer passed to JPEG library is too small\00", align 1
@.str.22 = private unnamed_addr constant [28 x i8] c"Suspension not allowed here\00", align 1
@.str.23 = private unnamed_addr constant [37 x i8] c"CCIR601 sampling not implemented yet\00", align 1
@.str.24 = private unnamed_addr constant [38 x i8] c"Too many color components: %d, max %d\00", align 1
@.str.25 = private unnamed_addr constant [37 x i8] c"Unsupported color conversion request\00", align 1
@.str.26 = private unnamed_addr constant [19 x i8] c"Bogus DAC index %d\00", align 1
@.str.27 = private unnamed_addr constant [21 x i8] c"Bogus DAC value 0x%x\00", align 1
@.str.28 = private unnamed_addr constant [17 x i8] c"Bogus DHT counts\00", align 1
@.str.29 = private unnamed_addr constant [19 x i8] c"Bogus DHT index %d\00", align 1
@.str.30 = private unnamed_addr constant [19 x i8] c"Bogus DQT index %d\00", align 1
@.str.31 = private unnamed_addr constant [37 x i8] c"Empty JPEG image (DNL not supported)\00", align 1
@.str.32 = private unnamed_addr constant [21 x i8] c"Read from EMS failed\00", align 1
@.str.33 = private unnamed_addr constant [20 x i8] c"Write to EMS failed\00", align 1
@.str.34 = private unnamed_addr constant [33 x i8] c"Didn't expect more than one scan\00", align 1
@.str.35 = private unnamed_addr constant [22 x i8] c"Input file read error\00", align 1
@.str.36 = private unnamed_addr constant [47 x i8] c"Output file write error --- out of disk space?\00", align 1
@.str.37 = private unnamed_addr constant [40 x i8] c"Fractional sampling not implemented yet\00", align 1
@.str.38 = private unnamed_addr constant [33 x i8] c"Huffman code size table overflow\00", align 1
@.str.39 = private unnamed_addr constant [33 x i8] c"Missing Huffman code table entry\00", align 1
@.str.40 = private unnamed_addr constant [47 x i8] c"Maximum supported image dimension is %u pixels\00", align 1
@.str.41 = private unnamed_addr constant [17 x i8] c"Empty input file\00", align 1
@.str.42 = private unnamed_addr constant [28 x i8] c"Premature end of input file\00", align 1
@.str.43 = private unnamed_addr constant [62 x i8] c"Cannot transcode due to multiple use of quantization table %d\00", align 1
@.str.44 = private unnamed_addr constant [39 x i8] c"Scan script does not transmit all data\00", align 1
@.str.45 = private unnamed_addr constant [39 x i8] c"Invalid color quantization mode change\00", align 1
@.str.46 = private unnamed_addr constant [20 x i8] c"Not implemented yet\00", align 1
@.str.47 = private unnamed_addr constant [46 x i8] c"Requested feature was omitted at compile time\00", align 1
@.str.48 = private unnamed_addr constant [28 x i8] c"Backing store not supported\00", align 1
@.str.49 = private unnamed_addr constant [37 x i8] c"Huffman table 0x%02x was not defined\00", align 1
@.str.50 = private unnamed_addr constant [34 x i8] c"JPEG datastream contains no image\00", align 1
@.str.51 = private unnamed_addr constant [42 x i8] c"Quantization table 0x%02x was not defined\00", align 1
@.str.52 = private unnamed_addr constant [43 x i8] c"Not a JPEG file: starts with 0x%02x 0x%02x\00", align 1
@.str.53 = private unnamed_addr constant [30 x i8] c"Insufficient memory (case %d)\00", align 1
@.str.54 = private unnamed_addr constant [46 x i8] c"Cannot quantize more than %d color components\00", align 1
@.str.55 = private unnamed_addr constant [40 x i8] c"Cannot quantize to fewer than %d colors\00", align 1
@.str.56 = private unnamed_addr constant [39 x i8] c"Cannot quantize to more than %d colors\00", align 1
@.str.57 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOF markers\00", align 1
@.str.58 = private unnamed_addr constant [48 x i8] c"Invalid JPEG file structure: missing SOS marker\00", align 1
@.str.59 = private unnamed_addr constant [42 x i8] c"Unsupported JPEG process: SOF type 0x%02x\00", align 1
@.str.60 = private unnamed_addr constant [45 x i8] c"Invalid JPEG file structure: two SOI markers\00", align 1
@.str.61 = private unnamed_addr constant [44 x i8] c"Invalid JPEG file structure: SOS before SOF\00", align 1
@.str.62 = private unnamed_addr constant [35 x i8] c"Failed to create temporary file %s\00", align 1
@.str.63 = private unnamed_addr constant [30 x i8] c"Read failed on temporary file\00", align 1
@.str.64 = private unnamed_addr constant [30 x i8] c"Seek failed on temporary file\00", align 1
@.str.65 = private unnamed_addr constant [54 x i8] c"Write failed on temporary file --- out of disk space?\00", align 1
@.str.66 = private unnamed_addr constant [42 x i8] c"Application transferred too few scanlines\00", align 1
@.str.67 = private unnamed_addr constant [31 x i8] c"Unsupported marker type 0x%02x\00", align 1
@.str.68 = private unnamed_addr constant [35 x i8] c"Virtual array controller messed up\00", align 1
@.str.69 = private unnamed_addr constant [39 x i8] c"Image too wide for this implementation\00", align 1
@.str.70 = private unnamed_addr constant [21 x i8] c"Read from XMS failed\00", align 1
@.str.71 = private unnamed_addr constant [20 x i8] c"Write to XMS failed\00", align 1
@.str.74 = private unnamed_addr constant [62 x i8] c"Caution: quantization tables are too coarse for baseline JPEG\00", align 1
@.str.75 = private unnamed_addr constant [66 x i8] c"Adobe APP14 marker: version %d, flags 0x%04x 0x%04x, transform %d\00", align 1
@.str.76 = private unnamed_addr constant [42 x i8] c"Unknown APP0 marker (not JFIF), length %u\00", align 1
@.str.77 = private unnamed_addr constant [44 x i8] c"Unknown APP14 marker (not Adobe), length %u\00", align 1
@.str.78 = private unnamed_addr constant [39 x i8] c"Define Arithmetic Table 0x%02x: 0x%02x\00", align 1
@.str.79 = private unnamed_addr constant [28 x i8] c"Define Huffman Table 0x%02x\00", align 1
@.str.80 = private unnamed_addr constant [43 x i8] c"Define Quantization Table %d  precision %d\00", align 1
@.str.81 = private unnamed_addr constant [27 x i8] c"Define Restart Interval %u\00", align 1
@.str.82 = private unnamed_addr constant [20 x i8] c"Freed EMS handle %u\00", align 1
@.str.83 = private unnamed_addr constant [23 x i8] c"Obtained EMS handle %u\00", align 1
@.str.84 = private unnamed_addr constant [13 x i8] c"End Of Image\00", align 1
@.str.85 = private unnamed_addr constant [40 x i8] c"        %3d %3d %3d %3d %3d %3d %3d %3d\00", align 1
@.str.86 = private unnamed_addr constant [36 x i8] c"JFIF APP0 marker, density %dx%d  %d\00", align 1
@.str.87 = private unnamed_addr constant [60 x i8] c"Warning: thumbnail image size does not match data length %u\00", align 1
@.str.88 = private unnamed_addr constant [43 x i8] c"Unknown JFIF minor revision number %d.%02d\00", align 1
@.str.89 = private unnamed_addr constant [33 x i8] c"    with %d x %d thumbnail image\00", align 1
@.str.90 = private unnamed_addr constant [34 x i8] c"Skipping marker 0x%02x, length %u\00", align 1
@.str.91 = private unnamed_addr constant [25 x i8] c"Unexpected marker 0x%02x\00", align 1
@.str.92 = private unnamed_addr constant [40 x i8] c"        %4u %4u %4u %4u %4u %4u %4u %4u\00", align 1
@.str.93 = private unnamed_addr constant [35 x i8] c"Quantizing to %d = %d*%d*%d colors\00", align 1
@.str.94 = private unnamed_addr constant [24 x i8] c"Quantizing to %d colors\00", align 1
@.str.95 = private unnamed_addr constant [36 x i8] c"Selected %d colors for quantization\00", align 1
@.str.96 = private unnamed_addr constant [37 x i8] c"At marker 0x%02x, recovery action %d\00", align 1
@.str.97 = private unnamed_addr constant [6 x i8] c"RST%d\00", align 1
@.str.98 = private unnamed_addr constant [57 x i8] c"Smoothing not supported with nonstandard sampling ratios\00", align 1
@.str.99 = private unnamed_addr constant [58 x i8] c"Start Of Frame 0x%02x: width=%u, height=%u, components=%d\00", align 1
@.str.100 = private unnamed_addr constant [31 x i8] c"    Component %d: %dhx%dv q=%d\00", align 1
@.str.101 = private unnamed_addr constant [15 x i8] c"Start of Image\00", align 1
@.str.102 = private unnamed_addr constant [29 x i8] c"Start Of Scan: %d components\00", align 1
@.str.103 = private unnamed_addr constant [30 x i8] c"    Component %d: dc=%d ac=%d\00", align 1
@.str.104 = private unnamed_addr constant [29 x i8] c"  Ss=%d, Se=%d, Ah=%d, Al=%d\00", align 1
@.str.105 = private unnamed_addr constant [25 x i8] c"Closed temporary file %s\00", align 1
@.str.106 = private unnamed_addr constant [25 x i8] c"Opened temporary file %s\00", align 1
@.str.107 = private unnamed_addr constant [52 x i8] c"Unrecognized component IDs %d %d %d, assuming YCbCr\00", align 1
@.str.108 = private unnamed_addr constant [20 x i8] c"Freed XMS handle %u\00", align 1
@.str.109 = private unnamed_addr constant [23 x i8] c"Obtained XMS handle %u\00", align 1
@.str.110 = private unnamed_addr constant [38 x i8] c"Unknown Adobe color transform code %d\00", align 1
@.str.111 = private unnamed_addr constant [66 x i8] c"Inconsistent progression sequence for component %d coefficient %d\00", align 1
@.str.112 = private unnamed_addr constant [60 x i8] c"Corrupt JPEG data: %u extraneous bytes before marker 0x%02x\00", align 1
@.str.113 = private unnamed_addr constant [49 x i8] c"Corrupt JPEG data: premature end of data segment\00", align 1
@.str.114 = private unnamed_addr constant [36 x i8] c"Corrupt JPEG data: bad Huffman code\00", align 1
@.str.115 = private unnamed_addr constant [46 x i8] c"Warning: unknown JFIF revision number %d.%02d\00", align 1
@.str.116 = private unnamed_addr constant [27 x i8] c"Premature end of JPEG file\00", align 1
@.str.117 = private unnamed_addr constant [56 x i8] c"Corrupt JPEG data: found marker 0x%02x instead of RST%d\00", align 1
@.str.118 = private unnamed_addr constant [43 x i8] c"Invalid SOS parameters for sequential JPEG\00", align 1
@.str.119 = private unnamed_addr constant [43 x i8] c"Application transferred too many scanlines\00", align 1
@jpeg_std_message_table = internal constant [121 x ptr] [ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.58.180, ptr @.str.57.179, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.108, ptr @.str.109, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.119, ptr null], align 16
@.str.120 = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@.str.121 = private unnamed_addr constant [8 x i8] c"JPEGMEM\00", align 1
@first_pool_slop = internal unnamed_addr constant [2 x i64] [i64 1600, i64 16000], align 16
@extra_pool_slop = internal unnamed_addr constant [2 x i64] [i64 0, i64 5000], align 16
@progname = internal unnamed_addr global ptr null, align 8
@.str.139 = private unnamed_addr constant [6 x i8] c"cjpeg\00", align 1
@cdjpeg_message_table = internal constant [44 x ptr] [ptr null, ptr @.str.5.198, ptr @.str.6.199, ptr @.str.7.200, ptr @.str.8.201, ptr @.str.9.202, ptr @.str.10.203, ptr @.str.11.204, ptr @.str.12.205, ptr @.str.13.206, ptr @.str.14.207, ptr @.str.15.208, ptr @.str.16.209, ptr @.str.17.210, ptr @.str.18.211, ptr @.str.19.212, ptr @.str.20.213, ptr @.str.21.214, ptr @.str.22.215, ptr @.str.23.216, ptr @.str.24.217, ptr @.str.25.218, ptr @.str.26.219, ptr @.str.27.220, ptr @.str.28.221, ptr @.str.29.222, ptr @.str.30.223, ptr @.str.31.224, ptr @.str.32.225, ptr @.str.33.226, ptr @.str.34.227, ptr @.str.35.228, ptr @.str.36.229, ptr @.str.37.230, ptr @.str.38.231, ptr @.str.39.232, ptr @.str.40.233, ptr @.str.41.234, ptr @.str.42.235, ptr @.str.43.236, ptr @.str.44.237, ptr @.str.45.238, ptr @.str.46.239, ptr null], align 16
@.str.1.140 = private unnamed_addr constant [25 x i8] c"%s: only one input file\0A\00", align 1
@.str.2.141 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.3.142 = private unnamed_addr constant [19 x i8] c"%s: can't open %s\0A\00", align 1
@outfilename = internal unnamed_addr global ptr null, align 8
@.str.4.143 = private unnamed_addr constant [3 x i8] c"wb\00", align 1
@.str.5.198 = private unnamed_addr constant [32 x i8] c"Unsupported BMP colormap format\00", align 1
@.str.6.199 = private unnamed_addr constant [43 x i8] c"Only 8- and 24-bit BMP files are supported\00", align 1
@.str.7.200 = private unnamed_addr constant [36 x i8] c"Invalid BMP file: bad header length\00", align 1
@.str.8.201 = private unnamed_addr constant [42 x i8] c"Invalid BMP file: biPlanes not equal to 1\00", align 1
@.str.9.202 = private unnamed_addr constant [36 x i8] c"BMP output must be grayscale or RGB\00", align 1
@.str.10.203 = private unnamed_addr constant [41 x i8] c"Sorry, compressed BMPs not yet supported\00", align 1
@.str.11.204 = private unnamed_addr constant [40 x i8] c"Not a BMP file - does not start with BM\00", align 1
@.str.12.205 = private unnamed_addr constant [23 x i8] c"%ux%u 24-bit BMP image\00", align 1
@.str.13.206 = private unnamed_addr constant [34 x i8] c"%ux%u 8-bit colormapped BMP image\00", align 1
@.str.14.207 = private unnamed_addr constant [27 x i8] c"%ux%u 24-bit OS2 BMP image\00", align 1
@.str.15.208 = private unnamed_addr constant [38 x i8] c"%ux%u 8-bit colormapped OS2 BMP image\00", align 1
@.str.16.209 = private unnamed_addr constant [24 x i8] c"GIF output got confused\00", align 1
@.str.17.210 = private unnamed_addr constant [22 x i8] c"Bogus GIF codesize %d\00", align 1
@.str.18.211 = private unnamed_addr constant [36 x i8] c"GIF output must be grayscale or RGB\00", align 1
@.str.19.212 = private unnamed_addr constant [27 x i8] c"Too few images in GIF file\00", align 1
@.str.20.213 = private unnamed_addr constant [15 x i8] c"Not a GIF file\00", align 1
@.str.21.214 = private unnamed_addr constant [19 x i8] c"%ux%ux%d GIF image\00", align 1
@.str.22.215 = private unnamed_addr constant [48 x i8] c"Warning: unexpected GIF version number '%c%c%c'\00", align 1
@.str.23.216 = private unnamed_addr constant [44 x i8] c"Ignoring GIF extension block of type 0x%02x\00", align 1
@.str.24.217 = private unnamed_addr constant [35 x i8] c"Caution: nonsquare pixels in input\00", align 1
@.str.25.218 = private unnamed_addr constant [25 x i8] c"Corrupt data in GIF file\00", align 1
@.str.26.219 = private unnamed_addr constant [40 x i8] c"Bogus char 0x%02x in GIF file, ignoring\00", align 1
@.str.27.220 = private unnamed_addr constant [27 x i8] c"Premature end of GIF image\00", align 1
@.str.28.221 = private unnamed_addr constant [20 x i8] c"Ran out of GIF bits\00", align 1
@.str.29.222 = private unnamed_addr constant [36 x i8] c"PPM output must be grayscale or RGB\00", align 1
@.str.30.223 = private unnamed_addr constant [28 x i8] c"Nonnumeric data in PPM file\00", align 1
@.str.31.224 = private unnamed_addr constant [15 x i8] c"Not a PPM file\00", align 1
@.str.32.225 = private unnamed_addr constant [16 x i8] c"%ux%u PGM image\00", align 1
@.str.33.226 = private unnamed_addr constant [21 x i8] c"%ux%u text PGM image\00", align 1
@.str.34.227 = private unnamed_addr constant [16 x i8] c"%ux%u PPM image\00", align 1
@.str.35.228 = private unnamed_addr constant [21 x i8] c"%ux%u text PPM image\00", align 1
@.str.36.229 = private unnamed_addr constant [34 x i8] c"Unsupported Targa colormap format\00", align 1
@.str.37.230 = private unnamed_addr constant [34 x i8] c"Invalid or unsupported Targa file\00", align 1
@.str.38.231 = private unnamed_addr constant [38 x i8] c"Targa output must be grayscale or RGB\00", align 1
@.str.39.232 = private unnamed_addr constant [22 x i8] c"%ux%u RGB Targa image\00", align 1
@.str.40.233 = private unnamed_addr constant [28 x i8] c"%ux%u grayscale Targa image\00", align 1
@.str.41.234 = private unnamed_addr constant [30 x i8] c"%ux%u colormapped Targa image\00", align 1
@.str.42.235 = private unnamed_addr constant [51 x i8] c"Color map file is invalid or of unsupported format\00", align 1
@.str.43.236 = private unnamed_addr constant [53 x i8] c"Output file format cannot handle %d colormap entries\00", align 1
@.str.44.237 = private unnamed_addr constant [14 x i8] c"ungetc failed\00", align 1
@.str.45.238 = private unnamed_addr constant [59 x i8] c"Unrecognized input file format --- perhaps you need -targa\00", align 1
@.str.46.239 = private unnamed_addr constant [31 x i8] c"Unsupported output file format\00", align 1
@is_targa = internal unnamed_addr global i1 false, align 4
@.str.47.169 = private unnamed_addr constant [11 x i8] c"arithmetic\00", align 1
@.str.48.170 = private unnamed_addr constant [44 x i8] c"%s: sorry, arithmetic coding not supported\0A\00", align 1
@.str.49.171 = private unnamed_addr constant [9 x i8] c"baseline\00", align 1
@.str.50.172 = private unnamed_addr constant [4 x i8] c"dct\00", align 1
@.str.51.173 = private unnamed_addr constant [4 x i8] c"int\00", align 1
@.str.52.174 = private unnamed_addr constant [5 x i8] c"fast\00", align 1
@.str.53.175 = private unnamed_addr constant [6 x i8] c"float\00", align 1
@.str.54.176 = private unnamed_addr constant [6 x i8] c"debug\00", align 1
@.str.55.177 = private unnamed_addr constant [8 x i8] c"verbose\00", align 1
@parse_switches.printed_version = internal unnamed_addr global i1 false, align 4
@.str.56.178 = private unnamed_addr constant [47 x i8] c"Independent JPEG Group's CJPEG, version %s\0A%s\0A\00", align 1
@.str.57.179 = private unnamed_addr constant [13 x i8] c"6a  7-Feb-96\00", align 1
@.str.58.180 = private unnamed_addr constant [35 x i8] c"Copyright (C) 1996, Thomas G. Lane\00", align 1
@.str.59.181 = private unnamed_addr constant [10 x i8] c"grayscale\00", align 1
@.str.60.182 = private unnamed_addr constant [10 x i8] c"greyscale\00", align 1
@.str.61.183 = private unnamed_addr constant [10 x i8] c"maxmemory\00", align 1
@.str.62.184 = private unnamed_addr constant [6 x i8] c"%ld%c\00", align 1
@.str.63.185 = private unnamed_addr constant [9 x i8] c"optimize\00", align 1
@.str.64.186 = private unnamed_addr constant [9 x i8] c"optimise\00", align 1
@.str.65.187 = private unnamed_addr constant [8 x i8] c"outfile\00", align 1
@.str.66.188 = private unnamed_addr constant [12 x i8] c"progressive\00", align 1
@.str.67.189 = private unnamed_addr constant [8 x i8] c"quality\00", align 1
@.str.68.190 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@.str.69.191 = private unnamed_addr constant [7 x i8] c"qslots\00", align 1
@.str.70.192 = private unnamed_addr constant [8 x i8] c"qtables\00", align 1
@.str.71.193 = private unnamed_addr constant [8 x i8] c"restart\00", align 1
@.str.72.194 = private unnamed_addr constant [7 x i8] c"sample\00", align 1
@.str.73.195 = private unnamed_addr constant [6 x i8] c"scans\00", align 1
@.str.74.196 = private unnamed_addr constant [7 x i8] c"smooth\00", align 1
@.str.75.197 = private unnamed_addr constant [6 x i8] c"targa\00", align 1
@.str.76.144 = private unnamed_addr constant [22 x i8] c"usage: %s [switches] \00", align 1
@.str.77.145 = private unnamed_addr constant [13 x i8] c"[inputfile]\0A\00", align 1
@.str.78.146 = private unnamed_addr constant [38 x i8] c"Switches (names may be abbreviated):\0A\00", align 1
@.str.79.147 = private unnamed_addr constant [69 x i8] c"  -quality N     Compression quality (0..100; 5-95 is useful range)\0A\00", align 1
@.str.80.148 = private unnamed_addr constant [46 x i8] c"  -grayscale     Create monochrome JPEG file\0A\00", align 1
@.str.81.149 = private unnamed_addr constant [78 x i8] c"  -optimize      Optimize Huffman table (smaller file, but slow compression)\0A\00", align 1
@.str.82.150 = private unnamed_addr constant [47 x i8] c"  -progressive   Create progressive JPEG file\0A\00", align 1
@.str.83.151 = private unnamed_addr constant [66 x i8] c"  -targa         Input file is Targa format (usually not needed)\0A\00", align 1
@.str.84.152 = private unnamed_addr constant [30 x i8] c"Switches for advanced users:\0A\00", align 1
@.str.85.153 = private unnamed_addr constant [43 x i8] c"  -dct int       Use integer DCT method%s\0A\00", align 1
@.str.86.154 = private unnamed_addr constant [11 x i8] c" (default)\00", align 1
@.str.87.155 = private unnamed_addr constant [57 x i8] c"  -dct fast      Use fast integer DCT (less accurate)%s\0A\00", align 1
@.str.88.156 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@.str.89.157 = private unnamed_addr constant [50 x i8] c"  -dct float     Use floating-point DCT method%s\0A\00", align 1
@.str.90.158 = private unnamed_addr constant [68 x i8] c"  -restart N     Set restart interval in rows, or in blocks with B\0A\00", align 1
@.str.91.159 = private unnamed_addr constant [63 x i8] c"  -smooth N      Smooth dithered input (N=1..100 is strength)\0A\00", align 1
@.str.92.160 = private unnamed_addr constant [52 x i8] c"  -maxmemory N   Maximum memory to use (in kbytes)\0A\00", align 1
@.str.93.161 = private unnamed_addr constant [47 x i8] c"  -outfile name  Specify name for output file\0A\00", align 1
@.str.94.162 = private unnamed_addr constant [44 x i8] c"  -verbose  or  -debug   Emit debug output\0A\00", align 1
@.str.95.163 = private unnamed_addr constant [23 x i8] c"Switches for wizards:\0A\00", align 1
@.str.96.164 = private unnamed_addr constant [40 x i8] c"  -baseline      Force baseline output\0A\00", align 1
@.str.97.165 = private unnamed_addr constant [56 x i8] c"  -qtables file  Use quantization tables given in file\0A\00", align 1
@.str.98.166 = private unnamed_addr constant [56 x i8] c"  -qslots N[,...]    Set component quantization tables\0A\00", align 1
@.str.99.167 = private unnamed_addr constant [53 x i8] c"  -sample HxV[,...]  Set component sampling factors\0A\00", align 1
@.str.100.168 = private unnamed_addr constant [57 x i8] c"  -scans file    Create multi-scan JPEG per script file\0A\00", align 1
@c5to8bits = internal unnamed_addr constant [32 x i8] c"\00\08\10\19!)1:BJRZcks{\84\8C\94\9C\A5\AD\B5\BD\C5\CE\D6\DE\E6\EF\F7\FF", align 16
@.str.253 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@stderr = external local_unnamed_addr global ptr, align 8
@.str.1.254 = private unnamed_addr constant [26 x i8] c"Can't open table file %s\0A\00", align 1
@.str.2.255 = private unnamed_addr constant [28 x i8] c"Too many tables in file %s\0A\00", align 1
@.str.3.256 = private unnamed_addr constant [31 x i8] c"Invalid table data in file %s\0A\00", align 1
@.str.4.257 = private unnamed_addr constant [29 x i8] c"Non-numeric data in file %s\0A\00", align 1
@.str.5.260 = private unnamed_addr constant [36 x i8] c"Can't open scan definition file %s\0A\00", align 1
@.str.6.261 = private unnamed_addr constant [35 x i8] c"Too many scans defined in file %s\0A\00", align 1
@.str.7.262 = private unnamed_addr constant [44 x i8] c"Too many components in one scan in file %s\0A\00", align 1
@.str.8.263 = private unnamed_addr constant [38 x i8] c"Invalid scan entry format in file %s\0A\00", align 1
@.str.9.266 = private unnamed_addr constant [5 x i8] c"%d%c\00", align 1
@.str.10.267 = private unnamed_addr constant [45 x i8] c"JPEG quantization tables are numbered 0..%d\0A\00", align 1
@.str.11.270 = private unnamed_addr constant [9 x i8] c"%d%c%d%c\00", align 1
@.str.12.271 = private unnamed_addr constant [36 x i8] c"JPEG sampling factors must be 1..4\0A\00", align 1
@stdin = external local_unnamed_addr global ptr, align 8
@stdout = external local_unnamed_addr global ptr, align 8

; Function Attrs: noreturn nounwind optsize uwtable
define dso_local i32 @main(i32 noundef %0, ptr nocapture noundef readonly %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca [10 x i32], align 16
  %5 = alloca [10 x [64 x i32]], align 16
  %6 = alloca i64, align 8
  %7 = alloca i8, align 1
  %8 = alloca %struct.jpeg_compress_struct, align 8
  %9 = alloca %struct.jpeg_error_mgr, align 8
  call void @llvm.lifetime.start.p0(i64 496, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 168, ptr nonnull %9) #23
  %10 = load ptr, ptr %1, align 8, !tbaa !7
  store ptr %10, ptr @progname, align 8, !tbaa !7
  %11 = icmp eq ptr %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %2
  %13 = load i8, ptr %10, align 1, !tbaa !11
  %14 = icmp eq i8 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %12, %2
  store ptr @.str.139, ptr @progname, align 8, !tbaa !7
  br label %16

16:                                               ; preds = %15, %12
  store ptr @error_exit, ptr %9, align 8, !tbaa !12
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 1
  store ptr @emit_message, ptr %17, align 8, !tbaa !16
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 2
  store ptr @output_message, ptr %18, align 8, !tbaa !17
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 3
  store ptr @format_message, ptr %19, align 8, !tbaa !18
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 4
  store ptr @reset_error_mgr, ptr %20, align 8, !tbaa !19
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 7
  store i32 0, ptr %21, align 4, !tbaa !20
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 8
  store i64 0, ptr %22, align 8, !tbaa !21
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 0, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 9
  store ptr @jpeg_std_message_table, ptr %24, align 8, !tbaa !23
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 10
  store i32 119, ptr %25, align 8, !tbaa !24
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 11
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %26, i8 0, i64 16, i1 false)
  store ptr %9, ptr %8, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 1
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 2
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(496) %28, i8 0, i64 480, i1 false)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %27, align 8, !tbaa !29
  store i64 0, ptr %6, align 8, !tbaa !31
  %29 = call noalias dereferenceable_or_null(160) ptr @malloc(i64 noundef 160) #24
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %33

31:                                               ; preds = %16
  store i32 53, ptr %23, align 8, !tbaa !22
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 6
  store i32 0, ptr %32, align 4, !tbaa !11
  call void @error_exit(ptr noundef nonnull %8) #25
  unreachable

33:                                               ; preds = %16
  store ptr @alloc_small, ptr %29, align 8, !tbaa !32
  %34 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 1
  store ptr @alloc_large, ptr %34, align 8, !tbaa !35
  %35 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 2
  store ptr @alloc_sarray, ptr %35, align 8, !tbaa !36
  %36 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 3
  store ptr @alloc_barray, ptr %36, align 8, !tbaa !37
  %37 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 4
  store ptr @request_virt_sarray, ptr %37, align 8, !tbaa !38
  %38 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 5
  store ptr @request_virt_barray, ptr %38, align 8, !tbaa !39
  %39 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 6
  store ptr @realize_virt_arrays, ptr %39, align 8, !tbaa !40
  %40 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 7
  store ptr @access_virt_sarray, ptr %40, align 8, !tbaa !41
  %41 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 8
  store ptr @access_virt_barray, ptr %41, align 8, !tbaa !42
  %42 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 9
  store ptr @free_pool, ptr %42, align 8, !tbaa !43
  %43 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 10
  store ptr @self_destruct, ptr %43, align 8, !tbaa !44
  %44 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %29, i64 0, i32 11
  %45 = getelementptr inbounds %struct.my_memory_mgr, ptr %29, i64 0, i32 5
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %44, i8 0, i64 56, i1 false)
  store i64 160, ptr %45, align 8, !tbaa !45
  store ptr %29, ptr %27, align 8, !tbaa !29
  %46 = call ptr @getenv(ptr noundef nonnull @.str.121) #25
  %47 = icmp eq ptr %46, null
  br i1 %47, label %60, label %48

48:                                               ; preds = %33
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %7) #23
  store i8 120, ptr %7, align 1, !tbaa !11
  %49 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %46, ptr noundef nonnull @.str.62.184, ptr noundef nonnull %6, ptr noundef nonnull %7) #25
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %48
  %52 = load i8, ptr %7, align 1
  %53 = and i8 %52, -33
  %54 = icmp eq i8 %53, 77
  %55 = load i64, ptr %6, align 8, !tbaa !31
  %56 = mul nsw i64 %55, 1000
  %57 = select i1 %54, i64 %56, i64 %55
  %58 = mul nsw i64 %57, 1000
  store i64 %58, ptr %44, align 8, !tbaa !46
  br label %59

59:                                               ; preds = %51, %48
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %7) #23
  br label %60

60:                                               ; preds = %59, %33
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  store ptr null, ptr %28, align 8, !tbaa !47
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 5
  store ptr null, ptr %61, align 8, !tbaa !48
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 14
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 10
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %62, i8 0, i64 104, i1 false)
  store double 1.000000e+00, ptr %63, align 8, !tbaa !49
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 4
  store i32 100, ptr %64, align 4, !tbaa !50
  store ptr @cdjpeg_message_table, ptr %26, align 8, !tbaa !51
  %65 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 12
  store i32 1000, ptr %65, align 8, !tbaa !52
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 13
  store i32 1043, ptr %66, align 4, !tbaa !53
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 9
  store i32 2, ptr %67, align 4, !tbaa !54
  %68 = load ptr, ptr %27, align 8, !tbaa !55
  %69 = load ptr, ptr %68, align 8, !tbaa !56
  %70 = call ptr %69(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 960) #25
  store ptr %70, ptr %62, align 8, !tbaa !57
  %71 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 11
  store i32 8, ptr %71, align 8, !tbaa !58
  call fastcc void @jpeg_add_quant_table(ptr noundef nonnull %8, i32 noundef 0, ptr noundef nonnull @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef 50, i32 noundef 1) #26
  call fastcc void @jpeg_add_quant_table(ptr noundef nonnull %8, i32 noundef 1, ptr noundef nonnull @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef 50, i32 noundef 1) #26
  %72 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 16
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  %74 = icmp eq ptr %73, null
  br i1 %74, label %75, label %80

75:                                               ; preds = %60
  %76 = load ptr, ptr %27, align 8, !tbaa !29
  %77 = load ptr, ptr %76, align 8, !tbaa !56
  %78 = call ptr %77(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 280) #25
  %79 = getelementptr inbounds %struct.JHUFF_TBL, ptr %78, i64 0, i32 2
  store i32 0, ptr %79, align 4, !tbaa !59
  store ptr %78, ptr %72, align 8, !tbaa !7
  br label %80

80:                                               ; preds = %75, %60
  %81 = phi ptr [ %78, %75 ], [ %73, %60 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %81, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_luminance, i64 17, i1 false)
  %82 = load ptr, ptr %72, align 8, !tbaa !7
  %83 = getelementptr inbounds %struct.JHUFF_TBL, ptr %82, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %83, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %84 = load ptr, ptr %72, align 8, !tbaa !7
  %85 = getelementptr inbounds %struct.JHUFF_TBL, ptr %84, i64 0, i32 2
  store i32 0, ptr %85, align 4, !tbaa !59
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 17
  %87 = load ptr, ptr %86, align 8, !tbaa !7
  %88 = icmp eq ptr %87, null
  br i1 %88, label %89, label %94

89:                                               ; preds = %80
  %90 = load ptr, ptr %27, align 8, !tbaa !29
  %91 = load ptr, ptr %90, align 8, !tbaa !56
  %92 = call ptr %91(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 280) #25
  %93 = getelementptr inbounds %struct.JHUFF_TBL, ptr %92, i64 0, i32 2
  store i32 0, ptr %93, align 4, !tbaa !59
  store ptr %92, ptr %86, align 8, !tbaa !7
  br label %94

94:                                               ; preds = %89, %80
  %95 = phi ptr [ %92, %89 ], [ %87, %80 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %95, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_luminance, i64 17, i1 false)
  %96 = load ptr, ptr %86, align 8, !tbaa !7
  %97 = getelementptr inbounds %struct.JHUFF_TBL, ptr %96, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %97, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_luminance, i64 256, i1 false)
  %98 = load ptr, ptr %86, align 8, !tbaa !7
  %99 = getelementptr inbounds %struct.JHUFF_TBL, ptr %98, i64 0, i32 2
  store i32 0, ptr %99, align 4, !tbaa !59
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 16, i64 1
  %101 = load ptr, ptr %100, align 8, !tbaa !7
  %102 = icmp eq ptr %101, null
  br i1 %102, label %103, label %108

103:                                              ; preds = %94
  %104 = load ptr, ptr %27, align 8, !tbaa !29
  %105 = load ptr, ptr %104, align 8, !tbaa !56
  %106 = call ptr %105(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 280) #25
  %107 = getelementptr inbounds %struct.JHUFF_TBL, ptr %106, i64 0, i32 2
  store i32 0, ptr %107, align 4, !tbaa !59
  store ptr %106, ptr %100, align 8, !tbaa !7
  br label %108

108:                                              ; preds = %103, %94
  %109 = phi ptr [ %106, %103 ], [ %101, %94 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %109, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_dc_chrominance, i64 17, i1 false)
  %110 = load ptr, ptr %100, align 8, !tbaa !7
  %111 = getelementptr inbounds %struct.JHUFF_TBL, ptr %110, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %111, ptr noundef nonnull align 1 dereferenceable(256) @std_huff_tables.val_dc_chrominance, i64 256, i1 false)
  %112 = load ptr, ptr %100, align 8, !tbaa !7
  %113 = getelementptr inbounds %struct.JHUFF_TBL, ptr %112, i64 0, i32 2
  store i32 0, ptr %113, align 4, !tbaa !59
  %114 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 17, i64 1
  %115 = load ptr, ptr %114, align 8, !tbaa !7
  %116 = icmp eq ptr %115, null
  br i1 %116, label %117, label %122

117:                                              ; preds = %108
  %118 = load ptr, ptr %27, align 8, !tbaa !29
  %119 = load ptr, ptr %118, align 8, !tbaa !56
  %120 = call ptr %119(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 280) #25
  %121 = getelementptr inbounds %struct.JHUFF_TBL, ptr %120, i64 0, i32 2
  store i32 0, ptr %121, align 4, !tbaa !59
  store ptr %120, ptr %114, align 8, !tbaa !7
  br label %122

122:                                              ; preds = %117, %108
  %123 = phi ptr [ %120, %117 ], [ %115, %108 ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %123, ptr noundef nonnull align 16 dereferenceable(17) @std_huff_tables.bits_ac_chrominance, i64 17, i1 false)
  %124 = load ptr, ptr %114, align 8, !tbaa !7
  %125 = getelementptr inbounds %struct.JHUFF_TBL, ptr %124, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(256) %125, ptr noundef nonnull align 16 dereferenceable(256) @std_huff_tables.val_ac_chrominance, i64 256, i1 false)
  %126 = load ptr, ptr %114, align 8, !tbaa !7
  %127 = getelementptr inbounds %struct.JHUFF_TBL, ptr %126, i64 0, i32 2
  store i32 0, ptr %127, align 4, !tbaa !59
  %128 = getelementptr inbounds i8, ptr %8, i64 184
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %128, i8 0, i64 16, i1 false), !tbaa !11
  %129 = getelementptr inbounds i8, ptr %8, i64 200
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %129, i8 1, i64 16, i1 false), !tbaa !11
  %130 = getelementptr inbounds i8, ptr %8, i64 216
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %130, i8 5, i64 16, i1 false), !tbaa !11
  %131 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 22
  %132 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 21
  store i32 0, ptr %132, align 8, !tbaa !61
  %133 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %131, i8 0, i64 16, i1 false)
  %134 = load i32, ptr %71, align 8, !tbaa !58
  %135 = icmp sgt i32 %134, 8
  %136 = zext i1 %135 to i32
  store i32 %136, ptr %133, align 8
  %137 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 26
  %138 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 32
  store i8 0, ptr %138, align 4, !tbaa !62
  %139 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 33
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %137, i8 0, i64 20, i1 false)
  store i16 1, ptr %139, align 2, !tbaa !63
  %140 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 34
  store i16 1, ptr %140, align 8, !tbaa !64
  call fastcc void @jpeg_default_colorspace(ptr noundef nonnull %8) #26
  %141 = call fastcc i32 @parse_switches(ptr noundef nonnull %8, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 0) #26
  %142 = add nsw i32 %0, -1
  %143 = icmp slt i32 %141, %142
  br i1 %143, label %144, label %148

144:                                              ; preds = %122
  %145 = load ptr, ptr @stderr, align 8, !tbaa !7
  %146 = load ptr, ptr @progname, align 8, !tbaa !7
  %147 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %145, ptr noundef nonnull @.str.1.140, ptr noundef %146) #27
  call fastcc void @usage() #26
  unreachable

148:                                              ; preds = %122
  %149 = icmp slt i32 %141, %0
  br i1 %149, label %150, label %161

150:                                              ; preds = %148
  %151 = sext i32 %141 to i64
  %152 = getelementptr inbounds ptr, ptr %1, i64 %151
  %153 = load ptr, ptr %152, align 8, !tbaa !7
  %154 = call noalias ptr @fopen(ptr noundef %153, ptr noundef nonnull @.str.2.141) #26
  %155 = icmp eq ptr %154, null
  br i1 %155, label %156, label %163

156:                                              ; preds = %150
  %157 = load ptr, ptr @stderr, align 8, !tbaa !7
  %158 = load ptr, ptr @progname, align 8, !tbaa !7
  %159 = load ptr, ptr %152, align 8, !tbaa !7
  %160 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %157, ptr noundef nonnull @.str.3.142, ptr noundef %158, ptr noundef %159) #27
  call void @exit(i32 noundef 1) #28
  unreachable

161:                                              ; preds = %148
  %162 = load ptr, ptr @stdin, align 8, !tbaa !7
  br label %163

163:                                              ; preds = %161, %150
  %164 = phi ptr [ %154, %150 ], [ %162, %161 ]
  %165 = load ptr, ptr @outfilename, align 8, !tbaa !7
  %166 = icmp eq ptr %165, null
  br i1 %166, label %175, label %167

167:                                              ; preds = %163
  %168 = call noalias ptr @fopen(ptr noundef nonnull %165, ptr noundef nonnull @.str.4.143) #26
  %169 = icmp eq ptr %168, null
  br i1 %169, label %170, label %177

170:                                              ; preds = %167
  %171 = load ptr, ptr @stderr, align 8, !tbaa !7
  %172 = load ptr, ptr @progname, align 8, !tbaa !7
  %173 = load ptr, ptr @outfilename, align 8, !tbaa !7
  %174 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %171, ptr noundef nonnull @.str.3.142, ptr noundef %172, ptr noundef %173) #27
  call void @exit(i32 noundef 1) #28
  unreachable

175:                                              ; preds = %163
  %176 = load ptr, ptr @stdout, align 8, !tbaa !7
  br label %177

177:                                              ; preds = %175, %167
  %178 = phi ptr [ %168, %167 ], [ %176, %175 ]
  %179 = load i1, ptr @is_targa, align 4
  br i1 %179, label %180, label %185

180:                                              ; preds = %177
  %181 = load ptr, ptr %27, align 8, !tbaa !55
  %182 = load ptr, ptr %181, align 8, !tbaa !56
  %183 = call ptr %182(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 112) #25
  %184 = getelementptr inbounds %struct._tga_source_struct, ptr %183, i64 0, i32 1
  store ptr %8, ptr %184, align 8, !tbaa !65
  store ptr @start_input_tga, ptr %183, align 8, !tbaa !68
  br label %223

185:                                              ; preds = %177
  %186 = call i32 @getc(ptr noundef %164) #26
  %187 = icmp eq i32 %186, -1
  br i1 %187, label %188, label %192

188:                                              ; preds = %185
  %189 = load ptr, ptr %8, align 8, !tbaa !25
  %190 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %189, i64 0, i32 5
  store i32 41, ptr %190, align 8, !tbaa !22
  %191 = load ptr, ptr %189, align 8, !tbaa !12
  call void %191(ptr noundef nonnull %8) #25
  br label %192

192:                                              ; preds = %188, %185
  %193 = call i32 @ungetc(i32 noundef %186, ptr noundef %164) #26
  %194 = icmp eq i32 %193, -1
  br i1 %194, label %195, label %199

195:                                              ; preds = %192
  %196 = load ptr, ptr %8, align 8, !tbaa !25
  %197 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %196, i64 0, i32 5
  store i32 1040, ptr %197, align 8, !tbaa !22
  %198 = load ptr, ptr %196, align 8, !tbaa !12
  call void %198(ptr noundef nonnull %8) #25
  br label %199

199:                                              ; preds = %195, %192
  switch i32 %186, label %219 [
    i32 66, label %200
    i32 71, label %205
    i32 80, label %210
    i32 0, label %214
  ]

200:                                              ; preds = %199
  %201 = load ptr, ptr %27, align 8, !tbaa !55
  %202 = load ptr, ptr %201, align 8, !tbaa !56
  %203 = call ptr %202(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 88) #25
  %204 = getelementptr inbounds %struct._bmp_source_struct, ptr %203, i64 0, i32 1
  store ptr %8, ptr %204, align 8, !tbaa !69
  store ptr @start_input_bmp, ptr %203, align 8, !tbaa !71
  br label %223

205:                                              ; preds = %199
  %206 = load ptr, ptr %27, align 8, !tbaa !55
  %207 = load ptr, ptr %206, align 8, !tbaa !56
  %208 = call ptr %207(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 440) #25
  %209 = getelementptr inbounds %struct.gif_source_struct, ptr %208, i64 0, i32 1
  store ptr %8, ptr %209, align 8, !tbaa !72
  store ptr @start_input_gif, ptr %208, align 8, !tbaa !74
  br label %223

210:                                              ; preds = %199
  %211 = load ptr, ptr %27, align 8, !tbaa !55
  %212 = load ptr, ptr %211, align 8, !tbaa !56
  %213 = call ptr %212(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 80) #25
  store ptr @start_input_ppm, ptr %213, align 8, !tbaa !75
  br label %223

214:                                              ; preds = %199
  %215 = load ptr, ptr %27, align 8, !tbaa !55
  %216 = load ptr, ptr %215, align 8, !tbaa !56
  %217 = call ptr %216(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 112) #25
  %218 = getelementptr inbounds %struct._tga_source_struct, ptr %217, i64 0, i32 1
  store ptr %8, ptr %218, align 8, !tbaa !65
  store ptr @start_input_tga, ptr %217, align 8, !tbaa !68
  br label %223

219:                                              ; preds = %199
  %220 = load ptr, ptr %8, align 8, !tbaa !25
  %221 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %220, i64 0, i32 5
  store i32 1041, ptr %221, align 8, !tbaa !22
  %222 = load ptr, ptr %220, align 8, !tbaa !12
  call void %222(ptr noundef nonnull %8) #25
  unreachable

223:                                              ; preds = %214, %210, %205, %200, %180
  %224 = phi ptr [ %217, %214 ], [ %213, %210 ], [ %208, %205 ], [ %203, %200 ], [ %183, %180 ]
  %225 = phi ptr [ @finish_input_tga, %214 ], [ @finish_input_ppm, %210 ], [ @finish_input_gif, %205 ], [ @finish_input_bmp, %200 ], [ @finish_input_tga, %180 ]
  %226 = phi ptr [ @start_input_tga, %214 ], [ @start_input_ppm, %210 ], [ @start_input_gif, %205 ], [ @start_input_bmp, %200 ], [ @start_input_tga, %180 ]
  %227 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %224, i64 0, i32 2
  store ptr %225, ptr %227, align 8, !tbaa !7
  %228 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %224, i64 0, i32 3
  store ptr %164, ptr %228, align 8, !tbaa !77
  call void %226(ptr noundef nonnull %8, ptr noundef nonnull %224) #25
  call fastcc void @jpeg_default_colorspace(ptr noundef nonnull %8) #25
  %229 = call fastcc i32 @parse_switches(ptr noundef nonnull %8, i32 noundef %0, ptr noundef nonnull %1, i32 noundef 1) #26
  %230 = load ptr, ptr %61, align 8, !tbaa !48
  %231 = icmp eq ptr %230, null
  br i1 %231, label %232, label %236

232:                                              ; preds = %223
  %233 = load ptr, ptr %27, align 8, !tbaa !55
  %234 = load ptr, ptr %233, align 8, !tbaa !56
  %235 = call ptr %234(ptr noundef nonnull %8, i32 noundef 0, i64 noundef 56) #25
  store ptr %235, ptr %61, align 8, !tbaa !48
  br label %236

236:                                              ; preds = %232, %223
  %237 = phi ptr [ %235, %232 ], [ %230, %223 ]
  %238 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %237, i64 0, i32 2
  store ptr @init_destination, ptr %238, align 8, !tbaa !78
  %239 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %237, i64 0, i32 3
  store ptr @empty_output_buffer, ptr %239, align 8, !tbaa !81
  %240 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %237, i64 0, i32 4
  store ptr @term_destination, ptr %240, align 8, !tbaa !82
  %241 = getelementptr inbounds %struct.my_destination_mgr, ptr %237, i64 0, i32 1
  store ptr %178, ptr %241, align 8, !tbaa !83
  %242 = load i32, ptr %64, align 4, !tbaa !50
  %243 = icmp eq i32 %242, 100
  br i1 %243, label %249, label %244

244:                                              ; preds = %236
  %245 = load ptr, ptr %8, align 8, !tbaa !25
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %245, i64 0, i32 5
  store i32 18, ptr %246, align 8, !tbaa !22
  %247 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %245, i64 0, i32 6
  store i32 %242, ptr %247, align 4, !tbaa !11
  %248 = load ptr, ptr %245, align 8, !tbaa !12
  call void %248(ptr noundef nonnull %8) #25
  br label %249

249:                                              ; preds = %244, %236
  br label %250

250:                                              ; preds = %257, %249
  %251 = phi i64 [ %258, %257 ], [ 0, %249 ]
  %252 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 15, i64 %251
  %253 = load ptr, ptr %252, align 8, !tbaa !7
  %254 = icmp eq ptr %253, null
  br i1 %254, label %257, label %255

255:                                              ; preds = %250
  %256 = getelementptr inbounds %struct.JQUANT_TBL, ptr %253, i64 0, i32 1
  store i32 0, ptr %256, align 4, !tbaa !84
  br label %257

257:                                              ; preds = %255, %250
  %258 = add nuw nsw i64 %251, 1
  %259 = icmp eq i64 %258, 4
  br i1 %259, label %260, label %250, !llvm.loop !86

260:                                              ; preds = %273, %257
  %261 = phi i64 [ %274, %273 ], [ 0, %257 ]
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 16, i64 %261
  %263 = load ptr, ptr %262, align 8, !tbaa !7
  %264 = icmp eq ptr %263, null
  br i1 %264, label %267, label %265

265:                                              ; preds = %260
  %266 = getelementptr inbounds %struct.JHUFF_TBL, ptr %263, i64 0, i32 2
  store i32 0, ptr %266, align 4, !tbaa !59
  br label %267

267:                                              ; preds = %265, %260
  %268 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 17, i64 %261
  %269 = load ptr, ptr %268, align 8, !tbaa !7
  %270 = icmp eq ptr %269, null
  br i1 %270, label %273, label %271

271:                                              ; preds = %267
  %272 = getelementptr inbounds %struct.JHUFF_TBL, ptr %269, i64 0, i32 2
  store i32 0, ptr %272, align 4, !tbaa !59
  br label %273

273:                                              ; preds = %271, %267
  %274 = add nuw nsw i64 %261, 1
  %275 = icmp eq i64 %274, 4
  br i1 %275, label %276, label %260, !llvm.loop !88

276:                                              ; preds = %273
  %277 = load ptr, ptr %8, align 8, !tbaa !25
  %278 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %277, i64 0, i32 4
  %279 = load ptr, ptr %278, align 8, !tbaa !19
  call void %279(ptr noundef nonnull %8) #25
  %280 = load ptr, ptr %61, align 8, !tbaa !48
  %281 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %280, i64 0, i32 2
  %282 = load ptr, ptr %281, align 8, !tbaa !89
  call void %282(ptr noundef nonnull %8) #25
  %283 = load ptr, ptr %27, align 8, !tbaa !55
  %284 = load ptr, ptr %283, align 8, !tbaa !56
  %285 = call ptr %284(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 48) #25
  %286 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 51
  store ptr %285, ptr %286, align 8, !tbaa !90
  store ptr @prepare_for_pass, ptr %285, align 8, !tbaa !91
  %287 = getelementptr inbounds %struct.jpeg_comp_master, ptr %285, i64 0, i32 1
  store ptr @pass_startup, ptr %287, align 8, !tbaa !94
  %288 = getelementptr inbounds %struct.jpeg_comp_master, ptr %285, i64 0, i32 2
  store ptr @finish_pass_master, ptr %288, align 8, !tbaa !95
  %289 = getelementptr inbounds %struct.jpeg_comp_master, ptr %285, i64 0, i32 4
  store i32 0, ptr %289, align 4, !tbaa !96
  %290 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 7
  %291 = load i32, ptr %290, align 4, !tbaa !97
  %292 = icmp eq i32 %291, 0
  %293 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 6
  %294 = load i32, ptr %293, align 8
  %295 = icmp eq i32 %294, 0
  %296 = select i1 %292, i1 true, i1 %295
  %297 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 12
  %298 = load i32, ptr %297, align 4
  %299 = icmp slt i32 %298, 1
  %300 = select i1 %296, i1 true, i1 %299
  %301 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 8
  %302 = load i32, ptr %301, align 8
  %303 = icmp slt i32 %302, 1
  %304 = select i1 %300, i1 true, i1 %303
  br i1 %304, label %305, label %311

305:                                              ; preds = %276
  %306 = load ptr, ptr %8, align 8, !tbaa !25
  %307 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %306, i64 0, i32 5
  store i32 31, ptr %307, align 8, !tbaa !22
  %308 = load ptr, ptr %306, align 8, !tbaa !12
  call void %308(ptr noundef nonnull %8) #25
  %309 = load i32, ptr %290, align 4, !tbaa !97
  %310 = load i32, ptr %293, align 8
  br label %311

311:                                              ; preds = %305, %276
  %312 = phi i32 [ %310, %305 ], [ %294, %276 ]
  %313 = phi i32 [ %309, %305 ], [ %291, %276 ]
  %314 = icmp ugt i32 %313, 65500
  %315 = icmp ugt i32 %312, 65500
  %316 = select i1 %314, i1 true, i1 %315
  br i1 %316, label %317, label %323

317:                                              ; preds = %311
  %318 = load ptr, ptr %8, align 8, !tbaa !25
  %319 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %318, i64 0, i32 5
  store i32 40, ptr %319, align 8, !tbaa !22
  %320 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %318, i64 0, i32 6
  store i32 65500, ptr %320, align 4, !tbaa !11
  %321 = load ptr, ptr %318, align 8, !tbaa !12
  call void %321(ptr noundef nonnull %8) #25
  %322 = load i32, ptr %293, align 8, !tbaa !98
  br label %323

323:                                              ; preds = %317, %311
  %324 = phi i32 [ %322, %317 ], [ %312, %311 ]
  %325 = zext i32 %324 to i64
  %326 = load i32, ptr %301, align 8, !tbaa !99
  %327 = sext i32 %326 to i64
  %328 = mul nsw i64 %327, %325
  %329 = icmp ult i64 %328, 4294967296
  br i1 %329, label %334, label %330

330:                                              ; preds = %323
  %331 = load ptr, ptr %8, align 8, !tbaa !25
  %332 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %331, i64 0, i32 5
  store i32 69, ptr %332, align 8, !tbaa !22
  %333 = load ptr, ptr %331, align 8, !tbaa !12
  call void %333(ptr noundef nonnull %8) #25
  br label %334

334:                                              ; preds = %330, %323
  %335 = load i32, ptr %71, align 8, !tbaa !58
  %336 = icmp eq i32 %335, 8
  br i1 %336, label %342, label %337

337:                                              ; preds = %334
  %338 = load ptr, ptr %8, align 8, !tbaa !25
  %339 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %338, i64 0, i32 5
  store i32 13, ptr %339, align 8, !tbaa !22
  %340 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %338, i64 0, i32 6
  store i32 %335, ptr %340, align 4, !tbaa !11
  %341 = load ptr, ptr %338, align 8, !tbaa !12
  call void %341(ptr noundef nonnull %8) #25
  br label %342

342:                                              ; preds = %337, %334
  %343 = load i32, ptr %297, align 4, !tbaa !100
  %344 = icmp sgt i32 %343, 10
  br i1 %344, label %345, label %352

345:                                              ; preds = %342
  %346 = load ptr, ptr %8, align 8, !tbaa !25
  %347 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %346, i64 0, i32 5
  store i32 24, ptr %347, align 8, !tbaa !22
  %348 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %346, i64 0, i32 6
  store i32 %343, ptr %348, align 4, !tbaa !11
  %349 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %346, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %349, align 4, !tbaa !11
  %350 = load ptr, ptr %346, align 8, !tbaa !12
  call void %350(ptr noundef nonnull %8) #25
  %351 = load i32, ptr %297, align 4, !tbaa !100
  br label %352

352:                                              ; preds = %345, %342
  %353 = phi i32 [ %351, %345 ], [ %343, %342 ]
  %354 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 38
  store i32 1, ptr %354, align 8, !tbaa !101
  %355 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 39
  store i32 1, ptr %355, align 4, !tbaa !102
  %356 = icmp sgt i32 %353, 0
  br i1 %356, label %359, label %357

357:                                              ; preds = %352
  %358 = load i32, ptr %290, align 4, !tbaa !97
  br label %446

359:                                              ; preds = %352
  %360 = load ptr, ptr %62, align 8, !tbaa !57
  br label %361

361:                                              ; preds = %386, %359
  %362 = phi i32 [ %387, %386 ], [ %353, %359 ]
  %363 = phi i32 [ %393, %386 ], [ 1, %359 ]
  %364 = phi i32 [ %392, %386 ], [ 1, %359 ]
  %365 = phi i32 [ %394, %386 ], [ 0, %359 ]
  %366 = phi ptr [ %395, %386 ], [ %360, %359 ]
  %367 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %366, i64 0, i32 2
  %368 = load i32, ptr %367, align 8, !tbaa !103
  %369 = add i32 %368, -5
  %370 = icmp ult i32 %369, -4
  br i1 %370, label %376, label %371

371:                                              ; preds = %361
  %372 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %366, i64 0, i32 3
  %373 = load i32, ptr %372, align 4, !tbaa !105
  %374 = add i32 %373, -5
  %375 = icmp ult i32 %374, -4
  br i1 %375, label %376, label %386

376:                                              ; preds = %371, %361
  %377 = load ptr, ptr %8, align 8, !tbaa !25
  %378 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %377, i64 0, i32 5
  store i32 16, ptr %378, align 8, !tbaa !22
  %379 = load ptr, ptr %377, align 8, !tbaa !12
  call void %379(ptr noundef nonnull %8) #25
  %380 = load i32, ptr %354, align 8, !tbaa !101
  %381 = load i32, ptr %367, align 8, !tbaa !103
  %382 = load i32, ptr %355, align 4, !tbaa !102
  %383 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %366, i64 0, i32 3
  %384 = load i32, ptr %383, align 4, !tbaa !105
  %385 = load i32, ptr %297, align 4, !tbaa !100
  br label %386

386:                                              ; preds = %376, %371
  %387 = phi i32 [ %362, %371 ], [ %385, %376 ]
  %388 = phi i32 [ %373, %371 ], [ %384, %376 ]
  %389 = phi i32 [ %363, %371 ], [ %382, %376 ]
  %390 = phi i32 [ %368, %371 ], [ %381, %376 ]
  %391 = phi i32 [ %364, %371 ], [ %380, %376 ]
  %392 = call i32 @llvm.smax.i32(i32 %391, i32 %390)
  store i32 %392, ptr %354, align 8, !tbaa !101
  %393 = call i32 @llvm.smax.i32(i32 %389, i32 %388)
  store i32 %393, ptr %355, align 4, !tbaa !102
  %394 = add nuw nsw i32 %365, 1
  %395 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %366, i64 1
  %396 = icmp slt i32 %394, %387
  br i1 %396, label %361, label %397, !llvm.loop !106

397:                                              ; preds = %386
  %.lcssa3 = phi i32 [ %387, %386 ]
  %.lcssa2 = phi i32 [ %392, %386 ]
  %.lcssa1 = phi i32 [ %393, %386 ]
  %398 = icmp sgt i32 %.lcssa3, 0
  %399 = load i32, ptr %290, align 4, !tbaa !97
  br i1 %398, label %400, label %446

400:                                              ; preds = %397
  %401 = load ptr, ptr %62, align 8, !tbaa !57
  %402 = load i32, ptr %293, align 8, !tbaa !98
  %403 = zext i32 %402 to i64
  %404 = shl nsw i32 %.lcssa2, 3
  %405 = sext i32 %404 to i64
  %406 = zext i32 %399 to i64
  %407 = shl nsw i32 %.lcssa1, 3
  %408 = sext i32 %407 to i64
  %409 = sext i32 %.lcssa2 to i64
  %410 = sext i32 %.lcssa1 to i64
  br label %411

411:                                              ; preds = %411, %400
  %412 = phi i32 [ %443, %411 ], [ 0, %400 ]
  %413 = phi ptr [ %444, %411 ], [ %401, %400 ]
  %414 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 1
  store i32 %412, ptr %414, align 4, !tbaa !107
  %415 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 9
  store i32 8, ptr %415, align 4, !tbaa !108
  %416 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 2
  %417 = load i32, ptr %416, align 8, !tbaa !103
  %418 = sext i32 %417 to i64
  %419 = mul nsw i64 %418, %403
  %420 = add nsw i64 %419, -1
  %421 = add i64 %420, %405
  %422 = sdiv i64 %421, %405
  %423 = trunc i64 %422 to i32
  %424 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 7
  store i32 %423, ptr %424, align 4, !tbaa !109
  %425 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 3
  %426 = load i32, ptr %425, align 4, !tbaa !105
  %427 = sext i32 %426 to i64
  %428 = mul nsw i64 %427, %406
  %429 = add nsw i64 %428, -1
  %430 = add i64 %429, %408
  %431 = sdiv i64 %430, %408
  %432 = trunc i64 %431 to i32
  %433 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 8
  store i32 %432, ptr %433, align 8, !tbaa !110
  %434 = add i64 %420, %409
  %435 = sdiv i64 %434, %409
  %436 = trunc i64 %435 to i32
  %437 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 10
  store i32 %436, ptr %437, align 8, !tbaa !111
  %438 = add i64 %429, %410
  %439 = sdiv i64 %438, %410
  %440 = trunc i64 %439 to i32
  %441 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 11
  store i32 %440, ptr %441, align 4, !tbaa !112
  %442 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 0, i32 12
  store i32 1, ptr %442, align 8, !tbaa !113
  %443 = add nuw nsw i32 %412, 1
  %444 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %413, i64 1
  %445 = icmp eq i32 %443, %.lcssa3
  br i1 %445, label %446, label %411, !llvm.loop !114

446:                                              ; preds = %411, %397, %357
  %447 = phi i32 [ %399, %397 ], [ %358, %357 ], [ %399, %411 ]
  %448 = phi i32 [ %.lcssa1, %397 ], [ 1, %357 ], [ %.lcssa1, %411 ]
  %449 = zext i32 %447 to i64
  %450 = shl nsw i32 %448, 3
  %451 = sext i32 %450 to i64
  %452 = add nsw i64 %449, -1
  %453 = add nsw i64 %452, %451
  %454 = sdiv i64 %453, %451
  %455 = trunc i64 %454 to i32
  %456 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 40
  store i32 %455, ptr %456, align 8, !tbaa !115
  %457 = load ptr, ptr %131, align 8, !tbaa !116
  %458 = icmp eq ptr %457, null
  br i1 %458, label %710, label %459

459:                                              ; preds = %446
  call void @llvm.lifetime.start.p0(i64 40, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 2560, ptr nonnull %5) #23
  %460 = load i32, ptr %132, align 8, !tbaa !61
  %461 = icmp slt i32 %460, 1
  br i1 %461, label %462, label %468

462:                                              ; preds = %459
  %463 = load ptr, ptr %8, align 8, !tbaa !25
  %464 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %463, i64 0, i32 5
  store i32 17, ptr %464, align 8, !tbaa !22
  %465 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %463, i64 0, i32 6
  store i32 0, ptr %465, align 4, !tbaa !11
  %466 = load ptr, ptr %463, align 8, !tbaa !12
  call void %466(ptr noundef nonnull %8) #25
  %467 = load ptr, ptr %131, align 8, !tbaa !116
  br label %468

468:                                              ; preds = %462, %459
  %469 = phi ptr [ %467, %462 ], [ %457, %459 ]
  %470 = getelementptr inbounds %struct.jpeg_scan_info, ptr %469, i64 0, i32 2
  %471 = load i32, ptr %470, align 4, !tbaa !117
  %472 = icmp eq i32 %471, 0
  br i1 %472, label %475, label %473

473:                                              ; preds = %468
  %474 = load i32, ptr %297, align 4, !tbaa !100
  br label %480

475:                                              ; preds = %468
  %476 = getelementptr inbounds %struct.jpeg_scan_info, ptr %469, i64 0, i32 3
  %477 = load i32, ptr %476, align 4, !tbaa !119
  %478 = icmp eq i32 %477, 63
  %479 = load i32, ptr %297, align 4, !tbaa !100
  br i1 %478, label %487, label %480

480:                                              ; preds = %475, %473
  %481 = phi i32 [ %474, %473 ], [ %479, %475 ]
  %482 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  store i32 1, ptr %482, align 4, !tbaa !120
  %483 = icmp sgt i32 %481, 0
  br i1 %483, label %484, label %493

484:                                              ; preds = %480
  %485 = zext i32 %481 to i64
  %486 = shl nuw nsw i64 %485, 8
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %5, i8 -1, i64 %486, i1 false), !tbaa !121
  br label %493

487:                                              ; preds = %475
  %488 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  store i32 0, ptr %488, align 4, !tbaa !120
  %489 = icmp sgt i32 %479, 0
  br i1 %489, label %490, label %493

490:                                              ; preds = %487
  %491 = zext i32 %479 to i64
  %492 = shl nuw nsw i64 %491, 2
  call void @llvm.memset.p0.i64(ptr nonnull align 16 %4, i8 0, i64 %492, i1 false), !tbaa !121
  br label %493

493:                                              ; preds = %490, %487, %484, %480
  %494 = phi i32 [ %479, %490 ], [ %481, %480 ], [ %479, %487 ], [ %481, %484 ]
  %495 = phi i32 [ 0, %490 ], [ 1, %480 ], [ 0, %487 ], [ 1, %484 ]
  %496 = load i32, ptr %132, align 8, !tbaa !61
  %497 = icmp slt i32 %496, 1
  br i1 %497, label %671, label %498

498:                                              ; preds = %493
  %499 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  br label %500

500:                                              ; preds = %663, %498
  %501 = phi ptr [ %469, %498 ], [ %664, %663 ]
  %502 = phi i32 [ 1, %498 ], [ %665, %663 ]
  %503 = load i32, ptr %501, align 4, !tbaa !122
  %504 = add i32 %503, -5
  %505 = icmp ult i32 %504, -4
  br i1 %505, label %506, label %513

506:                                              ; preds = %500
  %507 = load ptr, ptr %8, align 8, !tbaa !25
  %508 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %507, i64 0, i32 5
  store i32 24, ptr %508, align 8, !tbaa !22
  %509 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %507, i64 0, i32 6
  store i32 %503, ptr %509, align 4, !tbaa !11
  %510 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %507, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %510, align 4, !tbaa !11
  %511 = load ptr, ptr %507, align 8, !tbaa !12
  call void %511(ptr noundef nonnull %8) #25
  %512 = icmp sgt i32 %503, 0
  br i1 %512, label %513, label %544

513:                                              ; preds = %506, %500
  %514 = zext i32 %503 to i64
  br label %515

515:                                              ; preds = %541, %513
  %516 = phi i64 [ 0, %513 ], [ %542, %541 ]
  %517 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 1, i64 %516
  %518 = load i32, ptr %517, align 4, !tbaa !121
  %519 = icmp sgt i32 %518, -1
  %520 = load i32, ptr %297, align 4
  %521 = icmp slt i32 %518, %520
  %522 = select i1 %519, i1 %521, i1 false
  br i1 %522, label %528, label %523

523:                                              ; preds = %515
  %524 = load ptr, ptr %8, align 8, !tbaa !25
  %525 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %524, i64 0, i32 5
  store i32 17, ptr %525, align 8, !tbaa !22
  %526 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %524, i64 0, i32 6
  store i32 %502, ptr %526, align 4, !tbaa !11
  %527 = load ptr, ptr %524, align 8, !tbaa !12
  call void %527(ptr noundef nonnull %8) #25
  br label %528

528:                                              ; preds = %523, %515
  %529 = icmp eq i64 %516, 0
  br i1 %529, label %541, label %530

530:                                              ; preds = %528
  %531 = add nuw i64 %516, 4294967295
  %532 = and i64 %531, 4294967295
  %533 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 1, i64 %532
  %534 = load i32, ptr %533, align 4, !tbaa !121
  %535 = icmp sgt i32 %518, %534
  br i1 %535, label %541, label %536

536:                                              ; preds = %530
  %537 = load ptr, ptr %8, align 8, !tbaa !25
  %538 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %537, i64 0, i32 5
  store i32 17, ptr %538, align 8, !tbaa !22
  %539 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %537, i64 0, i32 6
  store i32 %502, ptr %539, align 4, !tbaa !11
  %540 = load ptr, ptr %537, align 8, !tbaa !12
  call void %540(ptr noundef nonnull %8) #25
  br label %541

541:                                              ; preds = %536, %530, %528
  %542 = add nuw nsw i64 %516, 1
  %543 = icmp eq i64 %542, %514
  br i1 %543, label %544, label %515, !llvm.loop !123

544:                                              ; preds = %541, %506
  %545 = phi i1 [ false, %506 ], [ true, %541 ]
  %546 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 2
  %547 = load i32, ptr %546, align 4, !tbaa !117
  %548 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 3
  %549 = load i32, ptr %548, align 4, !tbaa !119
  %550 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 4
  %551 = load i32, ptr %550, align 4, !tbaa !124
  %552 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 5
  %553 = load i32, ptr %552, align 4, !tbaa !125
  %554 = load i32, ptr %499, align 4, !tbaa !120
  %555 = icmp eq i32 %554, 0
  br i1 %555, label %631, label %556

556:                                              ; preds = %544
  %557 = icmp ugt i32 %547, 63
  br i1 %557, label %570, label %558

558:                                              ; preds = %556
  %559 = icmp slt i32 %549, %547
  %560 = icmp sgt i32 %549, 63
  %561 = or i1 %559, %560
  %562 = icmp slt i32 %551, 0
  %563 = select i1 %561, i1 true, i1 %562
  %564 = icmp sgt i32 %551, 13
  %565 = select i1 %563, i1 true, i1 %564
  %566 = icmp slt i32 %553, 0
  %567 = select i1 %565, i1 true, i1 %566
  %568 = icmp sgt i32 %553, 13
  %569 = select i1 %567, i1 true, i1 %568
  br i1 %569, label %570, label %575

570:                                              ; preds = %558, %556
  %571 = load ptr, ptr %8, align 8, !tbaa !25
  %572 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %571, i64 0, i32 5
  store i32 15, ptr %572, align 8, !tbaa !22
  %573 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %571, i64 0, i32 6
  store i32 %502, ptr %573, align 4, !tbaa !11
  %574 = load ptr, ptr %571, align 8, !tbaa !12
  call void %574(ptr noundef nonnull %8) #25
  br label %575

575:                                              ; preds = %570, %558
  %576 = icmp eq i32 %547, 0
  br i1 %576, label %577, label %579

577:                                              ; preds = %575
  %578 = icmp eq i32 %549, 0
  br i1 %578, label %586, label %581

579:                                              ; preds = %575
  %580 = icmp eq i32 %503, 1
  br i1 %580, label %586, label %581

581:                                              ; preds = %579, %577
  %582 = load ptr, ptr %8, align 8, !tbaa !25
  %583 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %582, i64 0, i32 5
  store i32 15, ptr %583, align 8, !tbaa !22
  %584 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %582, i64 0, i32 6
  store i32 %502, ptr %584, align 4, !tbaa !11
  %585 = load ptr, ptr %582, align 8, !tbaa !12
  call void %585(ptr noundef nonnull %8) #25
  br label %586

586:                                              ; preds = %581, %579, %577
  br i1 %545, label %587, label %663

587:                                              ; preds = %586
  %588 = icmp sgt i32 %547, %549
  %589 = add nsw i32 %551, -1
  %590 = icmp eq i32 %553, %589
  %591 = icmp eq i32 %551, 0
  %592 = sext i32 %547 to i64
  %593 = add i32 %549, 1
  %594 = zext i32 %503 to i64
  br label %595

595:                                              ; preds = %628, %587
  %596 = phi i64 [ 0, %587 ], [ %629, %628 ]
  %597 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 1, i64 %596
  %598 = load i32, ptr %597, align 4, !tbaa !121
  %599 = sext i32 %598 to i64
  %600 = getelementptr inbounds [10 x [64 x i32]], ptr %5, i64 0, i64 %599
  br i1 %576, label %609, label %601

601:                                              ; preds = %595
  %602 = load i32, ptr %600, align 16, !tbaa !121
  %603 = icmp slt i32 %602, 0
  br i1 %603, label %604, label %609

604:                                              ; preds = %601
  %605 = load ptr, ptr %8, align 8, !tbaa !25
  %606 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %605, i64 0, i32 5
  store i32 15, ptr %606, align 8, !tbaa !22
  %607 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %605, i64 0, i32 6
  store i32 %502, ptr %607, align 4, !tbaa !11
  %608 = load ptr, ptr %605, align 8, !tbaa !12
  call void %608(ptr noundef nonnull %8) #25
  br label %609

609:                                              ; preds = %604, %601, %595
  br i1 %588, label %628, label %610

610:                                              ; preds = %624, %609
  %611 = phi i64 [ %625, %624 ], [ %592, %609 ]
  %612 = getelementptr inbounds i32, ptr %600, i64 %611
  %613 = load i32, ptr %612, align 4, !tbaa !121
  %614 = icmp slt i32 %613, 0
  br i1 %614, label %615, label %616

615:                                              ; preds = %610
  br i1 %591, label %624, label %619

616:                                              ; preds = %610
  %617 = icmp eq i32 %551, %613
  %618 = select i1 %617, i1 %590, i1 false
  br i1 %618, label %624, label %619

619:                                              ; preds = %616, %615
  %620 = load ptr, ptr %8, align 8, !tbaa !25
  %621 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %620, i64 0, i32 5
  store i32 15, ptr %621, align 8, !tbaa !22
  %622 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %620, i64 0, i32 6
  store i32 %502, ptr %622, align 4, !tbaa !11
  %623 = load ptr, ptr %620, align 8, !tbaa !12
  call void %623(ptr noundef nonnull %8) #25
  br label %624

624:                                              ; preds = %619, %616, %615
  store i32 %553, ptr %612, align 4, !tbaa !121
  %625 = add nsw i64 %611, 1
  %626 = trunc i64 %625 to i32
  %627 = icmp eq i32 %593, %626
  br i1 %627, label %628, label %610, !llvm.loop !126

628:                                              ; preds = %624, %609
  %629 = add nuw nsw i64 %596, 1
  %630 = icmp eq i64 %629, %594
  br i1 %630, label %663, label %595, !llvm.loop !127

631:                                              ; preds = %544
  %632 = icmp ne i32 %547, 0
  %633 = icmp ne i32 %549, 63
  %634 = select i1 %632, i1 true, i1 %633
  %635 = icmp ne i32 %551, 0
  %636 = select i1 %634, i1 true, i1 %635
  %637 = icmp ne i32 %553, 0
  %638 = select i1 %636, i1 true, i1 %637
  br i1 %638, label %639, label %644

639:                                              ; preds = %631
  %640 = load ptr, ptr %8, align 8, !tbaa !25
  %641 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %640, i64 0, i32 5
  store i32 15, ptr %641, align 8, !tbaa !22
  %642 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %640, i64 0, i32 6
  store i32 %502, ptr %642, align 4, !tbaa !11
  %643 = load ptr, ptr %640, align 8, !tbaa !12
  call void %643(ptr noundef nonnull %8) #25
  br label %644

644:                                              ; preds = %639, %631
  br i1 %545, label %645, label %663

645:                                              ; preds = %644
  %646 = zext i32 %503 to i64
  br label %647

647:                                              ; preds = %660, %645
  %648 = phi i64 [ 0, %645 ], [ %661, %660 ]
  %649 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 0, i32 1, i64 %648
  %650 = load i32, ptr %649, align 4, !tbaa !121
  %651 = sext i32 %650 to i64
  %652 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %651
  %653 = load i32, ptr %652, align 4, !tbaa !121
  %654 = icmp eq i32 %653, 0
  br i1 %654, label %660, label %655

655:                                              ; preds = %647
  %656 = load ptr, ptr %8, align 8, !tbaa !25
  %657 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %656, i64 0, i32 5
  store i32 17, ptr %657, align 8, !tbaa !22
  %658 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %656, i64 0, i32 6
  store i32 %502, ptr %658, align 4, !tbaa !11
  %659 = load ptr, ptr %656, align 8, !tbaa !12
  call void %659(ptr noundef nonnull %8) #25
  br label %660

660:                                              ; preds = %655, %647
  store i32 1, ptr %652, align 4, !tbaa !121
  %661 = add nuw nsw i64 %648, 1
  %662 = icmp eq i64 %661, %646
  br i1 %662, label %663, label %647, !llvm.loop !128

663:                                              ; preds = %660, %644, %628, %586
  %664 = getelementptr inbounds %struct.jpeg_scan_info, ptr %501, i64 1
  %665 = add nuw nsw i32 %502, 1
  %666 = load i32, ptr %132, align 8, !tbaa !61
  %667 = icmp slt i32 %502, %666
  br i1 %667, label %500, label %668, !llvm.loop !129

668:                                              ; preds = %663
  %669 = load i32, ptr %499, align 4, !tbaa !120
  %670 = load i32, ptr %297, align 4, !tbaa !100
  br label %671

671:                                              ; preds = %668, %493
  %672 = phi i32 [ %670, %668 ], [ %494, %493 ]
  %673 = phi i32 [ %669, %668 ], [ %495, %493 ]
  %674 = icmp eq i32 %673, 0
  %675 = icmp sgt i32 %672, 0
  br i1 %674, label %677, label %676

676:                                              ; preds = %671
  br i1 %675, label %678, label %712

677:                                              ; preds = %671
  br i1 %675, label %694, label %712

678:                                              ; preds = %689, %676
  %679 = phi i32 [ %690, %689 ], [ %672, %676 ]
  %680 = phi i64 [ %691, %689 ], [ 0, %676 ]
  %681 = getelementptr inbounds [10 x [64 x i32]], ptr %5, i64 0, i64 %680
  %682 = load i32, ptr %681, align 16, !tbaa !121
  %683 = icmp slt i32 %682, 0
  br i1 %683, label %684, label %689

684:                                              ; preds = %678
  %685 = load ptr, ptr %8, align 8, !tbaa !25
  %686 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %685, i64 0, i32 5
  store i32 44, ptr %686, align 8, !tbaa !22
  %687 = load ptr, ptr %685, align 8, !tbaa !12
  call void %687(ptr noundef nonnull %8) #25
  %688 = load i32, ptr %297, align 4, !tbaa !100
  br label %689

689:                                              ; preds = %684, %678
  %690 = phi i32 [ %679, %678 ], [ %688, %684 ]
  %691 = add nuw nsw i64 %680, 1
  %692 = sext i32 %690 to i64
  %693 = icmp slt i64 %691, %692
  br i1 %693, label %678, label %712, !llvm.loop !130

694:                                              ; preds = %705, %677
  %695 = phi i32 [ %706, %705 ], [ %672, %677 ]
  %696 = phi i64 [ %707, %705 ], [ 0, %677 ]
  %697 = getelementptr inbounds [10 x i32], ptr %4, i64 0, i64 %696
  %698 = load i32, ptr %697, align 4, !tbaa !121
  %699 = icmp eq i32 %698, 0
  br i1 %699, label %700, label %705

700:                                              ; preds = %694
  %701 = load ptr, ptr %8, align 8, !tbaa !25
  %702 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %701, i64 0, i32 5
  store i32 44, ptr %702, align 8, !tbaa !22
  %703 = load ptr, ptr %701, align 8, !tbaa !12
  call void %703(ptr noundef nonnull %8) #25
  %704 = load i32, ptr %297, align 4, !tbaa !100
  br label %705

705:                                              ; preds = %700, %694
  %706 = phi i32 [ %695, %694 ], [ %704, %700 ]
  %707 = add nuw nsw i64 %696, 1
  %708 = sext i32 %706 to i64
  %709 = icmp slt i64 %707, %708
  br i1 %709, label %694, label %712, !llvm.loop !131

710:                                              ; preds = %446
  %711 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  store i32 0, ptr %711, align 4, !tbaa !120
  br label %716

712:                                              ; preds = %705, %689, %677, %676
  call void @llvm.lifetime.end.p0(i64 2560, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 40, ptr nonnull %4) #23
  %713 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  %714 = load i32, ptr %713, align 4, !tbaa !120
  %715 = icmp eq i32 %714, 0
  br i1 %715, label %718, label %716

716:                                              ; preds = %712, %710
  %717 = phi ptr [ %132, %710 ], [ %133, %712 ]
  store i32 1, ptr %717, align 8, !tbaa !121
  br label %718

718:                                              ; preds = %716, %712
  %719 = getelementptr inbounds %struct.my_comp_master, ptr %285, i64 0, i32 1
  store i32 0, ptr %719, align 8, !tbaa !132
  %720 = load i32, ptr %133, align 8, !tbaa !133
  %721 = icmp ne i32 %720, 0
  %722 = getelementptr inbounds %struct.my_comp_master, ptr %285, i64 0, i32 4
  store i32 0, ptr %722, align 4, !tbaa !134
  %723 = getelementptr inbounds %struct.my_comp_master, ptr %285, i64 0, i32 2
  store i32 0, ptr %723, align 4, !tbaa !135
  %724 = load i32, ptr %132, align 8, !tbaa !61
  %725 = zext i1 %721 to i32
  %726 = shl nsw i32 %724, %725
  %727 = getelementptr inbounds %struct.my_comp_master, ptr %285, i64 0, i32 3
  store i32 %726, ptr %727, align 8
  %728 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 23
  %729 = load i32, ptr %728, align 8, !tbaa !136
  %730 = icmp eq i32 %729, 0
  br i1 %730, label %731, label %1052

731:                                              ; preds = %718
  %732 = load ptr, ptr %27, align 8, !tbaa !55
  %733 = load ptr, ptr %732, align 8, !tbaa !56
  %734 = call ptr %733(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 24) #25
  %735 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 56
  store ptr %734, ptr %735, align 8, !tbaa !137
  store ptr @null_method, ptr %734, align 8, !tbaa !138
  %736 = load i32, ptr %67, align 4, !tbaa !54
  switch i32 %736, label %746 [
    i32 1, label %737
    i32 2, label %740
    i32 3, label %740
    i32 4, label %743
    i32 5, label %743
  ]

737:                                              ; preds = %731
  %738 = load i32, ptr %301, align 8, !tbaa !99
  %739 = icmp eq i32 %738, 1
  br i1 %739, label %753, label %749

740:                                              ; preds = %731, %731
  %741 = load i32, ptr %301, align 8, !tbaa !99
  %742 = icmp eq i32 %741, 3
  br i1 %742, label %753, label %749

743:                                              ; preds = %731, %731
  %744 = load i32, ptr %301, align 8, !tbaa !99
  %745 = icmp eq i32 %744, 4
  br i1 %745, label %753, label %749

746:                                              ; preds = %731
  %747 = load i32, ptr %301, align 8, !tbaa !99
  %748 = icmp slt i32 %747, 1
  br i1 %748, label %749, label %753

749:                                              ; preds = %746, %743, %740, %737
  %750 = load ptr, ptr %8, align 8, !tbaa !25
  %751 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %750, i64 0, i32 5
  store i32 7, ptr %751, align 8, !tbaa !22
  %752 = load ptr, ptr %750, align 8, !tbaa !12
  call void %752(ptr noundef nonnull %8) #25
  br label %753

753:                                              ; preds = %749, %746, %743, %740, %737
  %754 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 13
  %755 = load i32, ptr %754, align 8, !tbaa !141
  switch i32 %755, label %841 [
    i32 1, label %756
    i32 2, label %775
    i32 3, label %791
    i32 4, label %808
    i32 5, label %824
  ]

756:                                              ; preds = %753
  %757 = load i32, ptr %297, align 4, !tbaa !100
  %758 = icmp eq i32 %757, 1
  br i1 %758, label %763, label %759

759:                                              ; preds = %756
  %760 = load ptr, ptr %8, align 8, !tbaa !25
  %761 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %760, i64 0, i32 5
  store i32 8, ptr %761, align 8, !tbaa !22
  %762 = load ptr, ptr %760, align 8, !tbaa !12
  call void %762(ptr noundef nonnull %8) #25
  br label %763

763:                                              ; preds = %759, %756
  %764 = load i32, ptr %67, align 4, !tbaa !54
  switch i32 %764, label %771 [
    i32 1, label %765
    i32 2, label %767
    i32 3, label %769
  ]

765:                                              ; preds = %763
  %766 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @grayscale_convert, ptr %766, align 8, !tbaa !142
  br label %854

767:                                              ; preds = %763
  store ptr @rgb_ycc_start, ptr %734, align 8, !tbaa !138
  %768 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @rgb_gray_convert, ptr %768, align 8, !tbaa !142
  br label %854

769:                                              ; preds = %763
  %770 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @grayscale_convert, ptr %770, align 8, !tbaa !142
  br label %854

771:                                              ; preds = %763
  %772 = load ptr, ptr %8, align 8, !tbaa !25
  %773 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %772, i64 0, i32 5
  store i32 25, ptr %773, align 8, !tbaa !22
  %774 = load ptr, ptr %772, align 8, !tbaa !12
  call void %774(ptr noundef nonnull %8) #25
  br label %854

775:                                              ; preds = %753
  %776 = load i32, ptr %297, align 4, !tbaa !100
  %777 = icmp eq i32 %776, 3
  br i1 %777, label %782, label %778

778:                                              ; preds = %775
  %779 = load ptr, ptr %8, align 8, !tbaa !25
  %780 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %779, i64 0, i32 5
  store i32 8, ptr %780, align 8, !tbaa !22
  %781 = load ptr, ptr %779, align 8, !tbaa !12
  call void %781(ptr noundef nonnull %8) #25
  br label %782

782:                                              ; preds = %778, %775
  %783 = load i32, ptr %67, align 4, !tbaa !54
  %784 = icmp eq i32 %783, 2
  br i1 %784, label %785, label %787

785:                                              ; preds = %782
  %786 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @null_convert, ptr %786, align 8, !tbaa !142
  br label %854

787:                                              ; preds = %782
  %788 = load ptr, ptr %8, align 8, !tbaa !25
  %789 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %788, i64 0, i32 5
  store i32 25, ptr %789, align 8, !tbaa !22
  %790 = load ptr, ptr %788, align 8, !tbaa !12
  call void %790(ptr noundef nonnull %8) #25
  br label %854

791:                                              ; preds = %753
  %792 = load i32, ptr %297, align 4, !tbaa !100
  %793 = icmp eq i32 %792, 3
  br i1 %793, label %798, label %794

794:                                              ; preds = %791
  %795 = load ptr, ptr %8, align 8, !tbaa !25
  %796 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %795, i64 0, i32 5
  store i32 8, ptr %796, align 8, !tbaa !22
  %797 = load ptr, ptr %795, align 8, !tbaa !12
  call void %797(ptr noundef nonnull %8) #25
  br label %798

798:                                              ; preds = %794, %791
  %799 = load i32, ptr %67, align 4, !tbaa !54
  switch i32 %799, label %804 [
    i32 2, label %800
    i32 3, label %802
  ]

800:                                              ; preds = %798
  store ptr @rgb_ycc_start, ptr %734, align 8, !tbaa !138
  %801 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @rgb_ycc_convert, ptr %801, align 8, !tbaa !142
  br label %854

802:                                              ; preds = %798
  %803 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @null_convert, ptr %803, align 8, !tbaa !142
  br label %854

804:                                              ; preds = %798
  %805 = load ptr, ptr %8, align 8, !tbaa !25
  %806 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %805, i64 0, i32 5
  store i32 25, ptr %806, align 8, !tbaa !22
  %807 = load ptr, ptr %805, align 8, !tbaa !12
  call void %807(ptr noundef nonnull %8) #25
  br label %854

808:                                              ; preds = %753
  %809 = load i32, ptr %297, align 4, !tbaa !100
  %810 = icmp eq i32 %809, 4
  br i1 %810, label %815, label %811

811:                                              ; preds = %808
  %812 = load ptr, ptr %8, align 8, !tbaa !25
  %813 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %812, i64 0, i32 5
  store i32 8, ptr %813, align 8, !tbaa !22
  %814 = load ptr, ptr %812, align 8, !tbaa !12
  call void %814(ptr noundef nonnull %8) #25
  br label %815

815:                                              ; preds = %811, %808
  %816 = load i32, ptr %67, align 4, !tbaa !54
  %817 = icmp eq i32 %816, 4
  br i1 %817, label %818, label %820

818:                                              ; preds = %815
  %819 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @null_convert, ptr %819, align 8, !tbaa !142
  br label %854

820:                                              ; preds = %815
  %821 = load ptr, ptr %8, align 8, !tbaa !25
  %822 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %821, i64 0, i32 5
  store i32 25, ptr %822, align 8, !tbaa !22
  %823 = load ptr, ptr %821, align 8, !tbaa !12
  call void %823(ptr noundef nonnull %8) #25
  br label %854

824:                                              ; preds = %753
  %825 = load i32, ptr %297, align 4, !tbaa !100
  %826 = icmp eq i32 %825, 4
  br i1 %826, label %831, label %827

827:                                              ; preds = %824
  %828 = load ptr, ptr %8, align 8, !tbaa !25
  %829 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %828, i64 0, i32 5
  store i32 8, ptr %829, align 8, !tbaa !22
  %830 = load ptr, ptr %828, align 8, !tbaa !12
  call void %830(ptr noundef nonnull %8) #25
  br label %831

831:                                              ; preds = %827, %824
  %832 = load i32, ptr %67, align 4, !tbaa !54
  switch i32 %832, label %837 [
    i32 4, label %833
    i32 5, label %835
  ]

833:                                              ; preds = %831
  store ptr @rgb_ycc_start, ptr %734, align 8, !tbaa !138
  %834 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @cmyk_ycck_convert, ptr %834, align 8, !tbaa !142
  br label %854

835:                                              ; preds = %831
  %836 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @null_convert, ptr %836, align 8, !tbaa !142
  br label %854

837:                                              ; preds = %831
  %838 = load ptr, ptr %8, align 8, !tbaa !25
  %839 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %838, i64 0, i32 5
  store i32 25, ptr %839, align 8, !tbaa !22
  %840 = load ptr, ptr %838, align 8, !tbaa !12
  call void %840(ptr noundef nonnull %8) #25
  br label %854

841:                                              ; preds = %753
  %842 = load i32, ptr %67, align 4, !tbaa !54
  %843 = icmp eq i32 %755, %842
  br i1 %843, label %844, label %848

844:                                              ; preds = %841
  %845 = load i32, ptr %297, align 4, !tbaa !100
  %846 = load i32, ptr %301, align 8, !tbaa !99
  %847 = icmp eq i32 %845, %846
  br i1 %847, label %852, label %848

848:                                              ; preds = %844, %841
  %849 = load ptr, ptr %8, align 8, !tbaa !25
  %850 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %849, i64 0, i32 5
  store i32 25, ptr %850, align 8, !tbaa !22
  %851 = load ptr, ptr %849, align 8, !tbaa !12
  call void %851(ptr noundef nonnull %8) #25
  br label %852

852:                                              ; preds = %848, %844
  %853 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %734, i64 0, i32 1
  store ptr @null_convert, ptr %853, align 8, !tbaa !142
  br label %854

854:                                              ; preds = %852, %837, %835, %833, %820, %818, %804, %802, %800, %787, %785, %771, %769, %767, %765
  %855 = load ptr, ptr %27, align 8, !tbaa !55
  %856 = load ptr, ptr %855, align 8, !tbaa !56
  %857 = call ptr %856(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 104) #25
  %858 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 57
  store ptr %857, ptr %858, align 8, !tbaa !143
  store ptr @start_pass_downsample, ptr %857, align 8, !tbaa !144
  %859 = getelementptr inbounds %struct.jpeg_downsampler, ptr %857, i64 0, i32 1
  store ptr @sep_downsample, ptr %859, align 8, !tbaa !147
  %860 = getelementptr inbounds %struct.jpeg_downsampler, ptr %857, i64 0, i32 2
  store i32 0, ptr %860, align 8, !tbaa !148
  %861 = load i32, ptr %137, align 4, !tbaa !149
  %862 = icmp eq i32 %861, 0
  br i1 %862, label %867, label %863

863:                                              ; preds = %854
  %864 = load ptr, ptr %8, align 8, !tbaa !25
  %865 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %864, i64 0, i32 5
  store i32 23, ptr %865, align 8, !tbaa !22
  %866 = load ptr, ptr %864, align 8, !tbaa !12
  call void %866(ptr noundef nonnull %8) #25
  br label %867

867:                                              ; preds = %863, %854
  %868 = load i32, ptr %297, align 4, !tbaa !100
  %869 = icmp sgt i32 %868, 0
  br i1 %869, label %870, label %945

870:                                              ; preds = %867
  %871 = load ptr, ptr %62, align 8, !tbaa !57
  %872 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 27
  br label %873

873:                                              ; preds = %928, %870
  %874 = phi i32 [ %868, %870 ], [ %929, %928 ]
  %875 = phi i64 [ 0, %870 ], [ %931, %928 ]
  %876 = phi i32 [ 1, %870 ], [ %930, %928 ]
  %877 = phi ptr [ %871, %870 ], [ %932, %928 ]
  %878 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %877, i64 0, i32 2
  %879 = load i32, ptr %878, align 8, !tbaa !103
  %880 = load i32, ptr %354, align 8, !tbaa !101
  %881 = icmp eq i32 %879, %880
  br i1 %881, label %882, label %893

882:                                              ; preds = %873
  %883 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %877, i64 0, i32 3
  %884 = load i32, ptr %883, align 4, !tbaa !105
  %885 = load i32, ptr %355, align 4, !tbaa !102
  %886 = icmp eq i32 %884, %885
  br i1 %886, label %887, label %893

887:                                              ; preds = %882
  %888 = load i32, ptr %872, align 8, !tbaa !150
  %889 = icmp eq i32 %888, 0
  %890 = getelementptr inbounds %struct.my_downsampler, ptr %857, i64 0, i32 1, i64 %875
  br i1 %889, label %892, label %891

891:                                              ; preds = %887
  store ptr @fullsize_smooth_downsample, ptr %890, align 8, !tbaa !7
  store i32 1, ptr %860, align 8, !tbaa !148
  br label %928

892:                                              ; preds = %887
  store ptr @fullsize_downsample, ptr %890, align 8, !tbaa !7
  br label %928

893:                                              ; preds = %882, %873
  %894 = shl nsw i32 %879, 1
  %895 = icmp eq i32 %894, %880
  br i1 %895, label %896, label %912

896:                                              ; preds = %893
  %897 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %877, i64 0, i32 3
  %898 = load i32, ptr %897, align 4, !tbaa !105
  %899 = load i32, ptr %355, align 4, !tbaa !102
  %900 = icmp eq i32 %898, %899
  br i1 %900, label %901, label %903

901:                                              ; preds = %896
  %902 = getelementptr inbounds %struct.my_downsampler, ptr %857, i64 0, i32 1, i64 %875
  store ptr @h2v1_downsample, ptr %902, align 8, !tbaa !7
  br label %928

903:                                              ; preds = %896
  %904 = shl nsw i32 %898, 1
  %905 = icmp eq i32 %904, %899
  br i1 %905, label %906, label %912

906:                                              ; preds = %903
  %907 = load i32, ptr %872, align 8, !tbaa !150
  %908 = icmp eq i32 %907, 0
  %909 = getelementptr inbounds %struct.my_downsampler, ptr %857, i64 0, i32 1, i64 %875
  br i1 %908, label %911, label %910

910:                                              ; preds = %906
  store ptr @h2v2_smooth_downsample, ptr %909, align 8, !tbaa !7
  store i32 1, ptr %860, align 8, !tbaa !148
  br label %928

911:                                              ; preds = %906
  store ptr @h2v2_downsample, ptr %909, align 8, !tbaa !7
  br label %928

912:                                              ; preds = %903, %893
  %913 = srem i32 %880, %879
  %914 = icmp eq i32 %913, 0
  br i1 %914, label %915, label %923

915:                                              ; preds = %912
  %916 = load i32, ptr %355, align 4, !tbaa !102
  %917 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %877, i64 0, i32 3
  %918 = load i32, ptr %917, align 4, !tbaa !105
  %919 = srem i32 %916, %918
  %920 = icmp eq i32 %919, 0
  br i1 %920, label %921, label %923

921:                                              ; preds = %915
  %922 = getelementptr inbounds %struct.my_downsampler, ptr %857, i64 0, i32 1, i64 %875
  store ptr @int_downsample, ptr %922, align 8, !tbaa !7
  br label %928

923:                                              ; preds = %915, %912
  %924 = load ptr, ptr %8, align 8, !tbaa !25
  %925 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %924, i64 0, i32 5
  store i32 37, ptr %925, align 8, !tbaa !22
  %926 = load ptr, ptr %924, align 8, !tbaa !12
  call void %926(ptr noundef nonnull %8) #25
  %927 = load i32, ptr %297, align 4, !tbaa !100
  br label %928

928:                                              ; preds = %923, %921, %911, %910, %901, %892, %891
  %929 = phi i32 [ %874, %891 ], [ %874, %892 ], [ %874, %901 ], [ %874, %910 ], [ %874, %911 ], [ %874, %921 ], [ %927, %923 ]
  %930 = phi i32 [ %876, %891 ], [ %876, %892 ], [ 0, %901 ], [ %876, %910 ], [ %876, %911 ], [ 0, %921 ], [ %876, %923 ]
  %931 = add nuw nsw i64 %875, 1
  %932 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %877, i64 1
  %933 = sext i32 %929 to i64
  %934 = icmp slt i64 %931, %933
  br i1 %934, label %873, label %935, !llvm.loop !151

935:                                              ; preds = %928
  %.lcssa = phi i32 [ %930, %928 ]
  %936 = load i32, ptr %872, align 8, !tbaa !150
  %937 = icmp eq i32 %936, 0
  %938 = icmp ne i32 %.lcssa, 0
  %939 = select i1 %937, i1 true, i1 %938
  br i1 %939, label %945, label %940

940:                                              ; preds = %935
  %941 = load ptr, ptr %8, align 8, !tbaa !25
  %942 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %941, i64 0, i32 5
  store i32 98, ptr %942, align 8, !tbaa !22
  %943 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %941, i64 0, i32 1
  %944 = load ptr, ptr %943, align 8, !tbaa !16
  call void %944(ptr noundef nonnull %8, i32 noundef 0) #25
  br label %945

945:                                              ; preds = %940, %935, %867
  %946 = load ptr, ptr %27, align 8, !tbaa !55
  %947 = load ptr, ptr %946, align 8, !tbaa !56
  %948 = call ptr %947(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 112) #25
  %949 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 53
  store ptr %948, ptr %949, align 8, !tbaa !152
  store ptr @start_pass_prep, ptr %948, align 8, !tbaa !153
  %950 = load ptr, ptr %858, align 8, !tbaa !143
  %951 = getelementptr inbounds %struct.jpeg_downsampler, ptr %950, i64 0, i32 2
  %952 = load i32, ptr %951, align 8, !tbaa !156
  %953 = icmp eq i32 %952, 0
  %954 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %948, i64 0, i32 1
  br i1 %953, label %1021, label %955

955:                                              ; preds = %945
  store ptr @pre_process_context, ptr %954, align 8, !tbaa !157
  %956 = load i32, ptr %355, align 4, !tbaa !102
  %957 = load ptr, ptr %27, align 8, !tbaa !55
  %958 = load ptr, ptr %957, align 8, !tbaa !56
  %959 = load i32, ptr %297, align 4, !tbaa !100
  %960 = mul i32 %956, 5
  %961 = mul i32 %959, %960
  %962 = sext i32 %961 to i64
  %963 = shl nsw i64 %962, 3
  %964 = call ptr %958(ptr noundef nonnull %8, i32 noundef 1, i64 noundef %963) #25
  %965 = load i32, ptr %297, align 4, !tbaa !100
  %966 = icmp sgt i32 %965, 0
  br i1 %966, label %967, label %1052

967:                                              ; preds = %955
  %968 = load ptr, ptr %62, align 8, !tbaa !57
  %969 = mul nsw i32 %956, 3
  %970 = sext i32 %956 to i64
  %971 = sext i32 %969 to i64
  %972 = shl nsw i64 %971, 3
  %973 = icmp sgt i32 %956, 0
  %974 = shl nsw i32 %956, 1
  %975 = shl i32 %956, 2
  %976 = sext i32 %960 to i64
  %977 = sext i32 %974 to i64
  %978 = sext i32 %975 to i64
  %979 = zext i32 %956 to i64
  br label %980

980:                                              ; preds = %1013, %967
  %981 = phi i64 [ 0, %967 ], [ %1016, %1013 ]
  %982 = phi ptr [ %964, %967 ], [ %1015, %1013 ]
  %983 = phi ptr [ %968, %967 ], [ %1017, %1013 ]
  %984 = load ptr, ptr %27, align 8, !tbaa !55
  %985 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %984, i64 0, i32 2
  %986 = load ptr, ptr %985, align 8, !tbaa !158
  %987 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %983, i64 0, i32 7
  %988 = load i32, ptr %987, align 4, !tbaa !109
  %989 = zext i32 %988 to i64
  %990 = shl nuw nsw i64 %989, 3
  %991 = load i32, ptr %354, align 8, !tbaa !101
  %992 = sext i32 %991 to i64
  %993 = mul nsw i64 %990, %992
  %994 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %983, i64 0, i32 2
  %995 = load i32, ptr %994, align 8, !tbaa !103
  %996 = sext i32 %995 to i64
  %997 = sdiv i64 %993, %996
  %998 = trunc i64 %997 to i32
  %999 = call ptr %986(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %998, i32 noundef %969) #25
  %1000 = getelementptr inbounds ptr, ptr %982, i64 %970
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %1000, ptr align 1 %999, i64 %972, i1 false)
  br i1 %973, label %1001, label %1013

1001:                                             ; preds = %1001, %980
  %1002 = phi i64 [ %1011, %1001 ], [ 0, %980 ]
  %1003 = add nsw i64 %1002, %977
  %1004 = getelementptr inbounds ptr, ptr %999, i64 %1003
  %1005 = load ptr, ptr %1004, align 8, !tbaa !7
  %1006 = getelementptr inbounds ptr, ptr %982, i64 %1002
  store ptr %1005, ptr %1006, align 8, !tbaa !7
  %1007 = getelementptr inbounds ptr, ptr %999, i64 %1002
  %1008 = load ptr, ptr %1007, align 8, !tbaa !7
  %1009 = add nsw i64 %1002, %978
  %1010 = getelementptr inbounds ptr, ptr %982, i64 %1009
  store ptr %1008, ptr %1010, align 8, !tbaa !7
  %1011 = add nuw nsw i64 %1002, 1
  %1012 = icmp eq i64 %1011, %979
  br i1 %1012, label %1013, label %1001, !llvm.loop !159

1013:                                             ; preds = %1001, %980
  %1014 = getelementptr inbounds %struct.my_prep_controller, ptr %948, i64 0, i32 1, i64 %981
  store ptr %1000, ptr %1014, align 8, !tbaa !7
  %1015 = getelementptr inbounds ptr, ptr %982, i64 %976
  %1016 = add nuw nsw i64 %981, 1
  %1017 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %983, i64 1
  %1018 = load i32, ptr %297, align 4, !tbaa !100
  %1019 = sext i32 %1018 to i64
  %1020 = icmp slt i64 %1016, %1019
  br i1 %1020, label %980, label %1052, !llvm.loop !160

1021:                                             ; preds = %945
  store ptr @pre_process_data, ptr %954, align 8, !tbaa !157
  %1022 = load i32, ptr %297, align 4, !tbaa !100
  %1023 = icmp sgt i32 %1022, 0
  br i1 %1023, label %1024, label %1052

1024:                                             ; preds = %1021
  %1025 = load ptr, ptr %62, align 8, !tbaa !57
  br label %1026

1026:                                             ; preds = %1026, %1024
  %1027 = phi i64 [ 0, %1024 ], [ %1047, %1026 ]
  %1028 = phi ptr [ %1025, %1024 ], [ %1048, %1026 ]
  %1029 = load ptr, ptr %27, align 8, !tbaa !55
  %1030 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1029, i64 0, i32 2
  %1031 = load ptr, ptr %1030, align 8, !tbaa !158
  %1032 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1028, i64 0, i32 7
  %1033 = load i32, ptr %1032, align 4, !tbaa !109
  %1034 = zext i32 %1033 to i64
  %1035 = shl nuw nsw i64 %1034, 3
  %1036 = load i32, ptr %354, align 8, !tbaa !101
  %1037 = sext i32 %1036 to i64
  %1038 = mul nsw i64 %1035, %1037
  %1039 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1028, i64 0, i32 2
  %1040 = load i32, ptr %1039, align 8, !tbaa !103
  %1041 = sext i32 %1040 to i64
  %1042 = sdiv i64 %1038, %1041
  %1043 = trunc i64 %1042 to i32
  %1044 = load i32, ptr %355, align 4, !tbaa !102
  %1045 = call ptr %1031(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %1043, i32 noundef %1044) #25
  %1046 = getelementptr inbounds %struct.my_prep_controller, ptr %948, i64 0, i32 1, i64 %1027
  store ptr %1045, ptr %1046, align 8, !tbaa !7
  %1047 = add nuw nsw i64 %1027, 1
  %1048 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1028, i64 1
  %1049 = load i32, ptr %297, align 4, !tbaa !100
  %1050 = sext i32 %1049 to i64
  %1051 = icmp slt i64 %1047, %1050
  br i1 %1051, label %1026, label %1052, !llvm.loop !161

1052:                                             ; preds = %1026, %1021, %1013, %955, %718
  %1053 = load ptr, ptr %27, align 8, !tbaa !55
  %1054 = load ptr, ptr %1053, align 8, !tbaa !56
  %1055 = call ptr %1054(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 96) #25
  %1056 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 58
  store ptr %1055, ptr %1056, align 8, !tbaa !162
  store ptr @start_pass_fdctmgr, ptr %1055, align 8, !tbaa !163
  %1057 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 28
  %1058 = load i32, ptr %1057, align 4, !tbaa !166
  switch i32 %1058, label %1068 [
    i32 0, label %1059
    i32 1, label %1062
    i32 2, label %1065
  ]

1059:                                             ; preds = %1052
  %1060 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %1055, i64 0, i32 1
  store ptr @forward_DCT, ptr %1060, align 8, !tbaa !167
  %1061 = getelementptr inbounds %struct.my_fdct_controller, ptr %1055, i64 0, i32 1
  store ptr @jpeg_fdct_islow, ptr %1061, align 8, !tbaa !168
  br label %1072

1062:                                             ; preds = %1052
  %1063 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %1055, i64 0, i32 1
  store ptr @forward_DCT, ptr %1063, align 8, !tbaa !167
  %1064 = getelementptr inbounds %struct.my_fdct_controller, ptr %1055, i64 0, i32 1
  store ptr @jpeg_fdct_ifast, ptr %1064, align 8, !tbaa !168
  br label %1072

1065:                                             ; preds = %1052
  %1066 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %1055, i64 0, i32 1
  store ptr @forward_DCT_float, ptr %1066, align 8, !tbaa !167
  %1067 = getelementptr inbounds %struct.my_fdct_controller, ptr %1055, i64 0, i32 3
  store ptr @jpeg_fdct_float, ptr %1067, align 8, !tbaa !169
  br label %1072

1068:                                             ; preds = %1052
  %1069 = load ptr, ptr %8, align 8, !tbaa !25
  %1070 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1069, i64 0, i32 5
  store i32 47, ptr %1070, align 8, !tbaa !22
  %1071 = load ptr, ptr %1069, align 8, !tbaa !12
  call void %1071(ptr noundef nonnull %8) #25
  br label %1072

1072:                                             ; preds = %1068, %1065, %1062, %1059
  %1073 = getelementptr i8, ptr %1055, i64 24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1073, i8 0, i64 32, i1 false), !tbaa !7
  %1074 = getelementptr i8, ptr %1055, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %1074, i8 0, i64 32, i1 false), !tbaa !7
  %1075 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 24
  %1076 = load i32, ptr %1075, align 4, !tbaa !170
  %1077 = icmp eq i32 %1076, 0
  br i1 %1077, label %1082, label %1078

1078:                                             ; preds = %1072
  %1079 = load ptr, ptr %8, align 8, !tbaa !25
  %1080 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1079, i64 0, i32 5
  store i32 1, ptr %1080, align 8, !tbaa !22
  %1081 = load ptr, ptr %1079, align 8, !tbaa !12
  call void %1081(ptr noundef nonnull %8) #25
  br label %1096

1082:                                             ; preds = %1072
  %1083 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 37
  %1084 = load i32, ptr %1083, align 4, !tbaa !120
  %1085 = icmp eq i32 %1084, 0
  %1086 = load ptr, ptr %27, align 8, !tbaa !55
  %1087 = load ptr, ptr %1086, align 8, !tbaa !56
  %1088 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 59
  br i1 %1085, label %1093, label %1089

1089:                                             ; preds = %1082
  %1090 = call ptr %1087(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 184) #25
  store ptr %1090, ptr %1088, align 8, !tbaa !171
  store ptr @start_pass_phuff, ptr %1090, align 8, !tbaa !172
  %1091 = getelementptr i8, ptr %1090, i64 120
  %1092 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %1090, i64 0, i32 11
  store ptr null, ptr %1092, align 8, !tbaa !175
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %1091, i8 0, i64 64, i1 false)
  br label %1096

1093:                                             ; preds = %1082
  %1094 = call ptr %1087(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 192) #25
  store ptr %1094, ptr %1088, align 8, !tbaa !171
  store ptr @start_pass_huff, ptr %1094, align 8, !tbaa !176
  %1095 = getelementptr i8, ptr %1094, i64 64
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %1095, i8 0, i64 128, i1 false)
  br label %1096

1096:                                             ; preds = %1093, %1089, %1078
  %1097 = load i32, ptr %132, align 8, !tbaa !61
  %1098 = icmp slt i32 %1097, 2
  %1099 = load i32, ptr %133, align 8
  %1100 = icmp eq i32 %1099, 0
  %1101 = select i1 %1098, i1 %1100, i1 false
  %1102 = load ptr, ptr %27, align 8, !tbaa !55
  %1103 = load ptr, ptr %1102, align 8, !tbaa !56
  %1104 = call ptr %1103(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 192) #25
  %1105 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 54
  store ptr %1104, ptr %1105, align 8, !tbaa !179
  store ptr @start_pass_coef, ptr %1104, align 8, !tbaa !180
  br i1 %1101, label %1146, label %1106

1106:                                             ; preds = %1096
  %1107 = load i32, ptr %297, align 4, !tbaa !100
  %1108 = icmp sgt i32 %1107, 0
  br i1 %1108, label %1109, label %1161

1109:                                             ; preds = %1106
  %1110 = load ptr, ptr %62, align 8, !tbaa !57
  br label %1111

1111:                                             ; preds = %1111, %1109
  %1112 = phi i64 [ 0, %1109 ], [ %1141, %1111 ]
  %1113 = phi ptr [ %1110, %1109 ], [ %1142, %1111 ]
  %1114 = load ptr, ptr %27, align 8, !tbaa !55
  %1115 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1114, i64 0, i32 5
  %1116 = load ptr, ptr %1115, align 8, !tbaa !183
  %1117 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1113, i64 0, i32 7
  %1118 = load i32, ptr %1117, align 4, !tbaa !109
  %1119 = zext i32 %1118 to i64
  %1120 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1113, i64 0, i32 2
  %1121 = load i32, ptr %1120, align 8, !tbaa !103
  %1122 = sext i32 %1121 to i64
  %1123 = add nsw i64 %1119, -1
  %1124 = add nsw i64 %1123, %1122
  %1125 = srem i64 %1124, %1122
  %1126 = sub nsw i64 %1124, %1125
  %1127 = trunc i64 %1126 to i32
  %1128 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1113, i64 0, i32 8
  %1129 = load i32, ptr %1128, align 8, !tbaa !110
  %1130 = zext i32 %1129 to i64
  %1131 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1113, i64 0, i32 3
  %1132 = load i32, ptr %1131, align 4, !tbaa !105
  %1133 = sext i32 %1132 to i64
  %1134 = add nsw i64 %1130, -1
  %1135 = add nsw i64 %1134, %1133
  %1136 = srem i64 %1135, %1133
  %1137 = sub nsw i64 %1135, %1136
  %1138 = trunc i64 %1137 to i32
  %1139 = call ptr %1116(ptr noundef nonnull %8, i32 noundef 1, i32 noundef 0, i32 noundef %1127, i32 noundef %1138, i32 noundef %1132) #25
  %1140 = getelementptr inbounds %struct.my_coef_controller.63, ptr %1104, i64 0, i32 6, i64 %1112
  store ptr %1139, ptr %1140, align 8, !tbaa !7
  %1141 = add nuw nsw i64 %1112, 1
  %1142 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1113, i64 1
  %1143 = load i32, ptr %297, align 4, !tbaa !100
  %1144 = sext i32 %1143 to i64
  %1145 = icmp slt i64 %1141, %1144
  br i1 %1145, label %1111, label %1161, !llvm.loop !184

1146:                                             ; preds = %1096
  %1147 = load ptr, ptr %27, align 8, !tbaa !55
  %1148 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1147, i64 0, i32 1
  %1149 = load ptr, ptr %1148, align 8, !tbaa !185
  %1150 = call ptr %1149(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 1280) #25
  br label %1151

1151:                                             ; preds = %1151, %1146
  %1152 = phi i64 [ 0, %1146 ], [ %1156, %1151 ]
  %1153 = phi <2 x i64> [ <i64 0, i64 1>, %1146 ], [ %1157, %1151 ]
  %1154 = getelementptr inbounds [64 x i16], ptr %1150, <2 x i64> %1153
  %1155 = getelementptr inbounds %struct.my_coef_controller.63, ptr %1104, i64 0, i32 5, i64 %1152
  store <2 x ptr> %1154, ptr %1155, align 8, !tbaa !7
  %1156 = add nuw nsw i64 %1152, 2
  %1157 = add <2 x i64> %1153, <i64 2, i64 2>
  %1158 = icmp eq i64 %1156, 10
  br i1 %1158, label %1159, label %1151, !llvm.loop !186

1159:                                             ; preds = %1151
  %1160 = getelementptr inbounds %struct.my_coef_controller.63, ptr %1104, i64 0, i32 6
  store ptr null, ptr %1160, align 8, !tbaa !7
  br label %1161

1161:                                             ; preds = %1159, %1111, %1106
  %1162 = load ptr, ptr %27, align 8, !tbaa !55
  %1163 = load ptr, ptr %1162, align 8, !tbaa !56
  %1164 = call ptr %1163(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 112) #25
  %1165 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 52
  store ptr %1164, ptr %1165, align 8, !tbaa !189
  store ptr @start_pass_main, ptr %1164, align 8, !tbaa !190
  %1166 = load i32, ptr %728, align 8, !tbaa !136
  %1167 = icmp eq i32 %1166, 0
  %1168 = load i32, ptr %297, align 4
  %1169 = icmp sgt i32 %1168, 0
  %1170 = select i1 %1167, i1 %1169, i1 false
  br i1 %1170, label %1171, label %1192

1171:                                             ; preds = %1161
  %1172 = load ptr, ptr %62, align 8, !tbaa !57
  br label %1173

1173:                                             ; preds = %1173, %1171
  %1174 = phi i64 [ 0, %1171 ], [ %1187, %1173 ]
  %1175 = phi ptr [ %1172, %1171 ], [ %1188, %1173 ]
  %1176 = load ptr, ptr %27, align 8, !tbaa !55
  %1177 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1176, i64 0, i32 2
  %1178 = load ptr, ptr %1177, align 8, !tbaa !158
  %1179 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1175, i64 0, i32 7
  %1180 = load i32, ptr %1179, align 4, !tbaa !109
  %1181 = shl i32 %1180, 3
  %1182 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1175, i64 0, i32 3
  %1183 = load i32, ptr %1182, align 4, !tbaa !105
  %1184 = shl nsw i32 %1183, 3
  %1185 = call ptr %1178(ptr noundef nonnull %8, i32 noundef 1, i32 noundef %1181, i32 noundef %1184) #25
  %1186 = getelementptr inbounds %struct.my_main_controller, ptr %1164, i64 0, i32 5, i64 %1174
  store ptr %1185, ptr %1186, align 8, !tbaa !7
  %1187 = add nuw nsw i64 %1174, 1
  %1188 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1175, i64 1
  %1189 = load i32, ptr %297, align 4, !tbaa !100
  %1190 = sext i32 %1189 to i64
  %1191 = icmp slt i64 %1187, %1190
  br i1 %1191, label %1173, label %1192, !llvm.loop !193

1192:                                             ; preds = %1173, %1161
  %1193 = load ptr, ptr %27, align 8, !tbaa !55
  %1194 = load ptr, ptr %1193, align 8, !tbaa !56
  %1195 = call ptr %1194(ptr noundef nonnull %8, i32 noundef 1, i64 noundef 48) #25
  %1196 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 55
  store ptr %1195, ptr %1196, align 8, !tbaa !194
  store ptr @write_any_marker, ptr %1195, align 8, !tbaa !195
  %1197 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1195, i64 0, i32 1
  store ptr @write_file_header, ptr %1197, align 8, !tbaa !197
  %1198 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1195, i64 0, i32 2
  store ptr @write_frame_header, ptr %1198, align 8, !tbaa !198
  %1199 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1195, i64 0, i32 3
  store ptr @write_scan_header, ptr %1199, align 8, !tbaa !199
  %1200 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1195, i64 0, i32 4
  store ptr @write_file_trailer, ptr %1200, align 8, !tbaa !200
  %1201 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1195, i64 0, i32 5
  store ptr @write_tables_only, ptr %1201, align 8, !tbaa !201
  %1202 = load ptr, ptr %27, align 8, !tbaa !55
  %1203 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1202, i64 0, i32 6
  %1204 = load ptr, ptr %1203, align 8, !tbaa !202
  call void %1204(ptr noundef nonnull %8) #25
  %1205 = load ptr, ptr %1196, align 8, !tbaa !194
  %1206 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1205, i64 0, i32 1
  %1207 = load ptr, ptr %1206, align 8, !tbaa !197
  call void %1207(ptr noundef nonnull %8) #25
  %1208 = load ptr, ptr %286, align 8, !tbaa !90
  %1209 = load ptr, ptr %1208, align 8, !tbaa !203
  call void %1209(ptr noundef nonnull %8) #25
  %1210 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %8, i64 0, i32 36
  store i32 0, ptr %1210, align 8, !tbaa !204
  %1211 = load i32, ptr %728, align 8, !tbaa !136
  %1212 = icmp eq i32 %1211, 0
  %1213 = select i1 %1212, i32 101, i32 102
  store i32 %1213, ptr %64, align 4, !tbaa !50
  %1214 = load i32, ptr %290, align 4, !tbaa !97
  %1215 = icmp eq i32 %1214, 0
  br i1 %1215, label %1271, label %1216

1216:                                             ; preds = %1192
  %1217 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %224, i64 0, i32 1
  %1218 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %224, i64 0, i32 4
  br label %1219

1219:                                             ; preds = %1258, %1216
  %1220 = load ptr, ptr %1217, align 8, !tbaa !205
  %1221 = call i32 %1220(ptr noundef nonnull %8, ptr noundef nonnull %224) #25
  %1222 = load ptr, ptr %1218, align 8, !tbaa !206
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %3) #23
  %1223 = load i32, ptr %64, align 4, !tbaa !50
  %1224 = icmp eq i32 %1223, 101
  br i1 %1224, label %1230, label %1225

1225:                                             ; preds = %1219
  %1226 = load ptr, ptr %8, align 8, !tbaa !25
  %1227 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1226, i64 0, i32 5
  store i32 18, ptr %1227, align 8, !tbaa !22
  %1228 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1226, i64 0, i32 6
  store i32 %1223, ptr %1228, align 4, !tbaa !11
  %1229 = load ptr, ptr %1226, align 8, !tbaa !12
  call void %1229(ptr noundef nonnull %8) #25
  br label %1230

1230:                                             ; preds = %1225, %1219
  %1231 = load i32, ptr %1210, align 8, !tbaa !204
  %1232 = load i32, ptr %290, align 4, !tbaa !97
  %1233 = icmp ult i32 %1231, %1232
  br i1 %1233, label %1239, label %1234

1234:                                             ; preds = %1230
  %1235 = load ptr, ptr %8, align 8, !tbaa !25
  %1236 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1235, i64 0, i32 5
  store i32 119, ptr %1236, align 8, !tbaa !22
  %1237 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1235, i64 0, i32 1
  %1238 = load ptr, ptr %1237, align 8, !tbaa !16
  call void %1238(ptr noundef nonnull %8, i32 noundef -1) #25
  br label %1239

1239:                                             ; preds = %1234, %1230
  %1240 = load ptr, ptr %28, align 8, !tbaa !47
  %1241 = icmp eq ptr %1240, null
  br i1 %1241, label %1250, label %1242

1242:                                             ; preds = %1239
  %1243 = load i32, ptr %1210, align 8, !tbaa !204
  %1244 = zext i32 %1243 to i64
  %1245 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1240, i64 0, i32 1
  store i64 %1244, ptr %1245, align 8, !tbaa !207
  %1246 = load i32, ptr %290, align 4, !tbaa !97
  %1247 = zext i32 %1246 to i64
  %1248 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1240, i64 0, i32 2
  store i64 %1247, ptr %1248, align 8, !tbaa !209
  %1249 = load ptr, ptr %1240, align 8, !tbaa !210
  call void %1249(ptr noundef nonnull %8) #25
  br label %1250

1250:                                             ; preds = %1242, %1239
  %1251 = load ptr, ptr %286, align 8, !tbaa !90
  %1252 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1251, i64 0, i32 3
  %1253 = load i32, ptr %1252, align 8, !tbaa !211
  %1254 = icmp eq i32 %1253, 0
  br i1 %1254, label %1258, label %1255

1255:                                             ; preds = %1250
  %1256 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1251, i64 0, i32 1
  %1257 = load ptr, ptr %1256, align 8, !tbaa !212
  call void %1257(ptr noundef nonnull %8) #25
  br label %1258

1258:                                             ; preds = %1255, %1250
  %1259 = load i32, ptr %290, align 4, !tbaa !97
  %1260 = load i32, ptr %1210, align 8, !tbaa !204
  %1261 = sub i32 %1259, %1260
  %1262 = call i32 @llvm.umin.i32(i32 %1261, i32 %1221)
  store i32 0, ptr %3, align 4, !tbaa !121
  %1263 = load ptr, ptr %1165, align 8, !tbaa !189
  %1264 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %1263, i64 0, i32 1
  %1265 = load ptr, ptr %1264, align 8, !tbaa !213
  call void %1265(ptr noundef nonnull %8, ptr noundef %1222, ptr noundef nonnull %3, i32 noundef %1262) #25
  %1266 = load i32, ptr %3, align 4, !tbaa !121
  %1267 = load i32, ptr %1210, align 8, !tbaa !204
  %1268 = add i32 %1267, %1266
  store i32 %1268, ptr %1210, align 8, !tbaa !204
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %3) #23
  %1269 = load i32, ptr %290, align 4, !tbaa !97
  %1270 = icmp ult i32 %1268, %1269
  br i1 %1270, label %1219, label %1271, !llvm.loop !214

1271:                                             ; preds = %1258, %1192
  %1272 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %224, i64 0, i32 2
  %1273 = load ptr, ptr %1272, align 8, !tbaa !215
  call void %1273(ptr noundef nonnull %8, ptr noundef nonnull %224) #25
  %1274 = load i32, ptr %64, align 4, !tbaa !50
  switch i32 %1274, label %1286 [
    i32 101, label %1275
    i32 102, label %1275
    i32 103, label %1293
  ]

1275:                                             ; preds = %1271, %1271
  %1276 = load i32, ptr %1210, align 8, !tbaa !204
  %1277 = load i32, ptr %290, align 4, !tbaa !97
  %1278 = icmp ult i32 %1276, %1277
  br i1 %1278, label %1279, label %1283

1279:                                             ; preds = %1275
  %1280 = load ptr, ptr %8, align 8, !tbaa !25
  %1281 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1280, i64 0, i32 5
  store i32 66, ptr %1281, align 8, !tbaa !22
  %1282 = load ptr, ptr %1280, align 8, !tbaa !12
  call void %1282(ptr noundef nonnull %8) #25
  br label %1283

1283:                                             ; preds = %1279, %1275
  %1284 = load ptr, ptr %286, align 8, !tbaa !90
  %1285 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1284, i64 0, i32 2
  br label %1290

1286:                                             ; preds = %1271
  %1287 = load ptr, ptr %8, align 8, !tbaa !25
  %1288 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1287, i64 0, i32 5
  store i32 18, ptr %1288, align 8, !tbaa !22
  %1289 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1287, i64 0, i32 6
  store i32 %1274, ptr %1289, align 4, !tbaa !11
  br label %1290

1290:                                             ; preds = %1286, %1283
  %1291 = phi ptr [ %1287, %1286 ], [ %1285, %1283 ]
  %1292 = load ptr, ptr %1291, align 8, !tbaa !7
  call void %1292(ptr noundef nonnull %8) #25
  br label %1293

1293:                                             ; preds = %1290, %1271
  %1294 = load ptr, ptr %286, align 8, !tbaa !90
  %1295 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1294, i64 0, i32 4
  %1296 = load i32, ptr %1295, align 4, !tbaa !216
  %1297 = icmp eq i32 %1296, 0
  br i1 %1297, label %1298, label %1336

1298:                                             ; preds = %1328, %1293
  %1299 = phi ptr [ %1332, %1328 ], [ %1294, %1293 ]
  %1300 = load ptr, ptr %1299, align 8, !tbaa !203
  call void %1300(ptr noundef nonnull %8) #25
  %1301 = load i32, ptr %456, align 8, !tbaa !115
  %1302 = icmp eq i32 %1301, 0
  br i1 %1302, label %1328, label %1303

1303:                                             ; preds = %1323, %1298
  %1304 = phi i64 [ %1324, %1323 ], [ 0, %1298 ]
  %1305 = phi i32 [ %1325, %1323 ], [ %1301, %1298 ]
  %1306 = load ptr, ptr %28, align 8, !tbaa !47
  %1307 = icmp eq ptr %1306, null
  br i1 %1307, label %1313, label %1308

1308:                                             ; preds = %1303
  %1309 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1306, i64 0, i32 1
  store i64 %1304, ptr %1309, align 8, !tbaa !207
  %1310 = zext i32 %1305 to i64
  %1311 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %1306, i64 0, i32 2
  store i64 %1310, ptr %1311, align 8, !tbaa !209
  %1312 = load ptr, ptr %1306, align 8, !tbaa !210
  call void %1312(ptr noundef nonnull %8) #25
  br label %1313

1313:                                             ; preds = %1308, %1303
  %1314 = load ptr, ptr %1105, align 8, !tbaa !179
  %1315 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %1314, i64 0, i32 1
  %1316 = load ptr, ptr %1315, align 8, !tbaa !217
  %1317 = call i32 %1316(ptr noundef nonnull %8, ptr noundef null) #25
  %1318 = icmp eq i32 %1317, 0
  br i1 %1318, label %1319, label %1323

1319:                                             ; preds = %1313
  %1320 = load ptr, ptr %8, align 8, !tbaa !25
  %1321 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %1320, i64 0, i32 5
  store i32 22, ptr %1321, align 8, !tbaa !22
  %1322 = load ptr, ptr %1320, align 8, !tbaa !12
  call void %1322(ptr noundef nonnull %8) #25
  br label %1323

1323:                                             ; preds = %1319, %1313
  %1324 = add nuw nsw i64 %1304, 1
  %1325 = load i32, ptr %456, align 8, !tbaa !115
  %1326 = zext i32 %1325 to i64
  %1327 = icmp ult i64 %1324, %1326
  br i1 %1327, label %1303, label %1328, !llvm.loop !218

1328:                                             ; preds = %1323, %1298
  %1329 = load ptr, ptr %286, align 8, !tbaa !90
  %1330 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1329, i64 0, i32 2
  %1331 = load ptr, ptr %1330, align 8, !tbaa !219
  call void %1331(ptr noundef nonnull %8) #25
  %1332 = load ptr, ptr %286, align 8, !tbaa !90
  %1333 = getelementptr inbounds %struct.jpeg_comp_master, ptr %1332, i64 0, i32 4
  %1334 = load i32, ptr %1333, align 4, !tbaa !216
  %1335 = icmp eq i32 %1334, 0
  br i1 %1335, label %1298, label %1336, !llvm.loop !220

1336:                                             ; preds = %1328, %1293
  %1337 = load ptr, ptr %1196, align 8, !tbaa !194
  %1338 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %1337, i64 0, i32 4
  %1339 = load ptr, ptr %1338, align 8, !tbaa !200
  call void %1339(ptr noundef nonnull %8) #25
  %1340 = load ptr, ptr %61, align 8, !tbaa !48
  %1341 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %1340, i64 0, i32 4
  %1342 = load ptr, ptr %1341, align 8, !tbaa !221
  call void %1342(ptr noundef nonnull %8) #25
  %1343 = load ptr, ptr %27, align 8, !tbaa !29
  %1344 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1343, i64 0, i32 9
  %1345 = load ptr, ptr %1344, align 8, !tbaa !222
  call void %1345(ptr noundef nonnull %8, i32 noundef 1) #25
  %1346 = getelementptr inbounds %struct.jpeg_comp_master, ptr %8, i64 0, i32 3
  %1347 = load i32, ptr %1346, align 8, !tbaa !223
  %1348 = icmp eq i32 %1347, 0
  %1349 = select i1 %1348, i32 100, i32 200
  store i32 %1349, ptr %64, align 4, !tbaa !224
  %1350 = load ptr, ptr %27, align 8, !tbaa !29
  %1351 = icmp eq ptr %1350, null
  br i1 %1351, label %1355, label %1352

1352:                                             ; preds = %1336
  %1353 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %1350, i64 0, i32 10
  %1354 = load ptr, ptr %1353, align 8, !tbaa !225
  call void %1354(ptr noundef nonnull %8) #25
  br label %1355

1355:                                             ; preds = %1352, %1336
  store ptr null, ptr %27, align 8, !tbaa !29
  store i32 0, ptr %64, align 4, !tbaa !224
  %1356 = load ptr, ptr @stdin, align 8, !tbaa !7
  %1357 = icmp eq ptr %164, %1356
  br i1 %1357, label %1360, label %1358

1358:                                             ; preds = %1355
  %1359 = call i32 @fclose(ptr noundef %164) #26
  br label %1360

1360:                                             ; preds = %1358, %1355
  %1361 = load ptr, ptr @stdout, align 8, !tbaa !7
  %1362 = icmp eq ptr %178, %1361
  br i1 %1362, label %1365, label %1363

1363:                                             ; preds = %1360
  %1364 = call i32 @fclose(ptr noundef %178) #26
  br label %1365

1365:                                             ; preds = %1363, %1360
  %1366 = load i64, ptr %22, align 8, !tbaa !21
  %1367 = icmp eq i64 %1366, 0
  %1368 = select i1 %1367, i32 0, i32 2
  call void @exit(i32 noundef %1368) #28
  unreachable
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: noreturn nounwind optsize uwtable
define internal void @error_exit(ptr noundef %0) #0 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !17
  tail call void %4(ptr noundef nonnull %0) #25
  tail call fastcc void @jpeg_destroy(ptr noundef nonnull %0) #25
  tail call void @exit(i32 noundef 1) #28
  unreachable
}

; Function Attrs: nounwind optsize uwtable
define internal void @emit_message(ptr noundef %0, i32 noundef %1) #2 {
  %3 = load ptr, ptr %0, align 8, !tbaa !226
  %4 = icmp slt i32 %1, 0
  br i1 %4, label %5, label %20

5:                                                ; preds = %2
  %6 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 8
  %7 = load i64, ptr %6, align 8, !tbaa !21
  %8 = icmp eq i64 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 7
  %11 = load i32, ptr %10, align 4, !tbaa !20
  %12 = icmp sgt i32 %11, 2
  br i1 %12, label %13, label %17

13:                                               ; preds = %9, %5
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 2
  %15 = load ptr, ptr %14, align 8, !tbaa !17
  tail call void %15(ptr noundef nonnull %0) #25
  %16 = load i64, ptr %6, align 8, !tbaa !21
  br label %17

17:                                               ; preds = %13, %9
  %18 = phi i64 [ %16, %13 ], [ %7, %9 ]
  %19 = add nsw i64 %18, 1
  store i64 %19, ptr %6, align 8, !tbaa !21
  br label %27

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 7
  %22 = load i32, ptr %21, align 4, !tbaa !20
  %23 = icmp slt i32 %22, %1
  br i1 %23, label %27, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !17
  tail call void %26(ptr noundef nonnull %0) #25
  br label %27

27:                                               ; preds = %24, %20, %17
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @output_message(ptr noundef %0) #2 {
  %2 = alloca [200 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 200, ptr nonnull %2) #23
  %3 = load ptr, ptr %0, align 8, !tbaa !226
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !18
  call void %5(ptr noundef nonnull %0, ptr noundef nonnull %2) #25
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %6, ptr noundef nonnull @.str.120, ptr noundef nonnull %2) #27
  call void @llvm.lifetime.end.p0(i64 200, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @format_message(ptr nocapture noundef readonly %0, ptr nocapture noundef writeonly %1) #3 {
  %3 = load ptr, ptr %0, align 8, !tbaa !226
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 5
  %5 = load i32, ptr %4, align 8, !tbaa !22
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %2
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 10
  %9 = load i32, ptr %8, align 8, !tbaa !24
  %10 = icmp sgt i32 %5, %9
  br i1 %10, label %16, label %11

11:                                               ; preds = %7
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %13 = load ptr, ptr %12, align 8, !tbaa !23
  %14 = zext i32 %5 to i64
  %15 = getelementptr inbounds ptr, ptr %13, i64 %14
  br label %32

16:                                               ; preds = %7, %2
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 11
  %18 = load ptr, ptr %17, align 8, !tbaa !51
  %19 = icmp eq ptr %18, null
  br i1 %19, label %36, label %20

20:                                               ; preds = %16
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !52
  %23 = icmp slt i32 %5, %22
  br i1 %23, label %36, label %24

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !53
  %27 = icmp sgt i32 %5, %26
  br i1 %27, label %36, label %28

28:                                               ; preds = %24
  %29 = sub nsw i32 %5, %22
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds ptr, ptr %18, i64 %30
  br label %32

32:                                               ; preds = %28, %11
  %33 = phi ptr [ %15, %11 ], [ %31, %28 ]
  %34 = load ptr, ptr %33, align 8, !tbaa !7
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %32, %24, %20, %16
  %37 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  store i32 %5, ptr %37, align 4, !tbaa !11
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 9
  %39 = load ptr, ptr %38, align 8, !tbaa !23
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  br label %41

41:                                               ; preds = %36, %32
  %42 = phi ptr [ %40, %36 ], [ %34, %32 ]
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi ptr [ %42, %41 ], [ %45, %43 ]
  %45 = getelementptr inbounds i8, ptr %44, i64 1
  %46 = load i8, ptr %44, align 1, !tbaa !11
  switch i8 %46, label %43 [
    i8 0, label %53
    i8 37, label %47
  ]

47:                                               ; preds = %43
  %.lcssa1 = phi ptr [ %45, %43 ]
  %48 = load i8, ptr %.lcssa1, align 1, !tbaa !11
  %49 = icmp eq i8 %48, 115
  br i1 %49, label %50, label %53

50:                                               ; preds = %47
  %51 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %52 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %42, ptr noundef nonnull %51) #25
  br label %71

53:                                               ; preds = %47, %43
  %54 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6
  %55 = load i32, ptr %54, align 4, !tbaa !11
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 1
  %57 = load i32, ptr %56, align 4, !tbaa !11
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 2
  %59 = load i32, ptr %58, align 4, !tbaa !11
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 3
  %61 = load i32, ptr %60, align 4, !tbaa !11
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 4
  %63 = load i32, ptr %62, align 4, !tbaa !11
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 5
  %65 = load i32, ptr %64, align 4, !tbaa !11
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 6
  %67 = load i32, ptr %66, align 4, !tbaa !11
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %3, i64 0, i32 6, i32 0, i64 7
  %69 = load i32, ptr %68, align 4, !tbaa !11
  %70 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull dereferenceable(1) %1, ptr noundef nonnull dereferenceable(1) %42, i32 noundef %55, i32 noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef %63, i32 noundef %65, i32 noundef %67, i32 noundef %69) #25
  br label %71

71:                                               ; preds = %53, %50
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable
define internal void @reset_error_mgr(ptr nocapture noundef readonly %0) #4 {
  %2 = load ptr, ptr %0, align 8, !tbaa !226
  %3 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 8
  store i64 0, ptr %3, align 8, !tbaa !21
  %4 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %2, i64 0, i32 5
  store i32 0, ptr %4, align 8, !tbaa !22
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr nocapture writeonly, i8, i64, i1 immarg) #5

; Function Attrs: mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_small(ptr noundef %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !226
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 1, ptr %10, align 4, !tbaa !11
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %12(ptr noundef nonnull %0) #25
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !11
  %21 = load ptr, ptr %0, align 8, !tbaa !226
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  tail call void %22(ptr noundef nonnull %0) #25
  br label %23

23:                                               ; preds = %17, %13
  %24 = sext i32 %1 to i64
  %25 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 1, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !11
  %27 = icmp eq ptr %26, null
  br i1 %27, label %36, label %31

28:                                               ; preds = %31
  %29 = load ptr, ptr %32, align 8, !tbaa !11
  %30 = icmp eq ptr %29, null
  br i1 %30, label %36, label %31, !llvm.loop !227

31:                                               ; preds = %28, %23
  %32 = phi ptr [ %29, %28 ], [ %26, %23 ]
  %33 = getelementptr inbounds %struct.anon.0, ptr %32, i64 0, i32 2
  %34 = load i64, ptr %33, align 8, !tbaa !11
  %35 = icmp ult i64 %34, %15
  br i1 %35, label %28, label %68, !llvm.loop !227

36:                                               ; preds = %28, %23
  %37 = phi ptr [ null, %23 ], [ %32, %28 ]
  %38 = add i64 %15, 24
  %39 = icmp eq ptr %37, null
  %40 = select i1 %39, ptr @first_pool_slop, ptr @extra_pool_slop
  %41 = getelementptr inbounds [2 x i64], ptr %40, i64 0, i64 %24
  %42 = load i64, ptr %41, align 8, !tbaa !31
  %43 = sub i64 999999976, %15
  %44 = tail call i64 @llvm.umin.i64(i64 %42, i64 %43)
  br label %45

45:                                               ; preds = %59, %36
  %46 = phi i64 [ %44, %36 ], [ %51, %59 ]
  %47 = add i64 %38, %46
  %48 = tail call noalias ptr @malloc(i64 noundef %47) #24
  %49 = icmp eq ptr %48, null
  br i1 %49, label %50, label %60

50:                                               ; preds = %45
  %51 = lshr i64 %46, 1
  %52 = icmp ult i64 %46, 100
  br i1 %52, label %53, label %59

53:                                               ; preds = %50
  %54 = load ptr, ptr %0, align 8, !tbaa !226
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 5
  store i32 53, ptr %55, align 8, !tbaa !22
  %56 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %54, i64 0, i32 6
  store i32 2, ptr %56, align 4, !tbaa !11
  %57 = load ptr, ptr %0, align 8, !tbaa !226
  %58 = load ptr, ptr %57, align 8, !tbaa !12
  tail call void %58(ptr noundef nonnull %0) #25
  br label %59

59:                                               ; preds = %53, %50
  br label %45

60:                                               ; preds = %45
  %.lcssa2 = phi i64 [ %46, %45 ]
  %.lcssa1 = phi i64 [ %47, %45 ]
  %.lcssa = phi ptr [ %48, %45 ]
  %61 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %62 = load i64, ptr %61, align 8, !tbaa !45
  %63 = add i64 %62, %.lcssa1
  store i64 %63, ptr %61, align 8, !tbaa !45
  %64 = add i64 %.lcssa2, %15
  %65 = getelementptr inbounds %struct.anon.0, ptr %.lcssa, i64 0, i32 2
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.lcssa, i8 0, i64 16, i1 false)
  store i64 %64, ptr %65, align 8, !tbaa !11
  %66 = select i1 %39, ptr %25, ptr %37
  store ptr %.lcssa, ptr %66, align 8, !tbaa !11
  %67 = load i64, ptr %65, align 8, !tbaa !11
  br label %68

68:                                               ; preds = %60, %31
  %69 = phi i64 [ %67, %60 ], [ %34, %31 ]
  %70 = phi ptr [ %.lcssa, %60 ], [ %32, %31 ]
  %71 = getelementptr inbounds %union.large_pool_struct, ptr %70, i64 1
  %72 = getelementptr inbounds %struct.anon.0, ptr %70, i64 0, i32 1
  %73 = load i64, ptr %72, align 8, !tbaa !11
  %74 = getelementptr inbounds i8, ptr %71, i64 %73
  %75 = add i64 %73, %15
  store i64 %75, ptr %72, align 8, !tbaa !11
  %76 = getelementptr inbounds %struct.anon.0, ptr %70, i64 0, i32 2
  %77 = sub i64 %69, %15
  store i64 %77, ptr %76, align 8, !tbaa !11
  ret ptr %74
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %2) #2 {
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !29
  %6 = icmp ugt i64 %2, 999999976
  br i1 %6, label %7, label %13

7:                                                ; preds = %3
  %8 = load ptr, ptr %0, align 8, !tbaa !226
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 53, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 3, ptr %10, align 4, !tbaa !11
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %12(ptr noundef nonnull %0) #25
  br label %13

13:                                               ; preds = %7, %3
  %14 = add i64 %2, 7
  %15 = and i64 %14, -8
  %16 = icmp ugt i32 %1, 1
  br i1 %16, label %17, label %23

17:                                               ; preds = %13
  %18 = load ptr, ptr %0, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 12, ptr %19, align 8, !tbaa !22
  %20 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 6
  store i32 %1, ptr %20, align 4, !tbaa !11
  %21 = load ptr, ptr %0, align 8, !tbaa !226
  %22 = load ptr, ptr %21, align 8, !tbaa !12
  tail call void %22(ptr noundef nonnull %0) #25
  br label %23

23:                                               ; preds = %17, %13
  %24 = add i64 %15, 24
  %25 = tail call noalias ptr @malloc(i64 noundef %24) #24
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %33

27:                                               ; preds = %23
  %28 = load ptr, ptr %0, align 8, !tbaa !226
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 53, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 4, ptr %30, align 4, !tbaa !11
  %31 = load ptr, ptr %0, align 8, !tbaa !226
  %32 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void %32(ptr noundef nonnull %0) #25
  br label %33

33:                                               ; preds = %27, %23
  %34 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 5
  %35 = load i64, ptr %34, align 8, !tbaa !45
  %36 = add i64 %35, %24
  store i64 %36, ptr %34, align 8, !tbaa !45
  %37 = sext i32 %1 to i64
  %38 = getelementptr inbounds %struct.my_memory_mgr, ptr %5, i64 0, i32 2, i64 %37
  %39 = load ptr, ptr %38, align 8, !tbaa !7
  store ptr %39, ptr %25, align 8, !tbaa !11
  %40 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 1
  store i64 %15, ptr %40, align 8, !tbaa !11
  %41 = getelementptr inbounds %struct.anon.0, ptr %25, i64 0, i32 2
  store i64 0, ptr %41, align 8, !tbaa !11
  store ptr %25, ptr %38, align 8, !tbaa !7
  %42 = getelementptr inbounds %union.large_pool_struct, ptr %25, i64 1
  ret ptr %42
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = zext i32 %2 to i64
  %8 = udiv i32 999999976, %2
  %9 = icmp ugt i32 %2, 999999976
  br i1 %9, label %10, label %14

10:                                               ; preds = %4
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 69, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %13(ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %10, %4
  %15 = zext i32 %3 to i64
  %16 = tail call i32 @llvm.umin.i32(i32 %8, i32 %3)
  %17 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %16, ptr %17, align 8, !tbaa !228
  %18 = shl nuw nsw i64 %15, 3
  %19 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %18) #26
  %20 = icmp eq i32 %3, 0
  br i1 %20, label %43, label %24

21:                                               ; preds = %33, %24
  %22 = phi i32 [ %25, %24 ], [ %37, %33 ]
  %23 = icmp ult i32 %22, %3
  br i1 %23, label %24, label %43, !llvm.loop !229

24:                                               ; preds = %21, %14
  %25 = phi i32 [ %22, %21 ], [ 0, %14 ]
  %26 = phi i32 [ %28, %21 ], [ %16, %14 ]
  %27 = sub i32 %3, %25
  %28 = tail call i32 @llvm.umin.i32(i32 %26, i32 %27)
  %29 = zext i32 %28 to i64
  %30 = mul nuw nsw i64 %29, %7
  %31 = tail call ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %30) #26
  %32 = icmp eq i32 %28, 0
  br i1 %32, label %21, label %33

33:                                               ; preds = %33, %24
  %34 = phi ptr [ %40, %33 ], [ %31, %24 ]
  %35 = phi i32 [ %41, %33 ], [ %28, %24 ]
  %36 = phi i32 [ %37, %33 ], [ %25, %24 ]
  %37 = add i32 %36, 1
  %38 = zext i32 %36 to i64
  %39 = getelementptr inbounds ptr, ptr %19, i64 %38
  store ptr %34, ptr %39, align 8, !tbaa !7
  %40 = getelementptr inbounds i8, ptr %34, i64 %7
  %41 = add i32 %35, -1
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %21, label %33, !llvm.loop !230

43:                                               ; preds = %21, %14
  ret ptr %19
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @alloc_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !29
  %7 = zext i32 %2 to i64
  %8 = shl nuw nsw i64 %7, 7
  %9 = udiv i64 999999976, %8
  %10 = icmp ugt i32 %2, 7812499
  br i1 %10, label %11, label %15

11:                                               ; preds = %4
  %12 = load ptr, ptr %0, align 8, !tbaa !226
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 69, ptr %13, align 8, !tbaa !22
  %14 = load ptr, ptr %12, align 8, !tbaa !12
  tail call void %14(ptr noundef nonnull %0) #25
  br label %15

15:                                               ; preds = %11, %4
  %16 = zext i32 %3 to i64
  %17 = icmp ult i64 %9, %16
  %18 = trunc i64 %9 to i32
  %19 = select i1 %17, i32 %18, i32 %3
  %20 = getelementptr inbounds %struct.my_memory_mgr, ptr %6, i64 0, i32 6
  store i32 %19, ptr %20, align 8, !tbaa !228
  %21 = shl nuw nsw i64 %16, 3
  %22 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef %21) #26
  %23 = icmp eq i32 %3, 0
  br i1 %23, label %46, label %27

24:                                               ; preds = %36, %27
  %25 = phi i32 [ %28, %27 ], [ %40, %36 ]
  %26 = icmp ult i32 %25, %3
  br i1 %26, label %27, label %46, !llvm.loop !231

27:                                               ; preds = %24, %15
  %28 = phi i32 [ %25, %24 ], [ 0, %15 ]
  %29 = phi i32 [ %31, %24 ], [ %19, %15 ]
  %30 = sub i32 %3, %28
  %31 = tail call i32 @llvm.umin.i32(i32 %29, i32 %30)
  %32 = zext i32 %31 to i64
  %33 = mul i64 %8, %32
  %34 = tail call ptr @alloc_large(ptr noundef %0, i32 noundef %1, i64 noundef %33) #26
  %35 = icmp eq i32 %31, 0
  br i1 %35, label %24, label %36

36:                                               ; preds = %36, %27
  %37 = phi ptr [ %43, %36 ], [ %34, %27 ]
  %38 = phi i32 [ %44, %36 ], [ %31, %27 ]
  %39 = phi i32 [ %40, %36 ], [ %28, %27 ]
  %40 = add i32 %39, 1
  %41 = zext i32 %39 to i64
  %42 = getelementptr inbounds ptr, ptr %22, i64 %41
  store ptr %37, ptr %42, align 8, !tbaa !7
  %43 = getelementptr inbounds [64 x i16], ptr %37, i64 %7
  %44 = add i32 %38, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %24, label %36, !llvm.loop !232

46:                                               ; preds = %24, %15
  ret ptr %22
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @request_virt_sarray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !11
  %14 = load ptr, ptr %0, align 8, !tbaa !226
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  tail call void %15(ptr noundef nonnull %0) #25
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef 152) #26
  store ptr null, ptr %17, align 8, !tbaa !233
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !236
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !237
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !238
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !239
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !240
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 3
  %24 = load ptr, ptr %23, align 8, !tbaa !241
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !242
  store ptr %17, ptr %23, align 8, !tbaa !241
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @request_virt_barray(ptr noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4, i32 noundef %5) #2 {
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  %9 = icmp eq i32 %1, 1
  br i1 %9, label %16, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !226
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 12, ptr %12, align 8, !tbaa !22
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 6
  store i32 %1, ptr %13, align 4, !tbaa !11
  %14 = load ptr, ptr %0, align 8, !tbaa !226
  %15 = load ptr, ptr %14, align 8, !tbaa !12
  tail call void %15(ptr noundef nonnull %0) #25
  br label %16

16:                                               ; preds = %10, %6
  %17 = tail call ptr @alloc_small(ptr noundef nonnull %0, i32 noundef %1, i64 noundef 152) #26
  store ptr null, ptr %17, align 8, !tbaa !243
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 1
  store i32 %4, ptr %18, align 8, !tbaa !245
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 2
  store i32 %3, ptr %19, align 4, !tbaa !246
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 3
  store i32 %5, ptr %20, align 8, !tbaa !247
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 8
  store i32 %2, ptr %21, align 4, !tbaa !248
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 10
  store i32 0, ptr %22, align 4, !tbaa !249
  %23 = getelementptr inbounds %struct.my_memory_mgr, ptr %8, i64 0, i32 4
  %24 = load ptr, ptr %23, align 8, !tbaa !250
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %17, i64 0, i32 11
  store ptr %24, ptr %25, align 8, !tbaa !251
  store ptr %17, ptr %23, align 8, !tbaa !250
  ret ptr %17
}

; Function Attrs: nounwind optsize uwtable
define internal void @realize_virt_arrays(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %26, label %7

7:                                                ; preds = %21, %1
  %8 = phi ptr [ %24, %21 ], [ %5, %1 ]
  %9 = phi i64 [ %22, %21 ], [ 0, %1 ]
  %10 = load ptr, ptr %8, align 8, !tbaa !233
  %11 = icmp eq ptr %10, null
  br i1 %11, label %12, label %21

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 3
  %14 = load i32, ptr %13, align 8, !tbaa !238
  %15 = zext i32 %14 to i64
  %16 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 2
  %17 = load i32, ptr %16, align 4, !tbaa !237
  %18 = zext i32 %17 to i64
  %19 = mul nuw nsw i64 %18, %15
  %20 = add i64 %19, %9
  br label %21

21:                                               ; preds = %12, %7
  %22 = phi i64 [ %20, %12 ], [ %9, %7 ]
  %23 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %8, i64 0, i32 11
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = icmp eq ptr %24, null
  br i1 %25, label %26, label %7, !llvm.loop !252

26:                                               ; preds = %21, %1
  %27 = phi i64 [ 0, %1 ], [ %22, %21 ]
  %28 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 4
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %51, label %31

31:                                               ; preds = %46, %26
  %32 = phi ptr [ %49, %46 ], [ %29, %26 ]
  %33 = phi i64 [ %47, %46 ], [ %27, %26 ]
  %34 = load ptr, ptr %32, align 8, !tbaa !243
  %35 = icmp eq ptr %34, null
  br i1 %35, label %36, label %46

36:                                               ; preds = %31
  %37 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %32, i64 0, i32 3
  %38 = load i32, ptr %37, align 8, !tbaa !247
  %39 = zext i32 %38 to i64
  %40 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %32, i64 0, i32 2
  %41 = load i32, ptr %40, align 4, !tbaa !246
  %42 = zext i32 %41 to i64
  %43 = shl nuw nsw i64 %39, 7
  %44 = mul i64 %43, %42
  %45 = add i64 %44, %33
  br label %46

46:                                               ; preds = %36, %31
  %47 = phi i64 [ %45, %36 ], [ %33, %31 ]
  %48 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %32, i64 0, i32 11
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = icmp eq ptr %49, null
  br i1 %50, label %51, label %31, !llvm.loop !253

51:                                               ; preds = %46, %26
  %52 = phi i64 [ %27, %26 ], [ %47, %46 ]
  %53 = icmp slt i64 %52, 1
  br i1 %53, label %140, label %54

54:                                               ; preds = %51
  br i1 %6, label %59, label %55

55:                                               ; preds = %54
  %56 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %64

57:                                               ; preds = %98
  %58 = load ptr, ptr %28, align 8, !tbaa !7
  br label %59

59:                                               ; preds = %57, %54
  %60 = phi ptr [ %58, %57 ], [ %29, %54 ]
  %61 = icmp eq ptr %60, null
  br i1 %61, label %140, label %62

62:                                               ; preds = %59
  %63 = getelementptr inbounds %struct.my_memory_mgr, ptr %3, i64 0, i32 6
  br label %102

64:                                               ; preds = %98, %55
  %65 = phi ptr [ %5, %55 ], [ %100, %98 ]
  %66 = load ptr, ptr %65, align 8, !tbaa !233
  %67 = icmp eq ptr %66, null
  br i1 %67, label %68, label %98

68:                                               ; preds = %64
  %69 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 1
  %70 = load i32, ptr %69, align 8, !tbaa !236
  %71 = zext i32 %70 to i64
  %72 = add nsw i64 %71, -1
  %73 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 3
  %74 = load i32, ptr %73, align 8, !tbaa !238
  %75 = zext i32 %74 to i64
  %76 = sdiv i64 %72, %75
  %77 = icmp slt i64 %76, 1000000000
  br i1 %77, label %78, label %80

78:                                               ; preds = %68
  %79 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 4
  store i32 %70, ptr %79, align 4, !tbaa !254
  br label %88

80:                                               ; preds = %68
  %81 = mul i32 %74, 1000000000
  %82 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 4
  store i32 %81, ptr %82, align 4, !tbaa !254
  %83 = load ptr, ptr %0, align 8, !tbaa !226
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 48, ptr %84, align 8, !tbaa !22
  %85 = load ptr, ptr %83, align 8, !tbaa !12
  tail call void %85(ptr noundef nonnull %0) #25
  %86 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 10
  store i32 1, ptr %86, align 4, !tbaa !240
  %87 = load i32, ptr %82, align 4, !tbaa !254
  br label %88

88:                                               ; preds = %80, %78
  %89 = phi i32 [ %87, %80 ], [ %70, %78 ]
  %90 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 2
  %91 = load i32, ptr %90, align 4, !tbaa !237
  %92 = tail call ptr @alloc_sarray(ptr noundef %0, i32 noundef 1, i32 noundef %91, i32 noundef %89) #26
  store ptr %92, ptr %65, align 8, !tbaa !233
  %93 = load i32, ptr %56, align 8, !tbaa !228
  %94 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 5
  store i32 %93, ptr %94, align 8, !tbaa !255
  %95 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 6
  store i32 0, ptr %95, align 4, !tbaa !256
  %96 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 7
  store i32 0, ptr %96, align 8, !tbaa !257
  %97 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 9
  store i32 0, ptr %97, align 8, !tbaa !258
  br label %98

98:                                               ; preds = %88, %64
  %99 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %65, i64 0, i32 11
  %100 = load ptr, ptr %99, align 8, !tbaa !7
  %101 = icmp eq ptr %100, null
  br i1 %101, label %57, label %64, !llvm.loop !259

102:                                              ; preds = %136, %62
  %103 = phi ptr [ %60, %62 ], [ %138, %136 ]
  %104 = load ptr, ptr %103, align 8, !tbaa !243
  %105 = icmp eq ptr %104, null
  br i1 %105, label %106, label %136

106:                                              ; preds = %102
  %107 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 1
  %108 = load i32, ptr %107, align 8, !tbaa !245
  %109 = zext i32 %108 to i64
  %110 = add nsw i64 %109, -1
  %111 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 3
  %112 = load i32, ptr %111, align 8, !tbaa !247
  %113 = zext i32 %112 to i64
  %114 = sdiv i64 %110, %113
  %115 = icmp slt i64 %114, 1000000000
  br i1 %115, label %116, label %118

116:                                              ; preds = %106
  %117 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 4
  store i32 %108, ptr %117, align 4, !tbaa !260
  br label %126

118:                                              ; preds = %106
  %119 = mul i32 %112, 1000000000
  %120 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 4
  store i32 %119, ptr %120, align 4, !tbaa !260
  %121 = load ptr, ptr %0, align 8, !tbaa !226
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 48, ptr %122, align 8, !tbaa !22
  %123 = load ptr, ptr %121, align 8, !tbaa !12
  tail call void %123(ptr noundef nonnull %0) #25
  %124 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 10
  store i32 1, ptr %124, align 4, !tbaa !249
  %125 = load i32, ptr %120, align 4, !tbaa !260
  br label %126

126:                                              ; preds = %118, %116
  %127 = phi i32 [ %125, %118 ], [ %108, %116 ]
  %128 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 2
  %129 = load i32, ptr %128, align 4, !tbaa !246
  %130 = tail call ptr @alloc_barray(ptr noundef %0, i32 noundef 1, i32 noundef %129, i32 noundef %127) #26
  store ptr %130, ptr %103, align 8, !tbaa !243
  %131 = load i32, ptr %63, align 8, !tbaa !228
  %132 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 5
  store i32 %131, ptr %132, align 8, !tbaa !261
  %133 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 6
  store i32 0, ptr %133, align 4, !tbaa !262
  %134 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 7
  store i32 0, ptr %134, align 8, !tbaa !263
  %135 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 9
  store i32 0, ptr %135, align 8, !tbaa !264
  br label %136

136:                                              ; preds = %126, %102
  %137 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %103, i64 0, i32 11
  %138 = load ptr, ptr %137, align 8, !tbaa !7
  %139 = icmp eq ptr %138, null
  br i1 %139, label %140, label %102, !llvm.loop !265

140:                                              ; preds = %136, %59, %51
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @access_virt_sarray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !236
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !238
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !233
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !22
  %20 = load ptr, ptr %18, align 8, !tbaa !12
  tail call void %20(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !256
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !254
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !240
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !226
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !22
  %37 = load ptr, ptr %35, align 8, !tbaa !12
  tail call void %37(ptr noundef nonnull %0) #25
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !258
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @do_sarray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #26
  store i32 0, ptr %39, align 8, !tbaa !258
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, ptr %22, align 4, !tbaa !256
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = zext i32 %6 to i64
  %48 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !254
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 0)
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i32 [ %53, %46 ], [ %2, %43 ]
  store i32 %55, ptr %22, align 4, !tbaa !256
  tail call fastcc void @do_sarray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #26
  br label %56

56:                                               ; preds = %54, %25
  %57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !257
  %59 = icmp ult i32 %58, %6
  br i1 %59, label %60, label %105

60:                                               ; preds = %56
  %61 = icmp ult i32 %58, %2
  %62 = icmp eq i32 %4, 0
  br i1 %61, label %63, label %68

63:                                               ; preds = %60
  br i1 %62, label %78, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !226
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 20, ptr %66, align 8, !tbaa !22
  %67 = load ptr, ptr %65, align 8, !tbaa !12
  tail call void %67(ptr noundef nonnull %0) #25
  br label %73

68:                                               ; preds = %60
  br i1 %62, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !239
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %101, label %82

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %2, %64 ], [ %58, %68 ]
  store i32 %6, ptr %57, align 8, !tbaa !257
  %75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !239
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %107, label %82

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !239
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %101, label %82

82:                                               ; preds = %78, %73, %69
  %83 = phi i32 [ %2, %78 ], [ %58, %69 ], [ %74, %73 ]
  %84 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !237
  %86 = zext i32 %85 to i64
  %87 = load i32, ptr %22, align 4, !tbaa !256
  %88 = sub i32 %83, %87
  %89 = sub i32 %6, %87
  %90 = icmp ult i32 %88, %89
  br i1 %90, label %91, label %105

91:                                               ; preds = %82
  %92 = zext i32 %88 to i64
  br label %93

93:                                               ; preds = %93, %91
  %94 = phi i64 [ %92, %91 ], [ %98, %93 ]
  %95 = load ptr, ptr %1, align 8, !tbaa !233
  %96 = getelementptr inbounds ptr, ptr %95, i64 %94
  %97 = load ptr, ptr %96, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %97, i8 0, i64 %86, i1 false)
  %98 = add nuw nsw i64 %94, 1
  %99 = trunc i64 %98 to i32
  %100 = icmp eq i32 %89, %99
  br i1 %100, label %105, label %93, !llvm.loop !266

101:                                              ; preds = %78, %69
  %102 = load ptr, ptr %0, align 8, !tbaa !226
  %103 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %102, i64 0, i32 5
  store i32 20, ptr %103, align 8, !tbaa !22
  %104 = load ptr, ptr %102, align 8, !tbaa !12
  tail call void %104(ptr noundef nonnull %0) #25
  br label %109

105:                                              ; preds = %93, %82, %56
  %106 = icmp eq i32 %4, 0
  br i1 %106, label %109, label %107

107:                                              ; preds = %105, %73
  %108 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %108, align 8, !tbaa !258
  br label %109

109:                                              ; preds = %107, %105, %101
  %110 = load ptr, ptr %1, align 8, !tbaa !233
  %111 = load i32, ptr %22, align 4, !tbaa !256
  %112 = sub i32 %2, %111
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds ptr, ptr %110, i64 %113
  ret ptr %114
}

; Function Attrs: nounwind optsize uwtable
define internal ptr @access_virt_barray(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, i32 noundef %4) #2 {
  %6 = add i32 %3, %2
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %8 = load i32, ptr %7, align 8, !tbaa !245
  %9 = icmp ugt i32 %6, %8
  br i1 %9, label %17, label %10

10:                                               ; preds = %5
  %11 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !247
  %13 = icmp ult i32 %12, %3
  br i1 %13, label %17, label %14

14:                                               ; preds = %10
  %15 = load ptr, ptr %1, align 8, !tbaa !243
  %16 = icmp eq ptr %15, null
  br i1 %16, label %17, label %21

17:                                               ; preds = %14, %10, %5
  %18 = load ptr, ptr %0, align 8, !tbaa !226
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 20, ptr %19, align 8, !tbaa !22
  %20 = load ptr, ptr %18, align 8, !tbaa !12
  tail call void %20(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %17, %14
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %23 = load i32, ptr %22, align 4, !tbaa !262
  %24 = icmp ugt i32 %23, %2
  br i1 %24, label %30, label %25

25:                                               ; preds = %21
  %26 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %27 = load i32, ptr %26, align 4, !tbaa !260
  %28 = add i32 %27, %23
  %29 = icmp ugt i32 %6, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %25, %21
  %31 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 10
  %32 = load i32, ptr %31, align 4, !tbaa !249
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %30
  %35 = load ptr, ptr %0, align 8, !tbaa !226
  %36 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %35, i64 0, i32 5
  store i32 68, ptr %36, align 8, !tbaa !22
  %37 = load ptr, ptr %35, align 8, !tbaa !12
  tail call void %37(ptr noundef nonnull %0) #25
  br label %38

38:                                               ; preds = %34, %30
  %39 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  %40 = load i32, ptr %39, align 8, !tbaa !264
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %43, label %42

42:                                               ; preds = %38
  tail call fastcc void @do_barray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 1) #26
  store i32 0, ptr %39, align 8, !tbaa !264
  br label %43

43:                                               ; preds = %42, %38
  %44 = load i32, ptr %22, align 4, !tbaa !262
  %45 = icmp ult i32 %44, %2
  br i1 %45, label %54, label %46

46:                                               ; preds = %43
  %47 = zext i32 %6 to i64
  %48 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %49 = load i32, ptr %48, align 4, !tbaa !260
  %50 = zext i32 %49 to i64
  %51 = sub nsw i64 %47, %50
  %52 = tail call i64 @llvm.smax.i64(i64 %51, i64 0)
  %53 = trunc i64 %52 to i32
  br label %54

54:                                               ; preds = %46, %43
  %55 = phi i32 [ %53, %46 ], [ %2, %43 ]
  store i32 %55, ptr %22, align 4, !tbaa !262
  tail call fastcc void @do_barray_io(ptr noundef %0, ptr noundef nonnull %1, i32 noundef 0) #26
  br label %56

56:                                               ; preds = %54, %25
  %57 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %58 = load i32, ptr %57, align 8, !tbaa !263
  %59 = icmp ult i32 %58, %6
  br i1 %59, label %60, label %106

60:                                               ; preds = %56
  %61 = icmp ult i32 %58, %2
  %62 = icmp eq i32 %4, 0
  br i1 %61, label %63, label %68

63:                                               ; preds = %60
  br i1 %62, label %78, label %64

64:                                               ; preds = %63
  %65 = load ptr, ptr %0, align 8, !tbaa !226
  %66 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %65, i64 0, i32 5
  store i32 20, ptr %66, align 8, !tbaa !22
  %67 = load ptr, ptr %65, align 8, !tbaa !12
  tail call void %67(ptr noundef nonnull %0) #25
  br label %73

68:                                               ; preds = %60
  br i1 %62, label %69, label %73

69:                                               ; preds = %68
  %70 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %71 = load i32, ptr %70, align 4, !tbaa !248
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %102, label %82

73:                                               ; preds = %68, %64
  %74 = phi i32 [ %2, %64 ], [ %58, %68 ]
  store i32 %6, ptr %57, align 8, !tbaa !263
  %75 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %76 = load i32, ptr %75, align 4, !tbaa !248
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %108, label %82

78:                                               ; preds = %63
  %79 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 8
  %80 = load i32, ptr %79, align 4, !tbaa !248
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %102, label %82

82:                                               ; preds = %78, %73, %69
  %83 = phi i32 [ %2, %78 ], [ %58, %69 ], [ %74, %73 ]
  %84 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %85 = load i32, ptr %84, align 4, !tbaa !246
  %86 = zext i32 %85 to i64
  %87 = shl nuw nsw i64 %86, 7
  %88 = load i32, ptr %22, align 4, !tbaa !262
  %89 = sub i32 %83, %88
  %90 = sub i32 %6, %88
  %91 = icmp ult i32 %89, %90
  br i1 %91, label %92, label %106

92:                                               ; preds = %82
  %93 = zext i32 %89 to i64
  br label %94

94:                                               ; preds = %94, %92
  %95 = phi i64 [ %93, %92 ], [ %99, %94 ]
  %96 = load ptr, ptr %1, align 8, !tbaa !243
  %97 = getelementptr inbounds ptr, ptr %96, i64 %95
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %98, i8 0, i64 %87, i1 false)
  %99 = add nuw nsw i64 %95, 1
  %100 = trunc i64 %99 to i32
  %101 = icmp eq i32 %90, %100
  br i1 %101, label %106, label %94, !llvm.loop !267

102:                                              ; preds = %78, %69
  %103 = load ptr, ptr %0, align 8, !tbaa !226
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 20, ptr %104, align 8, !tbaa !22
  %105 = load ptr, ptr %103, align 8, !tbaa !12
  tail call void %105(ptr noundef nonnull %0) #25
  br label %110

106:                                              ; preds = %94, %82, %56
  %107 = icmp eq i32 %4, 0
  br i1 %107, label %110, label %108

108:                                              ; preds = %106, %73
  %109 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 9
  store i32 1, ptr %109, align 8, !tbaa !264
  br label %110

110:                                              ; preds = %108, %106, %102
  %111 = load ptr, ptr %1, align 8, !tbaa !243
  %112 = load i32, ptr %22, align 4, !tbaa !262
  %113 = sub i32 %2, %112
  %114 = zext i32 %113 to i64
  %115 = getelementptr inbounds ptr, ptr %111, i64 %114
  ret ptr %115
}

; Function Attrs: nounwind optsize uwtable
define internal void @free_pool(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !29
  %5 = icmp ugt i32 %1, 1
  br i1 %5, label %6, label %12

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !226
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 12, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %1, ptr %9, align 4, !tbaa !11
  %10 = load ptr, ptr %0, align 8, !tbaa !226
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  tail call void %11(ptr noundef nonnull %0) #25
  br label %49

12:                                               ; preds = %2
  %13 = icmp eq i32 %1, 1
  br i1 %13, label %14, label %49

14:                                               ; preds = %12
  %15 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 3
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = icmp eq ptr %16, null
  br i1 %17, label %31, label %18

18:                                               ; preds = %27, %14
  %19 = phi ptr [ %29, %27 ], [ %16, %14 ]
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 10
  %21 = load i32, ptr %20, align 4, !tbaa !240
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %27, label %23

23:                                               ; preds = %18
  store i32 0, ptr %20, align 4, !tbaa !240
  %24 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12
  %25 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 12, i32 2
  %26 = load ptr, ptr %25, align 8, !tbaa !268
  tail call void %26(ptr noundef %0, ptr noundef nonnull %24) #25
  br label %27

27:                                               ; preds = %23, %18
  %28 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %19, i64 0, i32 11
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = icmp eq ptr %29, null
  br i1 %30, label %31, label %18, !llvm.loop !269

31:                                               ; preds = %27, %14
  store ptr null, ptr %15, align 8, !tbaa !241
  %32 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 4
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = icmp eq ptr %33, null
  br i1 %34, label %48, label %35

35:                                               ; preds = %44, %31
  %36 = phi ptr [ %46, %44 ], [ %33, %31 ]
  %37 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 10
  %38 = load i32, ptr %37, align 4, !tbaa !249
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %35
  store i32 0, ptr %37, align 4, !tbaa !249
  %41 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 12
  %42 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 12, i32 2
  %43 = load ptr, ptr %42, align 8, !tbaa !270
  tail call void %43(ptr noundef %0, ptr noundef nonnull %41) #25
  br label %44

44:                                               ; preds = %40, %35
  %45 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %36, i64 0, i32 11
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = icmp eq ptr %46, null
  br i1 %47, label %48, label %35, !llvm.loop !271

48:                                               ; preds = %44, %31
  store ptr null, ptr %32, align 8, !tbaa !250
  br label %49

49:                                               ; preds = %48, %12, %6
  %50 = sext i32 %1 to i64
  %51 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 2, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  store ptr null, ptr %51, align 8, !tbaa !7
  %53 = icmp eq ptr %52, null
  br i1 %53, label %68, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi ptr [ %52, %54 ], [ %58, %56 ]
  %58 = load ptr, ptr %57, align 8, !tbaa !11
  %59 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 1
  %60 = load i64, ptr %59, align 8, !tbaa !11
  %61 = getelementptr inbounds %struct.anon.0, ptr %57, i64 0, i32 2
  %62 = load i64, ptr %61, align 8, !tbaa !11
  tail call void @free(ptr noundef nonnull %57) #25
  %63 = load i64, ptr %55, align 8, !tbaa !45
  %64 = add i64 %60, %62
  %65 = sub i64 %63, %64
  %66 = add i64 %65, -24
  store i64 %66, ptr %55, align 8, !tbaa !45
  %67 = icmp eq ptr %58, null
  br i1 %67, label %68, label %56, !llvm.loop !272

68:                                               ; preds = %56, %49
  %69 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 1, i64 %50
  %70 = load ptr, ptr %69, align 8, !tbaa !7
  store ptr null, ptr %69, align 8, !tbaa !7
  %71 = icmp eq ptr %70, null
  br i1 %71, label %86, label %72

72:                                               ; preds = %68
  %73 = getelementptr inbounds %struct.my_memory_mgr, ptr %4, i64 0, i32 5
  br label %74

74:                                               ; preds = %74, %72
  %75 = phi ptr [ %70, %72 ], [ %76, %74 ]
  %76 = load ptr, ptr %75, align 8, !tbaa !11
  %77 = getelementptr inbounds %struct.anon.0, ptr %75, i64 0, i32 1
  %78 = load i64, ptr %77, align 8, !tbaa !11
  %79 = getelementptr inbounds %struct.anon.0, ptr %75, i64 0, i32 2
  %80 = load i64, ptr %79, align 8, !tbaa !11
  tail call void @free(ptr noundef nonnull %75) #25
  %81 = load i64, ptr %73, align 8, !tbaa !45
  %82 = add i64 %78, %80
  %83 = sub i64 %81, %82
  %84 = add i64 %83, -24
  store i64 %84, ptr %73, align 8, !tbaa !45
  %85 = icmp eq ptr %76, null
  br i1 %85, label %86, label %74, !llvm.loop !273

86:                                               ; preds = %74, %68
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @self_destruct(ptr noundef %0) #2 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 1, %1 ], [ %4, %2 ]
  tail call void @free_pool(ptr noundef %0, i32 noundef %3) #26
  %4 = add nsw i32 %3, -1
  %5 = icmp eq i32 %3, 0
  br i1 %5, label %6, label %2, !llvm.loop !274

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %8 = load ptr, ptr %7, align 8, !tbaa !29
  tail call void @free(ptr noundef %8) #25
  store ptr null, ptr %7, align 8, !tbaa !29
  ret void
}

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef ptr @getenv(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind optsize
declare noundef i32 @__isoc99_sscanf(ptr nocapture noundef readonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) unnamed_addr #2 {
  %6 = sext i32 %1 to i64
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %6
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !50
  %10 = icmp eq i32 %9, 100
  br i1 %10, label %17, label %11

11:                                               ; preds = %5
  %12 = load ptr, ptr %0, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 18, ptr %13, align 8, !tbaa !22
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 6
  store i32 %9, ptr %14, align 4, !tbaa !11
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %16(ptr noundef nonnull %0) #25
  br label %17

17:                                               ; preds = %11, %5
  %18 = load ptr, ptr %7, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %22 = load ptr, ptr %21, align 8, !tbaa !29
  %23 = load ptr, ptr %22, align 8, !tbaa !56
  %24 = tail call ptr %23(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 132) #25
  %25 = getelementptr inbounds %struct.JQUANT_TBL, ptr %24, i64 0, i32 1
  store i32 0, ptr %25, align 4, !tbaa !84
  store ptr %24, ptr %7, align 8, !tbaa !7
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi ptr [ %24, %20 ], [ %18, %17 ]
  %28 = sext i32 %3 to i64
  %29 = icmp ne i32 %4, 0
  br label %30

30:                                               ; preds = %30, %26
  %31 = phi i64 [ 0, %26 ], [ %45, %30 ]
  %32 = getelementptr inbounds i32, ptr %2, i64 %31
  %33 = load i32, ptr %32, align 4, !tbaa !121
  %34 = zext i32 %33 to i64
  %35 = mul nsw i64 %34, %28
  %36 = add nsw i64 %35, 50
  %37 = sdiv i64 %36, 100
  %38 = tail call i64 @llvm.smax.i64(i64 %37, i64 1)
  %39 = tail call i64 @llvm.umin.i64(i64 %38, i64 32767)
  %40 = icmp ugt i64 %39, 255
  %41 = select i1 %29, i1 %40, i1 false
  %42 = trunc i64 %39 to i16
  %43 = select i1 %41, i16 255, i16 %42
  %44 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %31
  store i16 %43, ptr %44, align 2, !tbaa !275
  %45 = add nuw nsw i64 %31, 1
  %46 = icmp eq i64 %45, 64
  br i1 %46, label %47, label %30, !llvm.loop !276

47:                                               ; preds = %30
  %48 = getelementptr inbounds %struct.JQUANT_TBL, ptr %27, i64 0, i32 1
  store i32 0, ptr %48, align 4, !tbaa !84
  ret void
}

; Function Attrs: nocallback nofree nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias nocapture writeonly, ptr noalias nocapture readonly, i64, i1 immarg) #9

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_default_colorspace(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !54
  switch i32 %3, label %10 [
    i32 1, label %4
    i32 2, label %5
    i32 3, label %6
    i32 4, label %7
    i32 5, label %8
    i32 0, label %9
  ]

4:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 1) #26
  br label %14

5:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 3) #26
  br label %14

6:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 3) #26
  br label %14

7:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 4) #26
  br label %14

8:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 5) #26
  br label %14

9:                                                ; preds = %1
  tail call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 0) #26
  br label %14

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 7, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %13(ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %10, %9, %8, %7, %6, %5, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @parse_switches(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) unnamed_addr #2 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca [100 x %struct.jpeg_scan_info], align 16
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  %11 = alloca i8, align 1
  %12 = alloca i32, align 4
  %13 = alloca i8, align 1
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca [64 x i32], align 16
  %17 = alloca i32, align 4
  %18 = alloca i64, align 8
  %19 = alloca i8, align 1
  %20 = alloca i64, align 8
  %21 = alloca i8, align 1
  %22 = alloca i32, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %17) #23
  store i32 75, ptr %17, align 4, !tbaa !121
  store i1 false, ptr @is_targa, align 4
  store ptr null, ptr @outfilename, align 8, !tbaa !7
  %23 = load ptr, ptr %0, align 8, !tbaa !25
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %23, i64 0, i32 7
  store i32 0, ptr %24, align 4, !tbaa !20
  %25 = icmp sgt i32 %1, 1
  br i1 %25, label %26, label %283

26:                                               ; preds = %4
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  br label %33

33:                                               ; preds = %272, %26
  %34 = phi ptr [ null, %26 ], [ %280, %272 ]
  %35 = phi ptr [ null, %26 ], [ %279, %272 ]
  %36 = phi ptr [ null, %26 ], [ %278, %272 ]
  %37 = phi ptr [ null, %26 ], [ %277, %272 ]
  %38 = phi i32 [ 0, %26 ], [ %276, %272 ]
  %39 = phi i32 [ 0, %26 ], [ %275, %272 ]
  %40 = phi i32 [ 100, %26 ], [ %274, %272 ]
  %41 = phi i32 [ 1, %26 ], [ %281, %272 ]
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds ptr, ptr %2, i64 %42
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = icmp eq i8 %45, 45
  br i1 %46, label %50, label %47

47:                                               ; preds = %33
  %48 = icmp slt i32 %41, 1
  br i1 %48, label %49, label %283

49:                                               ; preds = %47
  store ptr null, ptr @outfilename, align 8, !tbaa !7
  br label %272

50:                                               ; preds = %33
  %51 = getelementptr inbounds i8, ptr %44, i64 1
  %52 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.47.169, i32 noundef 1) #25, !range !277
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %58, label %54

54:                                               ; preds = %50
  %55 = load ptr, ptr @stderr, align 8, !tbaa !7
  %56 = load ptr, ptr @progname, align 8, !tbaa !7
  %57 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %55, ptr noundef nonnull @.str.48.170, ptr noundef %56) #27
  call void @exit(i32 noundef 1) #28
  unreachable

58:                                               ; preds = %50
  %59 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.49.171, i32 noundef 1) #25, !range !277
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %272

61:                                               ; preds = %58
  %62 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.50.172, i32 noundef 2) #25, !range !277
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %84, label %64

64:                                               ; preds = %61
  %65 = add nsw i32 %41, 1
  %66 = icmp slt i32 %65, %1
  br i1 %66, label %68, label %67

67:                                               ; preds = %64
  call fastcc void @usage() #26
  unreachable

68:                                               ; preds = %64
  %69 = sext i32 %65 to i64
  %70 = getelementptr inbounds ptr, ptr %2, i64 %69
  %71 = load ptr, ptr %70, align 8, !tbaa !7
  %72 = call fastcc i32 @keymatch(ptr noundef %71, ptr noundef nonnull @.str.51.173, i32 noundef 1) #25, !range !277
  %73 = icmp eq i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %68
  store i32 0, ptr %27, align 4, !tbaa !166
  br label %272

75:                                               ; preds = %68
  %76 = call fastcc i32 @keymatch(ptr noundef %71, ptr noundef nonnull @.str.52.174, i32 noundef 2) #25, !range !277
  %77 = icmp eq i32 %76, 0
  br i1 %77, label %79, label %78

78:                                               ; preds = %75
  store i32 1, ptr %27, align 4, !tbaa !166
  br label %272

79:                                               ; preds = %75
  %80 = call fastcc i32 @keymatch(ptr noundef %71, ptr noundef nonnull @.str.53.175, i32 noundef 2) #25, !range !277
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %83, label %82

82:                                               ; preds = %79
  store i32 2, ptr %27, align 4, !tbaa !166
  br label %272

83:                                               ; preds = %79
  call fastcc void @usage() #26
  unreachable

84:                                               ; preds = %61
  %85 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.54.176, i32 noundef 1) #25, !range !277
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %90

87:                                               ; preds = %84
  %88 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.55.177, i32 noundef 1) #25, !range !277
  %89 = icmp eq i32 %88, 0
  br i1 %89, label %100, label %90

90:                                               ; preds = %87, %84
  %91 = load i1, ptr @parse_switches.printed_version, align 4
  br i1 %91, label %95, label %92

92:                                               ; preds = %90
  %93 = load ptr, ptr @stderr, align 8, !tbaa !7
  %94 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %93, ptr noundef nonnull @.str.56.178, ptr noundef nonnull @.str.57.179, ptr noundef nonnull @.str.58.180) #27
  store i1 true, ptr @parse_switches.printed_version, align 4
  br label %95

95:                                               ; preds = %92, %90
  %96 = load ptr, ptr %0, align 8, !tbaa !25
  %97 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %96, i64 0, i32 7
  %98 = load i32, ptr %97, align 4, !tbaa !20
  %99 = add nsw i32 %98, 1
  store i32 %99, ptr %97, align 4, !tbaa !20
  br label %272

100:                                              ; preds = %87
  %101 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.59.181, i32 noundef 2) #25, !range !277
  %102 = icmp eq i32 %101, 0
  br i1 %102, label %103, label %106

103:                                              ; preds = %100
  %104 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.60.182, i32 noundef 2) #25, !range !277
  %105 = icmp eq i32 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %103, %100
  call fastcc void @jpeg_set_colorspace(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %272

107:                                              ; preds = %103
  %108 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.61.183, i32 noundef 3) #25, !range !277
  %109 = icmp eq i32 %108, 0
  br i1 %109, label %131, label %110

110:                                              ; preds = %107
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %18) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %19) #23
  store i8 120, ptr %19, align 1, !tbaa !11
  %111 = add nsw i32 %41, 1
  %112 = icmp slt i32 %111, %1
  br i1 %112, label %114, label %113

113:                                              ; preds = %110
  call fastcc void @usage() #26
  unreachable

114:                                              ; preds = %110
  %115 = sext i32 %111 to i64
  %116 = getelementptr inbounds ptr, ptr %2, i64 %115
  %117 = load ptr, ptr %116, align 8, !tbaa !7
  %118 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %117, ptr noundef nonnull @.str.62.184, ptr noundef nonnull %18, ptr noundef nonnull %19) #25
  %119 = icmp slt i32 %118, 1
  br i1 %119, label %120, label %121

120:                                              ; preds = %114
  call fastcc void @usage() #26
  unreachable

121:                                              ; preds = %114
  %122 = load i8, ptr %19, align 1
  %123 = and i8 %122, -33
  %124 = icmp eq i8 %123, 77
  %125 = load i64, ptr %18, align 8, !tbaa !31
  %126 = mul nsw i64 %125, 1000
  %127 = select i1 %124, i64 %126, i64 %125
  %128 = mul nsw i64 %127, 1000
  %129 = load ptr, ptr %28, align 8, !tbaa !55
  %130 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %129, i64 0, i32 11
  store i64 %128, ptr %130, align 8, !tbaa !278
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %19) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %18) #23
  br label %272

131:                                              ; preds = %107
  %132 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.63.185, i32 noundef 1) #25, !range !277
  %133 = icmp eq i32 %132, 0
  br i1 %133, label %134, label %137

134:                                              ; preds = %131
  %135 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.64.186, i32 noundef 1) #25, !range !277
  %136 = icmp eq i32 %135, 0
  br i1 %136, label %138, label %137

137:                                              ; preds = %134, %131
  store i32 1, ptr %29, align 8, !tbaa !133
  br label %272

138:                                              ; preds = %134
  %139 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.65.187, i32 noundef 4) #25, !range !277
  %140 = icmp eq i32 %139, 0
  br i1 %140, label %149, label %141

141:                                              ; preds = %138
  %142 = add nsw i32 %41, 1
  %143 = icmp slt i32 %142, %1
  br i1 %143, label %145, label %144

144:                                              ; preds = %141
  call fastcc void @usage() #26
  unreachable

145:                                              ; preds = %141
  %146 = sext i32 %142 to i64
  %147 = getelementptr inbounds ptr, ptr %2, i64 %146
  %148 = load ptr, ptr %147, align 8, !tbaa !7
  store ptr %148, ptr @outfilename, align 8, !tbaa !7
  br label %272

149:                                              ; preds = %138
  %150 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.66.188, i32 noundef 1) #25, !range !277
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %272

152:                                              ; preds = %149
  %153 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.67.189, i32 noundef 1) #25, !range !277
  %154 = icmp eq i32 %153, 0
  br i1 %154, label %178, label %155

155:                                              ; preds = %152
  %156 = add nsw i32 %41, 1
  %157 = icmp slt i32 %156, %1
  br i1 %157, label %159, label %158

158:                                              ; preds = %155
  call fastcc void @usage() #26
  unreachable

159:                                              ; preds = %155
  %160 = sext i32 %156 to i64
  %161 = getelementptr inbounds ptr, ptr %2, i64 %160
  %162 = load ptr, ptr %161, align 8, !tbaa !7
  %163 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %162, ptr noundef nonnull @.str.68.190, ptr noundef nonnull %17) #25
  %164 = icmp eq i32 %163, 1
  br i1 %164, label %166, label %165

165:                                              ; preds = %159
  call fastcc void @usage() #26
  unreachable

166:                                              ; preds = %159
  %167 = load i32, ptr %17, align 4, !tbaa !121
  %168 = call i32 @llvm.smax.i32(i32 %167, i32 1)
  %169 = call i32 @llvm.umin.i32(i32 %168, i32 100)
  %170 = icmp ult i32 %169, 50
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = trunc i32 %169 to i16
  %173 = udiv i16 5000, %172
  %174 = zext i16 %173 to i32
  br label %272

175:                                              ; preds = %166
  %176 = shl nuw nsw i32 %169, 1
  %177 = sub nuw nsw i32 200, %176
  br label %272

178:                                              ; preds = %152
  %179 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.69.191, i32 noundef 2) #25, !range !277
  %180 = icmp eq i32 %179, 0
  br i1 %180, label %189, label %181

181:                                              ; preds = %178
  %182 = add nsw i32 %41, 1
  %183 = icmp slt i32 %182, %1
  br i1 %183, label %185, label %184

184:                                              ; preds = %181
  call fastcc void @usage() #26
  unreachable

185:                                              ; preds = %181
  %186 = sext i32 %182 to i64
  %187 = getelementptr inbounds ptr, ptr %2, i64 %186
  %188 = load ptr, ptr %187, align 8, !tbaa !7
  br label %272

189:                                              ; preds = %178
  %190 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.70.192, i32 noundef 2) #25, !range !277
  %191 = icmp eq i32 %190, 0
  br i1 %191, label %200, label %192

192:                                              ; preds = %189
  %193 = add nsw i32 %41, 1
  %194 = icmp slt i32 %193, %1
  br i1 %194, label %196, label %195

195:                                              ; preds = %192
  call fastcc void @usage() #26
  unreachable

196:                                              ; preds = %192
  %197 = sext i32 %193 to i64
  %198 = getelementptr inbounds ptr, ptr %2, i64 %197
  %199 = load ptr, ptr %198, align 8, !tbaa !7
  br label %272

200:                                              ; preds = %189
  %201 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.71.193, i32 noundef 1) #25, !range !277
  %202 = icmp eq i32 %201, 0
  br i1 %202, label %226, label %203

203:                                              ; preds = %200
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %20) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %21) #23
  store i8 120, ptr %21, align 1, !tbaa !11
  %204 = add nsw i32 %41, 1
  %205 = icmp slt i32 %204, %1
  br i1 %205, label %207, label %206

206:                                              ; preds = %203
  call fastcc void @usage() #26
  unreachable

207:                                              ; preds = %203
  %208 = sext i32 %204 to i64
  %209 = getelementptr inbounds ptr, ptr %2, i64 %208
  %210 = load ptr, ptr %209, align 8, !tbaa !7
  %211 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %210, ptr noundef nonnull @.str.62.184, ptr noundef nonnull %20, ptr noundef nonnull %21) #25
  %212 = icmp slt i32 %211, 1
  br i1 %212, label %213, label %214

213:                                              ; preds = %207
  call fastcc void @usage() #26
  unreachable

214:                                              ; preds = %207
  %215 = load i64, ptr %20, align 8
  %216 = icmp ugt i64 %215, 65535
  br i1 %216, label %217, label %218

217:                                              ; preds = %214
  call fastcc void @usage() #26
  unreachable

218:                                              ; preds = %214
  %219 = load i8, ptr %21, align 1
  %220 = and i8 %219, -33
  %221 = icmp eq i8 %220, 66
  %222 = trunc i64 %215 to i32
  br i1 %221, label %223, label %224

223:                                              ; preds = %218
  store i32 %222, ptr %31, align 8, !tbaa !279
  br label %224

224:                                              ; preds = %223, %218
  %225 = phi i32 [ 0, %223 ], [ %222, %218 ]
  store i32 %225, ptr %30, align 4, !tbaa !280
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %21) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %20) #23
  br label %272

226:                                              ; preds = %200
  %227 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.72.194, i32 noundef 2) #25, !range !277
  %228 = icmp eq i32 %227, 0
  br i1 %228, label %237, label %229

229:                                              ; preds = %226
  %230 = add nsw i32 %41, 1
  %231 = icmp slt i32 %230, %1
  br i1 %231, label %233, label %232

232:                                              ; preds = %229
  call fastcc void @usage() #26
  unreachable

233:                                              ; preds = %229
  %234 = sext i32 %230 to i64
  %235 = getelementptr inbounds ptr, ptr %2, i64 %234
  %236 = load ptr, ptr %235, align 8, !tbaa !7
  br label %272

237:                                              ; preds = %226
  %238 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.73.195, i32 noundef 2) #25, !range !277
  %239 = icmp eq i32 %238, 0
  br i1 %239, label %248, label %240

240:                                              ; preds = %237
  %241 = add nsw i32 %41, 1
  %242 = icmp slt i32 %241, %1
  br i1 %242, label %244, label %243

243:                                              ; preds = %240
  call fastcc void @usage() #26
  unreachable

244:                                              ; preds = %240
  %245 = sext i32 %241 to i64
  %246 = getelementptr inbounds ptr, ptr %2, i64 %245
  %247 = load ptr, ptr %246, align 8, !tbaa !7
  br label %272

248:                                              ; preds = %237
  %249 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.74.196, i32 noundef 2) #25, !range !277
  %250 = icmp eq i32 %249, 0
  br i1 %250, label %267, label %251

251:                                              ; preds = %248
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %22) #23
  %252 = add nsw i32 %41, 1
  %253 = icmp slt i32 %252, %1
  br i1 %253, label %255, label %254

254:                                              ; preds = %251
  call fastcc void @usage() #26
  unreachable

255:                                              ; preds = %251
  %256 = sext i32 %252 to i64
  %257 = getelementptr inbounds ptr, ptr %2, i64 %256
  %258 = load ptr, ptr %257, align 8, !tbaa !7
  %259 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef %258, ptr noundef nonnull @.str.68.190, ptr noundef nonnull %22) #25
  %260 = icmp eq i32 %259, 1
  br i1 %260, label %262, label %261

261:                                              ; preds = %255
  call fastcc void @usage() #26
  unreachable

262:                                              ; preds = %255
  %263 = load i32, ptr %22, align 4
  %264 = icmp ugt i32 %263, 100
  br i1 %264, label %265, label %266

265:                                              ; preds = %262
  call fastcc void @usage() #26
  unreachable

266:                                              ; preds = %262
  store i32 %263, ptr %32, align 8, !tbaa !150
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %22) #23
  br label %272

267:                                              ; preds = %248
  %268 = call fastcc i32 @keymatch(ptr noundef nonnull %51, ptr noundef nonnull @.str.75.197, i32 noundef 1) #25, !range !277
  %269 = icmp eq i32 %268, 0
  br i1 %269, label %271, label %270

270:                                              ; preds = %267
  store i1 true, ptr @is_targa, align 4
  br label %272

271:                                              ; preds = %267
  call fastcc void @usage() #26
  unreachable

272:                                              ; preds = %270, %266, %244, %233, %224, %196, %185, %175, %171, %149, %145, %137, %121, %106, %95, %82, %78, %74, %58, %49
  %273 = phi i32 [ %41, %49 ], [ %65, %74 ], [ %65, %78 ], [ %65, %82 ], [ %41, %95 ], [ %41, %106 ], [ %111, %121 ], [ %41, %137 ], [ %142, %145 ], [ %182, %185 ], [ %193, %196 ], [ %204, %224 ], [ %230, %233 ], [ %241, %244 ], [ %252, %266 ], [ %41, %270 ], [ %41, %58 ], [ %41, %149 ], [ %156, %171 ], [ %156, %175 ]
  %274 = phi i32 [ %40, %49 ], [ %40, %74 ], [ %40, %78 ], [ %40, %82 ], [ %40, %95 ], [ %40, %106 ], [ %40, %121 ], [ %40, %137 ], [ %40, %145 ], [ %40, %185 ], [ %40, %196 ], [ %40, %224 ], [ %40, %233 ], [ %40, %244 ], [ %40, %266 ], [ %40, %270 ], [ %40, %58 ], [ %40, %149 ], [ %174, %171 ], [ %177, %175 ]
  %275 = phi i32 [ %39, %49 ], [ %39, %74 ], [ %39, %78 ], [ %39, %82 ], [ %39, %95 ], [ %39, %106 ], [ %39, %121 ], [ %39, %137 ], [ %39, %145 ], [ %39, %185 ], [ %39, %196 ], [ %39, %224 ], [ %39, %233 ], [ %39, %244 ], [ %39, %266 ], [ %39, %270 ], [ 1, %58 ], [ %39, %149 ], [ %39, %171 ], [ %39, %175 ]
  %276 = phi i32 [ %38, %49 ], [ %38, %74 ], [ %38, %78 ], [ %38, %82 ], [ %38, %95 ], [ %38, %106 ], [ %38, %121 ], [ %38, %137 ], [ %38, %145 ], [ %38, %185 ], [ %38, %196 ], [ %38, %224 ], [ %38, %233 ], [ %38, %244 ], [ %38, %266 ], [ %38, %270 ], [ %38, %58 ], [ 1, %149 ], [ %38, %171 ], [ %38, %175 ]
  %277 = phi ptr [ %37, %49 ], [ %37, %74 ], [ %37, %78 ], [ %37, %82 ], [ %37, %95 ], [ %37, %106 ], [ %37, %121 ], [ %37, %137 ], [ %37, %145 ], [ %37, %185 ], [ %199, %196 ], [ %37, %224 ], [ %37, %233 ], [ %37, %244 ], [ %37, %266 ], [ %37, %270 ], [ %37, %58 ], [ %37, %149 ], [ %37, %171 ], [ %37, %175 ]
  %278 = phi ptr [ %36, %49 ], [ %36, %74 ], [ %36, %78 ], [ %36, %82 ], [ %36, %95 ], [ %36, %106 ], [ %36, %121 ], [ %36, %137 ], [ %36, %145 ], [ %188, %185 ], [ %36, %196 ], [ %36, %224 ], [ %36, %233 ], [ %36, %244 ], [ %36, %266 ], [ %36, %270 ], [ %36, %58 ], [ %36, %149 ], [ %36, %171 ], [ %36, %175 ]
  %279 = phi ptr [ %35, %49 ], [ %35, %74 ], [ %35, %78 ], [ %35, %82 ], [ %35, %95 ], [ %35, %106 ], [ %35, %121 ], [ %35, %137 ], [ %35, %145 ], [ %35, %185 ], [ %35, %196 ], [ %35, %224 ], [ %236, %233 ], [ %35, %244 ], [ %35, %266 ], [ %35, %270 ], [ %35, %58 ], [ %35, %149 ], [ %35, %171 ], [ %35, %175 ]
  %280 = phi ptr [ %34, %49 ], [ %34, %74 ], [ %34, %78 ], [ %34, %82 ], [ %34, %95 ], [ %34, %106 ], [ %34, %121 ], [ %34, %137 ], [ %34, %145 ], [ %34, %185 ], [ %34, %196 ], [ %34, %224 ], [ %34, %233 ], [ %247, %244 ], [ %34, %266 ], [ %34, %270 ], [ %34, %58 ], [ %34, %149 ], [ %34, %171 ], [ %34, %175 ]
  %281 = add nsw i32 %273, 1
  %282 = icmp slt i32 %281, %1
  br i1 %282, label %33, label %283, !llvm.loop !281

283:                                              ; preds = %272, %47, %4
  %284 = phi i32 [ 1, %4 ], [ %281, %272 ], [ %41, %47 ]
  %285 = phi i32 [ 100, %4 ], [ %274, %272 ], [ %40, %47 ]
  %286 = phi i32 [ 0, %4 ], [ %275, %272 ], [ %39, %47 ]
  %287 = phi i32 [ 0, %4 ], [ %276, %272 ], [ %38, %47 ]
  %288 = phi ptr [ null, %4 ], [ %277, %272 ], [ %37, %47 ]
  %289 = phi ptr [ null, %4 ], [ %278, %272 ], [ %36, %47 ]
  %290 = phi ptr [ null, %4 ], [ %279, %272 ], [ %35, %47 ]
  %291 = phi ptr [ null, %4 ], [ %280, %272 ], [ %34, %47 ]
  %292 = icmp eq i32 %3, 0
  br i1 %292, label %691, label %293

293:                                              ; preds = %283
  %294 = load i32, ptr %17, align 4, !tbaa !121
  %295 = call i32 @llvm.smax.i32(i32 %294, i32 1)
  %296 = call i32 @llvm.umin.i32(i32 %295, i32 100)
  %297 = icmp ult i32 %296, 50
  br i1 %297, label %298, label %302

298:                                              ; preds = %293
  %299 = trunc i32 %296 to i16
  %300 = udiv i16 5000, %299
  %301 = zext i16 %300 to i32
  br label %305

302:                                              ; preds = %293
  %303 = shl nuw nsw i32 %296, 1
  %304 = sub nuw nsw i32 200, %303
  br label %305

305:                                              ; preds = %302, %298
  %306 = phi i32 [ %301, %298 ], [ %304, %302 ]
  call fastcc void @jpeg_add_quant_table(ptr noundef %0, i32 noundef 0, ptr noundef nonnull @jpeg_set_linear_quality.std_luminance_quant_tbl, i32 noundef %306, i32 noundef %286) #26
  call fastcc void @jpeg_add_quant_table(ptr noundef %0, i32 noundef 1, ptr noundef nonnull @jpeg_set_linear_quality.std_chrominance_quant_tbl, i32 noundef %306, i32 noundef %286) #26
  %307 = icmp eq ptr %288, null
  br i1 %307, label %353, label %308

308:                                              ; preds = %305
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %14) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %15) #23
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %16) #23
  %309 = call noalias ptr @fopen(ptr noundef nonnull %288, ptr noundef nonnull @.str.253) #26
  %310 = icmp eq ptr %309, null
  br i1 %310, label %311, label %314

311:                                              ; preds = %308
  %312 = load ptr, ptr @stderr, align 8, !tbaa !7
  %313 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %312, ptr noundef nonnull @.str.1.254, ptr noundef nonnull %288) #27
  br label %352

314:                                              ; preds = %341, %308
  %315 = phi i32 [ %342, %341 ], [ 0, %308 ]
  %316 = call fastcc i32 @read_text_integer(ptr noundef nonnull %309, ptr noundef nonnull %15, ptr noundef nonnull %14) #26, !range !277
  %317 = icmp eq i32 %316, 0
  br i1 %317, label %343, label %318

318:                                              ; preds = %314
  %319 = icmp eq i32 %315, 4
  br i1 %319, label %320, label %324

320:                                              ; preds = %318
  %321 = load ptr, ptr @stderr, align 8, !tbaa !7
  %322 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %321, ptr noundef nonnull @.str.2.255, ptr noundef nonnull %288) #27
  %323 = call i32 @fclose(ptr noundef nonnull %309) #26
  br label %352

324:                                              ; preds = %318
  %325 = load i64, ptr %15, align 8, !tbaa !31
  %326 = trunc i64 %325 to i32
  store i32 %326, ptr %16, align 16, !tbaa !121
  br label %327

327:                                              ; preds = %335, %324
  %328 = phi i64 [ 1, %324 ], [ %339, %335 ]
  %329 = call fastcc i32 @read_text_integer(ptr noundef nonnull %309, ptr noundef nonnull %15, ptr noundef nonnull %14) #26, !range !277
  %330 = icmp eq i32 %329, 0
  br i1 %330, label %331, label %335

331:                                              ; preds = %327
  %332 = load ptr, ptr @stderr, align 8, !tbaa !7
  %333 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %332, ptr noundef nonnull @.str.3.256, ptr noundef nonnull %288) #27
  %334 = call i32 @fclose(ptr noundef nonnull %309) #26
  br label %352

335:                                              ; preds = %327
  %336 = load i64, ptr %15, align 8, !tbaa !31
  %337 = trunc i64 %336 to i32
  %338 = getelementptr inbounds [64 x i32], ptr %16, i64 0, i64 %328
  store i32 %337, ptr %338, align 4, !tbaa !121
  %339 = add nuw nsw i64 %328, 1
  %340 = icmp eq i64 %339, 64
  br i1 %340, label %341, label %327, !llvm.loop !282

341:                                              ; preds = %335
  call fastcc void @jpeg_add_quant_table(ptr noundef %0, i32 noundef %315, ptr noundef nonnull %16, i32 noundef %285, i32 noundef %286) #25
  %342 = add nuw nsw i32 %315, 1
  br label %314, !llvm.loop !283

343:                                              ; preds = %314
  %344 = load i32, ptr %14, align 4, !tbaa !121
  %345 = icmp eq i32 %344, -1
  br i1 %345, label %350, label %346

346:                                              ; preds = %343
  %347 = load ptr, ptr @stderr, align 8, !tbaa !7
  %348 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %347, ptr noundef nonnull @.str.4.257, ptr noundef nonnull %288) #27
  %349 = call i32 @fclose(ptr noundef nonnull %309) #26
  br label %352

350:                                              ; preds = %343
  %351 = call i32 @fclose(ptr noundef nonnull %309) #26
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  br label %353

352:                                              ; preds = %346, %331, %320, %311
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %16) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %15) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %14) #23
  call fastcc void @usage() #26
  unreachable

353:                                              ; preds = %350, %305
  %354 = icmp eq ptr %289, null
  br i1 %354, label %394, label %355

355:                                              ; preds = %353
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %12) #23
  store i32 0, ptr %12, align 4, !tbaa !121
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %13) #23
  %356 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %357

357:                                              ; preds = %388, %355
  %358 = phi i64 [ 0, %355 ], [ %390, %388 ]
  %359 = phi ptr [ %289, %355 ], [ %389, %388 ]
  %360 = load i8, ptr %359, align 1, !tbaa !11
  %361 = icmp eq i8 %360, 0
  br i1 %361, label %384, label %362

362:                                              ; preds = %357
  store i8 44, ptr %13, align 1, !tbaa !11
  %363 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %359, ptr noundef nonnull @.str.9.266, ptr noundef nonnull %12, ptr noundef nonnull %13) #25
  %364 = icmp sgt i32 %363, 0
  %365 = load i8, ptr %13, align 1
  %366 = icmp eq i8 %365, 44
  %367 = select i1 %364, i1 %366, i1 false
  br i1 %367, label %368, label %393

368:                                              ; preds = %362
  %369 = load i32, ptr %12, align 4
  %370 = icmp ugt i32 %369, 3
  br i1 %370, label %371, label %374

371:                                              ; preds = %368
  %372 = load ptr, ptr @stderr, align 8, !tbaa !7
  %373 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %372, ptr noundef nonnull @.str.10.267, i32 noundef 3) #27
  br label %393

374:                                              ; preds = %368
  %375 = load ptr, ptr %356, align 8, !tbaa !57
  %376 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %375, i64 %358, i32 4
  store i32 %369, ptr %376, align 8, !tbaa !284
  br label %377

377:                                              ; preds = %381, %374
  %378 = phi ptr [ %359, %374 ], [ %382, %381 ]
  %379 = load i8, ptr %378, align 1, !tbaa !11
  %380 = icmp eq i8 %379, 0
  br i1 %380, label %388, label %381

381:                                              ; preds = %377
  %382 = getelementptr inbounds i8, ptr %378, i64 1
  %383 = icmp eq i8 %379, 44
  br i1 %383, label %388, label %377, !llvm.loop !285

384:                                              ; preds = %357
  %385 = load i32, ptr %12, align 4, !tbaa !121
  %386 = load ptr, ptr %356, align 8, !tbaa !57
  %387 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %386, i64 %358, i32 4
  store i32 %385, ptr %387, align 8, !tbaa !284
  br label %388

388:                                              ; preds = %384, %381, %377
  %389 = phi ptr [ %359, %384 ], [ %378, %377 ], [ %382, %381 ]
  %390 = add nuw nsw i64 %358, 1
  %391 = icmp eq i64 %390, 10
  br i1 %391, label %392, label %357, !llvm.loop !286

392:                                              ; preds = %388
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  br label %394

393:                                              ; preds = %371, %362
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %13) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %12) #23
  call fastcc void @usage() #26
  unreachable

394:                                              ; preds = %392, %353
  %395 = icmp eq ptr %290, null
  br i1 %395, label %447, label %396

396:                                              ; preds = %394
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %8) #23
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %10) #23
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %11) #23
  %397 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  br label %398

398:                                              ; preds = %441, %396
  %399 = phi i64 [ 0, %396 ], [ %443, %441 ]
  %400 = phi ptr [ %290, %396 ], [ %442, %441 ]
  %401 = load i8, ptr %400, align 1, !tbaa !11
  %402 = icmp eq i8 %401, 0
  br i1 %402, label %437, label %403

403:                                              ; preds = %398
  store i8 44, ptr %11, align 1, !tbaa !11
  %404 = call i32 (ptr, ptr, ...) @__isoc99_sscanf(ptr noundef nonnull %400, ptr noundef nonnull @.str.11.270, ptr noundef nonnull %8, ptr noundef nonnull %10, ptr noundef nonnull %9, ptr noundef nonnull %11) #25
  %405 = icmp slt i32 %404, 3
  br i1 %405, label %446, label %406

406:                                              ; preds = %403
  %407 = load i8, ptr %10, align 1
  %408 = and i8 %407, -33
  %409 = icmp ne i8 %408, 88
  %410 = load i8, ptr %11, align 1
  %411 = icmp ne i8 %410, 44
  %412 = select i1 %409, i1 true, i1 %411
  br i1 %412, label %446, label %413

413:                                              ; preds = %406
  %414 = load i32, ptr %8, align 4
  %415 = add i32 %414, -5
  %416 = icmp ult i32 %415, -4
  %417 = load i32, ptr %9, align 4
  %418 = icmp slt i32 %417, 1
  %419 = select i1 %416, i1 true, i1 %418
  %420 = icmp sgt i32 %417, 4
  %421 = select i1 %419, i1 true, i1 %420
  br i1 %421, label %422, label %425

422:                                              ; preds = %413
  %423 = load ptr, ptr @stderr, align 8, !tbaa !7
  %424 = call i64 @fwrite(ptr nonnull @.str.12.271, i64 35, i64 1, ptr %423) #29
  br label %446

425:                                              ; preds = %413
  %426 = load ptr, ptr %397, align 8, !tbaa !57
  %427 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %426, i64 %399, i32 2
  store i32 %414, ptr %427, align 8, !tbaa !103
  %428 = load i32, ptr %9, align 4, !tbaa !121
  %429 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %426, i64 %399, i32 3
  store i32 %428, ptr %429, align 4, !tbaa !105
  br label %430

430:                                              ; preds = %434, %425
  %431 = phi ptr [ %400, %425 ], [ %435, %434 ]
  %432 = load i8, ptr %431, align 1, !tbaa !11
  %433 = icmp eq i8 %432, 0
  br i1 %433, label %441, label %434

434:                                              ; preds = %430
  %435 = getelementptr inbounds i8, ptr %431, i64 1
  %436 = icmp eq i8 %432, 44
  br i1 %436, label %441, label %430, !llvm.loop !287

437:                                              ; preds = %398
  %438 = load ptr, ptr %397, align 8, !tbaa !57
  %439 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %438, i64 %399, i32 2
  store i32 1, ptr %439, align 8, !tbaa !103
  %440 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %438, i64 %399, i32 3
  store i32 1, ptr %440, align 4, !tbaa !105
  br label %441

441:                                              ; preds = %437, %434, %430
  %442 = phi ptr [ %400, %437 ], [ %431, %430 ], [ %435, %434 ]
  %443 = add nuw nsw i64 %399, 1
  %444 = icmp eq i64 %443, 10
  br i1 %444, label %445, label %398, !llvm.loop !288

445:                                              ; preds = %441
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  br label %447

446:                                              ; preds = %422, %406, %403
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %11) #23
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %10) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %9) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %8) #23
  call fastcc void @usage() #26
  unreachable

447:                                              ; preds = %445, %394
  %448 = icmp eq i32 %287, 0
  br i1 %448, label %576, label %449

449:                                              ; preds = %447
  %450 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %451 = load i32, ptr %450, align 4, !tbaa !100
  %452 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %453 = load i32, ptr %452, align 4, !tbaa !50
  %454 = icmp eq i32 %453, 100
  br i1 %454, label %461, label %455

455:                                              ; preds = %449
  %456 = load ptr, ptr %0, align 8, !tbaa !25
  %457 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %456, i64 0, i32 5
  store i32 18, ptr %457, align 8, !tbaa !22
  %458 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %456, i64 0, i32 6
  store i32 %453, ptr %458, align 4, !tbaa !11
  %459 = load ptr, ptr %0, align 8, !tbaa !25
  %460 = load ptr, ptr %459, align 8, !tbaa !12
  call void %460(ptr noundef nonnull %0) #25
  br label %461

461:                                              ; preds = %455, %449
  %462 = icmp eq i32 %451, 3
  br i1 %462, label %463, label %467

463:                                              ; preds = %461
  %464 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %465 = load i32, ptr %464, align 8, !tbaa !141
  %466 = icmp eq i32 %465, 3
  br i1 %466, label %474, label %471

467:                                              ; preds = %461
  %468 = icmp sgt i32 %451, 4
  br i1 %468, label %469, label %471

469:                                              ; preds = %467
  %470 = mul nsw i32 %451, 6
  br label %474

471:                                              ; preds = %467, %463
  %472 = shl nsw i32 %451, 2
  %473 = or i32 %472, 2
  br label %474

474:                                              ; preds = %471, %469, %463
  %475 = phi i32 [ %470, %469 ], [ %473, %471 ], [ 10, %463 ]
  %476 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %477 = load ptr, ptr %476, align 8, !tbaa !55
  %478 = load ptr, ptr %477, align 8, !tbaa !56
  %479 = sext i32 %475 to i64
  %480 = mul nsw i64 %479, 36
  %481 = call ptr %478(ptr noundef nonnull %0, i32 noundef 0, i64 noundef %480) #25
  %482 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  store ptr %481, ptr %482, align 8, !tbaa !116
  %483 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 %475, ptr %483, align 8, !tbaa !61
  br i1 %462, label %484, label %535

484:                                              ; preds = %474
  %485 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %486 = load i32, ptr %485, align 8, !tbaa !141
  %487 = icmp eq i32 %486, 3
  store i32 3, ptr %481, align 4, !tbaa !122
  br i1 %487, label %494, label %488

488:                                              ; preds = %484
  %489 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 1, i64 0
  store i32 0, ptr %489, align 4, !tbaa !121
  %490 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 1, i64 1
  store i32 1, ptr %490, align 4, !tbaa !121
  %491 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 1, i64 2
  store i32 2, ptr %491, align 4, !tbaa !121
  %492 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 2
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %492, align 4, !tbaa !121
  %493 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 1
  br label %538

494:                                              ; preds = %494, %484
  %495 = phi i64 [ %498, %494 ], [ 0, %484 ]
  %496 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 1, i64 %495
  %497 = trunc i64 %495 to i32
  store i32 %497, ptr %496, align 4, !tbaa !121
  %498 = add nuw nsw i64 %495, 1
  %499 = icmp eq i64 %498, 3
  br i1 %499, label %500, label %494, !llvm.loop !289

500:                                              ; preds = %494
  %501 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 0, i32 2
  store <4 x i32> <i32 0, i32 0, i32 0, i32 1>, ptr %501, align 4, !tbaa !121
  %502 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 1
  store i32 1, ptr %502, align 4, !tbaa !122
  %503 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 1, i32 1
  store i32 0, ptr %503, align 4, !tbaa !121
  %504 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 1, i32 2
  store <4 x i32> <i32 1, i32 5, i32 0, i32 2>, ptr %504, align 4, !tbaa !121
  %505 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 2
  store i32 1, ptr %505, align 4, !tbaa !122
  %506 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 2, i32 1
  store i32 2, ptr %506, align 4, !tbaa !121
  %507 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 2, i32 2
  store <4 x i32> <i32 1, i32 63, i32 0, i32 1>, ptr %507, align 4, !tbaa !121
  %508 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 3
  store i32 1, ptr %508, align 4, !tbaa !122
  %509 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 3, i32 1
  store i32 1, ptr %509, align 4, !tbaa !121
  %510 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 3, i32 2
  store <4 x i32> <i32 1, i32 63, i32 0, i32 1>, ptr %510, align 4, !tbaa !121
  %511 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 4
  store i32 1, ptr %511, align 4, !tbaa !122
  %512 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 4, i32 1
  store i32 0, ptr %512, align 4, !tbaa !121
  %513 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 4, i32 2
  store <4 x i32> <i32 6, i32 63, i32 0, i32 2>, ptr %513, align 4, !tbaa !121
  %514 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 5
  store i32 1, ptr %514, align 4, !tbaa !122
  %515 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 5, i32 1
  store i32 0, ptr %515, align 4, !tbaa !121
  %516 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 5, i32 2
  store <4 x i32> <i32 1, i32 63, i32 2, i32 1>, ptr %516, align 4, !tbaa !121
  %517 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 6
  store i32 3, ptr %517, align 4, !tbaa !122
  br label %518

518:                                              ; preds = %518, %500
  %519 = phi i64 [ 0, %500 ], [ %522, %518 ]
  %520 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 6, i32 1, i64 %519
  %521 = trunc i64 %519 to i32
  store i32 %521, ptr %520, align 4, !tbaa !121
  %522 = add nuw nsw i64 %519, 1
  %523 = icmp eq i64 %522, 3
  br i1 %523, label %524, label %518, !llvm.loop !289

524:                                              ; preds = %518
  %525 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 6, i32 2
  store <4 x i32> <i32 0, i32 0, i32 1, i32 0>, ptr %525, align 4, !tbaa !121
  %526 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 7
  store i32 1, ptr %526, align 4, !tbaa !122
  %527 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 7, i32 1
  store i32 2, ptr %527, align 4, !tbaa !121
  %528 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 7, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %528, align 4, !tbaa !121
  %529 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 8
  store i32 1, ptr %529, align 4, !tbaa !122
  %530 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 8, i32 1
  store i32 1, ptr %530, align 4, !tbaa !121
  %531 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 8, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %531, align 4, !tbaa !121
  %532 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 9
  store i32 1, ptr %532, align 4, !tbaa !122
  %533 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 9, i32 1
  store i32 0, ptr %533, align 4, !tbaa !121
  %534 = getelementptr inbounds %struct.jpeg_scan_info, ptr %481, i64 9, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %534, align 4, !tbaa !121
  br label %576

535:                                              ; preds = %474
  %536 = call fastcc ptr @fill_dc_scans(ptr noundef %481, i32 noundef %451, i32 noundef 0, i32 noundef 1) #26
  %537 = icmp sgt i32 %451, 0
  br i1 %537, label %538, label %564

538:                                              ; preds = %535, %488
  %539 = phi ptr [ %493, %488 ], [ %536, %535 ]
  br label %540

540:                                              ; preds = %540, %538
  %541 = phi i32 [ %546, %540 ], [ 0, %538 ]
  %542 = phi ptr [ %545, %540 ], [ %539, %538 ]
  store i32 1, ptr %542, align 4, !tbaa !122
  %543 = getelementptr inbounds %struct.jpeg_scan_info, ptr %542, i64 0, i32 1
  store i32 %541, ptr %543, align 4, !tbaa !121
  %544 = getelementptr inbounds %struct.jpeg_scan_info, ptr %542, i64 0, i32 2
  store <4 x i32> <i32 1, i32 5, i32 0, i32 2>, ptr %544, align 4, !tbaa !121
  %545 = getelementptr inbounds %struct.jpeg_scan_info, ptr %542, i64 1
  %546 = add nuw nsw i32 %541, 1
  %547 = icmp eq i32 %546, %451
  br i1 %547, label %548, label %540, !llvm.loop !290

548:                                              ; preds = %548, %540
  %549 = phi i32 [ %554, %548 ], [ 0, %540 ]
  %550 = phi ptr [ %553, %548 ], [ %545, %540 ]
  store i32 1, ptr %550, align 4, !tbaa !122
  %551 = getelementptr inbounds %struct.jpeg_scan_info, ptr %550, i64 0, i32 1
  store i32 %549, ptr %551, align 4, !tbaa !121
  %552 = getelementptr inbounds %struct.jpeg_scan_info, ptr %550, i64 0, i32 2
  store <4 x i32> <i32 6, i32 63, i32 0, i32 2>, ptr %552, align 4, !tbaa !121
  %553 = getelementptr inbounds %struct.jpeg_scan_info, ptr %550, i64 1
  %554 = add nuw nsw i32 %549, 1
  %555 = icmp eq i32 %554, %451
  br i1 %555, label %556, label %548, !llvm.loop !290

556:                                              ; preds = %556, %548
  %557 = phi i32 [ %562, %556 ], [ 0, %548 ]
  %558 = phi ptr [ %561, %556 ], [ %553, %548 ]
  store i32 1, ptr %558, align 4, !tbaa !122
  %559 = getelementptr inbounds %struct.jpeg_scan_info, ptr %558, i64 0, i32 1
  store i32 %557, ptr %559, align 4, !tbaa !121
  %560 = getelementptr inbounds %struct.jpeg_scan_info, ptr %558, i64 0, i32 2
  store <4 x i32> <i32 1, i32 63, i32 2, i32 1>, ptr %560, align 4, !tbaa !121
  %561 = getelementptr inbounds %struct.jpeg_scan_info, ptr %558, i64 1
  %562 = add nuw nsw i32 %557, 1
  %563 = icmp eq i32 %562, %451
  br i1 %563, label %566, label %556, !llvm.loop !290

564:                                              ; preds = %535
  %565 = call fastcc ptr @fill_dc_scans(ptr noundef nonnull %536, i32 noundef %451, i32 noundef 1, i32 noundef 0) #26
  br label %576

566:                                              ; preds = %556
  %.lcssa6 = phi ptr [ %561, %556 ]
  %567 = call fastcc ptr @fill_dc_scans(ptr noundef nonnull %.lcssa6, i32 noundef %451, i32 noundef 1, i32 noundef 0) #26
  br label %568

568:                                              ; preds = %568, %566
  %569 = phi i32 [ %574, %568 ], [ 0, %566 ]
  %570 = phi ptr [ %573, %568 ], [ %567, %566 ]
  store i32 1, ptr %570, align 4, !tbaa !122
  %571 = getelementptr inbounds %struct.jpeg_scan_info, ptr %570, i64 0, i32 1
  store i32 %569, ptr %571, align 4, !tbaa !121
  %572 = getelementptr inbounds %struct.jpeg_scan_info, ptr %570, i64 0, i32 2
  store <4 x i32> <i32 1, i32 63, i32 1, i32 0>, ptr %572, align 4, !tbaa !121
  %573 = getelementptr inbounds %struct.jpeg_scan_info, ptr %570, i64 1
  %574 = add nuw nsw i32 %569, 1
  %575 = icmp eq i32 %574, %451
  br i1 %575, label %576, label %568, !llvm.loop !290

576:                                              ; preds = %568, %564, %524, %447
  %577 = icmp eq ptr %291, null
  br i1 %577, label %691, label %578

578:                                              ; preds = %576
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.start.p0(i64 3600, ptr nonnull %7) #23
  %579 = call noalias ptr @fopen(ptr noundef nonnull %291, ptr noundef nonnull @.str.253) #26
  %580 = icmp eq ptr %579, null
  br i1 %580, label %581, label %584

581:                                              ; preds = %578
  %582 = load ptr, ptr @stderr, align 8, !tbaa !7
  %583 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %582, ptr noundef nonnull @.str.5.260, ptr noundef nonnull %291) #27
  br label %690

584:                                              ; preds = %667, %578
  %585 = phi i32 [ %669, %667 ], [ 0, %578 ]
  %586 = phi ptr [ %668, %667 ], [ %7, %578 ]
  %587 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %588 = icmp eq i32 %587, 0
  br i1 %588, label %670, label %589

589:                                              ; preds = %584
  %590 = icmp eq i32 %585, 100
  br i1 %590, label %591, label %595

591:                                              ; preds = %589
  %592 = load ptr, ptr @stderr, align 8, !tbaa !7
  %593 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %592, ptr noundef nonnull @.str.6.261, ptr noundef nonnull %291) #27
  %594 = call i32 @fclose(ptr noundef nonnull %579) #26
  br label %690

595:                                              ; preds = %589
  %596 = load i64, ptr %6, align 8, !tbaa !31
  %597 = trunc i64 %596 to i32
  %598 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 1
  store i32 %597, ptr %598, align 4, !tbaa !121
  %599 = load i32, ptr %5, align 4
  %600 = icmp eq i32 %599, 32
  br i1 %600, label %601, label %620

601:                                              ; preds = %611, %595
  %602 = phi i64 [ %615, %611 ], [ 1, %595 ]
  %603 = icmp eq i64 %602, 4
  br i1 %603, label %604, label %608

604:                                              ; preds = %601
  %605 = load ptr, ptr @stderr, align 8, !tbaa !7
  %606 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %605, ptr noundef nonnull @.str.7.262, ptr noundef nonnull %291) #27
  %607 = call i32 @fclose(ptr noundef nonnull %579) #26
  br label %690

608:                                              ; preds = %601
  %609 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %610 = icmp eq i32 %609, 0
  br i1 %610, label %663, label %611

611:                                              ; preds = %608
  %612 = load i64, ptr %6, align 8, !tbaa !31
  %613 = trunc i64 %612 to i32
  %614 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 1, i64 %602
  store i32 %613, ptr %614, align 4, !tbaa !121
  %615 = add nuw nsw i64 %602, 1
  %616 = load i32, ptr %5, align 4
  %617 = icmp eq i32 %616, 32
  br i1 %617, label %601, label %618, !llvm.loop !291

618:                                              ; preds = %611
  %.lcssa1 = phi i64 [ %615, %611 ]
  %.lcssa = phi i32 [ %616, %611 ]
  %619 = trunc i64 %.lcssa1 to i32
  br label %620

620:                                              ; preds = %618, %595
  %621 = phi i32 [ 1, %595 ], [ %619, %618 ]
  %622 = phi i32 [ %599, %595 ], [ %.lcssa, %618 ]
  store i32 %621, ptr %586, align 4, !tbaa !122
  %623 = icmp eq i32 %622, 58
  br i1 %623, label %624, label %659

624:                                              ; preds = %620
  %625 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %626 = icmp eq i32 %625, 0
  %627 = load i32, ptr %5, align 4
  %628 = icmp ne i32 %627, 32
  %629 = select i1 %626, i1 true, i1 %628
  br i1 %629, label %663, label %630

630:                                              ; preds = %624
  %631 = load i64, ptr %6, align 8, !tbaa !31
  %632 = trunc i64 %631 to i32
  %633 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 2
  store i32 %632, ptr %633, align 4, !tbaa !117
  %634 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %635 = icmp eq i32 %634, 0
  %636 = load i32, ptr %5, align 4
  %637 = icmp ne i32 %636, 32
  %638 = select i1 %635, i1 true, i1 %637
  br i1 %638, label %663, label %639

639:                                              ; preds = %630
  %640 = load i64, ptr %6, align 8, !tbaa !31
  %641 = trunc i64 %640 to i32
  %642 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 3
  store i32 %641, ptr %642, align 4, !tbaa !119
  %643 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %644 = icmp eq i32 %643, 0
  %645 = load i32, ptr %5, align 4
  %646 = icmp ne i32 %645, 32
  %647 = select i1 %644, i1 true, i1 %646
  br i1 %647, label %663, label %648

648:                                              ; preds = %639
  %649 = load i64, ptr %6, align 8, !tbaa !31
  %650 = trunc i64 %649 to i32
  %651 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 4
  store i32 %650, ptr %651, align 4, !tbaa !124
  %652 = call fastcc i32 @read_scan_integer(ptr noundef nonnull %579, ptr noundef nonnull %6, ptr noundef nonnull %5) #26, !range !277
  %653 = icmp eq i32 %652, 0
  br i1 %653, label %663, label %654

654:                                              ; preds = %648
  %655 = load i64, ptr %6, align 8, !tbaa !31
  %656 = trunc i64 %655 to i32
  %657 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 5
  store i32 %656, ptr %657, align 4, !tbaa !125
  %658 = load i32, ptr %5, align 4
  br label %661

659:                                              ; preds = %620
  %660 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 0, i32 2
  store <4 x i32> <i32 0, i32 63, i32 0, i32 0>, ptr %660, align 4, !tbaa !121
  br label %661

661:                                              ; preds = %659, %654
  %662 = phi i32 [ %622, %659 ], [ %658, %654 ]
  switch i32 %662, label %663 [
    i32 -1, label %667
    i32 59, label %667
  ]

663:                                              ; preds = %661, %648, %639, %630, %624, %608
  %664 = load ptr, ptr @stderr, align 8, !tbaa !7
  %665 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %664, ptr noundef nonnull @.str.8.263, ptr noundef nonnull %291) #27
  %666 = call i32 @fclose(ptr noundef nonnull %579) #26
  br label %690

667:                                              ; preds = %661, %661
  %668 = getelementptr inbounds %struct.jpeg_scan_info, ptr %586, i64 1
  %669 = add nuw nsw i32 %585, 1
  br label %584, !llvm.loop !292

670:                                              ; preds = %584
  %.lcssa2 = phi i32 [ %585, %584 ]
  %671 = load i32, ptr %5, align 4, !tbaa !121
  %672 = icmp eq i32 %671, -1
  br i1 %672, label %677, label %673

673:                                              ; preds = %670
  %674 = load ptr, ptr @stderr, align 8, !tbaa !7
  %675 = call i32 (ptr, ptr, ...) @fprintf(ptr noundef %674, ptr noundef nonnull @.str.4.257, ptr noundef nonnull %291) #27
  %676 = call i32 @fclose(ptr noundef nonnull %579) #26
  br label %690

677:                                              ; preds = %670
  %678 = icmp eq i32 %.lcssa2, 0
  br i1 %678, label %688, label %679

679:                                              ; preds = %677
  %680 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %681 = load ptr, ptr %680, align 8, !tbaa !55
  %682 = load ptr, ptr %681, align 8, !tbaa !56
  %683 = zext i32 %.lcssa2 to i64
  %684 = mul nuw nsw i64 %683, 36
  %685 = call ptr %682(ptr noundef %0, i32 noundef 1, i64 noundef %684) #25
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %685, ptr nonnull align 16 %7, i64 %684, i1 false)
  %686 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  store ptr %685, ptr %686, align 8, !tbaa !116
  %687 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 21
  store i32 %.lcssa2, ptr %687, align 8, !tbaa !61
  br label %688

688:                                              ; preds = %679, %677
  %689 = call i32 @fclose(ptr noundef nonnull %579) #26
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  br label %691

690:                                              ; preds = %673, %663, %604, %591, %581
  call void @llvm.lifetime.end.p0(i64 3600, ptr nonnull %7) #23
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %5) #23
  call fastcc void @usage() #26
  unreachable

691:                                              ; preds = %688, %576, %283
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %17) #23
  ret i32 %284
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fprintf(ptr nocapture noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize uwtable
define internal fastcc void @usage() unnamed_addr #0 {
  %1 = load ptr, ptr @stderr, align 8, !tbaa !7
  %2 = load ptr, ptr @progname, align 8, !tbaa !7
  %3 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %1, ptr noundef nonnull @.str.76.144, ptr noundef %2) #27
  %4 = load ptr, ptr @stderr, align 8, !tbaa !7
  %5 = tail call i64 @fwrite(ptr nonnull @.str.77.145, i64 12, i64 1, ptr %4) #29
  %6 = load ptr, ptr @stderr, align 8, !tbaa !7
  %7 = tail call i64 @fwrite(ptr nonnull @.str.78.146, i64 37, i64 1, ptr %6) #29
  %8 = load ptr, ptr @stderr, align 8, !tbaa !7
  %9 = tail call i64 @fwrite(ptr nonnull @.str.79.147, i64 68, i64 1, ptr %8) #29
  %10 = load ptr, ptr @stderr, align 8, !tbaa !7
  %11 = tail call i64 @fwrite(ptr nonnull @.str.80.148, i64 45, i64 1, ptr %10) #29
  %12 = load ptr, ptr @stderr, align 8, !tbaa !7
  %13 = tail call i64 @fwrite(ptr nonnull @.str.81.149, i64 77, i64 1, ptr %12) #29
  %14 = load ptr, ptr @stderr, align 8, !tbaa !7
  %15 = tail call i64 @fwrite(ptr nonnull @.str.82.150, i64 46, i64 1, ptr %14) #29
  %16 = load ptr, ptr @stderr, align 8, !tbaa !7
  %17 = tail call i64 @fwrite(ptr nonnull @.str.83.151, i64 65, i64 1, ptr %16) #29
  %18 = load ptr, ptr @stderr, align 8, !tbaa !7
  %19 = tail call i64 @fwrite(ptr nonnull @.str.84.152, i64 29, i64 1, ptr %18) #29
  %20 = load ptr, ptr @stderr, align 8, !tbaa !7
  %21 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %20, ptr noundef nonnull @.str.85.153, ptr noundef nonnull @.str.86.154) #27
  %22 = load ptr, ptr @stderr, align 8, !tbaa !7
  %23 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %22, ptr noundef nonnull @.str.87.155, ptr noundef nonnull @.str.88.156) #27
  %24 = load ptr, ptr @stderr, align 8, !tbaa !7
  %25 = tail call i32 (ptr, ptr, ...) @fprintf(ptr noundef %24, ptr noundef nonnull @.str.89.157, ptr noundef nonnull @.str.88.156) #27
  %26 = load ptr, ptr @stderr, align 8, !tbaa !7
  %27 = tail call i64 @fwrite(ptr nonnull @.str.90.158, i64 67, i64 1, ptr %26) #29
  %28 = load ptr, ptr @stderr, align 8, !tbaa !7
  %29 = tail call i64 @fwrite(ptr nonnull @.str.91.159, i64 62, i64 1, ptr %28) #29
  %30 = load ptr, ptr @stderr, align 8, !tbaa !7
  %31 = tail call i64 @fwrite(ptr nonnull @.str.92.160, i64 51, i64 1, ptr %30) #29
  %32 = load ptr, ptr @stderr, align 8, !tbaa !7
  %33 = tail call i64 @fwrite(ptr nonnull @.str.93.161, i64 46, i64 1, ptr %32) #29
  %34 = load ptr, ptr @stderr, align 8, !tbaa !7
  %35 = tail call i64 @fwrite(ptr nonnull @.str.94.162, i64 43, i64 1, ptr %34) #29
  %36 = load ptr, ptr @stderr, align 8, !tbaa !7
  %37 = tail call i64 @fwrite(ptr nonnull @.str.95.163, i64 22, i64 1, ptr %36) #29
  %38 = load ptr, ptr @stderr, align 8, !tbaa !7
  %39 = tail call i64 @fwrite(ptr nonnull @.str.96.164, i64 39, i64 1, ptr %38) #29
  %40 = load ptr, ptr @stderr, align 8, !tbaa !7
  %41 = tail call i64 @fwrite(ptr nonnull @.str.97.165, i64 55, i64 1, ptr %40) #29
  %42 = load ptr, ptr @stderr, align 8, !tbaa !7
  %43 = tail call i64 @fwrite(ptr nonnull @.str.98.166, i64 55, i64 1, ptr %42) #29
  %44 = load ptr, ptr @stderr, align 8, !tbaa !7
  %45 = tail call i64 @fwrite(ptr nonnull @.str.99.167, i64 52, i64 1, ptr %44) #29
  %46 = load ptr, ptr @stderr, align 8, !tbaa !7
  %47 = tail call i64 @fwrite(ptr nonnull @.str.100.168, i64 56, i64 1, ptr %46) #29
  tail call void @exit(i32 noundef 1) #28
  unreachable
}

; Function Attrs: nofree nounwind optsize
declare noalias noundef ptr @fopen(ptr nocapture noundef readonly, ptr nocapture noundef readonly) local_unnamed_addr #8

; Function Attrs: noreturn nounwind optsize
declare void @exit(i32 noundef) local_unnamed_addr #10

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_tga(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [18 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 18, ptr nonnull %3) #23
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %5 = load ptr, ptr %4, align 8, !tbaa !293
  %6 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 18, ptr noundef %5) #26
  %7 = icmp eq i64 %6, 18
  br i1 %7, label %12, label %8

8:                                                ; preds = %2
  %9 = load ptr, ptr %0, align 8, !tbaa !25
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %9, i64 0, i32 5
  store i32 42, ptr %10, align 8, !tbaa !22
  %11 = load ptr, ptr %9, align 8, !tbaa !12
  tail call void %11(ptr noundef nonnull %0) #25
  br label %12

12:                                               ; preds = %8, %2
  %13 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 16
  %14 = load i8, ptr %13, align 16, !tbaa !11
  %15 = icmp eq i8 %14, 15
  %16 = select i1 %15, i8 16, i8 %14
  store i8 %16, ptr %13, align 16
  %17 = load i8, ptr %3, align 16, !tbaa !11
  %18 = zext i8 %17 to i32
  %19 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 1
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 2
  %22 = load i8, ptr %21, align 2, !tbaa !11
  %23 = zext i8 %22 to i32
  %24 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 5
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = zext i8 %25 to i32
  %27 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 6
  %28 = load i8, ptr %27, align 2, !tbaa !11
  %29 = zext i8 %28 to i32
  %30 = shl nuw nsw i32 %29, 8
  %31 = or i32 %30, %26
  %32 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 12
  %33 = load i8, ptr %32, align 4, !tbaa !11
  %34 = zext i8 %33 to i32
  %35 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 13
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i32
  %38 = shl nuw nsw i32 %37, 8
  %39 = or i32 %38, %34
  %40 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 14
  %41 = load i8, ptr %40, align 2, !tbaa !11
  %42 = zext i8 %41 to i32
  %43 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 15
  %44 = load i8, ptr %43, align 1, !tbaa !11
  %45 = zext i8 %44 to i32
  %46 = shl nuw nsw i32 %45, 8
  %47 = or i32 %46, %42
  %48 = lshr i8 %16, 3
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 7
  store i32 %49, ptr %50, align 4, !tbaa !294
  %51 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 17
  %52 = load i8, ptr %51, align 1, !tbaa !11
  %53 = and i8 %52, 32
  %54 = icmp eq i8 %53, 0
  %55 = icmp ugt i8 %20, 1
  %56 = icmp ult i8 %16, 8
  %57 = select i1 %55, i1 true, i1 %56
  %58 = icmp ugt i8 %16, 39
  %59 = select i1 %57, i1 true, i1 %58
  br i1 %59, label %65, label %60

60:                                               ; preds = %12
  %61 = and i8 %16, 7
  %62 = icmp ne i8 %61, 0
  %63 = icmp ugt i8 %52, 63
  %64 = select i1 %62, i1 true, i1 %63
  br i1 %64, label %65, label %69

65:                                               ; preds = %60, %12
  %66 = load ptr, ptr %0, align 8, !tbaa !25
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 1033, ptr %67, align 8, !tbaa !22
  %68 = load ptr, ptr %66, align 8, !tbaa !12
  tail call void %68(ptr noundef nonnull %0) #25
  br label %69

69:                                               ; preds = %65, %60
  %70 = icmp ugt i8 %22, 8
  br i1 %70, label %71, label %75

71:                                               ; preds = %69
  %72 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 9
  store i32 0, ptr %72, align 4, !tbaa !295
  %73 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 8
  store i32 0, ptr %73, align 8, !tbaa !296
  %74 = add nsw i32 %23, -8
  br label %75

75:                                               ; preds = %71, %69
  %76 = phi ptr [ @read_rle_pixel, %71 ], [ @read_non_rle_pixel, %69 ]
  %77 = phi i32 [ %74, %71 ], [ %23, %69 ]
  %78 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  store ptr %76, ptr %78, align 8
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %79, align 4, !tbaa !54
  switch i32 %77, label %139 [
    i32 1, label %80
    i32 2, label %100
    i32 3, label %121
  ]

80:                                               ; preds = %75
  %81 = load i32, ptr %50, align 4, !tbaa !294
  %82 = icmp eq i32 %81, 1
  %83 = icmp eq i8 %20, 1
  %84 = select i1 %82, i1 %83, i1 false
  br i1 %84, label %85, label %87

85:                                               ; preds = %80
  %86 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_row, ptr %86, align 8, !tbaa !297
  br label %91

87:                                               ; preds = %80
  %88 = load ptr, ptr %0, align 8, !tbaa !25
  %89 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %88, i64 0, i32 5
  store i32 1033, ptr %89, align 8, !tbaa !22
  %90 = load ptr, ptr %88, align 8, !tbaa !12
  tail call void %90(ptr noundef nonnull %0) #25
  br label %91

91:                                               ; preds = %87, %85
  %92 = load ptr, ptr %0, align 8, !tbaa !25
  %93 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 5
  store i32 1037, ptr %93, align 8, !tbaa !22
  %94 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %92, i64 0, i32 6
  store i32 %39, ptr %94, align 4, !tbaa !11
  %95 = load ptr, ptr %0, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %96, align 4, !tbaa !11
  %97 = load ptr, ptr %0, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 1
  %99 = load ptr, ptr %98, align 8, !tbaa !16
  tail call void %99(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %143

100:                                              ; preds = %75
  %101 = load i32, ptr %50, align 4, !tbaa !294
  switch i32 %101, label %108 [
    i32 2, label %102
    i32 3, label %104
    i32 4, label %106
  ]

102:                                              ; preds = %100
  %103 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_16bit_row, ptr %103, align 8, !tbaa !297
  br label %112

104:                                              ; preds = %100
  %105 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %105, align 8, !tbaa !297
  br label %112

106:                                              ; preds = %100
  %107 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_24bit_row, ptr %107, align 8, !tbaa !297
  br label %112

108:                                              ; preds = %100
  %109 = load ptr, ptr %0, align 8, !tbaa !25
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 1033, ptr %110, align 8, !tbaa !22
  %111 = load ptr, ptr %109, align 8, !tbaa !12
  tail call void %111(ptr noundef nonnull %0) #25
  br label %112

112:                                              ; preds = %108, %106, %104, %102
  %113 = load ptr, ptr %0, align 8, !tbaa !25
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 5
  store i32 1035, ptr %114, align 8, !tbaa !22
  %115 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %113, i64 0, i32 6
  store i32 %39, ptr %115, align 4, !tbaa !11
  %116 = load ptr, ptr %0, align 8, !tbaa !25
  %117 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %116, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %117, align 4, !tbaa !11
  %118 = load ptr, ptr %0, align 8, !tbaa !25
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 1
  %120 = load ptr, ptr %119, align 8, !tbaa !16
  tail call void %120(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %143

121:                                              ; preds = %75
  store i32 1, ptr %79, align 4, !tbaa !54
  %122 = load i32, ptr %50, align 4, !tbaa !294
  %123 = icmp eq i32 %122, 1
  br i1 %123, label %124, label %126

124:                                              ; preds = %121
  %125 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  store ptr @get_8bit_gray_row, ptr %125, align 8, !tbaa !297
  br label %130

126:                                              ; preds = %121
  %127 = load ptr, ptr %0, align 8, !tbaa !25
  %128 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %127, i64 0, i32 5
  store i32 1033, ptr %128, align 8, !tbaa !22
  %129 = load ptr, ptr %127, align 8, !tbaa !12
  tail call void %129(ptr noundef nonnull %0) #25
  br label %130

130:                                              ; preds = %126, %124
  %131 = load ptr, ptr %0, align 8, !tbaa !25
  %132 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 5
  store i32 1036, ptr %132, align 8, !tbaa !22
  %133 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %131, i64 0, i32 6
  store i32 %39, ptr %133, align 4, !tbaa !11
  %134 = load ptr, ptr %0, align 8, !tbaa !25
  %135 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %134, i64 0, i32 6, i32 0, i64 1
  store i32 %47, ptr %135, align 4, !tbaa !11
  %136 = load ptr, ptr %0, align 8, !tbaa !25
  %137 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %136, i64 0, i32 1
  %138 = load ptr, ptr %137, align 8, !tbaa !16
  tail call void %138(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %143

139:                                              ; preds = %75
  %140 = load ptr, ptr %0, align 8, !tbaa !25
  %141 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %140, i64 0, i32 5
  store i32 1033, ptr %141, align 8, !tbaa !22
  %142 = load ptr, ptr %140, align 8, !tbaa !12
  tail call void %142(ptr noundef nonnull %0) #25
  br label %143

143:                                              ; preds = %139, %130, %112, %91
  %144 = phi i32 [ 3, %139 ], [ 1, %130 ], [ 3, %112 ], [ 3, %91 ]
  br i1 %54, label %145, label %162

145:                                              ; preds = %143
  %146 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %147 = load ptr, ptr %146, align 8, !tbaa !55
  %148 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %147, i64 0, i32 4
  %149 = load ptr, ptr %148, align 8, !tbaa !298
  %150 = mul nuw nsw i32 %144, %39
  %151 = tail call ptr %149(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %150, i32 noundef %47, i32 noundef 1) #25
  %152 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr %151, ptr %152, align 8, !tbaa !299
  %153 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %154 = load ptr, ptr %153, align 8, !tbaa !47
  %155 = icmp eq ptr %154, null
  br i1 %155, label %160, label %156

156:                                              ; preds = %145
  %157 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %154, i64 0, i32 2
  %158 = load i32, ptr %157, align 4, !tbaa !300
  %159 = add nsw i32 %158, 1
  store i32 %159, ptr %157, align 4, !tbaa !300
  br label %160

160:                                              ; preds = %156, %145
  %161 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %161, align 8, !tbaa !302
  br label %174

162:                                              ; preds = %143
  %163 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  store ptr null, ptr %163, align 8, !tbaa !299
  %164 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %165 = load ptr, ptr %164, align 8, !tbaa !55
  %166 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %165, i64 0, i32 2
  %167 = load ptr, ptr %166, align 8, !tbaa !158
  %168 = mul nuw nsw i32 %144, %39
  %169 = tail call ptr %167(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %168, i32 noundef 1) #25
  %170 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %169, ptr %170, align 8, !tbaa !303
  %171 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %171, align 8, !tbaa !302
  %172 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  %173 = load ptr, ptr %172, align 8, !tbaa !297
  br label %174

174:                                              ; preds = %162, %160
  %175 = phi ptr [ %173, %162 ], [ @preload_image, %160 ]
  %176 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %175, ptr %176, align 8, !tbaa !304
  %177 = icmp eq i8 %17, 0
  br i1 %177, label %193, label %178

178:                                              ; preds = %174
  %179 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  br label %180

180:                                              ; preds = %191, %178
  %181 = phi i32 [ %18, %178 ], [ %182, %191 ]
  %182 = add nsw i32 %181, -1
  %183 = load ptr, ptr %4, align 8, !tbaa !293
  %184 = tail call i32 @getc(ptr noundef %183) #26
  %185 = icmp eq i32 %184, -1
  br i1 %185, label %186, label %191

186:                                              ; preds = %180
  %187 = load ptr, ptr %179, align 8, !tbaa !65
  %188 = load ptr, ptr %187, align 8, !tbaa !25
  %189 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %188, i64 0, i32 5
  store i32 42, ptr %189, align 8, !tbaa !22
  %190 = load ptr, ptr %188, align 8, !tbaa !12
  tail call void %190(ptr noundef nonnull %187) #25
  br label %191

191:                                              ; preds = %186, %180
  %192 = icmp eq i32 %182, 0
  br i1 %192, label %193, label %180, !llvm.loop !305

193:                                              ; preds = %191, %174
  %194 = icmp eq i32 %31, 0
  br i1 %194, label %269, label %195

195:                                              ; preds = %193
  %196 = icmp ult i32 %31, 257
  %197 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 3
  %198 = load i16, ptr %197, align 1
  %199 = icmp eq i16 %198, 0
  %200 = select i1 %196, i1 %199, i1 false
  br i1 %200, label %205, label %201

201:                                              ; preds = %195
  %202 = load ptr, ptr %0, align 8, !tbaa !25
  %203 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %202, i64 0, i32 5
  store i32 1032, ptr %203, align 8, !tbaa !22
  %204 = load ptr, ptr %202, align 8, !tbaa !12
  tail call void %204(ptr noundef nonnull %0) #25
  br label %205

205:                                              ; preds = %201, %195
  %206 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %207 = load ptr, ptr %206, align 8, !tbaa !55
  %208 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %207, i64 0, i32 2
  %209 = load ptr, ptr %208, align 8, !tbaa !158
  %210 = tail call ptr %209(ptr noundef %0, i32 noundef 1, i32 noundef %31, i32 noundef 3) #25
  %211 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr %210, ptr %211, align 8, !tbaa !306
  %212 = getelementptr inbounds [18 x i8], ptr %3, i64 0, i64 7
  %213 = load i8, ptr %212, align 1, !tbaa !11
  %214 = icmp eq i8 %213, 24
  br i1 %214, label %221, label %215

215:                                              ; preds = %205
  %216 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %217 = load ptr, ptr %216, align 8, !tbaa !65
  %218 = load ptr, ptr %217, align 8, !tbaa !25
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %218, i64 0, i32 5
  store i32 1032, ptr %219, align 8, !tbaa !22
  %220 = load ptr, ptr %218, align 8, !tbaa !12
  tail call void %220(ptr noundef nonnull %217) #25
  br label %221

221:                                              ; preds = %215, %205
  %222 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 1
  %223 = zext i32 %31 to i64
  br label %224

224:                                              ; preds = %262, %221
  %225 = phi i64 [ 0, %221 ], [ %267, %262 ]
  %226 = load ptr, ptr %4, align 8, !tbaa !293
  %227 = tail call i32 @getc(ptr noundef %226) #26
  %228 = icmp eq i32 %227, -1
  br i1 %228, label %229, label %234

229:                                              ; preds = %224
  %230 = load ptr, ptr %222, align 8, !tbaa !65
  %231 = load ptr, ptr %230, align 8, !tbaa !25
  %232 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %231, i64 0, i32 5
  store i32 42, ptr %232, align 8, !tbaa !22
  %233 = load ptr, ptr %231, align 8, !tbaa !12
  tail call void %233(ptr noundef nonnull %230) #25
  br label %234

234:                                              ; preds = %229, %224
  %235 = trunc i32 %227 to i8
  %236 = load ptr, ptr %211, align 8, !tbaa !306
  %237 = getelementptr inbounds ptr, ptr %236, i64 2
  %238 = load ptr, ptr %237, align 8, !tbaa !7
  %239 = getelementptr inbounds i8, ptr %238, i64 %225
  store i8 %235, ptr %239, align 1, !tbaa !11
  %240 = load ptr, ptr %4, align 8, !tbaa !293
  %241 = tail call i32 @getc(ptr noundef %240) #26
  %242 = icmp eq i32 %241, -1
  br i1 %242, label %243, label %248

243:                                              ; preds = %234
  %244 = load ptr, ptr %222, align 8, !tbaa !65
  %245 = load ptr, ptr %244, align 8, !tbaa !25
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %245, i64 0, i32 5
  store i32 42, ptr %246, align 8, !tbaa !22
  %247 = load ptr, ptr %245, align 8, !tbaa !12
  tail call void %247(ptr noundef nonnull %244) #25
  br label %248

248:                                              ; preds = %243, %234
  %249 = trunc i32 %241 to i8
  %250 = load ptr, ptr %211, align 8, !tbaa !306
  %251 = getelementptr inbounds ptr, ptr %250, i64 1
  %252 = load ptr, ptr %251, align 8, !tbaa !7
  %253 = getelementptr inbounds i8, ptr %252, i64 %225
  store i8 %249, ptr %253, align 1, !tbaa !11
  %254 = load ptr, ptr %4, align 8, !tbaa !293
  %255 = tail call i32 @getc(ptr noundef %254) #26
  %256 = icmp eq i32 %255, -1
  br i1 %256, label %257, label %262

257:                                              ; preds = %248
  %258 = load ptr, ptr %222, align 8, !tbaa !65
  %259 = load ptr, ptr %258, align 8, !tbaa !25
  %260 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %259, i64 0, i32 5
  store i32 42, ptr %260, align 8, !tbaa !22
  %261 = load ptr, ptr %259, align 8, !tbaa !12
  tail call void %261(ptr noundef nonnull %258) #25
  br label %262

262:                                              ; preds = %257, %248
  %263 = trunc i32 %255 to i8
  %264 = load ptr, ptr %211, align 8, !tbaa !306
  %265 = load ptr, ptr %264, align 8, !tbaa !7
  %266 = getelementptr inbounds i8, ptr %265, i64 %225
  store i8 %263, ptr %266, align 1, !tbaa !11
  %267 = add nuw nsw i64 %225, 1
  %268 = icmp eq i64 %267, %223
  br i1 %268, label %277, label %224, !llvm.loop !307

269:                                              ; preds = %193
  %270 = icmp eq i8 %20, 0
  br i1 %270, label %275, label %271

271:                                              ; preds = %269
  %272 = load ptr, ptr %0, align 8, !tbaa !25
  %273 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %272, i64 0, i32 5
  store i32 1033, ptr %273, align 8, !tbaa !22
  %274 = load ptr, ptr %272, align 8, !tbaa !12
  tail call void %274(ptr noundef nonnull %0) #25
  br label %275

275:                                              ; preds = %271, %269
  %276 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  store ptr null, ptr %276, align 8, !tbaa !306
  br label %277

277:                                              ; preds = %275, %262
  %278 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 %144, ptr %278, align 8, !tbaa !99
  %279 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %279, align 8, !tbaa !58
  %280 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %39, ptr %280, align 8, !tbaa !98
  %281 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %47, ptr %281, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 18, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @getc(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @ungetc(i32 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_bmp(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [14 x i8], align 2
  %4 = alloca [64 x i8], align 16
  call void @llvm.lifetime.start.p0(i64 14, ptr nonnull %3) #23
  call void @llvm.lifetime.start.p0(i64 64, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %6 = load ptr, ptr %5, align 8, !tbaa !308
  %7 = call i64 @fread(ptr noundef nonnull %3, i64 noundef 1, i64 noundef 14, ptr noundef %6) #26
  %8 = icmp eq i64 %7, 14
  br i1 %8, label %13, label %9

9:                                                ; preds = %2
  %10 = load ptr, ptr %0, align 8, !tbaa !25
  %11 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %10, i64 0, i32 5
  store i32 42, ptr %11, align 8, !tbaa !22
  %12 = load ptr, ptr %10, align 8, !tbaa !12
  tail call void %12(ptr noundef nonnull %0) #25
  br label %13

13:                                               ; preds = %9, %2
  %14 = load i16, ptr %3, align 2
  %15 = icmp eq i16 %14, 19778
  br i1 %15, label %20, label %16

16:                                               ; preds = %13
  %17 = load ptr, ptr %0, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 1007, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void %19(ptr noundef %0) #25
  br label %20

20:                                               ; preds = %16, %13
  %21 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 10
  %22 = load i16, ptr %21, align 2
  %23 = zext i16 %22 to i64
  %24 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 12
  %25 = load i8, ptr %24, align 2, !tbaa !11
  %26 = zext i8 %25 to i64
  %27 = shl nuw nsw i64 %26, 16
  %28 = or i64 %27, %23
  %29 = getelementptr inbounds [14 x i8], ptr %3, i64 0, i64 13
  %30 = load i8, ptr %29, align 1, !tbaa !11
  %31 = zext i8 %30 to i64
  %32 = shl nuw nsw i64 %31, 24
  %33 = or i64 %28, %32
  %34 = load ptr, ptr %5, align 8, !tbaa !308
  %35 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 4, ptr noundef %34) #26
  %36 = icmp eq i64 %35, 4
  br i1 %36, label %41, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr %0, align 8, !tbaa !25
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %38, i64 0, i32 5
  store i32 42, ptr %39, align 8, !tbaa !22
  %40 = load ptr, ptr %38, align 8, !tbaa !12
  tail call void %40(ptr noundef nonnull %0) #25
  br label %41

41:                                               ; preds = %37, %20
  %42 = load i16, ptr %4, align 16
  %43 = zext i16 %42 to i64
  %44 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 2
  %45 = load i8, ptr %44, align 2, !tbaa !11
  %46 = zext i8 %45 to i64
  %47 = shl nuw nsw i64 %46, 16
  %48 = or i64 %47, %43
  %49 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 3
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = zext i8 %50 to i64
  %52 = shl nuw nsw i64 %51, 24
  %53 = or i64 %48, %52
  %54 = add nsw i64 %53, -65
  %55 = icmp ult i64 %54, -53
  br i1 %55, label %56, label %60

56:                                               ; preds = %41
  %57 = load ptr, ptr %0, align 8, !tbaa !25
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %57, i64 0, i32 5
  store i32 1003, ptr %58, align 8, !tbaa !22
  %59 = load ptr, ptr %57, align 8, !tbaa !12
  tail call void %59(ptr noundef %0) #25
  br label %60

60:                                               ; preds = %56, %41
  %61 = getelementptr inbounds i8, ptr %4, i64 4
  %62 = add nsw i64 %53, -4
  %63 = load ptr, ptr %5, align 8, !tbaa !308
  %64 = call i64 @fread(ptr noundef nonnull %61, i64 noundef 1, i64 noundef %62, ptr noundef %63) #26
  %65 = icmp eq i64 %64, %62
  br i1 %65, label %70, label %66

66:                                               ; preds = %60
  %67 = load ptr, ptr %0, align 8, !tbaa !25
  %68 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %67, i64 0, i32 5
  store i32 42, ptr %68, align 8, !tbaa !22
  %69 = load ptr, ptr %67, align 8, !tbaa !12
  tail call void %69(ptr noundef nonnull %0) #25
  br label %70

70:                                               ; preds = %66, %60
  %71 = trunc i64 %53 to i32
  switch i32 %71, label %263 [
    i32 12, label %72
    i32 40, label %131
    i32 64, label %131
  ]

72:                                               ; preds = %70
  %73 = load i8, ptr %61, align 4, !tbaa !11
  %74 = zext i8 %73 to i32
  %75 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 5
  %76 = load i8, ptr %75, align 1, !tbaa !11
  %77 = zext i8 %76 to i32
  %78 = shl nuw nsw i32 %77, 8
  %79 = or i32 %78, %74
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %82 = load i8, ptr %81, align 2, !tbaa !11
  %83 = zext i8 %82 to i32
  %84 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = zext i8 %85 to i32
  %87 = shl nuw nsw i32 %86, 8
  %88 = or i32 %87, %83
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %91 = load i16, ptr %90, align 8
  %92 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %93 = load i8, ptr %92, align 2, !tbaa !11
  %94 = zext i8 %93 to i32
  %95 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %96 = load i8, ptr %95, align 1, !tbaa !11
  %97 = zext i8 %96 to i32
  %98 = shl nuw nsw i32 %97, 8
  %99 = or i32 %98, %94
  %100 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %99, ptr %100, align 8, !tbaa !309
  %101 = trunc i32 %99 to i16
  switch i16 %101, label %120 [
    i16 8, label %102
    i16 24, label %111
  ]

102:                                              ; preds = %72
  %103 = load ptr, ptr %0, align 8, !tbaa !25
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 1011, ptr %104, align 8, !tbaa !22
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 6
  store i32 %79, ptr %105, align 4, !tbaa !11
  %106 = load ptr, ptr %0, align 8, !tbaa !25
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 6, i32 0, i64 1
  store i32 %88, ptr %107, align 4, !tbaa !11
  %108 = load ptr, ptr %0, align 8, !tbaa !25
  %109 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %108, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !16
  tail call void %110(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %124

111:                                              ; preds = %72
  %112 = load ptr, ptr %0, align 8, !tbaa !25
  %113 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 5
  store i32 1010, ptr %113, align 8, !tbaa !22
  %114 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %112, i64 0, i32 6
  store i32 %79, ptr %114, align 4, !tbaa !11
  %115 = load ptr, ptr %0, align 8, !tbaa !25
  %116 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %115, i64 0, i32 6, i32 0, i64 1
  store i32 %88, ptr %116, align 4, !tbaa !11
  %117 = load ptr, ptr %0, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i64 0, i32 1
  %119 = load ptr, ptr %118, align 8, !tbaa !16
  tail call void %119(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %124

120:                                              ; preds = %72
  %121 = load ptr, ptr %0, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 1002, ptr %122, align 8, !tbaa !22
  %123 = load ptr, ptr %121, align 8, !tbaa !12
  tail call void %123(ptr noundef nonnull %0) #25
  br label %124

124:                                              ; preds = %120, %111, %102
  %125 = phi i32 [ 0, %120 ], [ 0, %111 ], [ 3, %102 ]
  %126 = icmp eq i16 %91, 1
  br i1 %126, label %269, label %127

127:                                              ; preds = %124
  %128 = load ptr, ptr %0, align 8, !tbaa !25
  %129 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %128, i64 0, i32 5
  store i32 1004, ptr %129, align 8, !tbaa !22
  %130 = load ptr, ptr %128, align 8, !tbaa !12
  tail call void %130(ptr noundef nonnull %0) #25
  br label %269

131:                                              ; preds = %70, %70
  %132 = load i16, ptr %61, align 4
  %133 = zext i16 %132 to i64
  %134 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 6
  %135 = load i8, ptr %134, align 2, !tbaa !11
  %136 = zext i8 %135 to i64
  %137 = shl nuw nsw i64 %136, 16
  %138 = or i64 %137, %133
  %139 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 7
  %140 = load i8, ptr %139, align 1, !tbaa !11
  %141 = zext i8 %140 to i64
  %142 = shl nuw nsw i64 %141, 24
  %143 = or i64 %138, %142
  %144 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 8
  %145 = load i16, ptr %144, align 8
  %146 = zext i16 %145 to i64
  %147 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 10
  %148 = load i8, ptr %147, align 2, !tbaa !11
  %149 = zext i8 %148 to i64
  %150 = shl nuw nsw i64 %149, 16
  %151 = or i64 %150, %146
  %152 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 11
  %153 = load i8, ptr %152, align 1, !tbaa !11
  %154 = zext i8 %153 to i64
  %155 = shl nuw nsw i64 %154, 24
  %156 = or i64 %151, %155
  %157 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 12
  %158 = load i16, ptr %157, align 4
  %159 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 14
  %160 = load i8, ptr %159, align 2, !tbaa !11
  %161 = zext i8 %160 to i32
  %162 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 15
  %163 = load i8, ptr %162, align 1, !tbaa !11
  %164 = zext i8 %163 to i32
  %165 = shl nuw nsw i32 %164, 8
  %166 = or i32 %165, %161
  %167 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  store i32 %166, ptr %167, align 8, !tbaa !309
  %168 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 16
  %169 = load i32, ptr %168, align 16
  %170 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 24
  %171 = load i16, ptr %170, align 8
  %172 = zext i16 %171 to i64
  %173 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 26
  %174 = load i8, ptr %173, align 2, !tbaa !11
  %175 = zext i8 %174 to i64
  %176 = shl nuw nsw i64 %175, 16
  %177 = or i64 %176, %172
  %178 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 27
  %179 = load i8, ptr %178, align 1, !tbaa !11
  %180 = zext i8 %179 to i64
  %181 = shl nuw nsw i64 %180, 24
  %182 = or i64 %177, %181
  %183 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 28
  %184 = load i16, ptr %183, align 4
  %185 = zext i16 %184 to i64
  %186 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 30
  %187 = load i8, ptr %186, align 2, !tbaa !11
  %188 = zext i8 %187 to i64
  %189 = shl nuw nsw i64 %188, 16
  %190 = or i64 %189, %185
  %191 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 31
  %192 = load i8, ptr %191, align 1, !tbaa !11
  %193 = zext i8 %192 to i64
  %194 = shl nuw nsw i64 %193, 24
  %195 = or i64 %190, %194
  %196 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 32
  %197 = load i16, ptr %196, align 16
  %198 = zext i16 %197 to i64
  %199 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 34
  %200 = load i8, ptr %199, align 2, !tbaa !11
  %201 = zext i8 %200 to i64
  %202 = shl nuw nsw i64 %201, 16
  %203 = or i64 %202, %198
  %204 = getelementptr inbounds [64 x i8], ptr %4, i64 0, i64 35
  %205 = load i8, ptr %204, align 1, !tbaa !11
  %206 = zext i8 %205 to i64
  %207 = shl nuw nsw i64 %206, 24
  %208 = or i64 %203, %207
  %209 = trunc i32 %166 to i16
  switch i16 %209, label %232 [
    i16 8, label %210
    i16 24, label %221
  ]

210:                                              ; preds = %131
  %211 = load ptr, ptr %0, align 8, !tbaa !25
  %212 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %211, i64 0, i32 5
  store i32 1009, ptr %212, align 8, !tbaa !22
  %213 = trunc i64 %143 to i32
  %214 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %211, i64 0, i32 6
  store i32 %213, ptr %214, align 4, !tbaa !11
  %215 = trunc i64 %156 to i32
  %216 = load ptr, ptr %0, align 8, !tbaa !25
  %217 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %216, i64 0, i32 6, i32 0, i64 1
  store i32 %215, ptr %217, align 4, !tbaa !11
  %218 = load ptr, ptr %0, align 8, !tbaa !25
  %219 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %218, i64 0, i32 1
  %220 = load ptr, ptr %219, align 8, !tbaa !16
  tail call void %220(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %236

221:                                              ; preds = %131
  %222 = load ptr, ptr %0, align 8, !tbaa !25
  %223 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %222, i64 0, i32 5
  store i32 1008, ptr %223, align 8, !tbaa !22
  %224 = trunc i64 %143 to i32
  %225 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %222, i64 0, i32 6
  store i32 %224, ptr %225, align 4, !tbaa !11
  %226 = trunc i64 %156 to i32
  %227 = load ptr, ptr %0, align 8, !tbaa !25
  %228 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %227, i64 0, i32 6, i32 0, i64 1
  store i32 %226, ptr %228, align 4, !tbaa !11
  %229 = load ptr, ptr %0, align 8, !tbaa !25
  %230 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %229, i64 0, i32 1
  %231 = load ptr, ptr %230, align 8, !tbaa !16
  tail call void %231(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %236

232:                                              ; preds = %131
  %233 = load ptr, ptr %0, align 8, !tbaa !25
  %234 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %233, i64 0, i32 5
  store i32 1002, ptr %234, align 8, !tbaa !22
  %235 = load ptr, ptr %233, align 8, !tbaa !12
  tail call void %235(ptr noundef nonnull %0) #25
  br label %236

236:                                              ; preds = %232, %221, %210
  %237 = phi i32 [ 0, %232 ], [ 0, %221 ], [ 4, %210 ]
  %238 = icmp eq i16 %158, 1
  br i1 %238, label %243, label %239

239:                                              ; preds = %236
  %240 = load ptr, ptr %0, align 8, !tbaa !25
  %241 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %240, i64 0, i32 5
  store i32 1004, ptr %241, align 8, !tbaa !22
  %242 = load ptr, ptr %240, align 8, !tbaa !12
  tail call void %242(ptr noundef nonnull %0) #25
  br label %243

243:                                              ; preds = %239, %236
  %244 = icmp eq i32 %169, 0
  br i1 %244, label %249, label %245

245:                                              ; preds = %243
  %246 = load ptr, ptr %0, align 8, !tbaa !25
  %247 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %246, i64 0, i32 5
  store i32 1006, ptr %247, align 8, !tbaa !22
  %248 = load ptr, ptr %246, align 8, !tbaa !12
  tail call void %248(ptr noundef nonnull %0) #25
  br label %249

249:                                              ; preds = %245, %243
  %250 = icmp ne i64 %182, 0
  %251 = icmp ne i64 %195, 0
  %252 = select i1 %250, i1 %251, i1 false
  br i1 %252, label %253, label %269

253:                                              ; preds = %249
  %254 = trunc i64 %182 to i32
  %255 = udiv i32 %254, 100
  %256 = trunc i32 %255 to i16
  %257 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  store i16 %256, ptr %257, align 2, !tbaa !63
  %258 = trunc i64 %195 to i32
  %259 = udiv i32 %258, 100
  %260 = trunc i32 %259 to i16
  %261 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  store i16 %260, ptr %261, align 8, !tbaa !64
  %262 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  store i8 2, ptr %262, align 4, !tbaa !62
  br label %269

263:                                              ; preds = %70
  %264 = load ptr, ptr %0, align 8, !tbaa !25
  %265 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %264, i64 0, i32 5
  store i32 1003, ptr %265, align 8, !tbaa !22
  %266 = load ptr, ptr %264, align 8, !tbaa !12
  tail call void %266(ptr noundef nonnull %0) #25
  %267 = add nsw i64 %33, -14
  %268 = sub nsw i64 %267, %53
  br label %411

269:                                              ; preds = %253, %249, %127, %124
  %270 = phi i64 [ %156, %253 ], [ %156, %249 ], [ %89, %127 ], [ %89, %124 ]
  %271 = phi i64 [ %208, %253 ], [ %208, %249 ], [ 0, %127 ], [ 0, %124 ]
  %272 = phi i32 [ %237, %253 ], [ %237, %249 ], [ %125, %127 ], [ %125, %124 ]
  %273 = phi i64 [ %143, %253 ], [ %143, %249 ], [ %80, %127 ], [ %80, %124 ]
  %274 = add nsw i64 %33, -14
  %275 = sub nsw i64 %274, %53
  %276 = icmp eq i32 %272, 0
  br i1 %276, label %411, label %277

277:                                              ; preds = %269
  %278 = icmp eq i64 %271, 0
  br i1 %278, label %285, label %279

279:                                              ; preds = %277
  %280 = icmp ugt i64 %271, 256
  br i1 %280, label %281, label %285

281:                                              ; preds = %279
  %282 = load ptr, ptr %0, align 8, !tbaa !25
  %283 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %282, i64 0, i32 5
  store i32 1001, ptr %283, align 8, !tbaa !22
  %284 = load ptr, ptr %282, align 8, !tbaa !12
  tail call void %284(ptr noundef nonnull %0) #25
  br label %285

285:                                              ; preds = %281, %279, %277
  %286 = phi i64 [ %271, %281 ], [ %271, %279 ], [ 256, %277 ]
  %287 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %288 = load ptr, ptr %287, align 8, !tbaa !55
  %289 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %288, i64 0, i32 2
  %290 = load ptr, ptr %289, align 8, !tbaa !158
  %291 = trunc i64 %286 to i32
  %292 = tail call ptr %290(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %291, i32 noundef 3) #25
  %293 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  store ptr %292, ptr %293, align 8, !tbaa !310
  switch i32 %272, label %401 [
    i32 3, label %298
    i32 4, label %294
  ]

294:                                              ; preds = %285
  %295 = icmp sgt i32 %291, 0
  br i1 %295, label %296, label %407

296:                                              ; preds = %294
  %297 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  br label %347

298:                                              ; preds = %285
  %299 = icmp sgt i32 %291, 0
  br i1 %299, label %300, label %407

300:                                              ; preds = %298
  %301 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  br label %302

302:                                              ; preds = %340, %300
  %303 = phi i64 [ 0, %300 ], [ %345, %340 ]
  %304 = load ptr, ptr %5, align 8, !tbaa !308
  %305 = tail call i32 @getc(ptr noundef %304) #26
  %306 = icmp eq i32 %305, -1
  br i1 %306, label %307, label %312

307:                                              ; preds = %302
  %308 = load ptr, ptr %301, align 8, !tbaa !69
  %309 = load ptr, ptr %308, align 8, !tbaa !25
  %310 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %309, i64 0, i32 5
  store i32 42, ptr %310, align 8, !tbaa !22
  %311 = load ptr, ptr %309, align 8, !tbaa !12
  tail call void %311(ptr noundef nonnull %308) #25
  br label %312

312:                                              ; preds = %307, %302
  %313 = trunc i32 %305 to i8
  %314 = load ptr, ptr %293, align 8, !tbaa !310
  %315 = getelementptr inbounds ptr, ptr %314, i64 2
  %316 = load ptr, ptr %315, align 8, !tbaa !7
  %317 = getelementptr inbounds i8, ptr %316, i64 %303
  store i8 %313, ptr %317, align 1, !tbaa !11
  %318 = load ptr, ptr %5, align 8, !tbaa !308
  %319 = tail call i32 @getc(ptr noundef %318) #26
  %320 = icmp eq i32 %319, -1
  br i1 %320, label %321, label %326

321:                                              ; preds = %312
  %322 = load ptr, ptr %301, align 8, !tbaa !69
  %323 = load ptr, ptr %322, align 8, !tbaa !25
  %324 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %323, i64 0, i32 5
  store i32 42, ptr %324, align 8, !tbaa !22
  %325 = load ptr, ptr %323, align 8, !tbaa !12
  tail call void %325(ptr noundef nonnull %322) #25
  br label %326

326:                                              ; preds = %321, %312
  %327 = trunc i32 %319 to i8
  %328 = load ptr, ptr %293, align 8, !tbaa !310
  %329 = getelementptr inbounds ptr, ptr %328, i64 1
  %330 = load ptr, ptr %329, align 8, !tbaa !7
  %331 = getelementptr inbounds i8, ptr %330, i64 %303
  store i8 %327, ptr %331, align 1, !tbaa !11
  %332 = load ptr, ptr %5, align 8, !tbaa !308
  %333 = tail call i32 @getc(ptr noundef %332) #26
  %334 = icmp eq i32 %333, -1
  br i1 %334, label %335, label %340

335:                                              ; preds = %326
  %336 = load ptr, ptr %301, align 8, !tbaa !69
  %337 = load ptr, ptr %336, align 8, !tbaa !25
  %338 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %337, i64 0, i32 5
  store i32 42, ptr %338, align 8, !tbaa !22
  %339 = load ptr, ptr %337, align 8, !tbaa !12
  tail call void %339(ptr noundef nonnull %336) #25
  br label %340

340:                                              ; preds = %335, %326
  %341 = trunc i32 %333 to i8
  %342 = load ptr, ptr %293, align 8, !tbaa !310
  %343 = load ptr, ptr %342, align 8, !tbaa !7
  %344 = getelementptr inbounds i8, ptr %343, i64 %303
  store i8 %341, ptr %344, align 1, !tbaa !11
  %345 = add nuw nsw i64 %303, 1
  %346 = icmp eq i64 %345, %286
  br i1 %346, label %407, label %302, !llvm.loop !311

347:                                              ; preds = %398, %296
  %348 = phi i64 [ 0, %296 ], [ %399, %398 ]
  %349 = load ptr, ptr %5, align 8, !tbaa !308
  %350 = tail call i32 @getc(ptr noundef %349) #26
  %351 = icmp eq i32 %350, -1
  br i1 %351, label %352, label %357

352:                                              ; preds = %347
  %353 = load ptr, ptr %297, align 8, !tbaa !69
  %354 = load ptr, ptr %353, align 8, !tbaa !25
  %355 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %354, i64 0, i32 5
  store i32 42, ptr %355, align 8, !tbaa !22
  %356 = load ptr, ptr %354, align 8, !tbaa !12
  tail call void %356(ptr noundef nonnull %353) #25
  br label %357

357:                                              ; preds = %352, %347
  %358 = trunc i32 %350 to i8
  %359 = load ptr, ptr %293, align 8, !tbaa !310
  %360 = getelementptr inbounds ptr, ptr %359, i64 2
  %361 = load ptr, ptr %360, align 8, !tbaa !7
  %362 = getelementptr inbounds i8, ptr %361, i64 %348
  store i8 %358, ptr %362, align 1, !tbaa !11
  %363 = load ptr, ptr %5, align 8, !tbaa !308
  %364 = tail call i32 @getc(ptr noundef %363) #26
  %365 = icmp eq i32 %364, -1
  br i1 %365, label %366, label %371

366:                                              ; preds = %357
  %367 = load ptr, ptr %297, align 8, !tbaa !69
  %368 = load ptr, ptr %367, align 8, !tbaa !25
  %369 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %368, i64 0, i32 5
  store i32 42, ptr %369, align 8, !tbaa !22
  %370 = load ptr, ptr %368, align 8, !tbaa !12
  tail call void %370(ptr noundef nonnull %367) #25
  br label %371

371:                                              ; preds = %366, %357
  %372 = trunc i32 %364 to i8
  %373 = load ptr, ptr %293, align 8, !tbaa !310
  %374 = getelementptr inbounds ptr, ptr %373, i64 1
  %375 = load ptr, ptr %374, align 8, !tbaa !7
  %376 = getelementptr inbounds i8, ptr %375, i64 %348
  store i8 %372, ptr %376, align 1, !tbaa !11
  %377 = load ptr, ptr %5, align 8, !tbaa !308
  %378 = tail call i32 @getc(ptr noundef %377) #26
  %379 = icmp eq i32 %378, -1
  br i1 %379, label %380, label %385

380:                                              ; preds = %371
  %381 = load ptr, ptr %297, align 8, !tbaa !69
  %382 = load ptr, ptr %381, align 8, !tbaa !25
  %383 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %382, i64 0, i32 5
  store i32 42, ptr %383, align 8, !tbaa !22
  %384 = load ptr, ptr %382, align 8, !tbaa !12
  tail call void %384(ptr noundef nonnull %381) #25
  br label %385

385:                                              ; preds = %380, %371
  %386 = trunc i32 %378 to i8
  %387 = load ptr, ptr %293, align 8, !tbaa !310
  %388 = load ptr, ptr %387, align 8, !tbaa !7
  %389 = getelementptr inbounds i8, ptr %388, i64 %348
  store i8 %386, ptr %389, align 1, !tbaa !11
  %390 = load ptr, ptr %5, align 8, !tbaa !308
  %391 = tail call i32 @getc(ptr noundef %390) #26
  %392 = icmp eq i32 %391, -1
  br i1 %392, label %393, label %398

393:                                              ; preds = %385
  %394 = load ptr, ptr %297, align 8, !tbaa !69
  %395 = load ptr, ptr %394, align 8, !tbaa !25
  %396 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %395, i64 0, i32 5
  store i32 42, ptr %396, align 8, !tbaa !22
  %397 = load ptr, ptr %395, align 8, !tbaa !12
  tail call void %397(ptr noundef nonnull %394) #25
  br label %398

398:                                              ; preds = %393, %385
  %399 = add nuw nsw i64 %348, 1
  %400 = icmp eq i64 %399, %286
  br i1 %400, label %407, label %347, !llvm.loop !312

401:                                              ; preds = %285
  %402 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  %403 = load ptr, ptr %402, align 8, !tbaa !69
  %404 = load ptr, ptr %403, align 8, !tbaa !25
  %405 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %404, i64 0, i32 5
  store i32 1001, ptr %405, align 8, !tbaa !22
  %406 = load ptr, ptr %404, align 8, !tbaa !12
  tail call void %406(ptr noundef nonnull %403) #25
  br label %407

407:                                              ; preds = %401, %398, %340, %298, %294
  %408 = zext i32 %272 to i64
  %409 = mul nuw nsw i64 %286, %408
  %410 = sub nsw i64 %275, %409
  br label %411

411:                                              ; preds = %407, %269, %263
  %412 = phi i64 [ %273, %407 ], [ %273, %269 ], [ 0, %263 ]
  %413 = phi i64 [ %270, %407 ], [ %270, %269 ], [ 0, %263 ]
  %414 = phi i64 [ %410, %407 ], [ %275, %269 ], [ %268, %263 ]
  %415 = icmp slt i64 %414, 0
  br i1 %415, label %416, label %420

416:                                              ; preds = %411
  %417 = load ptr, ptr %0, align 8, !tbaa !25
  %418 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %417, i64 0, i32 5
  store i32 1003, ptr %418, align 8, !tbaa !22
  %419 = load ptr, ptr %417, align 8, !tbaa !12
  tail call void %419(ptr noundef nonnull %0) #25
  br label %437

420:                                              ; preds = %411
  %421 = icmp eq i64 %414, 0
  br i1 %421, label %437, label %422

422:                                              ; preds = %420
  %423 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 1
  br label %424

424:                                              ; preds = %435, %422
  %425 = phi i64 [ %414, %422 ], [ %426, %435 ]
  %426 = add nsw i64 %425, -1
  %427 = load ptr, ptr %5, align 8, !tbaa !308
  %428 = tail call i32 @getc(ptr noundef %427) #26
  %429 = icmp eq i32 %428, -1
  br i1 %429, label %430, label %435

430:                                              ; preds = %424
  %431 = load ptr, ptr %423, align 8, !tbaa !69
  %432 = load ptr, ptr %431, align 8, !tbaa !25
  %433 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %432, i64 0, i32 5
  store i32 42, ptr %433, align 8, !tbaa !22
  %434 = load ptr, ptr %432, align 8, !tbaa !12
  tail call void %434(ptr noundef nonnull %431) #25
  br label %435

435:                                              ; preds = %430, %424
  %436 = icmp ugt i64 %425, 1
  br i1 %436, label %424, label %437, !llvm.loop !313

437:                                              ; preds = %435, %420, %416
  %438 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %439 = load i32, ptr %438, align 8, !tbaa !309
  %440 = icmp eq i32 %439, 24
  %441 = mul nuw nsw i64 %412, 3
  %442 = select i1 %440, i64 %441, i64 %412
  %443 = trunc i64 %442 to i32
  %444 = sub i32 0, %443
  %445 = and i32 %444, 3
  %446 = add i32 %445, %443
  %447 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 5
  store i32 %446, ptr %447, align 4, !tbaa !314
  %448 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %449 = load ptr, ptr %448, align 8, !tbaa !55
  %450 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %449, i64 0, i32 4
  %451 = load ptr, ptr %450, align 8, !tbaa !298
  %452 = trunc i64 %413 to i32
  %453 = tail call ptr %451(ptr noundef %0, i32 noundef 1, i32 noundef 0, i32 noundef %446, i32 noundef %452, i32 noundef 1) #25
  %454 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  store ptr %453, ptr %454, align 8, !tbaa !315
  %455 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @preload_image.248, ptr %455, align 8, !tbaa !316
  %456 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %457 = load ptr, ptr %456, align 8, !tbaa !47
  %458 = icmp eq ptr %457, null
  br i1 %458, label %463, label %459

459:                                              ; preds = %437
  %460 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %457, i64 0, i32 2
  %461 = load i32, ptr %460, align 4, !tbaa !300
  %462 = add nsw i32 %461, 1
  store i32 %462, ptr %460, align 4, !tbaa !300
  br label %463

463:                                              ; preds = %459, %437
  %464 = load ptr, ptr %448, align 8, !tbaa !55
  %465 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %464, i64 0, i32 2
  %466 = load ptr, ptr %465, align 8, !tbaa !158
  %467 = trunc i64 %412 to i32
  %468 = mul i32 %467, 3
  %469 = tail call ptr %466(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %468, i32 noundef 1) #25
  %470 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %469, ptr %470, align 8, !tbaa !317
  %471 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %471, align 8, !tbaa !318
  %472 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %472, align 4, !tbaa !54
  %473 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %473, align 8, !tbaa !99
  %474 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %474, align 8, !tbaa !58
  %475 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %467, ptr %475, align 8, !tbaa !98
  %476 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %452, ptr %476, align 4, !tbaa !97
  call void @llvm.lifetime.end.p0(i64 64, ptr nonnull %4) #23
  call void @llvm.lifetime.end.p0(i64 14, ptr nonnull %3) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_gif(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = alloca [256 x i8], align 16
  %4 = alloca [10 x i8], align 1
  call void @llvm.lifetime.start.p0(i64 10, ptr nonnull %4) #23
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !55
  %7 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !158
  %9 = tail call ptr %8(ptr noundef %0, i32 noundef 1, i32 noundef 256, i32 noundef 3) #25
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !319
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !320
  %13 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 6, ptr noundef %12) #26
  %14 = icmp eq i64 %13, 6
  br i1 %14, label %19, label %15

15:                                               ; preds = %2
  %16 = load ptr, ptr %0, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 1016, ptr %17, align 8, !tbaa !22
  %18 = load ptr, ptr %16, align 8, !tbaa !12
  tail call void %18(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %15, %2
  %20 = load i8, ptr %4, align 1, !tbaa !11
  %21 = icmp ne i8 %20, 71
  %22 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 1
  %23 = load i8, ptr %22, align 1
  %24 = icmp ne i8 %23, 73
  %25 = select i1 %21, i1 true, i1 %24
  %26 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 2
  %27 = load i8, ptr %26, align 1
  %28 = icmp ne i8 %27, 70
  %29 = select i1 %25, i1 true, i1 %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load ptr, ptr %0, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 1016, ptr %32, align 8, !tbaa !22
  %33 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void %33(ptr noundef nonnull %0) #25
  br label %34

34:                                               ; preds = %30, %19
  %35 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 3
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = sext i8 %36 to i32
  %38 = icmp ne i8 %36, 56
  %39 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 4
  %40 = load i8, ptr %39, align 1
  %41 = icmp ne i8 %40, 55
  %42 = select i1 %38, i1 true, i1 %41
  %43 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 5
  %44 = load i8, ptr %43, align 1
  %45 = icmp ne i8 %44, 97
  %46 = select i1 %42, i1 true, i1 %45
  br i1 %46, label %47, label %61

47:                                               ; preds = %34
  %48 = icmp ne i8 %40, 57
  %49 = select i1 %38, i1 true, i1 %48
  %50 = select i1 %49, i1 true, i1 %45
  br i1 %50, label %51, label %61

51:                                               ; preds = %47
  %52 = load ptr, ptr %0, align 8, !tbaa !25
  %53 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6
  store i32 %37, ptr %53, align 4, !tbaa !121
  %54 = sext i8 %40 to i32
  %55 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 1
  store i32 %54, ptr %55, align 4, !tbaa !121
  %56 = sext i8 %44 to i32
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 6, i32 0, i64 2
  store i32 %56, ptr %57, align 4, !tbaa !121
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 5
  store i32 1018, ptr %58, align 8, !tbaa !22
  %59 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %52, i64 0, i32 1
  %60 = load ptr, ptr %59, align 8, !tbaa !16
  tail call void %60(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %61

61:                                               ; preds = %51, %47, %34
  %62 = load ptr, ptr %11, align 8, !tbaa !320
  %63 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 7, ptr noundef %62) #26
  %64 = icmp eq i64 %63, 7
  br i1 %64, label %69, label %65

65:                                               ; preds = %61
  %66 = load ptr, ptr %0, align 8, !tbaa !25
  %67 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %66, i64 0, i32 5
  store i32 42, ptr %67, align 8, !tbaa !22
  %68 = load ptr, ptr %66, align 8, !tbaa !12
  tail call void %68(ptr noundef nonnull %0) #25
  br label %69

69:                                               ; preds = %65, %61
  %70 = load i8, ptr %39, align 1, !tbaa !11
  %71 = and i8 %70, 7
  %72 = zext i8 %71 to i32
  %73 = shl nuw nsw i32 2, %72
  %74 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 6
  %75 = load i8, ptr %74, align 1, !tbaa !11
  switch i8 %75, label %76 [
    i8 49, label %81
    i8 0, label %81
  ]

76:                                               ; preds = %69
  %77 = load ptr, ptr %0, align 8, !tbaa !25
  %78 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 5
  store i32 1020, ptr %78, align 8, !tbaa !22
  %79 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %77, i64 0, i32 1
  %80 = load ptr, ptr %79, align 8, !tbaa !16
  tail call void %80(ptr noundef nonnull %0, i32 noundef 1) #25
  br label %81

81:                                               ; preds = %76, %69, %69
  %82 = icmp sgt i8 %70, -1
  br i1 %82, label %85, label %83

83:                                               ; preds = %81
  %84 = load ptr, ptr %10, align 8, !tbaa !319
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %73, ptr noundef %84) #26
  br label %85

85:                                               ; preds = %83, %81
  %86 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 1
  br label %87

87:                                               ; preds = %127, %85
  %88 = load ptr, ptr %11, align 8, !tbaa !320
  %89 = tail call i32 @getc(ptr noundef %88) #26
  switch i32 %89, label %120 [
    i32 -1, label %90
    i32 59, label %114
    i32 33, label %92
    i32 44, label %128
  ]

90:                                               ; preds = %87
  %91 = load ptr, ptr %86, align 8, !tbaa !72
  br label %114

92:                                               ; preds = %87
  %93 = load ptr, ptr %11, align 8, !tbaa !320
  %94 = tail call i32 @getc(ptr noundef %93) #26
  %95 = icmp eq i32 %94, -1
  br i1 %95, label %96, label %101

96:                                               ; preds = %92
  %97 = load ptr, ptr %86, align 8, !tbaa !72
  %98 = load ptr, ptr %97, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 5
  store i32 42, ptr %99, align 8, !tbaa !22
  %100 = load ptr, ptr %98, align 8, !tbaa !12
  tail call void %100(ptr noundef nonnull %97) #25
  br label %101

101:                                              ; preds = %96, %92
  %102 = load ptr, ptr %86, align 8, !tbaa !72
  %103 = load ptr, ptr %102, align 8, !tbaa !25
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 5
  store i32 1019, ptr %104, align 8, !tbaa !22
  %105 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 6
  store i32 %94, ptr %105, align 4, !tbaa !11
  %106 = load ptr, ptr %86, align 8, !tbaa !72
  %107 = load ptr, ptr %106, align 8, !tbaa !25
  %108 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %107, i64 0, i32 1
  %109 = load ptr, ptr %108, align 8, !tbaa !16
  tail call void %109(ptr noundef nonnull %106, i32 noundef 1) #25
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  br label %110

110:                                              ; preds = %110, %101
  %111 = call fastcc i32 @GetDataBlock(ptr noundef %1, ptr noundef nonnull %3) #26
  %112 = icmp sgt i32 %111, 0
  br i1 %112, label %110, label %113, !llvm.loop !321

113:                                              ; preds = %110
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  br label %127

114:                                              ; preds = %90, %87
  %115 = phi ptr [ %91, %90 ], [ %0, %87 ]
  %116 = phi i32 [ 42, %90 ], [ 1015, %87 ]
  %117 = load ptr, ptr %115, align 8, !tbaa !25
  %118 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %117, i64 0, i32 5
  store i32 %116, ptr %118, align 8, !tbaa !22
  %119 = load ptr, ptr %117, align 8, !tbaa !12
  tail call void %119(ptr noundef nonnull %115) #25
  br label %120

120:                                              ; preds = %114, %87
  %121 = load ptr, ptr %0, align 8, !tbaa !25
  %122 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 5
  store i32 1022, ptr %122, align 8, !tbaa !22
  %123 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %121, i64 0, i32 6
  store i32 %89, ptr %123, align 4, !tbaa !11
  %124 = load ptr, ptr %0, align 8, !tbaa !25
  %125 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %124, i64 0, i32 1
  %126 = load ptr, ptr %125, align 8, !tbaa !16
  tail call void %126(ptr noundef nonnull %0, i32 noundef -1) #25
  br label %127

127:                                              ; preds = %120, %113
  br label %87

128:                                              ; preds = %87
  %129 = load ptr, ptr %11, align 8, !tbaa !320
  %130 = call i64 @fread(ptr noundef nonnull %4, i64 noundef 1, i64 noundef 9, ptr noundef %129) #26
  %131 = icmp eq i64 %130, 9
  br i1 %131, label %136, label %132

132:                                              ; preds = %128
  %133 = load ptr, ptr %0, align 8, !tbaa !25
  %134 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %133, i64 0, i32 5
  store i32 42, ptr %134, align 8, !tbaa !22
  %135 = load ptr, ptr %133, align 8, !tbaa !12
  tail call void %135(ptr noundef nonnull %0) #25
  br label %136

136:                                              ; preds = %132, %128
  %137 = load i8, ptr %43, align 1, !tbaa !11
  %138 = zext i8 %137 to i32
  %139 = shl nuw nsw i32 %138, 8
  %140 = load i8, ptr %39, align 1, !tbaa !11
  %141 = zext i8 %140 to i32
  %142 = or i32 %139, %141
  %143 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 7
  %144 = load i8, ptr %143, align 1, !tbaa !11
  %145 = zext i8 %144 to i32
  %146 = shl nuw nsw i32 %145, 8
  %147 = load i8, ptr %74, align 1, !tbaa !11
  %148 = zext i8 %147 to i32
  %149 = or i32 %146, %148
  %150 = getelementptr inbounds [10 x i8], ptr %4, i64 0, i64 8
  %151 = load i8, ptr %150, align 1, !tbaa !11
  %152 = and i8 %151, 64
  %153 = zext i8 %152 to i32
  %154 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 21
  store i32 %153, ptr %154, align 8, !tbaa !322
  %155 = icmp sgt i8 %151, -1
  br i1 %155, label %161, label %156

156:                                              ; preds = %136
  %157 = and i8 %151, 7
  %158 = zext i8 %157 to i32
  %159 = shl nuw nsw i32 2, %158
  %160 = load ptr, ptr %10, align 8, !tbaa !319
  tail call fastcc void @ReadColorMap(ptr noundef nonnull %1, i32 noundef %159, ptr noundef %160) #26
  br label %161

161:                                              ; preds = %156, %136
  %162 = phi i32 [ %159, %156 ], [ %73, %136 ]
  %163 = load ptr, ptr %11, align 8, !tbaa !320
  %164 = tail call i32 @getc(ptr noundef %163) #26
  %165 = icmp eq i32 %164, -1
  br i1 %165, label %166, label %172

166:                                              ; preds = %161
  %167 = load ptr, ptr %86, align 8, !tbaa !72
  %168 = load ptr, ptr %167, align 8, !tbaa !25
  %169 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %168, i64 0, i32 5
  store i32 42, ptr %169, align 8, !tbaa !22
  %170 = load ptr, ptr %168, align 8, !tbaa !12
  tail call void %170(ptr noundef nonnull %167) #25
  %171 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 8
  store i32 -1, ptr %171, align 4, !tbaa !323
  br label %176

172:                                              ; preds = %161
  %173 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 8
  store i32 %164, ptr %173, align 4, !tbaa !323
  %174 = add i32 %164, -12
  %175 = icmp ult i32 %174, -10
  br i1 %175, label %176, label %183

176:                                              ; preds = %172, %166
  %177 = phi ptr [ %171, %166 ], [ %173, %172 ]
  %178 = load ptr, ptr %0, align 8, !tbaa !25
  %179 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 5
  store i32 1013, ptr %179, align 8, !tbaa !22
  %180 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %178, i64 0, i32 6
  store i32 %164, ptr %180, align 4, !tbaa !11
  %181 = load ptr, ptr %0, align 8, !tbaa !25
  %182 = load ptr, ptr %181, align 8, !tbaa !12
  tail call void %182(ptr noundef nonnull %0) #25
  br label %183

183:                                              ; preds = %176, %172
  %184 = phi ptr [ %173, %172 ], [ %177, %176 ]
  %185 = load ptr, ptr %5, align 8, !tbaa !55
  %186 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %185, i64 0, i32 1
  %187 = load ptr, ptr %186, align 8, !tbaa !185
  %188 = tail call ptr %187(ptr noundef %0, i32 noundef 1, i64 noundef 8192) #25
  %189 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 17
  store ptr %188, ptr %189, align 8, !tbaa !324
  %190 = load ptr, ptr %5, align 8, !tbaa !55
  %191 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %190, i64 0, i32 1
  %192 = load ptr, ptr %191, align 8, !tbaa !185
  %193 = tail call ptr %192(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #25
  %194 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 18
  store ptr %193, ptr %194, align 8, !tbaa !325
  %195 = load ptr, ptr %5, align 8, !tbaa !55
  %196 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %195, i64 0, i32 1
  %197 = load ptr, ptr %196, align 8, !tbaa !185
  %198 = tail call ptr %197(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #25
  %199 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 19
  store ptr %198, ptr %199, align 8, !tbaa !326
  %200 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 4
  store <4 x i32> <i32 2, i32 0, i32 0, i32 0>, ptr %200, align 4, !tbaa !121
  %201 = load i32, ptr %184, align 4, !tbaa !323
  %202 = shl nuw i32 1, %201
  %203 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 9
  store i32 %202, ptr %203, align 8, !tbaa !327
  %204 = add nuw nsw i32 %202, 1
  %205 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 10
  store i32 %204, ptr %205, align 4, !tbaa !328
  %206 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 14
  store i32 1, ptr %206, align 4, !tbaa !329
  %207 = add nsw i32 %201, 1
  %208 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 11
  store i32 %207, ptr %208, align 8, !tbaa !330
  %209 = shl i32 2, %201
  %210 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 12
  store i32 %209, ptr %210, align 4, !tbaa !331
  %211 = add nuw nsw i32 %202, 2
  %212 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 13
  store i32 %211, ptr %212, align 8, !tbaa !332
  %213 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 20
  store ptr %198, ptr %213, align 8, !tbaa !333
  %214 = load i32, ptr %154, align 8, !tbaa !322
  %215 = icmp eq i32 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %183
  %217 = load ptr, ptr %5, align 8, !tbaa !55
  %218 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %217, i64 0, i32 4
  %219 = load ptr, ptr %218, align 8, !tbaa !298
  %220 = tail call ptr %219(ptr noundef nonnull %0, i32 noundef 1, i32 noundef 0, i32 noundef %142, i32 noundef %149, i32 noundef 1) #25
  %221 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  store ptr %220, ptr %221, align 8, !tbaa !334
  %222 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %223 = load ptr, ptr %222, align 8, !tbaa !47
  %224 = icmp eq ptr %223, null
  br i1 %224, label %229, label %225

225:                                              ; preds = %216
  %226 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %223, i64 0, i32 2
  %227 = load i32, ptr %226, align 4, !tbaa !300
  %228 = add nsw i32 %227, 1
  store i32 %228, ptr %226, align 4, !tbaa !300
  br label %229

229:                                              ; preds = %225, %216, %183
  %230 = phi ptr [ @load_interlaced_image, %225 ], [ @load_interlaced_image, %216 ], [ @get_pixel_rows, %183 ]
  %231 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %230, ptr %231, align 8, !tbaa !335
  %232 = load ptr, ptr %5, align 8, !tbaa !55
  %233 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %232, i64 0, i32 2
  %234 = load ptr, ptr %233, align 8, !tbaa !158
  %235 = mul nuw nsw i32 %142, 3
  %236 = tail call ptr %234(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %235, i32 noundef 1) #25
  %237 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %236, ptr %237, align 8, !tbaa !336
  %238 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %238, align 8, !tbaa !337
  %239 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %239, align 4, !tbaa !54
  %240 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %240, align 8, !tbaa !99
  %241 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %241, align 8, !tbaa !58
  %242 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %142, ptr %242, align 8, !tbaa !98
  %243 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %149, ptr %243, align 4, !tbaa !97
  %244 = load ptr, ptr %0, align 8, !tbaa !25
  %245 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6
  store i32 %142, ptr %245, align 4, !tbaa !121
  %246 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6, i32 0, i64 1
  store i32 %149, ptr %246, align 4, !tbaa !121
  %247 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 6, i32 0, i64 2
  store i32 %162, ptr %247, align 4, !tbaa !121
  %248 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 5
  store i32 1017, ptr %248, align 8, !tbaa !22
  %249 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %244, i64 0, i32 1
  %250 = load ptr, ptr %249, align 8, !tbaa !16
  tail call void %250(ptr noundef nonnull %0, i32 noundef 1) #25
  call void @llvm.lifetime.end.p0(i64 10, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_input_ppm(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !338
  %5 = tail call i32 @getc(ptr noundef %4) #26
  %6 = icmp eq i32 %5, 80
  br i1 %6, label %11, label %7

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 1027, ptr %9, align 8, !tbaa !22
  %10 = load ptr, ptr %8, align 8, !tbaa !12
  tail call void %10(ptr noundef nonnull %0) #25
  br label %11

11:                                               ; preds = %7, %2
  %12 = load ptr, ptr %3, align 8, !tbaa !338
  %13 = tail call i32 @getc(ptr noundef %12) #26
  %14 = load ptr, ptr %3, align 8, !tbaa !338
  %15 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %14) #26
  %16 = load ptr, ptr %3, align 8, !tbaa !338
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %16) #26
  %18 = load ptr, ptr %3, align 8, !tbaa !338
  %19 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %18) #26
  %20 = icmp eq i32 %15, 0
  %21 = icmp eq i32 %17, 0
  %22 = select i1 %20, i1 true, i1 %21
  %23 = icmp eq i32 %19, 0
  %24 = select i1 %22, i1 true, i1 %23
  br i1 %24, label %25, label %29

25:                                               ; preds = %11
  %26 = load ptr, ptr %0, align 8, !tbaa !25
  %27 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %26, i64 0, i32 5
  store i32 1027, ptr %27, align 8, !tbaa !22
  %28 = load ptr, ptr %26, align 8, !tbaa !12
  tail call void %28(ptr noundef nonnull %0) #25
  br label %29

29:                                               ; preds = %25, %11
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  store i32 8, ptr %30, align 8, !tbaa !58
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  store i32 %15, ptr %31, align 8, !tbaa !98
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  store i32 %17, ptr %32, align 4, !tbaa !97
  switch i32 %13, label %72 [
    i32 50, label %93
    i32 51, label %33
    i32 53, label %34
    i32 54, label %53
  ]

33:                                               ; preds = %29
  br label %93

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 1, ptr %35, align 8, !tbaa !99
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 1, ptr %36, align 4, !tbaa !54
  %37 = load ptr, ptr %0, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 1028, ptr %38, align 8, !tbaa !22
  %39 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 6
  store i32 %15, ptr %39, align 4, !tbaa !11
  %40 = load ptr, ptr %0, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %41, align 4, !tbaa !11
  %42 = load ptr, ptr %0, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 1
  %44 = load ptr, ptr %43, align 8, !tbaa !16
  tail call void %44(ptr noundef nonnull %0, i32 noundef 1) #25
  %45 = icmp ugt i32 %19, 255
  br i1 %45, label %46, label %48

46:                                               ; preds = %34
  %47 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_gray_row, ptr %47, align 8, !tbaa !339
  br label %76

48:                                               ; preds = %34
  %49 = icmp eq i32 %19, 255
  %50 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %49, label %51, label %52

51:                                               ; preds = %48
  store ptr @get_raw_row, ptr %50, align 8, !tbaa !339
  br label %76

52:                                               ; preds = %48
  store ptr @get_scaled_gray_row, ptr %50, align 8, !tbaa !339
  br label %76

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store i32 3, ptr %54, align 8, !tbaa !99
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 9
  store i32 2, ptr %55, align 4, !tbaa !54
  %56 = load ptr, ptr %0, align 8, !tbaa !25
  %57 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 5
  store i32 1030, ptr %57, align 8, !tbaa !22
  %58 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %56, i64 0, i32 6
  store i32 %15, ptr %58, align 4, !tbaa !11
  %59 = load ptr, ptr %0, align 8, !tbaa !25
  %60 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %59, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %60, align 4, !tbaa !11
  %61 = load ptr, ptr %0, align 8, !tbaa !25
  %62 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %61, i64 0, i32 1
  %63 = load ptr, ptr %62, align 8, !tbaa !16
  tail call void %63(ptr noundef nonnull %0, i32 noundef 1) #25
  %64 = icmp ugt i32 %19, 255
  br i1 %64, label %65, label %67

65:                                               ; preds = %53
  %66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_word_rgb_row, ptr %66, align 8, !tbaa !339
  br label %76

67:                                               ; preds = %53
  %68 = icmp eq i32 %19, 255
  %69 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  br i1 %68, label %70, label %71

70:                                               ; preds = %67
  store ptr @get_raw_row, ptr %69, align 8, !tbaa !339
  br label %76

71:                                               ; preds = %67
  store ptr @get_scaled_rgb_row, ptr %69, align 8, !tbaa !339
  br label %76

72:                                               ; preds = %29
  %73 = load ptr, ptr %0, align 8, !tbaa !25
  %74 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %73, i64 0, i32 5
  store i32 1027, ptr %74, align 8, !tbaa !22
  %75 = load ptr, ptr %73, align 8, !tbaa !12
  tail call void %75(ptr noundef nonnull %0) #25
  br label %76

76:                                               ; preds = %72, %71, %70, %65, %52, %51, %46
  %77 = phi i1 [ true, %52 ], [ false, %51 ], [ true, %46 ], [ true, %71 ], [ false, %70 ], [ true, %65 ], [ true, %72 ]
  %78 = phi i1 [ false, %52 ], [ true, %51 ], [ false, %46 ], [ false, %71 ], [ true, %70 ], [ false, %65 ], [ false, %72 ]
  %79 = zext i32 %15 to i64
  %80 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %81 = load i32, ptr %80, align 8, !tbaa !99
  %82 = sext i32 %81 to i64
  %83 = mul nsw i64 %82, %79
  %84 = icmp ugt i32 %19, 255
  %85 = zext i1 %84 to i64
  %86 = shl i64 %83, %85
  %87 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  store i64 %86, ptr %87, align 8, !tbaa !340
  %88 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %89 = load ptr, ptr %88, align 8, !tbaa !55
  %90 = load ptr, ptr %89, align 8, !tbaa !56
  %91 = tail call ptr %90(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %86) #25
  %92 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  store ptr %91, ptr %92, align 8, !tbaa !341
  br i1 %77, label %107, label %119

93:                                               ; preds = %33, %29
  %94 = phi i32 [ 1031, %33 ], [ 1029, %29 ]
  %95 = phi ptr [ @get_text_rgb_row, %33 ], [ @get_text_gray_row, %29 ]
  %96 = phi <2 x i32> [ <i32 3, i32 2>, %33 ], [ <i32 1, i32 1>, %29 ]
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  store <2 x i32> %96, ptr %97, align 8, !tbaa !11
  %98 = load ptr, ptr %0, align 8, !tbaa !25
  %99 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 5
  store i32 %94, ptr %99, align 8, !tbaa !22
  %100 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %98, i64 0, i32 6
  store i32 %15, ptr %100, align 4, !tbaa !11
  %101 = load ptr, ptr %0, align 8, !tbaa !25
  %102 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %101, i64 0, i32 6, i32 0, i64 1
  store i32 %17, ptr %102, align 4, !tbaa !11
  %103 = load ptr, ptr %0, align 8, !tbaa !25
  %104 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %103, i64 0, i32 1
  %105 = load ptr, ptr %104, align 8, !tbaa !16
  tail call void %105(ptr noundef nonnull %0, i32 noundef 1) #25
  %106 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr %95, ptr %106, align 8, !tbaa !339
  br label %107

107:                                              ; preds = %93, %76
  %108 = phi i1 [ %78, %76 ], [ false, %93 ]
  %109 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %110 = load ptr, ptr %109, align 8, !tbaa !55
  %111 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %110, i64 0, i32 2
  %112 = load ptr, ptr %111, align 8, !tbaa !158
  %113 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %114 = load i32, ptr %113, align 8, !tbaa !99
  %115 = mul i32 %114, %15
  %116 = tail call ptr %112(ptr noundef nonnull %0, i32 noundef 1, i32 noundef %115, i32 noundef 1) #25
  %117 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %116, ptr %117, align 8, !tbaa !342
  %118 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %118, align 8, !tbaa !343
  br i1 %108, label %143, label %123

119:                                              ; preds = %76
  %120 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 2
  store ptr %91, ptr %120, align 8, !tbaa !344
  %121 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %120, ptr %121, align 8, !tbaa !342
  %122 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 5
  store i32 1, ptr %122, align 8, !tbaa !343
  br i1 %78, label %143, label %123

123:                                              ; preds = %119, %107
  %124 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %125 = load ptr, ptr %124, align 8, !tbaa !55
  %126 = load ptr, ptr %125, align 8, !tbaa !56
  %127 = zext i32 %19 to i64
  %128 = add nuw nsw i64 %127, 1
  %129 = tail call ptr %126(ptr noundef nonnull %0, i32 noundef 1, i64 noundef %128) #25
  %130 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  store ptr %129, ptr %130, align 8, !tbaa !345
  %131 = lshr i32 %19, 1
  %132 = zext i32 %131 to i64
  br label %133

133:                                              ; preds = %133, %123
  %134 = phi i64 [ 0, %123 ], [ %141, %133 ]
  %135 = mul nuw nsw i64 %134, 255
  %136 = add nuw nsw i64 %135, %132
  %137 = udiv i64 %136, %127
  %138 = trunc i64 %137 to i8
  %139 = load ptr, ptr %130, align 8, !tbaa !345
  %140 = getelementptr inbounds i8, ptr %139, i64 %134
  store i8 %138, ptr %140, align 1, !tbaa !11
  %141 = add nuw nsw i64 %134, 1
  %142 = icmp eq i64 %134, %127
  br i1 %142, label %143, label %133, !llvm.loop !346

143:                                              ; preds = %133, %119, %107
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_tga(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_ppm(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_gif(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @finish_input_bmp(ptr nocapture %0, ptr nocapture %1) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @init_destination(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 1, i64 noundef 4096) #25
  %8 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  store ptr %7, ptr %8, align 8, !tbaa !347
  store ptr %7, ptr %3, align 8, !tbaa !348
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  store i64 4096, ptr %9, align 8, !tbaa !349
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @empty_output_buffer(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  %5 = load ptr, ptr %4, align 8, !tbaa !347
  %6 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !83
  %8 = tail call i64 @fwrite(ptr noundef %5, i64 noundef 1, i64 noundef 4096, ptr noundef %7) #26
  %9 = icmp eq i64 %8, 4096
  br i1 %9, label %14, label %10

10:                                               ; preds = %1
  %11 = load ptr, ptr %0, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 36, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %13(ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %10, %1
  %15 = load ptr, ptr %4, align 8, !tbaa !347
  store ptr %15, ptr %3, align 8, !tbaa !348
  %16 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  store i64 4096, ptr %16, align 8, !tbaa !349
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @term_destination(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %3 = load ptr, ptr %2, align 8, !tbaa !48
  %4 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %3, i64 0, i32 1
  %5 = load i64, ptr %4, align 8, !tbaa !349
  %6 = icmp eq i64 %5, 4096
  br i1 %6, label %19, label %7

7:                                                ; preds = %1
  %8 = sub i64 4096, %5
  %9 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 2
  %10 = load ptr, ptr %9, align 8, !tbaa !347
  %11 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !83
  %13 = tail call i64 @fwrite(ptr noundef %10, i64 noundef 1, i64 noundef %8, ptr noundef %12) #26
  %14 = icmp eq i64 %13, %8
  br i1 %14, label %19, label %15

15:                                               ; preds = %7
  %16 = load ptr, ptr %0, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 36, ptr %17, align 8, !tbaa !22
  %18 = load ptr, ptr %16, align 8, !tbaa !12
  tail call void %18(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %15, %7, %1
  %20 = getelementptr inbounds %struct.my_destination_mgr, ptr %3, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !83
  %22 = tail call i32 @fflush(ptr noundef %21) #26
  %23 = load ptr, ptr %20, align 8, !tbaa !83
  %24 = tail call i32 @ferror(ptr noundef %23) #25
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %30, label %26

26:                                               ; preds = %19
  %27 = load ptr, ptr %0, align 8, !tbaa !25
  %28 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %27, i64 0, i32 5
  store i32 36, ptr %28, align 8, !tbaa !22
  %29 = load ptr, ptr %27, align 8, !tbaa !12
  tail call void %29(ptr noundef nonnull %0) #25
  br label %30

30:                                               ; preds = %26, %19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @prepare_for_pass(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !132
  switch i32 %5, label %94 [
    i32 0, label %6
    i32 1, label %44
    i32 2, label %68
  ]

6:                                                ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #26
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #26
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %8 = load i32, ptr %7, align 8, !tbaa !136
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %6
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %12 = load ptr, ptr %11, align 8, !tbaa !137
  %13 = load ptr, ptr %12, align 8, !tbaa !350
  tail call void %13(ptr noundef nonnull %0) #25
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %15 = load ptr, ptr %14, align 8, !tbaa !143
  %16 = load ptr, ptr %15, align 8, !tbaa !351
  tail call void %16(ptr noundef nonnull %0) #25
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %18 = load ptr, ptr %17, align 8, !tbaa !152
  %19 = load ptr, ptr %18, align 8, !tbaa !352
  tail call void %19(ptr noundef nonnull %0, i32 noundef 0) #25
  br label %20

20:                                               ; preds = %10, %6
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %22 = load ptr, ptr %21, align 8, !tbaa !162
  %23 = load ptr, ptr %22, align 8, !tbaa !353
  tail call void %23(ptr noundef nonnull %0) #25
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %25 = load ptr, ptr %24, align 8, !tbaa !171
  %26 = load ptr, ptr %25, align 8, !tbaa !354
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %28 = load i32, ptr %27, align 8, !tbaa !133
  tail call void %26(ptr noundef nonnull %0, i32 noundef %28) #25
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %30 = load ptr, ptr %29, align 8, !tbaa !179
  %31 = load ptr, ptr %30, align 8, !tbaa !355
  %32 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %33 = load i32, ptr %32, align 8, !tbaa !356
  %34 = icmp sgt i32 %33, 1
  %35 = select i1 %34, i32 3, i32 0
  tail call void %31(ptr noundef nonnull %0, i32 noundef %35) #25
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %37 = load ptr, ptr %36, align 8, !tbaa !189
  %38 = load ptr, ptr %37, align 8, !tbaa !357
  tail call void %38(ptr noundef nonnull %0, i32 noundef 0) #25
  %39 = load i32, ptr %27, align 8, !tbaa !133
  %40 = icmp eq i32 %39, 0
  %41 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  br i1 %40, label %43, label %42

42:                                               ; preds = %20
  store i32 0, ptr %41, align 8, !tbaa !358
  br label %98

43:                                               ; preds = %20
  store i32 1, ptr %41, align 8, !tbaa !358
  br label %98

44:                                               ; preds = %1
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #26
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #26
  %45 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %46 = load i32, ptr %45, align 4, !tbaa !359
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %50 = load i32, ptr %49, align 4, !tbaa !360
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %56, label %52

52:                                               ; preds = %48
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %54 = load i32, ptr %53, align 4, !tbaa !170
  %55 = icmp eq i32 %54, 0
  br i1 %55, label %64, label %56

56:                                               ; preds = %52, %48, %44
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %58 = load ptr, ptr %57, align 8, !tbaa !171
  %59 = load ptr, ptr %58, align 8, !tbaa !354
  tail call void %59(ptr noundef nonnull %0, i32 noundef 1) #25
  %60 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %61 = load ptr, ptr %60, align 8, !tbaa !179
  %62 = load ptr, ptr %61, align 8, !tbaa !355
  tail call void %62(ptr noundef nonnull %0, i32 noundef 2) #25
  %63 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %63, align 8, !tbaa !358
  br label %98

64:                                               ; preds = %52
  store i32 2, ptr %4, align 8, !tbaa !132
  %65 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %66 = load i32, ptr %65, align 4, !tbaa !135
  %67 = add nsw i32 %66, 1
  store i32 %67, ptr %65, align 4, !tbaa !135
  br label %68

68:                                               ; preds = %64, %1
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %70 = load i32, ptr %69, align 8, !tbaa !133
  %71 = icmp eq i32 %70, 0
  br i1 %71, label %72, label %73

72:                                               ; preds = %68
  tail call fastcc void @select_scan_parameters(ptr noundef nonnull %0) #26
  tail call fastcc void @per_scan_setup(ptr noundef nonnull %0) #26
  br label %73

73:                                               ; preds = %72, %68
  %74 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %75 = load ptr, ptr %74, align 8, !tbaa !171
  %76 = load ptr, ptr %75, align 8, !tbaa !354
  tail call void %76(ptr noundef nonnull %0, i32 noundef 0) #25
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %78 = load ptr, ptr %77, align 8, !tbaa !179
  %79 = load ptr, ptr %78, align 8, !tbaa !355
  tail call void %79(ptr noundef nonnull %0, i32 noundef 2) #25
  %80 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %81 = load i32, ptr %80, align 4, !tbaa !134
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %85 = load ptr, ptr %84, align 8, !tbaa !194
  %86 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %85, i64 0, i32 2
  %87 = load ptr, ptr %86, align 8, !tbaa !198
  tail call void %87(ptr noundef nonnull %0) #25
  br label %88

88:                                               ; preds = %83, %73
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %90 = load ptr, ptr %89, align 8, !tbaa !194
  %91 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %90, i64 0, i32 3
  %92 = load ptr, ptr %91, align 8, !tbaa !199
  tail call void %92(ptr noundef nonnull %0) #25
  %93 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %93, align 8, !tbaa !358
  br label %98

94:                                               ; preds = %1
  %95 = load ptr, ptr %0, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 5
  store i32 47, ptr %96, align 8, !tbaa !22
  %97 = load ptr, ptr %95, align 8, !tbaa !12
  tail call void %97(ptr noundef nonnull %0) #25
  br label %98

98:                                               ; preds = %94, %88, %56, %43, %42
  %99 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %100 = load i32, ptr %99, align 4, !tbaa !135
  %101 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 3
  %102 = load i32, ptr %101, align 8, !tbaa !356
  %103 = add nsw i32 %102, -1
  %104 = icmp eq i32 %100, %103
  %105 = zext i1 %104 to i32
  %106 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 4
  store i32 %105, ptr %106, align 4, !tbaa !96
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %108 = load ptr, ptr %107, align 8, !tbaa !47
  %109 = icmp eq ptr %108, null
  br i1 %109, label %113, label %110

110:                                              ; preds = %98
  %111 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 3
  store i32 %100, ptr %111, align 8, !tbaa !361
  %112 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %108, i64 0, i32 4
  store i32 %102, ptr %112, align 4, !tbaa !362
  br label %113

113:                                              ; preds = %110, %98
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pass_startup(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.jpeg_comp_master, ptr %3, i64 0, i32 3
  store i32 0, ptr %4, align 8, !tbaa !211
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 55
  %6 = load ptr, ptr %5, align 8, !tbaa !194
  %7 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %6, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !198
  tail call void %8(ptr noundef %0) #25
  %9 = load ptr, ptr %5, align 8, !tbaa !194
  %10 = getelementptr inbounds %struct.jpeg_marker_writer, ptr %9, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !199
  tail call void %11(ptr noundef %0) #25
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_master(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %3 = load ptr, ptr %2, align 8, !tbaa !90
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %5, i64 0, i32 2
  %7 = load ptr, ptr %6, align 8, !tbaa !363
  tail call void %7(ptr noundef %0) #25
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 1
  %9 = load i32, ptr %8, align 8, !tbaa !132
  switch i32 %9, label %28 [
    i32 0, label %10
    i32 1, label %18
    i32 2, label %19
  ]

10:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !132
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %12 = load i32, ptr %11, align 8, !tbaa !133
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %28

14:                                               ; preds = %10
  %15 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %16 = load i32, ptr %15, align 4, !tbaa !134
  %17 = add nsw i32 %16, 1
  store i32 %17, ptr %15, align 4, !tbaa !134
  br label %28

18:                                               ; preds = %1
  store i32 2, ptr %8, align 8, !tbaa !132
  br label %28

19:                                               ; preds = %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 25
  %21 = load i32, ptr %20, align 8, !tbaa !133
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %19
  store i32 1, ptr %8, align 8, !tbaa !132
  br label %24

24:                                               ; preds = %23, %19
  %25 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 4
  %26 = load i32, ptr %25, align 4, !tbaa !134
  %27 = add nsw i32 %26, 1
  store i32 %27, ptr %25, align 4, !tbaa !134
  br label %28

28:                                               ; preds = %24, %18, %14, %10, %1
  %29 = getelementptr inbounds %struct.my_comp_master, ptr %3, i64 0, i32 2
  %30 = load i32, ptr %29, align 4, !tbaa !135
  %31 = add nsw i32 %30, 1
  store i32 %31, ptr %29, align 4, !tbaa !135
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #12

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @null_method(ptr nocapture %0) #11 {
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @grayscale_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #13 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %38

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !99
  %12 = icmp eq i32 %9, 0
  %13 = sext i32 %11 to i64
  %14 = zext i32 %9 to i64
  br label %17

15:                                               ; preds = %30, %17
  %16 = icmp sgt i32 %18, 1
  br i1 %16, label %17, label %38, !llvm.loop !364

17:                                               ; preds = %15, %7
  %18 = phi i32 [ %4, %7 ], [ %21, %15 ]
  %19 = phi ptr [ %1, %7 ], [ %22, %15 ]
  %20 = phi i32 [ %3, %7 ], [ %27, %15 ]
  %21 = add nsw i32 %18, -1
  %22 = getelementptr inbounds ptr, ptr %19, i64 1
  %23 = load ptr, ptr %2, align 8, !tbaa !7
  %24 = zext i32 %20 to i64
  %25 = getelementptr inbounds ptr, ptr %23, i64 %24
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = add i32 %20, 1
  br i1 %12, label %15, label %28

28:                                               ; preds = %17
  %29 = load ptr, ptr %19, align 8, !tbaa !7
  br label %30

30:                                               ; preds = %30, %28
  %31 = phi i64 [ 0, %28 ], [ %36, %30 ]
  %32 = phi ptr [ %29, %28 ], [ %35, %30 ]
  %33 = load i8, ptr %32, align 1, !tbaa !11
  %34 = getelementptr inbounds i8, ptr %26, i64 %31
  store i8 %33, ptr %34, align 1, !tbaa !11
  %35 = getelementptr inbounds i8, ptr %32, i64 %13
  %36 = add nuw nsw i64 %31, 1
  %37 = icmp eq i64 %36, %14
  br i1 %37, label %15, label %30, !llvm.loop !365

38:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @rgb_ycc_start(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %3 = load ptr, ptr %2, align 8, !tbaa !137
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %5 = load ptr, ptr %4, align 8, !tbaa !55
  %6 = load ptr, ptr %5, align 8, !tbaa !56
  %7 = tail call ptr %6(ptr noundef %0, i32 noundef 1, i64 noundef 16384) #25
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %3, i64 0, i32 1
  store ptr %7, ptr %8, align 8, !tbaa !366
  br label %9

9:                                                ; preds = %9, %1
  %10 = phi i64 [ 0, %1 ], [ %36, %9 ]
  %11 = mul nuw nsw i64 %10, 19595
  %12 = getelementptr inbounds i64, ptr %7, i64 %10
  store i64 %11, ptr %12, align 8, !tbaa !31
  %13 = mul nuw nsw i64 %10, 38470
  %14 = add nuw nsw i64 %10, 256
  %15 = getelementptr inbounds i64, ptr %7, i64 %14
  store i64 %13, ptr %15, align 8, !tbaa !31
  %16 = mul nuw nsw i64 %10, 7471
  %17 = add nuw nsw i64 %16, 32768
  %18 = add nuw nsw i64 %10, 512
  %19 = getelementptr inbounds i64, ptr %7, i64 %18
  store i64 %17, ptr %19, align 8, !tbaa !31
  %20 = mul nsw i64 %10, -11059
  %21 = add nuw nsw i64 %10, 768
  %22 = getelementptr inbounds i64, ptr %7, i64 %21
  store i64 %20, ptr %22, align 8, !tbaa !31
  %23 = mul nsw i64 %10, -21709
  %24 = add nuw nsw i64 %10, 1024
  %25 = getelementptr inbounds i64, ptr %7, i64 %24
  store i64 %23, ptr %25, align 8, !tbaa !31
  %26 = shl nuw nsw i64 %10, 15
  %27 = add nuw nsw i64 %26, 8421375
  %28 = add nuw nsw i64 %10, 1280
  %29 = getelementptr inbounds i64, ptr %7, i64 %28
  store i64 %27, ptr %29, align 8, !tbaa !31
  %30 = mul nsw i64 %10, -27439
  %31 = add nuw nsw i64 %10, 1536
  %32 = getelementptr inbounds i64, ptr %7, i64 %31
  store i64 %30, ptr %32, align 8, !tbaa !31
  %33 = mul nsw i64 %10, -5329
  %34 = add nuw nsw i64 %10, 1792
  %35 = getelementptr inbounds i64, ptr %7, i64 %34
  store i64 %33, ptr %35, align 8, !tbaa !31
  %36 = add nuw nsw i64 %10, 1
  %37 = icmp eq i64 %36, 256
  br i1 %37, label %38, label %9, !llvm.loop !367

38:                                               ; preds = %9
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_gray_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #13 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !366
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %58

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !98
  %14 = icmp eq i32 %13, 0
  %15 = zext i32 %13 to i64
  br label %18

16:                                               ; preds = %31, %18
  %17 = icmp sgt i32 %19, 1
  br i1 %17, label %18, label %58, !llvm.loop !368

18:                                               ; preds = %16, %11
  %19 = phi i32 [ %4, %11 ], [ %22, %16 ]
  %20 = phi ptr [ %1, %11 ], [ %23, %16 ]
  %21 = phi i32 [ %3, %11 ], [ %28, %16 ]
  %22 = add nsw i32 %19, -1
  %23 = getelementptr inbounds ptr, ptr %20, i64 1
  %24 = load ptr, ptr %2, align 8, !tbaa !7
  %25 = zext i32 %21 to i64
  %26 = getelementptr inbounds ptr, ptr %24, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = add i32 %21, 1
  br i1 %14, label %16, label %29

29:                                               ; preds = %18
  %30 = load ptr, ptr %20, align 8, !tbaa !7
  br label %31

31:                                               ; preds = %31, %29
  %32 = phi i64 [ 0, %29 ], [ %56, %31 ]
  %33 = phi ptr [ %30, %29 ], [ %41, %31 ]
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = getelementptr inbounds i8, ptr %33, i64 1
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = zext i8 %36 to i64
  %38 = getelementptr inbounds i8, ptr %33, i64 2
  %39 = load i8, ptr %38, align 1, !tbaa !11
  %40 = zext i8 %39 to i64
  %41 = getelementptr inbounds i8, ptr %33, i64 3
  %42 = zext i8 %34 to i64
  %43 = getelementptr inbounds i64, ptr %9, i64 %42
  %44 = load i64, ptr %43, align 8, !tbaa !31
  %45 = or i64 %37, 256
  %46 = getelementptr inbounds i64, ptr %9, i64 %45
  %47 = load i64, ptr %46, align 8, !tbaa !31
  %48 = add nsw i64 %47, %44
  %49 = or i64 %40, 512
  %50 = getelementptr inbounds i64, ptr %9, i64 %49
  %51 = load i64, ptr %50, align 8, !tbaa !31
  %52 = add nsw i64 %48, %51
  %53 = lshr i64 %52, 16
  %54 = trunc i64 %53 to i8
  %55 = getelementptr inbounds i8, ptr %27, i64 %32
  store i8 %54, ptr %55, align 1, !tbaa !11
  %56 = add nuw nsw i64 %32, 1
  %57 = icmp eq i64 %56, %15
  br i1 %57, label %16, label %31, !llvm.loop !369

58:                                               ; preds = %16, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @null_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #13 {
  %6 = icmp sgt i32 %4, 0
  br i1 %6, label %7, label %48

7:                                                ; preds = %5
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %9 = load i32, ptr %8, align 8, !tbaa !98
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %11 = load i32, ptr %10, align 4, !tbaa !100
  %12 = icmp sgt i32 %11, 0
  %13 = icmp eq i32 %9, 0
  %14 = sext i32 %11 to i64
  %15 = zext i32 %11 to i64
  %16 = zext i32 %9 to i64
  br label %17

17:                                               ; preds = %44, %7
  %18 = phi i32 [ %4, %7 ], [ %21, %44 ]
  %19 = phi ptr [ %1, %7 ], [ %45, %44 ]
  %20 = phi i32 [ %3, %7 ], [ %46, %44 ]
  %21 = add nsw i32 %18, -1
  br i1 %12, label %22, label %44

22:                                               ; preds = %17
  %23 = zext i32 %20 to i64
  br label %24

24:                                               ; preds = %41, %22
  %25 = phi i64 [ 0, %22 ], [ %42, %41 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds ptr, ptr %27, i64 %23
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  br i1 %13, label %41, label %30

30:                                               ; preds = %24
  %31 = load ptr, ptr %19, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi i64 [ 0, %30 ], [ %39, %32 ]
  %34 = phi ptr [ %31, %30 ], [ %38, %32 ]
  %35 = getelementptr inbounds i8, ptr %34, i64 %25
  %36 = load i8, ptr %35, align 1, !tbaa !11
  %37 = getelementptr inbounds i8, ptr %29, i64 %33
  store i8 %36, ptr %37, align 1, !tbaa !11
  %38 = getelementptr inbounds i8, ptr %34, i64 %14
  %39 = add nuw nsw i64 %33, 1
  %40 = icmp eq i64 %39, %16
  br i1 %40, label %41, label %32, !llvm.loop !370

41:                                               ; preds = %32, %24
  %42 = add nuw nsw i64 %25, 1
  %43 = icmp eq i64 %42, %15
  br i1 %43, label %44, label %24, !llvm.loop !371

44:                                               ; preds = %41, %17
  %45 = getelementptr inbounds ptr, ptr %19, i64 1
  %46 = add i32 %20, 1
  %47 = icmp sgt i32 %18, 1
  br i1 %47, label %17, label %48, !llvm.loop !372

48:                                               ; preds = %44, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @rgb_ycc_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #13 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !366
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %103

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = icmp eq i32 %13, 0
  %17 = zext i32 %13 to i64
  br label %20

18:                                               ; preds = %39, %20
  %19 = icmp sgt i32 %21, 1
  br i1 %19, label %20, label %103, !llvm.loop !373

20:                                               ; preds = %18, %11
  %21 = phi i32 [ %4, %11 ], [ %24, %18 ]
  %22 = phi ptr [ %1, %11 ], [ %25, %18 ]
  %23 = phi i32 [ %3, %11 ], [ %36, %18 ]
  %24 = add nsw i32 %21, -1
  %25 = getelementptr inbounds ptr, ptr %22, i64 1
  %26 = load ptr, ptr %2, align 8, !tbaa !7
  %27 = zext i32 %23 to i64
  %28 = getelementptr inbounds ptr, ptr %26, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = load ptr, ptr %14, align 8, !tbaa !7
  %31 = getelementptr inbounds ptr, ptr %30, i64 %27
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = load ptr, ptr %15, align 8, !tbaa !7
  %34 = getelementptr inbounds ptr, ptr %33, i64 %27
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  %36 = add i32 %23, 1
  br i1 %16, label %18, label %37

37:                                               ; preds = %20
  %38 = load ptr, ptr %22, align 8, !tbaa !7
  br label %39

39:                                               ; preds = %39, %37
  %40 = phi i64 [ 0, %37 ], [ %101, %39 ]
  %41 = phi ptr [ %38, %37 ], [ %50, %39 ]
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = zext i8 %42 to i32
  %44 = getelementptr inbounds i8, ptr %41, i64 1
  %45 = load i8, ptr %44, align 1, !tbaa !11
  %46 = zext i8 %45 to i32
  %47 = getelementptr inbounds i8, ptr %41, i64 2
  %48 = load i8, ptr %47, align 1, !tbaa !11
  %49 = zext i8 %48 to i32
  %50 = getelementptr inbounds i8, ptr %41, i64 3
  %51 = zext i8 %42 to i64
  %52 = getelementptr inbounds i64, ptr %9, i64 %51
  %53 = load i64, ptr %52, align 8, !tbaa !31
  %54 = or i32 %46, 256
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i64, ptr %9, i64 %55
  %57 = load i64, ptr %56, align 8, !tbaa !31
  %58 = add nsw i64 %57, %53
  %59 = or i32 %49, 512
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i64, ptr %9, i64 %60
  %62 = load i64, ptr %61, align 8, !tbaa !31
  %63 = add nsw i64 %58, %62
  %64 = lshr i64 %63, 16
  %65 = trunc i64 %64 to i8
  %66 = getelementptr inbounds i8, ptr %29, i64 %40
  store i8 %65, ptr %66, align 1, !tbaa !11
  %67 = or i32 %43, 768
  %68 = zext i32 %67 to i64
  %69 = getelementptr inbounds i64, ptr %9, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !31
  %71 = or i32 %46, 1024
  %72 = zext i32 %71 to i64
  %73 = getelementptr inbounds i64, ptr %9, i64 %72
  %74 = load i64, ptr %73, align 8, !tbaa !31
  %75 = add nsw i64 %74, %70
  %76 = or i32 %49, 1280
  %77 = zext i32 %76 to i64
  %78 = getelementptr inbounds i64, ptr %9, i64 %77
  %79 = load i64, ptr %78, align 8, !tbaa !31
  %80 = add nsw i64 %75, %79
  %81 = lshr i64 %80, 16
  %82 = trunc i64 %81 to i8
  %83 = getelementptr inbounds i8, ptr %32, i64 %40
  store i8 %82, ptr %83, align 1, !tbaa !11
  %84 = or i32 %43, 1280
  %85 = zext i32 %84 to i64
  %86 = getelementptr inbounds i64, ptr %9, i64 %85
  %87 = load i64, ptr %86, align 8, !tbaa !31
  %88 = or i32 %46, 1536
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i64, ptr %9, i64 %89
  %91 = load i64, ptr %90, align 8, !tbaa !31
  %92 = add nsw i64 %91, %87
  %93 = or i32 %49, 1792
  %94 = zext i32 %93 to i64
  %95 = getelementptr inbounds i64, ptr %9, i64 %94
  %96 = load i64, ptr %95, align 8, !tbaa !31
  %97 = add nsw i64 %92, %96
  %98 = lshr i64 %97, 16
  %99 = trunc i64 %98 to i8
  %100 = getelementptr inbounds i8, ptr %35, i64 %40
  store i8 %99, ptr %100, align 1, !tbaa !11
  %101 = add nuw nsw i64 %40, 1
  %102 = icmp eq i64 %101, %17
  br i1 %102, label %18, label %39, !llvm.loop !374

103:                                              ; preds = %18, %5
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @cmyk_ycck_convert(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, i32 noundef %3, i32 noundef %4) #13 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %7 = load ptr, ptr %6, align 8, !tbaa !137
  %8 = getelementptr inbounds %struct.my_color_converter, ptr %7, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !366
  %10 = icmp sgt i32 %4, 0
  br i1 %10, label %11, label %113

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %13 = load i32, ptr %12, align 8, !tbaa !98
  %14 = getelementptr inbounds ptr, ptr %2, i64 1
  %15 = getelementptr inbounds ptr, ptr %2, i64 2
  %16 = getelementptr inbounds ptr, ptr %2, i64 3
  %17 = icmp eq i32 %13, 0
  %18 = zext i32 %13 to i64
  br label %21

19:                                               ; preds = %43, %21
  %20 = icmp sgt i32 %22, 1
  br i1 %20, label %21, label %113, !llvm.loop !375

21:                                               ; preds = %19, %11
  %22 = phi i32 [ %4, %11 ], [ %25, %19 ]
  %23 = phi ptr [ %1, %11 ], [ %26, %19 ]
  %24 = phi i32 [ %3, %11 ], [ %40, %19 ]
  %25 = add nsw i32 %22, -1
  %26 = getelementptr inbounds ptr, ptr %23, i64 1
  %27 = load ptr, ptr %2, align 8, !tbaa !7
  %28 = zext i32 %24 to i64
  %29 = getelementptr inbounds ptr, ptr %27, i64 %28
  %30 = load ptr, ptr %29, align 8, !tbaa !7
  %31 = load ptr, ptr %14, align 8, !tbaa !7
  %32 = getelementptr inbounds ptr, ptr %31, i64 %28
  %33 = load ptr, ptr %32, align 8, !tbaa !7
  %34 = load ptr, ptr %15, align 8, !tbaa !7
  %35 = getelementptr inbounds ptr, ptr %34, i64 %28
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = load ptr, ptr %16, align 8, !tbaa !7
  %38 = getelementptr inbounds ptr, ptr %37, i64 %28
  %39 = load ptr, ptr %38, align 8, !tbaa !7
  %40 = add i32 %24, 1
  br i1 %17, label %19, label %41

41:                                               ; preds = %21
  %42 = load ptr, ptr %23, align 8, !tbaa !7
  br label %43

43:                                               ; preds = %43, %41
  %44 = phi i64 [ 0, %41 ], [ %111, %43 ]
  %45 = phi ptr [ %42, %41 ], [ %60, %43 ]
  %46 = load i8, ptr %45, align 1, !tbaa !11
  %47 = xor i8 %46, -1
  %48 = zext i8 %47 to i32
  %49 = getelementptr inbounds i8, ptr %45, i64 1
  %50 = load i8, ptr %49, align 1, !tbaa !11
  %51 = xor i8 %50, -1
  %52 = zext i8 %51 to i32
  %53 = getelementptr inbounds i8, ptr %45, i64 2
  %54 = load i8, ptr %53, align 1, !tbaa !11
  %55 = xor i8 %54, -1
  %56 = zext i8 %55 to i32
  %57 = getelementptr inbounds i8, ptr %45, i64 3
  %58 = load i8, ptr %57, align 1, !tbaa !11
  %59 = getelementptr inbounds i8, ptr %39, i64 %44
  store i8 %58, ptr %59, align 1, !tbaa !11
  %60 = getelementptr inbounds i8, ptr %45, i64 4
  %61 = zext i8 %47 to i64
  %62 = getelementptr inbounds i64, ptr %9, i64 %61
  %63 = load i64, ptr %62, align 8, !tbaa !31
  %64 = or i32 %52, 256
  %65 = zext i32 %64 to i64
  %66 = getelementptr inbounds i64, ptr %9, i64 %65
  %67 = load i64, ptr %66, align 8, !tbaa !31
  %68 = add nsw i64 %67, %63
  %69 = or i32 %56, 512
  %70 = zext i32 %69 to i64
  %71 = getelementptr inbounds i64, ptr %9, i64 %70
  %72 = load i64, ptr %71, align 8, !tbaa !31
  %73 = add nsw i64 %68, %72
  %74 = lshr i64 %73, 16
  %75 = trunc i64 %74 to i8
  %76 = getelementptr inbounds i8, ptr %30, i64 %44
  store i8 %75, ptr %76, align 1, !tbaa !11
  %77 = or i32 %48, 768
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i64, ptr %9, i64 %78
  %80 = load i64, ptr %79, align 8, !tbaa !31
  %81 = or i32 %52, 1024
  %82 = zext i32 %81 to i64
  %83 = getelementptr inbounds i64, ptr %9, i64 %82
  %84 = load i64, ptr %83, align 8, !tbaa !31
  %85 = add nsw i64 %84, %80
  %86 = or i32 %56, 1280
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i64, ptr %9, i64 %87
  %89 = load i64, ptr %88, align 8, !tbaa !31
  %90 = add nsw i64 %85, %89
  %91 = lshr i64 %90, 16
  %92 = trunc i64 %91 to i8
  %93 = getelementptr inbounds i8, ptr %33, i64 %44
  store i8 %92, ptr %93, align 1, !tbaa !11
  %94 = or i32 %48, 1280
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, ptr %9, i64 %95
  %97 = load i64, ptr %96, align 8, !tbaa !31
  %98 = or i32 %52, 1536
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, ptr %9, i64 %99
  %101 = load i64, ptr %100, align 8, !tbaa !31
  %102 = add nsw i64 %101, %97
  %103 = or i32 %56, 1792
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds i64, ptr %9, i64 %104
  %106 = load i64, ptr %105, align 8, !tbaa !31
  %107 = add nsw i64 %102, %106
  %108 = lshr i64 %107, 16
  %109 = trunc i64 %108 to i8
  %110 = getelementptr inbounds i8, ptr %36, i64 %44
  store i8 %109, ptr %110, align 1, !tbaa !11
  %111 = add nuw nsw i64 %44, 1
  %112 = icmp eq i64 %111, %18
  br i1 %112, label %19, label %43, !llvm.loop !376

113:                                              ; preds = %19, %5
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable
define internal void @start_pass_downsample(ptr nocapture %0) #11 {
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @sep_downsample(ptr noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2, ptr nocapture noundef readonly %3, i32 noundef %4) #2 {
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %7 = load ptr, ptr %6, align 8, !tbaa !143
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %35

11:                                               ; preds = %5
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = zext i32 %2 to i64
  br label %15

15:                                               ; preds = %15, %11
  %16 = phi i64 [ 0, %11 ], [ %30, %15 ]
  %17 = phi ptr [ %13, %11 ], [ %31, %15 ]
  %18 = getelementptr inbounds ptr, ptr %1, i64 %16
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = getelementptr inbounds ptr, ptr %19, i64 %14
  %21 = getelementptr inbounds ptr, ptr %3, i64 %16
  %22 = load ptr, ptr %21, align 8, !tbaa !7
  %23 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !105
  %25 = mul i32 %24, %4
  %26 = zext i32 %25 to i64
  %27 = getelementptr inbounds ptr, ptr %22, i64 %26
  %28 = getelementptr inbounds %struct.my_downsampler, ptr %7, i64 0, i32 1, i64 %16
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  tail call void %29(ptr noundef nonnull %0, ptr noundef %17, ptr noundef %20, ptr noundef %27) #25
  %30 = add nuw nsw i64 %16, 1
  %31 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 1
  %32 = load i32, ptr %8, align 4, !tbaa !100
  %33 = sext i32 %32 to i64
  %34 = icmp slt i64 %30, %33
  br i1 %34, label %15, label %35, !llvm.loop !377

35:                                               ; preds = %15, %5
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @fullsize_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !98
  %13 = sub i32 %7, %12
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %10, -2
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %34

17:                                               ; preds = %4
  %18 = add nsw i32 %10, 2
  %19 = zext i32 %12 to i64
  %20 = xor i32 %12, -1
  %21 = add i32 %7, %20
  %22 = zext i32 %21 to i64
  %23 = add nuw nsw i64 %22, 1
  %24 = zext i32 %18 to i64
  br label %25

25:                                               ; preds = %25, %17
  %26 = phi i64 [ 0, %17 ], [ %32, %25 ]
  %27 = getelementptr inbounds ptr, ptr %8, i64 %26
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = getelementptr inbounds i8, ptr %28, i64 %19
  %30 = getelementptr inbounds i8, ptr %29, i64 -1
  %31 = load i8, ptr %30, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %29, i8 %31, i64 %23, i1 false), !tbaa !11
  %32 = add nuw nsw i64 %26, 1
  %33 = icmp eq i64 %32, %24
  br i1 %33, label %34, label %25, !llvm.loop !378

34:                                               ; preds = %25, %4
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %36 = load i32, ptr %35, align 8, !tbaa !150
  %37 = sext i32 %36 to i64
  %38 = shl nsw i64 %37, 9
  %39 = sub nsw i64 65536, %38
  %40 = shl nsw i32 %36, 6
  %41 = zext i32 %40 to i64
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %43 = load i32, ptr %42, align 4, !tbaa !105
  %44 = icmp sgt i32 %43, 0
  br i1 %44, label %45, label %143

45:                                               ; preds = %34
  %46 = add i32 %7, -2
  br label %47

47:                                               ; preds = %127, %45
  %48 = phi i64 [ 0, %45 ], [ %56, %127 ]
  %49 = getelementptr inbounds ptr, ptr %3, i64 %48
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  %51 = getelementptr inbounds ptr, ptr %2, i64 %48
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = add nsw i64 %48, -1
  %54 = getelementptr inbounds ptr, ptr %2, i64 %53
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = add nuw nsw i64 %48, 1
  %57 = getelementptr inbounds ptr, ptr %2, i64 %56
  %58 = load ptr, ptr %57, align 8, !tbaa !7
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %55, align 1, !tbaa !11
  %61 = zext i8 %60 to i32
  %62 = getelementptr inbounds i8, ptr %58, i64 1
  %63 = load i8, ptr %58, align 1, !tbaa !11
  %64 = zext i8 %63 to i32
  %65 = add nuw nsw i32 %64, %61
  %66 = load i8, ptr %52, align 1, !tbaa !11
  %67 = zext i8 %66 to i32
  %68 = add nuw nsw i32 %65, %67
  %69 = getelementptr inbounds i8, ptr %52, i64 1
  %70 = zext i8 %66 to i64
  %71 = load i8, ptr %59, align 1, !tbaa !11
  %72 = zext i8 %71 to i32
  %73 = load i8, ptr %62, align 1, !tbaa !11
  %74 = zext i8 %73 to i32
  %75 = add nuw nsw i32 %74, %72
  %76 = load i8, ptr %69, align 1, !tbaa !11
  %77 = zext i8 %76 to i32
  %78 = add nuw nsw i32 %75, %77
  %79 = zext i32 %78 to i64
  %80 = shl nuw nsw i32 %68, 1
  %81 = zext i32 %80 to i64
  %82 = sub nsw i64 %81, %70
  %83 = add nsw i64 %82, %79
  %84 = mul nsw i64 %39, %70
  %85 = mul nsw i64 %83, %41
  %86 = add nsw i64 %84, 32768
  %87 = add i64 %86, %85
  %88 = lshr i64 %87, 16
  %89 = trunc i64 %88 to i8
  store i8 %89, ptr %50, align 1, !tbaa !11
  %90 = getelementptr inbounds i8, ptr %50, i64 1
  br label %91

91:                                               ; preds = %91, %47
  %92 = phi ptr [ %90, %47 ], [ %125, %91 ]
  %93 = phi i32 [ %68, %47 ], [ %94, %91 ]
  %94 = phi i32 [ %78, %47 ], [ %111, %91 ]
  %95 = phi i32 [ %46, %47 ], [ %124, %91 ]
  %96 = phi ptr [ %62, %47 ], [ %103, %91 ]
  %97 = phi ptr [ %59, %47 ], [ %102, %91 ]
  %98 = phi ptr [ %69, %47 ], [ %99, %91 ]
  %99 = getelementptr inbounds i8, ptr %98, i64 1
  %100 = load i8, ptr %98, align 1, !tbaa !11
  %101 = zext i8 %100 to i64
  %102 = getelementptr inbounds i8, ptr %97, i64 1
  %103 = getelementptr inbounds i8, ptr %96, i64 1
  %104 = load i8, ptr %102, align 1, !tbaa !11
  %105 = zext i8 %104 to i32
  %106 = load i8, ptr %103, align 1, !tbaa !11
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %107, %105
  %109 = load i8, ptr %99, align 1, !tbaa !11
  %110 = zext i8 %109 to i32
  %111 = add nuw nsw i32 %108, %110
  %112 = zext i32 %93 to i64
  %113 = zext i32 %94 to i64
  %114 = zext i32 %111 to i64
  %115 = add nuw nsw i64 %113, %112
  %116 = sub nsw i64 %115, %101
  %117 = add nsw i64 %116, %114
  %118 = mul nsw i64 %39, %101
  %119 = mul nsw i64 %117, %41
  %120 = add nsw i64 %118, 32768
  %121 = add i64 %120, %119
  %122 = lshr i64 %121, 16
  %123 = trunc i64 %122 to i8
  store i8 %123, ptr %92, align 1, !tbaa !11
  %124 = add i32 %95, -1
  %125 = getelementptr inbounds i8, ptr %92, i64 1
  %126 = icmp eq i32 %124, 0
  br i1 %126, label %127, label %91, !llvm.loop !379

127:                                              ; preds = %91
  %.lcssa3 = phi ptr [ %99, %91 ]
  %.lcssa2 = phi i32 [ %111, %91 ]
  %.lcssa1 = phi i64 [ %113, %91 ]
  %.lcssa = phi ptr [ %125, %91 ]
  %128 = load i8, ptr %.lcssa3, align 1, !tbaa !11
  %129 = zext i8 %128 to i64
  %130 = shl nuw nsw i32 %.lcssa2, 1
  %131 = zext i32 %130 to i64
  %132 = add nuw nsw i64 %131, %.lcssa1
  %133 = sub nsw i64 %132, %129
  %134 = mul nsw i64 %39, %129
  %135 = mul nsw i64 %133, %41
  %136 = add nsw i64 %134, 32768
  %137 = add i64 %136, %135
  %138 = lshr i64 %137, 16
  %139 = trunc i64 %138 to i8
  store i8 %139, ptr %.lcssa, align 1, !tbaa !11
  %140 = load i32, ptr %42, align 4, !tbaa !105
  %141 = sext i32 %140 to i64
  %142 = icmp slt i64 %56, %141
  br i1 %142, label %47, label %143, !llvm.loop !380

143:                                              ; preds = %127, %34
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @fullsize_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %6 = load i32, ptr %5, align 4, !tbaa !102
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = zext i32 %8 to i64
  %10 = icmp sgt i32 %6, 0
  br i1 %10, label %11, label %47

11:                                               ; preds = %11, %4
  %12 = phi i32 [ %19, %11 ], [ %6, %4 ]
  %13 = phi ptr [ %15, %11 ], [ %2, %4 ]
  %14 = phi ptr [ %17, %11 ], [ %3, %4 ]
  %15 = getelementptr inbounds ptr, ptr %13, i64 1
  %16 = load ptr, ptr %13, align 8, !tbaa !7
  %17 = getelementptr inbounds ptr, ptr %14, i64 1
  %18 = load ptr, ptr %14, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %18, ptr align 1 %16, i64 %9, i1 false)
  %19 = add nsw i32 %12, -1
  %20 = icmp ugt i32 %12, 1
  br i1 %20, label %11, label %21, !llvm.loop !381

21:                                               ; preds = %11
  %22 = load i32, ptr %5, align 4, !tbaa !102
  %23 = load i32, ptr %7, align 8, !tbaa !98
  %24 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %25 = load i32, ptr %24, align 4, !tbaa !109
  %26 = shl i32 %25, 3
  %27 = sub i32 %26, %23
  %28 = icmp sgt i32 %27, 0
  %29 = icmp sgt i32 %22, 0
  %30 = and i1 %29, %28
  br i1 %30, label %31, label %47

31:                                               ; preds = %21
  %32 = zext i32 %23 to i64
  %33 = xor i32 %23, -1
  %34 = add i32 %26, %33
  %35 = zext i32 %34 to i64
  %36 = add nuw nsw i64 %35, 1
  %37 = zext i32 %22 to i64
  br label %38

38:                                               ; preds = %38, %31
  %39 = phi i64 [ 0, %31 ], [ %45, %38 ]
  %40 = getelementptr inbounds ptr, ptr %3, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = getelementptr inbounds i8, ptr %41, i64 %32
  %43 = getelementptr inbounds i8, ptr %42, i64 -1
  %44 = load i8, ptr %43, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %42, i8 %44, i64 %36, i1 false), !tbaa !11
  %45 = add nuw nsw i64 %39, 1
  %46 = icmp eq i64 %45, %37
  br i1 %46, label %47, label %38, !llvm.loop !378

47:                                               ; preds = %38, %21, %4
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v1_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !102
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !11
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !378

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !105
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = icmp eq i32 %7, 0
  br label %39

39:                                               ; preds = %68, %37
  %40 = phi i32 [ %35, %37 ], [ %69, %68 ]
  %41 = phi i64 [ 0, %37 ], [ %70, %68 ]
  br i1 %38, label %68, label %42

42:                                               ; preds = %39
  %43 = getelementptr inbounds ptr, ptr %2, i64 %41
  %44 = load ptr, ptr %43, align 8, !tbaa !7
  %45 = getelementptr inbounds ptr, ptr %3, i64 %41
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  br label %47

47:                                               ; preds = %47, %42
  %48 = phi i32 [ %62, %47 ], [ 0, %42 ]
  %49 = phi ptr [ %61, %47 ], [ %46, %42 ]
  %50 = phi ptr [ %63, %47 ], [ %44, %42 ]
  %51 = phi i32 [ %64, %47 ], [ 0, %42 ]
  %52 = load i8, ptr %50, align 1, !tbaa !11
  %53 = zext i8 %52 to i32
  %54 = getelementptr inbounds i8, ptr %50, i64 1
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = zext i8 %55 to i32
  %57 = add nuw nsw i32 %48, %53
  %58 = add nuw nsw i32 %57, %56
  %59 = lshr i32 %58, 1
  %60 = trunc i32 %59 to i8
  %61 = getelementptr inbounds i8, ptr %49, i64 1
  store i8 %60, ptr %49, align 1, !tbaa !11
  %62 = xor i32 %48, 1
  %63 = getelementptr inbounds i8, ptr %50, i64 2
  %64 = add nuw i32 %51, 1
  %65 = icmp eq i32 %64, %7
  br i1 %65, label %66, label %47, !llvm.loop !382

66:                                               ; preds = %47
  %67 = load i32, ptr %34, align 4, !tbaa !105
  br label %68

68:                                               ; preds = %66, %39
  %69 = phi i32 [ %67, %66 ], [ %40, %39 ]
  %70 = add nuw nsw i64 %41, 1
  %71 = sext i32 %69 to i64
  %72 = icmp slt i64 %70, %71
  br i1 %72, label %39, label %73, !llvm.loop !383

73:                                               ; preds = %68, %33
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_smooth_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds ptr, ptr %2, i64 -1
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %10 = load i32, ptr %9, align 4, !tbaa !102
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %12 = load i32, ptr %11, align 8, !tbaa !98
  %13 = shl i32 %6, 4
  %14 = sub i32 %13, %12
  %15 = icmp sgt i32 %14, 0
  %16 = icmp sgt i32 %10, -2
  %17 = and i1 %16, %15
  br i1 %17, label %18, label %35

18:                                               ; preds = %4
  %19 = add nsw i32 %10, 2
  %20 = zext i32 %12 to i64
  %21 = xor i32 %12, -1
  %22 = add i32 %13, %21
  %23 = zext i32 %22 to i64
  %24 = add nuw nsw i64 %23, 1
  %25 = zext i32 %19 to i64
  br label %26

26:                                               ; preds = %26, %18
  %27 = phi i64 [ 0, %18 ], [ %33, %26 ]
  %28 = getelementptr inbounds ptr, ptr %8, i64 %27
  %29 = load ptr, ptr %28, align 8, !tbaa !7
  %30 = getelementptr inbounds i8, ptr %29, i64 %20
  %31 = getelementptr inbounds i8, ptr %30, i64 -1
  %32 = load i8, ptr %31, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %30, i8 %32, i64 %24, i1 false), !tbaa !11
  %33 = add nuw nsw i64 %27, 1
  %34 = icmp eq i64 %33, %25
  br i1 %34, label %35, label %26, !llvm.loop !378

35:                                               ; preds = %26, %4
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 27
  %37 = load i32, ptr %36, align 8, !tbaa !150
  %38 = mul i32 %37, -80
  %39 = add i32 %38, 16384
  %40 = zext i32 %39 to i64
  %41 = shl nsw i32 %37, 4
  %42 = zext i32 %41 to i64
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %44 = load i32, ptr %43, align 4, !tbaa !105
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %254

46:                                               ; preds = %35
  %47 = add i32 %7, -2
  br label %48

48:                                               ; preds = %195, %46
  %49 = phi i64 [ 0, %46 ], [ %250, %195 ]
  %50 = phi i64 [ 0, %46 ], [ %61, %195 ]
  %51 = getelementptr inbounds ptr, ptr %3, i64 %49
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = getelementptr inbounds ptr, ptr %2, i64 %50
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = or i64 %50, 1
  %56 = getelementptr inbounds ptr, ptr %2, i64 %55
  %57 = load ptr, ptr %56, align 8, !tbaa !7
  %58 = add nsw i64 %50, -1
  %59 = getelementptr inbounds ptr, ptr %2, i64 %58
  %60 = load ptr, ptr %59, align 8, !tbaa !7
  %61 = add nuw nsw i64 %50, 2
  %62 = getelementptr inbounds ptr, ptr %2, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = load i8, ptr %54, align 1, !tbaa !11
  %65 = zext i8 %64 to i32
  %66 = getelementptr inbounds i8, ptr %54, i64 1
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = zext i8 %67 to i32
  %69 = load i8, ptr %57, align 1, !tbaa !11
  %70 = zext i8 %69 to i32
  %71 = getelementptr inbounds i8, ptr %57, i64 1
  %72 = load i8, ptr %71, align 1, !tbaa !11
  %73 = zext i8 %72 to i32
  %74 = add nuw nsw i32 %70, %65
  %75 = add nuw nsw i32 %74, %68
  %76 = add nuw nsw i32 %75, %73
  %77 = zext i32 %76 to i64
  %78 = load i8, ptr %60, align 1, !tbaa !11
  %79 = zext i8 %78 to i32
  %80 = getelementptr inbounds i8, ptr %60, i64 1
  %81 = load i8, ptr %80, align 1, !tbaa !11
  %82 = zext i8 %81 to i32
  %83 = load i8, ptr %63, align 1, !tbaa !11
  %84 = zext i8 %83 to i32
  %85 = getelementptr inbounds i8, ptr %63, i64 1
  %86 = load i8, ptr %85, align 1, !tbaa !11
  %87 = zext i8 %86 to i32
  %88 = getelementptr inbounds i8, ptr %54, i64 2
  %89 = load i8, ptr %88, align 1, !tbaa !11
  %90 = zext i8 %89 to i32
  %91 = getelementptr inbounds i8, ptr %57, i64 2
  %92 = load i8, ptr %91, align 1, !tbaa !11
  %93 = zext i8 %92 to i32
  %94 = add nuw nsw i32 %84, %79
  %95 = add nuw nsw i32 %94, %74
  %96 = add nuw nsw i32 %95, %82
  %97 = add nuw nsw i32 %96, %87
  %98 = add nuw nsw i32 %97, %90
  %99 = add nuw nsw i32 %98, %93
  %100 = zext i32 %99 to i64
  %101 = shl nuw nsw i64 %100, 1
  %102 = getelementptr inbounds i8, ptr %60, i64 2
  %103 = load i8, ptr %102, align 1, !tbaa !11
  %104 = zext i8 %103 to i32
  %105 = getelementptr inbounds i8, ptr %63, i64 2
  %106 = load i8, ptr %105, align 1, !tbaa !11
  %107 = zext i8 %106 to i32
  %108 = add nuw nsw i32 %94, %104
  %109 = add nuw nsw i32 %108, %107
  %110 = zext i32 %109 to i64
  %111 = add nuw nsw i64 %101, %110
  %112 = mul nuw nsw i64 %77, %40
  %113 = mul nuw nsw i64 %111, %42
  %114 = add nuw nsw i64 %112, 32768
  %115 = add nuw nsw i64 %114, %113
  %116 = lshr i64 %115, 16
  %117 = trunc i64 %116 to i8
  store i8 %117, ptr %52, align 1, !tbaa !11
  %118 = getelementptr inbounds i8, ptr %52, i64 1
  br label %119

119:                                              ; preds = %119, %48
  %120 = phi ptr [ %118, %48 ], [ %193, %119 ]
  %121 = phi ptr [ %105, %48 ], [ %181, %119 ]
  %122 = phi ptr [ %102, %48 ], [ %173, %119 ]
  %123 = phi ptr [ %91, %48 ], [ %164, %119 ]
  %124 = phi ptr [ %88, %48 ], [ %156, %119 ]
  %125 = phi i32 [ %47, %48 ], [ %192, %119 ]
  %126 = load i8, ptr %124, align 1, !tbaa !11
  %127 = zext i8 %126 to i64
  %128 = getelementptr inbounds i8, ptr %124, i64 1
  %129 = load i8, ptr %128, align 1, !tbaa !11
  %130 = zext i8 %129 to i64
  %131 = add nuw nsw i64 %130, %127
  %132 = load i8, ptr %123, align 1, !tbaa !11
  %133 = zext i8 %132 to i64
  %134 = add nuw nsw i64 %131, %133
  %135 = getelementptr inbounds i8, ptr %123, i64 1
  %136 = load i8, ptr %135, align 1, !tbaa !11
  %137 = zext i8 %136 to i64
  %138 = add nuw nsw i64 %134, %137
  %139 = load i8, ptr %122, align 1, !tbaa !11
  %140 = zext i8 %139 to i64
  %141 = getelementptr inbounds i8, ptr %122, i64 1
  %142 = load i8, ptr %141, align 1, !tbaa !11
  %143 = zext i8 %142 to i64
  %144 = add nuw nsw i64 %143, %140
  %145 = load i8, ptr %121, align 1, !tbaa !11
  %146 = zext i8 %145 to i64
  %147 = add nuw nsw i64 %144, %146
  %148 = getelementptr inbounds i8, ptr %121, i64 1
  %149 = load i8, ptr %148, align 1, !tbaa !11
  %150 = zext i8 %149 to i64
  %151 = add nuw nsw i64 %147, %150
  %152 = getelementptr inbounds i8, ptr %124, i64 -1
  %153 = load i8, ptr %152, align 1, !tbaa !11
  %154 = zext i8 %153 to i64
  %155 = add nuw nsw i64 %151, %154
  %156 = getelementptr inbounds i8, ptr %124, i64 2
  %157 = load i8, ptr %156, align 1, !tbaa !11
  %158 = zext i8 %157 to i64
  %159 = add nuw nsw i64 %155, %158
  %160 = getelementptr inbounds i8, ptr %123, i64 -1
  %161 = load i8, ptr %160, align 1, !tbaa !11
  %162 = zext i8 %161 to i64
  %163 = add nuw nsw i64 %159, %162
  %164 = getelementptr inbounds i8, ptr %123, i64 2
  %165 = load i8, ptr %164, align 1, !tbaa !11
  %166 = zext i8 %165 to i64
  %167 = add nuw nsw i64 %163, %166
  %168 = shl nuw nsw i64 %167, 1
  %169 = and i64 %168, 8589934590
  %170 = getelementptr inbounds i8, ptr %122, i64 -1
  %171 = load i8, ptr %170, align 1, !tbaa !11
  %172 = zext i8 %171 to i64
  %173 = getelementptr inbounds i8, ptr %122, i64 2
  %174 = load i8, ptr %173, align 1, !tbaa !11
  %175 = zext i8 %174 to i64
  %176 = add nuw nsw i64 %175, %172
  %177 = getelementptr inbounds i8, ptr %121, i64 -1
  %178 = load i8, ptr %177, align 1, !tbaa !11
  %179 = zext i8 %178 to i64
  %180 = add nuw nsw i64 %176, %179
  %181 = getelementptr inbounds i8, ptr %121, i64 2
  %182 = load i8, ptr %181, align 1, !tbaa !11
  %183 = zext i8 %182 to i64
  %184 = add nuw nsw i64 %180, %169
  %185 = add nuw nsw i64 %184, %183
  %186 = mul nuw nsw i64 %138, %40
  %187 = mul nuw nsw i64 %185, %42
  %188 = add nuw nsw i64 %186, 32768
  %189 = add nuw nsw i64 %188, %187
  %190 = lshr i64 %189, 16
  %191 = trunc i64 %190 to i8
  store i8 %191, ptr %120, align 1, !tbaa !11
  %192 = add i32 %125, -1
  %193 = getelementptr inbounds i8, ptr %120, i64 1
  %194 = icmp eq i32 %192, 0
  br i1 %194, label %195, label %119, !llvm.loop !384

195:                                              ; preds = %119
  %.lcssa8 = phi ptr [ %121, %119 ]
  %.lcssa7 = phi ptr [ %122, %119 ]
  %.lcssa6 = phi ptr [ %123, %119 ]
  %.lcssa5 = phi ptr [ %124, %119 ]
  %.lcssa4 = phi ptr [ %156, %119 ]
  %.lcssa3 = phi ptr [ %164, %119 ]
  %.lcssa2 = phi ptr [ %173, %119 ]
  %.lcssa1 = phi ptr [ %181, %119 ]
  %.lcssa = phi ptr [ %193, %119 ]
  %196 = getelementptr inbounds i8, ptr %.lcssa5, i64 1
  %197 = getelementptr inbounds i8, ptr %.lcssa6, i64 1
  %198 = getelementptr inbounds i8, ptr %.lcssa7, i64 1
  %199 = getelementptr inbounds i8, ptr %.lcssa8, i64 1
  %200 = load i8, ptr %.lcssa4, align 1, !tbaa !11
  %201 = zext i8 %200 to i32
  %202 = getelementptr inbounds i8, ptr %.lcssa5, i64 3
  %203 = load i8, ptr %202, align 1, !tbaa !11
  %204 = zext i8 %203 to i32
  %205 = load i8, ptr %.lcssa3, align 1, !tbaa !11
  %206 = zext i8 %205 to i32
  %207 = getelementptr inbounds i8, ptr %.lcssa6, i64 3
  %208 = load i8, ptr %207, align 1, !tbaa !11
  %209 = zext i8 %208 to i32
  %210 = add nuw nsw i32 %209, %204
  %211 = add nuw nsw i32 %206, %201
  %212 = add nuw nsw i32 %211, %210
  %213 = zext i32 %212 to i64
  %214 = load i8, ptr %.lcssa2, align 1, !tbaa !11
  %215 = zext i8 %214 to i32
  %216 = getelementptr inbounds i8, ptr %.lcssa7, i64 3
  %217 = load i8, ptr %216, align 1, !tbaa !11
  %218 = zext i8 %217 to i32
  %219 = load i8, ptr %.lcssa1, align 1, !tbaa !11
  %220 = zext i8 %219 to i32
  %221 = getelementptr inbounds i8, ptr %.lcssa8, i64 3
  %222 = load i8, ptr %221, align 1, !tbaa !11
  %223 = zext i8 %222 to i32
  %224 = load i8, ptr %196, align 1, !tbaa !11
  %225 = zext i8 %224 to i32
  %226 = load i8, ptr %197, align 1, !tbaa !11
  %227 = zext i8 %226 to i32
  %228 = add nuw nsw i32 %223, %218
  %229 = add nuw nsw i32 %228, %215
  %230 = add nuw nsw i32 %229, %210
  %231 = add nuw nsw i32 %230, %220
  %232 = add nuw nsw i32 %231, %225
  %233 = add nuw nsw i32 %232, %227
  %234 = zext i32 %233 to i64
  %235 = shl nuw nsw i64 %234, 1
  %236 = load i8, ptr %198, align 1, !tbaa !11
  %237 = zext i8 %236 to i32
  %238 = load i8, ptr %199, align 1, !tbaa !11
  %239 = zext i8 %238 to i32
  %240 = add nuw nsw i32 %228, %237
  %241 = add nuw nsw i32 %240, %239
  %242 = zext i32 %241 to i64
  %243 = add nuw nsw i64 %235, %242
  %244 = mul nuw nsw i64 %213, %40
  %245 = mul nuw nsw i64 %243, %42
  %246 = add nuw nsw i64 %244, 32768
  %247 = add nuw nsw i64 %246, %245
  %248 = lshr i64 %247, 16
  %249 = trunc i64 %248 to i8
  store i8 %249, ptr %.lcssa, align 1, !tbaa !11
  %250 = add nuw nsw i64 %49, 1
  %251 = load i32, ptr %43, align 4, !tbaa !105
  %252 = sext i32 %251 to i64
  %253 = icmp slt i64 %250, %252
  br i1 %253, label %48, label %254, !llvm.loop !385

254:                                              ; preds = %195, %35
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @h2v2_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %9 = load i32, ptr %8, align 4, !tbaa !102
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %11 = load i32, ptr %10, align 8, !tbaa !98
  %12 = shl i32 %6, 4
  %13 = sub i32 %12, %11
  %14 = icmp sgt i32 %13, 0
  %15 = icmp sgt i32 %9, 0
  %16 = and i1 %15, %14
  br i1 %16, label %17, label %33

17:                                               ; preds = %4
  %18 = zext i32 %11 to i64
  %19 = xor i32 %11, -1
  %20 = add i32 %12, %19
  %21 = zext i32 %20 to i64
  %22 = add nuw nsw i64 %21, 1
  %23 = zext i32 %9 to i64
  br label %24

24:                                               ; preds = %24, %17
  %25 = phi i64 [ 0, %17 ], [ %31, %24 ]
  %26 = getelementptr inbounds ptr, ptr %2, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = getelementptr inbounds i8, ptr %27, i64 %18
  %29 = getelementptr inbounds i8, ptr %28, i64 -1
  %30 = load i8, ptr %29, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %28, i8 %30, i64 %22, i1 false), !tbaa !11
  %31 = add nuw nsw i64 %25, 1
  %32 = icmp eq i64 %31, %23
  br i1 %32, label %33, label %24, !llvm.loop !378

33:                                               ; preds = %24, %4
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %35 = load i32, ptr %34, align 4, !tbaa !105
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %87

37:                                               ; preds = %33
  %38 = icmp eq i32 %7, 0
  br label %39

39:                                               ; preds = %81, %37
  %40 = phi i32 [ %35, %37 ], [ %82, %81 ]
  %41 = phi i64 [ 0, %37 ], [ %84, %81 ]
  %42 = phi i64 [ 0, %37 ], [ %83, %81 ]
  br i1 %38, label %81, label %43

43:                                               ; preds = %39
  %44 = or i64 %42, 1
  %45 = getelementptr inbounds ptr, ptr %2, i64 %44
  %46 = load ptr, ptr %45, align 8, !tbaa !7
  %47 = getelementptr inbounds ptr, ptr %2, i64 %42
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = getelementptr inbounds ptr, ptr %3, i64 %41
  %50 = load ptr, ptr %49, align 8, !tbaa !7
  br label %51

51:                                               ; preds = %51, %43
  %52 = phi i32 [ %74, %51 ], [ 1, %43 ]
  %53 = phi ptr [ %73, %51 ], [ %50, %43 ]
  %54 = phi ptr [ %76, %51 ], [ %46, %43 ]
  %55 = phi ptr [ %75, %51 ], [ %48, %43 ]
  %56 = phi i32 [ %77, %51 ], [ 0, %43 ]
  %57 = load i8, ptr %55, align 1, !tbaa !11
  %58 = zext i8 %57 to i32
  %59 = getelementptr inbounds i8, ptr %55, i64 1
  %60 = load i8, ptr %59, align 1, !tbaa !11
  %61 = zext i8 %60 to i32
  %62 = load i8, ptr %54, align 1, !tbaa !11
  %63 = zext i8 %62 to i32
  %64 = getelementptr inbounds i8, ptr %54, i64 1
  %65 = load i8, ptr %64, align 1, !tbaa !11
  %66 = zext i8 %65 to i32
  %67 = add nuw nsw i32 %52, %58
  %68 = add nuw nsw i32 %67, %61
  %69 = add nuw nsw i32 %68, %63
  %70 = add nuw nsw i32 %69, %66
  %71 = lshr i32 %70, 2
  %72 = trunc i32 %71 to i8
  %73 = getelementptr inbounds i8, ptr %53, i64 1
  store i8 %72, ptr %53, align 1, !tbaa !11
  %74 = xor i32 %52, 3
  %75 = getelementptr inbounds i8, ptr %55, i64 2
  %76 = getelementptr inbounds i8, ptr %54, i64 2
  %77 = add nuw i32 %56, 1
  %78 = icmp eq i32 %77, %7
  br i1 %78, label %79, label %51, !llvm.loop !386

79:                                               ; preds = %51
  %80 = load i32, ptr %34, align 4, !tbaa !105
  br label %81

81:                                               ; preds = %79, %39
  %82 = phi i32 [ %80, %79 ], [ %40, %39 ]
  %83 = add nuw nsw i64 %42, 2
  %84 = add nuw nsw i64 %41, 1
  %85 = sext i32 %82 to i64
  %86 = icmp slt i64 %84, %85
  br i1 %86, label %39, label %87, !llvm.loop !387

87:                                               ; preds = %81, %33
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @int_downsample(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef readonly %3) #14 {
  %5 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !109
  %7 = shl i32 %6, 3
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %9 = load i32, ptr %8, align 8, !tbaa !101
  %10 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 2
  %11 = load i32, ptr %10, align 8, !tbaa !103
  %12 = sdiv i32 %9, %11
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = load i32, ptr %13, align 4, !tbaa !102
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 3
  %16 = load i32, ptr %15, align 4, !tbaa !105
  %17 = sdiv i32 %14, %16
  %18 = mul nsw i32 %17, %12
  %19 = sdiv i32 %18, 2
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %21 = load i32, ptr %20, align 8, !tbaa !98
  %22 = mul i32 %12, %7
  %23 = sub i32 %22, %21
  %24 = icmp sgt i32 %23, 0
  %25 = icmp sgt i32 %14, 0
  %26 = and i1 %25, %24
  br i1 %26, label %27, label %45

27:                                               ; preds = %4
  %28 = zext i32 %21 to i64
  %29 = xor i32 %21, -1
  %30 = add i32 %22, %29
  %31 = zext i32 %30 to i64
  %32 = add nuw nsw i64 %31, 1
  %33 = zext i32 %14 to i64
  br label %34

34:                                               ; preds = %34, %27
  %35 = phi i64 [ 0, %27 ], [ %41, %34 ]
  %36 = getelementptr inbounds ptr, ptr %2, i64 %35
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = getelementptr inbounds i8, ptr %37, i64 %28
  %39 = getelementptr inbounds i8, ptr %38, i64 -1
  %40 = load i8, ptr %39, align 1, !tbaa !11
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(1) %38, i8 %40, i64 %32, i1 false), !tbaa !11
  %41 = add nuw nsw i64 %35, 1
  %42 = icmp eq i64 %41, %33
  br i1 %42, label %43, label %34, !llvm.loop !378

43:                                               ; preds = %34
  %44 = load i32, ptr %15, align 4, !tbaa !105
  br label %45

45:                                               ; preds = %43, %4
  %46 = phi i32 [ %44, %43 ], [ %16, %4 ]
  %47 = icmp sgt i32 %46, 0
  br i1 %47, label %48, label %108

48:                                               ; preds = %45
  %49 = icmp eq i32 %7, 0
  %50 = icmp sgt i32 %17, 0
  %51 = icmp sgt i32 %12, 0
  %52 = sext i32 %19 to i64
  %53 = sext i32 %18 to i64
  %54 = sext i32 %17 to i64
  %55 = zext i32 %17 to i64
  br label %56

56:                                               ; preds = %102, %48
  %57 = phi i32 [ %46, %48 ], [ %103, %102 ]
  %58 = phi i64 [ 0, %48 ], [ %105, %102 ]
  %59 = phi i64 [ 0, %48 ], [ %104, %102 ]
  br i1 %49, label %102, label %60

60:                                               ; preds = %56
  %61 = getelementptr inbounds ptr, ptr %3, i64 %58
  %62 = load ptr, ptr %61, align 8, !tbaa !7
  br label %63

63:                                               ; preds = %91, %60
  %64 = phi ptr [ %96, %91 ], [ %62, %60 ]
  %65 = phi i32 [ %98, %91 ], [ 0, %60 ]
  %66 = phi i32 [ %97, %91 ], [ 0, %60 ]
  br i1 %50, label %67, label %91

67:                                               ; preds = %63
  %68 = zext i32 %65 to i64
  br label %69

69:                                               ; preds = %87, %67
  %70 = phi i64 [ 0, %67 ], [ %89, %87 ]
  %71 = phi i64 [ 0, %67 ], [ %88, %87 ]
  br i1 %51, label %72, label %87

72:                                               ; preds = %69
  %73 = add nsw i64 %70, %59
  %74 = getelementptr inbounds ptr, ptr %2, i64 %73
  %75 = load ptr, ptr %74, align 8, !tbaa !7
  %76 = getelementptr inbounds i8, ptr %75, i64 %68
  br label %77

77:                                               ; preds = %77, %72
  %78 = phi i64 [ %84, %77 ], [ %71, %72 ]
  %79 = phi ptr [ %81, %77 ], [ %76, %72 ]
  %80 = phi i32 [ %85, %77 ], [ 0, %72 ]
  %81 = getelementptr inbounds i8, ptr %79, i64 1
  %82 = load i8, ptr %79, align 1, !tbaa !11
  %83 = zext i8 %82 to i64
  %84 = add nsw i64 %78, %83
  %85 = add nuw nsw i32 %80, 1
  %86 = icmp eq i32 %85, %12
  br i1 %86, label %87, label %77, !llvm.loop !388

87:                                               ; preds = %77, %69
  %88 = phi i64 [ %71, %69 ], [ %84, %77 ]
  %89 = add nuw nsw i64 %70, 1
  %90 = icmp eq i64 %89, %55
  br i1 %90, label %91, label %69, !llvm.loop !389

91:                                               ; preds = %87, %63
  %92 = phi i64 [ 0, %63 ], [ %88, %87 ]
  %93 = add nsw i64 %92, %52
  %94 = sdiv i64 %93, %53
  %95 = trunc i64 %94 to i8
  %96 = getelementptr inbounds i8, ptr %64, i64 1
  store i8 %95, ptr %64, align 1, !tbaa !11
  %97 = add nuw i32 %66, 1
  %98 = add i32 %65, %12
  %99 = icmp eq i32 %97, %7
  br i1 %99, label %100, label %63, !llvm.loop !390

100:                                              ; preds = %91
  %101 = load i32, ptr %15, align 4, !tbaa !105
  br label %102

102:                                              ; preds = %100, %56
  %103 = phi i32 [ %101, %100 ], [ %57, %56 ]
  %104 = add i64 %59, %54
  %105 = add nuw nsw i64 %58, 1
  %106 = sext i32 %103 to i64
  %107 = icmp slt i64 %105, %106
  br i1 %107, label %56, label %108, !llvm.loop !391

108:                                              ; preds = %102, %45
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_prep(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %4 = load ptr, ptr %3, align 8, !tbaa !152
  %5 = icmp eq i32 %1, 0
  br i1 %5, label %10, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 4, ptr %8, align 8, !tbaa !22
  %9 = load ptr, ptr %7, align 8, !tbaa !12
  tail call void %9(ptr noundef nonnull %0) #25
  br label %10

10:                                               ; preds = %6, %2
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %12 = load i32, ptr %11, align 4, !tbaa !97
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 2
  store i32 %12, ptr %13, align 8, !tbaa !392
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %14, align 4, !tbaa !393
  %15 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 4
  store i32 0, ptr %15, align 8, !tbaa !394
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %17 = load i32, ptr %16, align 4, !tbaa !102
  %18 = shl nsw i32 %17, 1
  %19 = getelementptr inbounds %struct.my_prep_controller, ptr %4, i64 0, i32 5
  store i32 %18, ptr %19, align 4, !tbaa !395
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pre_process_context(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #2 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %11 = load i32, ptr %10, align 4, !tbaa !102
  %12 = mul nsw i32 %11, 3
  %13 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %14 = load i32, ptr %5, align 4, !tbaa !121
  %15 = icmp ult i32 %14, %6
  br i1 %15, label %16, label %158

16:                                               ; preds = %7
  %17 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %18 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 5
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %22 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  %25 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 4
  br label %26

26:                                               ; preds = %155, %16
  %27 = phi i32 [ %156, %155 ], [ %14, %16 ]
  %28 = load i32, ptr %2, align 4, !tbaa !121
  %29 = icmp ult i32 %28, %3
  br i1 %29, label %30, label %86

30:                                               ; preds = %26
  %31 = sub i32 %3, %28
  %32 = load i32, ptr %18, align 4, !tbaa !395
  %33 = load i32, ptr %17, align 4, !tbaa !393
  %34 = sub nsw i32 %32, %33
  %35 = tail call i32 @llvm.umin.i32(i32 %34, i32 %31)
  %36 = load ptr, ptr %21, align 8, !tbaa !137
  %37 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %36, i64 0, i32 1
  %38 = load ptr, ptr %37, align 8, !tbaa !396
  %39 = zext i32 %28 to i64
  %40 = getelementptr inbounds ptr, ptr %1, i64 %39
  tail call void %38(ptr noundef %0, ptr noundef %40, ptr noundef nonnull %22, i32 noundef %33, i32 noundef %35) #25
  %41 = load i32, ptr %13, align 8, !tbaa !392
  %42 = load i32, ptr %23, align 4, !tbaa !97
  %43 = icmp eq i32 %41, %42
  br i1 %43, label %44, label %77

44:                                               ; preds = %30
  %45 = load i32, ptr %19, align 4, !tbaa !100
  %46 = icmp sgt i32 %45, 0
  br i1 %46, label %47, label %77

47:                                               ; preds = %44
  %48 = load i32, ptr %10, align 4, !tbaa !102
  br label %49

49:                                               ; preds = %71, %47
  %50 = phi i32 [ %45, %47 ], [ %72, %71 ]
  %51 = phi i32 [ %48, %47 ], [ %73, %71 ]
  %52 = phi i64 [ 0, %47 ], [ %74, %71 ]
  %53 = icmp slt i32 %51, 1
  br i1 %53, label %71, label %54

54:                                               ; preds = %49
  %55 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %52
  br label %56

56:                                               ; preds = %56, %54
  %57 = phi i64 [ %65, %56 ], [ 1, %54 ]
  %58 = load ptr, ptr %55, align 8, !tbaa !7
  %59 = sub nsw i64 0, %57
  %60 = load i32, ptr %20, align 8, !tbaa !98
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds ptr, ptr %58, i64 %59
  %63 = load ptr, ptr %58, align 8, !tbaa !7
  %64 = load ptr, ptr %62, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %64, ptr align 1 %63, i64 %61, i1 false)
  %65 = add nuw nsw i64 %57, 1
  %66 = load i32, ptr %10, align 4, !tbaa !102
  %67 = sext i32 %66 to i64
  %68 = icmp slt i64 %57, %67
  br i1 %68, label %56, label %69, !llvm.loop !397

69:                                               ; preds = %56
  %.lcssa = phi i32 [ %66, %56 ]
  %70 = load i32, ptr %19, align 4, !tbaa !100
  br label %71

71:                                               ; preds = %69, %49
  %72 = phi i32 [ %70, %69 ], [ %50, %49 ]
  %73 = phi i32 [ %.lcssa, %69 ], [ %51, %49 ]
  %74 = add nuw nsw i64 %52, 1
  %75 = sext i32 %72 to i64
  %76 = icmp slt i64 %74, %75
  br i1 %76, label %49, label %77, !llvm.loop !398

77:                                               ; preds = %71, %44, %30
  %78 = load i32, ptr %2, align 4, !tbaa !121
  %79 = add i32 %78, %35
  store i32 %79, ptr %2, align 4, !tbaa !121
  %80 = load i32, ptr %17, align 4, !tbaa !393
  %81 = add nsw i32 %80, %35
  store i32 %81, ptr %17, align 4, !tbaa !393
  %82 = load i32, ptr %13, align 8, !tbaa !392
  %83 = sub i32 %82, %35
  store i32 %83, ptr %13, align 8, !tbaa !392
  %84 = load i32, ptr %18, align 4, !tbaa !395
  %85 = load i32, ptr %5, align 4, !tbaa !121
  br label %130

86:                                               ; preds = %26
  %87 = load i32, ptr %13, align 8, !tbaa !392
  %88 = icmp eq i32 %87, 0
  br i1 %88, label %89, label %158

89:                                               ; preds = %86
  %90 = load i32, ptr %17, align 4, !tbaa !393
  %91 = load i32, ptr %18, align 4, !tbaa !395
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %130

93:                                               ; preds = %89
  %94 = load i32, ptr %19, align 4, !tbaa !100
  %95 = icmp sgt i32 %94, 0
  br i1 %95, label %96, label %127

96:                                               ; preds = %120, %93
  %97 = phi i32 [ %121, %120 ], [ %94, %93 ]
  %98 = phi i64 [ %122, %120 ], [ 0, %93 ]
  %99 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %98
  %100 = load ptr, ptr %99, align 8, !tbaa !7
  %101 = load i32, ptr %17, align 4, !tbaa !393
  %102 = load i32, ptr %18, align 4, !tbaa !395
  %103 = icmp slt i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %96
  %105 = load i32, ptr %20, align 8, !tbaa !98
  %106 = add nsw i32 %101, -1
  %107 = zext i32 %105 to i64
  %108 = sext i32 %106 to i64
  %109 = getelementptr inbounds ptr, ptr %100, i64 %108
  br label %110

110:                                              ; preds = %110, %104
  %111 = phi i32 [ %101, %104 ], [ %116, %110 ]
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds ptr, ptr %100, i64 %112
  %114 = load ptr, ptr %109, align 8, !tbaa !7
  %115 = load ptr, ptr %113, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %115, ptr align 1 %114, i64 %107, i1 false)
  %116 = add i32 %111, 1
  %117 = icmp eq i32 %116, %102
  br i1 %117, label %118, label %110, !llvm.loop !399

118:                                              ; preds = %110
  %119 = load i32, ptr %19, align 4, !tbaa !100
  br label %120

120:                                              ; preds = %118, %96
  %121 = phi i32 [ %119, %118 ], [ %97, %96 ]
  %122 = add nuw nsw i64 %98, 1
  %123 = sext i32 %121 to i64
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %96, label %125, !llvm.loop !400

125:                                              ; preds = %120
  %126 = load i32, ptr %18, align 4, !tbaa !395
  br label %127

127:                                              ; preds = %125, %93
  %128 = phi i32 [ %126, %125 ], [ %91, %93 ]
  store i32 %128, ptr %17, align 4, !tbaa !393
  %129 = load i32, ptr %5, align 4, !tbaa !121
  br label %135

130:                                              ; preds = %89, %77
  %131 = phi i32 [ %27, %89 ], [ %85, %77 ]
  %132 = phi i32 [ %91, %89 ], [ %84, %77 ]
  %133 = phi i32 [ %90, %89 ], [ %81, %77 ]
  %134 = icmp eq i32 %133, %132
  br i1 %134, label %135, label %155

135:                                              ; preds = %130, %127
  %136 = phi i32 [ %129, %127 ], [ %131, %130 ]
  %137 = load ptr, ptr %24, align 8, !tbaa !143
  %138 = getelementptr inbounds %struct.jpeg_downsampler, ptr %137, i64 0, i32 1
  %139 = load ptr, ptr %138, align 8, !tbaa !401
  %140 = load i32, ptr %25, align 8, !tbaa !394
  tail call void %139(ptr noundef %0, ptr noundef nonnull %22, i32 noundef %140, ptr noundef %4, i32 noundef %136) #25
  %141 = load i32, ptr %5, align 4, !tbaa !121
  %142 = add i32 %141, 1
  store i32 %142, ptr %5, align 4, !tbaa !121
  %143 = load i32, ptr %10, align 4, !tbaa !102
  %144 = load i32, ptr %25, align 8, !tbaa !394
  %145 = add nsw i32 %144, %143
  %146 = icmp slt i32 %145, %12
  %147 = select i1 %146, i32 %145, i32 0
  store i32 %147, ptr %25, align 8, !tbaa !394
  %148 = load i32, ptr %17, align 4, !tbaa !393
  %149 = icmp slt i32 %148, %12
  br i1 %149, label %151, label %150

150:                                              ; preds = %135
  store i32 0, ptr %17, align 4, !tbaa !393
  br label %151

151:                                              ; preds = %150, %135
  %152 = phi i32 [ 0, %150 ], [ %148, %135 ]
  %153 = add nsw i32 %152, %143
  store i32 %153, ptr %18, align 4, !tbaa !395
  %154 = load i32, ptr %5, align 4, !tbaa !121
  br label %155

155:                                              ; preds = %151, %130
  %156 = phi i32 [ %154, %151 ], [ %131, %130 ]
  %157 = icmp ult i32 %156, %6
  br i1 %157, label %26, label %158, !llvm.loop !402

158:                                              ; preds = %155, %86, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @pre_process_data(ptr noundef %0, ptr noundef %1, ptr nocapture noundef %2, i32 noundef %3, ptr noundef %4, ptr nocapture noundef %5, i32 noundef %6) #2 {
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %9 = load ptr, ptr %8, align 8, !tbaa !152
  %10 = load i32, ptr %2, align 4, !tbaa !121
  %11 = icmp ult i32 %10, %3
  br i1 %11, label %12, label %144

12:                                               ; preds = %7
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %14 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 3
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 56
  %16 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1
  %17 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 57
  br label %21

21:                                               ; preds = %141, %12
  %22 = phi i32 [ %10, %12 ], [ %142, %141 ]
  %23 = load i32, ptr %5, align 4, !tbaa !121
  %24 = icmp ult i32 %23, %6
  br i1 %24, label %25, label %144

25:                                               ; preds = %21
  %26 = sub i32 %3, %22
  %27 = load i32, ptr %13, align 4, !tbaa !102
  %28 = load i32, ptr %14, align 4, !tbaa !393
  %29 = sub nsw i32 %27, %28
  %30 = tail call i32 @llvm.umin.i32(i32 %29, i32 %26)
  %31 = load ptr, ptr %15, align 8, !tbaa !137
  %32 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !396
  %34 = zext i32 %22 to i64
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  tail call void %33(ptr noundef nonnull %0, ptr noundef %35, ptr noundef nonnull %16, i32 noundef %28, i32 noundef %30) #25
  %36 = load i32, ptr %2, align 4, !tbaa !121
  %37 = add i32 %36, %30
  store i32 %37, ptr %2, align 4, !tbaa !121
  %38 = load i32, ptr %14, align 4, !tbaa !393
  %39 = add nsw i32 %38, %30
  store i32 %39, ptr %14, align 4, !tbaa !393
  %40 = load i32, ptr %17, align 8, !tbaa !392
  %41 = sub i32 %40, %30
  store i32 %41, ptr %17, align 8, !tbaa !392
  %42 = icmp eq i32 %40, %30
  %43 = load i32, ptr %13, align 4, !tbaa !102
  %44 = icmp slt i32 %39, %43
  %45 = select i1 %42, i1 %44, i1 false
  br i1 %45, label %46, label %82

46:                                               ; preds = %25
  %47 = load i32, ptr %18, align 4, !tbaa !100
  %48 = icmp sgt i32 %47, 0
  br i1 %48, label %49, label %80

49:                                               ; preds = %73, %46
  %50 = phi i32 [ %74, %73 ], [ %47, %46 ]
  %51 = phi i64 [ %75, %73 ], [ 0, %46 ]
  %52 = getelementptr inbounds %struct.my_prep_controller, ptr %9, i64 0, i32 1, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = load i32, ptr %14, align 4, !tbaa !393
  %55 = load i32, ptr %13, align 4, !tbaa !102
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %73

57:                                               ; preds = %49
  %58 = load i32, ptr %19, align 8, !tbaa !98
  %59 = add nsw i32 %54, -1
  %60 = zext i32 %58 to i64
  %61 = sext i32 %59 to i64
  %62 = getelementptr inbounds ptr, ptr %53, i64 %61
  br label %63

63:                                               ; preds = %63, %57
  %64 = phi i32 [ %54, %57 ], [ %69, %63 ]
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds ptr, ptr %53, i64 %65
  %67 = load ptr, ptr %62, align 8, !tbaa !7
  %68 = load ptr, ptr %66, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %68, ptr align 1 %67, i64 %60, i1 false)
  %69 = add i32 %64, 1
  %70 = icmp eq i32 %69, %55
  br i1 %70, label %71, label %63, !llvm.loop !399

71:                                               ; preds = %63
  %72 = load i32, ptr %18, align 4, !tbaa !100
  br label %73

73:                                               ; preds = %71, %49
  %74 = phi i32 [ %72, %71 ], [ %50, %49 ]
  %75 = add nuw nsw i64 %51, 1
  %76 = sext i32 %74 to i64
  %77 = icmp slt i64 %75, %76
  br i1 %77, label %49, label %78, !llvm.loop !403

78:                                               ; preds = %73
  %79 = load i32, ptr %13, align 4, !tbaa !102
  br label %80

80:                                               ; preds = %78, %46
  %81 = phi i32 [ %79, %78 ], [ %43, %46 ]
  store i32 %81, ptr %14, align 4, !tbaa !393
  br label %84

82:                                               ; preds = %25
  %83 = icmp eq i32 %39, %43
  br i1 %83, label %84, label %92

84:                                               ; preds = %82, %80
  %85 = load ptr, ptr %20, align 8, !tbaa !143
  %86 = getelementptr inbounds %struct.jpeg_downsampler, ptr %85, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !401
  %88 = load i32, ptr %5, align 4, !tbaa !121
  tail call void %87(ptr noundef nonnull %0, ptr noundef nonnull %16, i32 noundef 0, ptr noundef %4, i32 noundef %88) #25
  store i32 0, ptr %14, align 4, !tbaa !393
  %89 = load i32, ptr %5, align 4, !tbaa !121
  %90 = add i32 %89, 1
  store i32 %90, ptr %5, align 4, !tbaa !121
  %91 = load i32, ptr %17, align 8, !tbaa !392
  br label %92

92:                                               ; preds = %84, %82
  %93 = phi i32 [ %91, %84 ], [ %41, %82 ]
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %141

95:                                               ; preds = %92
  %96 = load i32, ptr %5, align 4, !tbaa !121
  %97 = icmp ult i32 %96, %6
  br i1 %97, label %98, label %141

98:                                               ; preds = %95
  %99 = load i32, ptr %18, align 4, !tbaa !100
  %100 = icmp sgt i32 %99, 0
  br i1 %100, label %101, label %140

101:                                              ; preds = %98
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %103 = load ptr, ptr %102, align 8, !tbaa !57
  br label %104

104:                                              ; preds = %134, %101
  %105 = phi i32 [ %99, %101 ], [ %135, %134 ]
  %106 = phi i64 [ 0, %101 ], [ %136, %134 ]
  %107 = phi ptr [ %103, %101 ], [ %137, %134 ]
  %108 = getelementptr inbounds ptr, ptr %4, i64 %106
  %109 = load ptr, ptr %108, align 8, !tbaa !7
  %110 = load i32, ptr %5, align 4, !tbaa !121
  %111 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %107, i64 0, i32 3
  %112 = load i32, ptr %111, align 4, !tbaa !105
  %113 = mul i32 %112, %110
  %114 = mul i32 %112, %6
  %115 = icmp slt i32 %113, %114
  br i1 %115, label %116, label %134

116:                                              ; preds = %104
  %117 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %107, i64 0, i32 7
  %118 = load i32, ptr %117, align 4, !tbaa !109
  %119 = shl i32 %118, 3
  %120 = add nsw i32 %113, -1
  %121 = zext i32 %119 to i64
  %122 = sext i32 %120 to i64
  %123 = getelementptr inbounds ptr, ptr %109, i64 %122
  br label %124

124:                                              ; preds = %124, %116
  %125 = phi i32 [ %113, %116 ], [ %130, %124 ]
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds ptr, ptr %109, i64 %126
  %128 = load ptr, ptr %123, align 8, !tbaa !7
  %129 = load ptr, ptr %127, align 8, !tbaa !7
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 1 %129, ptr align 1 %128, i64 %121, i1 false)
  %130 = add i32 %125, 1
  %131 = icmp eq i32 %130, %114
  br i1 %131, label %132, label %124, !llvm.loop !399

132:                                              ; preds = %124
  %133 = load i32, ptr %18, align 4, !tbaa !100
  br label %134

134:                                              ; preds = %132, %104
  %135 = phi i32 [ %133, %132 ], [ %105, %104 ]
  %136 = add nuw nsw i64 %106, 1
  %137 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %107, i64 1
  %138 = sext i32 %135 to i64
  %139 = icmp slt i64 %136, %138
  br i1 %139, label %104, label %140, !llvm.loop !404

140:                                              ; preds = %134, %98
  store i32 %6, ptr %5, align 4, !tbaa !121
  br label %144

141:                                              ; preds = %95, %92
  %142 = load i32, ptr %2, align 4, !tbaa !121
  %143 = icmp ult i32 %142, %3
  br i1 %143, label %21, label %144, !llvm.loop !405

144:                                              ; preds = %141, %140, %21, %7
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_fdctmgr(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %3 = load ptr, ptr %2, align 8, !tbaa !162
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %5 = load i32, ptr %4, align 4, !tbaa !100
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %126

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %9 = load ptr, ptr %8, align 8, !tbaa !57
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 28
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %12

12:                                               ; preds = %121, %7
  %13 = phi i32 [ 0, %7 ], [ %122, %121 ]
  %14 = phi ptr [ %9, %7 ], [ %123, %121 ]
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 0, i32 4
  %16 = load i32, ptr %15, align 8, !tbaa !284
  %17 = icmp ugt i32 %16, 3
  br i1 %17, label %23, label %18

18:                                               ; preds = %12
  %19 = zext i32 %16 to i64
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %19
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %29

23:                                               ; preds = %18, %12
  %24 = load ptr, ptr %0, align 8, !tbaa !25
  %25 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 5
  store i32 51, ptr %25, align 8, !tbaa !22
  %26 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %24, i64 0, i32 6
  store i32 %16, ptr %26, align 4, !tbaa !11
  %27 = load ptr, ptr %0, align 8, !tbaa !25
  %28 = load ptr, ptr %27, align 8, !tbaa !12
  tail call void %28(ptr noundef nonnull %0) #25
  br label %29

29:                                               ; preds = %23, %18
  %30 = sext i32 %16 to i64
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %30
  %32 = load ptr, ptr %31, align 8, !tbaa !7
  %33 = load i32, ptr %10, align 4, !tbaa !166
  switch i32 %33, label %117 [
    i32 0, label %34
    i32 1, label %53
    i32 2, label %78
  ]

34:                                               ; preds = %29
  %35 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %30
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = icmp eq ptr %36, null
  br i1 %37, label %38, label %42

38:                                               ; preds = %34
  %39 = load ptr, ptr %11, align 8, !tbaa !55
  %40 = load ptr, ptr %39, align 8, !tbaa !56
  %41 = tail call ptr %40(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #25
  store ptr %41, ptr %35, align 8, !tbaa !7
  br label %42

42:                                               ; preds = %38, %34
  %43 = phi ptr [ %41, %38 ], [ %36, %34 ]
  br label %44

44:                                               ; preds = %44, %42
  %45 = phi i64 [ 0, %42 ], [ %51, %44 ]
  %46 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %45
  %47 = load <4 x i16>, ptr %46, align 2, !tbaa !275
  %48 = zext <4 x i16> %47 to <4 x i32>
  %49 = shl nuw nsw <4 x i32> %48, <i32 3, i32 3, i32 3, i32 3>
  %50 = getelementptr inbounds i32, ptr %43, i64 %45
  store <4 x i32> %49, ptr %50, align 4, !tbaa !121
  %51 = add nuw nsw i64 %45, 4
  %52 = icmp eq i64 %51, 64
  br i1 %52, label %121, label %44, !llvm.loop !406

53:                                               ; preds = %29
  %54 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 2, i64 %30
  %55 = load ptr, ptr %54, align 8, !tbaa !7
  %56 = icmp eq ptr %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load ptr, ptr %11, align 8, !tbaa !55
  %59 = load ptr, ptr %58, align 8, !tbaa !56
  %60 = tail call ptr %59(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #25
  store ptr %60, ptr %54, align 8, !tbaa !7
  br label %61

61:                                               ; preds = %57, %53
  %62 = phi ptr [ %60, %57 ], [ %55, %53 ]
  br label %63

63:                                               ; preds = %63, %61
  %64 = phi i64 [ 0, %61 ], [ %76, %63 ]
  %65 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %64
  %66 = load i16, ptr %65, align 2, !tbaa !275
  %67 = zext i16 %66 to i64
  %68 = getelementptr inbounds [64 x i16], ptr @start_pass_fdctmgr.aanscales, i64 0, i64 %64
  %69 = load i16, ptr %68, align 2, !tbaa !275
  %70 = sext i16 %69 to i64
  %71 = mul nsw i64 %70, %67
  %72 = add nsw i64 %71, 1024
  %73 = ashr i64 %72, 11
  %74 = trunc i64 %73 to i32
  %75 = getelementptr inbounds i32, ptr %62, i64 %64
  store i32 %74, ptr %75, align 4, !tbaa !121
  %76 = add nuw nsw i64 %64, 1
  %77 = icmp eq i64 %76, 64
  br i1 %77, label %121, label %63, !llvm.loop !407

78:                                               ; preds = %29
  %79 = getelementptr inbounds %struct.my_fdct_controller, ptr %3, i64 0, i32 4, i64 %30
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = icmp eq ptr %80, null
  br i1 %81, label %82, label %86

82:                                               ; preds = %78
  %83 = load ptr, ptr %11, align 8, !tbaa !55
  %84 = load ptr, ptr %83, align 8, !tbaa !56
  %85 = tail call ptr %84(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 256) #25
  store ptr %85, ptr %79, align 8, !tbaa !7
  br label %86

86:                                               ; preds = %82, %78
  %87 = phi ptr [ %85, %82 ], [ %80, %78 ]
  br label %88

88:                                               ; preds = %113, %86
  %89 = phi i64 [ 0, %86 ], [ %115, %113 ]
  %90 = phi i64 [ 0, %86 ], [ %114, %113 ]
  %91 = shl i64 %90, 32
  %92 = ashr exact i64 %91, 32
  %93 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %89
  %94 = load double, ptr %93, align 8, !tbaa !408
  %95 = insertelement <2 x double> poison, double %94, i64 0
  %96 = shufflevector <2 x double> %95, <2 x double> poison, <2 x i32> zeroinitializer
  br label %97

97:                                               ; preds = %97, %88
  %98 = phi i64 [ 0, %88 ], [ %111, %97 ]
  %99 = add nsw i64 %98, %92
  %100 = getelementptr inbounds [64 x i16], ptr %32, i64 0, i64 %99
  %101 = load <2 x i16>, ptr %100, align 2, !tbaa !275
  %102 = uitofp <2 x i16> %101 to <2 x double>
  %103 = fmul <2 x double> %96, %102
  %104 = getelementptr inbounds [8 x double], ptr @start_pass_fdctmgr.aanscalefactor, i64 0, i64 %98
  %105 = load <2 x double>, ptr %104, align 16, !tbaa !408
  %106 = fmul <2 x double> %105, %103
  %107 = fmul <2 x double> %106, <double 8.000000e+00, double 8.000000e+00>
  %108 = fdiv <2 x double> <double 1.000000e+00, double 1.000000e+00>, %107
  %109 = fptrunc <2 x double> %108 to <2 x float>
  %110 = getelementptr inbounds float, ptr %87, i64 %99
  store <2 x float> %109, ptr %110, align 4, !tbaa !409
  %111 = add nuw nsw i64 %98, 2
  %112 = icmp eq i64 %111, 8
  br i1 %112, label %113, label %97, !llvm.loop !411

113:                                              ; preds = %97
  %114 = add nsw i64 %92, 8
  %115 = add nuw nsw i64 %89, 1
  %116 = icmp eq i64 %115, 8
  br i1 %116, label %121, label %88, !llvm.loop !412

117:                                              ; preds = %29
  %118 = load ptr, ptr %0, align 8, !tbaa !25
  %119 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %118, i64 0, i32 5
  store i32 47, ptr %119, align 8, !tbaa !22
  %120 = load ptr, ptr %118, align 8, !tbaa !12
  tail call void %120(ptr noundef nonnull %0) #25
  br label %121

121:                                              ; preds = %117, %113, %63, %44
  %122 = add nuw nsw i32 %13, 1
  %123 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 1
  %124 = load i32, ptr %4, align 4, !tbaa !100
  %125 = icmp slt i32 %122, %124
  br i1 %125, label %12, label %126, !llvm.loop !413

126:                                              ; preds = %121, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @forward_DCT(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = alloca [64 x i32], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 1
  %12 = load ptr, ptr %11, align 8, !tbaa !168
  %13 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !284
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 2, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #23
  %18 = zext i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %107, label %21

21:                                               ; preds = %7
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %103, %21
  %24 = phi i64 [ 0, %21 ], [ %104, %103 ]
  %25 = phi i32 [ %5, %21 ], [ %105, %103 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i64 [ 0, %23 ], [ %72, %27 ]
  %29 = phi ptr [ %8, %23 ], [ %71, %27 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !11
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = getelementptr inbounds i32, ptr %29, i64 1
  store i32 %36, ptr %29, align 4, !tbaa !121
  %38 = getelementptr inbounds i8, ptr %32, i64 2
  %39 = load i8, ptr %33, align 1, !tbaa !11
  %40 = zext i8 %39 to i32
  %41 = add nsw i32 %40, -128
  %42 = getelementptr inbounds i32, ptr %29, i64 2
  store i32 %41, ptr %37, align 4, !tbaa !121
  %43 = getelementptr inbounds i8, ptr %32, i64 3
  %44 = load i8, ptr %38, align 1, !tbaa !11
  %45 = zext i8 %44 to i32
  %46 = add nsw i32 %45, -128
  %47 = getelementptr inbounds i32, ptr %29, i64 3
  store i32 %46, ptr %42, align 4, !tbaa !121
  %48 = getelementptr inbounds i8, ptr %32, i64 4
  %49 = load i8, ptr %43, align 1, !tbaa !11
  %50 = zext i8 %49 to i32
  %51 = add nsw i32 %50, -128
  %52 = getelementptr inbounds i32, ptr %29, i64 4
  store i32 %51, ptr %47, align 4, !tbaa !121
  %53 = getelementptr inbounds i8, ptr %32, i64 5
  %54 = load i8, ptr %48, align 1, !tbaa !11
  %55 = zext i8 %54 to i32
  %56 = add nsw i32 %55, -128
  %57 = getelementptr inbounds i32, ptr %29, i64 5
  store i32 %56, ptr %52, align 4, !tbaa !121
  %58 = getelementptr inbounds i8, ptr %32, i64 6
  %59 = load i8, ptr %53, align 1, !tbaa !11
  %60 = zext i8 %59 to i32
  %61 = add nsw i32 %60, -128
  %62 = getelementptr inbounds i32, ptr %29, i64 6
  store i32 %61, ptr %57, align 4, !tbaa !121
  %63 = getelementptr inbounds i8, ptr %32, i64 7
  %64 = load i8, ptr %58, align 1, !tbaa !11
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = getelementptr inbounds i32, ptr %29, i64 7
  store i32 %66, ptr %62, align 4, !tbaa !121
  %68 = load i8, ptr %63, align 1, !tbaa !11
  %69 = zext i8 %68 to i32
  %70 = add nsw i32 %69, -128
  %71 = getelementptr inbounds i32, ptr %29, i64 8
  store i32 %70, ptr %67, align 4, !tbaa !121
  %72 = add nuw nsw i64 %28, 1
  %73 = icmp eq i64 %72, 8
  br i1 %73, label %74, label %27, !llvm.loop !414

74:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #25
  %75 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %76

76:                                               ; preds = %97, %74
  %77 = phi i64 [ 0, %74 ], [ %101, %97 ]
  %78 = getelementptr inbounds i32, ptr %17, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !121
  %80 = getelementptr inbounds [64 x i32], ptr %8, i64 0, i64 %77
  %81 = load i32, ptr %80, align 4, !tbaa !121
  %82 = icmp slt i32 %81, 0
  %83 = ashr i32 %79, 1
  br i1 %82, label %84, label %92

84:                                               ; preds = %76
  %85 = sub i32 %83, %81
  %86 = icmp slt i32 %85, %79
  br i1 %86, label %89, label %87

87:                                               ; preds = %84
  %88 = sdiv i32 %85, %79
  br label %89

89:                                               ; preds = %87, %84
  %90 = phi i32 [ %88, %87 ], [ 0, %84 ]
  %91 = sub nsw i32 0, %90
  br label %97

92:                                               ; preds = %76
  %93 = add nsw i32 %81, %83
  %94 = icmp slt i32 %93, %79
  br i1 %94, label %97, label %95

95:                                               ; preds = %92
  %96 = sdiv i32 %93, %79
  br label %97

97:                                               ; preds = %95, %92, %89
  %98 = phi i32 [ %91, %89 ], [ %96, %95 ], [ 0, %92 ]
  %99 = trunc i32 %98 to i16
  %100 = getelementptr inbounds i16, ptr %75, i64 %77
  store i16 %99, ptr %100, align 2, !tbaa !275
  %101 = add nuw nsw i64 %77, 1
  %102 = icmp eq i64 %101, 64
  br i1 %102, label %103, label %76, !llvm.loop !415

103:                                              ; preds = %97
  %104 = add nuw nsw i64 %24, 1
  %105 = add i32 %25, 8
  %106 = icmp eq i64 %104, %22
  br i1 %106, label %107, label %23, !llvm.loop !416

107:                                              ; preds = %103, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #23
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_fdct_islow(ptr nocapture noundef %0) #13 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 7, %1 ], [ %92, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %91, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = add nsw i32 %7, %5
  %9 = sext i32 %8 to i64
  %10 = sub nsw i32 %5, %7
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i32, ptr %4, i64 1
  %13 = load i32, ptr %12, align 4, !tbaa !121
  %14 = getelementptr inbounds i32, ptr %4, i64 6
  %15 = load i32, ptr %14, align 4, !tbaa !121
  %16 = add nsw i32 %15, %13
  %17 = sext i32 %16 to i64
  %18 = sub nsw i32 %13, %15
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, ptr %4, i64 2
  %21 = load i32, ptr %20, align 4, !tbaa !121
  %22 = getelementptr inbounds i32, ptr %4, i64 5
  %23 = load i32, ptr %22, align 4, !tbaa !121
  %24 = add nsw i32 %23, %21
  %25 = sext i32 %24 to i64
  %26 = sub nsw i32 %21, %23
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i32, ptr %4, i64 3
  %29 = load i32, ptr %28, align 4, !tbaa !121
  %30 = getelementptr inbounds i32, ptr %4, i64 4
  %31 = load i32, ptr %30, align 4, !tbaa !121
  %32 = add nsw i32 %31, %29
  %33 = sext i32 %32 to i64
  %34 = sub nsw i32 %29, %31
  %35 = sext i32 %34 to i64
  %36 = add nsw i64 %33, %9
  %37 = sub nsw i64 %9, %33
  %38 = add nsw i64 %25, %17
  %39 = sub nsw i64 %17, %25
  %40 = add nsw i64 %36, %38
  %41 = trunc i64 %40 to i32
  %42 = shl i32 %41, 2
  store i32 %42, ptr %4, align 4, !tbaa !121
  %43 = sub nsw i64 %36, %38
  %44 = trunc i64 %43 to i32
  %45 = shl i32 %44, 2
  store i32 %45, ptr %30, align 4, !tbaa !121
  %46 = add nsw i64 %37, %39
  %47 = mul nsw i64 %46, 4433
  %48 = mul nsw i64 %37, 6270
  %49 = add nsw i64 %47, 1024
  %50 = add nsw i64 %49, %48
  %51 = lshr i64 %50, 11
  %52 = trunc i64 %51 to i32
  store i32 %52, ptr %20, align 4, !tbaa !121
  %53 = mul i64 %39, 8796093007071
  %54 = add i64 %49, %53
  %55 = lshr i64 %54, 11
  %56 = trunc i64 %55 to i32
  store i32 %56, ptr %14, align 4, !tbaa !121
  %57 = add nsw i64 %35, %11
  %58 = add nsw i64 %27, %19
  %59 = add nsw i64 %35, %19
  %60 = add nsw i64 %27, %11
  %61 = add nsw i64 %59, %60
  %62 = mul nsw i64 %61, 9633
  %63 = mul nsw i64 %35, 2446
  %64 = mul nsw i64 %27, 16819
  %65 = mul nsw i64 %19, 25172
  %66 = mul nsw i64 %11, 12299
  %67 = mul nsw i64 %57, -7373
  %68 = mul nsw i64 %58, -20995
  %69 = mul nsw i64 %59, -16069
  %70 = mul nsw i64 %60, -3196
  %71 = add nsw i64 %62, %69
  %72 = add nsw i64 %62, %70
  %73 = add nsw i64 %67, 1024
  %74 = add nsw i64 %73, %63
  %75 = add nsw i64 %74, %71
  %76 = lshr i64 %75, 11
  %77 = trunc i64 %76 to i32
  store i32 %77, ptr %6, align 4, !tbaa !121
  %78 = add nsw i64 %68, 1024
  %79 = add nsw i64 %78, %64
  %80 = add nsw i64 %79, %72
  %81 = lshr i64 %80, 11
  %82 = trunc i64 %81 to i32
  store i32 %82, ptr %22, align 4, !tbaa !121
  %83 = add nsw i64 %78, %65
  %84 = add nsw i64 %83, %71
  %85 = lshr i64 %84, 11
  %86 = trunc i64 %85 to i32
  store i32 %86, ptr %28, align 4, !tbaa !121
  %87 = add nsw i64 %73, %66
  %88 = add nsw i64 %87, %72
  %89 = lshr i64 %88, 11
  %90 = trunc i64 %89 to i32
  store i32 %90, ptr %12, align 4, !tbaa !121
  %91 = getelementptr inbounds i32, ptr %4, i64 8
  %92 = add nsw i32 %3, -1
  %93 = icmp eq i32 %3, 0
  br i1 %93, label %94, label %2, !llvm.loop !417

94:                                               ; preds = %94, %2
  %95 = phi i64 [ %186, %94 ], [ 0, %2 ]
  %96 = shl i64 %95, 2
  %97 = getelementptr i8, ptr %0, i64 %96
  %98 = load <4 x i32>, ptr %97, align 4, !tbaa !121
  %99 = getelementptr inbounds i32, ptr %97, i64 56
  %100 = load <4 x i32>, ptr %99, align 4, !tbaa !121
  %101 = add nsw <4 x i32> %100, %98
  %102 = sext <4 x i32> %101 to <4 x i64>
  %103 = sub nsw <4 x i32> %98, %100
  %104 = sext <4 x i32> %103 to <4 x i64>
  %105 = getelementptr inbounds i32, ptr %97, i64 8
  %106 = load <4 x i32>, ptr %105, align 4, !tbaa !121
  %107 = getelementptr inbounds i32, ptr %97, i64 48
  %108 = load <4 x i32>, ptr %107, align 4, !tbaa !121
  %109 = add nsw <4 x i32> %108, %106
  %110 = sext <4 x i32> %109 to <4 x i64>
  %111 = sub nsw <4 x i32> %106, %108
  %112 = sext <4 x i32> %111 to <4 x i64>
  %113 = getelementptr inbounds i32, ptr %97, i64 16
  %114 = load <4 x i32>, ptr %113, align 4, !tbaa !121
  %115 = getelementptr inbounds i32, ptr %97, i64 40
  %116 = load <4 x i32>, ptr %115, align 4, !tbaa !121
  %117 = add nsw <4 x i32> %116, %114
  %118 = sext <4 x i32> %117 to <4 x i64>
  %119 = sub nsw <4 x i32> %114, %116
  %120 = sext <4 x i32> %119 to <4 x i64>
  %121 = getelementptr inbounds i32, ptr %97, i64 24
  %122 = load <4 x i32>, ptr %121, align 4, !tbaa !121
  %123 = getelementptr inbounds i32, ptr %97, i64 32
  %124 = load <4 x i32>, ptr %123, align 4, !tbaa !121
  %125 = add nsw <4 x i32> %124, %122
  %126 = sext <4 x i32> %125 to <4 x i64>
  %127 = sub nsw <4 x i32> %122, %124
  %128 = sext <4 x i32> %127 to <4 x i64>
  %129 = add nsw <4 x i64> %126, %102
  %130 = sub nsw <4 x i64> %102, %126
  %131 = add nsw <4 x i64> %118, %110
  %132 = sub nsw <4 x i64> %110, %118
  %133 = add nsw <4 x i64> %131, <i64 2, i64 2, i64 2, i64 2>
  %134 = add nsw <4 x i64> %133, %129
  %135 = lshr <4 x i64> %134, <i64 2, i64 2, i64 2, i64 2>
  %136 = trunc <4 x i64> %135 to <4 x i32>
  store <4 x i32> %136, ptr %97, align 4, !tbaa !121
  %137 = sub nsw <4 x i64> %129, %131
  %138 = add nsw <4 x i64> %137, <i64 2, i64 2, i64 2, i64 2>
  %139 = lshr <4 x i64> %138, <i64 2, i64 2, i64 2, i64 2>
  %140 = trunc <4 x i64> %139 to <4 x i32>
  store <4 x i32> %140, ptr %123, align 4, !tbaa !121
  %141 = add nsw <4 x i64> %130, %132
  %142 = mul nsw <4 x i64> %141, <i64 4433, i64 4433, i64 4433, i64 4433>
  %143 = mul nsw <4 x i64> %130, <i64 6270, i64 6270, i64 6270, i64 6270>
  %144 = add nsw <4 x i64> %142, <i64 16384, i64 16384, i64 16384, i64 16384>
  %145 = add nsw <4 x i64> %144, %143
  %146 = lshr <4 x i64> %145, <i64 15, i64 15, i64 15, i64 15>
  %147 = trunc <4 x i64> %146 to <4 x i32>
  store <4 x i32> %147, ptr %113, align 4, !tbaa !121
  %148 = mul <4 x i64> %132, <i64 140737488340191, i64 140737488340191, i64 140737488340191, i64 140737488340191>
  %149 = add <4 x i64> %144, %148
  %150 = lshr <4 x i64> %149, <i64 15, i64 15, i64 15, i64 15>
  %151 = trunc <4 x i64> %150 to <4 x i32>
  store <4 x i32> %151, ptr %107, align 4, !tbaa !121
  %152 = add nsw <4 x i64> %128, %104
  %153 = add nsw <4 x i64> %120, %112
  %154 = add nsw <4 x i64> %128, %112
  %155 = add nsw <4 x i64> %120, %104
  %156 = add nsw <4 x i64> %154, %155
  %157 = mul nsw <4 x i64> %156, <i64 9633, i64 9633, i64 9633, i64 9633>
  %158 = mul nsw <4 x i64> %128, <i64 2446, i64 2446, i64 2446, i64 2446>
  %159 = mul nsw <4 x i64> %120, <i64 16819, i64 16819, i64 16819, i64 16819>
  %160 = mul nsw <4 x i64> %112, <i64 25172, i64 25172, i64 25172, i64 25172>
  %161 = mul nsw <4 x i64> %104, <i64 12299, i64 12299, i64 12299, i64 12299>
  %162 = mul nsw <4 x i64> %152, <i64 -7373, i64 -7373, i64 -7373, i64 -7373>
  %163 = mul nsw <4 x i64> %153, <i64 -20995, i64 -20995, i64 -20995, i64 -20995>
  %164 = mul nsw <4 x i64> %154, <i64 -16069, i64 -16069, i64 -16069, i64 -16069>
  %165 = mul nsw <4 x i64> %155, <i64 -3196, i64 -3196, i64 -3196, i64 -3196>
  %166 = add nsw <4 x i64> %157, %164
  %167 = add nsw <4 x i64> %157, %165
  %168 = add nsw <4 x i64> %162, <i64 16384, i64 16384, i64 16384, i64 16384>
  %169 = add nsw <4 x i64> %168, %158
  %170 = add nsw <4 x i64> %169, %166
  %171 = lshr <4 x i64> %170, <i64 15, i64 15, i64 15, i64 15>
  %172 = trunc <4 x i64> %171 to <4 x i32>
  store <4 x i32> %172, ptr %99, align 4, !tbaa !121
  %173 = add nsw <4 x i64> %163, <i64 16384, i64 16384, i64 16384, i64 16384>
  %174 = add nsw <4 x i64> %173, %159
  %175 = add nsw <4 x i64> %174, %167
  %176 = lshr <4 x i64> %175, <i64 15, i64 15, i64 15, i64 15>
  %177 = trunc <4 x i64> %176 to <4 x i32>
  store <4 x i32> %177, ptr %115, align 4, !tbaa !121
  %178 = add nsw <4 x i64> %173, %160
  %179 = add nsw <4 x i64> %178, %166
  %180 = lshr <4 x i64> %179, <i64 15, i64 15, i64 15, i64 15>
  %181 = trunc <4 x i64> %180 to <4 x i32>
  store <4 x i32> %181, ptr %121, align 4, !tbaa !121
  %182 = add nsw <4 x i64> %168, %161
  %183 = add nsw <4 x i64> %182, %167
  %184 = lshr <4 x i64> %183, <i64 15, i64 15, i64 15, i64 15>
  %185 = trunc <4 x i64> %184 to <4 x i32>
  store <4 x i32> %185, ptr %105, align 4, !tbaa !121
  %186 = add nuw nsw i64 %95, 4
  %187 = icmp eq i64 %186, 8
  br i1 %187, label %188, label %94, !llvm.loop !418

188:                                              ; preds = %94
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal void @jpeg_fdct_ifast(ptr nocapture noundef %0) #13 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i32 [ 7, %1 ], [ %70, %2 ]
  %4 = phi ptr [ %0, %1 ], [ %69, %2 ]
  %5 = load i32, ptr %4, align 4, !tbaa !121
  %6 = getelementptr inbounds i32, ptr %4, i64 7
  %7 = load i32, ptr %6, align 4, !tbaa !121
  %8 = add nsw i32 %7, %5
  %9 = sub nsw i32 %5, %7
  %10 = getelementptr inbounds i32, ptr %4, i64 1
  %11 = load i32, ptr %10, align 4, !tbaa !121
  %12 = getelementptr inbounds i32, ptr %4, i64 6
  %13 = load i32, ptr %12, align 4, !tbaa !121
  %14 = add nsw i32 %13, %11
  %15 = sub nsw i32 %11, %13
  %16 = getelementptr inbounds i32, ptr %4, i64 2
  %17 = load i32, ptr %16, align 4, !tbaa !121
  %18 = getelementptr inbounds i32, ptr %4, i64 5
  %19 = load i32, ptr %18, align 4, !tbaa !121
  %20 = add nsw i32 %19, %17
  %21 = sub nsw i32 %17, %19
  %22 = getelementptr inbounds i32, ptr %4, i64 3
  %23 = load i32, ptr %22, align 4, !tbaa !121
  %24 = getelementptr inbounds i32, ptr %4, i64 4
  %25 = load i32, ptr %24, align 4, !tbaa !121
  %26 = add nsw i32 %25, %23
  %27 = sub nsw i32 %23, %25
  %28 = add nsw i32 %26, %8
  %29 = sub nsw i32 %8, %26
  %30 = add nsw i32 %20, %14
  %31 = sub i32 %14, %20
  %32 = add nsw i32 %28, %30
  store i32 %32, ptr %4, align 4, !tbaa !121
  %33 = sub nsw i32 %28, %30
  store i32 %33, ptr %24, align 4, !tbaa !121
  %34 = add nsw i32 %31, %29
  %35 = sext i32 %34 to i64
  %36 = mul nsw i64 %35, 181
  %37 = lshr i64 %36, 8
  %38 = trunc i64 %37 to i32
  %39 = add nsw i32 %29, %38
  store i32 %39, ptr %16, align 4, !tbaa !121
  %40 = sub nsw i32 %29, %38
  store i32 %40, ptr %12, align 4, !tbaa !121
  %41 = add nsw i32 %27, %21
  %42 = add nsw i32 %21, %15
  %43 = add nsw i32 %15, %9
  %44 = sub nsw i32 %41, %43
  %45 = sext i32 %44 to i64
  %46 = mul nsw i64 %45, 98
  %47 = lshr i64 %46, 8
  %48 = trunc i64 %47 to i32
  %49 = sext i32 %41 to i64
  %50 = mul nsw i64 %49, 139
  %51 = lshr i64 %50, 8
  %52 = trunc i64 %51 to i32
  %53 = add nsw i32 %48, %52
  %54 = sext i32 %43 to i64
  %55 = mul nsw i64 %54, 334
  %56 = lshr i64 %55, 8
  %57 = trunc i64 %56 to i32
  %58 = add nsw i32 %48, %57
  %59 = sext i32 %42 to i64
  %60 = mul nsw i64 %59, 181
  %61 = lshr i64 %60, 8
  %62 = trunc i64 %61 to i32
  %63 = add nsw i32 %9, %62
  %64 = sub nsw i32 %9, %62
  %65 = add nsw i32 %53, %64
  store i32 %65, ptr %18, align 4, !tbaa !121
  %66 = sub nsw i32 %64, %53
  store i32 %66, ptr %22, align 4, !tbaa !121
  %67 = add nsw i32 %58, %63
  store i32 %67, ptr %10, align 4, !tbaa !121
  %68 = sub nsw i32 %63, %58
  store i32 %68, ptr %6, align 4, !tbaa !121
  %69 = getelementptr inbounds i32, ptr %4, i64 8
  %70 = add nsw i32 %3, -1
  %71 = icmp eq i32 %3, 0
  br i1 %71, label %72, label %2, !llvm.loop !419

72:                                               ; preds = %72, %2
  %73 = phi i64 [ %140, %72 ], [ 0, %2 ]
  %74 = shl i64 %73, 2
  %75 = getelementptr i8, ptr %0, i64 %74
  %76 = load <4 x i32>, ptr %75, align 4, !tbaa !121
  %77 = getelementptr inbounds i32, ptr %75, i64 56
  %78 = load <4 x i32>, ptr %77, align 4, !tbaa !121
  %79 = add nsw <4 x i32> %78, %76
  %80 = sub nsw <4 x i32> %76, %78
  %81 = getelementptr inbounds i32, ptr %75, i64 8
  %82 = load <4 x i32>, ptr %81, align 4, !tbaa !121
  %83 = getelementptr inbounds i32, ptr %75, i64 48
  %84 = load <4 x i32>, ptr %83, align 4, !tbaa !121
  %85 = add nsw <4 x i32> %84, %82
  %86 = sub nsw <4 x i32> %82, %84
  %87 = getelementptr inbounds i32, ptr %75, i64 16
  %88 = load <4 x i32>, ptr %87, align 4, !tbaa !121
  %89 = getelementptr inbounds i32, ptr %75, i64 40
  %90 = load <4 x i32>, ptr %89, align 4, !tbaa !121
  %91 = add nsw <4 x i32> %90, %88
  %92 = sub nsw <4 x i32> %88, %90
  %93 = getelementptr inbounds i32, ptr %75, i64 24
  %94 = load <4 x i32>, ptr %93, align 4, !tbaa !121
  %95 = getelementptr inbounds i32, ptr %75, i64 32
  %96 = load <4 x i32>, ptr %95, align 4, !tbaa !121
  %97 = add nsw <4 x i32> %96, %94
  %98 = sub nsw <4 x i32> %94, %96
  %99 = add nsw <4 x i32> %97, %79
  %100 = sub nsw <4 x i32> %79, %97
  %101 = add nsw <4 x i32> %91, %85
  %102 = sub <4 x i32> %85, %91
  %103 = add nsw <4 x i32> %99, %101
  store <4 x i32> %103, ptr %75, align 4, !tbaa !121
  %104 = sub nsw <4 x i32> %99, %101
  store <4 x i32> %104, ptr %95, align 4, !tbaa !121
  %105 = add nsw <4 x i32> %102, %100
  %106 = sext <4 x i32> %105 to <4 x i64>
  %107 = mul nsw <4 x i64> %106, <i64 181, i64 181, i64 181, i64 181>
  %108 = lshr <4 x i64> %107, <i64 8, i64 8, i64 8, i64 8>
  %109 = trunc <4 x i64> %108 to <4 x i32>
  %110 = add nsw <4 x i32> %100, %109
  store <4 x i32> %110, ptr %87, align 4, !tbaa !121
  %111 = sub nsw <4 x i32> %100, %109
  store <4 x i32> %111, ptr %83, align 4, !tbaa !121
  %112 = add nsw <4 x i32> %98, %92
  %113 = add nsw <4 x i32> %92, %86
  %114 = add nsw <4 x i32> %86, %80
  %115 = sub nsw <4 x i32> %112, %114
  %116 = sext <4 x i32> %115 to <4 x i64>
  %117 = mul nsw <4 x i64> %116, <i64 98, i64 98, i64 98, i64 98>
  %118 = lshr <4 x i64> %117, <i64 8, i64 8, i64 8, i64 8>
  %119 = trunc <4 x i64> %118 to <4 x i32>
  %120 = sext <4 x i32> %112 to <4 x i64>
  %121 = mul nsw <4 x i64> %120, <i64 139, i64 139, i64 139, i64 139>
  %122 = lshr <4 x i64> %121, <i64 8, i64 8, i64 8, i64 8>
  %123 = trunc <4 x i64> %122 to <4 x i32>
  %124 = add nsw <4 x i32> %119, %123
  %125 = sext <4 x i32> %114 to <4 x i64>
  %126 = mul nsw <4 x i64> %125, <i64 334, i64 334, i64 334, i64 334>
  %127 = lshr <4 x i64> %126, <i64 8, i64 8, i64 8, i64 8>
  %128 = trunc <4 x i64> %127 to <4 x i32>
  %129 = add nsw <4 x i32> %119, %128
  %130 = sext <4 x i32> %113 to <4 x i64>
  %131 = mul nsw <4 x i64> %130, <i64 181, i64 181, i64 181, i64 181>
  %132 = lshr <4 x i64> %131, <i64 8, i64 8, i64 8, i64 8>
  %133 = trunc <4 x i64> %132 to <4 x i32>
  %134 = add nsw <4 x i32> %80, %133
  %135 = sub nsw <4 x i32> %80, %133
  %136 = add nsw <4 x i32> %124, %135
  store <4 x i32> %136, ptr %89, align 4, !tbaa !121
  %137 = sub nsw <4 x i32> %135, %124
  store <4 x i32> %137, ptr %93, align 4, !tbaa !121
  %138 = add nsw <4 x i32> %129, %134
  store <4 x i32> %138, ptr %81, align 4, !tbaa !121
  %139 = sub nsw <4 x i32> %134, %129
  store <4 x i32> %139, ptr %77, align 4, !tbaa !121
  %140 = add nuw nsw i64 %73, 4
  %141 = icmp eq i64 %140, 8
  br i1 %141, label %142, label %72, !llvm.loop !420

142:                                              ; preds = %72
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @forward_DCT_float(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, ptr nocapture noundef readonly %2, ptr nocapture noundef writeonly %3, i32 noundef %4, i32 noundef %5, i32 noundef %6) #2 {
  %8 = alloca [64 x float], align 16
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %10 = load ptr, ptr %9, align 8, !tbaa !162
  %11 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 3
  %12 = load ptr, ptr %11, align 8, !tbaa !169
  %13 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %1, i64 0, i32 4
  %14 = load i32, ptr %13, align 8, !tbaa !284
  %15 = sext i32 %14 to i64
  %16 = getelementptr inbounds %struct.my_fdct_controller, ptr %10, i64 0, i32 4, i64 %15
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %8) #23
  %18 = zext i32 %4 to i64
  %19 = getelementptr inbounds ptr, ptr %2, i64 %18
  %20 = icmp eq i32 %6, 0
  br i1 %20, label %102, label %21

21:                                               ; preds = %7
  %22 = zext i32 %6 to i64
  br label %23

23:                                               ; preds = %98, %21
  %24 = phi i64 [ 0, %21 ], [ %99, %98 ]
  %25 = phi i32 [ %5, %21 ], [ %100, %98 ]
  %26 = zext i32 %25 to i64
  br label %27

27:                                               ; preds = %27, %23
  %28 = phi i64 [ 0, %23 ], [ %80, %27 ]
  %29 = phi ptr [ %8, %23 ], [ %79, %27 ]
  %30 = getelementptr inbounds ptr, ptr %19, i64 %28
  %31 = load ptr, ptr %30, align 8, !tbaa !7
  %32 = getelementptr inbounds i8, ptr %31, i64 %26
  %33 = getelementptr inbounds i8, ptr %32, i64 1
  %34 = load i8, ptr %32, align 1, !tbaa !11
  %35 = zext i8 %34 to i32
  %36 = add nsw i32 %35, -128
  %37 = sitofp i32 %36 to float
  %38 = getelementptr inbounds float, ptr %29, i64 1
  store float %37, ptr %29, align 4, !tbaa !409
  %39 = getelementptr inbounds i8, ptr %32, i64 2
  %40 = load i8, ptr %33, align 1, !tbaa !11
  %41 = zext i8 %40 to i32
  %42 = add nsw i32 %41, -128
  %43 = sitofp i32 %42 to float
  %44 = getelementptr inbounds float, ptr %29, i64 2
  store float %43, ptr %38, align 4, !tbaa !409
  %45 = getelementptr inbounds i8, ptr %32, i64 3
  %46 = load i8, ptr %39, align 1, !tbaa !11
  %47 = zext i8 %46 to i32
  %48 = add nsw i32 %47, -128
  %49 = sitofp i32 %48 to float
  %50 = getelementptr inbounds float, ptr %29, i64 3
  store float %49, ptr %44, align 4, !tbaa !409
  %51 = getelementptr inbounds i8, ptr %32, i64 4
  %52 = load i8, ptr %45, align 1, !tbaa !11
  %53 = zext i8 %52 to i32
  %54 = add nsw i32 %53, -128
  %55 = sitofp i32 %54 to float
  %56 = getelementptr inbounds float, ptr %29, i64 4
  store float %55, ptr %50, align 4, !tbaa !409
  %57 = getelementptr inbounds i8, ptr %32, i64 5
  %58 = load i8, ptr %51, align 1, !tbaa !11
  %59 = zext i8 %58 to i32
  %60 = add nsw i32 %59, -128
  %61 = sitofp i32 %60 to float
  %62 = getelementptr inbounds float, ptr %29, i64 5
  store float %61, ptr %56, align 4, !tbaa !409
  %63 = getelementptr inbounds i8, ptr %32, i64 6
  %64 = load i8, ptr %57, align 1, !tbaa !11
  %65 = zext i8 %64 to i32
  %66 = add nsw i32 %65, -128
  %67 = sitofp i32 %66 to float
  %68 = getelementptr inbounds float, ptr %29, i64 6
  store float %67, ptr %62, align 4, !tbaa !409
  %69 = getelementptr inbounds i8, ptr %32, i64 7
  %70 = load i8, ptr %63, align 1, !tbaa !11
  %71 = zext i8 %70 to i32
  %72 = add nsw i32 %71, -128
  %73 = sitofp i32 %72 to float
  %74 = getelementptr inbounds float, ptr %29, i64 7
  store float %73, ptr %68, align 4, !tbaa !409
  %75 = load i8, ptr %69, align 1, !tbaa !11
  %76 = zext i8 %75 to i32
  %77 = add nsw i32 %76, -128
  %78 = sitofp i32 %77 to float
  %79 = getelementptr inbounds float, ptr %29, i64 8
  store float %78, ptr %74, align 4, !tbaa !409
  %80 = add nuw nsw i64 %28, 1
  %81 = icmp eq i64 %80, 8
  br i1 %81, label %82, label %27, !llvm.loop !421

82:                                               ; preds = %27
  call void %12(ptr noundef nonnull %8) #25
  %83 = getelementptr inbounds [64 x i16], ptr %3, i64 %24
  br label %84

84:                                               ; preds = %84, %82
  %85 = phi i64 [ 0, %82 ], [ %96, %84 ]
  %86 = getelementptr inbounds [64 x float], ptr %8, i64 0, i64 %85
  %87 = load <4 x float>, ptr %86, align 16, !tbaa !409
  %88 = getelementptr inbounds float, ptr %17, i64 %85
  %89 = load <4 x float>, ptr %88, align 4, !tbaa !409
  %90 = fmul <4 x float> %87, %89
  %91 = fadd <4 x float> %90, <float 1.638450e+04, float 1.638450e+04, float 1.638450e+04, float 1.638450e+04>
  %92 = fptosi <4 x float> %91 to <4 x i32>
  %93 = trunc <4 x i32> %92 to <4 x i16>
  %94 = add <4 x i16> %93, <i16 -16384, i16 -16384, i16 -16384, i16 -16384>
  %95 = getelementptr inbounds i16, ptr %83, i64 %85
  store <4 x i16> %94, ptr %95, align 2, !tbaa !275
  %96 = add nuw nsw i64 %85, 4
  %97 = icmp eq i64 %96, 64
  br i1 %97, label %98, label %84, !llvm.loop !422

98:                                               ; preds = %84
  %99 = add nuw nsw i64 %24, 1
  %100 = add i32 %25, 8
  %101 = icmp eq i64 %99, %22
  br i1 %101, label %102, label %23, !llvm.loop !423

102:                                              ; preds = %98, %7
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %8) #23
  ret void
}

; Function Attrs: nofree nosync nounwind optsize memory(argmem: readwrite) uwtable
define internal void @jpeg_fdct_float(ptr nocapture noundef %0) #15 {
  br label %2

2:                                                ; preds = %2, %1
  %3 = phi i64 [ 0, %1 ], [ %54, %2 ]
  %4 = shl i64 %3, 5
  %5 = getelementptr i8, ptr %0, i64 %4
  %6 = load <32 x float>, ptr %5, align 4, !tbaa !409
  %7 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 0, i32 8, i32 16, i32 24>
  %8 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 1, i32 9, i32 17, i32 25>
  %9 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 2, i32 10, i32 18, i32 26>
  %10 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 3, i32 11, i32 19, i32 27>
  %11 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 4, i32 12, i32 20, i32 28>
  %12 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 5, i32 13, i32 21, i32 29>
  %13 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 6, i32 14, i32 22, i32 30>
  %14 = shufflevector <32 x float> %6, <32 x float> poison, <4 x i32> <i32 7, i32 15, i32 23, i32 31>
  %15 = fadd <4 x float> %7, %14
  %16 = fsub <4 x float> %7, %14
  %17 = fadd <4 x float> %8, %13
  %18 = fsub <4 x float> %8, %13
  %19 = fadd <4 x float> %9, %12
  %20 = fsub <4 x float> %9, %12
  %21 = fadd <4 x float> %10, %11
  %22 = fsub <4 x float> %10, %11
  %23 = fadd <4 x float> %15, %21
  %24 = fsub <4 x float> %15, %21
  %25 = fadd <4 x float> %17, %19
  %26 = fsub <4 x float> %17, %19
  %27 = fadd <4 x float> %25, %23
  %28 = fsub <4 x float> %23, %25
  %29 = fadd <4 x float> %26, %24
  %30 = fmul <4 x float> %29, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %31 = fadd <4 x float> %24, %30
  %32 = fsub <4 x float> %24, %30
  %33 = fadd <4 x float> %20, %22
  %34 = fadd <4 x float> %18, %20
  %35 = fadd <4 x float> %16, %18
  %36 = fsub <4 x float> %33, %35
  %37 = fmul <4 x float> %36, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %38 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %33, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %37)
  %39 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %35, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %37)
  %40 = fmul <4 x float> %34, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %41 = fadd <4 x float> %16, %40
  %42 = fsub <4 x float> %16, %40
  %43 = fadd <4 x float> %42, %38
  %44 = fsub <4 x float> %42, %38
  %45 = fadd <4 x float> %41, %39
  %46 = fsub <4 x float> %41, %39
  %47 = shufflevector <4 x float> %27, <4 x float> %45, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %48 = shufflevector <4 x float> %31, <4 x float> %44, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %49 = shufflevector <4 x float> %28, <4 x float> %43, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %50 = shufflevector <4 x float> %32, <4 x float> %46, <8 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7>
  %51 = shufflevector <8 x float> %47, <8 x float> %48, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %52 = shufflevector <8 x float> %49, <8 x float> %50, <16 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 6, i32 7, i32 8, i32 9, i32 10, i32 11, i32 12, i32 13, i32 14, i32 15>
  %53 = shufflevector <16 x float> %51, <16 x float> %52, <32 x i32> <i32 0, i32 4, i32 8, i32 12, i32 16, i32 20, i32 24, i32 28, i32 1, i32 5, i32 9, i32 13, i32 17, i32 21, i32 25, i32 29, i32 2, i32 6, i32 10, i32 14, i32 18, i32 22, i32 26, i32 30, i32 3, i32 7, i32 11, i32 15, i32 19, i32 23, i32 27, i32 31>
  store <32 x float> %53, ptr %5, align 4, !tbaa !409
  %54 = add nuw nsw i64 %3, 4
  %55 = icmp eq i64 %54, 8
  br i1 %55, label %56, label %2, !llvm.loop !424

56:                                               ; preds = %56, %2
  %57 = phi i64 [ %107, %56 ], [ 0, %2 ]
  %58 = shl i64 %57, 2
  %59 = getelementptr i8, ptr %0, i64 %58
  %60 = load <4 x float>, ptr %59, align 4, !tbaa !409
  %61 = getelementptr inbounds float, ptr %59, i64 56
  %62 = load <4 x float>, ptr %61, align 4, !tbaa !409
  %63 = fadd <4 x float> %60, %62
  %64 = fsub <4 x float> %60, %62
  %65 = getelementptr inbounds float, ptr %59, i64 8
  %66 = load <4 x float>, ptr %65, align 4, !tbaa !409
  %67 = getelementptr inbounds float, ptr %59, i64 48
  %68 = load <4 x float>, ptr %67, align 4, !tbaa !409
  %69 = fadd <4 x float> %66, %68
  %70 = fsub <4 x float> %66, %68
  %71 = getelementptr inbounds float, ptr %59, i64 16
  %72 = load <4 x float>, ptr %71, align 4, !tbaa !409
  %73 = getelementptr inbounds float, ptr %59, i64 40
  %74 = load <4 x float>, ptr %73, align 4, !tbaa !409
  %75 = fadd <4 x float> %72, %74
  %76 = fsub <4 x float> %72, %74
  %77 = getelementptr inbounds float, ptr %59, i64 24
  %78 = load <4 x float>, ptr %77, align 4, !tbaa !409
  %79 = getelementptr inbounds float, ptr %59, i64 32
  %80 = load <4 x float>, ptr %79, align 4, !tbaa !409
  %81 = fadd <4 x float> %78, %80
  %82 = fsub <4 x float> %78, %80
  %83 = fadd <4 x float> %63, %81
  %84 = fsub <4 x float> %63, %81
  %85 = fadd <4 x float> %69, %75
  %86 = fsub <4 x float> %69, %75
  %87 = fadd <4 x float> %85, %83
  store <4 x float> %87, ptr %59, align 4, !tbaa !409
  %88 = fsub <4 x float> %83, %85
  store <4 x float> %88, ptr %79, align 4, !tbaa !409
  %89 = fadd <4 x float> %86, %84
  %90 = fmul <4 x float> %89, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %91 = fadd <4 x float> %84, %90
  store <4 x float> %91, ptr %71, align 4, !tbaa !409
  %92 = fsub <4 x float> %84, %90
  store <4 x float> %92, ptr %67, align 4, !tbaa !409
  %93 = fadd <4 x float> %76, %82
  %94 = fadd <4 x float> %70, %76
  %95 = fadd <4 x float> %64, %70
  %96 = fsub <4 x float> %93, %95
  %97 = fmul <4 x float> %96, <float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000, float 0x3FD87DE2A0000000>
  %98 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %93, <4 x float> <float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000, float 0x3FE1517A80000000>, <4 x float> %97)
  %99 = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %95, <4 x float> <float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000, float 0x3FF4E7AEA0000000>, <4 x float> %97)
  %100 = fmul <4 x float> %94, <float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000, float 0x3FE6A09E60000000>
  %101 = fadd <4 x float> %64, %100
  %102 = fsub <4 x float> %64, %100
  %103 = fadd <4 x float> %102, %98
  store <4 x float> %103, ptr %73, align 4, !tbaa !409
  %104 = fsub <4 x float> %102, %98
  store <4 x float> %104, ptr %77, align 4, !tbaa !409
  %105 = fadd <4 x float> %101, %99
  store <4 x float> %105, ptr %65, align 4, !tbaa !409
  %106 = fsub <4 x float> %101, %99
  store <4 x float> %106, ptr %61, align 4, !tbaa !409
  %107 = add nuw nsw i64 %57, 4
  %108 = icmp eq i64 %107, 8
  br i1 %108, label %109, label %56, !llvm.loop !425

109:                                              ; preds = %56
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_phuff(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  store ptr %0, ptr %5, align 8, !tbaa !426
  %6 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  store i32 %1, ptr %6, align 8, !tbaa !427
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %8 = load i32, ptr %7, align 4, !tbaa !359
  %9 = icmp eq i32 %8, 0
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %11 = load i32, ptr %10, align 4, !tbaa !360
  %12 = icmp eq i32 %11, 0
  %13 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 1
  br i1 %12, label %14, label %17

14:                                               ; preds = %2
  br i1 %9, label %15, label %16

15:                                               ; preds = %14
  store ptr @encode_mcu_DC_first, ptr %13, align 8, !tbaa !428
  br label %28

16:                                               ; preds = %14
  store ptr @encode_mcu_AC_first, ptr %13, align 8, !tbaa !428
  br label %28

17:                                               ; preds = %2
  br i1 %9, label %18, label %19

18:                                               ; preds = %17
  store ptr @encode_mcu_DC_refine, ptr %13, align 8, !tbaa !428
  br label %28

19:                                               ; preds = %17
  store ptr @encode_mcu_AC_refine, ptr %13, align 8, !tbaa !428
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 11
  %21 = load ptr, ptr %20, align 8, !tbaa !175
  %22 = icmp eq ptr %21, null
  br i1 %22, label %23, label %28

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !55
  %26 = load ptr, ptr %25, align 8, !tbaa !56
  %27 = tail call ptr %26(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 1000) #25
  store ptr %27, ptr %20, align 8, !tbaa !175
  br label %28

28:                                               ; preds = %23, %19, %18, %16, %15
  %29 = icmp ne i32 %1, 0
  %30 = select i1 %29, ptr @finish_pass_gather_phuff, ptr @finish_pass_phuff
  %31 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 2
  store ptr %30, ptr %31, align 8
  %32 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %33 = load i32, ptr %32, align 4, !tbaa !429
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %110

35:                                               ; preds = %28
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %38

38:                                               ; preds = %105, %35
  %39 = phi i64 [ 0, %35 ], [ %106, %105 ]
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %39
  store i32 0, ptr %42, align 4, !tbaa !121
  br i1 %9, label %43, label %56

43:                                               ; preds = %38
  %44 = load i32, ptr %10, align 4, !tbaa !360
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %105

46:                                               ; preds = %43
  %47 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 5
  %48 = load i32, ptr %47, align 4, !tbaa !430
  %49 = icmp ugt i32 %48, 3
  br i1 %49, label %66, label %50

50:                                               ; preds = %46
  %51 = zext i32 %48 to i64
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %51
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  %54 = icmp ne ptr %53, null
  %55 = or i1 %29, %54
  br i1 %55, label %74, label %66

56:                                               ; preds = %38
  %57 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 6
  %58 = load i32, ptr %57, align 8, !tbaa !431
  store i32 %58, ptr %36, align 8, !tbaa !432
  %59 = icmp ugt i32 %58, 3
  br i1 %59, label %66, label %60

60:                                               ; preds = %56
  %61 = zext i32 %58 to i64
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %61
  %63 = load ptr, ptr %62, align 8, !tbaa !7
  %64 = icmp ne ptr %63, null
  %65 = or i1 %29, %64
  br i1 %65, label %77, label %66

66:                                               ; preds = %60, %56, %50, %46
  %67 = phi i32 [ %48, %50 ], [ %48, %46 ], [ %58, %60 ], [ %58, %56 ]
  %68 = load ptr, ptr %0, align 8, !tbaa !25
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 49, ptr %69, align 8, !tbaa !22
  %70 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 6
  store i32 %67, ptr %70, align 4, !tbaa !11
  %71 = load ptr, ptr %0, align 8, !tbaa !25
  %72 = load ptr, ptr %71, align 8, !tbaa !12
  tail call void %72(ptr noundef nonnull %0) #25
  %73 = sext i32 %67 to i64
  br i1 %29, label %80, label %91

74:                                               ; preds = %50
  br i1 %29, label %80, label %75

75:                                               ; preds = %74
  %76 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %51
  br label %99

77:                                               ; preds = %60
  br i1 %29, label %80, label %78

78:                                               ; preds = %77
  %79 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %61
  br label %102

80:                                               ; preds = %77, %74, %66
  %81 = phi i64 [ %61, %77 ], [ %73, %66 ], [ %51, %74 ]
  %82 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = icmp eq ptr %83, null
  br i1 %84, label %85, label %89

85:                                               ; preds = %80
  %86 = load ptr, ptr %37, align 8, !tbaa !55
  %87 = load ptr, ptr %86, align 8, !tbaa !56
  %88 = tail call ptr %87(ptr noundef %0, i32 noundef 1, i64 noundef 2056) #25
  store ptr %88, ptr %82, align 8, !tbaa !7
  br label %89

89:                                               ; preds = %85, %80
  %90 = phi ptr [ %88, %85 ], [ %83, %80 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %90, i8 0, i64 2056, i1 false)
  br label %105

91:                                               ; preds = %66
  %92 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %73
  br i1 %9, label %93, label %96

93:                                               ; preds = %91
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %73
  %95 = load ptr, ptr %94, align 8, !tbaa !7
  br label %99

96:                                               ; preds = %91
  %97 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %73
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  br label %102

99:                                               ; preds = %93, %75
  %100 = phi ptr [ %53, %75 ], [ %95, %93 ]
  %101 = phi ptr [ %76, %75 ], [ %92, %93 ]
  tail call fastcc void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %100, ptr noundef nonnull %101) #25
  br label %105

102:                                              ; preds = %96, %78
  %103 = phi ptr [ %63, %78 ], [ %98, %96 ]
  %104 = phi ptr [ %79, %78 ], [ %92, %96 ]
  tail call fastcc void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %103, ptr noundef nonnull %104) #25
  br label %105

105:                                              ; preds = %102, %99, %89, %43
  %106 = add nuw nsw i64 %39, 1
  %107 = load i32, ptr %32, align 4, !tbaa !429
  %108 = sext i32 %107 to i64
  %109 = icmp slt i64 %106, %108
  br i1 %109, label %38, label %110, !llvm.loop !433

110:                                              ; preds = %105, %28
  %111 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  store i32 0, ptr %111, align 4, !tbaa !434
  %112 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 10
  store i32 0, ptr %112, align 8, !tbaa !435
  %113 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  store i64 0, ptr %113, align 8, !tbaa !436
  %114 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  store i32 0, ptr %114, align 8, !tbaa !437
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %116 = load i32, ptr %115, align 8, !tbaa !279
  %117 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  store i32 %116, ptr %117, align 8, !tbaa !438
  %118 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  store i32 0, ptr %118, align 4, !tbaa !439
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_huff(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = icmp ne i32 %1, 0
  %6 = select i1 %5, ptr @encode_mcu_gather, ptr @encode_mcu_huff
  %7 = select i1 %5, ptr @finish_pass_gather, ptr @finish_pass_huff
  %8 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 1
  store ptr %6, ptr %8, align 8
  %9 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %4, i64 0, i32 2
  store ptr %7, ptr %9, align 8
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %11 = load i32, ptr %10, align 4, !tbaa !429
  %12 = icmp sgt i32 %11, 0
  br i1 %12, label %13, label %86

13:                                               ; preds = %2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  br label %15

15:                                               ; preds = %80, %13
  %16 = phi i64 [ 0, %13 ], [ %82, %80 ]
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 5
  %20 = load i32, ptr %19, align 4, !tbaa !430
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 6
  %22 = load i32, ptr %21, align 8, !tbaa !431
  %23 = icmp ugt i32 %20, 3
  br i1 %23, label %30, label %24

24:                                               ; preds = %15
  %25 = zext i32 %20 to i64
  %26 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %25
  %27 = load ptr, ptr %26, align 8, !tbaa !7
  %28 = icmp ne ptr %27, null
  %29 = or i1 %5, %28
  br i1 %29, label %36, label %30

30:                                               ; preds = %24, %15
  %31 = load ptr, ptr %0, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 49, ptr %32, align 8, !tbaa !22
  %33 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6
  store i32 %20, ptr %33, align 4, !tbaa !11
  %34 = load ptr, ptr %0, align 8, !tbaa !25
  %35 = load ptr, ptr %34, align 8, !tbaa !12
  tail call void %35(ptr noundef nonnull %0) #25
  br label %36

36:                                               ; preds = %30, %24
  %37 = icmp ugt i32 %22, 3
  br i1 %37, label %44, label %38

38:                                               ; preds = %36
  %39 = zext i32 %22 to i64
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = icmp ne ptr %41, null
  %43 = or i1 %5, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %38, %36
  %45 = load ptr, ptr %0, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 5
  store i32 49, ptr %46, align 8, !tbaa !22
  %47 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6
  store i32 %22, ptr %47, align 4, !tbaa !11
  %48 = load ptr, ptr %0, align 8, !tbaa !25
  %49 = load ptr, ptr %48, align 8, !tbaa !12
  tail call void %49(ptr noundef nonnull %0) #25
  br label %50

50:                                               ; preds = %44, %38
  %51 = sext i32 %20 to i64
  br i1 %5, label %52, label %72

52:                                               ; preds = %50
  %53 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %51
  %54 = load ptr, ptr %53, align 8, !tbaa !7
  %55 = icmp eq ptr %54, null
  br i1 %55, label %56, label %60

56:                                               ; preds = %52
  %57 = load ptr, ptr %14, align 8, !tbaa !55
  %58 = load ptr, ptr %57, align 8, !tbaa !56
  %59 = tail call ptr %58(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #25
  store ptr %59, ptr %53, align 8, !tbaa !7
  br label %60

60:                                               ; preds = %56, %52
  %61 = phi ptr [ %59, %56 ], [ %54, %52 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %61, i8 0, i64 2056, i1 false)
  %62 = sext i32 %22 to i64
  %63 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %62
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = icmp eq ptr %64, null
  br i1 %65, label %66, label %70

66:                                               ; preds = %60
  %67 = load ptr, ptr %14, align 8, !tbaa !55
  %68 = load ptr, ptr %67, align 8, !tbaa !56
  %69 = tail call ptr %68(ptr noundef nonnull %0, i32 noundef 1, i64 noundef 2056) #25
  store ptr %69, ptr %63, align 8, !tbaa !7
  br label %70

70:                                               ; preds = %66, %60
  %71 = phi ptr [ %69, %66 ], [ %64, %60 ]
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 1 dereferenceable(2056) %71, i8 0, i64 2056, i1 false)
  br label %80

72:                                               ; preds = %50
  %73 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %51
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  %75 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 4, i64 %51
  tail call fastcc void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %74, ptr noundef nonnull %75) #26
  %76 = sext i32 %22 to i64
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %76
  %78 = load ptr, ptr %77, align 8, !tbaa !7
  %79 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 5, i64 %76
  tail call fastcc void @jpeg_make_c_derived_tbl(ptr noundef nonnull %0, ptr noundef %78, ptr noundef nonnull %79) #26
  br label %80

80:                                               ; preds = %72, %70
  %81 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %16
  store i32 0, ptr %81, align 4, !tbaa !121
  %82 = add nuw nsw i64 %16, 1
  %83 = load i32, ptr %10, align 4, !tbaa !429
  %84 = sext i32 %83 to i64
  %85 = icmp slt i64 %82, %84
  br i1 %85, label %15, label %86, !llvm.loop !440

86:                                               ; preds = %80, %2
  %87 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  store i64 0, ptr %87, align 8, !tbaa !441
  %88 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 1
  store i32 0, ptr %88, align 8, !tbaa !442
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %90 = load i32, ptr %89, align 8, !tbaa !279
  %91 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  store i32 %90, ptr %91, align 8, !tbaa !443
  %92 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 3
  store i32 0, ptr %92, align 4, !tbaa !444
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_coef(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  store i32 0, ptr %5, align 8, !tbaa !445
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #26
  switch i32 %1, label %36 [
    i32 0, label %6
    i32 3, label %16
    i32 2, label %26
  ]

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %8 = load ptr, ptr %7, align 8, !tbaa !7
  %9 = icmp eq ptr %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %6
  %11 = load ptr, ptr %0, align 8, !tbaa !25
  %12 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %11, i64 0, i32 5
  store i32 4, ptr %12, align 8, !tbaa !22
  %13 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %13(ptr noundef nonnull %0) #25
  br label %14

14:                                               ; preds = %10, %6
  %15 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_data, ptr %15, align 8, !tbaa !446
  br label %40

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  %19 = icmp eq ptr %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %16
  %21 = load ptr, ptr %0, align 8, !tbaa !25
  %22 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %21, i64 0, i32 5
  store i32 4, ptr %22, align 8, !tbaa !22
  %23 = load ptr, ptr %21, align 8, !tbaa !12
  tail call void %23(ptr noundef nonnull %0) #25
  br label %24

24:                                               ; preds = %20, %16
  %25 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_first_pass, ptr %25, align 8, !tbaa !446
  br label %40

26:                                               ; preds = %2
  %27 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6
  %28 = load ptr, ptr %27, align 8, !tbaa !7
  %29 = icmp eq ptr %28, null
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load ptr, ptr %0, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 5
  store i32 4, ptr %32, align 8, !tbaa !22
  %33 = load ptr, ptr %31, align 8, !tbaa !12
  tail call void %33(ptr noundef nonnull %0) #25
  br label %34

34:                                               ; preds = %30, %26
  %35 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @compress_output, ptr %35, align 8, !tbaa !446
  br label %40

36:                                               ; preds = %2
  %37 = load ptr, ptr %0, align 8, !tbaa !25
  %38 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %37, i64 0, i32 5
  store i32 4, ptr %38, align 8, !tbaa !22
  %39 = load ptr, ptr %37, align 8, !tbaa !12
  tail call void %39(ptr noundef nonnull %0) #25
  br label %40

40:                                               ; preds = %36, %34, %24, %14
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @start_pass_main(ptr noundef %0, i32 noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %4 = load ptr, ptr %3, align 8, !tbaa !189
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !136
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %20

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 1
  store i32 0, ptr %9, align 8, !tbaa !447
  %10 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 2
  store i32 0, ptr %10, align 4, !tbaa !448
  %11 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 3
  store i32 0, ptr %11, align 8, !tbaa !449
  %12 = getelementptr inbounds %struct.my_main_controller, ptr %4, i64 0, i32 4
  store i32 %1, ptr %12, align 4, !tbaa !450
  %13 = icmp eq i32 %1, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %8
  %15 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %4, i64 0, i32 1
  store ptr @process_data_simple_main, ptr %15, align 8, !tbaa !451
  br label %20

16:                                               ; preds = %8
  %17 = load ptr, ptr %0, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 4, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void %19(ptr noundef nonnull %0) #25
  br label %20

20:                                               ; preds = %16, %14, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_any_marker(ptr noundef %0, i32 noundef %1, ptr nocapture noundef readonly %2, i32 noundef %3) #2 {
  %5 = icmp ult i32 %3, 65534
  br i1 %5, label %6, label %19

6:                                                ; preds = %4
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %1) #26
  %7 = add nuw nsw i32 %3, 2
  %8 = lshr i32 %7, 8
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %8) #26
  %9 = and i32 %7, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %9) #26
  %10 = icmp eq i32 %3, 0
  br i1 %10, label %19, label %11

11:                                               ; preds = %11, %6
  %12 = phi i32 [ %14, %11 ], [ %3, %6 ]
  %13 = phi ptr [ %17, %11 ], [ %2, %6 ]
  %14 = add i32 %12, -1
  %15 = load i8, ptr %13, align 1, !tbaa !11
  %16 = zext i8 %15 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %16) #26
  %17 = getelementptr inbounds i8, ptr %13, i64 1
  %18 = icmp eq i32 %14, 0
  br i1 %18, label %19, label %11, !llvm.loop !452

19:                                               ; preds = %11, %6, %4
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_file_header(ptr noundef %0) #2 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 216) #26
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  %3 = load i32, ptr %2, align 8, !tbaa !453
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %19, label %5

5:                                                ; preds = %1
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 224) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 16) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 74) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 70) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 73) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 70) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 1) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 1) #26
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 32
  %7 = load i8, ptr %6, align 4, !tbaa !62
  %8 = zext i8 %7 to i32
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %8) #26
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 33
  %10 = load i16, ptr %9, align 2, !tbaa !63
  %11 = zext i16 %10 to i32
  %12 = lshr i32 %11, 8
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %12) #26
  %13 = and i32 %11, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %13) #26
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 34
  %15 = load i16, ptr %14, align 8, !tbaa !64
  %16 = zext i16 %15 to i32
  %17 = lshr i32 %16, 8
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %17) #26
  %18 = and i32 %16, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %18) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  br label %19

19:                                               ; preds = %5, %1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  %21 = load i32, ptr %20, align 4, !tbaa !454
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %19
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 238) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 14) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 65) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 100) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 111) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 98) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 101) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 100) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  %25 = load i32, ptr %24, align 8, !tbaa !141
  %26 = icmp eq i32 %25, 5
  %27 = select i1 %26, i32 2, i32 0
  %28 = icmp eq i32 %25, 3
  %29 = select i1 %28, i32 1, i32 %27
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %29) #26
  br label %30

30:                                               ; preds = %23, %19
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_frame_header(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %4 = load i32, ptr %3, align 4, !tbaa !100
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %20

6:                                                ; preds = %1
  %7 = load ptr, ptr %2, align 8, !tbaa !57
  br label %8

8:                                                ; preds = %8, %6
  %9 = phi ptr [ %17, %8 ], [ %7, %6 ]
  %10 = phi i32 [ %15, %8 ], [ 0, %6 ]
  %11 = phi i32 [ %16, %8 ], [ 0, %6 ]
  %12 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %9, i64 0, i32 4
  %13 = load i32, ptr %12, align 8, !tbaa !284
  %14 = tail call fastcc i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef %13) #26, !range !277
  %15 = add nuw nsw i32 %14, %10
  %16 = add nuw nsw i32 %11, 1
  %17 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %9, i64 1
  %18 = load i32, ptr %3, align 4, !tbaa !100
  %19 = icmp slt i32 %16, %18
  br i1 %19, label %8, label %20, !llvm.loop !455

20:                                               ; preds = %8, %1
  %21 = phi i32 [ 0, %1 ], [ %15, %8 ]
  %22 = phi i32 [ %4, %1 ], [ %18, %8 ]
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %24 = load i32, ptr %23, align 4, !tbaa !170
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %74

26:                                               ; preds = %20
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %28 = load i32, ptr %27, align 4, !tbaa !120
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %74

30:                                               ; preds = %26
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %32 = load i32, ptr %31, align 8, !tbaa !58
  %33 = icmp eq i32 %32, 8
  br i1 %33, label %34, label %73

34:                                               ; preds = %30
  %35 = icmp sgt i32 %22, 0
  br i1 %35, label %36, label %59

36:                                               ; preds = %34
  %37 = load ptr, ptr %2, align 8, !tbaa !57
  br label %38

38:                                               ; preds = %50, %36
  %39 = phi ptr [ %53, %50 ], [ %37, %36 ]
  %40 = phi i32 [ %51, %50 ], [ 1, %36 ]
  %41 = phi i32 [ %52, %50 ], [ 0, %36 ]
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 0, i32 5
  %43 = load i32, ptr %42, align 4, !tbaa !430
  %44 = icmp sgt i32 %43, 1
  br i1 %44, label %49, label %45

45:                                               ; preds = %38
  %46 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 0, i32 6
  %47 = load i32, ptr %46, align 8, !tbaa !431
  %48 = icmp sgt i32 %47, 1
  br i1 %48, label %49, label %50

49:                                               ; preds = %45, %38
  br label %50

50:                                               ; preds = %49, %45
  %51 = phi i32 [ 0, %49 ], [ %40, %45 ]
  %52 = add nuw nsw i32 %41, 1
  %53 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %39, i64 1
  %54 = icmp eq i32 %52, %22
  br i1 %54, label %55, label %38, !llvm.loop !456

55:                                               ; preds = %50
  %.lcssa = phi i32 [ %51, %50 ]
  %56 = icmp ne i32 %21, 0
  %57 = icmp ne i32 %.lcssa, 0
  %58 = select i1 %56, i1 %57, i1 false
  br i1 %58, label %61, label %71

59:                                               ; preds = %34
  %60 = icmp eq i32 %21, 0
  br i1 %60, label %74, label %61

61:                                               ; preds = %59, %55
  %62 = load ptr, ptr %0, align 8, !tbaa !25
  %63 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 5
  store i32 74, ptr %63, align 8, !tbaa !22
  %64 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %62, i64 0, i32 1
  %65 = load ptr, ptr %64, align 8, !tbaa !16
  tail call void %65(ptr noundef nonnull %0, i32 noundef 0) #25
  %66 = load i32, ptr %23, align 4, !tbaa !170
  %67 = icmp eq i32 %66, 0
  br i1 %67, label %68, label %74

68:                                               ; preds = %61
  %69 = load i32, ptr %27, align 4, !tbaa !120
  %70 = icmp eq i32 %69, 0
  br i1 %70, label %73, label %74

71:                                               ; preds = %55
  %72 = icmp eq i32 %.lcssa, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %71, %68, %30
  br label %74

74:                                               ; preds = %73, %71, %68, %61, %59, %26, %20
  %75 = phi i32 [ 193, %73 ], [ 201, %20 ], [ 201, %61 ], [ 194, %26 ], [ 194, %68 ], [ 192, %71 ], [ 192, %59 ]
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %75) #26
  %76 = load i32, ptr %3, align 4, !tbaa !100
  %77 = mul nsw i32 %76, 3
  %78 = add nsw i32 %77, 8
  %79 = lshr i32 %78, 8
  %80 = and i32 %79, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %80) #26
  %81 = and i32 %78, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %81) #26
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %83 = load i32, ptr %82, align 4, !tbaa !97
  %84 = icmp ugt i32 %83, 65535
  br i1 %84, label %89, label %85

85:                                               ; preds = %74
  %86 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %87 = load i32, ptr %86, align 8, !tbaa !98
  %88 = icmp ugt i32 %87, 65535
  br i1 %88, label %89, label %95

89:                                               ; preds = %85, %74
  %90 = load ptr, ptr %0, align 8, !tbaa !25
  %91 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i64 0, i32 5
  store i32 40, ptr %91, align 8, !tbaa !22
  %92 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %90, i64 0, i32 6
  store i32 65535, ptr %92, align 4, !tbaa !11
  %93 = load ptr, ptr %0, align 8, !tbaa !25
  %94 = load ptr, ptr %93, align 8, !tbaa !12
  tail call void %94(ptr noundef nonnull %0) #25
  br label %95

95:                                               ; preds = %89, %85
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 11
  %97 = load i32, ptr %96, align 8, !tbaa !58
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %97) #26
  %98 = load i32, ptr %82, align 4, !tbaa !97
  %99 = lshr i32 %98, 8
  %100 = and i32 %99, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %100) #26
  %101 = and i32 %98, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %101) #26
  %102 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %103 = load i32, ptr %102, align 8, !tbaa !98
  %104 = lshr i32 %103, 8
  %105 = and i32 %104, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %105) #26
  %106 = and i32 %103, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %106) #26
  %107 = load i32, ptr %3, align 4, !tbaa !100
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %107) #26
  %108 = load i32, ptr %3, align 4, !tbaa !100
  %109 = icmp sgt i32 %108, 0
  br i1 %109, label %110, label %128

110:                                              ; preds = %95
  %111 = load ptr, ptr %2, align 8, !tbaa !57
  br label %112

112:                                              ; preds = %112, %110
  %113 = phi ptr [ %125, %112 ], [ %111, %110 ]
  %114 = phi i32 [ %124, %112 ], [ 0, %110 ]
  %115 = load i32, ptr %113, align 8, !tbaa !457
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %115) #26
  %116 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %113, i64 0, i32 2
  %117 = load i32, ptr %116, align 8, !tbaa !103
  %118 = shl i32 %117, 4
  %119 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %113, i64 0, i32 3
  %120 = load i32, ptr %119, align 4, !tbaa !105
  %121 = add nsw i32 %118, %120
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %121) #26
  %122 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %113, i64 0, i32 4
  %123 = load i32, ptr %122, align 8, !tbaa !284
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %123) #26
  %124 = add nuw nsw i32 %114, 1
  %125 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %113, i64 1
  %126 = load i32, ptr %3, align 4, !tbaa !100
  %127 = icmp slt i32 %124, %126
  br i1 %127, label %112, label %128, !llvm.loop !458

128:                                              ; preds = %112, %95
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_scan_header(ptr noundef %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %3 = load i32, ptr %2, align 4, !tbaa !170
  %4 = icmp eq i32 %3, 0
  br i1 %4, label %5, label %41

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !429
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %41

9:                                                ; preds = %5
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %11 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  br label %13

13:                                               ; preds = %36, %9
  %14 = phi i64 [ 0, %9 ], [ %37, %36 ]
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %14
  %16 = load ptr, ptr %15, align 8, !tbaa !7
  %17 = load i32, ptr %10, align 4, !tbaa !120
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %13
  %20 = load i32, ptr %11, align 4, !tbaa !359
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %19
  %23 = load i32, ptr %12, align 4, !tbaa !360
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %22
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 5
  %27 = load i32, ptr %26, align 4, !tbaa !430
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %27, i32 noundef 0) #26
  br label %36

28:                                               ; preds = %19
  %29 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 6
  %30 = load i32, ptr %29, align 8, !tbaa !431
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %30, i32 noundef 1) #26
  br label %36

31:                                               ; preds = %13
  %32 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 5
  %33 = load i32, ptr %32, align 4, !tbaa !430
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %33, i32 noundef 0) #26
  %34 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %16, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !431
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %35, i32 noundef 1) #26
  br label %36

36:                                               ; preds = %31, %28, %25, %22
  %37 = add nuw nsw i64 %14, 1
  %38 = load i32, ptr %6, align 4, !tbaa !429
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %13, label %41, !llvm.loop !459

41:                                               ; preds = %36, %5, %1
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %43 = load i32, ptr %42, align 8, !tbaa !279
  %44 = icmp eq i32 %43, 0
  br i1 %44, label %50, label %45

45:                                               ; preds = %41
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 221) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 4) #26
  %46 = load i32, ptr %42, align 8, !tbaa !279
  %47 = lshr i32 %46, 8
  %48 = and i32 %47, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %48) #26
  %49 = and i32 %46, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %49) #26
  br label %50

50:                                               ; preds = %45, %41
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 218) #26
  %51 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %52 = load i32, ptr %51, align 4, !tbaa !429
  %53 = shl nsw i32 %52, 1
  %54 = add nsw i32 %53, 6
  %55 = lshr i32 %54, 8
  %56 = and i32 %55, 255
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %56) #26
  %57 = and i32 %54, 254
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %57) #26
  %58 = load i32, ptr %51, align 4, !tbaa !429
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %58) #26
  %59 = load i32, ptr %51, align 4, !tbaa !429
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %95

61:                                               ; preds = %50
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 37
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %64 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  br label %65

65:                                               ; preds = %86, %61
  %66 = phi i64 [ 0, %61 ], [ %91, %86 ]
  %67 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %66
  %68 = load ptr, ptr %67, align 8, !tbaa !7
  %69 = load i32, ptr %68, align 8, !tbaa !457
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %69) #26
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %68, i64 0, i32 5
  %71 = load i32, ptr %70, align 4, !tbaa !430
  %72 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %68, i64 0, i32 6
  %73 = load i32, ptr %72, align 8, !tbaa !431
  %74 = load i32, ptr %62, align 4, !tbaa !120
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %86, label %76

76:                                               ; preds = %65
  %77 = load i32, ptr %63, align 4, !tbaa !359
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load i32, ptr %64, align 4, !tbaa !360
  %81 = icmp eq i32 %80, 0
  br i1 %81, label %86, label %82

82:                                               ; preds = %79
  %83 = load i32, ptr %2, align 4, !tbaa !170
  %84 = icmp eq i32 %83, 0
  %85 = select i1 %84, i32 0, i32 %71
  br label %86

86:                                               ; preds = %82, %79, %76, %65
  %87 = phi i32 [ %71, %79 ], [ %71, %65 ], [ %85, %82 ], [ 0, %76 ]
  %88 = phi i32 [ 0, %79 ], [ %73, %65 ], [ 0, %82 ], [ %73, %76 ]
  %89 = shl i32 %87, 4
  %90 = add nsw i32 %89, %88
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %90) #26
  %91 = add nuw nsw i64 %66, 1
  %92 = load i32, ptr %51, align 4, !tbaa !429
  %93 = sext i32 %92 to i64
  %94 = icmp slt i64 %91, %93
  br i1 %94, label %65, label %95, !llvm.loop !460

95:                                               ; preds = %86, %50
  %96 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %97 = load i32, ptr %96, align 4, !tbaa !359
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %97) #26
  %98 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %99 = load i32, ptr %98, align 8, !tbaa !461
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %99) #26
  %100 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %101 = load i32, ptr %100, align 4, !tbaa !360
  %102 = shl i32 %101, 4
  %103 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %104 = load i32, ptr %103, align 8, !tbaa !462
  %105 = add nsw i32 %102, %104
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef %105) #26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_file_trailer(ptr noundef %0) #2 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 217) #26
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @write_tables_only(ptr noundef %0) #2 {
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 216) #26
  br label %2

2:                                                ; preds = %10, %1
  %3 = phi i64 [ 0, %1 ], [ %11, %10 ]
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %10, label %7

7:                                                ; preds = %2
  %8 = trunc i64 %3 to i32
  %9 = tail call fastcc i32 @emit_dqt(ptr noundef nonnull %0, i32 noundef %8) #26, !range !277
  br label %10

10:                                               ; preds = %7, %2
  %11 = add nuw nsw i64 %3, 1
  %12 = icmp eq i64 %11, 4
  br i1 %12, label %13, label %2, !llvm.loop !463

13:                                               ; preds = %10
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 24
  %15 = load i32, ptr %14, align 4, !tbaa !170
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %33

17:                                               ; preds = %30, %13
  %18 = phi i64 [ %31, %30 ], [ 0, %13 ]
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %18
  %20 = load ptr, ptr %19, align 8, !tbaa !7
  %21 = icmp eq ptr %20, null
  br i1 %21, label %24, label %22

22:                                               ; preds = %17
  %23 = trunc i64 %18 to i32
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %23, i32 noundef 0) #26
  br label %24

24:                                               ; preds = %22, %17
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %18
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  %27 = icmp eq ptr %26, null
  br i1 %27, label %30, label %28

28:                                               ; preds = %24
  %29 = trunc i64 %18 to i32
  tail call fastcc void @emit_dht(ptr noundef nonnull %0, i32 noundef %29, i32 noundef 1) #26
  br label %30

30:                                               ; preds = %28, %24
  %31 = add nuw nsw i64 %18, 1
  %32 = icmp eq i64 %31, 4
  br i1 %32, label %33, label %17, !llvm.loop !464

33:                                               ; preds = %30, %13
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef nonnull %0, i32 noundef 217) #26
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #12

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fclose(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_byte(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %4 = load ptr, ptr %3, align 8, !tbaa !48
  %5 = trunc i32 %1 to i8
  %6 = load ptr, ptr %4, align 8, !tbaa !465
  %7 = getelementptr inbounds i8, ptr %6, i64 1
  store ptr %7, ptr %4, align 8, !tbaa !465
  store i8 %5, ptr %6, align 1, !tbaa !11
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !466
  %10 = add i64 %9, -1
  store i64 %10, ptr %8, align 8, !tbaa !466
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %21

12:                                               ; preds = %2
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %4, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !467
  %15 = tail call i32 %14(ptr noundef nonnull %0) #25
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %21

17:                                               ; preds = %12
  %18 = load ptr, ptr %0, align 8, !tbaa !25
  %19 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %18, i64 0, i32 5
  store i32 22, ptr %19, align 8, !tbaa !22
  %20 = load ptr, ptr %18, align 8, !tbaa !12
  tail call void %20(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %17, %12, %2
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @emit_dqt(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = sext i32 %1 to i64
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 15, i64 %3
  %5 = load ptr, ptr %4, align 8, !tbaa !7
  %6 = icmp eq ptr %5, null
  br i1 %6, label %7, label %13

7:                                                ; preds = %2
  %8 = load ptr, ptr %0, align 8, !tbaa !25
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 5
  store i32 51, ptr %9, align 8, !tbaa !22
  %10 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %8, i64 0, i32 6
  store i32 %1, ptr %10, align 4, !tbaa !11
  %11 = load ptr, ptr %0, align 8, !tbaa !25
  %12 = load ptr, ptr %11, align 8, !tbaa !12
  tail call void %12(ptr noundef nonnull %0) #25
  br label %13

13:                                               ; preds = %7, %2
  br label %14

14:                                               ; preds = %14, %13
  %15 = phi i64 [ %21, %14 ], [ 0, %13 ]
  %16 = phi <4 x i32> [ %20, %14 ], [ zeroinitializer, %13 ]
  %17 = getelementptr inbounds [64 x i16], ptr %5, i64 0, i64 %15
  %18 = load <4 x i16>, ptr %17, align 2, !tbaa !275
  %19 = icmp ugt <4 x i16> %18, <i16 255, i16 255, i16 255, i16 255>
  %20 = select <4 x i1> %19, <4 x i32> <i32 1, i32 1, i32 1, i32 1>, <4 x i32> %16
  %21 = add nuw nsw i64 %15, 4
  %22 = icmp eq i64 %21, 64
  br i1 %22, label %23, label %14, !llvm.loop !468

23:                                               ; preds = %14
  %.lcssa = phi <4 x i32> [ %20, %14 ]
  %24 = icmp ne <4 x i32> %.lcssa, zeroinitializer
  %25 = bitcast <4 x i1> %24 to i4
  %26 = icmp ne i4 %25, 0
  %27 = getelementptr inbounds %struct.JQUANT_TBL, ptr %5, i64 0, i32 1
  %28 = load i32, ptr %27, align 4, !tbaa !84
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %49

30:                                               ; preds = %23
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 219) #26
  %31 = select i1 %26, i32 131, i32 67
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 0) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %31) #26
  %32 = select i1 %26, i32 16, i32 0
  %33 = add nsw i32 %32, %1
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %33) #26
  br label %34

34:                                               ; preds = %44, %30
  %35 = phi i64 [ 0, %30 ], [ %46, %44 ]
  %36 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %35
  %37 = load i32, ptr %36, align 4, !tbaa !121
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds [64 x i16], ptr %5, i64 0, i64 %38
  %40 = load i16, ptr %39, align 2, !tbaa !275
  %41 = zext i16 %40 to i32
  br i1 %26, label %42, label %44

42:                                               ; preds = %34
  %43 = lshr i32 %41, 8
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %43) #26
  br label %44

44:                                               ; preds = %42, %34
  %45 = and i32 %41, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %45) #26
  %46 = add nuw nsw i64 %35, 1
  %47 = icmp eq i64 %46, 64
  br i1 %47, label %48, label %34, !llvm.loop !469

48:                                               ; preds = %44
  store i32 1, ptr %27, align 4, !tbaa !84
  br label %49

49:                                               ; preds = %48, %23
  %50 = zext i1 %26 to i32
  ret i32 %50
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_dht(ptr noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = icmp eq i32 %2, 0
  %5 = sext i32 %1 to i64
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %5
  %7 = add nsw i32 %1, 16
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %5
  %9 = select i1 %4, i32 %1, i32 %7
  %10 = select i1 %4, ptr %8, ptr %6
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = icmp eq ptr %11, null
  br i1 %12, label %13, label %19

13:                                               ; preds = %3
  %14 = load ptr, ptr %0, align 8, !tbaa !25
  %15 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 5
  store i32 49, ptr %15, align 8, !tbaa !22
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %14, i64 0, i32 6
  store i32 %9, ptr %16, align 4, !tbaa !11
  %17 = load ptr, ptr %0, align 8, !tbaa !25
  %18 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void %18(ptr noundef nonnull %0) #25
  br label %19

19:                                               ; preds = %13, %3
  %20 = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i64 0, i32 2
  %21 = load i32, ptr %20, align 4, !tbaa !59
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %59

23:                                               ; preds = %19
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 255) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef 196) #26
  br label %24

24:                                               ; preds = %24, %23
  %25 = phi i64 [ 0, %23 ], [ %32, %24 ]
  %26 = phi <4 x i32> [ zeroinitializer, %23 ], [ %31, %24 ]
  %27 = or i64 %25, 1
  %28 = getelementptr inbounds [17 x i8], ptr %11, i64 0, i64 %27
  %29 = load <4 x i8>, ptr %28, align 1, !tbaa !11
  %30 = zext <4 x i8> %29 to <4 x i32>
  %31 = add <4 x i32> %26, %30
  %32 = add nuw nsw i64 %25, 4
  %33 = icmp eq i64 %32, 16
  br i1 %33, label %34, label %24, !llvm.loop !470

34:                                               ; preds = %24
  %.lcssa = phi <4 x i32> [ %31, %24 ]
  %35 = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %.lcssa)
  %36 = add nuw nsw i32 %35, 19
  %37 = lshr i32 %36, 8
  %38 = and i32 %37, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %38) #26
  %39 = and i32 %36, 255
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %39) #26
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %9) #26
  br label %44

40:                                               ; preds = %44
  %41 = icmp eq i32 %35, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %40
  %43 = zext i32 %35 to i64
  br label %51

44:                                               ; preds = %44, %34
  %45 = phi i64 [ 1, %34 ], [ %49, %44 ]
  %46 = getelementptr inbounds [17 x i8], ptr %11, i64 0, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = zext i8 %47 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %48) #26
  %49 = add nuw nsw i64 %45, 1
  %50 = icmp eq i64 %49, 17
  br i1 %50, label %40, label %44, !llvm.loop !471

51:                                               ; preds = %51, %42
  %52 = phi i64 [ 0, %42 ], [ %56, %51 ]
  %53 = getelementptr inbounds %struct.JHUFF_TBL, ptr %11, i64 0, i32 1, i64 %52
  %54 = load i8, ptr %53, align 1, !tbaa !11
  %55 = zext i8 %54 to i32
  tail call fastcc void @emit_byte(ptr noundef %0, i32 noundef %55) #26
  %56 = add nuw nsw i64 %52, 1
  %57 = icmp eq i64 %56, %43
  br i1 %57, label %58, label %51, !llvm.loop !472

58:                                               ; preds = %51, %40
  store i32 1, ptr %20, align 4, !tbaa !59
  br label %59

59:                                               ; preds = %58, %19
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.vector.reduce.add.v4i32(<4 x i32>) #12

; Function Attrs: nounwind optsize uwtable
define internal void @process_data_simple_main(ptr noundef %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) #2 {
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 52
  %6 = load ptr, ptr %5, align 8, !tbaa !189
  %7 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %7, align 8, !tbaa !447
  %10 = load i32, ptr %8, align 8, !tbaa !115
  %11 = icmp ult i32 %9, %10
  br i1 %11, label %12, label %51

12:                                               ; preds = %4
  %13 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 53
  %15 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 5
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %17 = getelementptr inbounds %struct.my_main_controller, ptr %6, i64 0, i32 3
  %18 = load i32, ptr %13, align 4, !tbaa !448
  br label %19

19:                                               ; preds = %46, %12
  %20 = phi i32 [ %18, %12 ], [ 0, %46 ]
  %21 = icmp ult i32 %20, 8
  br i1 %21, label %22, label %27

22:                                               ; preds = %19
  %23 = load ptr, ptr %14, align 8, !tbaa !152
  %24 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %23, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !473
  tail call void %25(ptr noundef nonnull %0, ptr noundef %1, ptr noundef %2, i32 noundef %3, ptr noundef nonnull %15, ptr noundef nonnull %13, i32 noundef 8) #25
  %26 = load i32, ptr %13, align 4, !tbaa !448
  br label %27

27:                                               ; preds = %22, %19
  %28 = phi i32 [ %26, %22 ], [ %20, %19 ]
  %29 = icmp eq i32 %28, 8
  br i1 %29, label %30, label %51

30:                                               ; preds = %27
  %31 = load ptr, ptr %16, align 8, !tbaa !179
  %32 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %31, i64 0, i32 1
  %33 = load ptr, ptr %32, align 8, !tbaa !217
  %34 = tail call i32 %33(ptr noundef nonnull %0, ptr noundef nonnull %15) #25
  %35 = icmp eq i32 %34, 0
  %36 = load i32, ptr %17, align 8, !tbaa !449
  %37 = icmp eq i32 %36, 0
  br i1 %35, label %38, label %42

38:                                               ; preds = %30
  %.lcssa = phi i1 [ %37, %30 ]
  br i1 %.lcssa, label %39, label %51

39:                                               ; preds = %38
  %40 = load i32, ptr %2, align 4, !tbaa !121
  %41 = add i32 %40, -1
  store i32 %41, ptr %2, align 4, !tbaa !121
  store i32 1, ptr %17, align 8, !tbaa !449
  br label %51

42:                                               ; preds = %30
  br i1 %37, label %46, label %43

43:                                               ; preds = %42
  %44 = load i32, ptr %2, align 4, !tbaa !121
  %45 = add i32 %44, 1
  store i32 %45, ptr %2, align 4, !tbaa !121
  store i32 0, ptr %17, align 8, !tbaa !449
  br label %46

46:                                               ; preds = %43, %42
  store i32 0, ptr %13, align 4, !tbaa !448
  %47 = load i32, ptr %7, align 8, !tbaa !447
  %48 = add i32 %47, 1
  store i32 %48, ptr %7, align 8, !tbaa !447
  %49 = load i32, ptr %8, align 8, !tbaa !115
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %19, label %51, !llvm.loop !474

51:                                               ; preds = %46, %39, %38, %27, %4
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable
define internal fastcc void @start_iMCU_row(ptr nocapture noundef readonly %0) unnamed_addr #16 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %3 = load ptr, ptr %2, align 8, !tbaa !179
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %5 = load i32, ptr %4, align 4, !tbaa !429
  %6 = icmp sgt i32 %5, 1
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 4
  store i32 1, ptr %8, align 4, !tbaa !475
  br label %25

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 1
  %11 = load i32, ptr %10, align 8, !tbaa !445
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %13 = load i32, ptr %12, align 8, !tbaa !115
  %14 = add i32 %13, -1
  %15 = icmp ult i32 %11, %14
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 4
  br i1 %15, label %19, label %22

19:                                               ; preds = %9
  %20 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 3
  %21 = load i32, ptr %20, align 4, !tbaa !105
  store i32 %21, ptr %18, align 4, !tbaa !475
  br label %25

22:                                               ; preds = %9
  %23 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 0, i32 18
  %24 = load i32, ptr %23, align 8, !tbaa !476
  store i32 %24, ptr %18, align 4, !tbaa !475
  br label %25

25:                                               ; preds = %22, %19, %7
  %26 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 2
  store i32 0, ptr %26, align 4, !tbaa !477
  %27 = getelementptr inbounds %struct.my_coef_controller.63, ptr %3, i64 0, i32 3
  store i32 0, ptr %27, align 8, !tbaa !478
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_data(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %6 = load i32, ptr %5, align 8, !tbaa !479
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %9 = load i32, ptr %8, align 8, !tbaa !115
  %10 = add i32 %9, -1
  %11 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 3
  %12 = load i32, ptr %11, align 8, !tbaa !478
  %13 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 4
  %14 = load i32, ptr %13, align 4, !tbaa !475
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %154

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 2
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %19 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %20 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  %21 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %22 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5
  %23 = load i32, ptr %17, align 4, !tbaa !477
  br label %24

24:                                               ; preds = %150, %16
  %25 = phi i32 [ %14, %16 ], [ %151, %150 ]
  %26 = phi i32 [ %23, %16 ], [ 0, %150 ]
  %27 = phi i32 [ %12, %16 ], [ %152, %150 ]
  %28 = icmp ugt i32 %26, %7
  br i1 %28, label %150, label %29

29:                                               ; preds = %24
  %30 = shl nsw i32 %27, 3
  br label %31

31:                                               ; preds = %145, %29
  %32 = phi i32 [ %26, %29 ], [ %146, %145 ]
  %33 = load i32, ptr %18, align 4, !tbaa !429
  %34 = icmp sgt i32 %33, 0
  br i1 %34, label %35, label %138

35:                                               ; preds = %31
  %36 = icmp ult i32 %32, %7
  br label %37

37:                                               ; preds = %132, %35
  %38 = phi i32 [ %33, %35 ], [ %133, %132 ]
  %39 = phi i64 [ 0, %35 ], [ %135, %132 ]
  %40 = phi i32 [ 0, %35 ], [ %134, %132 ]
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %39
  %42 = load ptr, ptr %41, align 8, !tbaa !7
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 13
  %44 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 17
  %45 = select i1 %36, ptr %43, ptr %44
  %46 = load i32, ptr %45, align 4, !tbaa !121
  %47 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 16
  %48 = load i32, ptr %47, align 8, !tbaa !480
  %49 = mul i32 %48, %32
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 14
  %51 = load i32, ptr %50, align 8, !tbaa !481
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %132

53:                                               ; preds = %37
  %54 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %42, i64 0, i32 18
  %55 = getelementptr inbounds ptr, ptr %1, i64 %39
  %56 = sext i32 %46 to i64
  br label %57

57:                                               ; preds = %123, %53
  %58 = phi i32 [ %30, %53 ], [ %126, %123 ]
  %59 = phi i32 [ %40, %53 ], [ %125, %123 ]
  %60 = phi i32 [ 0, %53 ], [ %127, %123 ]
  %61 = load i32, ptr %19, align 8, !tbaa !445
  %62 = icmp ult i32 %61, %10
  br i1 %62, label %67, label %63

63:                                               ; preds = %57
  %64 = add nsw i32 %60, %27
  %65 = load i32, ptr %54, align 8, !tbaa !476
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %100

67:                                               ; preds = %63, %57
  %68 = load ptr, ptr %20, align 8, !tbaa !162
  %69 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !482
  %71 = load ptr, ptr %55, align 8, !tbaa !7
  %72 = sext i32 %59 to i64
  %73 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %72
  %74 = load ptr, ptr %73, align 8, !tbaa !7
  tail call void %70(ptr noundef %0, ptr noundef nonnull %42, ptr noundef %71, ptr noundef %74, i32 noundef %58, i32 noundef %49, i32 noundef %46) #25
  %75 = load i32, ptr %43, align 4, !tbaa !483
  %76 = icmp slt i32 %46, %75
  br i1 %76, label %77, label %123

77:                                               ; preds = %67
  %78 = add nsw i32 %59, %46
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %79
  %81 = load ptr, ptr %80, align 8, !tbaa !7
  %82 = sub nsw i32 %75, %46
  %83 = sext i32 %82 to i64
  %84 = shl nsw i64 %83, 7
  tail call void @llvm.memset.p0.i64(ptr align 1 %81, i8 0, i64 %84, i1 false)
  %85 = load i32, ptr %43, align 4, !tbaa !483
  %86 = icmp slt i32 %46, %85
  br i1 %86, label %87, label %123

87:                                               ; preds = %77
  %88 = sext i32 %85 to i64
  br label %89

89:                                               ; preds = %89, %87
  %90 = phi i64 [ %56, %87 ], [ %98, %89 ]
  %91 = add nsw i64 %90, %72
  %92 = add nsw i64 %91, -1
  %93 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %92
  %94 = load ptr, ptr %93, align 8, !tbaa !7
  %95 = load i16, ptr %94, align 2, !tbaa !275
  %96 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %91
  %97 = load ptr, ptr %96, align 8, !tbaa !7
  store i16 %95, ptr %97, align 2, !tbaa !275
  %98 = add nsw i64 %90, 1
  %99 = icmp eq i64 %98, %88
  br i1 %99, label %123, label %89, !llvm.loop !484

100:                                              ; preds = %63
  %101 = sext i32 %59 to i64
  %102 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %101
  %103 = load ptr, ptr %102, align 8, !tbaa !7
  %104 = load i32, ptr %43, align 4, !tbaa !483
  %105 = sext i32 %104 to i64
  %106 = shl nsw i64 %105, 7
  tail call void @llvm.memset.p0.i64(ptr align 1 %103, i8 0, i64 %106, i1 false)
  %107 = load i32, ptr %43, align 4, !tbaa !483
  %108 = icmp sgt i32 %107, 0
  br i1 %108, label %109, label %123

109:                                              ; preds = %100
  %110 = add nsw i32 %59, -1
  %111 = sext i32 %110 to i64
  %112 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %111
  %113 = load ptr, ptr %112, align 8, !tbaa !7
  %114 = zext i32 %107 to i64
  br label %115

115:                                              ; preds = %115, %109
  %116 = phi i64 [ 0, %109 ], [ %121, %115 ]
  %117 = load i16, ptr %113, align 2, !tbaa !275
  %118 = add nsw i64 %116, %101
  %119 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 5, i64 %118
  %120 = load ptr, ptr %119, align 8, !tbaa !7
  store i16 %117, ptr %120, align 2, !tbaa !275
  %121 = add nuw nsw i64 %116, 1
  %122 = icmp eq i64 %121, %114
  br i1 %122, label %123, label %115, !llvm.loop !485

123:                                              ; preds = %115, %100, %89, %77, %67
  %124 = phi i32 [ %107, %100 ], [ %85, %77 ], [ %75, %67 ], [ %85, %89 ], [ %107, %115 ]
  %125 = add nsw i32 %124, %59
  %126 = add i32 %58, 8
  %127 = add nuw nsw i32 %60, 1
  %128 = load i32, ptr %50, align 8, !tbaa !481
  %129 = icmp slt i32 %127, %128
  br i1 %129, label %57, label %130, !llvm.loop !486

130:                                              ; preds = %123
  %.lcssa = phi i32 [ %125, %123 ]
  %131 = load i32, ptr %18, align 4, !tbaa !429
  br label %132

132:                                              ; preds = %130, %37
  %133 = phi i32 [ %38, %37 ], [ %131, %130 ]
  %134 = phi i32 [ %40, %37 ], [ %.lcssa, %130 ]
  %135 = add nuw nsw i64 %39, 1
  %136 = sext i32 %133 to i64
  %137 = icmp slt i64 %135, %136
  br i1 %137, label %37, label %138, !llvm.loop !487

138:                                              ; preds = %132, %31
  %139 = load ptr, ptr %21, align 8, !tbaa !171
  %140 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %139, i64 0, i32 1
  %141 = load ptr, ptr %140, align 8, !tbaa !488
  %142 = tail call i32 %141(ptr noundef nonnull %0, ptr noundef nonnull %22) #25
  %143 = icmp eq i32 %142, 0
  br i1 %143, label %144, label %145

144:                                              ; preds = %138
  %.lcssa3 = phi i32 [ %27, %138 ]
  %.lcssa1 = phi i32 [ %32, %138 ]
  store i32 %.lcssa3, ptr %11, align 8, !tbaa !478
  store i32 %.lcssa1, ptr %17, align 4, !tbaa !477
  br label %158

145:                                              ; preds = %138
  %146 = add i32 %32, 1
  %147 = icmp ugt i32 %146, %7
  br i1 %147, label %148, label %31, !llvm.loop !489

148:                                              ; preds = %145
  %149 = load i32, ptr %13, align 4, !tbaa !475
  br label %150

150:                                              ; preds = %148, %24
  %151 = phi i32 [ %149, %148 ], [ %25, %24 ]
  store i32 0, ptr %17, align 4, !tbaa !477
  %152 = add nsw i32 %27, 1
  %153 = icmp slt i32 %152, %151
  br i1 %153, label %24, label %154, !llvm.loop !490

154:                                              ; preds = %150, %2
  %155 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %156 = load i32, ptr %155, align 8, !tbaa !445
  %157 = add i32 %156, 1
  store i32 %157, ptr %155, align 8, !tbaa !445
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #26
  br label %158

158:                                              ; preds = %154, %144
  %159 = phi i32 [ 0, %144 ], [ 1, %154 ]
  ret i32 %159
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_first_pass(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %4 = load ptr, ptr %3, align 8, !tbaa !179
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 40
  %6 = load i32, ptr %5, align 8, !tbaa !115
  %7 = add i32 %6, -1
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %9 = load i32, ptr %8, align 4, !tbaa !100
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %228

11:                                               ; preds = %2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %13 = load ptr, ptr %12, align 8, !tbaa !57
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 1
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 58
  br label %17

17:                                               ; preds = %222, %11
  %18 = phi i64 [ 0, %11 ], [ %223, %222 ]
  %19 = phi ptr [ %13, %11 ], [ %224, %222 ]
  %20 = load ptr, ptr %14, align 8, !tbaa !55
  %21 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %20, i64 0, i32 8
  %22 = load ptr, ptr %21, align 8, !tbaa !491
  %23 = getelementptr inbounds %struct.my_coef_controller.63, ptr %4, i64 0, i32 6, i64 %18
  %24 = load ptr, ptr %23, align 8, !tbaa !7
  %25 = load i32, ptr %15, align 8, !tbaa !445
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 3
  %27 = load i32, ptr %26, align 4, !tbaa !105
  %28 = mul i32 %27, %25
  %29 = tail call ptr %22(ptr noundef nonnull %0, ptr noundef %24, i32 noundef %28, i32 noundef %27, i32 noundef 1) #25
  %30 = load i32, ptr %15, align 8, !tbaa !445
  %31 = icmp ult i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %17
  %33 = load i32, ptr %26, align 4, !tbaa !105
  br label %41

34:                                               ; preds = %17
  %35 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 8
  %36 = load i32, ptr %35, align 8, !tbaa !110
  %37 = load i32, ptr %26, align 4, !tbaa !105
  %38 = urem i32 %36, %37
  %39 = icmp eq i32 %38, 0
  %40 = select i1 %39, i32 %37, i32 %38
  br label %41

41:                                               ; preds = %34, %32
  %42 = phi i32 [ %33, %32 ], [ %40, %34 ]
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 7
  %44 = load i32, ptr %43, align 4, !tbaa !109
  %45 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 2
  %46 = load i32, ptr %45, align 8, !tbaa !103
  %47 = urem i32 %44, %46
  %48 = icmp sgt i32 %47, 0
  %49 = sub nsw i32 %46, %47
  %50 = select i1 %48, i32 %49, i32 %47
  %51 = icmp sgt i32 %42, 0
  br i1 %51, label %52, label %129

52:                                               ; preds = %41
  %53 = getelementptr inbounds ptr, ptr %1, i64 %18
  %54 = icmp sgt i32 %50, 0
  %55 = zext i32 %44 to i64
  %56 = zext i32 %50 to i64
  %57 = shl nuw nsw i64 %56, 7
  %58 = zext i32 %42 to i64
  %59 = add nuw nsw i64 %56, 7
  %60 = and i64 %59, 8589934584
  %61 = add nsw i64 %56, -1
  %62 = insertelement <8 x i64> poison, i64 %61, i64 0
  %63 = shufflevector <8 x i64> %62, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %64

64:                                               ; preds = %124, %52
  %65 = phi i64 [ 0, %52 ], [ %125, %124 ]
  %66 = getelementptr inbounds ptr, ptr %29, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = load ptr, ptr %16, align 8, !tbaa !162
  %69 = getelementptr inbounds %struct.jpeg_c_coef_controller, ptr %68, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !482
  %71 = load ptr, ptr %53, align 8, !tbaa !7
  %72 = trunc i64 %65 to i32
  %73 = shl i32 %72, 3
  tail call void %70(ptr noundef %0, ptr noundef %19, ptr noundef %71, ptr noundef %67, i32 noundef %73, i32 noundef 0, i32 noundef %44) #25
  br i1 %54, label %74, label %124

74:                                               ; preds = %64
  %75 = getelementptr inbounds [64 x i16], ptr %67, i64 %55
  tail call void @llvm.memset.p0.i64(ptr align 1 %75, i8 0, i64 %57, i1 false)
  %76 = getelementptr inbounds [64 x i16], ptr %75, i64 -1
  %77 = load i16, ptr %76, align 2, !tbaa !275
  br label %78

78:                                               ; preds = %120, %74
  %79 = phi i64 [ 0, %74 ], [ %121, %120 ]
  %80 = phi <8 x i64> [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %74 ], [ %122, %120 ]
  %81 = icmp ule <8 x i64> %80, %63
  %82 = extractelement <8 x i1> %81, i64 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %78
  %84 = getelementptr inbounds [64 x i16], ptr %75, i64 %79
  store i16 %77, ptr %84, align 2, !tbaa !275
  br label %85

85:                                               ; preds = %83, %78
  %86 = extractelement <8 x i1> %81, i64 1
  br i1 %86, label %87, label %90

87:                                               ; preds = %85
  %88 = or i64 %79, 1
  %89 = getelementptr inbounds [64 x i16], ptr %75, i64 %88
  store i16 %77, ptr %89, align 2, !tbaa !275
  br label %90

90:                                               ; preds = %87, %85
  %91 = extractelement <8 x i1> %81, i64 2
  br i1 %91, label %92, label %95

92:                                               ; preds = %90
  %93 = or i64 %79, 2
  %94 = getelementptr inbounds [64 x i16], ptr %75, i64 %93
  store i16 %77, ptr %94, align 2, !tbaa !275
  br label %95

95:                                               ; preds = %92, %90
  %96 = extractelement <8 x i1> %81, i64 3
  br i1 %96, label %97, label %100

97:                                               ; preds = %95
  %98 = or i64 %79, 3
  %99 = getelementptr inbounds [64 x i16], ptr %75, i64 %98
  store i16 %77, ptr %99, align 2, !tbaa !275
  br label %100

100:                                              ; preds = %97, %95
  %101 = extractelement <8 x i1> %81, i64 4
  br i1 %101, label %102, label %105

102:                                              ; preds = %100
  %103 = or i64 %79, 4
  %104 = getelementptr inbounds [64 x i16], ptr %75, i64 %103
  store i16 %77, ptr %104, align 2, !tbaa !275
  br label %105

105:                                              ; preds = %102, %100
  %106 = extractelement <8 x i1> %81, i64 5
  br i1 %106, label %107, label %110

107:                                              ; preds = %105
  %108 = or i64 %79, 5
  %109 = getelementptr inbounds [64 x i16], ptr %75, i64 %108
  store i16 %77, ptr %109, align 2, !tbaa !275
  br label %110

110:                                              ; preds = %107, %105
  %111 = extractelement <8 x i1> %81, i64 6
  br i1 %111, label %112, label %115

112:                                              ; preds = %110
  %113 = or i64 %79, 6
  %114 = getelementptr inbounds [64 x i16], ptr %75, i64 %113
  store i16 %77, ptr %114, align 2, !tbaa !275
  br label %115

115:                                              ; preds = %112, %110
  %116 = extractelement <8 x i1> %81, i64 7
  br i1 %116, label %117, label %120

117:                                              ; preds = %115
  %118 = or i64 %79, 7
  %119 = getelementptr inbounds [64 x i16], ptr %75, i64 %118
  store i16 %77, ptr %119, align 2, !tbaa !275
  br label %120

120:                                              ; preds = %117, %115
  %121 = add nuw nsw i64 %79, 8
  %122 = add <8 x i64> %80, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %123 = icmp eq i64 %121, %60
  br i1 %123, label %124, label %78, !llvm.loop !492

124:                                              ; preds = %120, %64
  %125 = add nuw nsw i64 %65, 1
  %126 = icmp eq i64 %125, %58
  br i1 %126, label %127, label %64, !llvm.loop !493

127:                                              ; preds = %124
  %128 = load i32, ptr %15, align 8, !tbaa !445
  br label %129

129:                                              ; preds = %127, %41
  %130 = phi i32 [ %128, %127 ], [ %30, %41 ]
  %131 = icmp eq i32 %130, %7
  br i1 %131, label %132, label %222

132:                                              ; preds = %129
  %133 = load i32, ptr %26, align 4, !tbaa !105
  %134 = icmp slt i32 %42, %133
  br i1 %134, label %135, label %222

135:                                              ; preds = %132
  %136 = add i32 %50, %44
  %137 = udiv i32 %136, %46
  %138 = zext i32 %136 to i64
  %139 = shl nuw nsw i64 %138, 7
  %140 = icmp ugt i32 %46, %136
  %141 = add nsw i32 %46, -1
  %142 = sext i32 %141 to i64
  %143 = icmp sgt i32 %46, 0
  %144 = sext i32 %46 to i64
  %145 = sext i32 %42 to i64
  %146 = zext i32 %46 to i64
  %147 = tail call i32 @llvm.umax.i32(i32 %137, i32 1)
  %148 = add nuw nsw i64 %146, 7
  %149 = and i64 %148, 8589934584
  %150 = add nsw i64 %146, -1
  %151 = insertelement <8 x i64> poison, i64 %150, i64 0
  %152 = shufflevector <8 x i64> %151, <8 x i64> poison, <8 x i32> zeroinitializer
  br label %153

153:                                              ; preds = %217, %135
  %154 = phi i64 [ %145, %135 ], [ %218, %217 ]
  %155 = getelementptr inbounds ptr, ptr %29, i64 %154
  %156 = load ptr, ptr %155, align 8, !tbaa !7
  %157 = add nsw i64 %154, -1
  %158 = getelementptr inbounds ptr, ptr %29, i64 %157
  %159 = load ptr, ptr %158, align 8, !tbaa !7
  tail call void @llvm.memset.p0.i64(ptr align 1 %156, i8 0, i64 %139, i1 false)
  br i1 %140, label %217, label %160

160:                                              ; preds = %212, %153
  %161 = phi ptr [ %214, %212 ], [ %159, %153 ]
  %162 = phi ptr [ %213, %212 ], [ %156, %153 ]
  %163 = phi i32 [ %215, %212 ], [ 0, %153 ]
  %164 = getelementptr inbounds [64 x i16], ptr %161, i64 %142
  %165 = load i16, ptr %164, align 2, !tbaa !275
  br i1 %143, label %166, label %212

166:                                              ; preds = %208, %160
  %167 = phi i64 [ %209, %208 ], [ 0, %160 ]
  %168 = phi <8 x i64> [ %210, %208 ], [ <i64 0, i64 1, i64 2, i64 3, i64 4, i64 5, i64 6, i64 7>, %160 ]
  %169 = icmp ule <8 x i64> %168, %152
  %170 = extractelement <8 x i1> %169, i64 0
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = getelementptr inbounds [64 x i16], ptr %162, i64 %167
  store i16 %165, ptr %172, align 2, !tbaa !275
  br label %173

173:                                              ; preds = %171, %166
  %174 = extractelement <8 x i1> %169, i64 1
  br i1 %174, label %175, label %178

175:                                              ; preds = %173
  %176 = or i64 %167, 1
  %177 = getelementptr inbounds [64 x i16], ptr %162, i64 %176
  store i16 %165, ptr %177, align 2, !tbaa !275
  br label %178

178:                                              ; preds = %175, %173
  %179 = extractelement <8 x i1> %169, i64 2
  br i1 %179, label %180, label %183

180:                                              ; preds = %178
  %181 = or i64 %167, 2
  %182 = getelementptr inbounds [64 x i16], ptr %162, i64 %181
  store i16 %165, ptr %182, align 2, !tbaa !275
  br label %183

183:                                              ; preds = %180, %178
  %184 = extractelement <8 x i1> %169, i64 3
  br i1 %184, label %185, label %188

185:                                              ; preds = %183
  %186 = or i64 %167, 3
  %187 = getelementptr inbounds [64 x i16], ptr %162, i64 %186
  store i16 %165, ptr %187, align 2, !tbaa !275
  br label %188

188:                                              ; preds = %185, %183
  %189 = extractelement <8 x i1> %169, i64 4
  br i1 %189, label %190, label %193

190:                                              ; preds = %188
  %191 = or i64 %167, 4
  %192 = getelementptr inbounds [64 x i16], ptr %162, i64 %191
  store i16 %165, ptr %192, align 2, !tbaa !275
  br label %193

193:                                              ; preds = %190, %188
  %194 = extractelement <8 x i1> %169, i64 5
  br i1 %194, label %195, label %198

195:                                              ; preds = %193
  %196 = or i64 %167, 5
  %197 = getelementptr inbounds [64 x i16], ptr %162, i64 %196
  store i16 %165, ptr %197, align 2, !tbaa !275
  br label %198

198:                                              ; preds = %195, %193
  %199 = extractelement <8 x i1> %169, i64 6
  br i1 %199, label %200, label %203

200:                                              ; preds = %198
  %201 = or i64 %167, 6
  %202 = getelementptr inbounds [64 x i16], ptr %162, i64 %201
  store i16 %165, ptr %202, align 2, !tbaa !275
  br label %203

203:                                              ; preds = %200, %198
  %204 = extractelement <8 x i1> %169, i64 7
  br i1 %204, label %205, label %208

205:                                              ; preds = %203
  %206 = or i64 %167, 7
  %207 = getelementptr inbounds [64 x i16], ptr %162, i64 %206
  store i16 %165, ptr %207, align 2, !tbaa !275
  br label %208

208:                                              ; preds = %205, %203
  %209 = add nuw nsw i64 %167, 8
  %210 = add <8 x i64> %168, <i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8, i64 8>
  %211 = icmp eq i64 %209, %149
  br i1 %211, label %212, label %166, !llvm.loop !494

212:                                              ; preds = %208, %160
  %213 = getelementptr inbounds [64 x i16], ptr %162, i64 %144
  %214 = getelementptr inbounds [64 x i16], ptr %161, i64 %144
  %215 = add nuw i32 %163, 1
  %216 = icmp eq i32 %215, %147
  br i1 %216, label %217, label %160, !llvm.loop !495

217:                                              ; preds = %212, %153
  %218 = add nsw i64 %154, 1
  %219 = load i32, ptr %26, align 4, !tbaa !105
  %220 = sext i32 %219 to i64
  %221 = icmp slt i64 %218, %220
  br i1 %221, label %153, label %222, !llvm.loop !496

222:                                              ; preds = %217, %132, %129
  %223 = add nuw nsw i64 %18, 1
  %224 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 1
  %225 = load i32, ptr %8, align 4, !tbaa !100
  %226 = sext i32 %225 to i64
  %227 = icmp slt i64 %223, %226
  br i1 %227, label %17, label %228, !llvm.loop !497

228:                                              ; preds = %222, %2
  %229 = tail call i32 @compress_output(ptr noundef nonnull %0, ptr poison) #26, !range !277
  ret i32 %229
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @compress_output(ptr noundef %0, ptr nocapture readnone %1) #2 {
  %3 = alloca [4 x ptr], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 54
  %5 = load ptr, ptr %4, align 8, !tbaa !179
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %3) #23
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !429
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %34

9:                                                ; preds = %2
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %11 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 1
  br label %12

12:                                               ; preds = %12, %9
  %13 = phi i64 [ 0, %9 ], [ %30, %12 ]
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %13
  %15 = load ptr, ptr %14, align 8, !tbaa !7
  %16 = load ptr, ptr %10, align 8, !tbaa !55
  %17 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %16, i64 0, i32 8
  %18 = load ptr, ptr %17, align 8, !tbaa !491
  %19 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %15, i64 0, i32 1
  %20 = load i32, ptr %19, align 4, !tbaa !107
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 6, i64 %21
  %23 = load ptr, ptr %22, align 8, !tbaa !7
  %24 = load i32, ptr %11, align 8, !tbaa !445
  %25 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %15, i64 0, i32 3
  %26 = load i32, ptr %25, align 4, !tbaa !105
  %27 = mul i32 %26, %24
  %28 = tail call ptr %18(ptr noundef nonnull %0, ptr noundef %23, i32 noundef %27, i32 noundef %26, i32 noundef 0) #25
  %29 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %13
  store ptr %28, ptr %29, align 8, !tbaa !7
  %30 = add nuw nsw i64 %13, 1
  %31 = load i32, ptr %6, align 4, !tbaa !429
  %32 = sext i32 %31 to i64
  %33 = icmp slt i64 %30, %32
  br i1 %33, label %12, label %34, !llvm.loop !498

34:                                               ; preds = %12, %2
  %35 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 3
  %36 = load i32, ptr %35, align 8, !tbaa !478
  %37 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 4
  %38 = load i32, ptr %37, align 4, !tbaa !475
  %39 = icmp slt i32 %36, %38
  br i1 %39, label %40, label %125

40:                                               ; preds = %34
  %41 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 2
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %43 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %44 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 5
  %45 = sext i32 %36 to i64
  %46 = load i32, ptr %41, align 4, !tbaa !477
  %47 = load i32, ptr %42, align 8, !tbaa !479
  br label %48

48:                                               ; preds = %119, %40
  %49 = phi i32 [ %38, %40 ], [ %120, %119 ]
  %50 = phi i32 [ %47, %40 ], [ %121, %119 ]
  %51 = phi i32 [ %46, %40 ], [ 0, %119 ]
  %52 = phi i64 [ %45, %40 ], [ %122, %119 ]
  %53 = icmp ult i32 %51, %50
  br i1 %53, label %54, label %119

54:                                               ; preds = %113, %48
  %55 = phi i32 [ %114, %113 ], [ %51, %48 ]
  %56 = load i32, ptr %6, align 4, !tbaa !429
  %57 = icmp sgt i32 %56, 0
  br i1 %57, label %58, label %105

58:                                               ; preds = %54
  %59 = zext i32 %56 to i64
  br label %60

60:                                               ; preds = %101, %58
  %61 = phi i64 [ 0, %58 ], [ %103, %101 ]
  %62 = phi i32 [ 0, %58 ], [ %102, %101 ]
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %61
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 13
  %66 = load i32, ptr %65, align 4, !tbaa !483
  %67 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 14
  %68 = load i32, ptr %67, align 8, !tbaa !481
  %69 = icmp sgt i32 %68, 0
  br i1 %69, label %70, label %101

70:                                               ; preds = %60
  %71 = mul i32 %66, %55
  %72 = getelementptr inbounds [4 x ptr], ptr %3, i64 0, i64 %61
  %73 = load ptr, ptr %72, align 8, !tbaa !7
  %74 = zext i32 %71 to i64
  %75 = icmp sgt i32 %66, 0
  %76 = zext i32 %68 to i64
  br label %77

77:                                               ; preds = %97, %70
  %78 = phi i64 [ 0, %70 ], [ %99, %97 ]
  %79 = phi i32 [ %62, %70 ], [ %98, %97 ]
  br i1 %75, label %80, label %97

80:                                               ; preds = %77
  %81 = add nsw i64 %78, %52
  %82 = getelementptr inbounds ptr, ptr %73, i64 %81
  %83 = load ptr, ptr %82, align 8, !tbaa !7
  %84 = getelementptr inbounds [64 x i16], ptr %83, i64 %74
  %85 = sext i32 %79 to i64
  br label %86

86:                                               ; preds = %86, %80
  %87 = phi i64 [ %85, %80 ], [ %91, %86 ]
  %88 = phi ptr [ %84, %80 ], [ %90, %86 ]
  %89 = phi i32 [ 0, %80 ], [ %93, %86 ]
  %90 = getelementptr inbounds [64 x i16], ptr %88, i64 1
  %91 = add nsw i64 %87, 1
  %92 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 5, i64 %87
  store ptr %88, ptr %92, align 8, !tbaa !7
  %93 = add nuw nsw i32 %89, 1
  %94 = icmp eq i32 %93, %66
  br i1 %94, label %95, label %86, !llvm.loop !499

95:                                               ; preds = %86
  %.lcssa = phi i64 [ %91, %86 ]
  %96 = trunc i64 %.lcssa to i32
  br label %97

97:                                               ; preds = %95, %77
  %98 = phi i32 [ %79, %77 ], [ %96, %95 ]
  %99 = add nuw nsw i64 %78, 1
  %100 = icmp eq i64 %99, %76
  br i1 %100, label %101, label %77, !llvm.loop !500

101:                                              ; preds = %97, %60
  %102 = phi i32 [ %62, %60 ], [ %98, %97 ]
  %103 = add nuw nsw i64 %61, 1
  %104 = icmp eq i64 %103, %59
  br i1 %104, label %105, label %60, !llvm.loop !501

105:                                              ; preds = %101, %54
  %106 = load ptr, ptr %43, align 8, !tbaa !171
  %107 = getelementptr inbounds %struct.jpeg_entropy_encoder.37, ptr %106, i64 0, i32 1
  %108 = load ptr, ptr %107, align 8, !tbaa !488
  %109 = tail call i32 %108(ptr noundef nonnull %0, ptr noundef nonnull %44) #25
  %110 = icmp eq i32 %109, 0
  br i1 %110, label %111, label %113

111:                                              ; preds = %105
  %.lcssa4 = phi i64 [ %52, %105 ]
  %.lcssa1 = phi i32 [ %55, %105 ]
  %112 = trunc i64 %.lcssa4 to i32
  store i32 %112, ptr %35, align 8, !tbaa !478
  store i32 %.lcssa1, ptr %41, align 4, !tbaa !477
  br label %129

113:                                              ; preds = %105
  %114 = add nuw i32 %55, 1
  %115 = load i32, ptr %42, align 8, !tbaa !479
  %116 = icmp ult i32 %114, %115
  br i1 %116, label %54, label %117, !llvm.loop !502

117:                                              ; preds = %113
  %.lcssa3 = phi i32 [ %115, %113 ]
  %118 = load i32, ptr %37, align 4, !tbaa !475
  br label %119

119:                                              ; preds = %117, %48
  %120 = phi i32 [ %118, %117 ], [ %49, %48 ]
  %121 = phi i32 [ %.lcssa3, %117 ], [ %50, %48 ]
  store i32 0, ptr %41, align 4, !tbaa !477
  %122 = add nsw i64 %52, 1
  %123 = sext i32 %120 to i64
  %124 = icmp slt i64 %122, %123
  br i1 %124, label %48, label %125, !llvm.loop !503

125:                                              ; preds = %119, %34
  %126 = getelementptr inbounds %struct.my_coef_controller.63, ptr %5, i64 0, i32 1
  %127 = load i32, ptr %126, align 8, !tbaa !445
  %128 = add i32 %127, 1
  store i32 %128, ptr %126, align 8, !tbaa !445
  tail call fastcc void @start_iMCU_row(ptr noundef %0) #26
  br label %129

129:                                              ; preds = %125, %111
  %130 = phi i32 [ 0, %111 ], [ 1, %125 ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %3) #23
  ret i32 %130
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umax.i32(i32, i32) #12

; Function Attrs: nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable
define internal i32 @encode_mcu_gather(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #14 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %6 = load i32, ptr %5, align 8, !tbaa !279
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %28, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 2
  %10 = load i32, ptr %9, align 8, !tbaa !443
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %25

12:                                               ; preds = %8
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %14 = load i32, ptr %13, align 4, !tbaa !429
  %15 = icmp sgt i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %16, %12
  %17 = phi i64 [ %19, %16 ], [ 0, %12 ]
  %18 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %17
  store i32 0, ptr %18, align 4, !tbaa !121
  %19 = add nuw nsw i64 %17, 1
  %20 = load i32, ptr %13, align 4, !tbaa !429
  %21 = sext i32 %20 to i64
  %22 = icmp slt i64 %19, %21
  br i1 %22, label %16, label %23, !llvm.loop !504

23:                                               ; preds = %16
  %24 = load i32, ptr %5, align 8, !tbaa !279
  br label %25

25:                                               ; preds = %23, %12, %8
  %26 = phi i32 [ %10, %8 ], [ %24, %23 ], [ %6, %12 ]
  %27 = add i32 %26, -1
  store i32 %27, ptr %9, align 8, !tbaa !443
  br label %28

28:                                               ; preds = %25, %2
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %30 = load i32, ptr %29, align 8, !tbaa !505
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %135

32:                                               ; preds = %130, %28
  %33 = phi i64 [ %131, %130 ], [ 0, %28 ]
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %33
  %35 = load i32, ptr %34, align 4, !tbaa !121
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %36
  %38 = load ptr, ptr %37, align 8, !tbaa !7
  %39 = getelementptr inbounds ptr, ptr %1, i64 %33
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1, i32 2, i64 %36
  %42 = load i32, ptr %41, align 4, !tbaa !121
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %38, i64 0, i32 5
  %44 = load i32, ptr %43, align 4, !tbaa !430
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 6, i64 %45
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  %48 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %38, i64 0, i32 6
  %49 = load i32, ptr %48, align 8, !tbaa !431
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %50
  %52 = load ptr, ptr %51, align 8, !tbaa !7
  %53 = load i16, ptr %40, align 2, !tbaa !275
  %54 = sext i16 %53 to i32
  %55 = icmp eq i32 %42, %54
  br i1 %55, label %67, label %56

56:                                               ; preds = %32
  %57 = sub nsw i32 %54, %42
  %58 = tail call i32 @llvm.abs.i32(i32 %57, i1 true)
  br label %59

59:                                               ; preds = %59, %56
  %60 = phi i32 [ %62, %59 ], [ 0, %56 ]
  %61 = phi i32 [ %63, %59 ], [ %58, %56 ]
  %62 = add nuw nsw i32 %60, 1
  %63 = lshr i32 %61, 1
  %64 = icmp ult i32 %61, 2
  br i1 %64, label %65, label %59, !llvm.loop !506

65:                                               ; preds = %59
  %.lcssa = phi i32 [ %62, %59 ]
  %66 = zext i32 %.lcssa to i64
  br label %67

67:                                               ; preds = %65, %32
  %68 = phi i64 [ 0, %32 ], [ %66, %65 ]
  %69 = getelementptr inbounds i64, ptr %47, i64 %68
  %70 = load i64, ptr %69, align 8, !tbaa !31
  %71 = add nsw i64 %70, 1
  store i64 %71, ptr %69, align 8, !tbaa !31
  %72 = getelementptr inbounds i64, ptr %52, i64 240
  br label %73

73:                                               ; preds = %122, %67
  %74 = phi i64 [ 1, %67 ], [ %123, %122 ]
  %75 = phi i32 [ 0, %67 ], [ %124, %122 ]
  %76 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %74
  %77 = load i32, ptr %76, align 4, !tbaa !121
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds i16, ptr %40, i64 %78
  %80 = load i16, ptr %79, align 2, !tbaa !275
  %81 = icmp eq i16 %80, 0
  br i1 %81, label %108, label %82

82:                                               ; preds = %73
  %83 = icmp sgt i32 %75, 15
  br i1 %83, label %84, label %96

84:                                               ; preds = %82
  %85 = load i64, ptr %72, align 8, !tbaa !31
  %86 = add nuw i32 %75, 15
  %87 = tail call i32 @llvm.smin.i32(i32 %75, i32 31)
  %88 = sub nuw i32 %86, %87
  %89 = lshr i32 %88, 4
  %90 = add nuw nsw i32 %89, 1
  %91 = zext i32 %90 to i64
  %92 = add i64 %85, %91
  %93 = and i32 %88, -16
  %94 = add nsw i32 %75, -16
  %95 = sub nsw i32 %94, %93
  store i64 %92, ptr %72, align 8, !tbaa !31
  br label %96

96:                                               ; preds = %84, %82
  %97 = phi i32 [ %95, %84 ], [ %75, %82 ]
  %98 = tail call i16 @llvm.abs.i16(i16 %80, i1 false)
  %99 = icmp ult i16 %98, 2
  br i1 %99, label %112, label %100

100:                                              ; preds = %96
  %101 = zext i16 %98 to i32
  br label %102

102:                                              ; preds = %102, %100
  %103 = phi i32 [ %106, %102 ], [ 1, %100 ]
  %104 = phi i32 [ %105, %102 ], [ %101, %100 ]
  %105 = lshr i32 %104, 1
  %106 = add nuw nsw i32 %103, 1
  %107 = icmp ult i32 %104, 4
  br i1 %107, label %112, label %102, !llvm.loop !507

108:                                              ; preds = %73
  %109 = add nsw i32 %75, 1
  %110 = add nuw nsw i64 %74, 1
  %111 = icmp eq i64 %110, 64
  br i1 %111, label %125, label %122

112:                                              ; preds = %102, %96
  %113 = phi i32 [ 1, %96 ], [ %106, %102 ]
  %114 = shl i32 %97, 4
  %115 = add nsw i32 %113, %114
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i64, ptr %52, i64 %116
  %118 = load i64, ptr %117, align 8, !tbaa !31
  %119 = add nsw i64 %118, 1
  store i64 %119, ptr %117, align 8, !tbaa !31
  %120 = add nuw nsw i64 %74, 1
  %121 = icmp eq i64 %120, 64
  br i1 %121, label %130, label %122

122:                                              ; preds = %112, %108
  %123 = phi i64 [ %110, %108 ], [ %120, %112 ]
  %124 = phi i32 [ %109, %108 ], [ 0, %112 ]
  br label %73, !llvm.loop !508

125:                                              ; preds = %108
  %.lcssa2 = phi i32 [ %75, %108 ]
  %126 = icmp sgt i32 %.lcssa2, -1
  br i1 %126, label %127, label %130

127:                                              ; preds = %125
  %128 = load i64, ptr %52, align 8, !tbaa !31
  %129 = add nsw i64 %128, 1
  store i64 %129, ptr %52, align 8, !tbaa !31
  br label %130

130:                                              ; preds = %127, %125, %112
  store i32 %54, ptr %41, align 4, !tbaa !121
  %131 = add nuw nsw i64 %33, 1
  %132 = load i32, ptr %29, align 8, !tbaa !505
  %133 = sext i32 %132 to i64
  %134 = icmp slt i64 %131, %133
  br i1 %134, label %32, label %135, !llvm.loop !509

135:                                              ; preds = %130, %28
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_huff(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca %struct.working_state, align 8
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %3) #23
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %7 = load ptr, ptr %6, align 8, !tbaa !48
  %8 = load ptr, ptr %7, align 8, !tbaa !465
  store ptr %8, ptr %3, align 8, !tbaa !510
  %9 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %7, i64 0, i32 1
  %10 = load i64, ptr %9, align 8, !tbaa !466
  %11 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 1
  store i64 %10, ptr %11, align 8, !tbaa !512
  %12 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2
  %13 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %13, i64 32, i1 false), !tbaa.struct !513
  %14 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 3
  store ptr %0, ptr %14, align 8, !tbaa !514
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %16 = load i32, ptr %15, align 8, !tbaa !279
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %79, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %20 = load i32, ptr %19, align 8, !tbaa !443
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %79

22:                                               ; preds = %18
  %23 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %24 = load i32, ptr %23, align 4, !tbaa !444
  %25 = call fastcc i32 @flush_bits(ptr noundef nonnull %3) #26, !range !277
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %643, label %27

27:                                               ; preds = %22
  %28 = load ptr, ptr %3, align 8, !tbaa !510
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  store ptr %29, ptr %3, align 8, !tbaa !510
  store i8 -1, ptr %28, align 1, !tbaa !11
  %30 = load i64, ptr %11, align 8, !tbaa !512
  %31 = add i64 %30, -1
  store i64 %31, ptr %11, align 8, !tbaa !512
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %35, label %33

33:                                               ; preds = %27
  %34 = load ptr, ptr %3, align 8, !tbaa !510
  br label %47

35:                                               ; preds = %27
  %36 = load ptr, ptr %14, align 8, !tbaa !514
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %36, i64 0, i32 5
  %38 = load ptr, ptr %37, align 8, !tbaa !48
  %39 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %38, i64 0, i32 3
  %40 = load ptr, ptr %39, align 8, !tbaa !467
  %41 = tail call i32 %40(ptr noundef %36) #25
  %42 = icmp eq i32 %41, 0
  br i1 %42, label %643, label %43

43:                                               ; preds = %35
  %44 = load ptr, ptr %38, align 8, !tbaa !465
  %45 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %38, i64 0, i32 1
  %46 = load i64, ptr %45, align 8, !tbaa !466
  store i64 %46, ptr %11, align 8, !tbaa !512
  br label %47

47:                                               ; preds = %43, %33
  %48 = phi ptr [ %34, %33 ], [ %44, %43 ]
  %49 = trunc i32 %24 to i8
  %50 = add i8 %49, -48
  %51 = getelementptr inbounds i8, ptr %48, i64 1
  store ptr %51, ptr %3, align 8, !tbaa !510
  store i8 %50, ptr %48, align 1, !tbaa !11
  %52 = load i64, ptr %11, align 8, !tbaa !512
  %53 = add i64 %52, -1
  store i64 %53, ptr %11, align 8, !tbaa !512
  %54 = icmp eq i64 %53, 0
  %55 = load ptr, ptr %14, align 8, !tbaa !514
  br i1 %54, label %56, label %67

56:                                               ; preds = %47
  %57 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 5
  %58 = load ptr, ptr %57, align 8, !tbaa !48
  %59 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %58, i64 0, i32 3
  %60 = load ptr, ptr %59, align 8, !tbaa !467
  %61 = tail call i32 %60(ptr noundef %55) #25
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %643, label %63

63:                                               ; preds = %56
  %64 = load ptr, ptr %58, align 8, !tbaa !465
  store ptr %64, ptr %3, align 8, !tbaa !510
  %65 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %58, i64 0, i32 1
  %66 = load i64, ptr %65, align 8, !tbaa !466
  store i64 %66, ptr %11, align 8, !tbaa !512
  br label %67

67:                                               ; preds = %63, %47
  %68 = phi i64 [ %66, %63 ], [ %53, %47 ]
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %55, i64 0, i32 41
  %70 = load i32, ptr %69, align 4, !tbaa !429
  %71 = icmp sgt i32 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %72, %67
  %73 = phi i64 [ %75, %72 ], [ 0, %67 ]
  %74 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %73
  store i32 0, ptr %74, align 4, !tbaa !121
  %75 = add nuw nsw i64 %73, 1
  %76 = load i32, ptr %69, align 4, !tbaa !429
  %77 = sext i32 %76 to i64
  %78 = icmp slt i64 %75, %77
  br i1 %78, label %72, label %79, !llvm.loop !515

79:                                               ; preds = %72, %67, %18, %2
  %80 = phi i64 [ %68, %67 ], [ %10, %18 ], [ %10, %2 ], [ %68, %72 ]
  %81 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %82 = load i32, ptr %81, align 8, !tbaa !505
  %83 = icmp sgt i32 %82, 0
  br i1 %83, label %84, label %624

84:                                               ; preds = %79
  %85 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 1
  br label %86

86:                                               ; preds = %615, %84
  %87 = phi i64 [ %80, %84 ], [ %616, %615 ]
  %88 = phi i64 [ 0, %84 ], [ %620, %615 ]
  %89 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !121
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %91
  %93 = load ptr, ptr %92, align 8, !tbaa !7
  %94 = getelementptr inbounds ptr, ptr %1, i64 %88
  %95 = load ptr, ptr %94, align 8, !tbaa !7
  %96 = getelementptr inbounds %struct.working_state, ptr %3, i64 0, i32 2, i32 2, i64 %91
  %97 = load i32, ptr %96, align 4, !tbaa !121
  %98 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %93, i64 0, i32 5
  %99 = load i32, ptr %98, align 4, !tbaa !430
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 4, i64 %100
  %102 = load ptr, ptr %101, align 8, !tbaa !7
  %103 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %93, i64 0, i32 6
  %104 = load i32, ptr %103, align 8, !tbaa !431
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 5, i64 %105
  %107 = load ptr, ptr %106, align 8, !tbaa !7
  %108 = load i16, ptr %95, align 2, !tbaa !275
  %109 = sext i16 %108 to i32
  %110 = sub nsw i32 %109, %97
  %111 = ashr i32 %110, 31
  %112 = add nsw i32 %111, %110
  %113 = icmp eq i32 %97, %109
  br i1 %113, label %122, label %114

114:                                              ; preds = %86
  %115 = tail call i32 @llvm.abs.i32(i32 %110, i1 true)
  br label %116

116:                                              ; preds = %116, %114
  %117 = phi i32 [ %119, %116 ], [ 0, %114 ]
  %118 = phi i32 [ %120, %116 ], [ %115, %114 ]
  %119 = add nuw nsw i32 %117, 1
  %120 = lshr i32 %118, 1
  %121 = icmp ult i32 %118, 2
  br i1 %121, label %122, label %116, !llvm.loop !516

122:                                              ; preds = %116, %86
  %123 = phi i32 [ 0, %86 ], [ %119, %116 ]
  %124 = zext i32 %123 to i64
  %125 = getelementptr inbounds [256 x i32], ptr %102, i64 0, i64 %124
  %126 = load i32, ptr %125, align 4, !tbaa !121
  %127 = getelementptr inbounds %struct.c_derived_tbl, ptr %102, i64 0, i32 1, i64 %124
  %128 = load i8, ptr %127, align 1, !tbaa !11
  %129 = sext i8 %128 to i32
  %130 = zext i32 %126 to i64
  %131 = load i32, ptr %85, align 8, !tbaa !517
  %132 = icmp eq i8 %128, 0
  br i1 %132, label %133, label %138

133:                                              ; preds = %122
  %134 = load ptr, ptr %14, align 8, !tbaa !514
  %135 = load ptr, ptr %134, align 8, !tbaa !25
  %136 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %135, i64 0, i32 5
  store i32 39, ptr %136, align 8, !tbaa !22
  %137 = load ptr, ptr %135, align 8, !tbaa !12
  tail call void %137(ptr noundef nonnull %134) #25
  br label %138

138:                                              ; preds = %133, %122
  %139 = zext i32 %129 to i64
  %140 = shl nsw i64 -1, %139
  %141 = xor i64 %140, -1
  %142 = and i64 %141, %130
  %143 = add nsw i32 %131, %129
  %144 = sub nsw i32 24, %143
  %145 = zext i32 %144 to i64
  %146 = shl i64 %142, %145
  %147 = load i64, ptr %12, align 8, !tbaa !518
  %148 = or i64 %147, %146
  %149 = icmp sgt i32 %143, 7
  br i1 %149, label %150, label %199

150:                                              ; preds = %194, %138
  %151 = phi i32 [ %197, %194 ], [ %143, %138 ]
  %152 = phi i64 [ %196, %194 ], [ %148, %138 ]
  %153 = lshr i64 %152, 16
  %154 = trunc i64 %153 to i8
  %155 = load ptr, ptr %3, align 8, !tbaa !510
  %156 = getelementptr inbounds i8, ptr %155, i64 1
  store ptr %156, ptr %3, align 8, !tbaa !510
  store i8 %154, ptr %155, align 1, !tbaa !11
  %157 = load i64, ptr %11, align 8, !tbaa !512
  %158 = add i64 %157, -1
  store i64 %158, ptr %11, align 8, !tbaa !512
  %159 = icmp eq i64 %158, 0
  br i1 %159, label %160, label %172

160:                                              ; preds = %150
  %161 = load ptr, ptr %14, align 8, !tbaa !514
  %162 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %161, i64 0, i32 5
  %163 = load ptr, ptr %162, align 8, !tbaa !48
  %164 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %163, i64 0, i32 3
  %165 = load ptr, ptr %164, align 8, !tbaa !467
  %166 = tail call i32 %165(ptr noundef %161) #25
  %167 = icmp eq i32 %166, 0
  br i1 %167, label %643, label %168

168:                                              ; preds = %160
  %169 = load ptr, ptr %163, align 8, !tbaa !465
  store ptr %169, ptr %3, align 8, !tbaa !510
  %170 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %163, i64 0, i32 1
  %171 = load i64, ptr %170, align 8, !tbaa !466
  store i64 %171, ptr %11, align 8, !tbaa !512
  br label %172

172:                                              ; preds = %168, %150
  %173 = phi i64 [ %171, %168 ], [ %158, %150 ]
  %174 = and i64 %152, 16711680
  %175 = icmp eq i64 %174, 16711680
  br i1 %175, label %176, label %194

176:                                              ; preds = %172
  %177 = load ptr, ptr %3, align 8, !tbaa !510
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %178, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %177, align 1, !tbaa !11
  %179 = load i64, ptr %11, align 8, !tbaa !512
  %180 = add i64 %179, -1
  store i64 %180, ptr %11, align 8, !tbaa !512
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %194

182:                                              ; preds = %176
  %183 = load ptr, ptr %14, align 8, !tbaa !514
  %184 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %183, i64 0, i32 5
  %185 = load ptr, ptr %184, align 8, !tbaa !48
  %186 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %185, i64 0, i32 3
  %187 = load ptr, ptr %186, align 8, !tbaa !467
  %188 = tail call i32 %187(ptr noundef %183) #25
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %643, label %190

190:                                              ; preds = %182
  %191 = load ptr, ptr %185, align 8, !tbaa !465
  store ptr %191, ptr %3, align 8, !tbaa !510
  %192 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %185, i64 0, i32 1
  %193 = load i64, ptr %192, align 8, !tbaa !466
  store i64 %193, ptr %11, align 8, !tbaa !512
  br label %194

194:                                              ; preds = %190, %176, %172
  %195 = phi i64 [ %193, %190 ], [ %180, %176 ], [ %173, %172 ]
  %196 = shl i64 %152, 8
  %197 = add nsw i32 %151, -8
  %198 = icmp sgt i32 %151, 15
  br i1 %198, label %150, label %199, !llvm.loop !519

199:                                              ; preds = %194, %138
  %200 = phi i64 [ %87, %138 ], [ %195, %194 ]
  %201 = phi i64 [ %148, %138 ], [ %196, %194 ]
  %202 = phi i32 [ %143, %138 ], [ %197, %194 ]
  store i64 %201, ptr %12, align 8, !tbaa !518
  store i32 %202, ptr %85, align 8, !tbaa !517
  %203 = icmp eq i32 %123, 0
  br i1 %203, label %268, label %204

204:                                              ; preds = %199
  %205 = zext i32 %112 to i64
  %206 = shl nsw i64 -1, %124
  %207 = xor i64 %206, -1
  %208 = and i64 %207, %205
  %209 = add nsw i32 %202, %123
  %210 = sub nsw i32 24, %209
  %211 = zext i32 %210 to i64
  %212 = shl i64 %208, %211
  %213 = or i64 %212, %201
  %214 = icmp sgt i32 %209, 7
  br i1 %214, label %215, label %264

215:                                              ; preds = %259, %204
  %216 = phi i32 [ %262, %259 ], [ %209, %204 ]
  %217 = phi i64 [ %261, %259 ], [ %213, %204 ]
  %218 = lshr i64 %217, 16
  %219 = trunc i64 %218 to i8
  %220 = load ptr, ptr %3, align 8, !tbaa !510
  %221 = getelementptr inbounds i8, ptr %220, i64 1
  store ptr %221, ptr %3, align 8, !tbaa !510
  store i8 %219, ptr %220, align 1, !tbaa !11
  %222 = load i64, ptr %11, align 8, !tbaa !512
  %223 = add i64 %222, -1
  store i64 %223, ptr %11, align 8, !tbaa !512
  %224 = icmp eq i64 %223, 0
  br i1 %224, label %225, label %237

225:                                              ; preds = %215
  %226 = load ptr, ptr %14, align 8, !tbaa !514
  %227 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %226, i64 0, i32 5
  %228 = load ptr, ptr %227, align 8, !tbaa !48
  %229 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %228, i64 0, i32 3
  %230 = load ptr, ptr %229, align 8, !tbaa !467
  %231 = tail call i32 %230(ptr noundef %226) #25
  %232 = icmp eq i32 %231, 0
  br i1 %232, label %643, label %233

233:                                              ; preds = %225
  %234 = load ptr, ptr %228, align 8, !tbaa !465
  store ptr %234, ptr %3, align 8, !tbaa !510
  %235 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %228, i64 0, i32 1
  %236 = load i64, ptr %235, align 8, !tbaa !466
  store i64 %236, ptr %11, align 8, !tbaa !512
  br label %237

237:                                              ; preds = %233, %215
  %238 = phi i64 [ %236, %233 ], [ %223, %215 ]
  %239 = and i64 %217, 16711680
  %240 = icmp eq i64 %239, 16711680
  br i1 %240, label %241, label %259

241:                                              ; preds = %237
  %242 = load ptr, ptr %3, align 8, !tbaa !510
  %243 = getelementptr inbounds i8, ptr %242, i64 1
  store ptr %243, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %242, align 1, !tbaa !11
  %244 = load i64, ptr %11, align 8, !tbaa !512
  %245 = add i64 %244, -1
  store i64 %245, ptr %11, align 8, !tbaa !512
  %246 = icmp eq i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %241
  %248 = load ptr, ptr %14, align 8, !tbaa !514
  %249 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %248, i64 0, i32 5
  %250 = load ptr, ptr %249, align 8, !tbaa !48
  %251 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %250, i64 0, i32 3
  %252 = load ptr, ptr %251, align 8, !tbaa !467
  %253 = tail call i32 %252(ptr noundef %248) #25
  %254 = icmp eq i32 %253, 0
  br i1 %254, label %643, label %255

255:                                              ; preds = %247
  %256 = load ptr, ptr %250, align 8, !tbaa !465
  store ptr %256, ptr %3, align 8, !tbaa !510
  %257 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %250, i64 0, i32 1
  %258 = load i64, ptr %257, align 8, !tbaa !466
  store i64 %258, ptr %11, align 8, !tbaa !512
  br label %259

259:                                              ; preds = %255, %241, %237
  %260 = phi i64 [ %258, %255 ], [ %245, %241 ], [ %238, %237 ]
  %261 = shl i64 %217, 8
  %262 = add nsw i32 %216, -8
  %263 = icmp sgt i32 %216, 15
  br i1 %263, label %215, label %264, !llvm.loop !519

264:                                              ; preds = %259, %204
  %265 = phi i64 [ %200, %204 ], [ %260, %259 ]
  %266 = phi i64 [ %213, %204 ], [ %261, %259 ]
  %267 = phi i32 [ %209, %204 ], [ %262, %259 ]
  store i64 %266, ptr %12, align 8, !tbaa !518
  store i32 %267, ptr %85, align 8, !tbaa !517
  br label %268

268:                                              ; preds = %264, %199
  %269 = phi i64 [ %265, %264 ], [ %200, %199 ]
  %270 = phi i64 [ %266, %264 ], [ %201, %199 ]
  %271 = phi i32 [ %267, %264 ], [ %202, %199 ]
  %272 = getelementptr inbounds [256 x i32], ptr %107, i64 0, i64 240
  %273 = getelementptr inbounds %struct.c_derived_tbl, ptr %107, i64 0, i32 1, i64 240
  br label %274

274:                                              ; preds = %533, %268
  %275 = phi i64 [ %534, %533 ], [ %269, %268 ]
  %276 = phi i64 [ %535, %533 ], [ %270, %268 ]
  %277 = phi i32 [ %536, %533 ], [ %271, %268 ]
  %278 = phi i64 [ %537, %533 ], [ 1, %268 ]
  br label %279

279:                                              ; preds = %529, %274
  %280 = phi i64 [ %531, %529 ], [ %278, %274 ]
  %281 = phi i32 [ %530, %529 ], [ 0, %274 ]
  %282 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %280
  %283 = load i32, ptr %282, align 4, !tbaa !121
  %284 = sext i32 %283 to i64
  %285 = getelementptr inbounds i16, ptr %95, i64 %284
  %286 = load i16, ptr %285, align 2, !tbaa !275
  %287 = icmp eq i16 %286, 0
  br i1 %287, label %529, label %288

288:                                              ; preds = %279
  %.lcssa4 = phi i64 [ %280, %279 ]
  %.lcssa2 = phi i32 [ %281, %279 ]
  %.lcssa = phi i16 [ %286, %279 ]
  %289 = sext i16 %.lcssa to i32
  %290 = icmp ugt i32 %.lcssa2, 15
  br i1 %290, label %291, label %372

291:                                              ; preds = %366, %288
  %292 = phi i64 [ %367, %366 ], [ %275, %288 ]
  %293 = phi i64 [ %368, %366 ], [ %276, %288 ]
  %294 = phi i32 [ %369, %366 ], [ %277, %288 ]
  %295 = phi i32 [ %370, %366 ], [ %.lcssa2, %288 ]
  %296 = load i32, ptr %272, align 4, !tbaa !121
  %297 = load i8, ptr %273, align 4, !tbaa !11
  %298 = sext i8 %297 to i32
  %299 = zext i32 %296 to i64
  %300 = icmp eq i8 %297, 0
  br i1 %300, label %301, label %306

301:                                              ; preds = %291
  %302 = load ptr, ptr %14, align 8, !tbaa !514
  %303 = load ptr, ptr %302, align 8, !tbaa !25
  %304 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %303, i64 0, i32 5
  store i32 39, ptr %304, align 8, !tbaa !22
  %305 = load ptr, ptr %303, align 8, !tbaa !12
  tail call void %305(ptr noundef nonnull %302) #25
  br label %306

306:                                              ; preds = %301, %291
  %307 = zext i32 %298 to i64
  %308 = shl nsw i64 -1, %307
  %309 = xor i64 %308, -1
  %310 = and i64 %309, %299
  %311 = add nsw i32 %294, %298
  %312 = sub nsw i32 24, %311
  %313 = zext i32 %312 to i64
  %314 = shl i64 %310, %313
  %315 = or i64 %314, %293
  %316 = icmp sgt i32 %311, 7
  br i1 %316, label %317, label %366

317:                                              ; preds = %361, %306
  %318 = phi i32 [ %364, %361 ], [ %311, %306 ]
  %319 = phi i64 [ %363, %361 ], [ %315, %306 ]
  %320 = lshr i64 %319, 16
  %321 = trunc i64 %320 to i8
  %322 = load ptr, ptr %3, align 8, !tbaa !510
  %323 = getelementptr inbounds i8, ptr %322, i64 1
  store ptr %323, ptr %3, align 8, !tbaa !510
  store i8 %321, ptr %322, align 1, !tbaa !11
  %324 = load i64, ptr %11, align 8, !tbaa !512
  %325 = add i64 %324, -1
  store i64 %325, ptr %11, align 8, !tbaa !512
  %326 = icmp eq i64 %325, 0
  br i1 %326, label %327, label %339

327:                                              ; preds = %317
  %328 = load ptr, ptr %14, align 8, !tbaa !514
  %329 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %328, i64 0, i32 5
  %330 = load ptr, ptr %329, align 8, !tbaa !48
  %331 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %330, i64 0, i32 3
  %332 = load ptr, ptr %331, align 8, !tbaa !467
  %333 = tail call i32 %332(ptr noundef %328) #25
  %334 = icmp eq i32 %333, 0
  br i1 %334, label %643, label %335

335:                                              ; preds = %327
  %336 = load ptr, ptr %330, align 8, !tbaa !465
  store ptr %336, ptr %3, align 8, !tbaa !510
  %337 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %330, i64 0, i32 1
  %338 = load i64, ptr %337, align 8, !tbaa !466
  store i64 %338, ptr %11, align 8, !tbaa !512
  br label %339

339:                                              ; preds = %335, %317
  %340 = phi i64 [ %338, %335 ], [ %325, %317 ]
  %341 = and i64 %319, 16711680
  %342 = icmp eq i64 %341, 16711680
  br i1 %342, label %343, label %361

343:                                              ; preds = %339
  %344 = load ptr, ptr %3, align 8, !tbaa !510
  %345 = getelementptr inbounds i8, ptr %344, i64 1
  store ptr %345, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %344, align 1, !tbaa !11
  %346 = load i64, ptr %11, align 8, !tbaa !512
  %347 = add i64 %346, -1
  store i64 %347, ptr %11, align 8, !tbaa !512
  %348 = icmp eq i64 %347, 0
  br i1 %348, label %349, label %361

349:                                              ; preds = %343
  %350 = load ptr, ptr %14, align 8, !tbaa !514
  %351 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %350, i64 0, i32 5
  %352 = load ptr, ptr %351, align 8, !tbaa !48
  %353 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %352, i64 0, i32 3
  %354 = load ptr, ptr %353, align 8, !tbaa !467
  %355 = tail call i32 %354(ptr noundef %350) #25
  %356 = icmp eq i32 %355, 0
  br i1 %356, label %643, label %357

357:                                              ; preds = %349
  %358 = load ptr, ptr %352, align 8, !tbaa !465
  store ptr %358, ptr %3, align 8, !tbaa !510
  %359 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %352, i64 0, i32 1
  %360 = load i64, ptr %359, align 8, !tbaa !466
  store i64 %360, ptr %11, align 8, !tbaa !512
  br label %361

361:                                              ; preds = %357, %343, %339
  %362 = phi i64 [ %360, %357 ], [ %347, %343 ], [ %340, %339 ]
  %363 = shl i64 %319, 8
  %364 = add nsw i32 %318, -8
  %365 = icmp ugt i32 %318, 15
  br i1 %365, label %317, label %366, !llvm.loop !519

366:                                              ; preds = %361, %306
  %367 = phi i64 [ %292, %306 ], [ %362, %361 ]
  %368 = phi i64 [ %315, %306 ], [ %363, %361 ]
  %369 = phi i32 [ %311, %306 ], [ %364, %361 ]
  store i64 %368, ptr %12, align 8, !tbaa !518
  store i32 %369, ptr %85, align 8, !tbaa !517
  %370 = add nsw i32 %295, -16
  %371 = icmp sgt i32 %295, 31
  br i1 %371, label %291, label %372, !llvm.loop !520

372:                                              ; preds = %366, %288
  %373 = phi i64 [ %275, %288 ], [ %367, %366 ]
  %374 = phi i64 [ %276, %288 ], [ %368, %366 ]
  %375 = phi i32 [ %277, %288 ], [ %369, %366 ]
  %376 = phi i32 [ %.lcssa2, %288 ], [ %370, %366 ]
  %377 = tail call i32 @llvm.abs.i32(i32 %289, i1 true)
  %378 = ashr i16 %.lcssa, 15
  %379 = sext i16 %378 to i32
  %380 = add nsw i32 %379, %289
  %381 = icmp ult i32 %377, 2
  br i1 %381, label %388, label %382

382:                                              ; preds = %382, %372
  %383 = phi i32 [ %386, %382 ], [ 1, %372 ]
  %384 = phi i32 [ %385, %382 ], [ %377, %372 ]
  %385 = lshr i32 %384, 1
  %386 = add nuw nsw i32 %383, 1
  %387 = icmp ult i32 %384, 4
  br i1 %387, label %388, label %382, !llvm.loop !521

388:                                              ; preds = %382, %372
  %389 = phi i32 [ 1, %372 ], [ %386, %382 ]
  %390 = shl i32 %376, 4
  %391 = add nsw i32 %389, %390
  %392 = sext i32 %391 to i64
  %393 = getelementptr inbounds [256 x i32], ptr %107, i64 0, i64 %392
  %394 = load i32, ptr %393, align 4, !tbaa !121
  %395 = getelementptr inbounds %struct.c_derived_tbl, ptr %107, i64 0, i32 1, i64 %392
  %396 = load i8, ptr %395, align 1, !tbaa !11
  %397 = sext i8 %396 to i32
  %398 = zext i32 %394 to i64
  %399 = icmp eq i8 %396, 0
  br i1 %399, label %400, label %405

400:                                              ; preds = %388
  %401 = load ptr, ptr %14, align 8, !tbaa !514
  %402 = load ptr, ptr %401, align 8, !tbaa !25
  %403 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %402, i64 0, i32 5
  store i32 39, ptr %403, align 8, !tbaa !22
  %404 = load ptr, ptr %402, align 8, !tbaa !12
  tail call void %404(ptr noundef nonnull %401) #25
  br label %405

405:                                              ; preds = %400, %388
  %406 = zext i32 %397 to i64
  %407 = shl nsw i64 -1, %406
  %408 = xor i64 %407, -1
  %409 = and i64 %408, %398
  %410 = add nsw i32 %375, %397
  %411 = sub nsw i32 24, %410
  %412 = zext i32 %411 to i64
  %413 = shl i64 %409, %412
  %414 = or i64 %413, %374
  %415 = icmp sgt i32 %410, 7
  br i1 %415, label %416, label %465

416:                                              ; preds = %460, %405
  %417 = phi i32 [ %463, %460 ], [ %410, %405 ]
  %418 = phi i64 [ %462, %460 ], [ %414, %405 ]
  %419 = lshr i64 %418, 16
  %420 = trunc i64 %419 to i8
  %421 = load ptr, ptr %3, align 8, !tbaa !510
  %422 = getelementptr inbounds i8, ptr %421, i64 1
  store ptr %422, ptr %3, align 8, !tbaa !510
  store i8 %420, ptr %421, align 1, !tbaa !11
  %423 = load i64, ptr %11, align 8, !tbaa !512
  %424 = add i64 %423, -1
  store i64 %424, ptr %11, align 8, !tbaa !512
  %425 = icmp eq i64 %424, 0
  br i1 %425, label %426, label %438

426:                                              ; preds = %416
  %427 = load ptr, ptr %14, align 8, !tbaa !514
  %428 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %427, i64 0, i32 5
  %429 = load ptr, ptr %428, align 8, !tbaa !48
  %430 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %429, i64 0, i32 3
  %431 = load ptr, ptr %430, align 8, !tbaa !467
  %432 = tail call i32 %431(ptr noundef %427) #25
  %433 = icmp eq i32 %432, 0
  br i1 %433, label %643, label %434

434:                                              ; preds = %426
  %435 = load ptr, ptr %429, align 8, !tbaa !465
  store ptr %435, ptr %3, align 8, !tbaa !510
  %436 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %429, i64 0, i32 1
  %437 = load i64, ptr %436, align 8, !tbaa !466
  store i64 %437, ptr %11, align 8, !tbaa !512
  br label %438

438:                                              ; preds = %434, %416
  %439 = phi i64 [ %437, %434 ], [ %424, %416 ]
  %440 = and i64 %418, 16711680
  %441 = icmp eq i64 %440, 16711680
  br i1 %441, label %442, label %460

442:                                              ; preds = %438
  %443 = load ptr, ptr %3, align 8, !tbaa !510
  %444 = getelementptr inbounds i8, ptr %443, i64 1
  store ptr %444, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %443, align 1, !tbaa !11
  %445 = load i64, ptr %11, align 8, !tbaa !512
  %446 = add i64 %445, -1
  store i64 %446, ptr %11, align 8, !tbaa !512
  %447 = icmp eq i64 %446, 0
  br i1 %447, label %448, label %460

448:                                              ; preds = %442
  %449 = load ptr, ptr %14, align 8, !tbaa !514
  %450 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %449, i64 0, i32 5
  %451 = load ptr, ptr %450, align 8, !tbaa !48
  %452 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %451, i64 0, i32 3
  %453 = load ptr, ptr %452, align 8, !tbaa !467
  %454 = tail call i32 %453(ptr noundef %449) #25
  %455 = icmp eq i32 %454, 0
  br i1 %455, label %643, label %456

456:                                              ; preds = %448
  %457 = load ptr, ptr %451, align 8, !tbaa !465
  store ptr %457, ptr %3, align 8, !tbaa !510
  %458 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %451, i64 0, i32 1
  %459 = load i64, ptr %458, align 8, !tbaa !466
  store i64 %459, ptr %11, align 8, !tbaa !512
  br label %460

460:                                              ; preds = %456, %442, %438
  %461 = phi i64 [ %459, %456 ], [ %446, %442 ], [ %439, %438 ]
  %462 = shl i64 %418, 8
  %463 = add nsw i32 %417, -8
  %464 = icmp sgt i32 %417, 15
  br i1 %464, label %416, label %465, !llvm.loop !519

465:                                              ; preds = %460, %405
  %466 = phi i64 [ %373, %405 ], [ %461, %460 ]
  %467 = phi i64 [ %414, %405 ], [ %462, %460 ]
  %468 = phi i32 [ %410, %405 ], [ %463, %460 ]
  %469 = zext i32 %380 to i64
  %470 = zext i32 %389 to i64
  %471 = shl nsw i64 -1, %470
  %472 = xor i64 %471, -1
  %473 = and i64 %472, %469
  %474 = add nsw i32 %468, %389
  %475 = sub nsw i32 24, %474
  %476 = zext i32 %475 to i64
  %477 = shl i64 %473, %476
  %478 = or i64 %477, %467
  %479 = icmp sgt i32 %474, 7
  br i1 %479, label %480, label %533

480:                                              ; preds = %524, %465
  %481 = phi i32 [ %527, %524 ], [ %474, %465 ]
  %482 = phi i64 [ %526, %524 ], [ %478, %465 ]
  %483 = lshr i64 %482, 16
  %484 = trunc i64 %483 to i8
  %485 = load ptr, ptr %3, align 8, !tbaa !510
  %486 = getelementptr inbounds i8, ptr %485, i64 1
  store ptr %486, ptr %3, align 8, !tbaa !510
  store i8 %484, ptr %485, align 1, !tbaa !11
  %487 = load i64, ptr %11, align 8, !tbaa !512
  %488 = add i64 %487, -1
  store i64 %488, ptr %11, align 8, !tbaa !512
  %489 = icmp eq i64 %488, 0
  br i1 %489, label %490, label %502

490:                                              ; preds = %480
  %491 = load ptr, ptr %14, align 8, !tbaa !514
  %492 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %491, i64 0, i32 5
  %493 = load ptr, ptr %492, align 8, !tbaa !48
  %494 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %493, i64 0, i32 3
  %495 = load ptr, ptr %494, align 8, !tbaa !467
  %496 = tail call i32 %495(ptr noundef %491) #25
  %497 = icmp eq i32 %496, 0
  br i1 %497, label %643, label %498

498:                                              ; preds = %490
  %499 = load ptr, ptr %493, align 8, !tbaa !465
  store ptr %499, ptr %3, align 8, !tbaa !510
  %500 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %493, i64 0, i32 1
  %501 = load i64, ptr %500, align 8, !tbaa !466
  store i64 %501, ptr %11, align 8, !tbaa !512
  br label %502

502:                                              ; preds = %498, %480
  %503 = phi i64 [ %501, %498 ], [ %488, %480 ]
  %504 = and i64 %482, 16711680
  %505 = icmp eq i64 %504, 16711680
  br i1 %505, label %506, label %524

506:                                              ; preds = %502
  %507 = load ptr, ptr %3, align 8, !tbaa !510
  %508 = getelementptr inbounds i8, ptr %507, i64 1
  store ptr %508, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %507, align 1, !tbaa !11
  %509 = load i64, ptr %11, align 8, !tbaa !512
  %510 = add i64 %509, -1
  store i64 %510, ptr %11, align 8, !tbaa !512
  %511 = icmp eq i64 %510, 0
  br i1 %511, label %512, label %524

512:                                              ; preds = %506
  %513 = load ptr, ptr %14, align 8, !tbaa !514
  %514 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %513, i64 0, i32 5
  %515 = load ptr, ptr %514, align 8, !tbaa !48
  %516 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %515, i64 0, i32 3
  %517 = load ptr, ptr %516, align 8, !tbaa !467
  %518 = tail call i32 %517(ptr noundef %513) #25
  %519 = icmp eq i32 %518, 0
  br i1 %519, label %643, label %520

520:                                              ; preds = %512
  %521 = load ptr, ptr %515, align 8, !tbaa !465
  store ptr %521, ptr %3, align 8, !tbaa !510
  %522 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %515, i64 0, i32 1
  %523 = load i64, ptr %522, align 8, !tbaa !466
  store i64 %523, ptr %11, align 8, !tbaa !512
  br label %524

524:                                              ; preds = %520, %506, %502
  %525 = phi i64 [ %523, %520 ], [ %510, %506 ], [ %503, %502 ]
  %526 = shl i64 %482, 8
  %527 = add nsw i32 %481, -8
  %528 = icmp sgt i32 %481, 15
  br i1 %528, label %480, label %533, !llvm.loop !519

529:                                              ; preds = %279
  %530 = add nuw nsw i32 %281, 1
  %531 = add nuw nsw i64 %280, 1
  %532 = icmp eq i64 %531, 64
  br i1 %532, label %539, label %279, !llvm.loop !522

533:                                              ; preds = %524, %465
  %534 = phi i64 [ %466, %465 ], [ %525, %524 ]
  %535 = phi i64 [ %478, %465 ], [ %526, %524 ]
  %536 = phi i32 [ %474, %465 ], [ %527, %524 ]
  store i64 %535, ptr %12, align 8, !tbaa !518
  store i32 %536, ptr %85, align 8, !tbaa !517
  %537 = add nuw nsw i64 %.lcssa4, 1
  %538 = icmp eq i64 %537, 64
  br i1 %538, label %615, label %274, !llvm.loop !522

539:                                              ; preds = %529
  %.lcssa11 = phi i64 [ %275, %529 ]
  %.lcssa9 = phi i64 [ %276, %529 ]
  %.lcssa7 = phi i32 [ %277, %529 ]
  %540 = load i32, ptr %107, align 4, !tbaa !121
  %541 = getelementptr inbounds %struct.c_derived_tbl, ptr %107, i64 0, i32 1
  %542 = load i8, ptr %541, align 4, !tbaa !11
  %543 = sext i8 %542 to i32
  %544 = zext i32 %540 to i64
  %545 = icmp eq i8 %542, 0
  br i1 %545, label %546, label %551

546:                                              ; preds = %539
  %547 = load ptr, ptr %14, align 8, !tbaa !514
  %548 = load ptr, ptr %547, align 8, !tbaa !25
  %549 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %548, i64 0, i32 5
  store i32 39, ptr %549, align 8, !tbaa !22
  %550 = load ptr, ptr %548, align 8, !tbaa !12
  tail call void %550(ptr noundef nonnull %547) #25
  br label %551

551:                                              ; preds = %546, %539
  %552 = zext i32 %543 to i64
  %553 = shl nsw i64 -1, %552
  %554 = xor i64 %553, -1
  %555 = and i64 %554, %544
  %556 = add nsw i32 %.lcssa7, %543
  %557 = sub nsw i32 24, %556
  %558 = zext i32 %557 to i64
  %559 = shl i64 %555, %558
  %560 = or i64 %559, %.lcssa9
  %561 = icmp sgt i32 %556, 7
  br i1 %561, label %562, label %611

562:                                              ; preds = %606, %551
  %563 = phi i32 [ %609, %606 ], [ %556, %551 ]
  %564 = phi i64 [ %608, %606 ], [ %560, %551 ]
  %565 = lshr i64 %564, 16
  %566 = trunc i64 %565 to i8
  %567 = load ptr, ptr %3, align 8, !tbaa !510
  %568 = getelementptr inbounds i8, ptr %567, i64 1
  store ptr %568, ptr %3, align 8, !tbaa !510
  store i8 %566, ptr %567, align 1, !tbaa !11
  %569 = load i64, ptr %11, align 8, !tbaa !512
  %570 = add i64 %569, -1
  store i64 %570, ptr %11, align 8, !tbaa !512
  %571 = icmp eq i64 %570, 0
  br i1 %571, label %572, label %584

572:                                              ; preds = %562
  %573 = load ptr, ptr %14, align 8, !tbaa !514
  %574 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %573, i64 0, i32 5
  %575 = load ptr, ptr %574, align 8, !tbaa !48
  %576 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %575, i64 0, i32 3
  %577 = load ptr, ptr %576, align 8, !tbaa !467
  %578 = tail call i32 %577(ptr noundef %573) #25
  %579 = icmp eq i32 %578, 0
  br i1 %579, label %643, label %580

580:                                              ; preds = %572
  %581 = load ptr, ptr %575, align 8, !tbaa !465
  store ptr %581, ptr %3, align 8, !tbaa !510
  %582 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %575, i64 0, i32 1
  %583 = load i64, ptr %582, align 8, !tbaa !466
  store i64 %583, ptr %11, align 8, !tbaa !512
  br label %584

584:                                              ; preds = %580, %562
  %585 = phi i64 [ %583, %580 ], [ %570, %562 ]
  %586 = and i64 %564, 16711680
  %587 = icmp eq i64 %586, 16711680
  br i1 %587, label %588, label %606

588:                                              ; preds = %584
  %589 = load ptr, ptr %3, align 8, !tbaa !510
  %590 = getelementptr inbounds i8, ptr %589, i64 1
  store ptr %590, ptr %3, align 8, !tbaa !510
  store i8 0, ptr %589, align 1, !tbaa !11
  %591 = load i64, ptr %11, align 8, !tbaa !512
  %592 = add i64 %591, -1
  store i64 %592, ptr %11, align 8, !tbaa !512
  %593 = icmp eq i64 %592, 0
  br i1 %593, label %594, label %606

594:                                              ; preds = %588
  %595 = load ptr, ptr %14, align 8, !tbaa !514
  %596 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %595, i64 0, i32 5
  %597 = load ptr, ptr %596, align 8, !tbaa !48
  %598 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %597, i64 0, i32 3
  %599 = load ptr, ptr %598, align 8, !tbaa !467
  %600 = tail call i32 %599(ptr noundef %595) #25
  %601 = icmp eq i32 %600, 0
  br i1 %601, label %643, label %602

602:                                              ; preds = %594
  %603 = load ptr, ptr %597, align 8, !tbaa !465
  store ptr %603, ptr %3, align 8, !tbaa !510
  %604 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %597, i64 0, i32 1
  %605 = load i64, ptr %604, align 8, !tbaa !466
  store i64 %605, ptr %11, align 8, !tbaa !512
  br label %606

606:                                              ; preds = %602, %588, %584
  %607 = phi i64 [ %605, %602 ], [ %592, %588 ], [ %585, %584 ]
  %608 = shl i64 %564, 8
  %609 = add nsw i32 %563, -8
  %610 = icmp sgt i32 %563, 15
  br i1 %610, label %562, label %611, !llvm.loop !519

611:                                              ; preds = %606, %551
  %612 = phi i64 [ %.lcssa11, %551 ], [ %607, %606 ]
  %613 = phi i64 [ %560, %551 ], [ %608, %606 ]
  %614 = phi i32 [ %556, %551 ], [ %609, %606 ]
  store i64 %613, ptr %12, align 8, !tbaa !518
  store i32 %614, ptr %85, align 8, !tbaa !517
  br label %615

615:                                              ; preds = %611, %533
  %616 = phi i64 [ %612, %611 ], [ %534, %533 ]
  %617 = load ptr, ptr %94, align 8, !tbaa !7
  %618 = load i16, ptr %617, align 2, !tbaa !275
  %619 = sext i16 %618 to i32
  store i32 %619, ptr %96, align 4, !tbaa !121
  %620 = add nuw nsw i64 %88, 1
  %621 = load i32, ptr %81, align 8, !tbaa !505
  %622 = sext i32 %621 to i64
  %623 = icmp slt i64 %620, %622
  br i1 %623, label %86, label %624, !llvm.loop !523

624:                                              ; preds = %615, %79
  %625 = phi i64 [ %80, %79 ], [ %616, %615 ]
  %626 = load ptr, ptr %3, align 8, !tbaa !510
  %627 = load ptr, ptr %6, align 8, !tbaa !48
  store ptr %626, ptr %627, align 8, !tbaa !465
  %628 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %627, i64 0, i32 1
  store i64 %625, ptr %628, align 8, !tbaa !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %13, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !513
  %629 = load i32, ptr %15, align 8, !tbaa !279
  %630 = icmp eq i32 %629, 0
  br i1 %630, label %643, label %631

631:                                              ; preds = %624
  %632 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 2
  %633 = load i32, ptr %632, align 8, !tbaa !443
  %634 = icmp eq i32 %633, 0
  br i1 %634, label %635, label %640

635:                                              ; preds = %631
  %636 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 3
  %637 = load i32, ptr %636, align 4, !tbaa !444
  %638 = add nsw i32 %637, 1
  %639 = and i32 %638, 7
  store i32 %639, ptr %636, align 4, !tbaa !444
  br label %640

640:                                              ; preds = %635, %631
  %641 = phi i32 [ %629, %635 ], [ %633, %631 ]
  %642 = add i32 %641, -1
  store i32 %642, ptr %632, align 8, !tbaa !443
  br label %643

643:                                              ; preds = %640, %624, %594, %572, %512, %490, %448, %426, %349, %327, %247, %225, %182, %160, %56, %35, %22
  %644 = phi i32 [ 1, %640 ], [ 1, %624 ], [ 0, %22 ], [ 0, %35 ], [ 0, %56 ], [ 0, %327 ], [ 0, %349 ], [ 0, %490 ], [ 0, %512 ], [ 0, %426 ], [ 0, %448 ], [ 0, %572 ], [ 0, %594 ], [ 0, %225 ], [ 0, %247 ], [ 0, %160 ], [ 0, %182 ]
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %3) #23
  ret i32 %644
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_gather(ptr noundef %0) #2 {
  %2 = alloca [4 x i32], align 16
  %3 = alloca [4 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %7 = load i32, ptr %6, align 4, !tbaa !429
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %59

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  br label %11

11:                                               ; preds = %54, %9
  %12 = phi i64 [ %55, %54 ], [ 0, %9 ]
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %12
  %14 = load ptr, ptr %13, align 8, !tbaa !7
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 0, i32 5
  %16 = load i32, ptr %15, align 4, !tbaa !430
  %17 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %14, i64 0, i32 6
  %18 = load i32, ptr %17, align 8, !tbaa !431
  %19 = sext i32 %16 to i64
  %20 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %19
  %21 = load i32, ptr %20, align 4, !tbaa !121
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %36

23:                                               ; preds = %11
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %19
  %25 = load ptr, ptr %24, align 8, !tbaa !7
  %26 = icmp eq ptr %25, null
  br i1 %26, label %27, label %32

27:                                               ; preds = %23
  %28 = load ptr, ptr %10, align 8, !tbaa !29
  %29 = load ptr, ptr %28, align 8, !tbaa !56
  %30 = tail call ptr %29(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 280) #25
  %31 = getelementptr inbounds %struct.JHUFF_TBL, ptr %30, i64 0, i32 2
  store i32 0, ptr %31, align 4, !tbaa !59
  store ptr %30, ptr %24, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %27, %23
  %33 = phi ptr [ %30, %27 ], [ %25, %23 ]
  %34 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 6, i64 %19
  %35 = load ptr, ptr %34, align 8, !tbaa !7
  tail call fastcc void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef nonnull %33, ptr noundef %35) #26
  store i32 1, ptr %20, align 4, !tbaa !121
  br label %36

36:                                               ; preds = %32, %11
  %37 = sext i32 %18 to i64
  %38 = getelementptr inbounds [4 x i32], ptr %3, i64 0, i64 %37
  %39 = load i32, ptr %38, align 4, !tbaa !121
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %41, label %54

41:                                               ; preds = %36
  %42 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %37
  %43 = load ptr, ptr %42, align 8, !tbaa !7
  %44 = icmp eq ptr %43, null
  br i1 %44, label %45, label %50

45:                                               ; preds = %41
  %46 = load ptr, ptr %10, align 8, !tbaa !29
  %47 = load ptr, ptr %46, align 8, !tbaa !56
  %48 = tail call ptr %47(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 280) #25
  %49 = getelementptr inbounds %struct.JHUFF_TBL, ptr %48, i64 0, i32 2
  store i32 0, ptr %49, align 4, !tbaa !59
  store ptr %48, ptr %42, align 8, !tbaa !7
  br label %50

50:                                               ; preds = %45, %41
  %51 = phi ptr [ %48, %45 ], [ %43, %41 ]
  %52 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %5, i64 0, i32 7, i64 %37
  %53 = load ptr, ptr %52, align 8, !tbaa !7
  tail call fastcc void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef nonnull %51, ptr noundef %53) #26
  store i32 1, ptr %38, align 4, !tbaa !121
  br label %54

54:                                               ; preds = %50, %36
  %55 = add nuw nsw i64 %12, 1
  %56 = load i32, ptr %6, align 4, !tbaa !429
  %57 = sext i32 %56 to i64
  %58 = icmp slt i64 %55, %57
  br i1 %58, label %11, label %59, !llvm.loop !524

59:                                               ; preds = %54, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %3) #23
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_huff(ptr noundef %0) #2 {
  %2 = alloca %struct.working_state, align 8
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %2) #23
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %6 = load ptr, ptr %5, align 8, !tbaa !48
  %7 = load ptr, ptr %6, align 8, !tbaa !465
  store ptr %7, ptr %2, align 8, !tbaa !510
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %6, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !466
  %10 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 1
  store i64 %9, ptr %10, align 8, !tbaa !512
  %11 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 2
  %12 = getelementptr inbounds %struct.huff_entropy_encoder, ptr %4, i64 0, i32 1
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %11, ptr noundef nonnull align 8 dereferenceable(32) %12, i64 32, i1 false), !tbaa.struct !513
  %13 = getelementptr inbounds %struct.working_state, ptr %2, i64 0, i32 3
  store ptr %0, ptr %13, align 8, !tbaa !514
  %14 = call fastcc i32 @flush_bits(ptr noundef nonnull %2) #26, !range !277
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = load ptr, ptr %0, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 22, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void %19(ptr noundef nonnull %0) #25
  br label %20

20:                                               ; preds = %16, %1
  %21 = load ptr, ptr %2, align 8, !tbaa !510
  %22 = load ptr, ptr %5, align 8, !tbaa !48
  store ptr %21, ptr %22, align 8, !tbaa !465
  %23 = load i64, ptr %10, align 8, !tbaa !512
  %24 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %22, i64 0, i32 1
  store i64 %23, ptr %24, align 8, !tbaa !466
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %12, ptr noundef nonnull align 8 dereferenceable(32) %11, i64 32, i1 false), !tbaa.struct !513
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_make_c_derived_tbl(ptr noundef %0, ptr nocapture noundef readonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca [257 x i8], align 16
  %5 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 257, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #23
  %6 = load ptr, ptr %2, align 8, !tbaa !7
  %7 = icmp eq ptr %6, null
  br i1 %7, label %8, label %13

8:                                                ; preds = %3
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = load ptr, ptr %10, align 8, !tbaa !56
  %12 = tail call ptr %11(ptr noundef %0, i32 noundef 1, i64 noundef 1280) #25
  store ptr %12, ptr %2, align 8, !tbaa !7
  br label %13

13:                                               ; preds = %8, %3
  %14 = phi ptr [ %12, %8 ], [ %6, %3 ]
  br label %15

15:                                               ; preds = %28, %13
  %16 = phi i64 [ 1, %13 ], [ %30, %28 ]
  %17 = phi i32 [ 0, %13 ], [ %29, %28 ]
  %18 = getelementptr inbounds [17 x i8], ptr %1, i64 0, i64 %16
  %19 = load i8, ptr %18, align 1, !tbaa !11
  %20 = icmp eq i8 %19, 0
  br i1 %20, label %28, label %21

21:                                               ; preds = %15
  %22 = zext i8 %19 to i32
  %23 = trunc i64 %16 to i8
  %24 = sext i32 %17 to i64
  %25 = getelementptr i8, ptr %4, i64 %24
  %26 = zext i8 %19 to i64
  call void @llvm.memset.p0.i64(ptr align 1 %25, i8 %23, i64 %26, i1 false), !tbaa !11
  %27 = add i32 %17, %22
  br label %28

28:                                               ; preds = %21, %15
  %29 = phi i32 [ %17, %15 ], [ %27, %21 ]
  %30 = add nuw nsw i64 %16, 1
  %31 = icmp eq i64 %30, 17
  br i1 %31, label %32, label %15, !llvm.loop !525

32:                                               ; preds = %28
  %.lcssa2 = phi i32 [ %29, %28 ]
  %33 = sext i32 %.lcssa2 to i64
  %34 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %33
  store i8 0, ptr %34, align 1, !tbaa !11
  %35 = load i8, ptr %4, align 16, !tbaa !11
  %36 = icmp eq i8 %35, 0
  br i1 %36, label %71, label %37

37:                                               ; preds = %32
  %38 = sext i8 %35 to i32
  br label %39

39:                                               ; preds = %64, %37
  %40 = phi i8 [ %65, %64 ], [ %35, %37 ]
  %41 = phi i32 [ %68, %64 ], [ 0, %37 ]
  %42 = phi i32 [ %69, %64 ], [ %38, %37 ]
  %43 = phi i32 [ %66, %64 ], [ 0, %37 ]
  %44 = sext i8 %40 to i32
  %45 = icmp eq i32 %42, %44
  br i1 %45, label %46, label %64

46:                                               ; preds = %39
  %47 = sext i32 %43 to i64
  br label %48

48:                                               ; preds = %48, %46
  %49 = phi i64 [ %47, %46 ], [ %51, %48 ]
  %50 = phi i32 [ %41, %46 ], [ %53, %48 ]
  %51 = add i64 %49, 1
  %52 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %49
  store i32 %50, ptr %52, align 4, !tbaa !121
  %53 = add i32 %50, 1
  %54 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %51
  %55 = load i8, ptr %54, align 1, !tbaa !11
  %56 = sext i8 %55 to i32
  %57 = icmp eq i32 %42, %56
  br i1 %57, label %48, label %58, !llvm.loop !526

58:                                               ; preds = %48
  %.lcssa1 = phi i64 [ %51, %48 ]
  %.lcssa = phi i32 [ %53, %48 ]
  %59 = trunc i64 %.lcssa1 to i32
  %60 = shl i64 %.lcssa1, 32
  %61 = ashr exact i64 %60, 32
  %62 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %61
  %63 = load i8, ptr %62, align 1, !tbaa !11
  br label %64

64:                                               ; preds = %58, %39
  %65 = phi i8 [ %63, %58 ], [ %40, %39 ]
  %66 = phi i32 [ %59, %58 ], [ %43, %39 ]
  %67 = phi i32 [ %.lcssa, %58 ], [ %41, %39 ]
  %68 = shl i32 %67, 1
  %69 = add nsw i32 %42, 1
  %70 = icmp eq i8 %65, 0
  br i1 %70, label %71, label %39, !llvm.loop !527

71:                                               ; preds = %64, %32
  %72 = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i64 0, i32 1
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(256) %72, i8 0, i64 256, i1 false)
  %73 = icmp sgt i32 %.lcssa2, 0
  br i1 %73, label %74, label %91

74:                                               ; preds = %71
  %75 = zext i32 %.lcssa2 to i64
  br label %76

76:                                               ; preds = %76, %74
  %77 = phi i64 [ 0, %74 ], [ %89, %76 ]
  %78 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %77
  %79 = load i32, ptr %78, align 4, !tbaa !121
  %80 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %77
  %81 = load i8, ptr %80, align 1, !tbaa !11
  %82 = zext i8 %81 to i64
  %83 = getelementptr inbounds [256 x i32], ptr %14, i64 0, i64 %82
  store i32 %79, ptr %83, align 4, !tbaa !121
  %84 = getelementptr inbounds [257 x i8], ptr %4, i64 0, i64 %77
  %85 = load i8, ptr %84, align 1, !tbaa !11
  %86 = load i8, ptr %80, align 1, !tbaa !11
  %87 = zext i8 %86 to i64
  %88 = getelementptr inbounds %struct.c_derived_tbl, ptr %14, i64 0, i32 1, i64 %87
  store i8 %85, ptr %88, align 1, !tbaa !11
  %89 = add nuw nsw i64 %77, 1
  %90 = icmp eq i64 %89, %75
  br i1 %90, label %91, label %76, !llvm.loop !528

91:                                               ; preds = %76, %71
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 257, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @flush_bits(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2
  %3 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 2, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !517
  %5 = icmp sgt i32 %4, 0
  br i1 %5, label %6, label %62

6:                                                ; preds = %1
  %7 = sub nsw i32 17, %4
  %8 = zext i32 %7 to i64
  %9 = shl i64 127, %8
  %10 = load i64, ptr %2, align 8, !tbaa !518
  %11 = or i64 %10, %9
  %12 = add nuw nsw i32 %4, 7
  %13 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 1
  %14 = getelementptr inbounds %struct.working_state, ptr %0, i64 0, i32 3
  br label %15

15:                                               ; preds = %58, %6
  %16 = phi i32 [ %12, %6 ], [ %60, %58 ]
  %17 = phi i64 [ %11, %6 ], [ %59, %58 ]
  %18 = lshr i64 %17, 16
  %19 = trunc i64 %18 to i8
  %20 = load ptr, ptr %0, align 8, !tbaa !510
  %21 = getelementptr inbounds i8, ptr %20, i64 1
  store ptr %21, ptr %0, align 8, !tbaa !510
  store i8 %19, ptr %20, align 1, !tbaa !11
  %22 = load i64, ptr %13, align 8, !tbaa !512
  %23 = add i64 %22, -1
  store i64 %23, ptr %13, align 8, !tbaa !512
  %24 = icmp eq i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %15
  %26 = load ptr, ptr %14, align 8, !tbaa !514
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 5
  %28 = load ptr, ptr %27, align 8, !tbaa !48
  %29 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %28, i64 0, i32 3
  %30 = load ptr, ptr %29, align 8, !tbaa !467
  %31 = tail call i32 %30(ptr noundef %26) #25
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %63, label %33

33:                                               ; preds = %25
  %34 = load ptr, ptr %28, align 8, !tbaa !465
  store ptr %34, ptr %0, align 8, !tbaa !510
  %35 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %28, i64 0, i32 1
  %36 = load i64, ptr %35, align 8, !tbaa !466
  store i64 %36, ptr %13, align 8, !tbaa !512
  br label %37

37:                                               ; preds = %33, %15
  %38 = and i64 %17, 16711680
  %39 = icmp eq i64 %38, 16711680
  br i1 %39, label %40, label %58

40:                                               ; preds = %37
  %41 = load ptr, ptr %0, align 8, !tbaa !510
  %42 = getelementptr inbounds i8, ptr %41, i64 1
  store ptr %42, ptr %0, align 8, !tbaa !510
  store i8 0, ptr %41, align 1, !tbaa !11
  %43 = load i64, ptr %13, align 8, !tbaa !512
  %44 = add i64 %43, -1
  store i64 %44, ptr %13, align 8, !tbaa !512
  %45 = icmp eq i64 %44, 0
  br i1 %45, label %46, label %58

46:                                               ; preds = %40
  %47 = load ptr, ptr %14, align 8, !tbaa !514
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %47, i64 0, i32 5
  %49 = load ptr, ptr %48, align 8, !tbaa !48
  %50 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 3
  %51 = load ptr, ptr %50, align 8, !tbaa !467
  %52 = tail call i32 %51(ptr noundef %47) #25
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %63, label %54

54:                                               ; preds = %46
  %55 = load ptr, ptr %49, align 8, !tbaa !465
  store ptr %55, ptr %0, align 8, !tbaa !510
  %56 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %49, i64 0, i32 1
  %57 = load i64, ptr %56, align 8, !tbaa !466
  store i64 %57, ptr %13, align 8, !tbaa !512
  br label %58

58:                                               ; preds = %54, %40, %37
  %59 = shl i64 %17, 8
  %60 = add nsw i32 %16, -8
  %61 = icmp sgt i32 %16, 15
  br i1 %61, label %15, label %62, !llvm.loop !519

62:                                               ; preds = %58, %1
  store i64 0, ptr %2, align 8, !tbaa !518
  store i32 0, ptr %3, align 8, !tbaa !517
  br label %63

63:                                               ; preds = %62, %46, %25
  %64 = phi i32 [ 1, %62 ], [ 0, %25 ], [ 0, %46 ]
  ret i32 %64
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_gen_optimal_table(ptr noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #2 {
  %4 = alloca [33 x i8], align 16
  %5 = alloca [257 x i32], align 16
  %6 = alloca [257 x i32], align 16
  call void @llvm.lifetime.start.p0(i64 33, ptr nonnull %4) #23
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %5) #23
  call void @llvm.lifetime.start.p0(i64 1028, ptr nonnull %6) #23
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(33) %4, i8 0, i64 33, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %5, i8 0, i64 1028, i1 false)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(1028) %6, i8 -1, i64 1028, i1 false), !tbaa !121
  %7 = getelementptr inbounds i64, ptr %2, i64 256
  store i64 1, ptr %7, align 8, !tbaa !31
  br label %10

8:                                                ; preds = %10
  %9 = zext i32 %20 to i64
  br label %28

10:                                               ; preds = %24, %3
  %11 = phi i64 [ 0, %3 ], [ %25, %24 ]
  %12 = phi i64 [ 1000000000, %3 ], [ %26, %24 ]
  %13 = phi i32 [ -1, %3 ], [ %27, %24 ]
  %14 = getelementptr inbounds i64, ptr %2, i64 %11
  %15 = load i64, ptr %14, align 8, !tbaa !31
  %16 = icmp eq i64 %15, 0
  %17 = icmp sgt i64 %15, %12
  %18 = select i1 %16, i1 true, i1 %17
  %19 = trunc i64 %11 to i32
  %20 = select i1 %18, i32 %13, i32 %19
  %21 = select i1 %18, i64 %12, i64 %15
  %22 = add nuw nsw i64 %11, 1
  %23 = icmp eq i64 %22, 257
  br i1 %23, label %8, label %24

24:                                               ; preds = %78, %69, %10
  %25 = phi i64 [ %22, %10 ], [ 0, %69 ], [ 0, %78 ]
  %26 = phi i64 [ %21, %10 ], [ 1000000000, %69 ], [ 1000000000, %78 ]
  %27 = phi i32 [ %20, %10 ], [ -1, %69 ], [ -1, %78 ]
  br label %10, !llvm.loop !529

28:                                               ; preds = %28, %8
  %29 = phi i64 [ 0, %8 ], [ %42, %28 ]
  %30 = phi i64 [ 1000000000, %8 ], [ %41, %28 ]
  %31 = phi i32 [ -1, %8 ], [ %40, %28 ]
  %32 = getelementptr inbounds i64, ptr %2, i64 %29
  %33 = load i64, ptr %32, align 8, !tbaa !31
  %34 = icmp eq i64 %33, 0
  %35 = icmp sgt i64 %33, %30
  %36 = select i1 %34, i1 true, i1 %35
  %37 = icmp eq i64 %29, %9
  %38 = select i1 %36, i1 true, i1 %37
  %39 = trunc i64 %29 to i32
  %40 = select i1 %38, i32 %31, i32 %39
  %41 = select i1 %38, i64 %30, i64 %33
  %42 = add nuw nsw i64 %29, 1
  %43 = icmp eq i64 %42, 257
  br i1 %43, label %44, label %28, !llvm.loop !530

44:                                               ; preds = %28
  %.lcssa4 = phi i32 [ %40, %28 ]
  %45 = icmp slt i32 %.lcssa4, 0
  br i1 %45, label %87, label %46

46:                                               ; preds = %44
  %47 = zext i32 %.lcssa4 to i64
  %48 = getelementptr inbounds i64, ptr %2, i64 %47
  %49 = load i64, ptr %48, align 8, !tbaa !31
  %50 = sext i32 %20 to i64
  %51 = getelementptr inbounds i64, ptr %2, i64 %50
  %52 = load i64, ptr %51, align 8, !tbaa !31
  %53 = add nsw i64 %52, %49
  store i64 %53, ptr %51, align 8, !tbaa !31
  store i64 0, ptr %48, align 8, !tbaa !31
  %54 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %50
  %55 = load i32, ptr %54, align 4, !tbaa !121
  %56 = add nsw i32 %55, 1
  store i32 %56, ptr %54, align 4, !tbaa !121
  %57 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %50
  %58 = load i32, ptr %57, align 4, !tbaa !121
  %59 = icmp sgt i32 %58, -1
  br i1 %59, label %60, label %69

60:                                               ; preds = %60, %46
  %61 = phi i32 [ %67, %60 ], [ %58, %46 ]
  %62 = zext i32 %61 to i64
  %63 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %62
  %64 = load i32, ptr %63, align 4, !tbaa !121
  %65 = add nsw i32 %64, 1
  store i32 %65, ptr %63, align 4, !tbaa !121
  %66 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %62
  %67 = load i32, ptr %66, align 4, !tbaa !121
  %68 = icmp sgt i32 %67, -1
  br i1 %68, label %60, label %69, !llvm.loop !531

69:                                               ; preds = %60, %46
  %70 = phi i64 [ %50, %46 ], [ %62, %60 ]
  %71 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %70
  store i32 %.lcssa4, ptr %71, align 4, !tbaa !121
  %72 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %47
  %73 = load i32, ptr %72, align 4, !tbaa !121
  %74 = add nsw i32 %73, 1
  store i32 %74, ptr %72, align 4, !tbaa !121
  %75 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %47
  %76 = load i32, ptr %75, align 4, !tbaa !121
  %77 = icmp sgt i32 %76, -1
  br i1 %77, label %78, label %24

78:                                               ; preds = %78, %69
  %79 = phi i32 [ %85, %78 ], [ %76, %69 ]
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %80
  %82 = load i32, ptr %81, align 4, !tbaa !121
  %83 = add nsw i32 %82, 1
  store i32 %83, ptr %81, align 4, !tbaa !121
  %84 = getelementptr inbounds [257 x i32], ptr %6, i64 0, i64 %80
  %85 = load i32, ptr %84, align 4, !tbaa !121
  %86 = icmp sgt i32 %85, -1
  br i1 %86, label %78, label %24, !llvm.loop !532

87:                                               ; preds = %103, %44
  %88 = phi i64 [ %104, %103 ], [ 0, %44 ]
  %89 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %88
  %90 = load i32, ptr %89, align 4, !tbaa !121
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %103, label %92

92:                                               ; preds = %87
  %93 = icmp sgt i32 %90, 32
  br i1 %93, label %94, label %98

94:                                               ; preds = %92
  %95 = load ptr, ptr %0, align 8, !tbaa !25
  %96 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %95, i64 0, i32 5
  store i32 38, ptr %96, align 8, !tbaa !22
  %97 = load ptr, ptr %95, align 8, !tbaa !12
  tail call void %97(ptr noundef nonnull %0) #25
  br label %98

98:                                               ; preds = %94, %92
  %99 = sext i32 %90 to i64
  %100 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %99
  %101 = load i8, ptr %100, align 1, !tbaa !11
  %102 = add i8 %101, 1
  store i8 %102, ptr %100, align 1, !tbaa !11
  br label %103

103:                                              ; preds = %98, %87
  %104 = add nuw nsw i64 %88, 1
  %105 = icmp eq i64 %104, 257
  br i1 %105, label %106, label %87, !llvm.loop !533

106:                                              ; preds = %138, %103
  %107 = phi i64 [ %112, %138 ], [ 32, %103 ]
  %108 = phi i64 [ %140, %138 ], [ 30, %103 ]
  %109 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %107
  %110 = load i8, ptr %109, align 1, !tbaa !11
  %111 = icmp eq i8 %110, 0
  %112 = add nsw i64 %107, -1
  br i1 %111, label %138, label %113

113:                                              ; preds = %106
  %114 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %112
  br label %115

115:                                              ; preds = %123, %113
  %116 = phi i8 [ %110, %113 ], [ %136, %123 ]
  br label %117

117:                                              ; preds = %117, %115
  %118 = phi i64 [ %122, %117 ], [ %108, %115 ]
  %119 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %118
  %120 = load i8, ptr %119, align 1, !tbaa !11
  %121 = icmp eq i8 %120, 0
  %122 = add i64 %118, -1
  br i1 %121, label %117, label %123, !llvm.loop !534

123:                                              ; preds = %117
  %.lcssa3 = phi i64 [ %118, %117 ]
  %124 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %.lcssa3
  %125 = add i8 %116, -2
  store i8 %125, ptr %109, align 1, !tbaa !11
  %126 = load i8, ptr %114, align 1, !tbaa !11
  %127 = add i8 %126, 1
  store i8 %127, ptr %114, align 1, !tbaa !11
  %128 = shl i64 %.lcssa3, 32
  %129 = add i64 %128, 4294967296
  %130 = ashr exact i64 %129, 32
  %131 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %130
  %132 = load i8, ptr %131, align 1, !tbaa !11
  %133 = add i8 %132, 2
  store i8 %133, ptr %131, align 1, !tbaa !11
  %134 = load i8, ptr %124, align 1, !tbaa !11
  %135 = add i8 %134, -1
  store i8 %135, ptr %124, align 1, !tbaa !11
  %136 = load i8, ptr %109, align 1, !tbaa !11
  %137 = icmp eq i8 %136, 0
  br i1 %137, label %138, label %115, !llvm.loop !535

138:                                              ; preds = %123, %106
  %139 = icmp ugt i64 %107, 17
  %140 = add nsw i64 %108, -1
  br i1 %139, label %106, label %141, !llvm.loop !536

141:                                              ; preds = %141, %138
  %142 = phi i64 [ %146, %141 ], [ 16, %138 ]
  %143 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %142
  %144 = load i8, ptr %143, align 1, !tbaa !11
  %145 = icmp eq i8 %144, 0
  %146 = add i64 %142, -1
  br i1 %145, label %141, label %147, !llvm.loop !537

147:                                              ; preds = %141
  %.lcssa2 = phi i64 [ %142, %141 ]
  %.lcssa1 = phi i8 [ %144, %141 ]
  %148 = getelementptr inbounds [33 x i8], ptr %4, i64 0, i64 %.lcssa2
  %149 = add i8 %.lcssa1, -1
  store i8 %149, ptr %148, align 1, !tbaa !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(17) %1, ptr noundef nonnull align 16 dereferenceable(17) %4, i64 17, i1 false)
  br label %150

150:                                              ; preds = %168, %147
  %151 = phi i32 [ 1, %147 ], [ %169, %168 ]
  %152 = phi i32 [ 0, %147 ], [ %.lcssa, %168 ]
  br label %153

153:                                              ; preds = %164, %150
  %154 = phi i64 [ 0, %150 ], [ %166, %164 ]
  %155 = phi i32 [ %152, %150 ], [ %165, %164 ]
  %156 = getelementptr inbounds [257 x i32], ptr %5, i64 0, i64 %154
  %157 = load i32, ptr %156, align 4, !tbaa !121
  %158 = icmp eq i32 %157, %151
  br i1 %158, label %159, label %164

159:                                              ; preds = %153
  %160 = trunc i64 %154 to i8
  %161 = sext i32 %155 to i64
  %162 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 1, i64 %161
  store i8 %160, ptr %162, align 1, !tbaa !11
  %163 = add nsw i32 %155, 1
  br label %164

164:                                              ; preds = %159, %153
  %165 = phi i32 [ %163, %159 ], [ %155, %153 ]
  %166 = add nuw nsw i64 %154, 1
  %167 = icmp eq i64 %166, 256
  br i1 %167, label %168, label %153, !llvm.loop !538

168:                                              ; preds = %164
  %.lcssa = phi i32 [ %165, %164 ]
  %169 = add nuw nsw i32 %151, 1
  %170 = icmp eq i32 %169, 33
  br i1 %170, label %171, label %150, !llvm.loop !539

171:                                              ; preds = %168
  %172 = getelementptr inbounds %struct.JHUFF_TBL, ptr %1, i64 0, i32 2
  store i32 0, ptr %172, align 4, !tbaa !59
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %6) #23
  call void @llvm.lifetime.end.p0(i64 1028, ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(i64 33, ptr nonnull %4) #23
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.abs.i32(i32, i1 immarg) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #12

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i16 @llvm.abs.i16(i16, i1 immarg) #12

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_DC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8, !tbaa !465
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !540
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !466
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !541
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !279
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !438
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !439
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %23) #26
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !505
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %179

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  %32 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  br label %33

33:                                               ; preds = %174, %28
  %34 = phi i64 [ 0, %28 ], [ %175, %174 ]
  %35 = getelementptr inbounds ptr, ptr %1, i64 %34
  %36 = load ptr, ptr %35, align 8, !tbaa !7
  %37 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %34
  %38 = load i32, ptr %37, align 4, !tbaa !121
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %39
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = load i16, ptr %36, align 2, !tbaa !275
  %43 = sext i16 %42 to i32
  %44 = ashr i32 %43, %6
  %45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 7, i64 %39
  %46 = load i32, ptr %45, align 4, !tbaa !121
  %47 = sub nsw i32 %44, %46
  store i32 %44, ptr %45, align 4, !tbaa !121
  %48 = ashr i32 %47, 31
  %49 = add nsw i32 %48, %47
  %50 = icmp eq i32 %44, %46
  br i1 %50, label %51, label %119

51:                                               ; preds = %33
  %52 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 5
  %53 = load i32, ptr %52, align 4, !tbaa !430
  %54 = load i32, ptr %30, align 8, !tbaa !427
  %55 = icmp eq i32 %54, 0
  %56 = sext i32 %53 to i64
  br i1 %55, label %62, label %57

57:                                               ; preds = %51
  %58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %56
  %59 = load ptr, ptr %58, align 8, !tbaa !7
  %60 = load i64, ptr %59, align 8, !tbaa !31
  %61 = add nsw i64 %60, 1
  store i64 %61, ptr %59, align 8, !tbaa !31
  br label %174

62:                                               ; preds = %51
  %63 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %56
  %64 = load ptr, ptr %63, align 8, !tbaa !7
  %65 = load i32, ptr %64, align 4, !tbaa !121
  %66 = getelementptr inbounds %struct.c_derived_tbl, ptr %64, i64 0, i32 1, i64 0
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = sext i8 %67 to i32
  %69 = zext i32 %65 to i64
  %70 = load i32, ptr %29, align 8, !tbaa !437
  %71 = icmp eq i8 %67, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %62
  %73 = load ptr, ptr %32, align 8, !tbaa !426
  %74 = load ptr, ptr %73, align 8, !tbaa !25
  %75 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %74, i64 0, i32 5
  store i32 39, ptr %75, align 8, !tbaa !22
  %76 = load ptr, ptr %74, align 8, !tbaa !12
  tail call void %76(ptr noundef nonnull %73) #25
  %77 = load i32, ptr %30, align 8, !tbaa !427
  %78 = icmp eq i32 %77, 0
  br i1 %78, label %79, label %174

79:                                               ; preds = %72, %62
  %80 = zext i32 %68 to i64
  %81 = shl nsw i64 -1, %80
  %82 = xor i64 %81, -1
  %83 = and i64 %82, %69
  %84 = add nsw i32 %70, %68
  %85 = sub nsw i32 24, %84
  %86 = zext i32 %85 to i64
  %87 = shl i64 %83, %86
  %88 = load i64, ptr %31, align 8, !tbaa !436
  %89 = or i64 %88, %87
  %90 = icmp sgt i32 %84, 7
  br i1 %90, label %91, label %116

91:                                               ; preds = %112, %79
  %92 = phi i64 [ %113, %112 ], [ %89, %79 ]
  %93 = phi i32 [ %114, %112 ], [ %84, %79 ]
  %94 = lshr i64 %92, 16
  %95 = trunc i64 %94 to i8
  %96 = load ptr, ptr %10, align 8, !tbaa !540
  %97 = getelementptr inbounds i8, ptr %96, i64 1
  store ptr %97, ptr %10, align 8, !tbaa !540
  store i8 %95, ptr %96, align 1, !tbaa !11
  %98 = load i64, ptr %13, align 8, !tbaa !541
  %99 = add i64 %98, -1
  store i64 %99, ptr %13, align 8, !tbaa !541
  %100 = icmp eq i64 %99, 0
  br i1 %100, label %101, label %102

101:                                              ; preds = %91
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %102

102:                                              ; preds = %101, %91
  %103 = and i64 %92, 16711680
  %104 = icmp eq i64 %103, 16711680
  br i1 %104, label %105, label %112

105:                                              ; preds = %102
  %106 = load ptr, ptr %10, align 8, !tbaa !540
  %107 = getelementptr inbounds i8, ptr %106, i64 1
  store ptr %107, ptr %10, align 8, !tbaa !540
  store i8 0, ptr %106, align 1, !tbaa !11
  %108 = load i64, ptr %13, align 8, !tbaa !541
  %109 = add i64 %108, -1
  store i64 %109, ptr %13, align 8, !tbaa !541
  %110 = icmp eq i64 %109, 0
  br i1 %110, label %111, label %112

111:                                              ; preds = %105
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %112

112:                                              ; preds = %111, %105, %102
  %113 = shl i64 %92, 8
  %114 = add nsw i32 %93, -8
  %115 = icmp sgt i32 %93, 15
  br i1 %115, label %91, label %116, !llvm.loop !542

116:                                              ; preds = %112, %79
  %117 = phi i32 [ %84, %79 ], [ %114, %112 ]
  %118 = phi i64 [ %89, %79 ], [ %113, %112 ]
  store i64 %118, ptr %31, align 8, !tbaa !436
  store i32 %117, ptr %29, align 8, !tbaa !437
  br label %174

119:                                              ; preds = %33
  %120 = tail call i32 @llvm.abs.i32(i32 %47, i1 true)
  br label %121

121:                                              ; preds = %121, %119
  %122 = phi i32 [ %125, %121 ], [ %120, %119 ]
  %123 = phi i32 [ %124, %121 ], [ 0, %119 ]
  %124 = add nuw nsw i32 %123, 1
  %125 = lshr i32 %122, 1
  %126 = icmp ult i32 %122, 2
  br i1 %126, label %127, label %121, !llvm.loop !543

127:                                              ; preds = %121
  %.lcssa = phi i32 [ %124, %121 ]
  %128 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %41, i64 0, i32 5
  %129 = load i32, ptr %128, align 4, !tbaa !430
  tail call fastcc void @emit_symbol(ptr noundef %4, i32 noundef %129, i32 noundef %.lcssa) #26
  %130 = load i32, ptr %30, align 8, !tbaa !427
  %131 = icmp eq i32 %130, 0
  br i1 %131, label %132, label %174

132:                                              ; preds = %127
  %133 = load i32, ptr %29, align 8, !tbaa !437
  %134 = zext i32 %49 to i64
  %135 = zext i32 %.lcssa to i64
  %136 = shl nsw i64 -1, %135
  %137 = xor i64 %136, -1
  %138 = and i64 %137, %134
  %139 = add nsw i32 %133, %.lcssa
  %140 = sub nsw i32 24, %139
  %141 = zext i32 %140 to i64
  %142 = shl i64 %138, %141
  %143 = load i64, ptr %31, align 8, !tbaa !436
  %144 = or i64 %142, %143
  %145 = icmp sgt i32 %139, 7
  br i1 %145, label %146, label %171

146:                                              ; preds = %167, %132
  %147 = phi i64 [ %168, %167 ], [ %144, %132 ]
  %148 = phi i32 [ %169, %167 ], [ %139, %132 ]
  %149 = lshr i64 %147, 16
  %150 = trunc i64 %149 to i8
  %151 = load ptr, ptr %10, align 8, !tbaa !540
  %152 = getelementptr inbounds i8, ptr %151, i64 1
  store ptr %152, ptr %10, align 8, !tbaa !540
  store i8 %150, ptr %151, align 1, !tbaa !11
  %153 = load i64, ptr %13, align 8, !tbaa !541
  %154 = add i64 %153, -1
  store i64 %154, ptr %13, align 8, !tbaa !541
  %155 = icmp eq i64 %154, 0
  br i1 %155, label %156, label %157

156:                                              ; preds = %146
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %157

157:                                              ; preds = %156, %146
  %158 = and i64 %147, 16711680
  %159 = icmp eq i64 %158, 16711680
  br i1 %159, label %160, label %167

160:                                              ; preds = %157
  %161 = load ptr, ptr %10, align 8, !tbaa !540
  %162 = getelementptr inbounds i8, ptr %161, i64 1
  store ptr %162, ptr %10, align 8, !tbaa !540
  store i8 0, ptr %161, align 1, !tbaa !11
  %163 = load i64, ptr %13, align 8, !tbaa !541
  %164 = add i64 %163, -1
  store i64 %164, ptr %13, align 8, !tbaa !541
  %165 = icmp eq i64 %164, 0
  br i1 %165, label %166, label %167

166:                                              ; preds = %160
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %167

167:                                              ; preds = %166, %160, %157
  %168 = shl i64 %147, 8
  %169 = add nsw i32 %148, -8
  %170 = icmp sgt i32 %148, 15
  br i1 %170, label %146, label %171, !llvm.loop !542

171:                                              ; preds = %167, %132
  %172 = phi i32 [ %139, %132 ], [ %169, %167 ]
  %173 = phi i64 [ %144, %132 ], [ %168, %167 ]
  store i64 %173, ptr %31, align 8, !tbaa !436
  store i32 %172, ptr %29, align 8, !tbaa !437
  br label %174

174:                                              ; preds = %171, %127, %116, %72, %57
  %175 = add nuw nsw i64 %34, 1
  %176 = load i32, ptr %25, align 8, !tbaa !505
  %177 = sext i32 %176 to i64
  %178 = icmp slt i64 %175, %177
  br i1 %178, label %33, label %179, !llvm.loop !544

179:                                              ; preds = %174, %24
  %180 = load ptr, ptr %10, align 8, !tbaa !540
  %181 = load ptr, ptr %7, align 8, !tbaa !48
  store ptr %180, ptr %181, align 8, !tbaa !465
  %182 = load i64, ptr %13, align 8, !tbaa !541
  %183 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %181, i64 0, i32 1
  store i64 %182, ptr %183, align 8, !tbaa !466
  %184 = load i32, ptr %14, align 8, !tbaa !279
  %185 = icmp eq i32 %184, 0
  br i1 %185, label %198, label %186

186:                                              ; preds = %179
  %187 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %188 = load i32, ptr %187, align 8, !tbaa !438
  %189 = icmp eq i32 %188, 0
  br i1 %189, label %190, label %195

190:                                              ; preds = %186
  %191 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %192 = load i32, ptr %191, align 4, !tbaa !439
  %193 = add nsw i32 %192, 1
  %194 = and i32 %193, 7
  store i32 %194, ptr %191, align 4, !tbaa !439
  br label %195

195:                                              ; preds = %190, %186
  %196 = phi i32 [ %184, %190 ], [ %188, %186 ]
  %197 = add i32 %196, -1
  store i32 %197, ptr %187, align 8, !tbaa !438
  br label %198

198:                                              ; preds = %195, %179
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_AC_first(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %6 = load i32, ptr %5, align 8, !tbaa !461
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %8 = load i32, ptr %7, align 8, !tbaa !462
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %10 = load ptr, ptr %9, align 8, !tbaa !48
  %11 = load ptr, ptr %10, align 8, !tbaa !465
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %11, ptr %12, align 8, !tbaa !540
  %13 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %10, i64 0, i32 1
  %14 = load i64, ptr %13, align 8, !tbaa !466
  %15 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %14, ptr %15, align 8, !tbaa !541
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %17 = load i32, ptr %16, align 8, !tbaa !279
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %21 = load i32, ptr %20, align 8, !tbaa !438
  %22 = icmp eq i32 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %19
  %24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %25 = load i32, ptr %24, align 4, !tbaa !439
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %25) #26
  br label %26

26:                                               ; preds = %23, %19, %2
  %27 = load ptr, ptr %1, align 8, !tbaa !7
  %28 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %29 = load i32, ptr %28, align 4, !tbaa !359
  %30 = icmp sgt i32 %29, %6
  br i1 %30, label %212, label %31

31:                                               ; preds = %26
  %32 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 9
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 8
  %34 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %35 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 6
  %37 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  %38 = sext i32 %29 to i64
  %39 = add i32 %6, 1
  br label %40

40:                                               ; preds = %200, %31
  %41 = phi i64 [ %38, %31 ], [ %202, %200 ]
  %42 = phi i32 [ 0, %31 ], [ %201, %200 ]
  %43 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %41
  %44 = load i32, ptr %43, align 4, !tbaa !121
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds [64 x i16], ptr %27, i64 0, i64 %45
  %47 = load i16, ptr %46, align 2, !tbaa !275
  %48 = icmp eq i16 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %40
  %50 = add nsw i32 %42, 1
  br label %200

51:                                               ; preds = %40
  %52 = sext i16 %47 to i32
  %53 = icmp slt i16 %47, 0
  %54 = sub nsw i32 0, %52
  %55 = lshr i32 %54, %8
  %56 = xor i32 %55, -1
  %57 = lshr i32 %52, %8
  %58 = select i1 %53, i32 %56, i32 %57
  %59 = select i1 %53, i32 %55, i32 %57
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %63

61:                                               ; preds = %51
  %62 = add nsw i32 %42, 1
  br label %200

63:                                               ; preds = %51
  %64 = load i32, ptr %32, align 4, !tbaa !434
  %65 = icmp eq i32 %64, 0
  br i1 %65, label %67, label %66

66:                                               ; preds = %63
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4) #26
  br label %67

67:                                               ; preds = %66, %63
  %68 = icmp sgt i32 %42, 15
  br i1 %68, label %72, label %69

69:                                               ; preds = %142, %67
  %70 = phi i32 [ %42, %67 ], [ %143, %142 ]
  %71 = icmp ult i32 %59, 2
  br i1 %71, label %151, label %145

72:                                               ; preds = %142, %67
  %73 = phi i32 [ %143, %142 ], [ %42, %67 ]
  %74 = load i32, ptr %33, align 8, !tbaa !432
  %75 = load i32, ptr %34, align 8, !tbaa !427
  %76 = icmp eq i32 %75, 0
  %77 = sext i32 %74 to i64
  br i1 %76, label %84, label %78

78:                                               ; preds = %72
  %79 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %77
  %80 = load ptr, ptr %79, align 8, !tbaa !7
  %81 = getelementptr inbounds i64, ptr %80, i64 240
  %82 = load i64, ptr %81, align 8, !tbaa !31
  %83 = add nsw i64 %82, 1
  store i64 %83, ptr %81, align 8, !tbaa !31
  br label %142

84:                                               ; preds = %72
  %85 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 14, i64 %77
  %86 = load ptr, ptr %85, align 8, !tbaa !7
  %87 = getelementptr inbounds [256 x i32], ptr %86, i64 0, i64 240
  %88 = load i32, ptr %87, align 4, !tbaa !121
  %89 = getelementptr inbounds %struct.c_derived_tbl, ptr %86, i64 0, i32 1, i64 240
  %90 = load i8, ptr %89, align 1, !tbaa !11
  %91 = sext i8 %90 to i32
  %92 = zext i32 %88 to i64
  %93 = load i32, ptr %35, align 8, !tbaa !437
  %94 = icmp eq i8 %90, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %84
  %96 = load ptr, ptr %36, align 8, !tbaa !426
  %97 = load ptr, ptr %96, align 8, !tbaa !25
  %98 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %97, i64 0, i32 5
  store i32 39, ptr %98, align 8, !tbaa !22
  %99 = load ptr, ptr %97, align 8, !tbaa !12
  tail call void %99(ptr noundef nonnull %96) #25
  %100 = load i32, ptr %34, align 8, !tbaa !427
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %142

102:                                              ; preds = %95, %84
  %103 = zext i32 %91 to i64
  %104 = shl nsw i64 -1, %103
  %105 = xor i64 %104, -1
  %106 = and i64 %105, %92
  %107 = add nsw i32 %93, %91
  %108 = sub nsw i32 24, %107
  %109 = zext i32 %108 to i64
  %110 = shl i64 %106, %109
  %111 = load i64, ptr %37, align 8, !tbaa !436
  %112 = or i64 %111, %110
  %113 = icmp sgt i32 %107, 7
  br i1 %113, label %114, label %139

114:                                              ; preds = %135, %102
  %115 = phi i64 [ %136, %135 ], [ %112, %102 ]
  %116 = phi i32 [ %137, %135 ], [ %107, %102 ]
  %117 = lshr i64 %115, 16
  %118 = trunc i64 %117 to i8
  %119 = load ptr, ptr %12, align 8, !tbaa !540
  %120 = getelementptr inbounds i8, ptr %119, i64 1
  store ptr %120, ptr %12, align 8, !tbaa !540
  store i8 %118, ptr %119, align 1, !tbaa !11
  %121 = load i64, ptr %15, align 8, !tbaa !541
  %122 = add i64 %121, -1
  store i64 %122, ptr %15, align 8, !tbaa !541
  %123 = icmp eq i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %114
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %125

125:                                              ; preds = %124, %114
  %126 = and i64 %115, 16711680
  %127 = icmp eq i64 %126, 16711680
  br i1 %127, label %128, label %135

128:                                              ; preds = %125
  %129 = load ptr, ptr %12, align 8, !tbaa !540
  %130 = getelementptr inbounds i8, ptr %129, i64 1
  store ptr %130, ptr %12, align 8, !tbaa !540
  store i8 0, ptr %129, align 1, !tbaa !11
  %131 = load i64, ptr %15, align 8, !tbaa !541
  %132 = add i64 %131, -1
  store i64 %132, ptr %15, align 8, !tbaa !541
  %133 = icmp eq i64 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %128
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %135

135:                                              ; preds = %134, %128, %125
  %136 = shl i64 %115, 8
  %137 = add nsw i32 %116, -8
  %138 = icmp sgt i32 %116, 15
  br i1 %138, label %114, label %139, !llvm.loop !542

139:                                              ; preds = %135, %102
  %140 = phi i32 [ %107, %102 ], [ %137, %135 ]
  %141 = phi i64 [ %112, %102 ], [ %136, %135 ]
  store i64 %141, ptr %37, align 8, !tbaa !436
  store i32 %140, ptr %35, align 8, !tbaa !437
  br label %142

142:                                              ; preds = %139, %95, %78
  %143 = add nsw i32 %73, -16
  %144 = icmp sgt i32 %73, 31
  br i1 %144, label %72, label %69, !llvm.loop !545

145:                                              ; preds = %145, %69
  %146 = phi i32 [ %148, %145 ], [ %59, %69 ]
  %147 = phi i32 [ %149, %145 ], [ 1, %69 ]
  %148 = lshr i32 %146, 1
  %149 = add nuw nsw i32 %147, 1
  %150 = icmp ult i32 %146, 4
  br i1 %150, label %151, label %145, !llvm.loop !546

151:                                              ; preds = %145, %69
  %152 = phi i32 [ 1, %69 ], [ %149, %145 ]
  %153 = load i32, ptr %33, align 8, !tbaa !432
  %154 = shl i32 %70, 4
  %155 = add nsw i32 %152, %154
  tail call fastcc void @emit_symbol(ptr noundef %4, i32 noundef %153, i32 noundef %155) #26
  %156 = load i32, ptr %34, align 8, !tbaa !427
  %157 = icmp eq i32 %156, 0
  br i1 %157, label %158, label %200

158:                                              ; preds = %151
  %159 = load i32, ptr %35, align 8, !tbaa !437
  %160 = zext i32 %58 to i64
  %161 = zext i32 %152 to i64
  %162 = shl nsw i64 -1, %161
  %163 = xor i64 %162, -1
  %164 = and i64 %163, %160
  %165 = add nsw i32 %159, %152
  %166 = sub nsw i32 24, %165
  %167 = zext i32 %166 to i64
  %168 = shl i64 %164, %167
  %169 = load i64, ptr %37, align 8, !tbaa !436
  %170 = or i64 %168, %169
  %171 = icmp sgt i32 %165, 7
  br i1 %171, label %172, label %197

172:                                              ; preds = %193, %158
  %173 = phi i64 [ %194, %193 ], [ %170, %158 ]
  %174 = phi i32 [ %195, %193 ], [ %165, %158 ]
  %175 = lshr i64 %173, 16
  %176 = trunc i64 %175 to i8
  %177 = load ptr, ptr %12, align 8, !tbaa !540
  %178 = getelementptr inbounds i8, ptr %177, i64 1
  store ptr %178, ptr %12, align 8, !tbaa !540
  store i8 %176, ptr %177, align 1, !tbaa !11
  %179 = load i64, ptr %15, align 8, !tbaa !541
  %180 = add i64 %179, -1
  store i64 %180, ptr %15, align 8, !tbaa !541
  %181 = icmp eq i64 %180, 0
  br i1 %181, label %182, label %183

182:                                              ; preds = %172
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %183

183:                                              ; preds = %182, %172
  %184 = and i64 %173, 16711680
  %185 = icmp eq i64 %184, 16711680
  br i1 %185, label %186, label %193

186:                                              ; preds = %183
  %187 = load ptr, ptr %12, align 8, !tbaa !540
  %188 = getelementptr inbounds i8, ptr %187, i64 1
  store ptr %188, ptr %12, align 8, !tbaa !540
  store i8 0, ptr %187, align 1, !tbaa !11
  %189 = load i64, ptr %15, align 8, !tbaa !541
  %190 = add i64 %189, -1
  store i64 %190, ptr %15, align 8, !tbaa !541
  %191 = icmp eq i64 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %186
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %193

193:                                              ; preds = %192, %186, %183
  %194 = shl i64 %173, 8
  %195 = add nsw i32 %174, -8
  %196 = icmp sgt i32 %174, 15
  br i1 %196, label %172, label %197, !llvm.loop !542

197:                                              ; preds = %193, %158
  %198 = phi i32 [ %165, %158 ], [ %195, %193 ]
  %199 = phi i64 [ %170, %158 ], [ %194, %193 ]
  store i64 %199, ptr %37, align 8, !tbaa !436
  store i32 %198, ptr %35, align 8, !tbaa !437
  br label %200

200:                                              ; preds = %197, %151, %61, %49
  %201 = phi i32 [ %50, %49 ], [ %62, %61 ], [ 0, %151 ], [ 0, %197 ]
  %202 = add nsw i64 %41, 1
  %203 = trunc i64 %202 to i32
  %204 = icmp eq i32 %39, %203
  br i1 %204, label %205, label %40, !llvm.loop !547

205:                                              ; preds = %200
  %.lcssa = phi i32 [ %201, %200 ]
  %206 = icmp sgt i32 %.lcssa, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %205
  %208 = load i32, ptr %32, align 4, !tbaa !434
  %209 = add i32 %208, 1
  store i32 %209, ptr %32, align 4, !tbaa !434
  %210 = icmp eq i32 %209, 32767
  br i1 %210, label %211, label %212

211:                                              ; preds = %207
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %4) #26
  br label %212

212:                                              ; preds = %211, %207, %205, %26
  %213 = load ptr, ptr %12, align 8, !tbaa !540
  %214 = load ptr, ptr %9, align 8, !tbaa !48
  store ptr %213, ptr %214, align 8, !tbaa !465
  %215 = load i64, ptr %15, align 8, !tbaa !541
  %216 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %214, i64 0, i32 1
  store i64 %215, ptr %216, align 8, !tbaa !466
  %217 = load i32, ptr %16, align 8, !tbaa !279
  %218 = icmp eq i32 %217, 0
  br i1 %218, label %231, label %219

219:                                              ; preds = %212
  %220 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %221 = load i32, ptr %220, align 8, !tbaa !438
  %222 = icmp eq i32 %221, 0
  br i1 %222, label %223, label %228

223:                                              ; preds = %219
  %224 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %225 = load i32, ptr %224, align 4, !tbaa !439
  %226 = add nsw i32 %225, 1
  %227 = and i32 %226, 7
  store i32 %227, ptr %224, align 4, !tbaa !439
  br label %228

228:                                              ; preds = %223, %219
  %229 = phi i32 [ %217, %223 ], [ %221, %219 ]
  %230 = add i32 %229, -1
  store i32 %230, ptr %220, align 8, !tbaa !438
  br label %231

231:                                              ; preds = %228, %212
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_DC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %6 = load i32, ptr %5, align 8, !tbaa !462
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %8 = load ptr, ptr %7, align 8, !tbaa !48
  %9 = load ptr, ptr %8, align 8, !tbaa !465
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 2
  store ptr %9, ptr %10, align 8, !tbaa !540
  %11 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %8, i64 0, i32 1
  %12 = load i64, ptr %11, align 8, !tbaa !466
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 3
  store i64 %12, ptr %13, align 8, !tbaa !541
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %15 = load i32, ptr %14, align 8, !tbaa !279
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %24, label %17

17:                                               ; preds = %2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %19 = load i32, ptr %18, align 8, !tbaa !438
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %23 = load i32, ptr %22, align 4, !tbaa !439
  tail call fastcc void @emit_restart(ptr noundef nonnull %4, i32 noundef %23) #26
  br label %24

24:                                               ; preds = %21, %17, %2
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  %26 = load i32, ptr %25, align 8, !tbaa !505
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %91

28:                                               ; preds = %24
  %29 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 5
  %30 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 1
  %31 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 4
  br label %32

32:                                               ; preds = %85, %28
  %33 = phi i32 [ %26, %28 ], [ %86, %85 ]
  %34 = phi i32 [ %26, %28 ], [ %87, %85 ]
  %35 = phi i64 [ 0, %28 ], [ %88, %85 ]
  %36 = load i32, ptr %30, align 8, !tbaa !427
  %37 = icmp eq i32 %36, 0
  br i1 %37, label %38, label %85

38:                                               ; preds = %32
  %39 = load i32, ptr %29, align 8, !tbaa !437
  %40 = getelementptr inbounds ptr, ptr %1, i64 %35
  %41 = load ptr, ptr %40, align 8, !tbaa !7
  %42 = load i16, ptr %41, align 2, !tbaa !275
  %43 = sext i16 %42 to i32
  %44 = lshr i32 %43, %6
  %45 = and i32 %44, 1
  %46 = zext i32 %45 to i64
  %47 = add nsw i32 %39, 1
  %48 = sub nsw i32 23, %39
  %49 = zext i32 %48 to i64
  %50 = shl nuw i64 %46, %49
  %51 = load i64, ptr %31, align 8, !tbaa !436
  %52 = or i64 %50, %51
  %53 = icmp sgt i32 %39, 6
  br i1 %53, label %54, label %81

54:                                               ; preds = %75, %38
  %55 = phi i64 [ %76, %75 ], [ %52, %38 ]
  %56 = phi i32 [ %77, %75 ], [ %47, %38 ]
  %57 = lshr i64 %55, 16
  %58 = trunc i64 %57 to i8
  %59 = load ptr, ptr %10, align 8, !tbaa !540
  %60 = getelementptr inbounds i8, ptr %59, i64 1
  store ptr %60, ptr %10, align 8, !tbaa !540
  store i8 %58, ptr %59, align 1, !tbaa !11
  %61 = load i64, ptr %13, align 8, !tbaa !541
  %62 = add i64 %61, -1
  store i64 %62, ptr %13, align 8, !tbaa !541
  %63 = icmp eq i64 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %54
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %65

65:                                               ; preds = %64, %54
  %66 = and i64 %55, 16711680
  %67 = icmp eq i64 %66, 16711680
  br i1 %67, label %68, label %75

68:                                               ; preds = %65
  %69 = load ptr, ptr %10, align 8, !tbaa !540
  %70 = getelementptr inbounds i8, ptr %69, i64 1
  store ptr %70, ptr %10, align 8, !tbaa !540
  store i8 0, ptr %69, align 1, !tbaa !11
  %71 = load i64, ptr %13, align 8, !tbaa !541
  %72 = add i64 %71, -1
  store i64 %72, ptr %13, align 8, !tbaa !541
  %73 = icmp eq i64 %72, 0
  br i1 %73, label %74, label %75

74:                                               ; preds = %68
  tail call fastcc void @dump_buffer(ptr noundef nonnull %4) #26
  br label %75

75:                                               ; preds = %74, %68, %65
  %76 = shl i64 %55, 8
  %77 = add nsw i32 %56, -8
  %78 = icmp sgt i32 %56, 15
  br i1 %78, label %54, label %79, !llvm.loop !542

79:                                               ; preds = %75
  %.lcssa1 = phi i64 [ %76, %75 ]
  %.lcssa = phi i32 [ %77, %75 ]
  %80 = load i32, ptr %25, align 8, !tbaa !505
  br label %81

81:                                               ; preds = %79, %38
  %82 = phi i32 [ %33, %38 ], [ %80, %79 ]
  %83 = phi i32 [ %47, %38 ], [ %.lcssa, %79 ]
  %84 = phi i64 [ %52, %38 ], [ %.lcssa1, %79 ]
  store i64 %84, ptr %31, align 8, !tbaa !436
  store i32 %83, ptr %29, align 8, !tbaa !437
  br label %85

85:                                               ; preds = %81, %32
  %86 = phi i32 [ %33, %32 ], [ %82, %81 ]
  %87 = phi i32 [ %34, %32 ], [ %82, %81 ]
  %88 = add nuw nsw i64 %35, 1
  %89 = sext i32 %87 to i64
  %90 = icmp slt i64 %88, %89
  br i1 %90, label %32, label %91, !llvm.loop !548

91:                                               ; preds = %85, %24
  %92 = load ptr, ptr %10, align 8, !tbaa !540
  %93 = load ptr, ptr %7, align 8, !tbaa !48
  store ptr %92, ptr %93, align 8, !tbaa !465
  %94 = load i64, ptr %13, align 8, !tbaa !541
  %95 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %93, i64 0, i32 1
  store i64 %94, ptr %95, align 8, !tbaa !466
  %96 = load i32, ptr %14, align 8, !tbaa !279
  %97 = icmp eq i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %91
  %99 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 12
  %100 = load i32, ptr %99, align 8, !tbaa !438
  %101 = icmp eq i32 %100, 0
  br i1 %101, label %102, label %107

102:                                              ; preds = %98
  %103 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 13
  %104 = load i32, ptr %103, align 4, !tbaa !439
  %105 = add nsw i32 %104, 1
  %106 = and i32 %105, 7
  store i32 %106, ptr %103, align 4, !tbaa !439
  br label %107

107:                                              ; preds = %102, %98
  %108 = phi i32 [ %96, %102 ], [ %100, %98 ]
  %109 = add i32 %108, -1
  store i32 %109, ptr %99, align 8, !tbaa !438
  br label %110

110:                                              ; preds = %107, %91
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @encode_mcu_AC_refine(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1) #2 {
  %3 = alloca [64 x i32], align 16
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %5 = load ptr, ptr %4, align 8, !tbaa !171
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  %7 = load i32, ptr %6, align 8, !tbaa !461
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  %9 = load i32, ptr %8, align 8, !tbaa !462
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %3) #23
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %11 = load ptr, ptr %10, align 8, !tbaa !48
  %12 = load ptr, ptr %11, align 8, !tbaa !465
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 2
  store ptr %12, ptr %13, align 8, !tbaa !540
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %11, i64 0, i32 1
  %15 = load i64, ptr %14, align 8, !tbaa !466
  %16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 3
  store i64 %15, ptr %16, align 8, !tbaa !541
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  %18 = load i32, ptr %17, align 8, !tbaa !279
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %2
  %21 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %22 = load i32, ptr %21, align 8, !tbaa !438
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %26 = load i32, ptr %25, align 4, !tbaa !439
  tail call fastcc void @emit_restart(ptr noundef nonnull %5, i32 noundef %26) #26
  br label %27

27:                                               ; preds = %24, %20, %2
  %28 = load ptr, ptr %1, align 8, !tbaa !7
  %29 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %30 = load i32, ptr %29, align 4, !tbaa !359
  %31 = icmp sgt i32 %30, %7
  br i1 %31, label %32, label %34

32:                                               ; preds = %27
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 10
  br label %228

34:                                               ; preds = %27
  %35 = sext i32 %30 to i64
  %36 = add i32 %7, 1
  br label %37

37:                                               ; preds = %37, %34
  %38 = phi i64 [ %35, %34 ], [ %52, %37 ]
  %39 = phi i32 [ 0, %34 ], [ %51, %37 ]
  %40 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %38
  %41 = load i32, ptr %40, align 4, !tbaa !121
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %42
  %44 = load i16, ptr %43, align 2, !tbaa !275
  %45 = tail call i16 @llvm.abs.i16(i16 %44, i1 false)
  %46 = zext i16 %45 to i32
  %47 = lshr i32 %46, %9
  %48 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %38
  store i32 %47, ptr %48, align 4, !tbaa !121
  %49 = icmp eq i32 %47, 1
  %50 = trunc i64 %38 to i32
  %51 = select i1 %49, i32 %50, i32 %39
  %52 = add nsw i64 %38, 1
  %53 = trunc i64 %52 to i32
  %54 = icmp eq i32 %36, %53
  br i1 %54, label %55, label %37, !llvm.loop !549

55:                                               ; preds = %37
  %.lcssa = phi i32 [ %51, %37 ]
  %56 = sext i32 %.lcssa to i64
  %57 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 11
  %58 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 10
  %59 = load ptr, ptr %57, align 8, !tbaa !175
  %60 = load i32, ptr %58, align 8, !tbaa !435
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i8, ptr %59, i64 %61
  %63 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 8
  %64 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 1
  %65 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 5
  %66 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 6
  %67 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 4
  br label %68

68:                                               ; preds = %221, %55
  %69 = phi i64 [ %35, %55 ], [ %225, %221 ]
  %70 = phi i32 [ 0, %55 ], [ %224, %221 ]
  %71 = phi i32 [ 0, %55 ], [ %223, %221 ]
  %72 = phi ptr [ %62, %55 ], [ %222, %221 ]
  %73 = getelementptr inbounds [64 x i32], ptr %3, i64 0, i64 %69
  %74 = load i32, ptr %73, align 4, !tbaa !121
  %75 = icmp eq i32 %74, 0
  br i1 %75, label %80, label %76

76:                                               ; preds = %68
  %77 = icmp sle i64 %69, %56
  %78 = icmp sgt i32 %70, 15
  %79 = select i1 %78, i1 %77, i1 false
  br i1 %79, label %82, label %158

80:                                               ; preds = %68
  %81 = add nsw i32 %70, 1
  br label %221

82:                                               ; preds = %154, %76
  %83 = phi i32 [ %155, %154 ], [ %70, %76 ]
  %84 = phi i32 [ 0, %154 ], [ %71, %76 ]
  %85 = phi ptr [ %156, %154 ], [ %72, %76 ]
  tail call fastcc void @emit_eobrun(ptr noundef %5) #26
  %86 = load i32, ptr %63, align 8, !tbaa !432
  %87 = load i32, ptr %64, align 8, !tbaa !427
  %88 = icmp eq i32 %87, 0
  %89 = sext i32 %86 to i64
  br i1 %88, label %96, label %90

90:                                               ; preds = %82
  %91 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 15, i64 %89
  %92 = load ptr, ptr %91, align 8, !tbaa !7
  %93 = getelementptr inbounds i64, ptr %92, i64 240
  %94 = load i64, ptr %93, align 8, !tbaa !31
  %95 = add nsw i64 %94, 1
  store i64 %95, ptr %93, align 8, !tbaa !31
  br label %154

96:                                               ; preds = %82
  %97 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 14, i64 %89
  %98 = load ptr, ptr %97, align 8, !tbaa !7
  %99 = getelementptr inbounds [256 x i32], ptr %98, i64 0, i64 240
  %100 = load i32, ptr %99, align 4, !tbaa !121
  %101 = getelementptr inbounds %struct.c_derived_tbl, ptr %98, i64 0, i32 1, i64 240
  %102 = load i8, ptr %101, align 1, !tbaa !11
  %103 = sext i8 %102 to i32
  %104 = zext i32 %100 to i64
  %105 = load i32, ptr %65, align 8, !tbaa !437
  %106 = icmp eq i8 %102, 0
  br i1 %106, label %107, label %114

107:                                              ; preds = %96
  %108 = load ptr, ptr %66, align 8, !tbaa !426
  %109 = load ptr, ptr %108, align 8, !tbaa !25
  %110 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %109, i64 0, i32 5
  store i32 39, ptr %110, align 8, !tbaa !22
  %111 = load ptr, ptr %109, align 8, !tbaa !12
  tail call void %111(ptr noundef nonnull %108) #25
  %112 = load i32, ptr %64, align 8, !tbaa !427
  %113 = icmp eq i32 %112, 0
  br i1 %113, label %114, label %154

114:                                              ; preds = %107, %96
  %115 = zext i32 %103 to i64
  %116 = shl nsw i64 -1, %115
  %117 = xor i64 %116, -1
  %118 = and i64 %117, %104
  %119 = add nsw i32 %105, %103
  %120 = sub nsw i32 24, %119
  %121 = zext i32 %120 to i64
  %122 = shl i64 %118, %121
  %123 = load i64, ptr %67, align 8, !tbaa !436
  %124 = or i64 %123, %122
  %125 = icmp sgt i32 %119, 7
  br i1 %125, label %126, label %151

126:                                              ; preds = %147, %114
  %127 = phi i64 [ %148, %147 ], [ %124, %114 ]
  %128 = phi i32 [ %149, %147 ], [ %119, %114 ]
  %129 = lshr i64 %127, 16
  %130 = trunc i64 %129 to i8
  %131 = load ptr, ptr %13, align 8, !tbaa !540
  %132 = getelementptr inbounds i8, ptr %131, i64 1
  store ptr %132, ptr %13, align 8, !tbaa !540
  store i8 %130, ptr %131, align 1, !tbaa !11
  %133 = load i64, ptr %16, align 8, !tbaa !541
  %134 = add i64 %133, -1
  store i64 %134, ptr %16, align 8, !tbaa !541
  %135 = icmp eq i64 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %126
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #26
  br label %137

137:                                              ; preds = %136, %126
  %138 = and i64 %127, 16711680
  %139 = icmp eq i64 %138, 16711680
  br i1 %139, label %140, label %147

140:                                              ; preds = %137
  %141 = load ptr, ptr %13, align 8, !tbaa !540
  %142 = getelementptr inbounds i8, ptr %141, i64 1
  store ptr %142, ptr %13, align 8, !tbaa !540
  store i8 0, ptr %141, align 1, !tbaa !11
  %143 = load i64, ptr %16, align 8, !tbaa !541
  %144 = add i64 %143, -1
  store i64 %144, ptr %16, align 8, !tbaa !541
  %145 = icmp eq i64 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %140
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #26
  br label %147

147:                                              ; preds = %146, %140, %137
  %148 = shl i64 %127, 8
  %149 = add nsw i32 %128, -8
  %150 = icmp sgt i32 %128, 15
  br i1 %150, label %126, label %151, !llvm.loop !542

151:                                              ; preds = %147, %114
  %152 = phi i32 [ %119, %114 ], [ %149, %147 ]
  %153 = phi i64 [ %124, %114 ], [ %148, %147 ]
  store i64 %153, ptr %67, align 8, !tbaa !436
  store i32 %152, ptr %65, align 8, !tbaa !437
  br label %154

154:                                              ; preds = %151, %107, %90
  %155 = add nsw i32 %83, -16
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %5, ptr noundef %85, i32 noundef %84) #26
  %156 = load ptr, ptr %57, align 8, !tbaa !175
  %157 = icmp sgt i32 %83, 31
  br i1 %157, label %82, label %158, !llvm.loop !550

158:                                              ; preds = %154, %76
  %159 = phi ptr [ %72, %76 ], [ %156, %154 ]
  %160 = phi i32 [ %71, %76 ], [ 0, %154 ]
  %161 = phi i32 [ %70, %76 ], [ %155, %154 ]
  %162 = icmp sgt i32 %74, 1
  br i1 %162, label %163, label %169

163:                                              ; preds = %158
  %164 = trunc i32 %74 to i8
  %165 = and i8 %164, 1
  %166 = add i32 %160, 1
  %167 = zext i32 %160 to i64
  %168 = getelementptr inbounds i8, ptr %159, i64 %167
  store i8 %165, ptr %168, align 1, !tbaa !11
  br label %221

169:                                              ; preds = %158
  tail call fastcc void @emit_eobrun(ptr noundef %5) #26
  %170 = load i32, ptr %63, align 8, !tbaa !432
  %171 = shl i32 %161, 4
  %172 = or i32 %171, 1
  tail call fastcc void @emit_symbol(ptr noundef %5, i32 noundef %170, i32 noundef %172) #26
  %173 = load i32, ptr %64, align 8, !tbaa !427
  %174 = icmp eq i32 %173, 0
  br i1 %174, label %175, label %219

175:                                              ; preds = %169
  %176 = load i32, ptr %65, align 8, !tbaa !437
  %177 = getelementptr inbounds [0 x i32], ptr @jpeg_natural_order, i64 0, i64 %69
  %178 = load i32, ptr %177, align 4, !tbaa !121
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds [64 x i16], ptr %28, i64 0, i64 %179
  %181 = load i16, ptr %180, align 2, !tbaa !275
  %182 = icmp sgt i16 %181, -1
  %183 = zext i1 %182 to i64
  %184 = add nsw i32 %176, 1
  %185 = sub nsw i32 23, %176
  %186 = zext i32 %185 to i64
  %187 = shl nuw i64 %183, %186
  %188 = load i64, ptr %67, align 8, !tbaa !436
  %189 = or i64 %187, %188
  %190 = icmp sgt i32 %176, 6
  br i1 %190, label %191, label %216

191:                                              ; preds = %212, %175
  %192 = phi i64 [ %213, %212 ], [ %189, %175 ]
  %193 = phi i32 [ %214, %212 ], [ %184, %175 ]
  %194 = lshr i64 %192, 16
  %195 = trunc i64 %194 to i8
  %196 = load ptr, ptr %13, align 8, !tbaa !540
  %197 = getelementptr inbounds i8, ptr %196, i64 1
  store ptr %197, ptr %13, align 8, !tbaa !540
  store i8 %195, ptr %196, align 1, !tbaa !11
  %198 = load i64, ptr %16, align 8, !tbaa !541
  %199 = add i64 %198, -1
  store i64 %199, ptr %16, align 8, !tbaa !541
  %200 = icmp eq i64 %199, 0
  br i1 %200, label %201, label %202

201:                                              ; preds = %191
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #26
  br label %202

202:                                              ; preds = %201, %191
  %203 = and i64 %192, 16711680
  %204 = icmp eq i64 %203, 16711680
  br i1 %204, label %205, label %212

205:                                              ; preds = %202
  %206 = load ptr, ptr %13, align 8, !tbaa !540
  %207 = getelementptr inbounds i8, ptr %206, i64 1
  store ptr %207, ptr %13, align 8, !tbaa !540
  store i8 0, ptr %206, align 1, !tbaa !11
  %208 = load i64, ptr %16, align 8, !tbaa !541
  %209 = add i64 %208, -1
  store i64 %209, ptr %16, align 8, !tbaa !541
  %210 = icmp eq i64 %209, 0
  br i1 %210, label %211, label %212

211:                                              ; preds = %205
  tail call fastcc void @dump_buffer(ptr noundef nonnull %5) #26
  br label %212

212:                                              ; preds = %211, %205, %202
  %213 = shl i64 %192, 8
  %214 = add nsw i32 %193, -8
  %215 = icmp sgt i32 %193, 15
  br i1 %215, label %191, label %216, !llvm.loop !542

216:                                              ; preds = %212, %175
  %217 = phi i32 [ %184, %175 ], [ %214, %212 ]
  %218 = phi i64 [ %189, %175 ], [ %213, %212 ]
  store i64 %218, ptr %67, align 8, !tbaa !436
  store i32 %217, ptr %65, align 8, !tbaa !437
  br label %219

219:                                              ; preds = %216, %169
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %5, ptr noundef %159, i32 noundef %160) #26
  %220 = load ptr, ptr %57, align 8, !tbaa !175
  br label %221

221:                                              ; preds = %219, %163, %80
  %222 = phi ptr [ %72, %80 ], [ %159, %163 ], [ %220, %219 ]
  %223 = phi i32 [ %71, %80 ], [ %166, %163 ], [ 0, %219 ]
  %224 = phi i32 [ %81, %80 ], [ %161, %163 ], [ 0, %219 ]
  %225 = add nsw i64 %69, 1
  %226 = trunc i64 %225 to i32
  %227 = icmp eq i32 %36, %226
  br i1 %227, label %228, label %68, !llvm.loop !551

228:                                              ; preds = %221, %32
  %229 = phi ptr [ %33, %32 ], [ %58, %221 ]
  %230 = phi i32 [ 0, %32 ], [ %223, %221 ]
  %231 = phi i32 [ 0, %32 ], [ %224, %221 ]
  %232 = icmp sgt i32 %231, 0
  %233 = icmp ne i32 %230, 0
  %234 = select i1 %232, i1 true, i1 %233
  br i1 %234, label %235, label %245

235:                                              ; preds = %228
  %236 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 9
  %237 = load i32, ptr %236, align 4, !tbaa !434
  %238 = add i32 %237, 1
  store i32 %238, ptr %236, align 4, !tbaa !434
  %239 = load i32, ptr %229, align 8, !tbaa !435
  %240 = add i32 %239, %230
  store i32 %240, ptr %229, align 8, !tbaa !435
  %241 = icmp eq i32 %238, 32767
  %242 = icmp ugt i32 %240, 937
  %243 = select i1 %241, i1 true, i1 %242
  br i1 %243, label %244, label %245

244:                                              ; preds = %235
  tail call fastcc void @emit_eobrun(ptr noundef nonnull %5) #26
  br label %245

245:                                              ; preds = %244, %235, %228
  %246 = load ptr, ptr %13, align 8, !tbaa !540
  %247 = load ptr, ptr %10, align 8, !tbaa !48
  store ptr %246, ptr %247, align 8, !tbaa !465
  %248 = load i64, ptr %16, align 8, !tbaa !541
  %249 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %247, i64 0, i32 1
  store i64 %248, ptr %249, align 8, !tbaa !466
  %250 = load i32, ptr %17, align 8, !tbaa !279
  %251 = icmp eq i32 %250, 0
  br i1 %251, label %264, label %252

252:                                              ; preds = %245
  %253 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 12
  %254 = load i32, ptr %253, align 8, !tbaa !438
  %255 = icmp eq i32 %254, 0
  br i1 %255, label %256, label %261

256:                                              ; preds = %252
  %257 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %5, i64 0, i32 13
  %258 = load i32, ptr %257, align 4, !tbaa !439
  %259 = add nsw i32 %258, 1
  %260 = and i32 %259, 7
  store i32 %260, ptr %257, align 4, !tbaa !439
  br label %261

261:                                              ; preds = %256, %252
  %262 = phi i32 [ %250, %256 ], [ %254, %252 ]
  %263 = add i32 %262, -1
  store i32 %263, ptr %253, align 8, !tbaa !438
  br label %264

264:                                              ; preds = %261, %245
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %3) #23
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_gather_phuff(ptr noundef %0) #2 {
  %2 = alloca [4 x i32], align 16
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %4 = load ptr, ptr %3, align 8, !tbaa !171
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %2) #23
  tail call fastcc void @emit_eobrun(ptr noundef %4) #26
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %6 = load i32, ptr %5, align 4, !tbaa !359
  %7 = icmp eq i32 %6, 0
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %2, i8 0, i64 16, i1 false)
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %9 = load i32, ptr %8, align 4, !tbaa !429
  %10 = icmp sgt i32 %9, 0
  br i1 %10, label %11, label %54

11:                                               ; preds = %1
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  %13 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  br label %14

14:                                               ; preds = %49, %11
  %15 = phi i32 [ %9, %11 ], [ %50, %49 ]
  %16 = phi i64 [ 0, %11 ], [ %51, %49 ]
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %16
  %18 = load ptr, ptr %17, align 8, !tbaa !7
  br i1 %7, label %19, label %24

19:                                               ; preds = %14
  %20 = load i32, ptr %12, align 4, !tbaa !360
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %22, label %49

22:                                               ; preds = %19
  %23 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 5
  br label %26

24:                                               ; preds = %14
  %25 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %18, i64 0, i32 6
  br label %26

26:                                               ; preds = %24, %22
  %27 = phi ptr [ %23, %22 ], [ %25, %24 ]
  %28 = load i32, ptr %27, align 4, !tbaa !121
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds [4 x i32], ptr %2, i64 0, i64 %29
  %31 = load i32, ptr %30, align 4, !tbaa !121
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %49

33:                                               ; preds = %26
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 16, i64 %29
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 17, i64 %29
  %36 = select i1 %7, ptr %34, ptr %35
  %37 = load ptr, ptr %36, align 8, !tbaa !7
  %38 = icmp eq ptr %37, null
  br i1 %38, label %39, label %44

39:                                               ; preds = %33
  %40 = load ptr, ptr %13, align 8, !tbaa !29
  %41 = load ptr, ptr %40, align 8, !tbaa !56
  %42 = tail call ptr %41(ptr noundef nonnull %0, i32 noundef 0, i64 noundef 280) #25
  %43 = getelementptr inbounds %struct.JHUFF_TBL, ptr %42, i64 0, i32 2
  store i32 0, ptr %43, align 4, !tbaa !59
  store ptr %42, ptr %36, align 8, !tbaa !7
  br label %44

44:                                               ; preds = %39, %33
  %45 = phi ptr [ %42, %39 ], [ %37, %33 ]
  %46 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %4, i64 0, i32 15, i64 %29
  %47 = load ptr, ptr %46, align 8, !tbaa !7
  tail call fastcc void @jpeg_gen_optimal_table(ptr noundef nonnull %0, ptr noundef nonnull %45, ptr noundef %47) #25
  store i32 1, ptr %30, align 4, !tbaa !121
  %48 = load i32, ptr %8, align 4, !tbaa !429
  br label %49

49:                                               ; preds = %44, %26, %19
  %50 = phi i32 [ %15, %26 ], [ %48, %44 ], [ %15, %19 ]
  %51 = add nuw nsw i64 %16, 1
  %52 = sext i32 %50 to i64
  %53 = icmp slt i64 %51, %52
  br i1 %53, label %14, label %54, !llvm.loop !552

54:                                               ; preds = %49, %1
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %2) #23
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal void @finish_pass_phuff(ptr nocapture noundef readonly %0) #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 59
  %3 = load ptr, ptr %2, align 8, !tbaa !171
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = load ptr, ptr %5, align 8, !tbaa !465
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 2
  store ptr %6, ptr %7, align 8, !tbaa !540
  %8 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %9 = load i64, ptr %8, align 8, !tbaa !466
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %3, i64 0, i32 3
  store i64 %9, ptr %10, align 8, !tbaa !541
  tail call fastcc void @emit_eobrun(ptr noundef %3) #26
  tail call fastcc void @flush_bits.21(ptr noundef %3) #26
  %11 = load ptr, ptr %7, align 8, !tbaa !540
  %12 = load ptr, ptr %4, align 8, !tbaa !48
  store ptr %11, ptr %12, align 8, !tbaa !465
  %13 = load i64, ptr %10, align 8, !tbaa !541
  %14 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %12, i64 0, i32 1
  store i64 %13, ptr %14, align 8, !tbaa !466
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_eobrun(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  %3 = load i32, ptr %2, align 4, !tbaa !434
  switch i32 %3, label %4 [
    i32 0, label %73
    i32 1, label %10
  ]

4:                                                ; preds = %4, %1
  %5 = phi i32 [ %8, %4 ], [ 0, %1 ]
  %6 = phi i32 [ %7, %4 ], [ %3, %1 ]
  %7 = ashr i32 %6, 1
  %8 = add nuw nsw i32 %5, 1
  %9 = icmp ult i32 %6, 4
  br i1 %9, label %10, label %4, !llvm.loop !553

10:                                               ; preds = %4, %1
  %11 = phi i32 [ 0, %1 ], [ %8, %4 ]
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 8
  %13 = load i32, ptr %12, align 8, !tbaa !432
  %14 = shl i32 %11, 4
  tail call fastcc void @emit_symbol(ptr noundef %0, i32 noundef %13, i32 noundef %14) #26
  %15 = icmp eq i32 %11, 0
  br i1 %15, label %68, label %16

16:                                               ; preds = %10
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %19 = load i32, ptr %18, align 8, !tbaa !427
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %21, label %68

21:                                               ; preds = %16
  %22 = load i32, ptr %17, align 8, !tbaa !437
  %23 = load i32, ptr %2, align 4, !tbaa !434
  %24 = zext i32 %23 to i64
  %25 = zext i32 %11 to i64
  %26 = shl nsw i64 -1, %25
  %27 = xor i64 %26, -1
  %28 = and i64 %24, %27
  %29 = add nsw i32 %22, %11
  %30 = sub nsw i32 24, %29
  %31 = zext i32 %30 to i64
  %32 = shl i64 %28, %31
  %33 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %34 = load i64, ptr %33, align 8, !tbaa !436
  %35 = or i64 %32, %34
  %36 = icmp sgt i32 %29, 7
  br i1 %36, label %37, label %65

37:                                               ; preds = %21
  %38 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %39 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  br label %40

40:                                               ; preds = %61, %37
  %41 = phi i64 [ %35, %37 ], [ %62, %61 ]
  %42 = phi i32 [ %29, %37 ], [ %63, %61 ]
  %43 = lshr i64 %41, 16
  %44 = trunc i64 %43 to i8
  %45 = load ptr, ptr %38, align 8, !tbaa !540
  %46 = getelementptr inbounds i8, ptr %45, i64 1
  store ptr %46, ptr %38, align 8, !tbaa !540
  store i8 %44, ptr %45, align 1, !tbaa !11
  %47 = load i64, ptr %39, align 8, !tbaa !541
  %48 = add i64 %47, -1
  store i64 %48, ptr %39, align 8, !tbaa !541
  %49 = icmp eq i64 %48, 0
  br i1 %49, label %50, label %51

50:                                               ; preds = %40
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %51

51:                                               ; preds = %50, %40
  %52 = and i64 %41, 16711680
  %53 = icmp eq i64 %52, 16711680
  br i1 %53, label %54, label %61

54:                                               ; preds = %51
  %55 = load ptr, ptr %38, align 8, !tbaa !540
  %56 = getelementptr inbounds i8, ptr %55, i64 1
  store ptr %56, ptr %38, align 8, !tbaa !540
  store i8 0, ptr %55, align 1, !tbaa !11
  %57 = load i64, ptr %39, align 8, !tbaa !541
  %58 = add i64 %57, -1
  store i64 %58, ptr %39, align 8, !tbaa !541
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %61

60:                                               ; preds = %54
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %61

61:                                               ; preds = %60, %54, %51
  %62 = shl i64 %41, 8
  %63 = add nsw i32 %42, -8
  %64 = icmp sgt i32 %42, 15
  br i1 %64, label %40, label %65, !llvm.loop !542

65:                                               ; preds = %61, %21
  %66 = phi i32 [ %29, %21 ], [ %63, %61 ]
  %67 = phi i64 [ %35, %21 ], [ %62, %61 ]
  store i64 %67, ptr %33, align 8, !tbaa !436
  store i32 %66, ptr %17, align 8, !tbaa !437
  br label %68

68:                                               ; preds = %65, %16, %10
  store i32 0, ptr %2, align 4, !tbaa !434
  %69 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 11
  %70 = load ptr, ptr %69, align 8, !tbaa !175
  %71 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  %72 = load i32, ptr %71, align 8, !tbaa !435
  tail call fastcc void @emit_buffered_bits(ptr noundef nonnull %0, ptr noundef %70, i32 noundef %72) #26
  store i32 0, ptr %71, align 8, !tbaa !435
  br label %73

73:                                               ; preds = %68, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @flush_bits.21(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !427
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %44

6:                                                ; preds = %1
  %7 = load i32, ptr %2, align 8, !tbaa !437
  %8 = icmp sgt i32 %7, 0
  br i1 %8, label %9, label %44

9:                                                ; preds = %6
  %10 = sub nsw i32 17, %7
  %11 = zext i32 %10 to i64
  %12 = shl i64 127, %11
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %14 = load i64, ptr %13, align 8, !tbaa !436
  %15 = or i64 %14, %12
  %16 = add nuw nsw i32 %7, 7
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %18 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  br label %19

19:                                               ; preds = %40, %9
  %20 = phi i64 [ %15, %9 ], [ %41, %40 ]
  %21 = phi i32 [ %16, %9 ], [ %42, %40 ]
  %22 = lshr i64 %20, 16
  %23 = trunc i64 %22 to i8
  %24 = load ptr, ptr %17, align 8, !tbaa !540
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  store ptr %25, ptr %17, align 8, !tbaa !540
  store i8 %23, ptr %24, align 1, !tbaa !11
  %26 = load i64, ptr %18, align 8, !tbaa !541
  %27 = add i64 %26, -1
  store i64 %27, ptr %18, align 8, !tbaa !541
  %28 = icmp eq i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %30

30:                                               ; preds = %29, %19
  %31 = and i64 %20, 16711680
  %32 = icmp eq i64 %31, 16711680
  br i1 %32, label %33, label %40

33:                                               ; preds = %30
  %34 = load ptr, ptr %17, align 8, !tbaa !540
  %35 = getelementptr inbounds i8, ptr %34, i64 1
  store ptr %35, ptr %17, align 8, !tbaa !540
  store i8 0, ptr %34, align 1, !tbaa !11
  %36 = load i64, ptr %18, align 8, !tbaa !541
  %37 = add i64 %36, -1
  store i64 %37, ptr %18, align 8, !tbaa !541
  %38 = icmp eq i64 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %33
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %40

40:                                               ; preds = %39, %33, %30
  %41 = shl i64 %20, 8
  %42 = add nsw i32 %21, -8
  %43 = icmp sgt i32 %21, 15
  br i1 %43, label %19, label %44, !llvm.loop !542

44:                                               ; preds = %40, %6, %1
  %45 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  store i64 0, ptr %45, align 8, !tbaa !436
  store i32 0, ptr %2, align 8, !tbaa !437
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @dump_buffer(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %3 = load ptr, ptr %2, align 8, !tbaa !426
  %4 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %3, i64 0, i32 5
  %5 = load ptr, ptr %4, align 8, !tbaa !48
  %6 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 3
  %7 = load ptr, ptr %6, align 8, !tbaa !467
  %8 = tail call i32 %7(ptr noundef %3) #25
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %10, label %15

10:                                               ; preds = %1
  %11 = load ptr, ptr %2, align 8, !tbaa !426
  %12 = load ptr, ptr %11, align 8, !tbaa !25
  %13 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %12, i64 0, i32 5
  store i32 22, ptr %13, align 8, !tbaa !22
  %14 = load ptr, ptr %12, align 8, !tbaa !12
  tail call void %14(ptr noundef nonnull %11) #25
  br label %15

15:                                               ; preds = %10, %1
  %16 = load ptr, ptr %5, align 8, !tbaa !465
  %17 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  store ptr %16, ptr %17, align 8, !tbaa !540
  %18 = getelementptr inbounds %struct.jpeg_destination_mgr, ptr %5, i64 0, i32 1
  %19 = load i64, ptr %18, align 8, !tbaa !466
  %20 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  store i64 %19, ptr %20, align 8, !tbaa !541
  ret void
}

; Function Attrs: inlinehint nounwind optsize uwtable
define internal fastcc void @emit_symbol(ptr nocapture noundef %0, i32 noundef %1, i32 noundef %2) unnamed_addr #17 {
  %4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !427
  %6 = icmp eq i32 %5, 0
  %7 = sext i32 %1 to i64
  %8 = sext i32 %2 to i64
  br i1 %6, label %15, label %9

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 15, i64 %7
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = getelementptr inbounds i64, ptr %11, i64 %8
  %13 = load i64, ptr %12, align 8, !tbaa !31
  %14 = add nsw i64 %13, 1
  store i64 %14, ptr %12, align 8, !tbaa !31
  br label %79

15:                                               ; preds = %3
  %16 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 14, i64 %7
  %17 = load ptr, ptr %16, align 8, !tbaa !7
  %18 = getelementptr inbounds [256 x i32], ptr %17, i64 0, i64 %8
  %19 = load i32, ptr %18, align 4, !tbaa !121
  %20 = getelementptr inbounds %struct.c_derived_tbl, ptr %17, i64 0, i32 1, i64 %8
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = sext i8 %21 to i32
  %23 = zext i32 %19 to i64
  %24 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %25 = load i32, ptr %24, align 8, !tbaa !437
  %26 = icmp eq i8 %21, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %15
  %28 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %29 = load ptr, ptr %28, align 8, !tbaa !426
  %30 = load ptr, ptr %29, align 8, !tbaa !25
  %31 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %30, i64 0, i32 5
  store i32 39, ptr %31, align 8, !tbaa !22
  %32 = load ptr, ptr %30, align 8, !tbaa !12
  tail call void %32(ptr noundef nonnull %29) #25
  %33 = load i32, ptr %4, align 8, !tbaa !427
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %79

35:                                               ; preds = %27, %15
  %36 = zext i32 %22 to i64
  %37 = shl nsw i64 -1, %36
  %38 = xor i64 %37, -1
  %39 = and i64 %38, %23
  %40 = add nsw i32 %25, %22
  %41 = sub nsw i32 24, %40
  %42 = zext i32 %41 to i64
  %43 = shl i64 %39, %42
  %44 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %45 = load i64, ptr %44, align 8, !tbaa !436
  %46 = or i64 %45, %43
  %47 = icmp sgt i32 %40, 7
  br i1 %47, label %48, label %76

48:                                               ; preds = %35
  %49 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %50 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  br label %51

51:                                               ; preds = %72, %48
  %52 = phi i64 [ %46, %48 ], [ %73, %72 ]
  %53 = phi i32 [ %40, %48 ], [ %74, %72 ]
  %54 = lshr i64 %52, 16
  %55 = trunc i64 %54 to i8
  %56 = load ptr, ptr %49, align 8, !tbaa !540
  %57 = getelementptr inbounds i8, ptr %56, i64 1
  store ptr %57, ptr %49, align 8, !tbaa !540
  store i8 %55, ptr %56, align 1, !tbaa !11
  %58 = load i64, ptr %50, align 8, !tbaa !541
  %59 = add i64 %58, -1
  store i64 %59, ptr %50, align 8, !tbaa !541
  %60 = icmp eq i64 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %51
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %62

62:                                               ; preds = %61, %51
  %63 = and i64 %52, 16711680
  %64 = icmp eq i64 %63, 16711680
  br i1 %64, label %65, label %72

65:                                               ; preds = %62
  %66 = load ptr, ptr %49, align 8, !tbaa !540
  %67 = getelementptr inbounds i8, ptr %66, i64 1
  store ptr %67, ptr %49, align 8, !tbaa !540
  store i8 0, ptr %66, align 1, !tbaa !11
  %68 = load i64, ptr %50, align 8, !tbaa !541
  %69 = add i64 %68, -1
  store i64 %69, ptr %50, align 8, !tbaa !541
  %70 = icmp eq i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %72

72:                                               ; preds = %71, %65, %62
  %73 = shl i64 %52, 8
  %74 = add nsw i32 %53, -8
  %75 = icmp sgt i32 %53, 15
  br i1 %75, label %51, label %76, !llvm.loop !542

76:                                               ; preds = %72, %35
  %77 = phi i32 [ %40, %35 ], [ %74, %72 ]
  %78 = phi i64 [ %46, %35 ], [ %73, %72 ]
  store i64 %78, ptr %44, align 8, !tbaa !436
  store i32 %77, ptr %24, align 8, !tbaa !437
  br label %79

79:                                               ; preds = %76, %27, %9
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_buffered_bits(ptr nocapture noundef %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %5 = load i32, ptr %4, align 8, !tbaa !427
  %6 = icmp eq i32 %5, 0
  %7 = icmp ne i32 %2, 0
  %8 = and i1 %7, %6
  br i1 %8, label %9, label %63

9:                                                ; preds = %3
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 5
  %11 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 4
  %12 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %13 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  br label %14

14:                                               ; preds = %59, %9
  %15 = phi ptr [ %60, %59 ], [ %1, %9 ]
  %16 = phi i32 [ %61, %59 ], [ %2, %9 ]
  %17 = load i32, ptr %4, align 8, !tbaa !427
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %14
  %20 = load i32, ptr %10, align 8, !tbaa !437
  %21 = load i8, ptr %15, align 1, !tbaa !11
  %22 = and i8 %21, 1
  %23 = zext i8 %22 to i64
  %24 = add nsw i32 %20, 1
  %25 = sub nsw i32 23, %20
  %26 = zext i32 %25 to i64
  %27 = shl nuw i64 %23, %26
  %28 = load i64, ptr %11, align 8, !tbaa !436
  %29 = or i64 %27, %28
  %30 = icmp sgt i32 %20, 6
  br i1 %30, label %31, label %56

31:                                               ; preds = %52, %19
  %32 = phi i64 [ %53, %52 ], [ %29, %19 ]
  %33 = phi i32 [ %54, %52 ], [ %24, %19 ]
  %34 = lshr i64 %32, 16
  %35 = trunc i64 %34 to i8
  %36 = load ptr, ptr %12, align 8, !tbaa !540
  %37 = getelementptr inbounds i8, ptr %36, i64 1
  store ptr %37, ptr %12, align 8, !tbaa !540
  store i8 %35, ptr %36, align 1, !tbaa !11
  %38 = load i64, ptr %13, align 8, !tbaa !541
  %39 = add i64 %38, -1
  store i64 %39, ptr %13, align 8, !tbaa !541
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %31
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %42

42:                                               ; preds = %41, %31
  %43 = and i64 %32, 16711680
  %44 = icmp eq i64 %43, 16711680
  br i1 %44, label %45, label %52

45:                                               ; preds = %42
  %46 = load ptr, ptr %12, align 8, !tbaa !540
  %47 = getelementptr inbounds i8, ptr %46, i64 1
  store ptr %47, ptr %12, align 8, !tbaa !540
  store i8 0, ptr %46, align 1, !tbaa !11
  %48 = load i64, ptr %13, align 8, !tbaa !541
  %49 = add i64 %48, -1
  store i64 %49, ptr %13, align 8, !tbaa !541
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %45
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %52

52:                                               ; preds = %51, %45, %42
  %53 = shl i64 %32, 8
  %54 = add nsw i32 %33, -8
  %55 = icmp sgt i32 %33, 15
  br i1 %55, label %31, label %56, !llvm.loop !542

56:                                               ; preds = %52, %19
  %57 = phi i32 [ %24, %19 ], [ %54, %52 ]
  %58 = phi i64 [ %29, %19 ], [ %53, %52 ]
  store i64 %58, ptr %11, align 8, !tbaa !436
  store i32 %57, ptr %10, align 8, !tbaa !437
  br label %59

59:                                               ; preds = %56, %14
  %60 = getelementptr inbounds i8, ptr %15, i64 1
  %61 = add i32 %16, -1
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %14

63:                                               ; preds = %59, %3
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @emit_restart(ptr nocapture noundef %0, i32 noundef %1) unnamed_addr #2 {
  tail call fastcc void @emit_eobrun(ptr noundef %0) #26
  %3 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 1
  %4 = load i32, ptr %3, align 8, !tbaa !427
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %6, label %24

6:                                                ; preds = %2
  tail call fastcc void @flush_bits.21(ptr noundef nonnull %0) #26
  %7 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 2
  %8 = load ptr, ptr %7, align 8, !tbaa !540
  %9 = getelementptr inbounds i8, ptr %8, i64 1
  store ptr %9, ptr %7, align 8, !tbaa !540
  store i8 -1, ptr %8, align 1, !tbaa !11
  %10 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 3
  %11 = load i64, ptr %10, align 8, !tbaa !541
  %12 = add i64 %11, -1
  store i64 %12, ptr %10, align 8, !tbaa !541
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %6
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %15

15:                                               ; preds = %14, %6
  %16 = trunc i32 %1 to i8
  %17 = add i8 %16, -48
  %18 = load ptr, ptr %7, align 8, !tbaa !540
  %19 = getelementptr inbounds i8, ptr %18, i64 1
  store ptr %19, ptr %7, align 8, !tbaa !540
  store i8 %17, ptr %18, align 1, !tbaa !11
  %20 = load i64, ptr %10, align 8, !tbaa !541
  %21 = add i64 %20, -1
  store i64 %21, ptr %10, align 8, !tbaa !541
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  tail call fastcc void @dump_buffer(ptr noundef nonnull %0) #26
  br label %24

24:                                               ; preds = %23, %15, %2
  %25 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 6
  %26 = load ptr, ptr %25, align 8, !tbaa !426
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 47
  %28 = load i32, ptr %27, align 4, !tbaa !359
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %41

30:                                               ; preds = %24
  %31 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %26, i64 0, i32 41
  %32 = load i32, ptr %31, align 4, !tbaa !429
  %33 = icmp sgt i32 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %34, %30
  %35 = phi i64 [ %37, %34 ], [ 0, %30 ]
  %36 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 7, i64 %35
  store i32 0, ptr %36, align 4, !tbaa !121
  %37 = add nuw nsw i64 %35, 1
  %38 = load i32, ptr %31, align 4, !tbaa !429
  %39 = sext i32 %38 to i64
  %40 = icmp slt i64 %37, %39
  br i1 %40, label %34, label %44, !llvm.loop !554

41:                                               ; preds = %24
  %42 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 9
  store i32 0, ptr %42, align 4, !tbaa !434
  %43 = getelementptr inbounds %struct.phuff_entropy_encoder, ptr %0, i64 0, i32 10
  store i32 0, ptr %43, align 8, !tbaa !435
  br label %44

44:                                               ; preds = %41, %34, %30
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #12

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @select_scan_parameters(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 22
  %3 = load ptr, ptr %2, align 8, !tbaa !116
  %4 = icmp eq ptr %3, null
  br i1 %4, label %37, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 51
  %7 = load ptr, ptr %6, align 8, !tbaa !90
  %8 = getelementptr inbounds %struct.my_comp_master, ptr %7, i64 0, i32 4
  %9 = load i32, ptr %8, align 4, !tbaa !134
  %10 = sext i32 %9 to i64
  %11 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10
  %12 = load i32, ptr %11, align 4, !tbaa !122
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %12, ptr %13, align 4, !tbaa !429
  %14 = icmp sgt i32 %12, 0
  br i1 %14, label %15, label %28

15:                                               ; preds = %5
  %16 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %17 = load ptr, ptr %16, align 8, !tbaa !57
  %18 = zext i32 %12 to i64
  br label %19

19:                                               ; preds = %19, %15
  %20 = phi i64 [ 0, %15 ], [ %26, %19 ]
  %21 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 1, i64 %20
  %22 = load i32, ptr %21, align 4, !tbaa !121
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %17, i64 %23
  %25 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %20
  store ptr %24, ptr %25, align 8, !tbaa !7
  %26 = add nuw nsw i64 %20, 1
  %27 = icmp eq i64 %26, %18
  br i1 %27, label %28, label %19, !llvm.loop !555

28:                                               ; preds = %19, %5
  %29 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 2
  %30 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  %31 = load <2 x i32>, ptr %29, align 4, !tbaa !121
  store <2 x i32> %31, ptr %30, align 4, !tbaa !121
  %32 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 4
  %33 = load i32, ptr %32, align 4, !tbaa !124
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 %33, ptr %34, align 4, !tbaa !360
  %35 = getelementptr inbounds %struct.jpeg_scan_info, ptr %3, i64 %10, i32 5
  %36 = load i32, ptr %35, align 4, !tbaa !125
  br label %85

37:                                               ; preds = %1
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  %39 = load i32, ptr %38, align 4, !tbaa !100
  %40 = icmp sgt i32 %39, 4
  br i1 %40, label %41, label %50

41:                                               ; preds = %37
  %42 = load ptr, ptr %0, align 8, !tbaa !25
  %43 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 5
  store i32 24, ptr %43, align 8, !tbaa !22
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %42, i64 0, i32 6
  store i32 %39, ptr %44, align 4, !tbaa !11
  %45 = load ptr, ptr %0, align 8, !tbaa !25
  %46 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %45, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %46, align 4, !tbaa !11
  %47 = load ptr, ptr %0, align 8, !tbaa !25
  %48 = load ptr, ptr %47, align 8, !tbaa !12
  tail call void %48(ptr noundef nonnull %0) #25
  %49 = load i32, ptr %38, align 4, !tbaa !100
  br label %50

50:                                               ; preds = %41, %37
  %51 = phi i32 [ %49, %41 ], [ %39, %37 ]
  %52 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  store i32 %51, ptr %52, align 4, !tbaa !429
  %53 = icmp sgt i32 %51, 0
  br i1 %53, label %54, label %81

54:                                               ; preds = %50
  %55 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %56 = load ptr, ptr %55, align 8, !tbaa !57
  %57 = zext i32 %51 to i64
  %58 = add nuw nsw i64 %57, 1
  %59 = and i64 %58, 8589934590
  %60 = add nsw i64 %57, -1
  %61 = insertelement <2 x i64> poison, i64 %60, i64 0
  %62 = shufflevector <2 x i64> %61, <2 x i64> poison, <2 x i32> zeroinitializer
  br label %63

63:                                               ; preds = %77, %54
  %64 = phi i64 [ 0, %54 ], [ %78, %77 ]
  %65 = phi <2 x i64> [ <i64 0, i64 1>, %54 ], [ %79, %77 ]
  %66 = icmp ule <2 x i64> %65, %62
  %67 = extractelement <2 x i1> %66, i64 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %63
  %69 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %64
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %56, i64 %64
  store ptr %70, ptr %69, align 8, !tbaa !7
  br label %71

71:                                               ; preds = %68, %63
  %72 = extractelement <2 x i1> %66, i64 1
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = or i64 %64, 1
  %75 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %74
  %76 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %56, i64 %74
  store ptr %76, ptr %75, align 8, !tbaa !7
  br label %77

77:                                               ; preds = %73, %71
  %78 = add nuw nsw i64 %64, 2
  %79 = add <2 x i64> %65, <i64 2, i64 2>
  %80 = icmp eq i64 %78, %59
  br i1 %80, label %81, label %63, !llvm.loop !556

81:                                               ; preds = %77, %50
  %82 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 47
  store i32 0, ptr %82, align 4, !tbaa !359
  %83 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 48
  store i32 63, ptr %83, align 8, !tbaa !461
  %84 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 49
  store i32 0, ptr %84, align 4, !tbaa !360
  br label %85

85:                                               ; preds = %81, %28
  %86 = phi i32 [ 0, %81 ], [ %36, %28 ]
  %87 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 50
  store i32 %86, ptr %87, align 8, !tbaa !462
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @per_scan_setup(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 41
  %3 = load i32, ptr %2, align 4, !tbaa !429
  %4 = icmp eq i32 %3, 1
  br i1 %4, label %5, label %24

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42
  %7 = load ptr, ptr %6, align 8, !tbaa !7
  %8 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 7
  %9 = load i32, ptr %8, align 4, !tbaa !109
  %10 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %9, ptr %10, align 8, !tbaa !479
  %11 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 8
  %12 = load i32, ptr %11, align 8, !tbaa !110
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %12, ptr %13, align 4, !tbaa !557
  %14 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 13
  store <4 x i32> <i32 1, i32 1, i32 1, i32 8>, ptr %14, align 4, !tbaa !121
  %15 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 17
  store i32 1, ptr %15, align 4, !tbaa !558
  %16 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 3
  %17 = load i32, ptr %16, align 4, !tbaa !105
  %18 = urem i32 %12, %17
  %19 = icmp eq i32 %18, 0
  %20 = select i1 %19, i32 %17, i32 %18
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %7, i64 0, i32 18
  store i32 %20, ptr %21, align 8, !tbaa !476
  %22 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 1, ptr %22, align 8, !tbaa !505
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46
  store i32 0, ptr %23, align 4, !tbaa !121
  br label %114

24:                                               ; preds = %1
  %25 = add i32 %3, -5
  %26 = icmp ult i32 %25, -4
  br i1 %26, label %27, label %36

27:                                               ; preds = %24
  %28 = load ptr, ptr %0, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 24, ptr %29, align 8, !tbaa !22
  %30 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 6
  store i32 %3, ptr %30, align 4, !tbaa !11
  %31 = load ptr, ptr %0, align 8, !tbaa !25
  %32 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %31, i64 0, i32 6, i32 0, i64 1
  store i32 4, ptr %32, align 4, !tbaa !11
  %33 = load ptr, ptr %0, align 8, !tbaa !25
  %34 = load ptr, ptr %33, align 8, !tbaa !12
  tail call void %34(ptr noundef nonnull %0) #25
  %35 = load i32, ptr %2, align 4, !tbaa !429
  br label %36

36:                                               ; preds = %27, %24
  %37 = phi i32 [ %35, %27 ], [ %3, %24 ]
  %38 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %39 = load i32, ptr %38, align 8, !tbaa !98
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 38
  %42 = load i32, ptr %41, align 8, !tbaa !101
  %43 = shl nsw i32 %42, 3
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, -1
  %46 = add nsw i64 %45, %44
  %47 = sdiv i64 %46, %44
  %48 = trunc i64 %47 to i32
  %49 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  store i32 %48, ptr %49, align 8, !tbaa !479
  %50 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %51 = load i32, ptr %50, align 4, !tbaa !97
  %52 = zext i32 %51 to i64
  %53 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 39
  %54 = load i32, ptr %53, align 4, !tbaa !102
  %55 = shl nsw i32 %54, 3
  %56 = sext i32 %55 to i64
  %57 = add nsw i64 %52, -1
  %58 = add nsw i64 %57, %56
  %59 = sdiv i64 %58, %56
  %60 = trunc i64 %59 to i32
  %61 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 44
  store i32 %60, ptr %61, align 4, !tbaa !557
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 45
  store i32 0, ptr %62, align 8, !tbaa !505
  %63 = icmp sgt i32 %37, 0
  br i1 %63, label %64, label %114

64:                                               ; preds = %109, %36
  %65 = phi i64 [ %110, %109 ], [ 0, %36 ]
  %66 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 42, i64 %65
  %67 = load ptr, ptr %66, align 8, !tbaa !7
  %68 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 2
  %69 = load i32, ptr %68, align 8, !tbaa !103
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 13
  store i32 %69, ptr %70, align 4, !tbaa !483
  %71 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 3
  %72 = load i32, ptr %71, align 4, !tbaa !105
  %73 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 14
  store i32 %72, ptr %73, align 8, !tbaa !481
  %74 = mul nsw i32 %72, %69
  %75 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 15
  store i32 %74, ptr %75, align 4, !tbaa !559
  %76 = shl nsw i32 %69, 3
  %77 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 16
  store i32 %76, ptr %77, align 8, !tbaa !480
  %78 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 7
  %79 = load i32, ptr %78, align 4, !tbaa !109
  %80 = urem i32 %79, %69
  %81 = icmp eq i32 %80, 0
  %82 = select i1 %81, i32 %69, i32 %80
  %83 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 17
  store i32 %82, ptr %83, align 4, !tbaa !558
  %84 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 8
  %85 = load i32, ptr %84, align 8, !tbaa !110
  %86 = urem i32 %85, %72
  %87 = icmp eq i32 %86, 0
  %88 = select i1 %87, i32 %72, i32 %86
  %89 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %67, i64 0, i32 18
  store i32 %88, ptr %89, align 8, !tbaa !476
  %90 = load i32, ptr %62, align 8, !tbaa !505
  %91 = add nsw i32 %90, %74
  %92 = icmp sgt i32 %91, 10
  br i1 %92, label %93, label %97

93:                                               ; preds = %64
  %94 = load ptr, ptr %0, align 8, !tbaa !25
  %95 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %94, i64 0, i32 5
  store i32 11, ptr %95, align 8, !tbaa !22
  %96 = load ptr, ptr %94, align 8, !tbaa !12
  tail call void %96(ptr noundef nonnull %0) #25
  br label %97

97:                                               ; preds = %93, %64
  %98 = icmp sgt i32 %74, 0
  br i1 %98, label %99, label %109

99:                                               ; preds = %97
  %100 = trunc i64 %65 to i32
  br label %101

101:                                              ; preds = %101, %99
  %102 = phi i32 [ %103, %101 ], [ %74, %99 ]
  %103 = add nsw i32 %102, -1
  %104 = load i32, ptr %62, align 8, !tbaa !505
  %105 = add nsw i32 %104, 1
  store i32 %105, ptr %62, align 8, !tbaa !505
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 46, i64 %106
  store i32 %100, ptr %107, align 4, !tbaa !121
  %108 = icmp ugt i32 %102, 1
  br i1 %108, label %101, label %109, !llvm.loop !560

109:                                              ; preds = %101, %97
  %110 = add nuw nsw i64 %65, 1
  %111 = load i32, ptr %2, align 4, !tbaa !429
  %112 = sext i32 %111 to i64
  %113 = icmp slt i64 %110, %112
  br i1 %113, label %64, label %114, !llvm.loop !561

114:                                              ; preds = %109, %36, %5
  %115 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 30
  %116 = load i32, ptr %115, align 4, !tbaa !280
  %117 = icmp sgt i32 %116, 0
  br i1 %117, label %118, label %127

118:                                              ; preds = %114
  %119 = zext i32 %116 to i64
  %120 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 43
  %121 = load i32, ptr %120, align 8, !tbaa !479
  %122 = zext i32 %121 to i64
  %123 = mul nuw nsw i64 %122, %119
  %124 = tail call i64 @llvm.umin.i64(i64 %123, i64 65535)
  %125 = trunc i64 %124 to i32
  %126 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 29
  store i32 %125, ptr %126, align 8, !tbaa !279
  br label %127

127:                                              ; preds = %118, %114
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #12

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fwrite(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize
declare noundef i32 @fflush(ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize memory(read)
declare noundef i32 @ferror(ptr nocapture noundef) local_unnamed_addr #7

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @read_pbm_integer(ptr noundef %0, ptr nocapture noundef %1) unnamed_addr #2 {
  br label %3

3:                                                ; preds = %5, %2
  %4 = tail call fastcc i32 @pbm_getc(ptr noundef %1) #26
  switch i32 %4, label %10 [
    i32 -1, label %6
    i32 32, label %5
    i32 13, label %5
    i32 10, label %5
    i32 9, label %5
  ]

5:                                                ; preds = %3, %3, %3, %3
  br label %3

6:                                                ; preds = %3
  %.lcssa2 = phi i32 [ %4, %3 ]
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 42, ptr %8, align 8, !tbaa !22
  %9 = load ptr, ptr %7, align 8, !tbaa !12
  tail call void %9(ptr noundef nonnull %0) #25
  br label %13

10:                                               ; preds = %3
  %.lcssa1 = phi i32 [ %4, %3 ]
  %11 = add i32 %.lcssa1, -58
  %12 = icmp ult i32 %11, -10
  br i1 %12, label %13, label %18

13:                                               ; preds = %10, %6
  %14 = phi i32 [ %.lcssa1, %10 ], [ %.lcssa2, %6 ]
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 1026, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %17(ptr noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %13, %10
  %19 = phi i32 [ %14, %13 ], [ %.lcssa1, %10 ]
  %20 = add nsw i32 %19, -48
  br label %21

21:                                               ; preds = %26, %18
  %22 = phi i32 [ %20, %18 ], [ %28, %26 ]
  %23 = tail call fastcc i32 @pbm_getc(ptr noundef %1) #26
  %24 = add i32 %23, -48
  %25 = icmp ult i32 %24, 10
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = mul i32 %22, 10
  %28 = add i32 %24, %27
  br label %21, !llvm.loop !562

29:                                               ; preds = %21
  %.lcssa = phi i32 [ %22, %21 ]
  ret i32 %.lcssa
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_word_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !338
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #26
  %12 = load i64, ptr %7, align 8, !tbaa !340
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %17(ptr noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !341
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !342
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %33, %27 ], [ %23, %22 ]
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 2
  %34 = getelementptr inbounds i8, ptr %4, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %35, ptr %28, align 1, !tbaa !11
  %37 = add i32 %29, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !563

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_raw_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %4 = load ptr, ptr %3, align 8, !tbaa !341
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %6 = load i64, ptr %5, align 8, !tbaa !340
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %8 = load ptr, ptr %7, align 8, !tbaa !338
  %9 = tail call i64 @fread(ptr noundef %4, i64 noundef 1, i64 noundef %6, ptr noundef %8) #26
  %10 = load i64, ptr %5, align 8, !tbaa !340
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load ptr, ptr %0, align 8, !tbaa !25
  %14 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %13, i64 0, i32 5
  store i32 42, ptr %14, align 8, !tbaa !22
  %15 = load ptr, ptr %13, align 8, !tbaa !12
  tail call void %15(ptr noundef nonnull %0) #25
  br label %16

16:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_scaled_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !338
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #26
  %12 = load i64, ptr %7, align 8, !tbaa !340
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %17(ptr noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %39, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !341
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !342
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %37, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %36, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %31, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !11
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !11
  %37 = add i32 %28, -1
  %38 = icmp eq i32 %37, 0
  br i1 %38, label %39, label %27, !llvm.loop !564

39:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_word_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !338
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #26
  %12 = load i64, ptr %7, align 8, !tbaa !340
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %17(ptr noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !341
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !342
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %29 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %30 = phi ptr [ %45, %27 ], [ %23, %22 ]
  %31 = load i16, ptr %30, align 1
  %32 = zext i16 %31 to i64
  %33 = getelementptr inbounds i8, ptr %30, i64 2
  %34 = getelementptr inbounds i8, ptr %4, i64 %32
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = getelementptr inbounds i8, ptr %28, i64 1
  store i8 %35, ptr %28, align 1, !tbaa !11
  %37 = load i16, ptr %33, align 1
  %38 = zext i16 %37 to i64
  %39 = getelementptr inbounds i8, ptr %30, i64 4
  %40 = getelementptr inbounds i8, ptr %4, i64 %38
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = getelementptr inbounds i8, ptr %28, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !11
  %43 = load i16, ptr %39, align 1
  %44 = zext i16 %43 to i64
  %45 = getelementptr inbounds i8, ptr %30, i64 6
  %46 = getelementptr inbounds i8, ptr %4, i64 %44
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = getelementptr inbounds i8, ptr %28, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !11
  %49 = add i32 %29, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !565

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_scaled_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %4 = load ptr, ptr %3, align 8, !tbaa !345
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 1
  %6 = load ptr, ptr %5, align 8, !tbaa !341
  %7 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 3
  %8 = load i64, ptr %7, align 8, !tbaa !340
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %10 = load ptr, ptr %9, align 8, !tbaa !338
  %11 = tail call i64 @fread(ptr noundef %6, i64 noundef 1, i64 noundef %8, ptr noundef %10) #26
  %12 = load i64, ptr %7, align 8, !tbaa !340
  %13 = icmp eq i64 %11, %12
  br i1 %13, label %18, label %14

14:                                               ; preds = %2
  %15 = load ptr, ptr %0, align 8, !tbaa !25
  %16 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %15, i64 0, i32 5
  store i32 42, ptr %16, align 8, !tbaa !22
  %17 = load ptr, ptr %15, align 8, !tbaa !12
  tail call void %17(ptr noundef nonnull %0) #25
  br label %18

18:                                               ; preds = %14, %2
  %19 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %20 = load i32, ptr %19, align 8, !tbaa !98
  %21 = icmp eq i32 %20, 0
  br i1 %21, label %51, label %22

22:                                               ; preds = %18
  %23 = load ptr, ptr %5, align 8, !tbaa !341
  %24 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %25 = load ptr, ptr %24, align 8, !tbaa !342
  %26 = load ptr, ptr %25, align 8, !tbaa !7
  br label %27

27:                                               ; preds = %27, %22
  %28 = phi i32 [ %49, %27 ], [ %20, %22 ]
  %29 = phi ptr [ %48, %27 ], [ %26, %22 ]
  %30 = phi ptr [ %43, %27 ], [ %23, %22 ]
  %31 = getelementptr inbounds i8, ptr %30, i64 1
  %32 = load i8, ptr %30, align 1, !tbaa !11
  %33 = zext i8 %32 to i64
  %34 = getelementptr inbounds i8, ptr %4, i64 %33
  %35 = load i8, ptr %34, align 1, !tbaa !11
  %36 = getelementptr inbounds i8, ptr %29, i64 1
  store i8 %35, ptr %29, align 1, !tbaa !11
  %37 = getelementptr inbounds i8, ptr %30, i64 2
  %38 = load i8, ptr %31, align 1, !tbaa !11
  %39 = zext i8 %38 to i64
  %40 = getelementptr inbounds i8, ptr %4, i64 %39
  %41 = load i8, ptr %40, align 1, !tbaa !11
  %42 = getelementptr inbounds i8, ptr %29, i64 2
  store i8 %41, ptr %36, align 1, !tbaa !11
  %43 = getelementptr inbounds i8, ptr %30, i64 3
  %44 = load i8, ptr %37, align 1, !tbaa !11
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i8, ptr %4, i64 %45
  %47 = load i8, ptr %46, align 1, !tbaa !11
  %48 = getelementptr inbounds i8, ptr %29, i64 3
  store i8 %47, ptr %42, align 1, !tbaa !11
  %49 = add i32 %28, -1
  %50 = icmp eq i32 %49, 0
  br i1 %50, label %51, label %27, !llvm.loop !566

51:                                               ; preds = %27, %18
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_text_rgb_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !338
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !345
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %34, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !342
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %32, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %31, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #26
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !11
  %22 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #26
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds i8, ptr %6, i64 %23
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %25, ptr %21, align 1, !tbaa !11
  %27 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #26
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i8, ptr %6, i64 %28
  %30 = load i8, ptr %29, align 1, !tbaa !11
  %31 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %30, ptr %26, align 1, !tbaa !11
  %32 = add i32 %15, -1
  %33 = icmp eq i32 %32, 0
  br i1 %33, label %34, label %14, !llvm.loop !567

34:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_text_gray_row(ptr noundef %0, ptr nocapture noundef readonly %1) #2 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !338
  %5 = getelementptr inbounds %struct.ppm_source_struct, ptr %1, i64 0, i32 4
  %6 = load ptr, ptr %5, align 8, !tbaa !345
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %8 = load i32, ptr %7, align 8, !tbaa !98
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %24, label %10

10:                                               ; preds = %2
  %11 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %12 = load ptr, ptr %11, align 8, !tbaa !342
  %13 = load ptr, ptr %12, align 8, !tbaa !7
  br label %14

14:                                               ; preds = %14, %10
  %15 = phi i32 [ %22, %14 ], [ %8, %10 ]
  %16 = phi ptr [ %21, %14 ], [ %13, %10 ]
  %17 = tail call fastcc i32 @read_pbm_integer(ptr noundef %0, ptr noundef %4) #26
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds i8, ptr %6, i64 %18
  %20 = load i8, ptr %19, align 1, !tbaa !11
  %21 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %20, ptr %16, align 1, !tbaa !11
  %22 = add i32 %15, -1
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %14, !llvm.loop !568

24:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nofree nounwind optsize
declare noundef i64 @fread(ptr nocapture noundef, i64 noundef, i64 noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @pbm_getc(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @getc(ptr noundef %0) #26
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %6

4:                                                ; preds = %4, %1
  %5 = tail call i32 @getc(ptr noundef %0) #26
  switch i32 %5, label %4 [
    i32 -1, label %6
    i32 10, label %6
  ]

6:                                                ; preds = %4, %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @ReadColorMap(ptr nocapture noundef readonly %0, i32 noundef %1, ptr nocapture noundef readonly %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %5 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %6 = getelementptr inbounds ptr, ptr %2, i64 1
  %7 = getelementptr inbounds ptr, ptr %2, i64 2
  %8 = zext i32 %1 to i64
  br label %9

9:                                                ; preds = %43, %3
  %10 = phi i64 [ 0, %3 ], [ %47, %43 ]
  %11 = load ptr, ptr %4, align 8, !tbaa !320
  %12 = tail call i32 @getc(ptr noundef %11) #26
  %13 = icmp eq i32 %12, -1
  br i1 %13, label %14, label %19

14:                                               ; preds = %9
  %15 = load ptr, ptr %5, align 8, !tbaa !72
  %16 = load ptr, ptr %15, align 8, !tbaa !25
  %17 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %16, i64 0, i32 5
  store i32 42, ptr %17, align 8, !tbaa !22
  %18 = load ptr, ptr %16, align 8, !tbaa !12
  tail call void %18(ptr noundef nonnull %15) #25
  br label %19

19:                                               ; preds = %14, %9
  %20 = trunc i32 %12 to i8
  %21 = load ptr, ptr %2, align 8, !tbaa !7
  %22 = getelementptr inbounds i8, ptr %21, i64 %10
  store i8 %20, ptr %22, align 1, !tbaa !11
  %23 = load ptr, ptr %4, align 8, !tbaa !320
  %24 = tail call i32 @getc(ptr noundef %23) #26
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %26, label %31

26:                                               ; preds = %19
  %27 = load ptr, ptr %5, align 8, !tbaa !72
  %28 = load ptr, ptr %27, align 8, !tbaa !25
  %29 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %28, i64 0, i32 5
  store i32 42, ptr %29, align 8, !tbaa !22
  %30 = load ptr, ptr %28, align 8, !tbaa !12
  tail call void %30(ptr noundef nonnull %27) #25
  br label %31

31:                                               ; preds = %26, %19
  %32 = trunc i32 %24 to i8
  %33 = load ptr, ptr %6, align 8, !tbaa !7
  %34 = getelementptr inbounds i8, ptr %33, i64 %10
  store i8 %32, ptr %34, align 1, !tbaa !11
  %35 = load ptr, ptr %4, align 8, !tbaa !320
  %36 = tail call i32 @getc(ptr noundef %35) #26
  %37 = icmp eq i32 %36, -1
  br i1 %37, label %38, label %43

38:                                               ; preds = %31
  %39 = load ptr, ptr %5, align 8, !tbaa !72
  %40 = load ptr, ptr %39, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 42, ptr %41, align 8, !tbaa !22
  %42 = load ptr, ptr %40, align 8, !tbaa !12
  tail call void %42(ptr noundef nonnull %39) #25
  br label %43

43:                                               ; preds = %38, %31
  %44 = trunc i32 %36 to i8
  %45 = load ptr, ptr %7, align 8, !tbaa !7
  %46 = getelementptr inbounds i8, ptr %45, i64 %10
  store i8 %44, ptr %46, align 1, !tbaa !11
  %47 = add nuw nsw i64 %10, 1
  %48 = icmp eq i64 %47, %8
  br i1 %48, label %49, label %9, !llvm.loop !569

49:                                               ; preds = %43
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GetDataBlock(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !320
  %5 = tail call i32 @getc(ptr noundef %4) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %14, label %7

7:                                                ; preds = %2
  %8 = icmp sgt i32 %5, 0
  br i1 %8, label %9, label %20

9:                                                ; preds = %7
  %10 = zext i32 %5 to i64
  %11 = load ptr, ptr %3, align 8, !tbaa !320
  %12 = tail call i64 @fread(ptr noundef %1, i64 noundef 1, i64 noundef %10, ptr noundef %11) #26
  %13 = icmp eq i64 %12, %10
  br i1 %13, label %20, label %14

14:                                               ; preds = %9, %2
  %15 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %16 = load ptr, ptr %15, align 8, !tbaa !72
  %17 = load ptr, ptr %16, align 8, !tbaa !25
  %18 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %17, i64 0, i32 5
  store i32 42, ptr %18, align 8, !tbaa !22
  %19 = load ptr, ptr %17, align 8, !tbaa !12
  tail call void %19(ptr noundef nonnull %16) #25
  br label %20

20:                                               ; preds = %14, %9, %7
  ret i32 %5
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @load_interlaced_image(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !97
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %45, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  br label %15

15:                                               ; preds = %40, %8
  %16 = phi i64 [ 0, %8 ], [ %41, %40 ]
  %17 = phi i32 [ %6, %8 ], [ %42, %40 ]
  br i1 %9, label %21, label %18

18:                                               ; preds = %15
  store i64 %16, ptr %10, align 8, !tbaa !570
  %19 = zext i32 %17 to i64
  store i64 %19, ptr %11, align 8, !tbaa !571
  %20 = load ptr, ptr %4, align 8, !tbaa !572
  tail call void %20(ptr noundef nonnull %0) #25
  br label %21

21:                                               ; preds = %18, %15
  %22 = load ptr, ptr %12, align 8, !tbaa !55
  %23 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %22, i64 0, i32 7
  %24 = load ptr, ptr %23, align 8, !tbaa !573
  %25 = load ptr, ptr %13, align 8, !tbaa !334
  %26 = trunc i64 %16 to i32
  %27 = tail call ptr %24(ptr noundef nonnull %0, ptr noundef %25, i32 noundef %26, i32 noundef 1, i32 noundef 1) #25
  %28 = load i32, ptr %14, align 8, !tbaa !98
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %40, label %30

30:                                               ; preds = %21
  %31 = load ptr, ptr %27, align 8, !tbaa !7
  br label %32

32:                                               ; preds = %32, %30
  %33 = phi ptr [ %37, %32 ], [ %31, %30 ]
  %34 = phi i32 [ %38, %32 ], [ %28, %30 ]
  %35 = tail call fastcc i32 @LZWReadByte(ptr noundef %1) #26
  %36 = trunc i32 %35 to i8
  %37 = getelementptr inbounds i8, ptr %33, i64 1
  store i8 %36, ptr %33, align 1, !tbaa !11
  %38 = add i32 %34, -1
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %32, !llvm.loop !574

40:                                               ; preds = %32, %21
  %41 = add nuw nsw i64 %16, 1
  %42 = load i32, ptr %5, align 4, !tbaa !97
  %43 = zext i32 %42 to i64
  %44 = icmp ult i64 %41, %43
  br i1 %44, label %15, label %45, !llvm.loop !575

45:                                               ; preds = %40, %2
  %46 = phi i32 [ 0, %2 ], [ %42, %40 ]
  %47 = icmp eq ptr %4, null
  br i1 %47, label %52, label %48

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %4, i64 0, i32 1
  %50 = load i32, ptr %49, align 8, !tbaa !576
  %51 = add nsw i32 %50, 1
  store i32 %51, ptr %49, align 8, !tbaa !576
  br label %52

52:                                               ; preds = %48, %45
  %53 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_interlaced_row, ptr %53, align 8, !tbaa !335
  %54 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  store i32 0, ptr %54, align 8, !tbaa !577
  %55 = add i32 %46, 7
  %56 = lshr i32 %55, 3
  %57 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 24
  store i32 %56, ptr %57, align 4, !tbaa !578
  %58 = add i32 %46, 3
  %59 = lshr i32 %58, 3
  %60 = add nuw nsw i32 %56, %59
  %61 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  store i32 %60, ptr %61, align 8, !tbaa !579
  %62 = add i32 %46, 1
  %63 = lshr i32 %62, 2
  %64 = add nuw nsw i32 %60, %63
  %65 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  store i32 %64, ptr %65, align 4, !tbaa !580
  %66 = tail call i32 @get_interlaced_row(ptr noundef nonnull %0, ptr noundef %1) #26
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_pixel_rows(ptr nocapture noundef readonly %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %33, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !336
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = getelementptr inbounds ptr, ptr %4, i64 1
  %13 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %14

14:                                               ; preds = %14, %8
  %15 = phi ptr [ %11, %8 ], [ %30, %14 ]
  %16 = phi i32 [ %6, %8 ], [ %31, %14 ]
  %17 = tail call fastcc i32 @LZWReadByte(ptr noundef %1) #26
  %18 = load ptr, ptr %4, align 8, !tbaa !7
  %19 = sext i32 %17 to i64
  %20 = getelementptr inbounds i8, ptr %18, i64 %19
  %21 = load i8, ptr %20, align 1, !tbaa !11
  %22 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %21, ptr %15, align 1, !tbaa !11
  %23 = load ptr, ptr %12, align 8, !tbaa !7
  %24 = getelementptr inbounds i8, ptr %23, i64 %19
  %25 = load i8, ptr %24, align 1, !tbaa !11
  %26 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %25, ptr %22, align 1, !tbaa !11
  %27 = load ptr, ptr %13, align 8, !tbaa !7
  %28 = getelementptr inbounds i8, ptr %27, i64 %19
  %29 = load i8, ptr %28, align 1, !tbaa !11
  %30 = getelementptr inbounds i8, ptr %15, i64 3
  store i8 %29, ptr %26, align 1, !tbaa !11
  %31 = add i32 %16, -1
  %32 = icmp eq i32 %31, 0
  br i1 %32, label %33, label %14, !llvm.loop !581

33:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @LZWReadByte(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = alloca [256 x i8], align 16
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 14
  %4 = load i32, ptr %3, align 4, !tbaa !329
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %9, label %6

6:                                                ; preds = %1
  store i32 0, ptr %3, align 4, !tbaa !329
  %7 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %8 = load i32, ptr %7, align 8, !tbaa !327
  br label %24

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  %11 = load ptr, ptr %10, align 8, !tbaa !333
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %13 = load ptr, ptr %12, align 8, !tbaa !326
  %14 = icmp ugt ptr %11, %13
  br i1 %14, label %15, label %19

15:                                               ; preds = %9
  %16 = getelementptr inbounds i8, ptr %11, i64 -1
  store ptr %16, ptr %10, align 8, !tbaa !333
  %17 = load i8, ptr %16, align 1, !tbaa !11
  %18 = zext i8 %17 to i32
  br label %152

19:                                               ; preds = %9
  %20 = tail call fastcc i32 @GetCode(ptr noundef nonnull %0) #26
  %21 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 9
  %22 = load i32, ptr %21, align 8, !tbaa !327
  %23 = icmp eq i32 %20, %22
  br i1 %23, label %24, label %55

24:                                               ; preds = %19, %6
  %25 = phi ptr [ %7, %6 ], [ %21, %19 ]
  %26 = phi i32 [ %8, %6 ], [ %20, %19 ]
  %27 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 8
  %28 = load i32, ptr %27, align 4, !tbaa !323
  %29 = add nsw i32 %28, 1
  %30 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  store i32 %29, ptr %30, align 8, !tbaa !330
  %31 = shl i32 %26, 1
  %32 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  store i32 %31, ptr %32, align 4, !tbaa !331
  %33 = add nsw i32 %26, 2
  %34 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  store i32 %33, ptr %34, align 8, !tbaa !332
  %35 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 19
  %36 = load ptr, ptr %35, align 8, !tbaa !326
  %37 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 20
  store ptr %36, ptr %37, align 8, !tbaa !333
  br label %38

38:                                               ; preds = %38, %24
  %39 = tail call fastcc i32 @GetCode(ptr noundef nonnull %0) #26
  %40 = load i32, ptr %25, align 8, !tbaa !327
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %38, label %42, !llvm.loop !582

42:                                               ; preds = %38
  %.lcssa1 = phi i32 [ %39, %38 ]
  %.lcssa = phi i32 [ %40, %38 ]
  %43 = icmp sgt i32 %.lcssa1, %.lcssa
  br i1 %43, label %44, label %51

44:                                               ; preds = %42
  %45 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !72
  %47 = load ptr, ptr %46, align 8, !tbaa !25
  %48 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 5
  store i32 1021, ptr %48, align 8, !tbaa !22
  %49 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %47, i64 0, i32 1
  %50 = load ptr, ptr %49, align 8, !tbaa !16
  tail call void %50(ptr noundef nonnull %46, i32 noundef -1) #25
  br label %51

51:                                               ; preds = %44, %42
  %52 = phi i32 [ 0, %44 ], [ %.lcssa1, %42 ]
  %53 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %52, ptr %53, align 8, !tbaa !583
  %54 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %52, ptr %54, align 4, !tbaa !584
  br label %152

55:                                               ; preds = %19
  %56 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %57 = load i32, ptr %56, align 4, !tbaa !328
  %58 = icmp eq i32 %20, %57
  br i1 %58, label %59, label %75

59:                                               ; preds = %55
  %60 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  %61 = load i32, ptr %60, align 8, !tbaa !585
  %62 = icmp eq i32 %61, 0
  br i1 %62, label %63, label %68

63:                                               ; preds = %59
  call void @llvm.lifetime.start.p0(i64 256, ptr nonnull %2) #23
  br label %64

64:                                               ; preds = %64, %63
  %65 = call fastcc i32 @GetDataBlock(ptr noundef %0, ptr noundef nonnull %2) #26
  %66 = icmp sgt i32 %65, 0
  br i1 %66, label %64, label %67, !llvm.loop !321

67:                                               ; preds = %64
  call void @llvm.lifetime.end.p0(i64 256, ptr nonnull %2) #23
  store i32 1, ptr %60, align 8, !tbaa !585
  br label %68

68:                                               ; preds = %67, %59
  %69 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %70 = load ptr, ptr %69, align 8, !tbaa !72
  %71 = load ptr, ptr %70, align 8, !tbaa !25
  %72 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i64 0, i32 5
  store i32 1023, ptr %72, align 8, !tbaa !22
  %73 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %71, i64 0, i32 1
  %74 = load ptr, ptr %73, align 8, !tbaa !16
  tail call void %74(ptr noundef nonnull %70, i32 noundef -1) #25
  br label %152

75:                                               ; preds = %55
  %76 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 13
  %77 = load i32, ptr %76, align 8, !tbaa !332
  %78 = icmp slt i32 %20, %77
  br i1 %78, label %98, label %79

79:                                               ; preds = %75
  %80 = icmp sgt i32 %20, %77
  br i1 %80, label %81, label %88

81:                                               ; preds = %79
  %82 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %83 = load ptr, ptr %82, align 8, !tbaa !72
  %84 = load ptr, ptr %83, align 8, !tbaa !25
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 5
  store i32 1021, ptr %85, align 8, !tbaa !22
  %86 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %84, i64 0, i32 1
  %87 = load ptr, ptr %86, align 8, !tbaa !16
  tail call void %87(ptr noundef nonnull %83, i32 noundef -1) #25
  br label %88

88:                                               ; preds = %81, %79
  %89 = phi i32 [ 0, %81 ], [ %20, %79 ]
  %90 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  %91 = load i32, ptr %90, align 4, !tbaa !584
  %92 = trunc i32 %91 to i8
  %93 = load ptr, ptr %10, align 8, !tbaa !333
  %94 = getelementptr inbounds i8, ptr %93, i64 1
  store ptr %94, ptr %10, align 8, !tbaa !333
  store i8 %92, ptr %93, align 1, !tbaa !11
  %95 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %96 = load i32, ptr %95, align 8, !tbaa !583
  %97 = load i32, ptr %21, align 8, !tbaa !327
  br label %98

98:                                               ; preds = %88, %75
  %99 = phi i32 [ %97, %88 ], [ %22, %75 ]
  %100 = phi i32 [ %96, %88 ], [ %20, %75 ]
  %101 = phi i32 [ %89, %88 ], [ %20, %75 ]
  %102 = icmp slt i32 %100, %99
  br i1 %102, label %120, label %103

103:                                              ; preds = %98
  %104 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %105 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  br label %106

106:                                              ; preds = %106, %103
  %107 = phi i32 [ %100, %103 ], [ %117, %106 ]
  %108 = load ptr, ptr %104, align 8, !tbaa !325
  %109 = sext i32 %107 to i64
  %110 = getelementptr inbounds i8, ptr %108, i64 %109
  %111 = load i8, ptr %110, align 1, !tbaa !11
  %112 = load ptr, ptr %10, align 8, !tbaa !333
  %113 = getelementptr inbounds i8, ptr %112, i64 1
  store ptr %113, ptr %10, align 8, !tbaa !333
  store i8 %111, ptr %112, align 1, !tbaa !11
  %114 = load ptr, ptr %105, align 8, !tbaa !324
  %115 = getelementptr inbounds i16, ptr %114, i64 %109
  %116 = load i16, ptr %115, align 2, !tbaa !275
  %117 = zext i16 %116 to i32
  %118 = load i32, ptr %21, align 8, !tbaa !327
  %119 = icmp sgt i32 %118, %117
  br i1 %119, label %120, label %106, !llvm.loop !586

120:                                              ; preds = %106, %98
  %121 = phi i32 [ %100, %98 ], [ %117, %106 ]
  %122 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 16
  store i32 %121, ptr %122, align 4, !tbaa !584
  %123 = load i32, ptr %76, align 8, !tbaa !332
  %124 = icmp slt i32 %123, 4096
  br i1 %124, label %125, label %149

125:                                              ; preds = %120
  %126 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  %127 = load i32, ptr %126, align 8, !tbaa !583
  %128 = trunc i32 %127 to i16
  %129 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 17
  %130 = load ptr, ptr %129, align 8, !tbaa !324
  %131 = sext i32 %123 to i64
  %132 = getelementptr inbounds i16, ptr %130, i64 %131
  store i16 %128, ptr %132, align 2, !tbaa !275
  %133 = trunc i32 %121 to i8
  %134 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 18
  %135 = load ptr, ptr %134, align 8, !tbaa !325
  %136 = getelementptr inbounds i8, ptr %135, i64 %131
  store i8 %133, ptr %136, align 1, !tbaa !11
  %137 = load i32, ptr %76, align 8, !tbaa !332
  %138 = add nsw i32 %137, 1
  store i32 %138, ptr %76, align 8, !tbaa !332
  %139 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 12
  %140 = load i32, ptr %139, align 4, !tbaa !331
  %141 = icmp slt i32 %138, %140
  br i1 %141, label %149, label %142

142:                                              ; preds = %125
  %143 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %144 = load i32, ptr %143, align 8, !tbaa !330
  %145 = icmp slt i32 %144, 12
  br i1 %145, label %146, label %149

146:                                              ; preds = %142
  %147 = add nsw i32 %144, 1
  store i32 %147, ptr %143, align 8, !tbaa !330
  %148 = shl i32 %140, 1
  store i32 %148, ptr %139, align 4, !tbaa !331
  br label %149

149:                                              ; preds = %146, %142, %125, %120
  %150 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 15
  store i32 %101, ptr %150, align 8, !tbaa !583
  %151 = load i32, ptr %122, align 4, !tbaa !584
  br label %152

152:                                              ; preds = %149, %68, %51, %15
  %153 = phi i32 [ %52, %51 ], [ 0, %68 ], [ %151, %149 ], [ %18, %15 ]
  ret i32 %153
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc i32 @GetCode(ptr nocapture noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 6
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 11
  %4 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 5
  %5 = load i32, ptr %2, align 4, !tbaa !587
  %6 = load i32, ptr %3, align 8, !tbaa !330
  %7 = add nsw i32 %6, %5
  %8 = load i32, ptr %4, align 8, !tbaa !588
  %9 = icmp sgt i32 %7, %8
  br i1 %9, label %10, label %59

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 7
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3
  %13 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 4
  %14 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 1
  %15 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 2
  br label %16

16:                                               ; preds = %49, %10
  %17 = load i32, ptr %11, align 8, !tbaa !585
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %16
  %20 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %21 = load ptr, ptr %20, align 8, !tbaa !72
  %22 = load ptr, ptr %21, align 8, !tbaa !25
  %23 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 5
  store i32 1024, ptr %23, align 8, !tbaa !22
  %24 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %22, i64 0, i32 1
  %25 = load ptr, ptr %24, align 8, !tbaa !16
  tail call void %25(ptr noundef nonnull %21, i32 noundef -1) #25
  %26 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %27 = load i32, ptr %26, align 4, !tbaa !328
  br label %87

28:                                               ; preds = %16
  %29 = load i32, ptr %13, align 4, !tbaa !589
  %30 = add nsw i32 %29, -2
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %31
  %33 = load i8, ptr %32, align 1, !tbaa !11
  store i8 %33, ptr %12, align 8, !tbaa !11
  %34 = add nsw i32 %29, -1
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %35
  %37 = load i8, ptr %36, align 1, !tbaa !11
  store i8 %37, ptr %14, align 1, !tbaa !11
  %38 = tail call fastcc i32 @GetDataBlock(ptr noundef nonnull %0, ptr noundef nonnull %15) #26
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %40, label %49

40:                                               ; preds = %28
  store i32 1, ptr %11, align 8, !tbaa !585
  %41 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 1
  %42 = load ptr, ptr %41, align 8, !tbaa !72
  %43 = load ptr, ptr %42, align 8, !tbaa !25
  %44 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 5
  store i32 1024, ptr %44, align 8, !tbaa !22
  %45 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %43, i64 0, i32 1
  %46 = load ptr, ptr %45, align 8, !tbaa !16
  tail call void %46(ptr noundef nonnull %42, i32 noundef -1) #25
  %47 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 10
  %48 = load i32, ptr %47, align 4, !tbaa !328
  br label %87

49:                                               ; preds = %28
  %50 = load i32, ptr %2, align 4, !tbaa !587
  %51 = load i32, ptr %4, align 8, !tbaa !588
  %52 = add i32 %50, 16
  %53 = sub i32 %52, %51
  store i32 %53, ptr %2, align 4, !tbaa !587
  %54 = add nsw i32 %38, 2
  store i32 %54, ptr %13, align 4, !tbaa !589
  %55 = shl nsw i32 %54, 3
  store i32 %55, ptr %4, align 8, !tbaa !588
  %56 = load i32, ptr %3, align 8, !tbaa !330
  %57 = add nsw i32 %56, %53
  %58 = icmp sgt i32 %57, %55
  br i1 %58, label %16, label %59, !llvm.loop !590

59:                                               ; preds = %49, %1
  %60 = phi i32 [ %5, %1 ], [ %53, %49 ]
  %61 = phi i32 [ %6, %1 ], [ %56, %49 ]
  %62 = phi i32 [ %7, %1 ], [ %57, %49 ]
  %63 = ashr i32 %60, 3
  %64 = add nsw i32 %63, 2
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %65
  %67 = load i8, ptr %66, align 1, !tbaa !11
  %68 = zext i8 %67 to i32
  %69 = add nsw i32 %63, 1
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %70
  %72 = load i8, ptr %71, align 1, !tbaa !11
  %73 = zext i8 %72 to i32
  %74 = shl nuw nsw i32 %68, 16
  %75 = shl nuw nsw i32 %73, 8
  %76 = or i32 %75, %74
  %77 = sext i32 %63 to i64
  %78 = getelementptr inbounds %struct.gif_source_struct, ptr %0, i64 0, i32 3, i64 %77
  %79 = load i8, ptr %78, align 1, !tbaa !11
  %80 = zext i8 %79 to i32
  %81 = or i32 %76, %80
  %82 = and i32 %60, 7
  %83 = lshr i32 %81, %82
  %84 = shl nsw i32 -1, %61
  %85 = xor i32 %84, -1
  %86 = and i32 %83, %85
  store i32 %62, ptr %2, align 4, !tbaa !587
  br label %87

87:                                               ; preds = %59, %40, %19
  %88 = phi i32 [ %27, %19 ], [ %48, %40 ], [ %86, %59 ]
  ret i32 %88
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_interlaced_row(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !319
  %5 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 23
  %6 = load i32, ptr %5, align 8, !tbaa !577
  %7 = and i32 %6, 7
  switch i32 %7, label %20 [
    i32 0, label %8
    i32 4, label %10
    i32 2, label %15
    i32 6, label %15
  ]

8:                                                ; preds = %2
  %9 = lshr i32 %6, 3
  br label %25

10:                                               ; preds = %2
  %11 = lshr i32 %6, 3
  %12 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 24
  %13 = load i32, ptr %12, align 4, !tbaa !578
  %14 = add i32 %13, %11
  br label %25

15:                                               ; preds = %2, %2
  %16 = lshr i32 %6, 2
  %17 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 25
  %18 = load i32, ptr %17, align 8, !tbaa !579
  %19 = add i32 %18, %16
  br label %25

20:                                               ; preds = %2
  %21 = lshr i32 %6, 1
  %22 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 26
  %23 = load i32, ptr %22, align 4, !tbaa !580
  %24 = add i32 %23, %21
  br label %25

25:                                               ; preds = %20, %15, %10, %8
  %26 = phi i32 [ %24, %20 ], [ %19, %15 ], [ %14, %10 ], [ %9, %8 ]
  %27 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %28 = load ptr, ptr %27, align 8, !tbaa !55
  %29 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %28, i64 0, i32 7
  %30 = load ptr, ptr %29, align 8, !tbaa !573
  %31 = getelementptr inbounds %struct.gif_source_struct, ptr %1, i64 0, i32 22
  %32 = load ptr, ptr %31, align 8, !tbaa !334
  %33 = tail call ptr %30(ptr noundef %0, ptr noundef %32, i32 noundef %26, i32 noundef 1, i32 noundef 0) #25
  %34 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %35 = load i32, ptr %34, align 8, !tbaa !98
  %36 = icmp eq i32 %35, 0
  br i1 %36, label %65, label %37

37:                                               ; preds = %25
  %38 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %39 = load ptr, ptr %38, align 8, !tbaa !336
  %40 = load ptr, ptr %39, align 8, !tbaa !7
  %41 = load ptr, ptr %33, align 8, !tbaa !7
  %42 = getelementptr inbounds ptr, ptr %4, i64 1
  %43 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %44

44:                                               ; preds = %44, %37
  %45 = phi ptr [ %41, %37 ], [ %48, %44 ]
  %46 = phi i32 [ %35, %37 ], [ %63, %44 ]
  %47 = phi ptr [ %40, %37 ], [ %62, %44 ]
  %48 = getelementptr inbounds i8, ptr %45, i64 1
  %49 = load i8, ptr %45, align 1, !tbaa !11
  %50 = load ptr, ptr %4, align 8, !tbaa !7
  %51 = zext i8 %49 to i64
  %52 = getelementptr inbounds i8, ptr %50, i64 %51
  %53 = load i8, ptr %52, align 1, !tbaa !11
  %54 = getelementptr inbounds i8, ptr %47, i64 1
  store i8 %53, ptr %47, align 1, !tbaa !11
  %55 = load ptr, ptr %42, align 8, !tbaa !7
  %56 = getelementptr inbounds i8, ptr %55, i64 %51
  %57 = load i8, ptr %56, align 1, !tbaa !11
  %58 = getelementptr inbounds i8, ptr %47, i64 2
  store i8 %57, ptr %54, align 1, !tbaa !11
  %59 = load ptr, ptr %43, align 8, !tbaa !7
  %60 = getelementptr inbounds i8, ptr %59, i64 %51
  %61 = load i8, ptr %60, align 1, !tbaa !11
  %62 = getelementptr inbounds i8, ptr %47, i64 3
  store i8 %61, ptr %58, align 1, !tbaa !11
  %63 = add i32 %46, -1
  %64 = icmp eq i32 %63, 0
  br i1 %64, label %65, label %44, !llvm.loop !591

65:                                               ; preds = %44, %25
  %66 = load i32, ptr %5, align 8, !tbaa !577
  %67 = add i32 %66, 1
  store i32 %67, ptr %5, align 8, !tbaa !577
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @preload_image.248(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 3
  %4 = load ptr, ptr %3, align 8, !tbaa !308
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %6 = load ptr, ptr %5, align 8, !tbaa !47
  %7 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %8 = load i32, ptr %7, align 4, !tbaa !97
  %9 = icmp eq i32 %8, 0
  br i1 %9, label %53, label %10

10:                                               ; preds = %2
  %11 = icmp eq ptr %6, null
  %12 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %6, i64 0, i32 1
  %13 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %6, i64 0, i32 2
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %15 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %16 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 5
  br label %17

17:                                               ; preds = %48, %10
  %18 = phi i64 [ 0, %10 ], [ %49, %48 ]
  %19 = phi i32 [ %8, %10 ], [ %50, %48 ]
  br i1 %11, label %23, label %20

20:                                               ; preds = %17
  store i64 %18, ptr %12, align 8, !tbaa !570
  %21 = zext i32 %19 to i64
  store i64 %21, ptr %13, align 8, !tbaa !571
  %22 = load ptr, ptr %6, align 8, !tbaa !572
  tail call void %22(ptr noundef nonnull %0) #25
  br label %23

23:                                               ; preds = %20, %17
  %24 = load ptr, ptr %14, align 8, !tbaa !55
  %25 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %24, i64 0, i32 7
  %26 = load ptr, ptr %25, align 8, !tbaa !573
  %27 = load ptr, ptr %15, align 8, !tbaa !315
  %28 = trunc i64 %18 to i32
  %29 = tail call ptr %26(ptr noundef nonnull %0, ptr noundef %27, i32 noundef %28, i32 noundef 1, i32 noundef 1) #25
  %30 = load i32, ptr %16, align 4, !tbaa !314
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %48, label %32

32:                                               ; preds = %23
  %33 = load ptr, ptr %29, align 8, !tbaa !7
  br label %34

34:                                               ; preds = %43, %32
  %35 = phi ptr [ %45, %43 ], [ %33, %32 ]
  %36 = phi i32 [ %46, %43 ], [ %30, %32 ]
  %37 = tail call i32 @getc(ptr noundef %4) #26
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %43

39:                                               ; preds = %34
  %40 = load ptr, ptr %0, align 8, !tbaa !25
  %41 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %40, i64 0, i32 5
  store i32 42, ptr %41, align 8, !tbaa !22
  %42 = load ptr, ptr %40, align 8, !tbaa !12
  tail call void %42(ptr noundef nonnull %0) #25
  br label %43

43:                                               ; preds = %39, %34
  %44 = trunc i32 %37 to i8
  %45 = getelementptr inbounds i8, ptr %35, i64 1
  store i8 %44, ptr %35, align 1, !tbaa !11
  %46 = add i32 %36, -1
  %47 = icmp eq i32 %46, 0
  br i1 %47, label %48, label %34, !llvm.loop !592

48:                                               ; preds = %43, %23
  %49 = add nuw nsw i64 %18, 1
  %50 = load i32, ptr %7, align 4, !tbaa !97
  %51 = zext i32 %50 to i64
  %52 = icmp ult i64 %49, %51
  br i1 %52, label %17, label %53, !llvm.loop !593

53:                                               ; preds = %48, %2
  %54 = phi i32 [ 0, %2 ], [ %50, %48 ]
  %55 = icmp eq ptr %6, null
  br i1 %55, label %60, label %56

56:                                               ; preds = %53
  %57 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %6, i64 0, i32 1
  %58 = load i32, ptr %57, align 8, !tbaa !576
  %59 = add nsw i32 %58, 1
  store i32 %59, ptr %57, align 8, !tbaa !576
  br label %60

60:                                               ; preds = %56, %53
  %61 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 6
  %62 = load i32, ptr %61, align 8, !tbaa !309
  switch i32 %62, label %67 [
    i32 8, label %63
    i32 24, label %65
  ]

63:                                               ; preds = %60
  %64 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_8bit_row.249, ptr %64, align 8, !tbaa !316
  br label %74

65:                                               ; preds = %60
  %66 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_24bit_row.250, ptr %66, align 8, !tbaa !316
  br label %74

67:                                               ; preds = %60
  %68 = load ptr, ptr %0, align 8, !tbaa !25
  %69 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %68, i64 0, i32 5
  store i32 1002, ptr %69, align 8, !tbaa !22
  %70 = load ptr, ptr %68, align 8, !tbaa !12
  tail call void %70(ptr noundef nonnull %0) #25
  %71 = load i32, ptr %7, align 4, !tbaa !97
  %72 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  %73 = load ptr, ptr %72, align 8, !tbaa !316
  br label %74

74:                                               ; preds = %67, %65, %63
  %75 = phi ptr [ %73, %67 ], [ @get_24bit_row.250, %65 ], [ @get_8bit_row.249, %63 ]
  %76 = phi i32 [ %71, %67 ], [ %54, %65 ], [ %54, %63 ]
  %77 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  store i32 %76, ptr %77, align 8, !tbaa !594
  %78 = tail call i32 %75(ptr noundef nonnull %0, ptr noundef nonnull %1) #25
  ret i32 %78
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_row.249(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !310
  %5 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !594
  %7 = add i32 %6, -1
  store i32 %7, ptr %5, align 8, !tbaa !594
  %8 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %9 = load ptr, ptr %8, align 8, !tbaa !55
  %10 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %9, i64 0, i32 7
  %11 = load ptr, ptr %10, align 8, !tbaa !573
  %12 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %13 = load ptr, ptr %12, align 8, !tbaa !315
  %14 = tail call ptr %11(ptr noundef %0, ptr noundef %13, i32 noundef %7, i32 noundef 1, i32 noundef 0) #25
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %16 = load i32, ptr %15, align 8, !tbaa !98
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %46, label %18

18:                                               ; preds = %2
  %19 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %20 = load ptr, ptr %19, align 8, !tbaa !317
  %21 = load ptr, ptr %20, align 8, !tbaa !7
  %22 = load ptr, ptr %14, align 8, !tbaa !7
  %23 = getelementptr inbounds ptr, ptr %4, i64 1
  %24 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %25

25:                                               ; preds = %25, %18
  %26 = phi i32 [ %16, %18 ], [ %44, %25 ]
  %27 = phi ptr [ %21, %18 ], [ %43, %25 ]
  %28 = phi ptr [ %22, %18 ], [ %29, %25 ]
  %29 = getelementptr inbounds i8, ptr %28, i64 1
  %30 = load i8, ptr %28, align 1, !tbaa !11
  %31 = load ptr, ptr %4, align 8, !tbaa !7
  %32 = zext i8 %30 to i64
  %33 = getelementptr inbounds i8, ptr %31, i64 %32
  %34 = load i8, ptr %33, align 1, !tbaa !11
  %35 = getelementptr inbounds i8, ptr %27, i64 1
  store i8 %34, ptr %27, align 1, !tbaa !11
  %36 = load ptr, ptr %23, align 8, !tbaa !7
  %37 = getelementptr inbounds i8, ptr %36, i64 %32
  %38 = load i8, ptr %37, align 1, !tbaa !11
  %39 = getelementptr inbounds i8, ptr %27, i64 2
  store i8 %38, ptr %35, align 1, !tbaa !11
  %40 = load ptr, ptr %24, align 8, !tbaa !7
  %41 = getelementptr inbounds i8, ptr %40, i64 %32
  %42 = load i8, ptr %41, align 1, !tbaa !11
  %43 = getelementptr inbounds i8, ptr %27, i64 3
  store i8 %42, ptr %39, align 1, !tbaa !11
  %44 = add i32 %26, -1
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %25, !llvm.loop !595

46:                                               ; preds = %25, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_24bit_row.250(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 4
  %4 = load i32, ptr %3, align 8, !tbaa !594
  %5 = add i32 %4, -1
  store i32 %5, ptr %3, align 8, !tbaa !594
  %6 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %7 = load ptr, ptr %6, align 8, !tbaa !55
  %8 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %7, i64 0, i32 7
  %9 = load ptr, ptr %8, align 8, !tbaa !573
  %10 = getelementptr inbounds %struct._bmp_source_struct, ptr %1, i64 0, i32 3
  %11 = load ptr, ptr %10, align 8, !tbaa !315
  %12 = tail call ptr %9(ptr noundef %0, ptr noundef %11, i32 noundef %5, i32 noundef 1, i32 noundef 0) #25
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %14 = load i32, ptr %13, align 8, !tbaa !98
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %36, label %16

16:                                               ; preds = %2
  %17 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %18 = load ptr, ptr %17, align 8, !tbaa !317
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = load ptr, ptr %12, align 8, !tbaa !7
  br label %21

21:                                               ; preds = %21, %16
  %22 = phi i32 [ %34, %21 ], [ %14, %16 ]
  %23 = phi ptr [ %33, %21 ], [ %19, %16 ]
  %24 = phi ptr [ %31, %21 ], [ %20, %16 ]
  %25 = getelementptr inbounds i8, ptr %24, i64 1
  %26 = load i8, ptr %24, align 1, !tbaa !11
  %27 = getelementptr inbounds i8, ptr %23, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !11
  %28 = getelementptr inbounds i8, ptr %24, i64 2
  %29 = load i8, ptr %25, align 1, !tbaa !11
  %30 = getelementptr inbounds i8, ptr %23, i64 1
  store i8 %29, ptr %30, align 1, !tbaa !11
  %31 = getelementptr inbounds i8, ptr %24, i64 3
  %32 = load i8, ptr %28, align 1, !tbaa !11
  store i8 %32, ptr %23, align 1, !tbaa !11
  %33 = getelementptr inbounds i8, ptr %23, i64 3
  %34 = add i32 %22, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %21, !llvm.loop !596

36:                                               ; preds = %21, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal void @read_rle_pixel(ptr nocapture noundef %0) #2 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 9
  %5 = load i32, ptr %4, align 4, !tbaa !295
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %9

7:                                                ; preds = %1
  %8 = add nsw i32 %5, -1
  store i32 %8, ptr %4, align 4, !tbaa !295
  br label %45

9:                                                ; preds = %1
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 8
  %11 = load i32, ptr %10, align 8, !tbaa !296
  %12 = add nsw i32 %11, -1
  store i32 %12, ptr %10, align 8, !tbaa !296
  %13 = icmp slt i32 %11, 1
  br i1 %13, label %14, label %32

14:                                               ; preds = %9
  %15 = tail call i32 @getc(ptr noundef %3) #26
  %16 = icmp eq i32 %15, -1
  br i1 %16, label %17, label %23

17:                                               ; preds = %14
  %18 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 1
  %19 = load ptr, ptr %18, align 8, !tbaa !65
  %20 = load ptr, ptr %19, align 8, !tbaa !25
  %21 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %20, i64 0, i32 5
  store i32 42, ptr %21, align 8, !tbaa !22
  %22 = load ptr, ptr %20, align 8, !tbaa !12
  tail call void %22(ptr noundef nonnull %19) #25
  br label %26

23:                                               ; preds = %14
  %24 = and i32 %15, 128
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %28, label %26

26:                                               ; preds = %23, %17
  %27 = and i32 %15, 127
  store i32 %27, ptr %4, align 4, !tbaa !295
  br label %30

28:                                               ; preds = %23
  %29 = and i32 %15, 127
  br label %30

30:                                               ; preds = %28, %26
  %31 = phi i32 [ 0, %26 ], [ %29, %28 ]
  store i32 %31, ptr %10, align 8, !tbaa !296
  br label %32

32:                                               ; preds = %30, %9
  %33 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %34 = load i32, ptr %33, align 4, !tbaa !294
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %36, %32
  %37 = phi i64 [ %41, %36 ], [ 0, %32 ]
  %38 = tail call i32 @getc(ptr noundef %3) #26
  %39 = trunc i32 %38 to i8
  %40 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %37
  store i8 %39, ptr %40, align 1, !tbaa !11
  %41 = add nuw nsw i64 %37, 1
  %42 = load i32, ptr %33, align 4, !tbaa !294
  %43 = sext i32 %42 to i64
  %44 = icmp slt i64 %41, %43
  br i1 %44, label %36, label %45, !llvm.loop !597

45:                                               ; preds = %36, %32, %7
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal void @read_non_rle_pixel(ptr nocapture noundef %0) #3 {
  %2 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %0, i64 0, i32 3
  %3 = load ptr, ptr %2, align 8, !tbaa !293
  %4 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 7
  %5 = load i32, ptr %4, align 4, !tbaa !294
  %6 = icmp sgt i32 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %7, %1
  %8 = phi i64 [ %12, %7 ], [ 0, %1 ]
  %9 = tail call i32 @getc(ptr noundef %3) #26
  %10 = trunc i32 %9 to i8
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %0, i64 0, i32 6, i64 %8
  store i8 %10, ptr %11, align 1, !tbaa !11
  %12 = add nuw nsw i64 %8, 1
  %13 = load i32, ptr %4, align 4, !tbaa !294
  %14 = sext i32 %13 to i64
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %7, label %16, !llvm.loop !598

16:                                               ; preds = %7, %1
  ret void
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !306
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %6 = load i32, ptr %5, align 8, !tbaa !98
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %36, label %8

8:                                                ; preds = %2
  %9 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %10 = load ptr, ptr %9, align 8, !tbaa !303
  %11 = load ptr, ptr %10, align 8, !tbaa !7
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %14 = getelementptr inbounds ptr, ptr %4, i64 1
  %15 = getelementptr inbounds ptr, ptr %4, i64 2
  br label %16

16:                                               ; preds = %16, %8
  %17 = phi ptr [ %11, %8 ], [ %33, %16 ]
  %18 = phi i32 [ %6, %8 ], [ %34, %16 ]
  %19 = load ptr, ptr %12, align 8, !tbaa !599
  tail call void %19(ptr noundef nonnull %1) #25
  %20 = load i8, ptr %13, align 8, !tbaa !11
  %21 = load ptr, ptr %4, align 8, !tbaa !7
  %22 = zext i8 %20 to i64
  %23 = getelementptr inbounds i8, ptr %21, i64 %22
  %24 = load i8, ptr %23, align 1, !tbaa !11
  %25 = getelementptr inbounds i8, ptr %17, i64 1
  store i8 %24, ptr %17, align 1, !tbaa !11
  %26 = load ptr, ptr %14, align 8, !tbaa !7
  %27 = getelementptr inbounds i8, ptr %26, i64 %22
  %28 = load i8, ptr %27, align 1, !tbaa !11
  %29 = getelementptr inbounds i8, ptr %17, i64 2
  store i8 %28, ptr %25, align 1, !tbaa !11
  %30 = load ptr, ptr %15, align 8, !tbaa !7
  %31 = getelementptr inbounds i8, ptr %30, i64 %22
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = getelementptr inbounds i8, ptr %17, i64 3
  store i8 %32, ptr %29, align 1, !tbaa !11
  %34 = add i32 %18, -1
  %35 = icmp eq i32 %34, 0
  br i1 %35, label %36, label %16, !llvm.loop !600

36:                                               ; preds = %16, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_16bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %42, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !303
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %13

13:                                               ; preds = %13, %6
  %14 = phi i32 [ %4, %6 ], [ %40, %13 ]
  %15 = phi ptr [ %9, %6 ], [ %39, %13 ]
  %16 = load ptr, ptr %10, align 8, !tbaa !599
  tail call void %16(ptr noundef nonnull %1) #25
  %17 = load i8, ptr %11, align 8, !tbaa !11
  %18 = zext i8 %17 to i32
  %19 = load i8, ptr %12, align 1, !tbaa !11
  %20 = zext i8 %19 to i32
  %21 = shl nuw nsw i32 %20, 8
  %22 = or i32 %21, %18
  %23 = and i32 %18, 31
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %24
  %26 = load i8, ptr %25, align 1, !tbaa !11
  %27 = getelementptr inbounds i8, ptr %15, i64 2
  store i8 %26, ptr %27, align 1, !tbaa !11
  %28 = lshr i32 %22, 5
  %29 = and i32 %28, 31
  %30 = zext i32 %29 to i64
  %31 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %30
  %32 = load i8, ptr %31, align 1, !tbaa !11
  %33 = getelementptr inbounds i8, ptr %15, i64 1
  store i8 %32, ptr %33, align 1, !tbaa !11
  %34 = lshr i32 %20, 2
  %35 = and i32 %34, 31
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds [32 x i8], ptr @c5to8bits, i64 0, i64 %36
  %38 = load i8, ptr %37, align 1, !tbaa !11
  store i8 %38, ptr %15, align 1, !tbaa !11
  %39 = getelementptr inbounds i8, ptr %15, i64 3
  %40 = add i32 %14, -1
  %41 = icmp eq i32 %40, 0
  br i1 %41, label %42, label %13, !llvm.loop !601

42:                                               ; preds = %13, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_24bit_row(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %26, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !303
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  %12 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 2
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6, i64 1
  br label %14

14:                                               ; preds = %14, %6
  %15 = phi i32 [ %4, %6 ], [ %24, %14 ]
  %16 = phi ptr [ %9, %6 ], [ %23, %14 ]
  %17 = load ptr, ptr %10, align 8, !tbaa !599
  tail call void %17(ptr noundef nonnull %1) #25
  %18 = load i8, ptr %12, align 2, !tbaa !11
  %19 = getelementptr inbounds i8, ptr %16, i64 1
  store i8 %18, ptr %16, align 1, !tbaa !11
  %20 = load i8, ptr %13, align 1, !tbaa !11
  %21 = getelementptr inbounds i8, ptr %16, i64 2
  store i8 %20, ptr %19, align 1, !tbaa !11
  %22 = load i8, ptr %11, align 8, !tbaa !11
  %23 = getelementptr inbounds i8, ptr %16, i64 3
  store i8 %22, ptr %21, align 1, !tbaa !11
  %24 = add i32 %15, -1
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %14, !llvm.loop !602

26:                                               ; preds = %14, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_8bit_gray_row(ptr nocapture noundef readonly %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 6
  %4 = load i32, ptr %3, align 8, !tbaa !98
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %20, label %6

6:                                                ; preds = %2
  %7 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %8 = load ptr, ptr %7, align 8, !tbaa !303
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 5
  %11 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 6
  br label %12

12:                                               ; preds = %12, %6
  %13 = phi i32 [ %4, %6 ], [ %18, %12 ]
  %14 = phi ptr [ %9, %6 ], [ %17, %12 ]
  %15 = load ptr, ptr %10, align 8, !tbaa !599
  tail call void %15(ptr noundef nonnull %1) #25
  %16 = load i8, ptr %11, align 8, !tbaa !11
  %17 = getelementptr inbounds i8, ptr %14, i64 1
  store i8 %16, ptr %14, align 1, !tbaa !11
  %18 = add i32 %13, -1
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %12, !llvm.loop !603

20:                                               ; preds = %12, %2
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @preload_image(ptr noundef %0, ptr noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 2
  %4 = load ptr, ptr %3, align 8, !tbaa !47
  %5 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %6 = load i32, ptr %5, align 4, !tbaa !97
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %37, label %8

8:                                                ; preds = %2
  %9 = icmp eq ptr %4, null
  %10 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 1
  %11 = getelementptr inbounds %struct.jpeg_progress_mgr, ptr %4, i64 0, i32 2
  %12 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %14 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  %15 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 10
  br label %16

16:                                               ; preds = %22, %8
  %17 = phi i64 [ 0, %8 ], [ %31, %22 ]
  %18 = phi i32 [ %6, %8 ], [ %32, %22 ]
  br i1 %9, label %22, label %19

19:                                               ; preds = %16
  store i64 %17, ptr %10, align 8, !tbaa !570
  %20 = zext i32 %18 to i64
  store i64 %20, ptr %11, align 8, !tbaa !571
  %21 = load ptr, ptr %4, align 8, !tbaa !572
  tail call void %21(ptr noundef nonnull %0) #25
  br label %22

22:                                               ; preds = %19, %16
  %23 = load ptr, ptr %12, align 8, !tbaa !55
  %24 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %23, i64 0, i32 7
  %25 = load ptr, ptr %24, align 8, !tbaa !573
  %26 = load ptr, ptr %13, align 8, !tbaa !299
  %27 = trunc i64 %17 to i32
  %28 = tail call ptr %25(ptr noundef nonnull %0, ptr noundef %26, i32 noundef %27, i32 noundef 1, i32 noundef 1) #25
  store ptr %28, ptr %14, align 8, !tbaa !303
  %29 = load ptr, ptr %15, align 8, !tbaa !297
  %30 = tail call i32 %29(ptr noundef nonnull %0, ptr noundef %1) #25
  %31 = add nuw nsw i64 %17, 1
  %32 = load i32, ptr %5, align 4, !tbaa !97
  %33 = zext i32 %32 to i64
  %34 = icmp ult i64 %31, %33
  br i1 %34, label %16, label %35, !llvm.loop !604

35:                                               ; preds = %22
  %.lcssa = phi i32 [ %32, %22 ]
  %36 = add i32 %.lcssa, -1
  br label %37

37:                                               ; preds = %35, %2
  %38 = phi i32 [ -1, %2 ], [ %36, %35 ]
  %39 = icmp eq ptr %4, null
  br i1 %39, label %44, label %40

40:                                               ; preds = %37
  %41 = getelementptr inbounds %struct.cdjpeg_progress_mgr, ptr %4, i64 0, i32 1
  %42 = load i32, ptr %41, align 8, !tbaa !576
  %43 = add nsw i32 %42, 1
  store i32 %43, ptr %41, align 8, !tbaa !576
  br label %44

44:                                               ; preds = %40, %37
  %45 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 1
  store ptr @get_memory_row, ptr %45, align 8, !tbaa !304
  %46 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  store i32 0, ptr %46, align 8, !tbaa !605
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %48 = load ptr, ptr %47, align 8, !tbaa !55
  %49 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %48, i64 0, i32 7
  %50 = load ptr, ptr %49, align 8, !tbaa !573
  %51 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %52 = load ptr, ptr %51, align 8, !tbaa !299
  %53 = tail call ptr %50(ptr noundef nonnull %0, ptr noundef %52, i32 noundef %38, i32 noundef 1, i32 noundef 0) #25
  %54 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %53, ptr %54, align 8, !tbaa !303
  %55 = load i32, ptr %46, align 8, !tbaa !605
  %56 = add i32 %55, 1
  store i32 %56, ptr %46, align 8, !tbaa !605
  ret i32 1
}

; Function Attrs: nounwind optsize uwtable
define internal i32 @get_memory_row(ptr noundef %0, ptr nocapture noundef %1) #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 7
  %4 = load i32, ptr %3, align 4, !tbaa !97
  %5 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 4
  %6 = load i32, ptr %5, align 8, !tbaa !605
  %7 = xor i32 %6, -1
  %8 = add i32 %4, %7
  %9 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 1
  %10 = load ptr, ptr %9, align 8, !tbaa !55
  %11 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %10, i64 0, i32 7
  %12 = load ptr, ptr %11, align 8, !tbaa !573
  %13 = getelementptr inbounds %struct._tga_source_struct, ptr %1, i64 0, i32 3
  %14 = load ptr, ptr %13, align 8, !tbaa !299
  %15 = tail call ptr %12(ptr noundef %0, ptr noundef %14, i32 noundef %8, i32 noundef 1, i32 noundef 0) #25
  %16 = getelementptr inbounds %struct.cjpeg_source_struct, ptr %1, i64 0, i32 4
  store ptr %15, ptr %16, align 8, !tbaa !303
  %17 = load i32, ptr %5, align 8, !tbaa !605
  %18 = add i32 %17, 1
  store i32 %18, ptr %5, align 8, !tbaa !605
  ret i32 1
}

; Function Attrs: nofree nounwind optsize memory(read) uwtable
define internal fastcc i32 @keymatch(ptr nocapture noundef readonly %0, ptr nocapture noundef readonly %1, i32 noundef %2) unnamed_addr #18 {
  %4 = load i8, ptr %0, align 1, !tbaa !11
  %5 = icmp eq i8 %4, 0
  br i1 %5, label %34, label %6

6:                                                ; preds = %30, %3
  %7 = phi i8 [ %32, %30 ], [ %4, %3 ]
  %8 = phi ptr [ %11, %30 ], [ %0, %3 ]
  %9 = phi i32 [ %31, %30 ], [ 0, %3 ]
  %10 = phi ptr [ %13, %30 ], [ %1, %3 ]
  %11 = getelementptr inbounds i8, ptr %8, i64 1
  %12 = sext i8 %7 to i32
  %13 = getelementptr inbounds i8, ptr %10, i64 1
  %14 = load i8, ptr %10, align 1, !tbaa !11
  %15 = sext i8 %14 to i32
  %16 = icmp eq i8 %14, 0
  br i1 %16, label %38, label %17

17:                                               ; preds = %6
  %18 = tail call ptr @__ctype_b_loc() #30
  %19 = load ptr, ptr %18, align 8, !tbaa !7
  %20 = sext i8 %7 to i64
  %21 = getelementptr inbounds i16, ptr %19, i64 %20
  %22 = load i16, ptr %21, align 2, !tbaa !275
  %23 = and i16 %22, 256
  %24 = icmp eq i16 %23, 0
  br i1 %24, label %27, label %25

25:                                               ; preds = %17
  %26 = tail call i32 @tolower(i32 noundef %12) #31
  br label %27

27:                                               ; preds = %25, %17
  %28 = phi i32 [ %12, %17 ], [ %26, %25 ]
  %29 = icmp eq i32 %28, %15
  br i1 %29, label %30, label %38

30:                                               ; preds = %27
  %31 = add nuw nsw i32 %9, 1
  %32 = load i8, ptr %11, align 1, !tbaa !11
  %33 = icmp eq i8 %32, 0
  br i1 %33, label %34, label %6, !llvm.loop !606

34:                                               ; preds = %30, %3
  %35 = phi i32 [ 0, %3 ], [ %31, %30 ]
  %36 = icmp sge i32 %35, %2
  %37 = zext i1 %36 to i32
  br label %38

38:                                               ; preds = %34, %27, %6
  %39 = phi i32 [ %37, %34 ], [ 0, %6 ], [ 0, %27 ]
  ret i32 %39
}

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_set_colorspace(ptr noundef %0, i32 noundef %1) unnamed_addr #2 {
  %3 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 4
  %4 = load i32, ptr %3, align 4, !tbaa !50
  %5 = icmp eq i32 %4, 100
  br i1 %5, label %12, label %6

6:                                                ; preds = %2
  %7 = load ptr, ptr %0, align 8, !tbaa !25
  %8 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 5
  store i32 18, ptr %8, align 8, !tbaa !22
  %9 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %7, i64 0, i32 6
  store i32 %4, ptr %9, align 4, !tbaa !11
  %10 = load ptr, ptr %0, align 8, !tbaa !25
  %11 = load ptr, ptr %10, align 8, !tbaa !12
  tail call void %11(ptr noundef nonnull %0) #25
  br label %12

12:                                               ; preds = %6, %2
  %13 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 13
  store i32 %1, ptr %13, align 8, !tbaa !141
  %14 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 31
  store i32 0, ptr %14, align 8, !tbaa !453
  %15 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 35
  store i32 0, ptr %15, align 4, !tbaa !454
  switch i32 %1, label %105 [
    i32 1, label %16
    i32 2, label %22
    i32 3, label %34
    i32 4, label %46
    i32 5, label %61
    i32 0, label %76
  ]

16:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !453
  %17 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 1, ptr %17, align 4, !tbaa !100
  %18 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %19 = load ptr, ptr %18, align 8, !tbaa !57
  store i32 1, ptr %19, align 8, !tbaa !457
  %20 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %20, align 8, !tbaa !121
  %21 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %19, i64 0, i32 6
  store i32 0, ptr %21, align 8, !tbaa !431
  br label %109

22:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !454
  %23 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %23, align 4, !tbaa !100
  %24 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %25 = load ptr, ptr %24, align 8, !tbaa !57
  store i32 82, ptr %25, align 8, !tbaa !457
  %26 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %26, align 8, !tbaa !121
  %27 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 0, i32 6
  store i32 0, ptr %27, align 8, !tbaa !431
  %28 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1
  store i32 71, ptr %28, align 8, !tbaa !457
  %29 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %29, align 8, !tbaa !121
  %30 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 1, i32 6
  store i32 0, ptr %30, align 8, !tbaa !431
  %31 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2
  store i32 66, ptr %31, align 8, !tbaa !457
  %32 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %32, align 8, !tbaa !121
  %33 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %25, i64 2, i32 6
  store i32 0, ptr %33, align 8, !tbaa !431
  br label %109

34:                                               ; preds = %12
  store i32 1, ptr %14, align 8, !tbaa !453
  %35 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 3, ptr %35, align 4, !tbaa !100
  %36 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %37 = load ptr, ptr %36, align 8, !tbaa !57
  store i32 1, ptr %37, align 8, !tbaa !457
  %38 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 0, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %38, align 8, !tbaa !121
  %39 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 0, i32 6
  store i32 0, ptr %39, align 8, !tbaa !431
  %40 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1
  store i32 2, ptr %40, align 8, !tbaa !457
  %41 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %41, align 8, !tbaa !121
  %42 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 1, i32 6
  store i32 1, ptr %42, align 8, !tbaa !431
  %43 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2
  store i32 3, ptr %43, align 8, !tbaa !457
  %44 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %44, align 8, !tbaa !121
  %45 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %37, i64 2, i32 6
  store i32 1, ptr %45, align 8, !tbaa !431
  br label %109

46:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !454
  %47 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %47, align 4, !tbaa !100
  %48 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %49 = load ptr, ptr %48, align 8, !tbaa !57
  store i32 67, ptr %49, align 8, !tbaa !457
  %50 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 0, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %50, align 8, !tbaa !121
  %51 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 0, i32 6
  store i32 0, ptr %51, align 8, !tbaa !431
  %52 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1
  store i32 77, ptr %52, align 8, !tbaa !457
  %53 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %53, align 8, !tbaa !121
  %54 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 1, i32 6
  store i32 0, ptr %54, align 8, !tbaa !431
  %55 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2
  store i32 89, ptr %55, align 8, !tbaa !457
  %56 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %56, align 8, !tbaa !121
  %57 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 2, i32 6
  store i32 0, ptr %57, align 8, !tbaa !431
  %58 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3
  store i32 75, ptr %58, align 8, !tbaa !457
  %59 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %59, align 8, !tbaa !121
  %60 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %49, i64 3, i32 6
  store i32 0, ptr %60, align 8, !tbaa !431
  br label %109

61:                                               ; preds = %12
  store i32 1, ptr %15, align 4, !tbaa !454
  %62 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 4, ptr %62, align 4, !tbaa !100
  %63 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %64 = load ptr, ptr %63, align 8, !tbaa !57
  store i32 1, ptr %64, align 8, !tbaa !457
  %65 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %65, align 8, !tbaa !121
  %66 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 0, i32 6
  store i32 0, ptr %66, align 8, !tbaa !431
  %67 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1
  store i32 2, ptr %67, align 8, !tbaa !457
  %68 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %68, align 8, !tbaa !121
  %69 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 1, i32 6
  store i32 1, ptr %69, align 8, !tbaa !431
  %70 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2
  store i32 3, ptr %70, align 8, !tbaa !457
  %71 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2, i32 2
  store <4 x i32> <i32 1, i32 1, i32 1, i32 1>, ptr %71, align 8, !tbaa !121
  %72 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 2, i32 6
  store i32 1, ptr %72, align 8, !tbaa !431
  %73 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3
  store i32 4, ptr %73, align 8, !tbaa !457
  %74 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3, i32 2
  store <4 x i32> <i32 2, i32 2, i32 0, i32 0>, ptr %74, align 8, !tbaa !121
  %75 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %64, i64 3, i32 6
  store i32 0, ptr %75, align 8, !tbaa !431
  br label %109

76:                                               ; preds = %12
  %77 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 8
  %78 = load i32, ptr %77, align 8, !tbaa !99
  %79 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 12
  store i32 %78, ptr %79, align 4, !tbaa !100
  %80 = add i32 %78, -11
  %81 = icmp ult i32 %80, -10
  br i1 %81, label %82, label %92

82:                                               ; preds = %76
  %83 = load ptr, ptr %0, align 8, !tbaa !25
  %84 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 5
  store i32 24, ptr %84, align 8, !tbaa !22
  %85 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %83, i64 0, i32 6
  store i32 %78, ptr %85, align 4, !tbaa !11
  %86 = load ptr, ptr %0, align 8, !tbaa !25
  %87 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %86, i64 0, i32 6, i32 0, i64 1
  store i32 10, ptr %87, align 4, !tbaa !11
  %88 = load ptr, ptr %0, align 8, !tbaa !25
  %89 = load ptr, ptr %88, align 8, !tbaa !12
  tail call void %89(ptr noundef nonnull %0) #25
  %90 = load i32, ptr %79, align 4, !tbaa !100
  %91 = icmp sgt i32 %90, 0
  br i1 %91, label %92, label %109

92:                                               ; preds = %82, %76
  %93 = phi i32 [ %90, %82 ], [ %78, %76 ]
  %94 = getelementptr inbounds %struct.jpeg_compress_struct, ptr %0, i64 0, i32 14
  %95 = load ptr, ptr %94, align 8, !tbaa !57
  %96 = zext i32 %93 to i64
  br label %97

97:                                               ; preds = %97, %92
  %98 = phi i64 [ 0, %92 ], [ %103, %97 ]
  %99 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98
  %100 = trunc i64 %98 to i32
  store i32 %100, ptr %99, align 8, !tbaa !457
  %101 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98, i32 2
  store <4 x i32> <i32 1, i32 1, i32 0, i32 0>, ptr %101, align 8, !tbaa !121
  %102 = getelementptr inbounds %struct.jpeg_component_info.19, ptr %95, i64 %98, i32 6
  store i32 0, ptr %102, align 8, !tbaa !431
  %103 = add nuw nsw i64 %98, 1
  %104 = icmp eq i64 %103, %96
  br i1 %104, label %109, label %97, !llvm.loop !607

105:                                              ; preds = %12
  %106 = load ptr, ptr %0, align 8, !tbaa !25
  %107 = getelementptr inbounds %struct.jpeg_error_mgr, ptr %106, i64 0, i32 5
  store i32 8, ptr %107, align 8, !tbaa !22
  %108 = load ptr, ptr %106, align 8, !tbaa !12
  tail call void %108(ptr noundef nonnull %0) #25
  br label %109

109:                                              ; preds = %105, %97, %82, %61, %46, %34, %22, %16
  ret void
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @read_text_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef writeonly %2) unnamed_addr #3 {
  br label %4

4:                                                ; preds = %7, %3
  %5 = tail call fastcc i32 @text_getc(ptr noundef %0) #26
  %6 = icmp eq i32 %5, -1
  br i1 %6, label %39, label %7

7:                                                ; preds = %4
  %8 = tail call ptr @__ctype_b_loc() #30
  %9 = load ptr, ptr %8, align 8, !tbaa !7
  %10 = sext i32 %5 to i64
  %11 = getelementptr inbounds i16, ptr %9, i64 %10
  %12 = load i16, ptr %11, align 2, !tbaa !275
  %13 = zext i16 %12 to i32
  %14 = and i32 %13, 8192
  %15 = icmp eq i32 %14, 0
  br i1 %15, label %16, label %4, !llvm.loop !608

16:                                               ; preds = %7
  %.lcssa5 = phi ptr [ %8, %7 ]
  %.lcssa4 = phi i32 [ %13, %7 ]
  %.lcssa3 = phi i32 [ %5, %7 ]
  %17 = and i32 %.lcssa4, 2048
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %39, label %19

19:                                               ; preds = %16
  %20 = add nsw i32 %.lcssa3, -48
  %21 = sext i32 %20 to i64
  br label %22

22:                                               ; preds = %33, %19
  %23 = phi i64 [ %21, %19 ], [ %37, %33 ]
  %24 = tail call fastcc i32 @text_getc(ptr noundef %0) #26
  %25 = icmp eq i32 %24, -1
  br i1 %25, label %38, label %26

26:                                               ; preds = %22
  %27 = load ptr, ptr %.lcssa5, align 8, !tbaa !7
  %28 = sext i32 %24 to i64
  %29 = getelementptr inbounds i16, ptr %27, i64 %28
  %30 = load i16, ptr %29, align 2, !tbaa !275
  %31 = and i16 %30, 2048
  %32 = icmp eq i16 %31, 0
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = mul nsw i64 %23, 10
  %35 = add nsw i32 %24, -48
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %34, %36
  br label %22, !llvm.loop !609

38:                                               ; preds = %26, %22
  %.lcssa1 = phi i64 [ %23, %26 ], [ %23, %22 ]
  %.lcssa = phi i32 [ %24, %26 ], [ %24, %22 ]
  store i64 %.lcssa1, ptr %1, align 8, !tbaa !31
  br label %39

39:                                               ; preds = %38, %16, %4
  %40 = phi i32 [ %.lcssa, %38 ], [ %.lcssa3, %16 ], [ -1, %4 ]
  %41 = phi i32 [ 1, %38 ], [ 0, %16 ], [ 0, %4 ]
  store i32 %40, ptr %2, align 4, !tbaa !121
  ret i32 %41
}

; Function Attrs: nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable
define internal fastcc nonnull ptr @fill_dc_scans(ptr noundef writeonly %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #19 {
  %5 = icmp slt i32 %1, 5
  br i1 %5, label %6, label %35

6:                                                ; preds = %4
  store i32 %1, ptr %0, align 4, !tbaa !122
  %7 = icmp sgt i32 %1, 0
  br i1 %7, label %8, label %29

8:                                                ; preds = %6
  %9 = zext i32 %1 to i64
  %10 = add nsw i64 %9, -1
  %11 = insertelement <4 x i64> poison, i64 %10, i64 0
  %12 = shufflevector <4 x i64> %11, <4 x i64> poison, <4 x i32> zeroinitializer
  %13 = icmp uge <4 x i64> %12, <i64 0, i64 1, i64 2, i64 3>
  %14 = extractelement <4 x i1> %13, i64 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %8
  %16 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 0
  store i32 0, ptr %16, align 4, !tbaa !121
  br label %17

17:                                               ; preds = %15, %8
  %18 = extractelement <4 x i1> %13, i64 1
  br i1 %18, label %19, label %21

19:                                               ; preds = %17
  %20 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 1
  store i32 1, ptr %20, align 4, !tbaa !121
  br label %21

21:                                               ; preds = %19, %17
  %22 = extractelement <4 x i1> %13, i64 2
  br i1 %22, label %23, label %25

23:                                               ; preds = %21
  %24 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 2
  store i32 2, ptr %24, align 4, !tbaa !121
  br label %25

25:                                               ; preds = %23, %21
  %26 = extractelement <4 x i1> %13, i64 3
  br i1 %26, label %27, label %29

27:                                               ; preds = %25
  %28 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 1, i64 3
  store i32 3, ptr %28, align 4, !tbaa !121
  br label %29

29:                                               ; preds = %27, %25, %6
  %30 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 3
  store i32 0, ptr %30, align 4, !tbaa !119
  %31 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 2
  store i32 0, ptr %31, align 4, !tbaa !117
  %32 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 4
  store i32 %2, ptr %32, align 4, !tbaa !124
  %33 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 0, i32 5
  store i32 %3, ptr %33, align 4, !tbaa !125
  %34 = getelementptr inbounds %struct.jpeg_scan_info, ptr %0, i64 1
  br label %46

35:                                               ; preds = %35, %4
  %36 = phi i32 [ %44, %35 ], [ 0, %4 ]
  %37 = phi ptr [ %43, %35 ], [ %0, %4 ]
  store i32 1, ptr %37, align 4, !tbaa !122
  %38 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 1
  store i32 %36, ptr %38, align 4, !tbaa !121
  %39 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 2
  store i32 0, ptr %39, align 4, !tbaa !117
  %40 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 3
  store i32 0, ptr %40, align 4, !tbaa !119
  %41 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 4
  store i32 %2, ptr %41, align 4, !tbaa !124
  %42 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 0, i32 5
  store i32 %3, ptr %42, align 4, !tbaa !125
  %43 = getelementptr inbounds %struct.jpeg_scan_info, ptr %37, i64 1
  %44 = add nuw nsw i32 %36, 1
  %45 = icmp eq i32 %44, %1
  br i1 %45, label %46, label %35, !llvm.loop !290

46:                                               ; preds = %35, %29
  %47 = phi ptr [ %34, %29 ], [ %43, %35 ]
  ret ptr %47
}

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @read_scan_integer(ptr nocapture noundef %0, ptr nocapture noundef writeonly %1, ptr nocapture noundef %2) unnamed_addr #3 {
  %4 = tail call fastcc i32 @read_text_integer(ptr noundef %0, ptr noundef %1, ptr noundef %2) #26, !range !277
  %5 = icmp eq i32 %4, 0
  br i1 %5, label %40, label %6

6:                                                ; preds = %3
  %7 = load i32, ptr %2, align 4, !tbaa !121
  %8 = icmp eq i32 %7, -1
  %9 = tail call ptr @__ctype_b_loc() #30
  br i1 %8, label %21, label %10

10:                                               ; preds = %18, %6
  %11 = phi i32 [ %19, %18 ], [ %7, %6 ]
  %12 = load ptr, ptr %9, align 8, !tbaa !7
  %13 = sext i32 %11 to i64
  %14 = getelementptr inbounds i16, ptr %12, i64 %13
  %15 = load i16, ptr %14, align 2, !tbaa !275
  %16 = and i16 %15, 8192
  %17 = icmp eq i16 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %10
  %19 = tail call fastcc i32 @text_getc(ptr noundef %0) #26
  %20 = icmp eq i32 %19, -1
  br i1 %20, label %21, label %10, !llvm.loop !610

21:                                               ; preds = %18, %10, %6
  %22 = phi i32 [ -1, %6 ], [ %11, %10 ], [ -1, %18 ]
  %23 = phi i1 [ false, %6 ], [ %17, %10 ], [ %17, %18 ]
  %24 = load ptr, ptr %9, align 8, !tbaa !7
  %25 = sext i32 %22 to i64
  %26 = getelementptr inbounds i16, ptr %24, i64 %25
  %27 = load i16, ptr %26, align 2, !tbaa !275
  %28 = and i16 %27, 2048
  %29 = icmp eq i16 %28, 0
  br i1 %29, label %33, label %30

30:                                               ; preds = %21
  %31 = tail call i32 @ungetc(i32 noundef %22, ptr noundef %0) #26
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %40, label %38

33:                                               ; preds = %21
  %34 = add i32 %22, -60
  %35 = icmp ult i32 %34, -2
  %36 = and i1 %23, %35
  %37 = select i1 %36, i32 32, i32 %22
  br label %38

38:                                               ; preds = %33, %30
  %39 = phi i32 [ %37, %33 ], [ 32, %30 ]
  store i32 %39, ptr %2, align 4, !tbaa !121
  br label %40

40:                                               ; preds = %38, %30, %3
  %41 = phi i32 [ 1, %38 ], [ 0, %3 ], [ 0, %30 ]
  ret i32 %41
}

; Function Attrs: mustprogress nofree nosync nounwind optsize willreturn memory(none)
declare ptr @__ctype_b_loc() local_unnamed_addr #20

; Function Attrs: nofree nounwind optsize uwtable
define internal fastcc i32 @text_getc(ptr nocapture noundef %0) unnamed_addr #3 {
  %2 = tail call i32 @getc(ptr noundef %0) #26
  %3 = icmp eq i32 %2, 35
  br i1 %3, label %4, label %6

4:                                                ; preds = %4, %1
  %5 = tail call i32 @getc(ptr noundef %0) #26
  switch i32 %5, label %4 [
    i32 -1, label %6
    i32 10, label %6
  ]

6:                                                ; preds = %4, %4, %1
  %7 = phi i32 [ %2, %1 ], [ %5, %4 ], [ %5, %4 ]
  ret i32 %7
}

; Function Attrs: mustprogress nofree nounwind optsize willreturn memory(read)
declare i32 @tolower(i32 noundef) local_unnamed_addr #21

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smax.i64(i64, i64) #12

; Function Attrs: mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr nocapture noundef) local_unnamed_addr #22

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_barray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !246
  %6 = zext i32 %5 to i64
  %7 = shl nuw nsw i64 %6, 7
  %8 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %10 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %11 = load i32, ptr %10, align 4, !tbaa !260
  %12 = icmp eq i32 %11, 0
  br i1 %12, label %58, label %13

13:                                               ; preds = %3
  %14 = zext i32 %11 to i64
  %15 = load i32, ptr %8, align 4, !tbaa !262
  %16 = zext i32 %15 to i64
  %17 = mul nsw i64 %7, %16
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %19 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %20 = icmp eq i32 %2, 0
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  %22 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12, i32 1
  %23 = load i32, ptr %9, align 8, !tbaa !261
  %24 = select i1 %20, ptr %21, ptr %22
  br label %25

25:                                               ; preds = %45, %13
  %26 = phi i32 [ %23, %13 ], [ %52, %45 ]
  %27 = phi i64 [ %14, %13 ], [ %56, %45 ]
  %28 = phi i64 [ 0, %13 ], [ %54, %45 ]
  %29 = phi i64 [ %17, %13 ], [ %51, %45 ]
  %30 = zext i32 %26 to i64
  %31 = sub nsw i64 %27, %28
  %32 = tail call i64 @llvm.smin.i64(i64 %31, i64 %30)
  %33 = load i32, ptr %8, align 4, !tbaa !262
  %34 = zext i32 %33 to i64
  %35 = add nuw nsw i64 %28, %34
  %36 = load i32, ptr %18, align 8, !tbaa !263
  %37 = zext i32 %36 to i64
  %38 = sub nsw i64 %37, %35
  %39 = tail call i64 @llvm.smin.i64(i64 %32, i64 %38)
  %40 = load i32, ptr %19, align 8, !tbaa !245
  %41 = zext i32 %40 to i64
  %42 = sub nsw i64 %41, %35
  %43 = tail call i64 @llvm.smin.i64(i64 %39, i64 %42)
  %44 = icmp slt i64 %43, 1
  br i1 %44, label %58, label %45

45:                                               ; preds = %25
  %46 = mul nsw i64 %43, %7
  %47 = load ptr, ptr %1, align 8, !tbaa !243
  %48 = getelementptr inbounds ptr, ptr %47, i64 %28
  %49 = load ptr, ptr %48, align 8, !tbaa !7
  %50 = load ptr, ptr %24, align 8, !tbaa !7
  tail call void %50(ptr noundef %0, ptr noundef nonnull %21, ptr noundef %49, i64 noundef %29, i64 noundef %46) #25
  %51 = add nsw i64 %46, %29
  %52 = load i32, ptr %9, align 8, !tbaa !261
  %53 = zext i32 %52 to i64
  %54 = add nuw nsw i64 %28, %53
  %55 = load i32, ptr %10, align 4, !tbaa !260
  %56 = zext i32 %55 to i64
  %57 = icmp ult i64 %54, %56
  br i1 %57, label %25, label %58, !llvm.loop !611

58:                                               ; preds = %45, %25, %3
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #12

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @do_sarray_io(ptr noundef %0, ptr noundef %1, i32 noundef %2) unnamed_addr #2 {
  %4 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 2
  %5 = load i32, ptr %4, align 4, !tbaa !237
  %6 = zext i32 %5 to i64
  %7 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 6
  %8 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 5
  %9 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 4
  %10 = load i32, ptr %9, align 4, !tbaa !254
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %57, label %12

12:                                               ; preds = %3
  %13 = zext i32 %10 to i64
  %14 = load i32, ptr %7, align 4, !tbaa !256
  %15 = zext i32 %14 to i64
  %16 = mul nuw nsw i64 %15, %6
  %17 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 7
  %18 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 1
  %19 = icmp eq i32 %2, 0
  %20 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12
  %21 = getelementptr inbounds %struct.jvirt_sarray_control, ptr %1, i64 0, i32 12, i32 1
  %22 = load i32, ptr %8, align 8, !tbaa !255
  %23 = select i1 %19, ptr %20, ptr %21
  br label %24

24:                                               ; preds = %44, %12
  %25 = phi i32 [ %22, %12 ], [ %51, %44 ]
  %26 = phi i64 [ %13, %12 ], [ %55, %44 ]
  %27 = phi i64 [ 0, %12 ], [ %53, %44 ]
  %28 = phi i64 [ %16, %12 ], [ %50, %44 ]
  %29 = zext i32 %25 to i64
  %30 = sub nsw i64 %26, %27
  %31 = tail call i64 @llvm.smin.i64(i64 %30, i64 %29)
  %32 = load i32, ptr %7, align 4, !tbaa !256
  %33 = zext i32 %32 to i64
  %34 = add nuw nsw i64 %27, %33
  %35 = load i32, ptr %17, align 8, !tbaa !257
  %36 = zext i32 %35 to i64
  %37 = sub nsw i64 %36, %34
  %38 = tail call i64 @llvm.smin.i64(i64 %31, i64 %37)
  %39 = load i32, ptr %18, align 8, !tbaa !236
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %40, %34
  %42 = tail call i64 @llvm.smin.i64(i64 %38, i64 %41)
  %43 = icmp slt i64 %42, 1
  br i1 %43, label %57, label %44

44:                                               ; preds = %24
  %45 = mul nuw nsw i64 %42, %6
  %46 = load ptr, ptr %1, align 8, !tbaa !233
  %47 = getelementptr inbounds ptr, ptr %46, i64 %27
  %48 = load ptr, ptr %47, align 8, !tbaa !7
  %49 = load ptr, ptr %23, align 8, !tbaa !7
  tail call void %49(ptr noundef %0, ptr noundef nonnull %20, ptr noundef %48, i64 noundef %28, i64 noundef %45) #25
  %50 = add nsw i64 %45, %28
  %51 = load i32, ptr %8, align 8, !tbaa !255
  %52 = zext i32 %51 to i64
  %53 = add nuw nsw i64 %27, %52
  %54 = load i32, ptr %9, align 4, !tbaa !254
  %55 = zext i32 %54 to i64
  %56 = icmp ult i64 %53, %55
  br i1 %56, label %24, label %57, !llvm.loop !612

57:                                               ; preds = %44, %24, %3
  ret void
}

; Function Attrs: nofree nounwind optsize
declare noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #8

; Function Attrs: nounwind optsize uwtable
define internal fastcc void @jpeg_destroy(ptr noundef %0) unnamed_addr #2 {
  %2 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 1
  %3 = load ptr, ptr %2, align 8, !tbaa !29
  %4 = icmp eq ptr %3, null
  br i1 %4, label %8, label %5

5:                                                ; preds = %1
  %6 = getelementptr inbounds %struct.jpeg_memory_mgr.27, ptr %3, i64 0, i32 10
  %7 = load ptr, ptr %6, align 8, !tbaa !225
  tail call void %7(ptr noundef nonnull %0) #25
  br label %8

8:                                                ; preds = %5, %1
  store ptr null, ptr %2, align 8, !tbaa !29
  %9 = getelementptr inbounds %struct.jpeg_comp_master, ptr %0, i64 0, i32 4
  store i32 0, ptr %9, align 4, !tbaa !224
  ret void
}

attributes #0 = { noreturn nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(write, argmem: readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nounwind willreturn memory(argmem: write) }
attributes #6 = { mustprogress nofree nounwind optsize willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { nofree nounwind optsize memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { nocallback nofree nounwind willreturn memory(argmem: readwrite) }
attributes #10 = { noreturn nounwind optsize "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #13 = { nofree norecurse nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #14 = { nofree nosync nounwind optsize memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #15 = { nofree nosync nounwind optsize memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #16 = { mustprogress nofree norecurse nosync nounwind optsize willreturn memory(readwrite, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #17 = { inlinehint nounwind optsize uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #18 = { nofree nounwind optsize memory(read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #19 = { nofree norecurse nosync nounwind optsize memory(write, inaccessiblemem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #20 = { mustprogress nofree nosync nounwind optsize willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #21 = { mustprogress nofree nounwind optsize willreturn memory(read) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #22 = { mustprogress nounwind optsize willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #23 = { nounwind }
attributes #24 = { nounwind optsize allocsize(0) }
attributes #25 = { nounwind optsize }
attributes #26 = { optsize }
attributes #27 = { cold optsize }
attributes #28 = { noreturn nounwind optsize }
attributes #29 = { cold }
attributes #30 = { nounwind optsize willreturn memory(none) }
attributes #31 = { nounwind optsize willreturn memory(read) }

!llvm.ident = !{!0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0, !0}
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
!12 = !{!13, !8, i64 0}
!13 = !{!"jpeg_error_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !14, i64 40, !9, i64 44, !14, i64 124, !15, i64 128, !8, i64 136, !14, i64 144, !8, i64 152, !14, i64 160, !14, i64 164}
!14 = !{!"int", !9, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!13, !8, i64 8}
!17 = !{!13, !8, i64 16}
!18 = !{!13, !8, i64 24}
!19 = !{!13, !8, i64 32}
!20 = !{!13, !14, i64 124}
!21 = !{!13, !15, i64 128}
!22 = !{!13, !14, i64 40}
!23 = !{!13, !8, i64 136}
!24 = !{!13, !14, i64 144}
!25 = !{!26, !8, i64 0}
!26 = !{!"jpeg_compress_struct", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !14, i64 28, !8, i64 32, !14, i64 40, !14, i64 44, !14, i64 48, !9, i64 52, !27, i64 56, !14, i64 64, !14, i64 68, !9, i64 72, !8, i64 80, !9, i64 88, !9, i64 120, !9, i64 152, !9, i64 184, !9, i64 200, !9, i64 216, !14, i64 232, !8, i64 240, !14, i64 248, !14, i64 252, !14, i64 256, !14, i64 260, !14, i64 264, !9, i64 268, !14, i64 272, !14, i64 276, !14, i64 280, !9, i64 284, !28, i64 286, !28, i64 288, !14, i64 292, !14, i64 296, !14, i64 300, !14, i64 304, !14, i64 308, !14, i64 312, !14, i64 316, !9, i64 320, !14, i64 352, !14, i64 356, !14, i64 360, !9, i64 364, !14, i64 404, !14, i64 408, !14, i64 412, !14, i64 416, !8, i64 424, !8, i64 432, !8, i64 440, !8, i64 448, !8, i64 456, !8, i64 464, !8, i64 472, !8, i64 480, !8, i64 488}
!27 = !{!"double", !9, i64 0}
!28 = !{!"short", !9, i64 0}
!29 = !{!30, !8, i64 8}
!30 = !{!"jpeg_common_struct", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !14, i64 28}
!31 = !{!15, !15, i64 0}
!32 = !{!33, !8, i64 0}
!33 = !{!"", !34, i64 0, !9, i64 96, !9, i64 112, !8, i64 128, !8, i64 136, !15, i64 144, !14, i64 152}
!34 = !{!"jpeg_memory_mgr", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40, !8, i64 48, !8, i64 56, !8, i64 64, !8, i64 72, !8, i64 80, !15, i64 88}
!35 = !{!33, !8, i64 8}
!36 = !{!33, !8, i64 16}
!37 = !{!33, !8, i64 24}
!38 = !{!33, !8, i64 32}
!39 = !{!33, !8, i64 40}
!40 = !{!33, !8, i64 48}
!41 = !{!33, !8, i64 56}
!42 = !{!33, !8, i64 64}
!43 = !{!33, !8, i64 72}
!44 = !{!33, !8, i64 80}
!45 = !{!33, !15, i64 144}
!46 = !{!33, !15, i64 88}
!47 = !{!26, !8, i64 16}
!48 = !{!26, !8, i64 32}
!49 = !{!26, !27, i64 56}
!50 = !{!26, !14, i64 28}
!51 = !{!13, !8, i64 152}
!52 = !{!13, !14, i64 160}
!53 = !{!13, !14, i64 164}
!54 = !{!26, !9, i64 52}
!55 = !{!26, !8, i64 8}
!56 = !{!34, !8, i64 0}
!57 = !{!26, !8, i64 80}
!58 = !{!26, !14, i64 64}
!59 = !{!60, !14, i64 276}
!60 = !{!"", !9, i64 0, !9, i64 17, !14, i64 276}
!61 = !{!26, !14, i64 232}
!62 = !{!26, !9, i64 284}
!63 = !{!26, !28, i64 286}
!64 = !{!26, !28, i64 288}
!65 = !{!66, !8, i64 48}
!66 = !{!"_tga_source_struct", !67, i64 0, !8, i64 48, !8, i64 56, !8, i64 64, !14, i64 72, !8, i64 80, !9, i64 88, !14, i64 92, !14, i64 96, !14, i64 100, !8, i64 104}
!67 = !{!"cjpeg_source_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !14, i64 40}
!68 = !{!66, !8, i64 0}
!69 = !{!70, !8, i64 48}
!70 = !{!"_bmp_source_struct", !67, i64 0, !8, i64 48, !8, i64 56, !8, i64 64, !14, i64 72, !14, i64 76, !14, i64 80}
!71 = !{!70, !8, i64 0}
!72 = !{!73, !8, i64 48}
!73 = !{!"", !67, i64 0, !8, i64 48, !8, i64 56, !9, i64 64, !14, i64 324, !14, i64 328, !14, i64 332, !14, i64 336, !14, i64 340, !14, i64 344, !14, i64 348, !14, i64 352, !14, i64 356, !14, i64 360, !14, i64 364, !14, i64 368, !14, i64 372, !8, i64 376, !8, i64 384, !8, i64 392, !8, i64 400, !14, i64 408, !8, i64 416, !14, i64 424, !14, i64 428, !14, i64 432, !14, i64 436}
!74 = !{!73, !8, i64 0}
!75 = !{!76, !8, i64 0}
!76 = !{!"", !67, i64 0, !8, i64 48, !8, i64 56, !15, i64 64, !8, i64 72}
!77 = !{!67, !8, i64 24}
!78 = !{!79, !8, i64 16}
!79 = !{!"", !80, i64 0, !8, i64 40, !8, i64 48}
!80 = !{!"jpeg_destination_mgr", !8, i64 0, !15, i64 8, !8, i64 16, !8, i64 24, !8, i64 32}
!81 = !{!79, !8, i64 24}
!82 = !{!79, !8, i64 32}
!83 = !{!79, !8, i64 40}
!84 = !{!85, !14, i64 128}
!85 = !{!"", !9, i64 0, !14, i64 128}
!86 = distinct !{!86, !87}
!87 = !{!"llvm.loop.mustprogress"}
!88 = distinct !{!88, !87}
!89 = !{!80, !8, i64 16}
!90 = !{!26, !8, i64 424}
!91 = !{!92, !8, i64 0}
!92 = !{!"", !93, i64 0, !9, i64 32, !14, i64 36, !14, i64 40, !14, i64 44}
!93 = !{!"jpeg_comp_master", !8, i64 0, !8, i64 8, !8, i64 16, !14, i64 24, !14, i64 28}
!94 = !{!92, !8, i64 8}
!95 = !{!92, !8, i64 16}
!96 = !{!92, !14, i64 28}
!97 = !{!26, !14, i64 44}
!98 = !{!26, !14, i64 40}
!99 = !{!26, !14, i64 48}
!100 = !{!26, !14, i64 68}
!101 = !{!26, !14, i64 304}
!102 = !{!26, !14, i64 308}
!103 = !{!104, !14, i64 8}
!104 = !{!"", !14, i64 0, !14, i64 4, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !14, i64 48, !14, i64 52, !14, i64 56, !14, i64 60, !14, i64 64, !14, i64 68, !14, i64 72, !8, i64 80, !8, i64 88}
!105 = !{!104, !14, i64 12}
!106 = distinct !{!106, !87}
!107 = !{!104, !14, i64 4}
!108 = !{!104, !14, i64 36}
!109 = !{!104, !14, i64 28}
!110 = !{!104, !14, i64 32}
!111 = !{!104, !14, i64 40}
!112 = !{!104, !14, i64 44}
!113 = !{!104, !14, i64 48}
!114 = distinct !{!114, !87}
!115 = !{!26, !14, i64 312}
!116 = !{!26, !8, i64 240}
!117 = !{!118, !14, i64 20}
!118 = !{!"", !14, i64 0, !9, i64 4, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32}
!119 = !{!118, !14, i64 24}
!120 = !{!26, !14, i64 300}
!121 = !{!14, !14, i64 0}
!122 = !{!118, !14, i64 0}
!123 = distinct !{!123, !87}
!124 = !{!118, !14, i64 28}
!125 = !{!118, !14, i64 32}
!126 = distinct !{!126, !87}
!127 = distinct !{!127, !87}
!128 = distinct !{!128, !87}
!129 = distinct !{!129, !87}
!130 = distinct !{!130, !87}
!131 = distinct !{!131, !87}
!132 = !{!92, !9, i64 32}
!133 = !{!26, !14, i64 256}
!134 = !{!92, !14, i64 44}
!135 = !{!92, !14, i64 36}
!136 = !{!26, !14, i64 248}
!137 = !{!26, !8, i64 464}
!138 = !{!139, !8, i64 0}
!139 = !{!"", !140, i64 0, !8, i64 16}
!140 = !{!"jpeg_color_converter", !8, i64 0, !8, i64 8}
!141 = !{!26, !9, i64 72}
!142 = !{!139, !8, i64 8}
!143 = !{!26, !8, i64 472}
!144 = !{!145, !8, i64 0}
!145 = !{!"", !146, i64 0, !9, i64 24}
!146 = !{!"jpeg_downsampler", !8, i64 0, !8, i64 8, !14, i64 16}
!147 = !{!145, !8, i64 8}
!148 = !{!145, !14, i64 16}
!149 = !{!26, !14, i64 260}
!150 = !{!26, !14, i64 264}
!151 = distinct !{!151, !87}
!152 = !{!26, !8, i64 440}
!153 = !{!154, !8, i64 0}
!154 = !{!"", !155, i64 0, !9, i64 16, !14, i64 96, !14, i64 100, !14, i64 104, !14, i64 108}
!155 = !{!"jpeg_c_prep_controller", !8, i64 0, !8, i64 8}
!156 = !{!146, !14, i64 16}
!157 = !{!154, !8, i64 8}
!158 = !{!34, !8, i64 16}
!159 = distinct !{!159, !87}
!160 = distinct !{!160, !87}
!161 = distinct !{!161, !87}
!162 = !{!26, !8, i64 480}
!163 = !{!164, !8, i64 0}
!164 = !{!"", !165, i64 0, !8, i64 16, !9, i64 24, !8, i64 56, !9, i64 64}
!165 = !{!"jpeg_forward_dct", !8, i64 0, !8, i64 8}
!166 = !{!26, !9, i64 268}
!167 = !{!164, !8, i64 8}
!168 = !{!164, !8, i64 16}
!169 = !{!164, !8, i64 56}
!170 = !{!26, !14, i64 252}
!171 = !{!26, !8, i64 488}
!172 = !{!173, !8, i64 0}
!173 = !{!"", !174, i64 0, !14, i64 24, !8, i64 32, !15, i64 40, !15, i64 48, !14, i64 56, !8, i64 64, !9, i64 72, !14, i64 88, !14, i64 92, !14, i64 96, !8, i64 104, !14, i64 112, !14, i64 116, !9, i64 120, !9, i64 152}
!174 = !{!"jpeg_entropy_encoder", !8, i64 0, !8, i64 8, !8, i64 16}
!175 = !{!173, !8, i64 104}
!176 = !{!177, !8, i64 0}
!177 = !{!"", !174, i64 0, !178, i64 24, !14, i64 56, !14, i64 60, !9, i64 64, !9, i64 96, !9, i64 128, !9, i64 160}
!178 = !{!"", !15, i64 0, !14, i64 8, !9, i64 12}
!179 = !{!26, !8, i64 448}
!180 = !{!181, !8, i64 0}
!181 = !{!"", !182, i64 0, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !9, i64 32, !9, i64 112}
!182 = !{!"jpeg_c_coef_controller", !8, i64 0, !8, i64 8}
!183 = !{!34, !8, i64 40}
!184 = distinct !{!184, !87}
!185 = !{!34, !8, i64 8}
!186 = distinct !{!186, !87, !187, !188}
!187 = !{!"llvm.loop.isvectorized", i32 1}
!188 = !{!"llvm.loop.unroll.runtime.disable"}
!189 = !{!26, !8, i64 432}
!190 = !{!191, !8, i64 0}
!191 = !{!"", !192, i64 0, !14, i64 16, !14, i64 20, !14, i64 24, !9, i64 28, !9, i64 32}
!192 = !{!"jpeg_c_main_controller", !8, i64 0, !8, i64 8}
!193 = distinct !{!193, !87}
!194 = !{!26, !8, i64 456}
!195 = !{!196, !8, i64 0}
!196 = !{!"jpeg_marker_writer", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !8, i64 32, !8, i64 40}
!197 = !{!196, !8, i64 8}
!198 = !{!196, !8, i64 16}
!199 = !{!196, !8, i64 24}
!200 = !{!196, !8, i64 32}
!201 = !{!196, !8, i64 40}
!202 = !{!34, !8, i64 48}
!203 = !{!93, !8, i64 0}
!204 = !{!26, !14, i64 296}
!205 = !{!67, !8, i64 8}
!206 = !{!67, !8, i64 32}
!207 = !{!208, !15, i64 8}
!208 = !{!"jpeg_progress_mgr", !8, i64 0, !15, i64 8, !15, i64 16, !14, i64 24, !14, i64 28}
!209 = !{!208, !15, i64 16}
!210 = !{!208, !8, i64 0}
!211 = !{!93, !14, i64 24}
!212 = !{!93, !8, i64 8}
!213 = !{!192, !8, i64 8}
!214 = distinct !{!214, !87}
!215 = !{!67, !8, i64 16}
!216 = !{!93, !14, i64 28}
!217 = !{!182, !8, i64 8}
!218 = distinct !{!218, !87}
!219 = !{!93, !8, i64 16}
!220 = distinct !{!220, !87}
!221 = !{!80, !8, i64 32}
!222 = !{!34, !8, i64 72}
!223 = !{!30, !14, i64 24}
!224 = !{!30, !14, i64 28}
!225 = !{!34, !8, i64 80}
!226 = !{!30, !8, i64 0}
!227 = distinct !{!227, !87}
!228 = !{!33, !14, i64 152}
!229 = distinct !{!229, !87}
!230 = distinct !{!230, !87}
!231 = distinct !{!231, !87}
!232 = distinct !{!232, !87}
!233 = !{!234, !8, i64 0}
!234 = !{!"jvirt_sarray_control", !8, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !8, i64 48, !235, i64 56}
!235 = !{!"backing_store_struct", !8, i64 0, !8, i64 8, !8, i64 16, !8, i64 24, !9, i64 32}
!236 = !{!234, !14, i64 8}
!237 = !{!234, !14, i64 12}
!238 = !{!234, !14, i64 16}
!239 = !{!234, !14, i64 36}
!240 = !{!234, !14, i64 44}
!241 = !{!33, !8, i64 128}
!242 = !{!234, !8, i64 48}
!243 = !{!244, !8, i64 0}
!244 = !{!"jvirt_barray_control", !8, i64 0, !14, i64 8, !14, i64 12, !14, i64 16, !14, i64 20, !14, i64 24, !14, i64 28, !14, i64 32, !14, i64 36, !14, i64 40, !14, i64 44, !8, i64 48, !235, i64 56}
!245 = !{!244, !14, i64 8}
!246 = !{!244, !14, i64 12}
!247 = !{!244, !14, i64 16}
!248 = !{!244, !14, i64 36}
!249 = !{!244, !14, i64 44}
!250 = !{!33, !8, i64 136}
!251 = !{!244, !8, i64 48}
!252 = distinct !{!252, !87}
!253 = distinct !{!253, !87}
!254 = !{!234, !14, i64 20}
!255 = !{!234, !14, i64 24}
!256 = !{!234, !14, i64 28}
!257 = !{!234, !14, i64 32}
!258 = !{!234, !14, i64 40}
!259 = distinct !{!259, !87}
!260 = !{!244, !14, i64 20}
!261 = !{!244, !14, i64 24}
!262 = !{!244, !14, i64 28}
!263 = !{!244, !14, i64 32}
!264 = !{!244, !14, i64 40}
!265 = distinct !{!265, !87}
!266 = distinct !{!266, !87}
!267 = distinct !{!267, !87}
!268 = !{!234, !8, i64 72}
!269 = distinct !{!269, !87}
!270 = !{!244, !8, i64 72}
!271 = distinct !{!271, !87}
!272 = distinct !{!272, !87}
!273 = distinct !{!273, !87}
!274 = distinct !{!274, !87}
!275 = !{!28, !28, i64 0}
!276 = distinct !{!276, !87}
!277 = !{i32 0, i32 2}
!278 = !{!34, !15, i64 88}
!279 = !{!26, !14, i64 272}
!280 = !{!26, !14, i64 276}
!281 = distinct !{!281, !87}
!282 = distinct !{!282, !87}
!283 = distinct !{!283, !87}
!284 = !{!104, !14, i64 16}
!285 = distinct !{!285, !87}
!286 = distinct !{!286, !87}
!287 = distinct !{!287, !87}
!288 = distinct !{!288, !87}
!289 = distinct !{!289, !87}
!290 = distinct !{!290, !87}
!291 = distinct !{!291, !87}
!292 = distinct !{!292, !87}
!293 = !{!66, !8, i64 24}
!294 = !{!66, !14, i64 92}
!295 = !{!66, !14, i64 100}
!296 = !{!66, !14, i64 96}
!297 = !{!66, !8, i64 104}
!298 = !{!34, !8, i64 32}
!299 = !{!66, !8, i64 64}
!300 = !{!301, !14, i64 36}
!301 = !{!"cdjpeg_progress_mgr", !208, i64 0, !14, i64 32, !14, i64 36, !14, i64 40}
!302 = !{!66, !14, i64 40}
!303 = !{!66, !8, i64 32}
!304 = !{!66, !8, i64 8}
!305 = distinct !{!305, !87}
!306 = !{!66, !8, i64 56}
!307 = distinct !{!307, !87}
!308 = !{!70, !8, i64 24}
!309 = !{!70, !14, i64 80}
!310 = !{!70, !8, i64 56}
!311 = distinct !{!311, !87}
!312 = distinct !{!312, !87}
!313 = distinct !{!313, !87}
!314 = !{!70, !14, i64 76}
!315 = !{!70, !8, i64 64}
!316 = !{!70, !8, i64 8}
!317 = !{!70, !8, i64 32}
!318 = !{!70, !14, i64 40}
!319 = !{!73, !8, i64 56}
!320 = !{!73, !8, i64 24}
!321 = distinct !{!321, !87}
!322 = !{!73, !14, i64 408}
!323 = !{!73, !14, i64 340}
!324 = !{!73, !8, i64 376}
!325 = !{!73, !8, i64 384}
!326 = !{!73, !8, i64 392}
!327 = !{!73, !14, i64 344}
!328 = !{!73, !14, i64 348}
!329 = !{!73, !14, i64 364}
!330 = !{!73, !14, i64 352}
!331 = !{!73, !14, i64 356}
!332 = !{!73, !14, i64 360}
!333 = !{!73, !8, i64 400}
!334 = !{!73, !8, i64 416}
!335 = !{!73, !8, i64 8}
!336 = !{!73, !8, i64 32}
!337 = !{!73, !14, i64 40}
!338 = !{!76, !8, i64 24}
!339 = !{!76, !8, i64 8}
!340 = !{!76, !15, i64 64}
!341 = !{!76, !8, i64 48}
!342 = !{!76, !8, i64 32}
!343 = !{!76, !14, i64 40}
!344 = !{!76, !8, i64 56}
!345 = !{!76, !8, i64 72}
!346 = distinct !{!346, !87}
!347 = !{!79, !8, i64 48}
!348 = !{!79, !8, i64 0}
!349 = !{!79, !15, i64 8}
!350 = !{!140, !8, i64 0}
!351 = !{!146, !8, i64 0}
!352 = !{!155, !8, i64 0}
!353 = !{!165, !8, i64 0}
!354 = !{!174, !8, i64 0}
!355 = !{!182, !8, i64 0}
!356 = !{!92, !14, i64 40}
!357 = !{!192, !8, i64 0}
!358 = !{!92, !14, i64 24}
!359 = !{!26, !14, i64 404}
!360 = !{!26, !14, i64 412}
!361 = !{!208, !14, i64 24}
!362 = !{!208, !14, i64 28}
!363 = !{!174, !8, i64 16}
!364 = distinct !{!364, !87}
!365 = distinct !{!365, !87}
!366 = !{!139, !8, i64 16}
!367 = distinct !{!367, !87}
!368 = distinct !{!368, !87}
!369 = distinct !{!369, !87}
!370 = distinct !{!370, !87}
!371 = distinct !{!371, !87}
!372 = distinct !{!372, !87}
!373 = distinct !{!373, !87}
!374 = distinct !{!374, !87}
!375 = distinct !{!375, !87}
!376 = distinct !{!376, !87}
!377 = distinct !{!377, !87}
!378 = distinct !{!378, !87}
!379 = distinct !{!379, !87}
!380 = distinct !{!380, !87}
!381 = distinct !{!381, !87}
!382 = distinct !{!382, !87}
!383 = distinct !{!383, !87}
!384 = distinct !{!384, !87}
!385 = distinct !{!385, !87}
!386 = distinct !{!386, !87}
!387 = distinct !{!387, !87}
!388 = distinct !{!388, !87}
!389 = distinct !{!389, !87}
!390 = distinct !{!390, !87}
!391 = distinct !{!391, !87}
!392 = !{!154, !14, i64 96}
!393 = !{!154, !14, i64 100}
!394 = !{!154, !14, i64 104}
!395 = !{!154, !14, i64 108}
!396 = !{!140, !8, i64 8}
!397 = distinct !{!397, !87}
!398 = distinct !{!398, !87}
!399 = distinct !{!399, !87}
!400 = distinct !{!400, !87}
!401 = !{!146, !8, i64 8}
!402 = distinct !{!402, !87}
!403 = distinct !{!403, !87}
!404 = distinct !{!404, !87}
!405 = distinct !{!405, !87}
!406 = distinct !{!406, !87, !187, !188}
!407 = distinct !{!407, !87}
!408 = !{!27, !27, i64 0}
!409 = !{!410, !410, i64 0}
!410 = !{!"float", !9, i64 0}
!411 = distinct !{!411, !87, !187, !188}
!412 = distinct !{!412, !87}
!413 = distinct !{!413, !87}
!414 = distinct !{!414, !87}
!415 = distinct !{!415, !87}
!416 = distinct !{!416, !87}
!417 = distinct !{!417, !87}
!418 = distinct !{!418, !87, !187, !188}
!419 = distinct !{!419, !87}
!420 = distinct !{!420, !87, !187, !188}
!421 = distinct !{!421, !87}
!422 = distinct !{!422, !87, !187, !188}
!423 = distinct !{!423, !87}
!424 = distinct !{!424, !87, !187, !188}
!425 = distinct !{!425, !87, !187, !188}
!426 = !{!173, !8, i64 64}
!427 = !{!173, !14, i64 24}
!428 = !{!173, !8, i64 8}
!429 = !{!26, !14, i64 316}
!430 = !{!104, !14, i64 20}
!431 = !{!104, !14, i64 24}
!432 = !{!173, !14, i64 88}
!433 = distinct !{!433, !87}
!434 = !{!173, !14, i64 92}
!435 = !{!173, !14, i64 96}
!436 = !{!173, !15, i64 48}
!437 = !{!173, !14, i64 56}
!438 = !{!173, !14, i64 112}
!439 = !{!173, !14, i64 116}
!440 = distinct !{!440, !87}
!441 = !{!177, !15, i64 24}
!442 = !{!177, !14, i64 32}
!443 = !{!177, !14, i64 56}
!444 = !{!177, !14, i64 60}
!445 = !{!181, !14, i64 16}
!446 = !{!181, !8, i64 8}
!447 = !{!191, !14, i64 16}
!448 = !{!191, !14, i64 20}
!449 = !{!191, !14, i64 24}
!450 = !{!191, !9, i64 28}
!451 = !{!191, !8, i64 8}
!452 = distinct !{!452, !87}
!453 = !{!26, !14, i64 280}
!454 = !{!26, !14, i64 292}
!455 = distinct !{!455, !87}
!456 = distinct !{!456, !87}
!457 = !{!104, !14, i64 0}
!458 = distinct !{!458, !87}
!459 = distinct !{!459, !87}
!460 = distinct !{!460, !87}
!461 = !{!26, !14, i64 408}
!462 = !{!26, !14, i64 416}
!463 = distinct !{!463, !87}
!464 = distinct !{!464, !87}
!465 = !{!80, !8, i64 0}
!466 = !{!80, !15, i64 8}
!467 = !{!80, !8, i64 24}
!468 = distinct !{!468, !87, !187, !188}
!469 = distinct !{!469, !87}
!470 = distinct !{!470, !87, !187, !188}
!471 = distinct !{!471, !87}
!472 = distinct !{!472, !87}
!473 = !{!155, !8, i64 8}
!474 = distinct !{!474, !87}
!475 = !{!181, !14, i64 28}
!476 = !{!104, !14, i64 72}
!477 = !{!181, !14, i64 20}
!478 = !{!181, !14, i64 24}
!479 = !{!26, !14, i64 352}
!480 = !{!104, !14, i64 64}
!481 = !{!104, !14, i64 56}
!482 = !{!165, !8, i64 8}
!483 = !{!104, !14, i64 52}
!484 = distinct !{!484, !87}
!485 = distinct !{!485, !87}
!486 = distinct !{!486, !87}
!487 = distinct !{!487, !87}
!488 = !{!174, !8, i64 8}
!489 = distinct !{!489, !87}
!490 = distinct !{!490, !87}
!491 = !{!34, !8, i64 64}
!492 = distinct !{!492, !87, !187, !188}
!493 = distinct !{!493, !87}
!494 = distinct !{!494, !87, !187, !188}
!495 = distinct !{!495, !87}
!496 = distinct !{!496, !87}
!497 = distinct !{!497, !87}
!498 = distinct !{!498, !87}
!499 = distinct !{!499, !87}
!500 = distinct !{!500, !87}
!501 = distinct !{!501, !87}
!502 = distinct !{!502, !87}
!503 = distinct !{!503, !87}
!504 = distinct !{!504, !87}
!505 = !{!26, !14, i64 360}
!506 = distinct !{!506, !87}
!507 = distinct !{!507, !87}
!508 = distinct !{!508, !87}
!509 = distinct !{!509, !87}
!510 = !{!511, !8, i64 0}
!511 = !{!"", !8, i64 0, !15, i64 8, !178, i64 16, !8, i64 48}
!512 = !{!511, !15, i64 8}
!513 = !{i64 0, i64 8, !31, i64 8, i64 4, !121, i64 12, i64 16, !11}
!514 = !{!511, !8, i64 48}
!515 = distinct !{!515, !87}
!516 = distinct !{!516, !87}
!517 = !{!511, !14, i64 24}
!518 = !{!511, !15, i64 16}
!519 = distinct !{!519, !87}
!520 = distinct !{!520, !87}
!521 = distinct !{!521, !87}
!522 = distinct !{!522, !87}
!523 = distinct !{!523, !87}
!524 = distinct !{!524, !87}
!525 = distinct !{!525, !87}
!526 = distinct !{!526, !87}
!527 = distinct !{!527, !87}
!528 = distinct !{!528, !87}
!529 = distinct !{!529, !87}
!530 = distinct !{!530, !87}
!531 = distinct !{!531, !87}
!532 = distinct !{!532, !87}
!533 = distinct !{!533, !87}
!534 = distinct !{!534, !87}
!535 = distinct !{!535, !87}
!536 = distinct !{!536, !87}
!537 = distinct !{!537, !87}
!538 = distinct !{!538, !87}
!539 = distinct !{!539, !87}
!540 = !{!173, !8, i64 32}
!541 = !{!173, !15, i64 40}
!542 = distinct !{!542, !87}
!543 = distinct !{!543, !87}
!544 = distinct !{!544, !87}
!545 = distinct !{!545, !87}
!546 = distinct !{!546, !87}
!547 = distinct !{!547, !87}
!548 = distinct !{!548, !87}
!549 = distinct !{!549, !87}
!550 = distinct !{!550, !87}
!551 = distinct !{!551, !87}
!552 = distinct !{!552, !87}
!553 = distinct !{!553, !87}
!554 = distinct !{!554, !87}
!555 = distinct !{!555, !87}
!556 = distinct !{!556, !87, !187, !188}
!557 = !{!26, !14, i64 356}
!558 = !{!104, !14, i64 68}
!559 = !{!104, !14, i64 60}
!560 = distinct !{!560, !87}
!561 = distinct !{!561, !87}
!562 = distinct !{!562, !87}
!563 = distinct !{!563, !87}
!564 = distinct !{!564, !87}
!565 = distinct !{!565, !87}
!566 = distinct !{!566, !87}
!567 = distinct !{!567, !87}
!568 = distinct !{!568, !87}
!569 = distinct !{!569, !87}
!570 = !{!301, !15, i64 8}
!571 = !{!301, !15, i64 16}
!572 = !{!301, !8, i64 0}
!573 = !{!34, !8, i64 56}
!574 = distinct !{!574, !87}
!575 = distinct !{!575, !87}
!576 = !{!301, !14, i64 32}
!577 = !{!73, !14, i64 424}
!578 = !{!73, !14, i64 428}
!579 = !{!73, !14, i64 432}
!580 = !{!73, !14, i64 436}
!581 = distinct !{!581, !87}
!582 = distinct !{!582, !87}
!583 = !{!73, !14, i64 368}
!584 = !{!73, !14, i64 372}
!585 = !{!73, !14, i64 336}
!586 = distinct !{!586, !87}
!587 = !{!73, !14, i64 332}
!588 = !{!73, !14, i64 328}
!589 = !{!73, !14, i64 324}
!590 = distinct !{!590, !87}
!591 = distinct !{!591, !87}
!592 = distinct !{!592, !87}
!593 = distinct !{!593, !87}
!594 = !{!70, !14, i64 72}
!595 = distinct !{!595, !87}
!596 = distinct !{!596, !87}
!597 = distinct !{!597, !87}
!598 = distinct !{!598, !87}
!599 = !{!66, !8, i64 80}
!600 = distinct !{!600, !87}
!601 = distinct !{!601, !87}
!602 = distinct !{!602, !87}
!603 = distinct !{!603, !87}
!604 = distinct !{!604, !87}
!605 = !{!66, !14, i64 72}
!606 = distinct !{!606, !87}
!607 = distinct !{!607, !87}
!608 = distinct !{!608, !87}
!609 = distinct !{!609, !87}
!610 = distinct !{!610, !87}
!611 = distinct !{!611, !87}
!612 = distinct !{!612, !87}
